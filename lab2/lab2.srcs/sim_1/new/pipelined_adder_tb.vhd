library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity pipelined_adder_tb is
end entity;

architecture tb of pipelined_adder_tb is

    component pipelined_adder is
        port (
            i_clk  : in  std_logic;
            i_a    : in  std_logic_vector(3 downto 0);
            i_b    : in  std_logic_vector(3 downto 0);
            i_cin  : in  std_logic;
            o_sum  : out std_logic_vector(3 downto 0);
            o_cout : out std_logic
        );
    end component;

    signal i_clk : std_logic := '0';
    signal i_a   : std_logic_vector(3 downto 0) := (others => '0');
    signal i_b   : std_logic_vector(3 downto 0) := (others => '0');
    signal i_cin : std_logic := '0';
    signal o_sum : std_logic_vector(3 downto 0);
    signal o_cout : std_logic;

    constant CLK_PERIOD : time := 10 ns;

begin
    
    DUT: pipelined_adder
        port map (
            i_clk  => i_clk,
            i_a    => i_a,
            i_b    => i_b,
            i_cin  => i_cin,
            o_sum  => o_sum,
            o_cout => o_cout
        );

    CLK_PROCESS: process
    begin
        i_clk <= '0';
        wait for CLK_PERIOD / 2;
        i_clk <= '1';
        wait for CLK_PERIOD / 2;
    end process;

    STIMULUS: process
        variable expected_cout : std_logic;
    begin
        for a in 0 to 15 loop
            for b in 0 to 15 loop
                for cin in 0 to 1 loop
                    i_a <= std_logic_vector(to_unsigned(a, 4));
                    i_b <= std_logic_vector(to_unsigned(b, 4));
                    if cin = 1 then i_cin <= '1'; else i_cin <= '0'; end if;
                    wait for 4 * CLK_PERIOD;
                    if (a + b + cin) >= 16 then expected_cout := '1'; else expected_cout := '0'; end if;
                    assert (o_sum = std_logic_vector(to_unsigned((a + b + cin) mod 16, 4))) and (o_cout = expected_cout)
                        report "FAIL: " & integer'image(a) & "+" & integer'image(b) & "+" & integer'image(cin) &
                               " expected Sum=" & integer'image((a + b + cin) mod 16) &
                               ", Carry=" & integer'image((a + b + cin) / 16);
                end loop;
            end loop;
        end loop;
        report "All 512 tests passed!";
        wait;
    end process;

end architecture tb;