-------------------------------------------------------------------
-- Blink Single LED Example
-- Digital VLSI Course
-- Microlab <ipapalambrou@microlab.ntua.gr> Ilias Papalamprou
-------------------------------------------------------------------
-- This code implements a simple module that blinks an output  
-- LED on Zybo, using a single-bit shift register.
--
-- Original code from: 
-- https://digilent.com/reference/learn/programmable-logic/tutorials/zybo-led-demo/start
-------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity blink_led is
    generic (
        COUNTER_LIMIT : natural := 27
    );
    port (
        -----------------------------------------------------------
        -- CONTROL SIGNALS
        i_clk   : in    std_logic;
        -----------------------------------------------------------
        -- MAIN SIGNALS
        o_led  : out   std_logic_vector(3 downto 0)
    );
end entity;

architecture behavioral_arch of blink_led is

    signal count_reg : std_logic_vector(COUNTER_LIMIT-1 downto 0) := (others => '0');
    signal a,b,dir : std_logic;
begin
    
    BLINK_LED_PROCESS : process(i_clk)
    begin
        if (rising_edge(i_clk)) then
            count_reg <= count_reg + 1;
        end if;
    end process;
    a <= count_reg(COUNTER_LIMIT-3);
    b <= count_reg(COUNTER_LIMIT-2);
    dir <= count_reg(COUNTER_LIMIT-1);
    o_led(0) <= (a and b)         when dir = '1' else (not a and not b);
    o_led(1) <= (not a and b)     when dir = '1' else (a and not b);
    o_led(2) <= (a and not b)     when dir = '1' else (not a and b);
    o_led(3) <= (not a and not b) when dir = '1' else (a and b);
end behavioral_arch;