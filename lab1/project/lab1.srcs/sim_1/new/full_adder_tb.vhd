library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity full_adder_tb is
end entity;

architecture tb of full_adder_tb is

    ---------------------------------------------------------------
    -- COMPONENT
    ---------------------------------------------------------------
    component full_adder is
        Port (
            i_A : in STD_LOGIC;
            i_B : in STD_LOGIC;
            i_Carry_in : in STD_LOGIC;
            o_Sum : out STD_LOGIC;
            o_Carry_out : out STD_LOGIC
        );
    end component;

    ---------------------------------------------------------------
    -- SIGNALS
    ---------------------------------------------------------------
    signal i_A, i_B, i_Carry_in : std_logic := '0';
    signal o_Sum, o_Carry_out : std_logic;

    ---------------------------------------------------------------
    -- CONSTANTS
    ---------------------------------------------------------------
    constant TIME_DELAY : time := 10 ns;

begin

    DUT: full_adder
        port map (
            i_A => i_A,
            i_B => i_B,
            i_Carry_in => i_Carry_in,
            o_Sum => o_Sum,
            o_Carry_out => o_Carry_out
        );
    
    STIMULUS: process
    begin
        ---------------------------------------------------------------
        -- INPUT COMBINATIONS
        i_A <= '0'; i_B <= '0'; i_Carry_in <= '0';
        wait for (1 * TIME_DELAY);
        assert (o_Sum = '0' and o_Carry_out = '0')
            report "FAIL: 0+0+0 expected Sum=0, Carry=0";

        i_A <= '0'; i_B <= '0'; i_Carry_in <= '1';
        wait for (1 * TIME_DELAY);
        assert (o_Sum = '1' and o_Carry_out = '0')
            report "FAIL: 0+0+1 expected Sum=1, Carry=0";

        i_A <= '0'; i_B <= '1'; i_Carry_in <= '0';
        wait for (1 * TIME_DELAY);
        assert (o_Sum = '1' and o_Carry_out = '0')
            report "FAIL: 0+1+0 expected Sum=1, Carry=0";
        
        i_A <= '0'; i_B <= '1'; i_Carry_in <= '1';
        wait for (1 * TIME_DELAY);
        assert (o_Sum = '0' and o_Carry_out = '1')
            report "FAIL: 0+1+1 expected Sum=0, Carry=1";

        i_A <= '1'; i_B <= '0'; i_Carry_in <= '0';
        wait for (1 * TIME_DELAY);
        assert (o_Sum = '1' and o_Carry_out = '0')
            report "FAIL: 1+0+0 expected Sum=1, Carry=0";

        i_A <= '1'; i_B <= '0'; i_Carry_in <= '1';
        wait for (1 * TIME_DELAY);
        assert (o_Sum = '0' and o_Carry_out = '1')
            report "FAIL: 1+0+1 expected Sum=0, Carry=1";

        i_A <= '1'; i_B <= '1'; i_Carry_in <= '0';
        wait for (1 * TIME_DELAY);
        assert (o_Sum = '0' and o_Carry_out = '1')
            report "FAIL: 1+1+0 expected Sum=0, Carry=1";

        i_A <= '1'; i_B <= '1'; i_Carry_in <= '1';
        wait for (1 * TIME_DELAY);
        assert (o_Sum = '1' and o_Carry_out = '1')
            report "FAIL: 1+1+1 expected Sum=1, Carry=1";

        report "All tests passed!";
        wait;
    end process;

end architecture tb;