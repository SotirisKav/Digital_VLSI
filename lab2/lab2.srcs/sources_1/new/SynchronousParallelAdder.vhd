-----------------------------------------------
-- Synchronous Parallel Adder 
-----------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity SynchronousParallelAdder is
    Port (
        i_clk  : in  STD_LOGIC;
        i_A    : in  STD_LOGIC_VECTOR (3 downto 0);
        i_B    : in  STD_LOGIC_VECTOR (3 downto 0);
        i_Cin  : in  STD_LOGIC;
        o_S    : out STD_LOGIC_VECTOR (3 downto 0);
        o_Cout : out STD_LOGIC
    );
end SynchronousParallelAdder;

architecture Behavioral of SynchronousParallelAdder is
    component FullAdder is
        Port ( i_a    : in  STD_LOGIC;
               i_b    : in  STD_LOGIC;
               i_cin  : in  STD_LOGIC;
               o_sum  : out STD_LOGIC;
               o_cout : out STD_LOGIC);
    end component;

    signal carry     : STD_LOGIC_VECTOR(3 downto 0);
    
    signal wire_sum  : STD_LOGIC_VECTOR(3 downto 0);
    signal wire_cout : STD_LOGIC;

begin
    FA0: FullAdder port map (i_a => i_A(0), i_b => i_B(0), i_cin => i_Cin, o_sum => wire_sum(0), o_cout => carry(0));
    FA1: FullAdder port map (i_a => i_A(1), i_b => i_B(1), i_cin => carry(0), o_sum => wire_sum(1), o_cout => carry(1));
    FA2: FullAdder port map (i_a => i_A(2), i_b => i_B(2), i_cin => carry(1), o_sum => wire_sum(2), o_cout => carry(2));
    FA3: FullAdder port map (i_a => i_A(3), i_b => i_B(3), i_cin => carry(2), o_sum => wire_sum(3), o_cout => carry(3));
    
    wire_cout <= carry(3);
    
    process(i_clk)
    begin
        if rising_edge(i_clk) then
            -- On clock tick, capture the results in the output registers
            o_S    <= wire_sum;
            o_Cout <= wire_cout;
        end if;
    end process;
    
end Behavioral;
