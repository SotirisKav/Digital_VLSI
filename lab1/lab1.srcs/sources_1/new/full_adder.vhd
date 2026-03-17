library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity full_adder is
    Port (
        i_A : in STD_LOGIC;
        i_B : in STD_LOGIC;
        i_Carry_in : in STD_LOGIC;
        o_Sum : out STD_LOGIC;
        o_Carry_out : out STD_LOGIC
    );
end entity;

architecture Structural of full_adder is

    ---------------------------------------------------------------
    -- COMPONENTS
    ---------------------------------------------------------------
    component half_adder is
        Port (
            i_A : in STD_LOGIC;
            i_B : in STD_LOGIC;
            o_Sum : out STD_LOGIC;
            o_Carry : out STD_LOGIC
        );
    end component;

    ---------------------------------------------------------------
    -- SIGNALS
    ---------------------------------------------------------------
    signal sum_1, carry_1, carry_2 : std_logic := '0';

begin

    HA_INSTANCE_1 : half_adder
        port map (
            i_A => i_A,
            i_B => i_B,
            o_Sum => sum_1,
            o_Carry => carry_1
        );

    HA_INSTANCE_2 : half_adder
        port map (
            i_A => sum_1,
            i_B => i_Carry_in,
            o_Sum => o_Sum,
            o_Carry => carry_2
        );

    o_Carry_out <= carry_1 OR carry_2;

end Structural;