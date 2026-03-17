library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sync_full_adder_tb is
end entity;

architecture tb of sync_full_adder_tb is

    component sync_full_adder is
        Port (
            i_clk      : in  STD_LOGIC;
            i_a        : in  STD_LOGIC;
            i_b        : in  STD_LOGIC;
            i_cin      : in  STD_LOGIC;
            o_sum      : out STD_LOGIC;
            o_cout     : out STD_LOGIC
        );
    end component;

    signal i_Clk        : std_logic := '0';
    signal i_A          : std_logic := '0';
    signal i_B          : std_logic := '0';
    signal i_Carry_in   : std_logic := '0';
    signal o_Sum        : std_logic;
    signal o_Carry_out  : std_logic;

    constant CLK_PERIOD : time := 10 ns;

begin

    DUT: sync_full_adder
        port map (
            i_clk  => i_Clk,
            i_a    => i_A,
            i_b    => i_B,
            i_cin  => i_Carry_in,
            o_sum  => o_Sum,
            o_cout => o_Carry_out
        );

    CLK_PROCESS: process
    begin
        i_Clk <= '0';
        wait for CLK_PERIOD / 2;
        i_Clk <= '1';
        wait for CLK_PERIOD / 2;
    end process;

    STIMULUS: process
    begin

        i_A <= '0'; i_B <= '0'; i_Carry_in <= '0';
        wait for CLK_PERIOD;
        assert (o_Sum = '0' and o_Carry_out = '0')
            report "FAIL: 0+0+0 expected Sum=0, Carry=0";

        i_A <= '0'; i_B <= '0'; i_Carry_in <= '1';
        wait for CLK_PERIOD;
        assert (o_Sum = '1' and o_Carry_out = '0')
            report "FAIL: 0+0+1 expected Sum=1, Carry=0";

        i_A <= '0'; i_B <= '1'; i_Carry_in <= '0';
        wait for CLK_PERIOD;
        assert (o_Sum = '1' and o_Carry_out = '0')
            report "FAIL: 0+1+0 expected Sum=1, Carry=0";

        i_A <= '0'; i_B <= '1'; i_Carry_in <= '1';
        wait for CLK_PERIOD;
        assert (o_Sum = '0' and o_Carry_out = '1')
            report "FAIL: 0+1+1 expected Sum=0, Carry=1";

        i_A <= '1'; i_B <= '0'; i_Carry_in <= '0';
        wait for CLK_PERIOD;
        assert (o_Sum = '1' and o_Carry_out = '0')
            report "FAIL: 1+0+0 expected Sum=1, Carry=0";

        i_A <= '1'; i_B <= '0'; i_Carry_in <= '1';
        wait for CLK_PERIOD;
        assert (o_Sum = '0' and o_Carry_out = '1')
            report "FAIL: 1+0+1 expected Sum=0, Carry=1";

        i_A <= '1'; i_B <= '1'; i_Carry_in <= '0';
        wait for CLK_PERIOD;
        assert (o_Sum = '0' and o_Carry_out = '1')
            report "FAIL: 1+1+0 expected Sum=0, Carry=1";

        i_A <= '1'; i_B <= '1'; i_Carry_in <= '1';
        wait for CLK_PERIOD;
        assert (o_Sum = '1' and o_Carry_out = '1')
            report "FAIL: 1+1+1 expected Sum=1, Carry=1";

        report "All tests passed!";
        wait;
    end process;

end architecture tb;
