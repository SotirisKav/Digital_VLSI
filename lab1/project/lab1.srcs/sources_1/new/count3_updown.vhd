-------------------------------------------
-- Up/Down 3bit counter with optional limit
-------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity count3_updown is
    port(
    up, clk, resetn, count_en : in std_logic;
    lim : in std_logic_vector(2 downto 0);
    sum : out std_logic_vector(2 downto 0);
    cout : out std_logic);
end;



architecture rtl_nolimit of count3_updown is
signal count: std_logic_vector(2 downto 0);
begin
    process(clk, resetn)
    begin
        if resetn='0' then
            -- Reset signal - Make counter zero
            count <= (others=>'0');
        elsif rising_edge(clk) then
            -- If count is enabled, do arithmetic on the counter
            if count_en='1' then
                case (up) is
                    -- Count up +1 
                    when '1' => count <= count+1; 
                    -- Count down -1
                    when '0' => count <= count-1;
                    when others => null;
                end case;
            end if;
        end if;
    end process;
    sum <= count;
    -- Cout tells us when the counter is at its limit, either its low or its high
    cout <= '1' when (count = "111" and up = '1' and count_en = '1') or 
                     (count = "000" and up = '0' and count_en = '1') else '0';
end rtl_nolimit;    


                 

architecture rtl_limit of count3_updown is
signal count: std_logic_vector(2 downto 0);
begin
    process(clk, resetn)
    begin
        if resetn='0' then
            count <= (others=>'0');
        elsif rising_edge(clk) then
            if count_en='1' then
                case (up) is
                    when '1' => 
                        -- Adjust for when the limit is given by the user
                        if (count /= lim) then count <= count+1;
                        else count <= (others => '0');
                        end if;
                    when '0' =>
                        if (count /= "000") then count <= count-1;
                        else count <= lim;
                        end if;
                    when others => null;
                end case;
            end if;
        end if;
    end process;
    sum <= count;
    cout <= '1' when (count = lim and up = '1' and count_en = '1') or 
                     (count = "000" and up = '0' and count_en = '1') else '0';
end rtl_limit;

