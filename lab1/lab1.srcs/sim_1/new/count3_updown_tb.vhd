-----------------------------------------
-- 3 bit Counter with Up/Down testbench
-----------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity count3_updown_tb is
-- Empty entity for testbench
end entity count3_updown_tb;

architecture tb of count3_updown_tb is

    -------------------------------------
    -- SHARED INPUT SIGNALS
    -------------------------------------
    signal clk      : std_logic := '0';
    signal resetn   : std_logic := '0';
    signal up       : std_logic := '0';
    signal count_en : std_logic := '0';
    signal lim      : std_logic_vector(2 downto 0) := "101"; -- Limit = 5

    -------------------------------------
    -- SEPARATE OUTPUT SIGNALS
    -------------------------------------
    -- Separate outputs for the two architectures 
    signal sum_nolimit  : std_logic_vector(2 downto 0);
    signal cout_nolimit : std_logic;
    
    signal sum_limit    : std_logic_vector(2 downto 0);
    signal cout_limit   : std_logic;

    constant CLK_PERIOD : time := 10 ns;

begin

    -------------------------------------
    -- ARCHITECTURE 1 (No Limit)
    -------------------------------------
    DUT_NOLIMIT : entity work.count3_updown(rtl_nolimit)
        port map (
            up       => up,
            clk      => clk,
            resetn   => resetn,
            count_en => count_en,
            lim      => lim,         -- Ignored (not used in this architecture)
            sum      => sum_nolimit, -- Nolimit outputs
            cout     => cout_nolimit
        );

    -------------------------------------
    -- ARCHITECTURE 2 (Limit)
    -------------------------------------
    DUT_LIMIT : entity work.count3_updown(rtl_limit)
        port map (
            up       => up,
            clk      => clk,
            resetn   => resetn,
            count_en => count_en,
            lim      => lim,         -- Used
            sum      => sum_limit,   -- Limit outputs
            cout     => cout_limit
        );

    -------------------------------------
    -- CLOCK GENERATOR
    -------------------------------------
    clk_process : process
    begin
        clk <= '0';
        wait for CLK_PERIOD / 2;
        clk <= '1';
        wait for CLK_PERIOD / 2;
    end process;

    -------------------------------------
    -- STIMULUS PROCESS
    -------------------------------------
    stimulus : process
    begin
        -- Reset Counters
        resetn <= '0';
        wait until falling_edge(clk);
        
        -- Start counting up
        resetn <= '1';
        count_en <= '1';
        up <= '1';
        
        assert false report "START COUNT UP" severity note;
        -- Count up for 10 clock cycles
        for i in 1 to 10 loop
            wait until falling_edge(clk);
            assert false report "Index i = " & integer'image(i) severity note;

            assert (sum_limit = std_logic_vector(to_unsigned(i mod 6, 3))) report "Limit count mismatch" severity error;
            assert (sum_nolimit = std_logic_vector(to_unsigned(i mod 8, 3))) report "Nolimit count mismatch" severity error;

            -- Check cout values for both counters
            if i = 5 then -- At the 5th cycle, the limit counter should hit its limit so cout = '1'
                assert(cout_limit = '1') report "Limit counter cout is not '1'" severity error;
                assert(cout_nolimit = '0') report "Nolimit counter cout is not '0'" severity error;
            elsif i = 7 then -- Now the nolimit counter should hit its limit at 7
                assert(cout_limit = '0') report "Limit counter cout is not '0'" severity error;
                assert(cout_nolimit = '1') report "Nolimit counter cout is not '1'" severity error;
            else -- Both counter couts should be '0' for the remaining cycles 
                assert(cout_limit = '0') report "Limit counter cout is not '0'" severity error;
                assert(cout_nolimit = '0') report "Nolimit counter cout is not '0'" severity error;
            end if;
        end loop;
        
        -- Reset counters
        resetn <= '0';
        wait until falling_edge(clk);
        
        -- Start counting down
        resetn <= '1';
        count_en <= '1';
        up <= '0'; 
        
        assert false report "START COUNT DOWN" severity note;
        -- Watch them count DOWN for 10 clock cycles
        for i in 1 to 10 loop
            wait until falling_edge(clk);
            assert false report "DOWN-COUNT Index i = " & integer'image(i) severity note;

            assert (sum_nolimit = std_logic_vector(to_unsigned((8 - (i mod 8)) mod 8, 3))) 
                report "Nolimit down-count mismatch" severity error;
            assert (sum_limit = std_logic_vector(to_unsigned((6 - (i mod 6)) mod 6, 3))) 
                report "Limit down-count mismatch" severity error;

            -- Check cout values for both counters
            if i = 6 then 
                -- Limit counter hits 0
                assert(cout_limit = '1') report "Limit cout is not '1'" severity error;
                assert(cout_nolimit = '0') report "Nolimit cout is not '0'" severity error;
            elsif i = 8 then 
                -- Nolimit counter hits 0
                assert(cout_limit = '0') report "Limit cout is not '0'" severity error;
                assert(cout_nolimit = '1') report "Nolimit cout is not '1'" severity error;
            else 
                -- Both counter couts should be '0' for the remaining cycles
                assert(cout_limit = '0') report "Limit cout is not '0'" severity error;
                assert(cout_nolimit = '0') report "Nolimit cout is not '0'" severity error;
            end if;
        end loop;
        -- 4. End Simulation
        count_en <= '0';
        assert false report "SIMULATION COMPLETE" severity note;
        wait;
    end process;

end architecture tb;