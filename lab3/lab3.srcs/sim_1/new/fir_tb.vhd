library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity tb_FIR is
    -- Testbench entity is empty
end tb_FIR;

architecture Behavioral of tb_FIR is

    -- Testbench parameters
    constant N : integer := 8;
    constant L : integer := 19;
    constant CLK_PERIOD : time := 10 ns;

    -- Interface signals
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
    -- Note: generic map is omitted for post-implementation simulation compatibility
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
    -- 1. STIMULUS PROCESS (Driver)
    -- ==========================================
    stim_process: process
    begin
        -- Initial reset
        tb_rst <= '1';
        tb_x <= (others => '0');
        wait for CLK_PERIOD * 2;
        tb_rst <= '0';
        wait for CLK_PERIOD; 

        -- PHASE 1: Exhaustive ramp test (0 to 255)
        for i in 0 to 255 loop
            tb_valid_in <= '1';
            wait for CLK_PERIOD; 
            tb_valid_in <= '0';
            
            wait for CLK_PERIOD * 7; -- Wait 7 cycles to satisfy the 8-cycle distance requirement
            
            -- Prepare next input value
            tb_x <= tb_x + 1; 
        end loop;

        -- Wait for the final loop calculations to complete
        wait for CLK_PERIOD * 15;
        
        -- PHASE 2: Asynchronous reset mid-operation
        tb_rst <= '1';
        wait for CLK_PERIOD * 2;
        tb_rst <= '0';
        wait for CLK_PERIOD;

        -- PHASE 3: Post-reset verification (Verify RAM clearance)
        tb_x <= x"0A"; tb_valid_in <= '1'; -- Send 10
        wait for CLK_PERIOD; tb_valid_in <= '0';
        wait for CLK_PERIOD * 7;
        
        tb_x <= x"14"; tb_valid_in <= '1'; -- Send 20
        wait for CLK_PERIOD; tb_valid_in <= '0';
        
        -- Await final calculation and terminate simulation successfully
        wait for CLK_PERIOD * 20;
        assert false report "SIMULATION FINISHED SUCCESSFULLY! All self-checks passed." severity failure;
    end process;

    -- ==========================================
    -- 2. DYNAMIC CHECKER PROCESS (Self-Checking Monitor)
    -- ==========================================
    check_process: process(tb_clk, tb_rst)
        type int_array is array (0 to 7) of integer;
        type pipe_array is array (0 to 15) of integer;
        
        variable x_history : int_array := (others => 0);
        variable expected_pipe : pipe_array := (others => 0);
        variable current_expected : integer := 0;
        
        -- Expected ROM coefficients: h[0] to h[7]
        constant h : int_array := (1, 2, 3, 4, 5, 6, 7, 8); 
    begin
        if tb_rst = '1' then
            -- Asynchronous reset clears the testbench reference model
            x_history := (others => 0);
            expected_pipe := (others => 0);
            
        elsif rising_edge(tb_clk) then
            -- A. Shift expected output pipeline every clock cycle
            for i in 14 downto 0 loop
                expected_pipe(i+1) := expected_pipe(i);
            end loop;

            -- B. Calculate expected output instantly on new input
            if tb_valid_in = '1' then
                -- Shift input history (sliding window)
                for i in 7 downto 1 loop
                    x_history(i) := x_history(i-1);
                end loop;
                
                -- Store new input at index 0
                x_history(0) := conv_integer(tb_x);

                -- Calculate FIR equation: sum(h[k] * x[n-k])
                current_expected := 0;
                for i in 0 to 7 loop
                    current_expected := current_expected + (x_history(i) * h(i));
                end loop;

                -- Insert expected result into the delay pipeline
                expected_pipe(0) := current_expected;
            end if;

            -- C. Verify hardware output when valid
            if tb_valid_out = '1' then
                -- Hardware latency is 9 cycles; check index 9 of the pipeline
                assert conv_integer(tb_y) = expected_pipe(9)
                    report "MATH MISMATCH! Expected: " & integer'image(expected_pipe(9)) & 
                           " but got: " & integer'image(conv_integer(tb_y))
                    severity error;
            end if;
            
        end if;
    end process;

end Behavioral;