library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity bcd_parallel_adder_4bit_tb is
end entity;

architecture tb of bcd_parallel_adder_4bit_tb is

    component bcd_parallel_adder_4bit is
        Port (
            i_A         : in  STD_LOGIC_VECTOR(15 downto 0);
            i_B         : in  STD_LOGIC_VECTOR(15 downto 0);
            i_Carry_in  : in  STD_LOGIC;
            o_Sum       : out STD_LOGIC_VECTOR(15 downto 0);
            o_Carry_out : out STD_LOGIC
        );
    end component;

    signal i_A         : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
    signal i_B         : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
    signal i_Carry_in  : STD_LOGIC := '0';
    signal o_Sum       : STD_LOGIC_VECTOR(15 downto 0);
    signal o_Carry_out : STD_LOGIC;

    constant TIME_DELAY : time := 10 ns;

    function bcd(d3,d2,d1,d0 : integer) return std_logic_vector is
    begin
        return std_logic_vector(to_unsigned(d3,4)) & -- converts to 4 digit unsigned
               std_logic_vector(to_unsigned(d2,4)) &
               std_logic_vector(to_unsigned(d1,4)) &
               std_logic_vector(to_unsigned(d0,4)); -- returns 16 bits in total
    end function;

begin

    DUT: bcd_parallel_adder_4bit
        port map (
            i_A         => i_A,
            i_B         => i_B,
            i_Carry_in  => i_Carry_in,
            o_Sum       => o_Sum,
            o_Carry_out => o_Carry_out
        );

    STIMULUS: process
    begin
        -- Zero case
        i_A <= bcd(0,0,0,0); i_B <= bcd(0,0,0,0); i_Carry_in <= '0';
        wait for TIME_DELAY;
        assert (o_Sum = bcd(0,0,0,0) and o_Carry_out = '0')
            report "FAIL: 0000+0000" severity failure;

        -- Basic addition, no carry
        i_A <= bcd(1,2,3,4); i_B <= bcd(2,3,4,5); i_Carry_in <= '0';
        wait for TIME_DELAY;
        assert (o_Sum = bcd(3,5,7,9) and o_Carry_out = '0')
            report "FAIL: 1234+2345" severity failure;

        -- Carry in effect
        i_A <= bcd(1,2,3,4); i_B <= bcd(2,3,4,5); i_Carry_in <= '1';
        wait for TIME_DELAY;
        assert (o_Sum = bcd(3,5,8,0) and o_Carry_out = '0')
            report "FAIL: 1234+2345+1" severity failure;

        -- Digit carry propagation: 0099 + 0001 = 0100
        i_A <= bcd(0,0,9,9); i_B <= bcd(0,0,0,1); i_Carry_in <= '0';
        wait for TIME_DELAY;
        assert (o_Sum = bcd(0,1,0,0) and o_Carry_out = '0')
            report "FAIL: 0099+0001" severity failure;

        -- Max no overflow: 4999 + 5000 = 9999
        i_A <= bcd(4,9,9,9); i_B <= bcd(5,0,0,0); i_Carry_in <= '0';
        wait for TIME_DELAY;
        assert (o_Sum = bcd(9,9,9,9) and o_Carry_out = '0')
            report "FAIL: 4999+5000" severity failure;

        -- Overflow: 9999 + 0001 = 0000, Carry=1
        i_A <= bcd(9,9,9,9); i_B <= bcd(0,0,0,1); i_Carry_in <= '0';
        wait for TIME_DELAY;
        assert (o_Sum = bcd(0,0,0,0) and o_Carry_out = '1')
            report "FAIL: 9999+0001" severity failure;

        -- Max overflow: 9999 + 9999 = 9998, Carry=1
        i_A <= bcd(9,9,9,9); i_B <= bcd(9,9,9,9); i_Carry_in <= '0';
        wait for TIME_DELAY;
        assert (o_Sum = bcd(9,9,9,8) and o_Carry_out = '1')
            report "FAIL: 9999+9999" severity failure;

        report "All BCD tests passed!" severity note;
        wait;
    end process;

end architecture tb;