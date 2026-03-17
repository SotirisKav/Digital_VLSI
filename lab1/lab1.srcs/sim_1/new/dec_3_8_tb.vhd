----------------------------------------------------------------
-- Decoder 3:8 Testbench
----------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity decoder3_8_tb is
--  Port ( );
end decoder3_8_tb;

architecture tb of decoder3_8_tb is
    -------------------------------------
    -- COMPONENT
    -------------------------------------
    component decoder_3_8_df is 
        port (
            i_e : in std_logic_vector(3-1 downto 0);
            o_dec: out std_logic_vector(8-1 downto 0)  
        );
    end component;
    -------------------------------------
    -- SIGNALS
    -------------------------------------    
    signal i_e : std_logic_vector(3-1 downto 0);
    signal o_dec: std_logic_vector(8-1 downto 0);
    signal expected: std_logic_vector(8-1 downto 0);
    -------------------------------------
    -- CONSTANTS
    -------------------------------------
    constant CLOCK_PERIOD : time := 100 ns;
    
begin
    -- Design under test entity
    DUT : decoder_3_8_df
        port map (
            i_e => i_e,
            o_dec => o_dec
        );

    STIMULUS : process
    begin
        -------------------------------------
        -- Initialize Signals
        i_e <= (others => '0');
        wait for(1 * CLOCK_PERIOD);
        
        -------------------------------------
        for i in 0 to 7 loop 
            i_e <= std_logic_vector(to_unsigned(i, 3));
            expected <= std_logic_vector(shift_left(to_unsigned(1, 8), i));
            wait for (1 * CLOCK_PERIOD);
            assert (o_dec = expected)
                report "TEST FAILED! Mismatch at input index " & integer'image(i)
                severity error;
        end loop;
        i_e <= (others => '0');
        wait for (1 * CLOCK_PERIOD);
        
        assert false report "Simulation finished successfully!" severity note;
        wait;
    end process;
end architecture;