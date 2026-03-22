library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_Pipelined_RCM_4bit is
end tb_Pipelined_RCM_4bit;

architecture Behavioral of tb_Pipelined_RCM_4bit is

    -- Component Declaration for the device being tested
    component Pipelined_RCM_4bit is
        Port (
            i_clk  : in  STD_LOGIC;
            i_A    : in  STD_LOGIC_VECTOR (3 downto 0);
            i_B    : in  STD_LOGIC_VECTOR (3 downto 0);
            o_M    : out STD_LOGIC_VECTOR (7 downto 0)
        );
    end component;

    -- Testbench Signals
    signal clk   : STD_LOGIC := '0';
    signal sig_A : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
    signal sig_B : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
    signal sig_M : STD_LOGIC_VECTOR(7 downto 0);

    constant clk_period : time := 10 ns;

    -- Verification Variables
    -- Array to store the expected result by 3 cycles
    type delay_array is array (1 to 3) of integer;
    signal expected_pipe : delay_array := (others => 0);
    
    -- Counter to track cycles 
    signal test_cycle : integer := 0; 

begin

    -- Device instance
    DUT: Pipelined_RCM_4bit port map (
        i_clk => clk,
        i_A   => sig_A,
        i_B   => sig_B,
        o_M   => sig_M
    );

    -- Clock generation 
    clk_process : process
    begin
        clk <= '0';
        wait for clk_period / 2;
        clk <= '1';
        wait for clk_period / 2;
    end process;

    -- Exhaustive stimulus with assertions
    stimulus: process
    begin
        
        -- Check all possible combinations for (A,B)
        for i in 0 to 15 loop
            for j in 0 to 15 loop
               
                wait until falling_edge(clk);
                
                -- Check the result after the 3-cycle pipeline latency
                -- Therefore only start checking after 3 cycles have passed
                if test_cycle >= 3 then
                    assert to_integer(unsigned(sig_M)) = expected_pipe(3)
                    report "Mismatched result! " & 
                           "Expected: " & integer'image(expected_pipe(3)) & 
                           ", Got: " & integer'image(to_integer(unsigned(sig_M)))
                    severity error;
                end if;

                -- Delay the expected results by 3 cycles
                expected_pipe(3) <= expected_pipe(2);
                expected_pipe(2) <= expected_pipe(1);
                expected_pipe(1) <= i * j; 
                
                -- Store the new inputs
                sig_A <= std_logic_vector(to_unsigned(i, 4));
                sig_B <= std_logic_vector(to_unsigned(j, 4));
                
                test_cycle <= test_cycle + 1;
                
            end loop;
        end loop;

        -- After the loops finish, the last 3 multiplications are still stuck inside the pipeline.
        -- So we need 3 more clock cycles to get them
        for k in 1 to 3 loop
            wait until falling_edge(clk);
            
            -- Verify the flushing data
            assert to_integer(unsigned(sig_M)) = expected_pipe(3)
            report "Mismatched result during flush! Expected: " & integer'image(expected_pipe(3))
            severity error;
            
            -- Delay the expected results
            expected_pipe(3) <= expected_pipe(2);
            expected_pipe(2) <= expected_pipe(1);
            expected_pipe(1) <= 0; 
            
            sig_A <= (others => '0');
            sig_B <= (others => '0');
        end loop;

        -- Stop the simulation 
        assert false report "Exhaustive Test Completed Successfully! All 256 combinations passed." severity failure;

    end process;

end Behavioral;