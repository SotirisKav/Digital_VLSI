library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity parallel_adder_4bit_tb is
end entity;

architecture tb of parallel_adder_4bit_tb is

    component parallel_adder_4bit is
        Port (
            i_A : in  STD_LOGIC_VECTOR(3 downto 0);
            i_B : in  STD_LOGIC_VECTOR(3 downto 0);
            i_Carry_in : in  STD_LOGIC;
            o_Sum : out STD_LOGIC_VECTOR(3 downto 0);
            o_Carry_out : out STD_LOGIC
        );
    end component;

    signal i_A, i_B : std_logic_vector(3 downto 0) := (others => '0');
    signal i_Carry_in : std_logic := '0';
    signal o_Sum : std_logic_vector(3 downto 0);
    signal o_Carry_out : std_logic;

    constant TIME_DELAY : time := 10 ns;

begin

    DUT: parallel_adder_4bit
        port map (
            i_A => i_A,
            i_B => i_B,
            i_Carry_in => i_Carry_in,
            o_Sum => o_Sum,
            o_Carry_out => o_Carry_out
        );

    STIMULUS: process
        variable expected_sum   : integer;
        variable expected_carry : std_logic;
        variable total          : integer;
    begin
        for a in 0 to 15 loop
            for b in 0 to 15 loop
                for cin in 0 to 1 loop
                    i_A        <= std_logic_vector(to_unsigned(a, 4));
                    i_B        <= std_logic_vector(to_unsigned(b, 4));
                    i_Carry_in <= std_logic(to_unsigned(cin, 1)(0));
                    wait for TIME_DELAY;

                    total        := a + b + cin;
                    expected_sum := total mod 16;

                    if total > 15 then
                        expected_carry := '1';
                    else
                        expected_carry := '0';
                    end if;

                    assert (o_Sum = std_logic_vector(to_unsigned(expected_sum, 4))
                            and o_Carry_out = expected_carry)
                        report "FAIL: " & integer'image(a) & "+" & integer'image(b) & "+" & integer'image(cin)
                        severity failure;
                end loop;
            end loop;
        end loop;
        report "All 512 test cases passed!" severity note;
        wait;
    end process;

end architecture tb;