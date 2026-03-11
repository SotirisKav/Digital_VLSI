-------------------------------------------------------------------
-- Half Adder - Testbench
-------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity half_adder_tb is
end entity;

architecture tb of half_adder_tb is 
    ---------------------------------------------------------------
    -- COMPONENT
    ---------------------------------------------------------------
    component half_adder is 
        port (
            i_A     : in    std_logic;
            i_B     : in    std_logic;
            o_Sum   : out   std_logic;
            o_Carry : out   std_logic
        );
    end component;

    ---------------------------------------------------------------
    -- SIGNALS
    ---------------------------------------------------------------

    signal i_A      : std_logic := '0';
    signal i_B      : std_logic := '0';
    signal o_Sum    : std_logic;
    signal o_Carry  : std_logic;

    ---------------------------------------------------------------
    -- CONSTANTS
    ---------------------------------------------------------------
    constant TIME_DELAY : time := 10 ns;

begin 

    DUT : half_adder
        port map (
            i_A     => i_A,
            i_B     => i_B, 
            o_Sum   => o_Sum,
            o_Carry => o_Carry
        );

    STIMULUS : process
    begin 
        ---------------------------------------------------------------
        -- INITIALIZE SIGNALS
        i_A <= '0'; 
        i_B <= '0';
        wait for (1 * TIME_DELAY);

        ---------------------------------------------------------------
        -- INPUT COMBINATIONS
        i_A <= '0';
        i_B <= '0';
        wait for (1 * TIME_DELAY);
        assert (o_Sum = '0' and o_Carry = '0')
            report "FAIL: 0+0 expected Sum=0, Carry=0";

        i_A <= '0';
        i_B <= '1';
        wait for (1 * TIME_DELAY);
        assert (o_Sum = '1' and o_Carry = '0')
            report "FAIL: 0+1 expected Sum=1, Carry=0";

        i_A <= '1';
        i_B <= '0';
        wait for (1 * TIME_DELAY);
        assert (o_Sum = '1' and o_Carry = '0')
            report "FAIL: 1+0 expected Sum=1, Carry=0";

        i_A <= '1';
        i_B <= '1';
        wait for (1 * TIME_DELAY);
        assert (o_Sum = '0' and o_Carry = '1')
            report "FAIL: 1+1 expected Sum=0, Carry=1";

        wait;

    end process;
end architecture;