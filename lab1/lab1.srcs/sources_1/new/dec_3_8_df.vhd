-------------------------------------------------------------------
-- Decoder 3 to 8 (COMBINATORIAL) - Dataflow Model
-------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity decoder_3_8_df is 
    port (
        i_e : in std_logic_vector (3-1 downto 0);
        o_dec: out std_logic_vector (8-1 downto 0)
    );
end entity;

architecture decoder_arch_dataflow of decoder_3_8_df is 
begin 
    -- Dataflow model because everything is executed concurrently
    with i_e select 
        o_dec <= "00000001" when "000",
                "00000010" when "001",
                "00000100" when "010",
                "00001000" when "011",
                "00010000" when "100",
                "00100000" when "101",
                "01000000" when "110",
                "10000000" when "111",
                "00000000" when others;
end decoder_arch_dataflow;
