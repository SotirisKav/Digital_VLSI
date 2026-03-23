library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL; -- Matching your design's libraries

entity tb_FIR is
-- Testbench entities are always empty
end tb_FIR;

architecture Behavioral of tb_FIR is

    -- Constants for generics and clock
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

    -- Instantiate the Device Under Test (DUT)
    UUT: entity work.FIR
        generic map (
            N => N,
            L => L
        )
        port map (
            i_clk       => tb_clk,
            i_rst       => tb_rst,
            i_valid_in  => tb_valid_in,
            i_x         => tb_x,
            o_valid_out => tb_valid_out,
            o_y         => tb_y
        );

    -- Clock generation process
    clk_process: process
    begin
        tb_clk <= '0';
        wait for CLK_PERIOD / 2;
        tb_clk <= '1';
        wait for CLK_PERIOD / 2;
    end process;

    -- Stimulus process
    stim_process: process
    begin
        -- 1. Apply Reset
        tb_rst <= '1';
        wait for CLK_PERIOD * 2;
        tb_rst <= '0';
        wait for CLK_PERIOD; -- Align to clock edge

        -- 2. Send 1st Input
        tb_x <= x"01";       -- Hex 01
        tb_valid_in <= '1';
        wait for CLK_PERIOD; 
        tb_valid_in <= '0';
        wait for CLK_PERIOD * 7; -- Wait 7 cycles (Total 8 cycles between inputs)

        -- 3. Send 2nd Input
        tb_x <= x"02";       -- Hex 02
        tb_valid_in <= '1';
        wait for CLK_PERIOD;
        tb_valid_in <= '0';
        wait for CLK_PERIOD * 7;

        -- 4. Send 3rd Input
        tb_x <= x"03";       -- Hex 03
        tb_valid_in <= '1';
        wait for CLK_PERIOD;
        tb_valid_in <= '0';
        wait for CLK_PERIOD * 7;
        
        -- 5. Send 4th Input
        tb_x <= x"04";       -- Hex 04
        tb_valid_in <= '1';
        wait for CLK_PERIOD;
        tb_valid_in <= '0';
        
        -- Wait enough time to observe the final output, then stop
        wait for CLK_PERIOD * 20;
        
        -- Stop simulation
        assert false report "Simulation finished successfully." severity failure;
        
    end process;

end Behavioral;