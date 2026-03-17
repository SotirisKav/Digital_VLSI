library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sync_full_adder is
    Port (
        i_clk : in STD_LOGIC;
        i_a   : in STD_LOGIC;
        i_b   : in STD_LOGIC;
        i_cin : in STD_LOGIC;
        o_sum : out STD_LOGIC;
        o_cout: out STD_LOGIC
    );
end sync_full_adder;

architecture Behavioral of sync_full_adder is

begin
    process(i_clk)
    begin
        if rising_edge(i_clk) then
            o_sum <= (i_a XOR i_b XOR i_cin);
            o_cout <= (i_a AND i_b) OR (i_cin AND (i_a XOR i_b));
        end if;
    end process;    
end Behavioral;