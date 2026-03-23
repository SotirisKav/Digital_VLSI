library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity FIR is
    generic (
        N : integer := 8;      Î­Î½Ï‰Î½ 
        L : integer := 19      Ï… (2*N + 3 Î³Î¹Î± 8-tap)  
    );
    port (
        i_clk       : in  std_logic; 
        i_rst       : in  std_logic; 
        i_valid_in  : in  std_logic; 
        i_x         : in  std_logic_vector(N-1 downto 0);  
        o_valid_out : out std_logic; 
        o_y         : out std_logic_vector(L-1 downto 0) 
    );
end FIR;

architecture Structural of FIR is

    signal rom_address_sig : std_logic_vector(2 downto 0);  
    signal ram_address_sig : std_logic_vector(2 downto 0);  
    signal mac_init_sig    : std_logic; 
    signal rom_out_sig     : std_logic_vector(N-1 downto 0);  
    signal ram_out_sig     : std_logic_vector(N-1 downto 0);  
    signal ram_we_sig      : std_logic;

    
begin

    
    ControlUnit: entity work.control_unit
        port map (
            i_clk       => i_clk,                
            i_rst       => i_rst,
            i_valid_in  => i_valid_in,
            o_mac_init  => mac_init_sig,      
            o_rom_address => rom_address_sig,   
            o_ram_address => ram_address_sig,   
            o_valid_out => o_valid_out,
            o_we        => ram_we_sig
        );

    ROM: entity work.mlab_rom
        port map (
            i_clk       => i_clk,
            i_en        => '1',
            i_addr      => rom_address_sig,   
            o_rom_out   => rom_out_sig        
        );

    RAM: entity work.mlab_ram
        port map (
            i_clk       => i_clk,
            i_en        => '1',          
            i_we        => ram_we_sig,          
            i_addr      => ram_address_sig,  
            i_di        => i_x,                 
            o_do        => ram_out_sig        
        );

    MAC: entity work.mac
        port map (
            i_clk       => i_clk,
            i_mac_init  => mac_init_sig,     
            i_rom_data  => rom_out_sig,       
            i_ram_data  => ram_out_sig,       
            o_y         => o_y                 
        );

end Structural;