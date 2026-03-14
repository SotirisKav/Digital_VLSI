--------------------------------------------
-- 4 bit shift register with parallel load
--------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
entity rl_shift_reg is
    port (
        clk,rst,si,en,pl,r_sft: in std_logic;
        din: in std_logic_vector(3 downto 0);
        dout: out std_logic_vector(3 downto 0);
        so: out std_logic
        );
end rl_shift_reg;

architecture rtl of rl_shift_reg is
    signal dff: std_logic_vector(3 downto 0);
begin
    edge: process (clk,rst)
    begin
        if rst='0' then
            dff<=(others=>'0');
        -- clk' event means the clock's value changed - clk = '1' means rising edge
        -- it is better to use the function rising_edge(clk) however
        elsif rising_edge(clk) then
            if pl='1' then
                dff<=din;
            elsif en='1' then
                if r_sft = '1' then
                    dff<=si&dff(3 downto 1);
                else 
                    dff<=dff(2 downto 0)&si;
                end if;
            end if;
        end if;
    end process;
    so <= dff(0) when r_sft = '1' 
                 else dff(3);
    dout <= dff;
end rtl;
