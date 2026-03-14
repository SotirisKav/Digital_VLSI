library ieee;
use ieee.std_logic_1164.all;

entity pipelined_adder is
    port (
        clk  : in  std_logic;
        a    : in  std_logic_vector(3 downto 0);
        b    : in  std_logic_vector(3 downto 0);
        cin  : in  std_logic;
        sum  : out std_logic_vector(3 downto 0);
        cout : out std_logic
    );
end pipelined_adder;

architecture Behavioral of pipelined_adder is

    component sync_full_adder is
        port (
            clk  : in  std_logic;
            a    : in  std_logic;
            b    : in  std_logic;
            cin  : in  std_logic;
            sum  : out std_logic;
            cout : out std_logic
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
    process(clk)
    begin
        if rising_edge(clk) then
            r1 <= b(3) & a(3) & b(2) & a(2) & b(1) & a(1);
            r2 <= r1(5) & r1(4) & r1(3) & r1(2) & s_int(0);
            r3 <= r2(4) & r2(3) & s_int(1) & r2(0);
            r4 <= s_int(2) & r3(1) & r3(0);
        end if;
    end process;

    -- FA0: processes a(0), b(0), cin directly
    FA0: sync_full_adder
        port map (
            clk  => clk,
            a    => a(0),
            b    => b(0),
            cin  => cin,
            sum  => s_int(0),
            cout => c1
        );

    -- FA1: uses 1-cycle-delayed inputs from r1, carry from FA0
    FA1: sync_full_adder
        port map (
            clk  => clk,
            a    => r1(0),
            b    => r1(1),
            cin  => c1,
            sum  => s_int(1),
            cout => c2
        );

    -- FA2: uses 2-cycle-delayed inputs from r2, carry from FA1
    FA2: sync_full_adder
        port map (
            clk  => clk,
            a    => r2(1),
            b    => r2(2),
            cin  => c2,
            sum  => s_int(2),
            cout => c3
        );

    -- FA3: uses 3-cycle-delayed inputs from r3, carry from FA2
    FA3: sync_full_adder
        port map (
            clk  => clk,
            a    => r3(2),
            b    => r3(3),
            cin  => c3,
            sum  => s_int(3),
            cout => cout
        );

    -- align all sums
    sum(0) <= r4(0);
    sum(1) <= r4(1);
    sum(2) <= r4(2);
    sum(3) <= s_int(3);

end Behavioral;