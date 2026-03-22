-------------------------------------------------------
-- Synchronous Pipelined 4-bit Ripple Carry Multiplier
-------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Pipelined_RCM_4bit is
    Port (
        i_clk  : in  STD_LOGIC;
        i_A    : in  STD_LOGIC_VECTOR (3 downto 0);
        i_B    : in  STD_LOGIC_VECTOR (3 downto 0);
        o_M    : out STD_LOGIC_VECTOR (7 downto 0)
    );
end Pipelined_RCM_4bit;
architecture Structural of Pipelined_RCM_4bit is

    component SynchronousParallelAdder is
        Port (
            i_clk  : in  STD_LOGIC;
            i_A    : in  STD_LOGIC_VECTOR (3 downto 0);
            i_B    : in  STD_LOGIC_VECTOR (3 downto 0);
            i_Cin  : in  STD_LOGIC;
            o_S    : out STD_LOGIC_VECTOR (3 downto 0);
            o_Cout : out STD_LOGIC
        );

    end component;
    -- Intermediate signals (wires) 
    signal wire_pp0, wire_pp1, wire_pp2, wire_pp3 : STD_LOGIC_VECTOR(3 downto 0);
    signal adder_in_A1, adder_in_A2, adder_in_A3  : STD_LOGIC_VECTOR(3 downto 0);
    
    -- Pipeline delay registers for A and B (these hold the state of the inputs as the clock ticks)
    signal A_reg1, A_reg2 : STD_LOGIC_VECTOR(3 downto 0);
    signal B_reg1, B_reg2 : STD_LOGIC_VECTOR(3 downto 0);
    
    -- Pipeline delay registers for the LSBs of the result
    signal LSB_reg1 : STD_LOGIC;
    signal LSB_reg2 : STD_LOGIC_VECTOR(1 downto 0);
    signal LSB_reg3 : STD_LOGIC_VECTOR(2 downto 0);

    -- Adder outputs 
    signal sum1, sum2, sum3 : STD_LOGIC_VECTOR(3 downto 0);
    signal c1, c2, c3       : STD_LOGIC;

begin
    -- Note to self: The combinatorial logic is better to be seperated from the sequential logic
    -- because that way it is easier to understand and implement the design 

    -- Combinatorial Part (generate the inputs for the adders)
    wire_pp0 <= i_A    and (3 downto 0 => i_B(0));    
    wire_pp1 <= i_A    and (3 downto 0 => i_B(1)); 
    wire_pp2 <= A_reg1 and (3 downto 0 => B_reg1(2));  
    wire_pp3 <= A_reg2 and (3 downto 0 => B_reg2(3));  

    -- Adder inputs finalized
    adder_in_A1 <= '0' & wire_pp0(3 downto 1);
    adder_in_A2 <= c1  & sum1(3 downto 1);
    adder_in_A3 <= c2  & sum2(3 downto 1);

    -- Synchronous adder logic which create the partial products
    Adder0: SynchronousParallelAdder port map (
        i_clk => i_clk, i_A => adder_in_A1, i_B => wire_pp1, i_Cin => '0', o_S => sum1, o_Cout => c1
    );
    Adder1: SynchronousParallelAdder port map (
        i_clk => i_clk, i_A => adder_in_A2, i_B => wire_pp2, i_Cin => '0',  o_S => sum2, o_Cout => c2
    );
    Adder2: SynchronousParallelAdder port map (
        i_clk => i_clk, i_A => adder_in_A3, i_B => wire_pp3, i_Cin => '0',  o_S => sum3, o_Cout => c3
    );

    -- Synchronous logic for the pipeline delay registers
    process(i_clk)    
    begin
        if rising_edge(i_clk) then
            A_reg1 <= i_A;
            A_reg2 <= A_reg1;

            B_reg1 <= i_B;
            B_reg2 <= B_reg1;

            -- Delay the LSBs so they reach the final output at the exact same time
            LSB_reg1             <= wire_pp0(0);
            LSB_reg2(1 downto 0) <= sum1(0) & LSB_reg1;
            LSB_reg3(2 downto 0) <= sum2(0) & LSB_reg2(1 downto 0);
            
        end if;
    end process;
    o_M <= c3 & sum3 & LSB_reg3;
    
end Structural;