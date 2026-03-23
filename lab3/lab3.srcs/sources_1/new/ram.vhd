library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity mlab_ram is
	 generic (
		data_width : integer :=8  				--- width of data (bits)
	 );
    port (i_clk  : in std_logic;
          i_we   : in std_logic;						--- memory write enable
		  i_en   : in std_logic;				--- operation enable
          i_addr : in std_logic_vector(2 downto 0);			-- memory address
          i_di   : in std_logic_vector(data_width-1 downto 0);		-- input data
          o_do   : out std_logic_vector(data_width-1 downto 0));		-- output data
end mlab_ram;

architecture Behavioral of mlab_ram is

    type ram_type is array (7 downto 0) of std_logic_vector (data_width-1 downto 0);
    signal RAM : ram_type := (others => (others => '0'));
	 
begin


    process (i_clk)
    begin
        if i_clk'event and i_clk = '1' then
            if i_en = '1' then
                if i_we = '1' then				-- write operation
                    RAM(7 downto 1) <= RAM(6 downto 0);	-- shift data down the RAM
                    RAM(0) <= i_di;
                    o_do <= i_di;
                else						-- read operation
                    o_do <= RAM( conv_integer(i_addr));
                end if;
            end if;
        end if;
    end process;


end Behavioral;