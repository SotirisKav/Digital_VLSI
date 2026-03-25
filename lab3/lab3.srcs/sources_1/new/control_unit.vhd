library IEEE;

use IEEE.STD_LOGIC_1164.ALL;

use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity control_unit is
    port (
        i_clk       : in  std_logic;
        i_rst       : in  std_logic;
        i_valid_in  : in  std_logic;
        o_rom_address : out std_logic_vector(2 downto 0);
        o_ram_address : out std_logic_vector(2 downto 0);
        o_mac_init  : out std_logic;
        o_we        : out std_logic;
        o_valid_out : out std_logic
    );

end control_unit;

architecture Behavioral of control_unit is
    signal counter : std_logic_vector(3 downto 0) := "1000"; -- Idle state
    
    -- Pipeline registers to delay control signals by 1 clock cycle
    signal mac_init_next  : std_logic := '0';
    signal valid_out_next : std_logic := '0';
begin
    o_rom_address <= counter(2 downto 0);
    o_ram_address <= counter(2 downto 0);

    process(i_clk, i_rst)
    begin
        if i_rst = '1' then
            counter        <= "1000";
            o_mac_init     <= '0';
            o_we           <= '0';
            o_valid_out    <= '0';
            mac_init_next  <= '0';
            valid_out_next <= '0';
        elsif rising_edge(i_clk) then
            -- Shift pipeline registers to outputs (creates the 1-cycle delay)
            o_mac_init  <= mac_init_next;
            o_valid_out <= valid_out_next;

            -- Default assignments for single-cycle pulses
            o_we           <= '0';
            mac_init_next  <= '0';
            valid_out_next <= '0';

            if counter = "1000" then -- IDLE
                if i_valid_in = '1' then
                    o_we          <= '1';    -- Write x to RAM
                    mac_init_next <= '1';    -- MAC will init NEXT cycle when data arrives
                    counter       <= "0000"; -- Start calculation
                end if;
            else -- ACTIVE             
                if counter = "0111" then -- 8th cycle (Address 7)
                    valid_out_next <= '1'; -- Output will be valid NEXT cycle when MAC finishes
                    
                    if i_valid_in = '1' then
                        o_we          <= '1';    -- Write next x to RAM
                        mac_init_next <= '1';    -- MAC will init NEXT cycle
                        counter       <= "0000"; -- Loop straight back to 0
                    else
                        counter       <= "1000"; -- No continuous data, return to Idle
                    end if;
                else
                    counter <= counter + 1;     
                end if;
            end if;
        end if;
    end process;
end Behavioral;
