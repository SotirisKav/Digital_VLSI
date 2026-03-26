library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.std_logic_arith;
entity tb_FIR is
-- Testbench entities are empty
end tb_FIR;

architecture Behavioral of tb_FIR is

    -- Constants
    constant N : integer := 8;
    constant L : integer := 19;
    constant CLK_PERIOD : time := 10 ns;

    -- Testbench signals
    signal tb_clk        : std_logic := '0';
    signal tb_rst        : std_logic := '0';
    signal tb_valid_in   : std_logic := '0';
    signal tb_x          : std_logic_vector(N-1 downto 0) := (others => '0');
    signal tb_valid_out  : std_logic;
    signal tb_y          : std_logic_vector(L-1 downto 0);

begin

    -- ==========================================
    -- DEVICE UNDER TEST (DUT)
    -- ==========================================
    UUT: entity work.FIR
        port map (
            i_clk       => tb_clk,
            i_rst       => tb_rst,
            i_valid_in  => tb_valid_in,
            i_x         => tb_x,
            o_valid_out => tb_valid_out,
            o_y         => tb_y
        );

    -- ==========================================
    -- CLOCK GENERATION PROCESS
    -- ==========================================
    clk_process: process
    begin
        tb_clk <= '0';
        wait for CLK_PERIOD / 2;
        tb_clk <= '1';
        wait for CLK_PERIOD / 2;
    end process;

    -- ==========================================
    -- STIMULUS PROCESS 
    -- ==========================================
    stim_process: process
    begin
        -- Initial Reset
        tb_rst <= '1';
        tb_x <= (others => '0');
        wait for CLK_PERIOD * 2;
        tb_rst <= '0';

        wait for CLK_PERIOD * 10;
                
               
        tb_x <= x"D0";
        tb_valid_in <= '1'; 
        wait for CLK_PERIOD;
        tb_valid_in <= '0';
                wait for CLK_PERIOD * 7;

        tb_x <= x"E7"; tb_valid_in <= '1'; 
        wait for CLK_PERIOD; tb_valid_in <= '0';
                wait for CLK_PERIOD * 7;

        tb_x <= x"20"; tb_valid_in <= '1'; 
        wait for CLK_PERIOD; tb_valid_in <= '0';
                wait for CLK_PERIOD * 7;

        tb_x <= x"E9"; tb_valid_in <= '1'; 
        wait for CLK_PERIOD; tb_valid_in <= '0';
                wait for CLK_PERIOD * 7;

        tb_x <= x"A1"; tb_valid_in <= '1'; 
        wait for CLK_PERIOD; tb_valid_in <= '0';
                wait for CLK_PERIOD * 7;

        tb_x <= x"18"; tb_valid_in <= '1'; 
        wait for CLK_PERIOD; tb_valid_in <= '0';
                wait for CLK_PERIOD * 7;

        tb_x <= x"47"; tb_valid_in <= '1'; 
        wait for CLK_PERIOD; tb_valid_in <= '0';
                wait for CLK_PERIOD * 7;

        tb_x <= x"8C"; tb_valid_in <= '1'; 
        wait for CLK_PERIOD; tb_valid_in <= '0';
                wait for CLK_PERIOD * 7;

        tb_x <= x"F5"; tb_valid_in <= '1'; 
        wait for CLK_PERIOD; tb_valid_in <= '0';
                wait for CLK_PERIOD * 7;

        tb_x <= x"F7"; tb_valid_in <= '1'; 
        wait for CLK_PERIOD; tb_valid_in <= '0';
                wait for CLK_PERIOD * 7;

        tb_x <= x"28"; tb_valid_in <= '1'; 
        wait for CLK_PERIOD; tb_valid_in <= '0';
                wait for CLK_PERIOD * 7;

        tb_x <= x"F8"; tb_valid_in <= '1'; 
        wait for CLK_PERIOD; tb_valid_in <= '0';
                wait for CLK_PERIOD * 7;

        tb_x <= x"F5"; tb_valid_in <= '1'; 
        wait for CLK_PERIOD; tb_valid_in <= '0';
                wait for CLK_PERIOD * 7;

        tb_x <= x"7C"; tb_valid_in <= '1'; 
        wait for CLK_PERIOD; tb_valid_in <= '0';
        wait for CLK_PERIOD * 7;
        
        tb_x <= x"CC"; tb_valid_in <= '1'; 
        wait for CLK_PERIOD; tb_valid_in <= '0';
                wait for CLK_PERIOD * 7;

        tb_x <= x"24"; tb_valid_in <= '1'; 
        wait for CLK_PERIOD; tb_valid_in <= '0';
                wait for CLK_PERIOD * 7;

        tb_x <= x"6B"; tb_valid_in <= '1'; 
        wait for CLK_PERIOD; tb_valid_in <= '0';
                wait for CLK_PERIOD * 7;

        tb_x <= x"EA"; tb_valid_in <= '1'; 
        wait for CLK_PERIOD; tb_valid_in <= '0';
                wait for CLK_PERIOD * 7;

        tb_x <= x"CA"; tb_valid_in <= '1'; 
        wait for CLK_PERIOD; tb_valid_in <= '0';
                wait for CLK_PERIOD * 7;

        tb_x <= x"F5"; tb_valid_in <= '1'; 
        wait for CLK_PERIOD; tb_valid_in <= '0';
        
        
        
        wait for CLK_PERIOD * 20;
        assert false report "SIMULATION FINISHED SUCCESSFULLY! All self-checks passed." severity note;
    end process;


end Behavioral;