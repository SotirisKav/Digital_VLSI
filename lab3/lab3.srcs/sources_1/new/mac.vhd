library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.math_real.all;

entity mac is
    generic (
        data_width : integer := 8; -- this is N (num bits of x[n])
        coeff_width : integer := 8; -- this is N (num bits of h[n])
        num_taps : integer := 8 -- this is M 
    );

    port (
        i_clk : in std_logic;
        i_rom_data : in std_logic_vector(7 downto 0);
        i_ram_data : in std_logic_vector(7 downto 0);
        i_mac_init : in std_logic; 
        o_y : out std_logic_vector(16 + 3 - 1 downto 0)
    );
end mac;

architecture Behavioral of mac is
    signal acc : std_logic_vector(16 + 3 - 1 downto 0) := (others => '0');
begin
    process(i_clk)
    begin
        if rising_edge(i_clk) then
            if i_mac_init = '1' then -- begin a new calculation
                acc <= (others => '0'); -- keep in mind that acc is 2N + 3 bits but ram and rom are each N bits!
                acc(15 downto 0) <= i_ram_data * i_rom_data; -- initialize accumulator with the first product
            else
                acc <= acc + i_ram_data * i_rom_data; -- accumulate the product
            end if;
        end if;
    end process;
    o_y <= acc;
end Behavioral;