---------------------------------------------------------------------
-- 4 bit register with parallel load and left/right shift testbench
---------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity rl_shift_reg_tb is
--  Port ( );
end entity;

architecture tb of rl_shift_reg_tb is
    -------------------------------------
    -- COMPONENT
    -------------------------------------
    component rl_shift_reg is 
        port (
        clk,rst,si,en,pl,r_sft: in std_logic;
        din: in std_logic_vector(3 downto 0);
        dout: out std_logic_vector(3 downto 0);
        so: out std_logic
        );
    end component;
    -------------------------------------
    -- SIGNALS
    -------------------------------------    
    signal clk : std_logic;
    signal rst : std_logic;
    signal si : std_logic;
    signal en : std_logic;
    signal pl : std_logic;
    signal r_sft : std_logic;
    signal din : std_logic_vector(3 downto 0);
    signal dout : std_logic_vector(3 downto 0);
    signal so : std_logic;
    -------------------------------------
    -- CONSTANTS
    -------------------------------------
    constant CLOCK_PERIOD : time := 10 ns;

    signal expected: std_logic_vector(3 downto 0);
    
begin
    -- Design under test entity
    DUT : rl_shift_reg
        port map (
            clk => clk,
            rst => rst,
            si => si,
            en => en,
            pl => pl,
            r_sft => r_sft,
            din => din,
            so => so,
            dout => dout
        );

    STIMULUS : process
    begin
        -------------------------------------
        -- Initialize Signals
        din <= (others => '0');
        si <= '0';
        en <= '0';
        pl <= '1'; -- Parallel load enabled
        rst <= '1'; -- Reset active
        r_sft <= '0';
        wait until falling_edge(clk);

        -------------------------------------
        -- Test Parallel Load
        -------------------------------------
        for i in 0 to 7 loop 
            din <= std_logic_vector(to_unsigned(i, 4));
            wait until falling_edge(clk);
            assert (din = dout)
                report "PARALLEL LOADING TEST FAILED! Mismatch at input index " & integer'image(i)
                severity error;
        end loop;
        assert false report "PARALLEL LOADING TEST FINISHED!" severity note;



        -------------------------------------
        -- Test Shift Right
        -------------------------------------

        -- Clear the dout register
        pl <= '1';
        din <= (others => '0');
        wait until falling_edge(clk);

        -- Setup shift right signals
        pl <= '0'; -- Disable parallel load
        en <= '1'; -- Enable shifting
        r_sft <= '1'; -- Shift right enabled
        si <= '1'; -- Put '1' at the MSB for right shift
        expected <= (others => '0');
        
        for i in 0 to 3 loop
            pl <= '0';
            expected(3-i) <= '1';
            wait until falling_edge(clk);
            assert (dout = expected and so = expected(0)) 
                report "SHIFT RIGHT WITH '1' TEST FAILED! Mismatch at shift index " & integer'image(i) 
                severity error;
        end loop;

        si <= '0'; -- Put '0' at the MSB for right shift
        for i in 0 to 3 loop
            expected(3-i) <= '0';
            wait until falling_edge(clk);
            assert (dout = expected and so = expected(0)) 
                report "SHIFT RIGHT WITH '0' TEST FAILED! Mismatch at shift index " & integer'image(i) 
                severity error;
        end loop;
        assert false report "SHIFT RIGHT TEST FINISHED!" severity note;

        -------------------------------------
        -- Test Shift Left
        -------------------------------------
        r_sft <= '0'; -- Shift left enabled
        si <= '1'; -- Put '1' at the MSB for left shift
        expected <= (others => '0');

        for i in 0 to 3 loop
            expected(i) <= '1';
            wait until falling_edge(clk);
            assert (dout = expected and so = expected(3)) 
                report "SHIFT LEFT WITH '1' TEST FAILED! Mismatch at shift index " & integer'image(i) 
                severity error;
        end loop;

        si <= '0'; -- Put '0' at the MSB for left shift
        for i in 0 to 3 loop
            expected(i) <= '0';
            wait until falling_edge(clk);
            assert (dout = expected and so = expected(3)) 
                report "SHIFT LEFT WITH '0' TEST FAILED! Mismatch at shift index " & integer'image(i) 
                severity error;
        end loop;
        assert false report "SHIFT LEFT TEST FINISHED!" severity note;

        --------------------------------------
        -- Combination Test
        --------------------------------------
        pl <= '1'; -- Parallel load enabled
        din <= "1010";
        wait until falling_edge(clk);
        assert (din = dout) 
            report "COMBINATION TEST FAILED! Parallel load mismatch." 
            severity error;
        pl <= '0'; -- Disable parallel load
        r_sft <= '1'; -- Shift right enabled
        wait until falling_edge(clk);
        assert (dout = "0101" and so = '1')
            report "COMBINATION TEST FAILED! Shift right mismatch after parallel load."
            severity error;
        wait until falling_edge(clk);
        assert (dout = "0010" and so = '0')
            report "COMBINATION TEST FAILED! Shift right mismatch at second shift."
            severity error;
        si <= '1';
        r_sft <= '0'; -- Shift left enabled
        wait until falling_edge(clk);
        assert (dout = "0101" and so = '0')
            report "COMBINATION TEST FAILED! Shift left mismatch after shift right."
            severity error;
        wait until falling_edge(clk);
        assert (dout = "1011" and so = '1')
            report "COMBINATION TEST FAILED! Shift left mismatch at second shift."
            severity error;
        assert false report "COMBINATION TEST FINISHED!" severity note;

        wait;

    end process;

    -- CLOCK GENERATION
    CLOCK_GEN : process
    begin
        clk <= '0';
        wait for (CLOCK_PERIOD / 2);
        clk <= '1';
        wait for (CLOCK_PERIOD / 2);
    end process;

end architecture;
