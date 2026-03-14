-------------------------------------------------------------------
-- Decoder 3 to 8 (COMBINATORIAL) - Behavioral Model
-------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity decoder_3_8_bh is 
    port (
        i_e : in std_logic_vector (3-1 downto 0);
        o_dec: out std_logic_vector (8-1 downto 0)
    );
end entity;

architecture decoder_arch_behavioral of decoder_3_8_bh is 
begin 
    DEC_COMB_LOGIC_0 : process(i_e)
    begin
        case i_e is 
            when "000" => o_dec <= "00000001";
            when "001" => o_dec <= "00000010";
            when "010" => o_dec <= "00000100";
            when "011" => o_dec <= "00001000";
            when "100" => o_dec <= "00010000";
            when "101" => o_dec <= "00100000";
            when "110" => o_dec <= "01000000";
            when "111" => o_dec <= "10000000";
            when others => o_dec <= "00000000"; -- Undefined behavior
        end case;
    end process;
end decoder_arch_behavioral;
