library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sync_full_adder is
    Port (
        clk : in STD_LOGIC;
        a   : in STD_LOGIC;
        b   : in STD_LOGIC;
        cin : in STD_LOGIC;
        sum : out STD_LOGIC;
        cout: out STD_LOGIC
    );
end sync_full_adder;

architecture Behavioral of sync_full_adder is

begin
    process(clk)
    begin
        if rising_edge(clk) then
            sum <= (a XOR b XOR cin);
            cout <= (a AND b) OR (cin AND (a XOR b));
        end if;
    end process;    
end Behavioral;