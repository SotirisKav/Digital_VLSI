library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bcd_parallel_adder_4bit is
    Port (
        i_A : in STD_LOGIC_VECTOR (15 downto 0);
        i_B : in STD_LOGIC_VECTOR (15 downto 0);
        i_Carry_in : in STD_LOGIC;
        o_Sum : out STD_LOGIC_VECTOR (15 downto 0);
        o_Carry_out : out STD_LOGIC
    );
end bcd_parallel_adder_4bit;

architecture Structural of bcd_parallel_adder_4bit is

    component bcd_full_adder is
        Port (
        i_A : in STD_LOGIC_VECTOR (3 downto 0);
        i_B : in STD_LOGIC_VECTOR (3 downto 0);
        i_Carry_in : in STD_LOGIC;
        o_Sum : out STD_LOGIC_VECTOR (3 downto 0);
        o_Carry_out : out STD_LOGIC
    );
    end component;

    signal carry : std_logic_vector(2 downto 0) := (others => '0');

begin 

    BCD_FA_INSTANCE_0 : bcd_full_adder
        port map (
            i_A => i_A(3 downto 0),
            i_B => i_B(3 downto 0),
            i_Carry_in => i_Carry_in,
            o_Sum => o_Sum(3 downto 0),
            o_Carry_out => carry(0)
        );
    
    BCD_FA_INSTANCE_1 : bcd_full_adder
        port map (
            i_A => i_A(7 downto 4),
            i_B => i_B(7 downto 4),
            i_Carry_in => carry(0),
            o_Sum => o_Sum(7 downto 4),
            o_Carry_out => carry(1)
        );          

    BCD_FA_INSTANCE_2 : bcd_full_adder 
        port map (
            i_A => i_A(11 downto 8),
            i_B => i_B(11 downto 8),
            i_Carry_in => carry(1),
            o_Sum => o_Sum(11 downto 8),
            o_Carry_out => carry(2)
        );

    BCD_FA_INSTANCE_3 : bcd_full_adder
        port map (
            i_A => i_A(15 downto 12),
            i_B => i_B(15 downto 12),
            i_Carry_in => carry(2),
            o_Sum => o_Sum(15 downto 12),
            o_Carry_out => o_Carry_out
        );

end Structural;