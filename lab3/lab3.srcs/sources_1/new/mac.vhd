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
        clk : in std_logic;
        rom_out : in std_logic_vector(coeff_width-1 downto 0);
        ram_out : in std_logic_vector(data_width-1 downto 0);
        mac_init : in std_logic;
        L : out std_logic_vector(data_width + coeff_width + integer(ceil(log2(real(num_taps)))) - 1 downto 0)
    );
end mac;

architecture Behavioral of mac is
    signal acc : std_logic_vector(data_width + coeff_width + integer(ceil(log2(real(num_taps)))) - 1 downto 0) := (others => '0');
begin
    process(clk)
    begin
        if rising_edge(clk) then
            if mac_init = '1' then -- begin a new calculation
                acc <= (others => '0'); -- keep in mind that acc is 2N + 3 bits but ram and rom are each N bits!
                acc(data_width + coeff_width - 1 downto 0) <= ram_out * rom_out; -- initialize accumulator with the first product
            else
                acc <= acc + (ram_out * rom_out); -- accumulate the product
            end if;
        end if;
    end process;

    L <= acc;
end Behavioral;