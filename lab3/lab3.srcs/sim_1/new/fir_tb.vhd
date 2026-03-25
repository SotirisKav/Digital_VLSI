library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity tb_FIR is
-- Testbench entities are empty
end tb_FIR;

architecture Behavioral of tb_FIR is

    -- Constants
    constant N : integer := 8;
    constant L : integer := 19;
    constant CLK_PERIOD : time := 10 ns;

    -- Testbench signals
    signal tb_clk        : std_logic := '0';
    signal tb_rst        : std_logic := '0';
    signal tb_valid_in   : std_logic := '0';
    signal tb_x          : std_logic_vector(N-1 downto 0) := (others => '0');
    signal tb_valid_out  : std_logic;
    signal tb_y          : std_logic_vector(L-1 downto 0);

begin

    -- ==========================================
    -- DEVICE UNDER TEST (DUT)
    -- ==========================================
    UUT: entity work.FIR
        port map (
            i_clk       => tb_clk,
            i_rst       => tb_rst,
            i_valid_in  => tb_valid_in,
            i_x         => tb_x,
            o_valid_out => tb_valid_out,
            o_y         => tb_y
        );

    -- ==========================================
    -- CLOCK GENERATION PROCESS
    -- ==========================================
    clk_process: process
    begin
        tb_clk <= '0';
        wait for CLK_PERIOD / 2;
        tb_clk <= '1';
        wait for CLK_PERIOD / 2;
    end process;

    -- ==========================================
    -- STIMULUS PROCESS 
    -- ==========================================
    stim_process: process
    begin
        -- Initial Reset
        tb_rst <= '1';
        tb_x <= (others => '0');
        wait for CLK_PERIOD * 2;
        tb_rst <= '0';
        wait for CLK_PERIOD; 

        -- Part 1: Exhaustive Test (Test all 256 values of x)
        for i in 0 to 255 loop
            tb_valid_in <= '1';
            wait for CLK_PERIOD; 
            tb_valid_in <= '0';
            
            wait for CLK_PERIOD * 7; -- Wait 7 cycles to satisfy the 8-cycle distance rule
            
            -- Prepare the next value 
            tb_x <= tb_x + 1; 
        end loop;

        -- Wait for the final loop calculations to finish
        wait for CLK_PERIOD * 15;
        
        -- Part 2: Asynchronous Reset Test mid-operation
        tb_rst <= '1';
        wait for CLK_PERIOD * 2;
        tb_rst <= '0';
        wait for CLK_PERIOD;

        -- Part 3: Post-Reset Verification (Verify RAM actually cleared)
        tb_x <= x"0A"; tb_valid_in <= '1'; -- Send 10
        wait for CLK_PERIOD; tb_valid_in <= '0';
        wait for CLK_PERIOD * 7;
        
        tb_x <= x"14"; tb_valid_in <= '1'; 
        wait for CLK_PERIOD; tb_valid_in <= '0';
        
        wait for CLK_PERIOD * 20;
        assert false report "SIMULATION FINISHED SUCCESSFULLY! All self-checks passed." severity note;
    end process;

    -- ==========================================
    -- CHECKER PROCESS 
    -- ==========================================
    check_process: process(tb_clk, tb_rst)
        type int_array is array (0 to 7) of integer;
        type pipe_array is array (0 to 15) of integer;
        
        variable x_history : int_array := (others => 0);
        variable expected_pipe : pipe_array := (others => 0);
        variable current_expected : integer := 0;
        
        -- The ROM coefficients: h[0] to h[7]
        constant h : int_array := (1, 2, 3, 4, 5, 6, 7, 8); 
    begin
        if tb_rst = '1' then
            x_history := (others => 0);
            expected_pipe := (others => 0);
            
        elsif rising_edge(tb_clk) then
            -- Shift the expected answer pipeline delay every single clock cycle
            for i in 14 downto 0 loop
                expected_pipe(i+1) := expected_pipe(i);
            end loop;

            -- New input arrives, calculate the expected math instantly
            if tb_valid_in = '1' then
                -- Shift the history of x (Mimicking the hardware RAM's sliding window)
                for i in 7 downto 1 loop
                    x_history(i) := x_history(i-1);
                end loop;
                
                -- Store the newest x at index 0
                x_history(0) := conv_integer(tb_x);

                -- FIR formula: sum(h[k] * x[n-k])
                current_expected := 0;
                for i in 0 to 7 loop
                    current_expected := current_expected + (x_history(i) * h(i));
                end loop;

                -- Push the newly calculated answer into the start of the delay pipeline
                expected_pipe(0) := current_expected;
            end if;

            -- Check the hardware output on the falling edge 
            -- due to cable latency - we want the fpga to settle
            if falling_edge(tb_clk) then
                if tb_valid_out = '1' then
                    assert conv_integer(tb_y) = expected_pipe(9)
                        report "MATH MISMATCH! Expected: " & integer'image(expected_pipe(9)) & 
                               " but got: " & integer'image(conv_integer(tb_y))
                        severity error;
                end if;
            end if;
        end if;
    end process;

end Behavioral;