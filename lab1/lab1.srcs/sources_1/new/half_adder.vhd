-------------------------------------------------------------------
-- Half Adder
-------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity half_adder is
    Port (
        i_A : in STD_LOGIC;
        i_B : in STD_LOGIC;
        o_Sum : out STD_LOGIC;
        o_Carry : out STD_LOGIC
    );
end entity;

architecture Dataflow of half_adder is

begin
    
    o_Sum <= i_A XOR i_B;
    o_Carry <= i_A AND i_B;

end Dataflow;