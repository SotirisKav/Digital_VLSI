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
    signal counter : std_logic_vector(3 downto 0) := "1001"; -- default value is 9 (does nothing until valid_in comes)
begin
    o_rom_address <= counter(2 downto 0);
    o_ram_address <= counter(2 downto 0);

    process(i_clk, i_rst)
    begin
        if i_rst = '1' then
            counter   <= "1000";
            o_mac_init  <= '0';
            o_we        <= '0';
            o_valid_out <= '0';
        elsif rising_edge(i_clk) then
            o_we        <= '0'; 
            o_mac_init  <= '0';
            o_valid_out <= '0';

            if counter = "1000" then -- idle
                if i_valid_in = '1' then -- waits for i_valid_in, else does nothing
                    o_we      <= '1'; -- send signal to write to RAM
                    o_mac_init <= '1';
                    counter <= "0000"; -- transition to active state on next cycle
                end if;
            else -- active             
                if counter = "0111" then -- 8 cycles have passed
                    o_valid_out <= '1'; -- signal that output is valid
                    
                    if i_valid_in = '1' then
                        o_we       <= '1';    -- Write next x to RAM
                        o_mac_init <= '1';    -- Prep MAC for next calculation
                        counter    <= "0000"; -- Loop straight back to 0 without idle
                    else
                        counter    <= "1000"; -- No continuous data, return to Idle
                    end if;
                end if;
                counter <= counter + 1;
            end if;
        end if;
    end process;
end Behavioral;
