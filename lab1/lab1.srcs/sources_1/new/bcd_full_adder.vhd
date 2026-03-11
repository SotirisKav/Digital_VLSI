library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bcd_full_adder is
    Port (
        i_A : in STD_LOGIC_VECTOR (3 downto 0);
        i_B : in STD_LOGIC_VECTOR (3 downto 0);
        i_Carry_in : in STD_LOGIC;
        o_Sum : out STD_LOGIC_VECTOR (3 downto 0);
        o_Carry_out : out STD_LOGIC
    );
end bcd_full_adder;

architecture Structural of bcd_full_adder is

    component parallel_adder_4bit is
        Port (
        i_A : in  STD_LOGIC_VECTOR(3 downto 0);
        i_B : in  STD_LOGIC_VECTOR(3 downto 0);
        i_Carry_in : in  STD_LOGIC;
        o_Sum : out STD_LOGIC_VECTOR(3 downto 0);
        o_Carry_out : out STD_LOGIC
    );
    end component;

    signal raw_sum : std_logic_vector(3 downto 0); -- from the first addition
    signal carry_1 : std_logic; -- carry from the first addition
    signal correction : std_logic_vector(3 downto 0); -- correction value (6) if needed, else 0
    signal carry_out : std_logic; -- final carry out after correction
    signal carry_2 : std_logic; -- carry from the correction addition

begin

    PA_INSTANCE_0 : parallel_adder_4bit
        port map (
            i_A => i_A,
            i_B => i_B,
            i_Carry_in => i_Carry_in,
            o_Sum => raw_sum,
            o_Carry_out => carry_1
        );
    
    carry_out <= carry_1 OR
                 (raw_sum(3) AND raw_sum(2)) OR
                 (raw_sum(3) AND raw_sum(1));

    correction(3) <= '0';
    correction(2) <= carry_out;
    correction(1) <= carry_out;
    correction(0) <= '0';

    PA_INSTANCE_1 : parallel_adder_4bit
        port map (
            i_A => raw_sum,
            i_B => correction,
            i_Carry_in => '0',
            o_Sum => o_Sum,
            o_Carry_out => carry_2
        );
    
    o_Carry_out <= carry_out;
end Structural;