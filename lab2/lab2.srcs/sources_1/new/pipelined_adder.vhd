library ieee;
use ieee.std_logic_1164.all;

entity pipelined_adder is
    port (
        i_clk  : in  std_logic;
        i_a    : in  std_logic_vector(3 downto 0);
        i_b    : in  std_logic_vector(3 downto 0);
        i_cin  : in  std_logic;
        o_sum  : out std_logic_vector(3 downto 0);
        o_cout : out std_logic
    );
end pipelined_adder;

architecture Behavioral of pipelined_adder is

    component sync_full_adder is
        port (
            i_clk  : in  std_logic;
            i_a    : in  std_logic;
            i_b    : in  std_logic;
            i_cin  : in  std_logic;
            o_sum  : out std_logic;
            o_cout : out std_logic
        );
    end component;

    -- Carry signals between FA stages
    signal c1, c2, c3 : std_logic;

    -- Sum outputs from each FA
    signal s_int : std_logic_vector(3 downto 0);

    -- Pipeline registers
    signal r1 : std_logic_vector(5 downto 0) := (others => '0'); -- stores (b3,a3,b2,a2,b1,a1)
    signal r2 : std_logic_vector(4 downto 0) := (others => '0'); -- stores (b3,a3,b2,a2,s0)
    signal r3 : std_logic_vector(3 downto 0) := (others => '0'); -- stores (b3,a3,s1,s0)
    signal r4 : std_logic_vector(2 downto 0) := (others => '0'); -- stores (s2,s1,s0)

begin

    -- Pipeline register process
    process(i_clk)
    begin
        if rising_edge(i_clk) then
            r1 <= i_b(3) & i_a(3) & i_b(2) & i_a(2) & i_b(1) & i_a(1);
            r2 <= r1(5) & r1(4) & r1(3) & r1(2) & s_int(0);
            r3 <= r2(4) & r2(3) & s_int(1) & r2(0);
            r4 <= s_int(2) & r3(1) & r3(0);
        end if;
    end process;

    -- FA0: processes i_a(0), i_b(0), i_cin directly
    FA0: sync_full_adder
        port map (
            i_clk  => i_clk,
            i_a    => i_a(0),
            i_b    => i_b(0),
            i_cin  => i_cin,
            o_sum  => s_int(0),
            o_cout => c1
        );

    -- FA1: uses 1-cycle-delayed inputs from r1, carry from FA0
    FA1: sync_full_adder
        port map (
            i_clk  => i_clk,
            i_a    => r1(0),
            i_b    => r1(1),
            i_cin  => c1,
            o_sum  => s_int(1),
            o_cout => c2
        );

    -- FA2: uses 2-cycle-delayed inputs from r2, carry from FA1
    FA2: sync_full_adder
        port map (
            i_clk  => i_clk,
            i_a    => r2(1),
            i_b    => r2(2),
            i_cin  => c2,
            o_sum  => s_int(2),
            o_cout => c3
        );

    -- FA3: uses 3-cycle-delayed inputs from r3, carry from FA2
    FA3: sync_full_adder
        port map (
            i_clk  => i_clk,
            i_a    => r3(2),
            i_b    => r3(3),
            i_cin  => c3,
            o_sum  => s_int(3),
            o_cout => o_cout
        );

    -- align all sums
    o_sum(0) <= r4(0);
    o_sum(1) <= r4(1);
    o_sum(2) <= r4(2);
    o_sum(3) <= s_int(3);

end Behavioral;