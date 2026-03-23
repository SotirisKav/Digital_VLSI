library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity control_unit is
    port (
        clk         : in  std_logic;
        rst         : in  std_logic;
        valid_in    : in  std_logic;
        rom_address : out std_logic_vector(2 downto 0);
        ram_address : out std_logic_vector(2 downto 0);
        mac_init    : out std_logic;
        we          : out std_logic;
        valid_out   : out std_logic
    );
end control_unit;

architecture Behavioral of control_unit is
    signal counter : std_logic_vector(3 downto 0) := "1001"; -- default value is 9 (does nothing until valid_in comes)
begin
    rom_address <= counter(2 downto 0);
    ram_address <= counter(2 downto 0);

    process(clk, rst)
    begin
        if rst = '1' then
            counter   <= "1001";
            mac_init  <= '0';
            we        <= '0';
            valid_out <= '0';
        elsif rising_edge(clk) then
            we        <= '0'; 
            mac_init  <= '0';
            valid_out <= '0';

            if counter = "1001" then -- idle
                if valid_in = '1' then -- waits for valid_in, else does nothing
                    we      <= '1'; -- send signal to write to RAM
                    counter <= "0000"; -- transition to active state on next cycle
                end if;
            else -- active
                if counter = "0000" then -- just starting the calculation
                    mac_init <= '1'; 
                end if;
                        
                if counter = "1000" then -- 8 cycles have passed
                    valid_out <= '1'; -- signal that output is valid
                end if;
                counter <= counter + 1;
            end if;
        end if;
    end process;
end Behavioral;
