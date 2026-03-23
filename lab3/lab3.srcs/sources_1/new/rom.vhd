library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;


entity mlab_rom is
	 generic (
		coeff_width : integer :=8  				--- width of coefficients (bits)
	 );
    Port ( i_clk : in  STD_LOGIC;
			  i_en : in  STD_LOGIC;				--- operation enable
           i_addr : in  STD_LOGIC_VECTOR (2 downto 0);			-- memory address
           o_rom_out : out  STD_LOGIC_VECTOR (coeff_width-1 downto 0));	-- output data
end mlab_rom;

architecture Behavioral of mlab_rom is

    type rom_type is array (7 downto 0) of std_logic_vector (coeff_width-1 downto 0);                 
    signal rom : rom_type:= ("00001000", "00000111", "00000110", "00000101", "00000100", "00000011", "00000010",
                             "00000001");      				 -- initialization of rom with user data                 

    signal rdata : std_logic_vector(coeff_width-1 downto 0) := (others => '0');
begin

    rdata <= rom(conv_integer(i_addr));

    process (i_clk)
    begin
        if (i_clk'event and i_clk = '1') then
            if (i_en = '1') then
                o_rom_out <= rdata;
            end if;
        end if;
    end process;			


end Behavioral;