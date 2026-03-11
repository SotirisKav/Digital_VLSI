library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity parallel_adder_4bit is
    Port (
        i_A : in  STD_LOGIC_VECTOR(3 downto 0);
        i_B : in  STD_LOGIC_VECTOR(3 downto 0);
        i_Carry_in : in  STD_LOGIC;
        o_Sum : out STD_LOGIC_VECTOR(3 downto 0);
        o_Carry_out : out STD_LOGIC
    );
end entity;

architecture Structural of parallel_adder_4bit is

    component full_adder is
        Port (
        i_A : in STD_LOGIC;
        i_B : in STD_LOGIC;
        i_Carry_in : in STD_LOGIC;
        o_Sum : out STD_LOGIC;
        o_Carry_out : out STD_LOGIC
    );
    end component;

    signal carry : std_logic_vector(4 downto 0) := (others => '0');

begin

    FA_INSTANCE_0 : full_adder
        port map (
            i_A => i_A(0),
            i_B => i_B(0),
            i_Carry_in => carry(0),
            o_Sum => o_Sum(0),
            o_Carry_out => carry(1)
        );
    
    FA_INSTANCE_1 : full_adder
        port map (
            i_A => i_A(1),
            i_B => i_B(1),
            i_Carry_in => carry(1),
            o_Sum => o_Sum(1),
            o_Carry_out => carry(2)
        );          

    FA_INSTANCE_2 : full_adder 
        port map (
            i_A => i_A(2),
            i_B => i_B(2),
            i_Carry_in => carry(2),
            o_Sum => o_Sum(2),
            o_Carry_out => carry(3)
        );

    FA_INSTANCE_3 : full_adder
        port map (
            i_A => i_A(3),
            i_B => i_B(3),
            i_Carry_in => carry(3),
            o_Sum => o_Sum(3),
            o_Carry_out => carry(4)
        );  
    
    carry(0) <= i_Carry_in;
    o_Carry_out <= carry(4);

end Structural;