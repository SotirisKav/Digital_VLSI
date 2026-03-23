library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity FIR is
    port (
        i_clk       : in  std_logic; 
        i_rst       : in  std_logic; 
        i_valid_in  : in  std_logic; 
        i_x         : in  std_logic_vector(7 downto 0);   -- 8-bit input data
        o_valid_out : out std_logic; 
        o_y         : out std_logic_vector(18 downto 0)   -- 19-bit accumulated output
    );
end FIR;

architecture Structural of FIR is

    -- Internal signals for block interconnections
    signal rom_address_sig : std_logic_vector(2 downto 0);  
    signal ram_address_sig : std_logic_vector(2 downto 0);  
    signal mac_init_sig    : std_logic; 
    signal rom_out_sig     : std_logic_vector(7 downto 0);  
    signal ram_out_sig     : std_logic_vector(7 downto 0);  
    signal ram_we_sig      : std_logic;

begin

    -- Control Unit: Generates memory addresses and control flags
    ControlUnit: entity work.control_unit
        port map (
            i_clk         => i_clk,
            i_rst         => i_rst,
            i_valid_in    => i_valid_in,
            o_mac_init    => mac_init_sig,
            o_rom_address => rom_address_sig,
            o_ram_address => ram_address_sig,
            o_valid_out   => o_valid_out,
            o_we          => ram_we_sig
        );

    -- ROM: Stores constant filter coefficients h[k] [cite: 48]
    ROM: entity work.mlab_rom
        port map (
            i_clk         => i_clk,
            i_en          => '1',               -- Continuously enabled during operation
            i_addr        => rom_address_sig,
            o_rom_out     => rom_out_sig
        );

    -- RAM: Stores history of input values x[n-k] (sliding window) [cite: 51]
    RAM: entity work.mlab_ram
        port map (
            i_clk         => i_clk,
            i_en          => '1',
            i_rst         => i_rst,
            i_we          => ram_we_sig,
            i_addr        => ram_address_sig,
            i_di          => i_x,               -- New input data
            o_do          => ram_out_sig
        );

    -- MAC: Multiply and Accumulate unit [cite: 44]
    MAC: entity work.mac
        port map (
            i_clk         => i_clk,
            i_mac_init    => mac_init_sig,      -- Clears accumulator for new calculation
            i_rom_data    => rom_out_sig,       -- Coefficient h[k]
            i_ram_data    => ram_out_sig,       -- Data x[n-k]
            o_y           => o_y                -- Final computed filter output
        );

end Structural;