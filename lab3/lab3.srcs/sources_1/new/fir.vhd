library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity FIR is
    
    port (
        i_clk       : in  std_logic; 
        i_rst       : in  std_logic; 
        i_valid_in  : in  std_logic; 
        i_x         : in  std_logic_vector(7 downto 0);  
        o_valid_out : out std_logic; 
        o_y         : out std_logic_vector(18 downto 0) 
    );
end FIR;

architecture Structural of FIR is

    signal rom_address_sig : std_logic_vector(2 downto 0);  
    signal ram_address_sig : std_logic_vector(2 downto 0);  
    signal mac_init_sig    : std_logic; 
    signal rom_out_sig     : std_logic_vector(7 downto 0);  
    signal ram_out_sig     : std_logic_vector(7 downto 0);  
    signal ram_we_sig      : std_logic;

    
begin

    
    ControlUnit: entity work.control_unit
        port map (
            i_clk       => i_clk,               -- Î¤Î¿ clk Ï„Î¿Ï… block ÏƒÏ…Î½Î´Î­ÎµÏ„Î±Î¹ ÏƒÏ„Î¿ clk Ï„Î¿Ï… ÏƒÏ…ÏƒÏ„Î®Î¼Î±Ï„Î¿Ï‚
            i_rst       => i_rst,
            i_valid_in  => i_valid_in,
            o_mac_init  => mac_init_sig,      -- Î— Î­Î¾Î¿Î´Î¿Ï‚ Ï„Î¿Ï… CU Ï€Î¬ÎµÎ¹ ÏƒÏ„Î¿ ÎµÏƒÏ‰Ï„Îµï¿½?Î¹ÎºÏŒ ÎºÎ±Î»ÏŽÎ´Î¹Î¿
            o_rom_address => rom_address_sig,   -- Î— Î­Î¾Î¿Î´Î¿Ï‚ Ï€Î¬ÎµÎ¹ ÏƒÏ„Î¿ ÎºÎ±Î»ÏŽÎ´Î¹Î¿
            o_ram_address => ram_address_sig,   -- Î— Î­Î¾Î¿Î´Î¿Ï‚ Ï€Î¬ÎµÎ¹ ÏƒÏ„Î¿ ÎºÎ±Î»ÏŽÎ´Î¹Î¿
            o_valid_out => o_valid_out,
            o_we        => ram_we_sig
        );

    ROM: entity work.mlab_rom
        port map (
            i_clk       => i_clk,
            i_en        => '1',
            i_addr      => rom_address_sig,   -- Î Î±Î¯ï¿½?Î½ÎµÎ¹ Î´Î¹Îµï¿½?Î¸Ï…Î½ÏƒÎ· Î±Ï€ÏŒ Ï„Î¿ ÎºÎ±Î»ÏŽÎ´Î¹Î¿ Ï„Î¿Ï… CU
            o_rom_out   => rom_out_sig        -- Î’Î³Î¬Î¶ÎµÎ¹ Î´ÎµÎ´Î¿Î¼Î­Î½Î± ÏƒÏ„Î¿ ÎºÎ±Î»ÏŽÎ´Î¹Î¿ Ï€ï¿½?Î¿Ï‚ Ï„Î¿ MAC
        );

    RAM: entity work.mlab_ram
        port map (
            i_clk       => i_clk,
            i_en        => '1',          -- Î— ÎµÎ³Î³ï¿½?Î±Ï†Î® Î³Î¯Î½ÎµÏ„Î±Î¹ ÏŒÏ„Î±Î½ Î­Ï‡Î¿Ï…Î¼Îµ Î½Î­Î¿ x (Î® ÏŒ,Ï„Î¹ Î­Ï†Ï„Î¹Î±Î¾ÎµÏ‚ ÏƒÏ„Î¿ CU)
            i_we        => ram_we_sig,          -- Î— ÎµÎ³Î³ï¿½?Î±Ï†Î® Î³Î¯Î½ÎµÏ„Î±Î¹ ÏŒÏ„Î±Î½ Î­Ï‡Î¿Ï…Î¼Îµ Î½Î­Î¿ x (Î® ÏŒ,Ï„Î¹ Î­Ï†Ï„Î¹Î±Î¾ÎµÏ‚ ÏƒÏ„Î¿ CU)
            i_addr      => ram_address_sig,   -- Î Î±Î¯ï¿½?Î½ÎµÎ¹ Î´Î¹Îµï¿½?Î¸Ï…Î½ÏƒÎ· Î±Ï€ÏŒ Ï„Î¿ ÎºÎ±Î»ÏŽÎ´Î¹Î¿ Ï„Î¿Ï… CU
            i_di        => i_x,                 -- Î— ÎµÎ¯ÏƒÎ¿Î´Î¿Ï‚ Ï„Î¿Ï… Ï†Î¯Î»Ï„ï¿½?Î¿Ï… Î¼Ï€Î±Î¯Î½ÎµÎ¹ ÏƒÏ„Î· RAM
            o_do        => ram_out_sig        -- Î’Î³Î¬Î¶ÎµÎ¹ Î´ÎµÎ´Î¿Î¼Î­Î½Î± ÏƒÏ„Î¿ ÎºÎ±Î»ÏŽÎ´Î¹Î¿ Ï€ï¿½?Î¿Ï‚ Ï„Î¿ MAC
        );

    MAC: entity work.mac
        port map (
            i_clk       => i_clk,
            i_mac_init  => mac_init_sig,      -- Î Î±Î¯ï¿½?Î½ÎµÎ¹ Ï„Î¿ ÏƒÎ®Î¼Î± Î±ï¿½?Ï‡Î¹ÎºÎ¿Ï€Î¿Î¯Î·ÏƒÎ·Ï‚ Î±Ï€ÏŒ Ï„Î¿ ÎºÎ±Î»ÏŽÎ´Î¹Î¿
            i_rom_data  => rom_out_sig,       -- Î Î±Î¯ï¿½?Î½ÎµÎ¹ Ï„Î¿Î½ ÏƒÏ…Î½Ï„ÎµÎ»ÎµÏƒÏ„Î®
            i_ram_data  => ram_out_sig,       -- Î Î±Î¯ï¿½?Î½ÎµÎ¹ Ï„Î¿ x
            o_y         => o_y                  -- Î’Î³Î¬Î¶ÎµÎ¹ Ï„Î¿ Ï„ÎµÎ»Î¹ÎºÏŒ Î±Ï€Î¿Ï„Î­Î»ÎµÏƒÎ¼Î± ÏƒÏ„Î·Î½ Î­Î¾Î¿Î´Î¿ Ï„Î¿Ï… Ï†Î¯Î»Ï„ï¿½?Î¿Ï…
        );

end Structural;