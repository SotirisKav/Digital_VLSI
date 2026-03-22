-------------------------------------------------
-- Synchronous Full Adder (Sequential)
-------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
entity FullAdder is
    port (
        i_A     : in    std_logic;
        i_B     : in    std_logic;
        i_Cin   : in    std_logic;
        o_Sum   : out   std_logic;
        o_Cout  : out   std_logic
    );
end FullAdder;

architecture rtl of FullAdder is
begin
    o_Sum <= i_A XOR i_B XOR i_Cin;
    o_Cout <= (i_A AND i_B) OR (i_Cin AND (i_A XOR i_B));
end rtl;
            