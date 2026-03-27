-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
-- Date        : Fri Mar 27 19:57:58 2026
-- Host        : c5bfe17b53e5 running 64-bit Ubuntu 22.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/user/Digital_VLSI/lab4/lab4.gen/sources_1/bd/design_1/ip/design_1_my_fir_filter_0_0/design_1_my_fir_filter_0_0_sim_netlist.vhdl
-- Design      : design_1_my_fir_filter_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_my_fir_filter_0_0_control_unit is
  port (
    ram_we_sig : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    o_mac_init : out STD_LOGIC;
    \counter_reg[2]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    o_valid_out_reg_0 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    fir_valid_lat_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    fir_valid_lat : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_my_fir_filter_0_0_control_unit : entity is "control_unit";
end design_1_my_fir_filter_0_0_control_unit;

architecture STRUCTURE of design_1_my_fir_filter_0_0_control_unit is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \counter[2]_i_1_n_0\ : STD_LOGIC;
  signal \counter[3]_i_1_n_0\ : STD_LOGIC;
  signal \counter[3]_i_2_n_0\ : STD_LOGIC;
  signal \^counter_reg[2]_0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \counter_reg_n_0_[3]\ : STD_LOGIC;
  signal mac_init_next : STD_LOGIC;
  signal \^ram_we_sig\ : STD_LOGIC;
  signal valid_out_next : STD_LOGIC;
  signal valid_out_next_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \counter[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \counter[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \counter[3]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \o_rom_out[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \o_rom_out[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \o_rom_out[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \o_rom_out[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of o_we_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of valid_out_next_i_1 : label is "soft_lutpair1";
begin
  E(0) <= \^e\(0);
  \counter_reg[2]_0\(2 downto 0) <= \^counter_reg[2]_0\(2 downto 0);
  ram_we_sig <= \^ram_we_sig\;
\counter[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5551"
    )
        port map (
      I0 => \^counter_reg[2]_0\(0),
      I1 => \counter_reg_n_0_[3]\,
      I2 => \^counter_reg[2]_0\(1),
      I3 => \^counter_reg[2]_0\(2),
      O => \counter[0]_i_1_n_0\
    );
\counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^counter_reg[2]_0\(0),
      I1 => \^counter_reg[2]_0\(1),
      O => \counter[1]_i_1_n_0\
    );
\counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \^counter_reg[2]_0\(0),
      I1 => \^counter_reg[2]_0\(1),
      I2 => \^counter_reg[2]_0\(2),
      O => \counter[2]_i_1_n_0\
    );
\counter[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFEF"
    )
        port map (
      I0 => Q(0),
      I1 => \^counter_reg[2]_0\(0),
      I2 => \counter_reg_n_0_[3]\,
      I3 => \^counter_reg[2]_0\(1),
      I4 => \^counter_reg[2]_0\(2),
      O => \counter[3]_i_1_n_0\
    );
\counter[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"34F0F0C0"
    )
        port map (
      I0 => Q(0),
      I1 => \^counter_reg[2]_0\(0),
      I2 => \counter_reg_n_0_[3]\,
      I3 => \^counter_reg[2]_0\(1),
      I4 => \^counter_reg[2]_0\(2),
      O => \counter[3]_i_2_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \counter[3]_i_1_n_0\,
      CLR => Q(1),
      D => \counter[0]_i_1_n_0\,
      Q => \^counter_reg[2]_0\(0)
    );
\counter_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \counter[3]_i_1_n_0\,
      CLR => Q(1),
      D => \counter[1]_i_1_n_0\,
      Q => \^counter_reg[2]_0\(1)
    );
\counter_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => \counter[3]_i_1_n_0\,
      CLR => Q(1),
      D => \counter[2]_i_1_n_0\,
      Q => \^counter_reg[2]_0\(2)
    );
\counter_reg[3]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '1'
    )
        port map (
      C => s00_axi_aclk,
      CE => \counter[3]_i_1_n_0\,
      D => \counter[3]_i_2_n_0\,
      PRE => Q(1),
      Q => \counter_reg_n_0_[3]\
    );
fir_valid_lat_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBFAAAA"
    )
        port map (
      I0 => \^e\(0),
      I1 => fir_valid_lat_reg(0),
      I2 => axi_araddr(0),
      I3 => axi_araddr(1),
      I4 => fir_valid_lat,
      O => o_valid_out_reg_0
    );
o_mac_init_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => Q(1),
      D => \^ram_we_sig\,
      Q => o_mac_init
    );
\o_rom_out[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^counter_reg[2]_0\(0),
      O => D(0)
    );
\o_rom_out[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^counter_reg[2]_0\(0),
      I1 => \^counter_reg[2]_0\(1),
      O => D(1)
    );
\o_rom_out[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6C"
    )
        port map (
      I0 => \^counter_reg[2]_0\(1),
      I1 => \^counter_reg[2]_0\(2),
      I2 => \^counter_reg[2]_0\(0),
      O => D(2)
    );
\o_rom_out[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^counter_reg[2]_0\(1),
      I1 => \^counter_reg[2]_0\(2),
      I2 => \^counter_reg[2]_0\(0),
      O => D(3)
    );
o_valid_out_reg: unisim.vcomponents.FDCE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => Q(1),
      D => valid_out_next,
      Q => \^e\(0)
    );
o_we_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08100000"
    )
        port map (
      I0 => \^counter_reg[2]_0\(2),
      I1 => \^counter_reg[2]_0\(1),
      I2 => \counter_reg_n_0_[3]\,
      I3 => \^counter_reg[2]_0\(0),
      I4 => Q(0),
      O => mac_init_next
    );
o_we_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => Q(1),
      D => mac_init_next,
      Q => \^ram_we_sig\
    );
valid_out_next_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \^counter_reg[2]_0\(0),
      I1 => \counter_reg_n_0_[3]\,
      I2 => \^counter_reg[2]_0\(1),
      I3 => \^counter_reg[2]_0\(2),
      O => valid_out_next_0
    );
valid_out_next_reg: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      CLR => Q(1),
      D => valid_out_next_0,
      Q => valid_out_next
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_my_fir_filter_0_0_mac is
  port (
    CO : out STD_LOGIC_VECTOR ( 0 to 0 );
    I28 : out STD_LOGIC_VECTOR ( 18 downto 0 );
    O : out STD_LOGIC_VECTOR ( 0 to 0 );
    DI : in STD_LOGIC_VECTOR ( 2 downto 0 );
    S : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \acc_reg[7]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \acc_reg[7]_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \acc_reg[11]_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \acc_reg[11]_1\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    o_mac_init : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_my_fir_filter_0_0_mac : entity is "mac";
end design_1_my_fir_filter_0_0_mac;

architecture STRUCTURE of design_1_my_fir_filter_0_0_mac is
  signal \^co\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^i28\ : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal \acc[11]_i_3_n_0\ : STD_LOGIC;
  signal \acc[11]_i_4_n_0\ : STD_LOGIC;
  signal \acc[11]_i_5_n_0\ : STD_LOGIC;
  signal \acc[11]_i_6_n_0\ : STD_LOGIC;
  signal \acc[3]_i_3_n_0\ : STD_LOGIC;
  signal \acc[3]_i_4_n_0\ : STD_LOGIC;
  signal \acc[3]_i_5_n_0\ : STD_LOGIC;
  signal \acc[3]_i_6_n_0\ : STD_LOGIC;
  signal \acc[7]_i_3_n_0\ : STD_LOGIC;
  signal \acc[7]_i_4_n_0\ : STD_LOGIC;
  signal \acc[7]_i_5_n_0\ : STD_LOGIC;
  signal \acc[7]_i_6_n_0\ : STD_LOGIC;
  signal \acc_reg[11]_i_2_n_0\ : STD_LOGIC;
  signal \acc_reg[11]_i_2_n_1\ : STD_LOGIC;
  signal \acc_reg[11]_i_2_n_2\ : STD_LOGIC;
  signal \acc_reg[11]_i_2_n_3\ : STD_LOGIC;
  signal \acc_reg[11]_i_2_n_5\ : STD_LOGIC;
  signal \acc_reg[11]_i_2_n_6\ : STD_LOGIC;
  signal \acc_reg[11]_i_2_n_7\ : STD_LOGIC;
  signal \acc_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \acc_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \acc_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \acc_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \acc_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \acc_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \acc_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \acc_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \acc_reg[18]_i_1_n_2\ : STD_LOGIC;
  signal \acc_reg[18]_i_1_n_3\ : STD_LOGIC;
  signal \acc_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \acc_reg[3]_i_2_n_1\ : STD_LOGIC;
  signal \acc_reg[3]_i_2_n_2\ : STD_LOGIC;
  signal \acc_reg[3]_i_2_n_3\ : STD_LOGIC;
  signal \acc_reg[3]_i_2_n_4\ : STD_LOGIC;
  signal \acc_reg[3]_i_2_n_5\ : STD_LOGIC;
  signal \acc_reg[3]_i_2_n_6\ : STD_LOGIC;
  signal \acc_reg[3]_i_2_n_7\ : STD_LOGIC;
  signal \acc_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \acc_reg[7]_i_2_n_1\ : STD_LOGIC;
  signal \acc_reg[7]_i_2_n_2\ : STD_LOGIC;
  signal \acc_reg[7]_i_2_n_3\ : STD_LOGIC;
  signal \acc_reg[7]_i_2_n_4\ : STD_LOGIC;
  signal \acc_reg[7]_i_2_n_5\ : STD_LOGIC;
  signal \acc_reg[7]_i_2_n_6\ : STD_LOGIC;
  signal \acc_reg[7]_i_2_n_7\ : STD_LOGIC;
  signal multOp : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \multOp__0_carry__0_n_0\ : STD_LOGIC;
  signal \multOp__0_carry__0_n_1\ : STD_LOGIC;
  signal \multOp__0_carry__0_n_2\ : STD_LOGIC;
  signal \multOp__0_carry__0_n_3\ : STD_LOGIC;
  signal \multOp__0_carry__1_n_2\ : STD_LOGIC;
  signal \multOp__0_carry__1_n_3\ : STD_LOGIC;
  signal \multOp__0_carry_n_0\ : STD_LOGIC;
  signal \multOp__0_carry_n_1\ : STD_LOGIC;
  signal \multOp__0_carry_n_2\ : STD_LOGIC;
  signal \multOp__0_carry_n_3\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal \NLW_acc_reg[18]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_acc_reg[18]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_multOp__0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \NLW_multOp__0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \acc[10]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \acc[1]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \acc[2]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \acc[3]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \acc[4]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \acc[5]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \acc[6]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \acc[7]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \acc[8]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \acc[9]_i_1\ : label is "soft_lutpair5";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \acc_reg[11]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \acc_reg[15]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \acc_reg[18]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \acc_reg[3]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \acc_reg[7]_i_2\ : label is 35;
begin
  CO(0) <= \^co\(0);
  I28(18 downto 0) <= \^i28\(18 downto 0);
\acc[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => multOp(0),
      I1 => o_mac_init,
      I2 => \acc_reg[3]_i_2_n_7\,
      O => p_1_in(0)
    );
\acc[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => multOp(10),
      I1 => o_mac_init,
      I2 => \acc_reg[11]_i_2_n_5\,
      O => p_1_in(10)
    );
\acc[11]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^i28\(11),
      I1 => \^co\(0),
      O => \acc[11]_i_3_n_0\
    );
\acc[11]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^i28\(10),
      I1 => multOp(10),
      O => \acc[11]_i_4_n_0\
    );
\acc[11]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^i28\(9),
      I1 => multOp(9),
      O => \acc[11]_i_5_n_0\
    );
\acc[11]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^i28\(8),
      I1 => multOp(8),
      O => \acc[11]_i_6_n_0\
    );
\acc[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => multOp(1),
      I1 => o_mac_init,
      I2 => \acc_reg[3]_i_2_n_6\,
      O => p_1_in(1)
    );
\acc[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => multOp(2),
      I1 => o_mac_init,
      I2 => \acc_reg[3]_i_2_n_5\,
      O => p_1_in(2)
    );
\acc[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => multOp(3),
      I1 => o_mac_init,
      I2 => \acc_reg[3]_i_2_n_4\,
      O => p_1_in(3)
    );
\acc[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^i28\(3),
      I1 => multOp(3),
      O => \acc[3]_i_3_n_0\
    );
\acc[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^i28\(2),
      I1 => multOp(2),
      O => \acc[3]_i_4_n_0\
    );
\acc[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^i28\(1),
      I1 => multOp(1),
      O => \acc[3]_i_5_n_0\
    );
\acc[3]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^i28\(0),
      I1 => multOp(0),
      O => \acc[3]_i_6_n_0\
    );
\acc[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => multOp(4),
      I1 => o_mac_init,
      I2 => \acc_reg[7]_i_2_n_7\,
      O => p_1_in(4)
    );
\acc[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => multOp(5),
      I1 => o_mac_init,
      I2 => \acc_reg[7]_i_2_n_6\,
      O => p_1_in(5)
    );
\acc[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => multOp(6),
      I1 => o_mac_init,
      I2 => \acc_reg[7]_i_2_n_5\,
      O => p_1_in(6)
    );
\acc[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => multOp(7),
      I1 => o_mac_init,
      I2 => \acc_reg[7]_i_2_n_4\,
      O => p_1_in(7)
    );
\acc[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^i28\(7),
      I1 => multOp(7),
      O => \acc[7]_i_3_n_0\
    );
\acc[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^i28\(6),
      I1 => multOp(6),
      O => \acc[7]_i_4_n_0\
    );
\acc[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^i28\(5),
      I1 => multOp(5),
      O => \acc[7]_i_5_n_0\
    );
\acc[7]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^i28\(4),
      I1 => multOp(4),
      O => \acc[7]_i_6_n_0\
    );
\acc[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => multOp(8),
      I1 => o_mac_init,
      I2 => \acc_reg[11]_i_2_n_7\,
      O => p_1_in(8)
    );
\acc[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => multOp(9),
      I1 => o_mac_init,
      I2 => \acc_reg[11]_i_2_n_6\,
      O => p_1_in(9)
    );
\acc_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => p_1_in(0),
      Q => \^i28\(0),
      R => '0'
    );
\acc_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => p_1_in(10),
      Q => \^i28\(10),
      R => '0'
    );
\acc_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => D(0),
      Q => \^i28\(11),
      R => '0'
    );
\acc_reg[11]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \acc_reg[7]_i_2_n_0\,
      CO(3) => \acc_reg[11]_i_2_n_0\,
      CO(2) => \acc_reg[11]_i_2_n_1\,
      CO(1) => \acc_reg[11]_i_2_n_2\,
      CO(0) => \acc_reg[11]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^i28\(11 downto 8),
      O(3) => O(0),
      O(2) => \acc_reg[11]_i_2_n_5\,
      O(1) => \acc_reg[11]_i_2_n_6\,
      O(0) => \acc_reg[11]_i_2_n_7\,
      S(3) => \acc[11]_i_3_n_0\,
      S(2) => \acc[11]_i_4_n_0\,
      S(1) => \acc[11]_i_5_n_0\,
      S(0) => \acc[11]_i_6_n_0\
    );
\acc_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \acc_reg[15]_i_1_n_7\,
      Q => \^i28\(12),
      R => o_mac_init
    );
\acc_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \acc_reg[15]_i_1_n_6\,
      Q => \^i28\(13),
      R => o_mac_init
    );
\acc_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \acc_reg[15]_i_1_n_5\,
      Q => \^i28\(14),
      R => o_mac_init
    );
\acc_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \acc_reg[15]_i_1_n_4\,
      Q => \^i28\(15),
      R => o_mac_init
    );
\acc_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \acc_reg[11]_i_2_n_0\,
      CO(3) => \acc_reg[15]_i_1_n_0\,
      CO(2) => \acc_reg[15]_i_1_n_1\,
      CO(1) => \acc_reg[15]_i_1_n_2\,
      CO(0) => \acc_reg[15]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \acc_reg[15]_i_1_n_4\,
      O(2) => \acc_reg[15]_i_1_n_5\,
      O(1) => \acc_reg[15]_i_1_n_6\,
      O(0) => \acc_reg[15]_i_1_n_7\,
      S(3 downto 0) => \^i28\(15 downto 12)
    );
\acc_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => p_1_in(16),
      Q => \^i28\(16),
      R => o_mac_init
    );
\acc_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => p_1_in(17),
      Q => \^i28\(17),
      R => o_mac_init
    );
\acc_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => p_1_in(18),
      Q => \^i28\(18),
      R => o_mac_init
    );
\acc_reg[18]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \acc_reg[15]_i_1_n_0\,
      CO(3 downto 2) => \NLW_acc_reg[18]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \acc_reg[18]_i_1_n_2\,
      CO(0) => \acc_reg[18]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_acc_reg[18]_i_1_O_UNCONNECTED\(3),
      O(2 downto 0) => p_1_in(18 downto 16),
      S(3) => '0',
      S(2 downto 0) => \^i28\(18 downto 16)
    );
\acc_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => p_1_in(1),
      Q => \^i28\(1),
      R => '0'
    );
\acc_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => p_1_in(2),
      Q => \^i28\(2),
      R => '0'
    );
\acc_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => p_1_in(3),
      Q => \^i28\(3),
      R => '0'
    );
\acc_reg[3]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \acc_reg[3]_i_2_n_0\,
      CO(2) => \acc_reg[3]_i_2_n_1\,
      CO(1) => \acc_reg[3]_i_2_n_2\,
      CO(0) => \acc_reg[3]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^i28\(3 downto 0),
      O(3) => \acc_reg[3]_i_2_n_4\,
      O(2) => \acc_reg[3]_i_2_n_5\,
      O(1) => \acc_reg[3]_i_2_n_6\,
      O(0) => \acc_reg[3]_i_2_n_7\,
      S(3) => \acc[3]_i_3_n_0\,
      S(2) => \acc[3]_i_4_n_0\,
      S(1) => \acc[3]_i_5_n_0\,
      S(0) => \acc[3]_i_6_n_0\
    );
\acc_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => p_1_in(4),
      Q => \^i28\(4),
      R => '0'
    );
\acc_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => p_1_in(5),
      Q => \^i28\(5),
      R => '0'
    );
\acc_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => p_1_in(6),
      Q => \^i28\(6),
      R => '0'
    );
\acc_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => p_1_in(7),
      Q => \^i28\(7),
      R => '0'
    );
\acc_reg[7]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \acc_reg[3]_i_2_n_0\,
      CO(3) => \acc_reg[7]_i_2_n_0\,
      CO(2) => \acc_reg[7]_i_2_n_1\,
      CO(1) => \acc_reg[7]_i_2_n_2\,
      CO(0) => \acc_reg[7]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^i28\(7 downto 4),
      O(3) => \acc_reg[7]_i_2_n_4\,
      O(2) => \acc_reg[7]_i_2_n_5\,
      O(1) => \acc_reg[7]_i_2_n_6\,
      O(0) => \acc_reg[7]_i_2_n_7\,
      S(3) => \acc[7]_i_3_n_0\,
      S(2) => \acc[7]_i_4_n_0\,
      S(1) => \acc[7]_i_5_n_0\,
      S(0) => \acc[7]_i_6_n_0\
    );
\acc_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => p_1_in(8),
      Q => \^i28\(8),
      R => '0'
    );
\acc_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => '1',
      D => p_1_in(9),
      Q => \^i28\(9),
      R => '0'
    );
\multOp__0_carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \multOp__0_carry_n_0\,
      CO(2) => \multOp__0_carry_n_1\,
      CO(1) => \multOp__0_carry_n_2\,
      CO(0) => \multOp__0_carry_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => DI(2 downto 0),
      DI(0) => '0',
      O(3 downto 0) => multOp(3 downto 0),
      S(3 downto 0) => S(3 downto 0)
    );
\multOp__0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \multOp__0_carry_n_0\,
      CO(3) => \multOp__0_carry__0_n_0\,
      CO(2) => \multOp__0_carry__0_n_1\,
      CO(1) => \multOp__0_carry__0_n_2\,
      CO(0) => \multOp__0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \acc_reg[7]_0\(3 downto 0),
      O(3 downto 0) => multOp(7 downto 4),
      S(3 downto 0) => \acc_reg[7]_1\(3 downto 0)
    );
\multOp__0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \multOp__0_carry__0_n_0\,
      CO(3) => \^co\(0),
      CO(2) => \NLW_multOp__0_carry__1_CO_UNCONNECTED\(2),
      CO(1) => \multOp__0_carry__1_n_2\,
      CO(0) => \multOp__0_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => \acc_reg[11]_0\(2 downto 0),
      O(3) => \NLW_multOp__0_carry__1_O_UNCONNECTED\(3),
      O(2 downto 0) => multOp(10 downto 8),
      S(3) => '1',
      S(2 downto 0) => \acc_reg[11]_1\(2 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_my_fir_filter_0_0_mlab_ram is
  port (
    \o_do_reg[5]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \o_do_reg[2]_0\ : out STD_LOGIC;
    \o_do_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \o_do_reg[2]_1\ : out STD_LOGIC;
    \o_do_reg[3]_0\ : out STD_LOGIC;
    \o_do_reg[7]_1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \o_do_reg[4]_0\ : out STD_LOGIC;
    \o_do_reg[5]_1\ : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 1 downto 0 );
    DI : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 );
    \o_do_reg[0]_0\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    ram_we_sig : in STD_LOGIC;
    \multOp__0_carry__1_i_6\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \multOp__0_carry__0\ : in STD_LOGIC;
    \multOp__0_carry__1\ : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_my_fir_filter_0_0_mlab_ram : entity is "mlab_ram";
end design_1_my_fir_filter_0_0_mlab_ram;

architecture STRUCTURE of design_1_my_fir_filter_0_0_mlab_ram is
  signal \RAM_reg[0]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \RAM_reg[1]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \RAM_reg[2]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \RAM_reg[3]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \RAM_reg[4]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \RAM_reg[5]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \RAM_reg[6]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \RAM_reg[7]\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal o_do0 : STD_LOGIC;
  signal \o_do[0]_i_1_n_0\ : STD_LOGIC;
  signal \o_do[0]_i_2_n_0\ : STD_LOGIC;
  signal \o_do[0]_i_3_n_0\ : STD_LOGIC;
  signal \o_do[1]_i_1_n_0\ : STD_LOGIC;
  signal \o_do[1]_i_2_n_0\ : STD_LOGIC;
  signal \o_do[1]_i_3_n_0\ : STD_LOGIC;
  signal \o_do[2]_i_1_n_0\ : STD_LOGIC;
  signal \o_do[2]_i_2_n_0\ : STD_LOGIC;
  signal \o_do[2]_i_3_n_0\ : STD_LOGIC;
  signal \o_do[3]_i_1_n_0\ : STD_LOGIC;
  signal \o_do[3]_i_2_n_0\ : STD_LOGIC;
  signal \o_do[3]_i_3_n_0\ : STD_LOGIC;
  signal \o_do[4]_i_1_n_0\ : STD_LOGIC;
  signal \o_do[4]_i_2_n_0\ : STD_LOGIC;
  signal \o_do[4]_i_3_n_0\ : STD_LOGIC;
  signal \o_do[5]_i_1_n_0\ : STD_LOGIC;
  signal \o_do[5]_i_2_n_0\ : STD_LOGIC;
  signal \o_do[5]_i_3_n_0\ : STD_LOGIC;
  signal \o_do[6]_i_1_n_0\ : STD_LOGIC;
  signal \o_do[6]_i_2_n_0\ : STD_LOGIC;
  signal \o_do[6]_i_3_n_0\ : STD_LOGIC;
  signal \o_do[7]_i_2_n_0\ : STD_LOGIC;
  signal \o_do[7]_i_3_n_0\ : STD_LOGIC;
  signal \o_do[7]_i_4_n_0\ : STD_LOGIC;
  signal \^o_do_reg[2]_0\ : STD_LOGIC;
  signal \^o_do_reg[4]_0\ : STD_LOGIC;
  signal \^o_do_reg[7]_0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
begin
  \o_do_reg[2]_0\ <= \^o_do_reg[2]_0\;
  \o_do_reg[4]_0\ <= \^o_do_reg[4]_0\;
  \o_do_reg[7]_0\(7 downto 0) <= \^o_do_reg[7]_0\(7 downto 0);
\RAM_reg[0][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ram_we_sig,
      CLR => Q(8),
      D => Q(0),
      Q => \RAM_reg[0]\(0)
    );
\RAM_reg[0][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ram_we_sig,
      CLR => Q(8),
      D => Q(1),
      Q => \RAM_reg[0]\(1)
    );
\RAM_reg[0][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ram_we_sig,
      CLR => Q(8),
      D => Q(2),
      Q => \RAM_reg[0]\(2)
    );
\RAM_reg[0][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ram_we_sig,
      CLR => Q(8),
      D => Q(3),
      Q => \RAM_reg[0]\(3)
    );
\RAM_reg[0][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ram_we_sig,
      CLR => Q(8),
      D => Q(4),
      Q => \RAM_reg[0]\(4)
    );
\RAM_reg[0][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ram_we_sig,
      CLR => Q(8),
      D => Q(5),
      Q => \RAM_reg[0]\(5)
    );
\RAM_reg[0][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ram_we_sig,
      CLR => Q(8),
      D => Q(6),
      Q => \RAM_reg[0]\(6)
    );
\RAM_reg[0][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ram_we_sig,
      CLR => Q(8),
      D => Q(7),
      Q => \RAM_reg[0]\(7)
    );
\RAM_reg[1][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ram_we_sig,
      CLR => Q(8),
      D => \RAM_reg[0]\(0),
      Q => \RAM_reg[1]\(0)
    );
\RAM_reg[1][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ram_we_sig,
      CLR => Q(8),
      D => \RAM_reg[0]\(1),
      Q => \RAM_reg[1]\(1)
    );
\RAM_reg[1][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ram_we_sig,
      CLR => Q(8),
      D => \RAM_reg[0]\(2),
      Q => \RAM_reg[1]\(2)
    );
\RAM_reg[1][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ram_we_sig,
      CLR => Q(8),
      D => \RAM_reg[0]\(3),
      Q => \RAM_reg[1]\(3)
    );
\RAM_reg[1][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ram_we_sig,
      CLR => Q(8),
      D => \RAM_reg[0]\(4),
      Q => \RAM_reg[1]\(4)
    );
\RAM_reg[1][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ram_we_sig,
      CLR => Q(8),
      D => \RAM_reg[0]\(5),
      Q => \RAM_reg[1]\(5)
    );
\RAM_reg[1][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ram_we_sig,
      CLR => Q(8),
      D => \RAM_reg[0]\(6),
      Q => \RAM_reg[1]\(6)
    );
\RAM_reg[1][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ram_we_sig,
      CLR => Q(8),
      D => \RAM_reg[0]\(7),
      Q => \RAM_reg[1]\(7)
    );
\RAM_reg[2][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ram_we_sig,
      CLR => Q(8),
      D => \RAM_reg[1]\(0),
      Q => \RAM_reg[2]\(0)
    );
\RAM_reg[2][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ram_we_sig,
      CLR => Q(8),
      D => \RAM_reg[1]\(1),
      Q => \RAM_reg[2]\(1)
    );
\RAM_reg[2][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ram_we_sig,
      CLR => Q(8),
      D => \RAM_reg[1]\(2),
      Q => \RAM_reg[2]\(2)
    );
\RAM_reg[2][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ram_we_sig,
      CLR => Q(8),
      D => \RAM_reg[1]\(3),
      Q => \RAM_reg[2]\(3)
    );
\RAM_reg[2][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ram_we_sig,
      CLR => Q(8),
      D => \RAM_reg[1]\(4),
      Q => \RAM_reg[2]\(4)
    );
\RAM_reg[2][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ram_we_sig,
      CLR => Q(8),
      D => \RAM_reg[1]\(5),
      Q => \RAM_reg[2]\(5)
    );
\RAM_reg[2][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ram_we_sig,
      CLR => Q(8),
      D => \RAM_reg[1]\(6),
      Q => \RAM_reg[2]\(6)
    );
\RAM_reg[2][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ram_we_sig,
      CLR => Q(8),
      D => \RAM_reg[1]\(7),
      Q => \RAM_reg[2]\(7)
    );
\RAM_reg[3][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ram_we_sig,
      CLR => Q(8),
      D => \RAM_reg[2]\(0),
      Q => \RAM_reg[3]\(0)
    );
\RAM_reg[3][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ram_we_sig,
      CLR => Q(8),
      D => \RAM_reg[2]\(1),
      Q => \RAM_reg[3]\(1)
    );
\RAM_reg[3][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ram_we_sig,
      CLR => Q(8),
      D => \RAM_reg[2]\(2),
      Q => \RAM_reg[3]\(2)
    );
\RAM_reg[3][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ram_we_sig,
      CLR => Q(8),
      D => \RAM_reg[2]\(3),
      Q => \RAM_reg[3]\(3)
    );
\RAM_reg[3][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ram_we_sig,
      CLR => Q(8),
      D => \RAM_reg[2]\(4),
      Q => \RAM_reg[3]\(4)
    );
\RAM_reg[3][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ram_we_sig,
      CLR => Q(8),
      D => \RAM_reg[2]\(5),
      Q => \RAM_reg[3]\(5)
    );
\RAM_reg[3][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ram_we_sig,
      CLR => Q(8),
      D => \RAM_reg[2]\(6),
      Q => \RAM_reg[3]\(6)
    );
\RAM_reg[3][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ram_we_sig,
      CLR => Q(8),
      D => \RAM_reg[2]\(7),
      Q => \RAM_reg[3]\(7)
    );
\RAM_reg[4][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ram_we_sig,
      CLR => Q(8),
      D => \RAM_reg[3]\(0),
      Q => \RAM_reg[4]\(0)
    );
\RAM_reg[4][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ram_we_sig,
      CLR => Q(8),
      D => \RAM_reg[3]\(1),
      Q => \RAM_reg[4]\(1)
    );
\RAM_reg[4][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ram_we_sig,
      CLR => Q(8),
      D => \RAM_reg[3]\(2),
      Q => \RAM_reg[4]\(2)
    );
\RAM_reg[4][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ram_we_sig,
      CLR => Q(8),
      D => \RAM_reg[3]\(3),
      Q => \RAM_reg[4]\(3)
    );
\RAM_reg[4][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ram_we_sig,
      CLR => Q(8),
      D => \RAM_reg[3]\(4),
      Q => \RAM_reg[4]\(4)
    );
\RAM_reg[4][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ram_we_sig,
      CLR => Q(8),
      D => \RAM_reg[3]\(5),
      Q => \RAM_reg[4]\(5)
    );
\RAM_reg[4][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ram_we_sig,
      CLR => Q(8),
      D => \RAM_reg[3]\(6),
      Q => \RAM_reg[4]\(6)
    );
\RAM_reg[4][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ram_we_sig,
      CLR => Q(8),
      D => \RAM_reg[3]\(7),
      Q => \RAM_reg[4]\(7)
    );
\RAM_reg[5][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ram_we_sig,
      CLR => Q(8),
      D => \RAM_reg[4]\(0),
      Q => \RAM_reg[5]\(0)
    );
\RAM_reg[5][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ram_we_sig,
      CLR => Q(8),
      D => \RAM_reg[4]\(1),
      Q => \RAM_reg[5]\(1)
    );
\RAM_reg[5][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ram_we_sig,
      CLR => Q(8),
      D => \RAM_reg[4]\(2),
      Q => \RAM_reg[5]\(2)
    );
\RAM_reg[5][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ram_we_sig,
      CLR => Q(8),
      D => \RAM_reg[4]\(3),
      Q => \RAM_reg[5]\(3)
    );
\RAM_reg[5][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ram_we_sig,
      CLR => Q(8),
      D => \RAM_reg[4]\(4),
      Q => \RAM_reg[5]\(4)
    );
\RAM_reg[5][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ram_we_sig,
      CLR => Q(8),
      D => \RAM_reg[4]\(5),
      Q => \RAM_reg[5]\(5)
    );
\RAM_reg[5][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ram_we_sig,
      CLR => Q(8),
      D => \RAM_reg[4]\(6),
      Q => \RAM_reg[5]\(6)
    );
\RAM_reg[5][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ram_we_sig,
      CLR => Q(8),
      D => \RAM_reg[4]\(7),
      Q => \RAM_reg[5]\(7)
    );
\RAM_reg[6][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ram_we_sig,
      CLR => Q(8),
      D => \RAM_reg[5]\(0),
      Q => \RAM_reg[6]\(0)
    );
\RAM_reg[6][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ram_we_sig,
      CLR => Q(8),
      D => \RAM_reg[5]\(1),
      Q => \RAM_reg[6]\(1)
    );
\RAM_reg[6][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ram_we_sig,
      CLR => Q(8),
      D => \RAM_reg[5]\(2),
      Q => \RAM_reg[6]\(2)
    );
\RAM_reg[6][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ram_we_sig,
      CLR => Q(8),
      D => \RAM_reg[5]\(3),
      Q => \RAM_reg[6]\(3)
    );
\RAM_reg[6][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ram_we_sig,
      CLR => Q(8),
      D => \RAM_reg[5]\(4),
      Q => \RAM_reg[6]\(4)
    );
\RAM_reg[6][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ram_we_sig,
      CLR => Q(8),
      D => \RAM_reg[5]\(5),
      Q => \RAM_reg[6]\(5)
    );
\RAM_reg[6][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ram_we_sig,
      CLR => Q(8),
      D => \RAM_reg[5]\(6),
      Q => \RAM_reg[6]\(6)
    );
\RAM_reg[6][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ram_we_sig,
      CLR => Q(8),
      D => \RAM_reg[5]\(7),
      Q => \RAM_reg[6]\(7)
    );
\RAM_reg[7][0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ram_we_sig,
      CLR => Q(8),
      D => \RAM_reg[6]\(0),
      Q => \RAM_reg[7]\(0)
    );
\RAM_reg[7][1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ram_we_sig,
      CLR => Q(8),
      D => \RAM_reg[6]\(1),
      Q => \RAM_reg[7]\(1)
    );
\RAM_reg[7][2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ram_we_sig,
      CLR => Q(8),
      D => \RAM_reg[6]\(2),
      Q => \RAM_reg[7]\(2)
    );
\RAM_reg[7][3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ram_we_sig,
      CLR => Q(8),
      D => \RAM_reg[6]\(3),
      Q => \RAM_reg[7]\(3)
    );
\RAM_reg[7][4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ram_we_sig,
      CLR => Q(8),
      D => \RAM_reg[6]\(4),
      Q => \RAM_reg[7]\(4)
    );
\RAM_reg[7][5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ram_we_sig,
      CLR => Q(8),
      D => \RAM_reg[6]\(5),
      Q => \RAM_reg[7]\(5)
    );
\RAM_reg[7][6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ram_we_sig,
      CLR => Q(8),
      D => \RAM_reg[6]\(6),
      Q => \RAM_reg[7]\(6)
    );
\RAM_reg[7][7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => s00_axi_aclk,
      CE => ram_we_sig,
      CLR => Q(8),
      D => \RAM_reg[6]\(7),
      Q => \RAM_reg[7]\(7)
    );
\multOp__0_carry__0_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F880808088000000"
    )
        port map (
      I0 => \^o_do_reg[7]_0\(2),
      I1 => \multOp__0_carry__1_i_6\(2),
      I2 => \^o_do_reg[7]_0\(3),
      I3 => \multOp__0_carry__1_i_6\(3),
      I4 => \^o_do_reg[7]_0\(1),
      I5 => \multOp__0_carry__1_i_6\(1),
      O => \^o_do_reg[2]_0\
    );
\multOp__0_carry__0_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888800080008000"
    )
        port map (
      I0 => \^o_do_reg[7]_0\(4),
      I1 => \multOp__0_carry__1_i_6\(2),
      I2 => \^o_do_reg[7]_0\(3),
      I3 => \multOp__0_carry__1_i_6\(3),
      I4 => \^o_do_reg[7]_0\(5),
      I5 => \multOp__0_carry__1_i_6\(1),
      O => \^o_do_reg[4]_0\
    );
\multOp__0_carry__0_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^o_do_reg[7]_0\(2),
      I1 => \multOp__0_carry__1_i_6\(1),
      O => \o_do_reg[2]_1\
    );
\multOp__0_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA80"
    )
        port map (
      I0 => \^o_do_reg[2]_0\,
      I1 => \^o_do_reg[7]_0\(5),
      I2 => \multOp__0_carry__1_i_6\(0),
      I3 => \multOp__0_carry__0\,
      O => \o_do_reg[5]_0\(0)
    );
\multOp__0_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA80"
    )
        port map (
      I0 => \^o_do_reg[4]_0\,
      I1 => \^o_do_reg[7]_0\(7),
      I2 => \multOp__0_carry__1_i_6\(0),
      I3 => \multOp__0_carry__1\,
      O => \o_do_reg[7]_1\(0)
    );
\multOp__0_carry__1_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^o_do_reg[7]_0\(5),
      I1 => \multOp__0_carry__1_i_6\(2),
      O => \o_do_reg[5]_1\
    );
\multOp__0_carry_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^o_do_reg[7]_0\(1),
      I1 => \multOp__0_carry__1_i_6\(0),
      O => DI(0)
    );
\multOp__0_carry_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8777788878887888"
    )
        port map (
      I0 => \^o_do_reg[7]_0\(0),
      I1 => \multOp__0_carry__1_i_6\(2),
      I2 => \^o_do_reg[7]_0\(1),
      I3 => \multOp__0_carry__1_i_6\(1),
      I4 => \multOp__0_carry__1_i_6\(0),
      I5 => \^o_do_reg[7]_0\(2),
      O => S(1)
    );
\multOp__0_carry_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^o_do_reg[7]_0\(0),
      I1 => \multOp__0_carry__1_i_6\(0),
      O => S(0)
    );
\multOp__0_carry_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^o_do_reg[7]_0\(3),
      I1 => \multOp__0_carry__1_i_6\(0),
      O => \o_do_reg[3]_0\
    );
\o_do[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => Q(0),
      I1 => \o_do[0]_i_2_n_0\,
      I2 => \o_do_reg[0]_0\(2),
      I3 => \o_do[0]_i_3_n_0\,
      I4 => ram_we_sig,
      O => \o_do[0]_i_1_n_0\
    );
\o_do[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RAM_reg[7]\(0),
      I1 => \RAM_reg[6]\(0),
      I2 => \o_do_reg[0]_0\(1),
      I3 => \RAM_reg[5]\(0),
      I4 => \o_do_reg[0]_0\(0),
      I5 => \RAM_reg[4]\(0),
      O => \o_do[0]_i_2_n_0\
    );
\o_do[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RAM_reg[3]\(0),
      I1 => \RAM_reg[2]\(0),
      I2 => \o_do_reg[0]_0\(1),
      I3 => \RAM_reg[1]\(0),
      I4 => \o_do_reg[0]_0\(0),
      I5 => \RAM_reg[0]\(0),
      O => \o_do[0]_i_3_n_0\
    );
\o_do[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => Q(1),
      I1 => \o_do[1]_i_2_n_0\,
      I2 => \o_do_reg[0]_0\(2),
      I3 => \o_do[1]_i_3_n_0\,
      I4 => ram_we_sig,
      O => \o_do[1]_i_1_n_0\
    );
\o_do[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RAM_reg[7]\(1),
      I1 => \RAM_reg[6]\(1),
      I2 => \o_do_reg[0]_0\(1),
      I3 => \RAM_reg[5]\(1),
      I4 => \o_do_reg[0]_0\(0),
      I5 => \RAM_reg[4]\(1),
      O => \o_do[1]_i_2_n_0\
    );
\o_do[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RAM_reg[3]\(1),
      I1 => \RAM_reg[2]\(1),
      I2 => \o_do_reg[0]_0\(1),
      I3 => \RAM_reg[1]\(1),
      I4 => \o_do_reg[0]_0\(0),
      I5 => \RAM_reg[0]\(1),
      O => \o_do[1]_i_3_n_0\
    );
\o_do[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => Q(2),
      I1 => \o_do[2]_i_2_n_0\,
      I2 => \o_do_reg[0]_0\(2),
      I3 => \o_do[2]_i_3_n_0\,
      I4 => ram_we_sig,
      O => \o_do[2]_i_1_n_0\
    );
\o_do[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RAM_reg[7]\(2),
      I1 => \RAM_reg[6]\(2),
      I2 => \o_do_reg[0]_0\(1),
      I3 => \RAM_reg[5]\(2),
      I4 => \o_do_reg[0]_0\(0),
      I5 => \RAM_reg[4]\(2),
      O => \o_do[2]_i_2_n_0\
    );
\o_do[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RAM_reg[3]\(2),
      I1 => \RAM_reg[2]\(2),
      I2 => \o_do_reg[0]_0\(1),
      I3 => \RAM_reg[1]\(2),
      I4 => \o_do_reg[0]_0\(0),
      I5 => \RAM_reg[0]\(2),
      O => \o_do[2]_i_3_n_0\
    );
\o_do[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => Q(3),
      I1 => \o_do[3]_i_2_n_0\,
      I2 => \o_do_reg[0]_0\(2),
      I3 => \o_do[3]_i_3_n_0\,
      I4 => ram_we_sig,
      O => \o_do[3]_i_1_n_0\
    );
\o_do[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RAM_reg[7]\(3),
      I1 => \RAM_reg[6]\(3),
      I2 => \o_do_reg[0]_0\(1),
      I3 => \RAM_reg[5]\(3),
      I4 => \o_do_reg[0]_0\(0),
      I5 => \RAM_reg[4]\(3),
      O => \o_do[3]_i_2_n_0\
    );
\o_do[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RAM_reg[3]\(3),
      I1 => \RAM_reg[2]\(3),
      I2 => \o_do_reg[0]_0\(1),
      I3 => \RAM_reg[1]\(3),
      I4 => \o_do_reg[0]_0\(0),
      I5 => \RAM_reg[0]\(3),
      O => \o_do[3]_i_3_n_0\
    );
\o_do[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => Q(4),
      I1 => \o_do[4]_i_2_n_0\,
      I2 => \o_do_reg[0]_0\(2),
      I3 => \o_do[4]_i_3_n_0\,
      I4 => ram_we_sig,
      O => \o_do[4]_i_1_n_0\
    );
\o_do[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RAM_reg[7]\(4),
      I1 => \RAM_reg[6]\(4),
      I2 => \o_do_reg[0]_0\(1),
      I3 => \RAM_reg[5]\(4),
      I4 => \o_do_reg[0]_0\(0),
      I5 => \RAM_reg[4]\(4),
      O => \o_do[4]_i_2_n_0\
    );
\o_do[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RAM_reg[3]\(4),
      I1 => \RAM_reg[2]\(4),
      I2 => \o_do_reg[0]_0\(1),
      I3 => \RAM_reg[1]\(4),
      I4 => \o_do_reg[0]_0\(0),
      I5 => \RAM_reg[0]\(4),
      O => \o_do[4]_i_3_n_0\
    );
\o_do[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => Q(5),
      I1 => \o_do[5]_i_2_n_0\,
      I2 => \o_do_reg[0]_0\(2),
      I3 => \o_do[5]_i_3_n_0\,
      I4 => ram_we_sig,
      O => \o_do[5]_i_1_n_0\
    );
\o_do[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RAM_reg[7]\(5),
      I1 => \RAM_reg[6]\(5),
      I2 => \o_do_reg[0]_0\(1),
      I3 => \RAM_reg[5]\(5),
      I4 => \o_do_reg[0]_0\(0),
      I5 => \RAM_reg[4]\(5),
      O => \o_do[5]_i_2_n_0\
    );
\o_do[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RAM_reg[3]\(5),
      I1 => \RAM_reg[2]\(5),
      I2 => \o_do_reg[0]_0\(1),
      I3 => \RAM_reg[1]\(5),
      I4 => \o_do_reg[0]_0\(0),
      I5 => \RAM_reg[0]\(5),
      O => \o_do[5]_i_3_n_0\
    );
\o_do[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => Q(6),
      I1 => \o_do[6]_i_2_n_0\,
      I2 => \o_do_reg[0]_0\(2),
      I3 => \o_do[6]_i_3_n_0\,
      I4 => ram_we_sig,
      O => \o_do[6]_i_1_n_0\
    );
\o_do[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RAM_reg[7]\(6),
      I1 => \RAM_reg[6]\(6),
      I2 => \o_do_reg[0]_0\(1),
      I3 => \RAM_reg[5]\(6),
      I4 => \o_do_reg[0]_0\(0),
      I5 => \RAM_reg[4]\(6),
      O => \o_do[6]_i_2_n_0\
    );
\o_do[6]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RAM_reg[3]\(6),
      I1 => \RAM_reg[2]\(6),
      I2 => \o_do_reg[0]_0\(1),
      I3 => \RAM_reg[1]\(6),
      I4 => \o_do_reg[0]_0\(0),
      I5 => \RAM_reg[0]\(6),
      O => \o_do[6]_i_3_n_0\
    );
\o_do[7]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(8),
      O => o_do0
    );
\o_do[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAACFC0"
    )
        port map (
      I0 => Q(7),
      I1 => \o_do[7]_i_3_n_0\,
      I2 => \o_do_reg[0]_0\(2),
      I3 => \o_do[7]_i_4_n_0\,
      I4 => ram_we_sig,
      O => \o_do[7]_i_2_n_0\
    );
\o_do[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RAM_reg[7]\(7),
      I1 => \RAM_reg[6]\(7),
      I2 => \o_do_reg[0]_0\(1),
      I3 => \RAM_reg[5]\(7),
      I4 => \o_do_reg[0]_0\(0),
      I5 => \RAM_reg[4]\(7),
      O => \o_do[7]_i_3_n_0\
    );
\o_do[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \RAM_reg[3]\(7),
      I1 => \RAM_reg[2]\(7),
      I2 => \o_do_reg[0]_0\(1),
      I3 => \RAM_reg[1]\(7),
      I4 => \o_do_reg[0]_0\(0),
      I5 => \RAM_reg[0]\(7),
      O => \o_do[7]_i_4_n_0\
    );
\o_do_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => o_do0,
      D => \o_do[0]_i_1_n_0\,
      Q => \^o_do_reg[7]_0\(0),
      R => '0'
    );
\o_do_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => o_do0,
      D => \o_do[1]_i_1_n_0\,
      Q => \^o_do_reg[7]_0\(1),
      R => '0'
    );
\o_do_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => o_do0,
      D => \o_do[2]_i_1_n_0\,
      Q => \^o_do_reg[7]_0\(2),
      R => '0'
    );
\o_do_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => o_do0,
      D => \o_do[3]_i_1_n_0\,
      Q => \^o_do_reg[7]_0\(3),
      R => '0'
    );
\o_do_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => o_do0,
      D => \o_do[4]_i_1_n_0\,
      Q => \^o_do_reg[7]_0\(4),
      R => '0'
    );
\o_do_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => o_do0,
      D => \o_do[5]_i_1_n_0\,
      Q => \^o_do_reg[7]_0\(5),
      R => '0'
    );
\o_do_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => o_do0,
      D => \o_do[6]_i_1_n_0\,
      Q => \^o_do_reg[7]_0\(6),
      R => '0'
    );
\o_do_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => o_do0,
      D => \o_do[7]_i_2_n_0\,
      Q => \^o_do_reg[7]_0\(7),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_my_fir_filter_0_0_mlab_rom is
  port (
    DI : out STD_LOGIC_VECTOR ( 1 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \o_do_reg[6]\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \o_rom_out_reg[1]_0\ : out STD_LOGIC;
    \o_rom_out_reg[1]_1\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \o_rom_out_reg[1]_2\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    S : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \o_do_reg[7]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \o_rom_out_reg[2]_0\ : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \multOp__0_carry__1_i_6_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \multOp__0_carry__1\ : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    o_mac_init : in STD_LOGIC;
    O : in STD_LOGIC_VECTOR ( 0 to 0 );
    \multOp__0_carry\ : in STD_LOGIC;
    \multOp__0_carry__0\ : in STD_LOGIC;
    \multOp__0_carry__0_0\ : in STD_LOGIC;
    \multOp__0_carry__0_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \multOp__0_carry__1_0\ : in STD_LOGIC;
    \o_rom_out_reg[3]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_my_fir_filter_0_0_mlab_rom : entity is "mlab_rom";
end design_1_my_fir_filter_0_0_mlab_rom;

architecture STRUCTURE of design_1_my_fir_filter_0_0_mlab_rom is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \multOp__0_carry__0_i_10_n_0\ : STD_LOGIC;
  signal \multOp__0_carry__0_i_13_n_0\ : STD_LOGIC;
  signal \multOp__0_carry__0_i_14_n_0\ : STD_LOGIC;
  signal \multOp__0_carry__0_i_9_n_0\ : STD_LOGIC;
  signal \multOp__0_carry__1_i_10_n_0\ : STD_LOGIC;
  signal \multOp__0_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \multOp__0_carry__1_i_9_n_0\ : STD_LOGIC;
  signal \multOp__0_carry_i_8_n_0\ : STD_LOGIC;
  signal \^o_do_reg[6]\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^o_rom_out_reg[1]_0\ : STD_LOGIC;
  signal \^o_rom_out_reg[1]_1\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^o_rom_out_reg[1]_2\ : STD_LOGIC;
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
  \o_do_reg[6]\(2 downto 0) <= \^o_do_reg[6]\(2 downto 0);
  \o_rom_out_reg[1]_0\ <= \^o_rom_out_reg[1]_0\;
  \o_rom_out_reg[1]_1\(1 downto 0) <= \^o_rom_out_reg[1]_1\(1 downto 0);
  \o_rom_out_reg[1]_2\ <= \^o_rom_out_reg[1]_2\;
\acc[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => CO(0),
      I1 => o_mac_init,
      I2 => O(0),
      O => D(0)
    );
\multOp__0_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EA80"
    )
        port map (
      I0 => \multOp__0_carry__0_i_9_n_0\,
      I1 => \multOp__0_carry__1_i_6_0\(6),
      I2 => \^q\(0),
      I3 => \multOp__0_carry__0_i_10_n_0\,
      O => \^o_do_reg[6]\(2)
    );
\multOp__0_carry__0_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8777788878887888"
    )
        port map (
      I0 => \^q\(1),
      I1 => \multOp__0_carry__1_i_6_0\(5),
      I2 => \multOp__0_carry__1_i_6_0\(3),
      I3 => \^q\(3),
      I4 => \multOp__0_carry__1_i_6_0\(4),
      I5 => \^q\(2),
      O => \multOp__0_carry__0_i_10_n_0\
    );
\multOp__0_carry__0_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8777788878887888"
    )
        port map (
      I0 => \^q\(1),
      I1 => \multOp__0_carry__1_i_6_0\(4),
      I2 => \multOp__0_carry__1_i_6_0\(3),
      I3 => \^q\(2),
      I4 => \multOp__0_carry__1_i_6_0\(2),
      I5 => \^q\(3),
      O => \^o_rom_out_reg[1]_0\
    );
\multOp__0_carry__0_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^q\(0),
      I1 => \multOp__0_carry__1_i_6_0\(3),
      I2 => \^q\(2),
      I3 => \multOp__0_carry__1_i_6_0\(1),
      I4 => \multOp__0_carry__1_i_6_0\(0),
      I5 => \^q\(1),
      O => \multOp__0_carry__0_i_13_n_0\
    );
\multOp__0_carry__0_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8777788878887888"
    )
        port map (
      I0 => \^q\(1),
      I1 => \multOp__0_carry__1_i_6_0\(3),
      I2 => \^q\(3),
      I3 => \multOp__0_carry__1_i_6_0\(1),
      I4 => \multOp__0_carry__1_i_6_0\(2),
      I5 => \^q\(2),
      O => \multOp__0_carry__0_i_14_n_0\
    );
\multOp__0_carry__0_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8777788878887888"
    )
        port map (
      I0 => \^q\(1),
      I1 => \multOp__0_carry__1_i_6_0\(6),
      I2 => \multOp__0_carry__1_i_6_0\(5),
      I3 => \^q\(2),
      I4 => \multOp__0_carry__1_i_6_0\(4),
      I5 => \^q\(3),
      O => \^o_rom_out_reg[1]_2\
    );
\multOp__0_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F0C"
    )
        port map (
      I0 => \^q\(0),
      I1 => \multOp__0_carry__1_i_6_0\(4),
      I2 => \multOp__0_carry__0_i_13_n_0\,
      I3 => \multOp__0_carry__0_i_14_n_0\,
      O => \^o_do_reg[6]\(1)
    );
\multOp__0_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6999"
    )
        port map (
      I0 => \multOp__0_carry__0_i_13_n_0\,
      I1 => \multOp__0_carry__0_i_14_n_0\,
      I2 => \multOp__0_carry__1_i_6_0\(4),
      I3 => \^q\(0),
      O => \^o_do_reg[6]\(0)
    );
\multOp__0_carry__0_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969696"
    )
        port map (
      I0 => \^o_do_reg[6]\(2),
      I1 => \multOp__0_carry__1_0\,
      I2 => \^o_rom_out_reg[1]_2\,
      I3 => \multOp__0_carry__1_i_6_0\(7),
      I4 => \^q\(0),
      O => \o_do_reg[7]\(3)
    );
\multOp__0_carry__0_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969696"
    )
        port map (
      I0 => \multOp__0_carry__0_1\(0),
      I1 => \multOp__0_carry__0_i_9_n_0\,
      I2 => \multOp__0_carry__0_i_10_n_0\,
      I3 => \multOp__0_carry__1_i_6_0\(6),
      I4 => \^q\(0),
      O => \o_do_reg[7]\(2)
    );
\multOp__0_carry__0_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"69969696"
    )
        port map (
      I0 => \^o_do_reg[6]\(1),
      I1 => \multOp__0_carry__0_0\,
      I2 => \^o_rom_out_reg[1]_0\,
      I3 => \multOp__0_carry__1_i_6_0\(5),
      I4 => \^q\(0),
      O => \o_do_reg[7]\(1)
    );
\multOp__0_carry__0_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A55AA6AAA6AAA6A"
    )
        port map (
      I0 => \^o_do_reg[6]\(0),
      I1 => \multOp__0_carry__1_i_6_0\(0),
      I2 => \^q\(3),
      I3 => \multOp__0_carry__0\,
      I4 => \^q\(2),
      I5 => \multOp__0_carry__1_i_6_0\(1),
      O => \o_do_reg[7]\(0)
    );
\multOp__0_carry__0_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F880808088000000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \multOp__0_carry__1_i_6_0\(3),
      I2 => \multOp__0_carry__1_i_6_0\(2),
      I3 => \^q\(1),
      I4 => \multOp__0_carry__1_i_6_0\(4),
      I5 => \^q\(3),
      O => \multOp__0_carry__0_i_9_n_0\
    );
\multOp__0_carry__1_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F8A0C00080000000"
    )
        port map (
      I0 => \^q\(1),
      I1 => \multOp__0_carry__1_i_6_0\(5),
      I2 => \multOp__0_carry__1_i_6_0\(6),
      I3 => \^q\(3),
      I4 => \multOp__0_carry__1_i_6_0\(7),
      I5 => \^q\(2),
      O => \^o_rom_out_reg[1]_1\(1)
    );
\multOp__0_carry__1_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F880808088000000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \multOp__0_carry__1_i_6_0\(5),
      I2 => \multOp__0_carry__1_i_6_0\(6),
      I3 => \^q\(3),
      I4 => \multOp__0_carry__1_i_6_0\(4),
      I5 => \^q\(1),
      O => \multOp__0_carry__1_i_10_n_0\
    );
\multOp__0_carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80000000A888A000"
    )
        port map (
      I0 => \multOp__0_carry__1_i_7_n_0\,
      I1 => \^q\(1),
      I2 => \multOp__0_carry__1_i_6_0\(4),
      I3 => \^q\(3),
      I4 => \multOp__0_carry__1_i_6_0\(6),
      I5 => \multOp__0_carry__1\,
      O => \^o_rom_out_reg[1]_1\(0)
    );
\multOp__0_carry__1_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1777880080800000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \multOp__0_carry__1_i_6_0\(6),
      I2 => \multOp__0_carry__1_i_6_0\(5),
      I3 => \^q\(1),
      I4 => \^q\(3),
      I5 => \multOp__0_carry__1_i_6_0\(7),
      O => \o_rom_out_reg[2]_0\(2)
    );
\multOp__0_carry__1_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6A959595956A6A6A"
    )
        port map (
      I0 => \^o_rom_out_reg[1]_1\(0),
      I1 => \^q\(2),
      I2 => \multOp__0_carry__1_i_6_0\(7),
      I3 => \^q\(3),
      I4 => \multOp__0_carry__1_i_6_0\(6),
      I5 => \multOp__0_carry__1_i_9_n_0\,
      O => \o_rom_out_reg[2]_0\(1)
    );
\multOp__0_carry__1_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EA80157F157FEA80"
    )
        port map (
      I0 => \^o_rom_out_reg[1]_2\,
      I1 => \^q\(0),
      I2 => \multOp__0_carry__1_i_6_0\(7),
      I3 => \multOp__0_carry__1_0\,
      I4 => \multOp__0_carry__1_i_7_n_0\,
      I5 => \multOp__0_carry__1_i_10_n_0\,
      O => \o_rom_out_reg[2]_0\(0)
    );
\multOp__0_carry__1_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8777788878887888"
    )
        port map (
      I0 => \^q\(1),
      I1 => \multOp__0_carry__1_i_6_0\(7),
      I2 => \multOp__0_carry__1_i_6_0\(6),
      I3 => \^q\(2),
      I4 => \multOp__0_carry__1_i_6_0\(5),
      I5 => \^q\(3),
      O => \multOp__0_carry__1_i_7_n_0\
    );
\multOp__0_carry__1_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F880808088000000"
    )
        port map (
      I0 => \^q\(2),
      I1 => \multOp__0_carry__1_i_6_0\(6),
      I2 => \multOp__0_carry__1_i_6_0\(5),
      I3 => \^q\(1),
      I4 => \multOp__0_carry__1_i_6_0\(7),
      I5 => \^q\(3),
      O => \multOp__0_carry__1_i_9_n_0\
    );
\multOp__0_carry_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8777788878887888"
    )
        port map (
      I0 => \^q\(1),
      I1 => \multOp__0_carry__1_i_6_0\(2),
      I2 => \^q\(2),
      I3 => \multOp__0_carry__1_i_6_0\(1),
      I4 => \^q\(3),
      I5 => \multOp__0_carry__1_i_6_0\(0),
      O => DI(1)
    );
\multOp__0_carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7888"
    )
        port map (
      I0 => \^q\(1),
      I1 => \multOp__0_carry__1_i_6_0\(1),
      I2 => \^q\(2),
      I3 => \multOp__0_carry__1_i_6_0\(0),
      O => DI(0)
    );
\multOp__0_carry_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AC0653F953F9AC0"
    )
        port map (
      I0 => \^q\(3),
      I1 => \multOp__0_carry__1_i_6_0\(2),
      I2 => \^q\(1),
      I3 => \multOp__0_carry__1_i_6_0\(0),
      I4 => \multOp__0_carry_i_8_n_0\,
      I5 => \multOp__0_carry\,
      O => S(1)
    );
\multOp__0_carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7888"
    )
        port map (
      I0 => \^q\(0),
      I1 => \multOp__0_carry__1_i_6_0\(1),
      I2 => \^q\(1),
      I3 => \multOp__0_carry__1_i_6_0\(0),
      O => S(0)
    );
\multOp__0_carry_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^q\(2),
      I1 => \multOp__0_carry__1_i_6_0\(1),
      O => \multOp__0_carry_i_8_n_0\
    );
\o_rom_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \o_rom_out_reg[3]_0\(0),
      Q => \^q\(0),
      R => '0'
    );
\o_rom_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \o_rom_out_reg[3]_0\(1),
      Q => \^q\(1),
      R => '0'
    );
\o_rom_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \o_rom_out_reg[3]_0\(2),
      Q => \^q\(2),
      R => '0'
    );
\o_rom_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \o_rom_out_reg[3]_0\(3),
      Q => \^q\(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_my_fir_filter_0_0_FIR is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    o_valid_out_reg : out STD_LOGIC;
    I28 : out STD_LOGIC_VECTOR ( 18 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 9 downto 0 );
    fir_valid_lat_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    fir_valid_lat : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_my_fir_filter_0_0_FIR : entity is "FIR";
end design_1_my_fir_filter_0_0_FIR;

architecture STRUCTURE of design_1_my_fir_filter_0_0_FIR is
  signal A : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal MAC_n_20 : STD_LOGIC;
  signal RAM_n_0 : STD_LOGIC;
  signal RAM_n_1 : STD_LOGIC;
  signal RAM_n_10 : STD_LOGIC;
  signal RAM_n_11 : STD_LOGIC;
  signal RAM_n_12 : STD_LOGIC;
  signal RAM_n_13 : STD_LOGIC;
  signal RAM_n_14 : STD_LOGIC;
  signal RAM_n_15 : STD_LOGIC;
  signal RAM_n_16 : STD_LOGIC;
  signal RAM_n_17 : STD_LOGIC;
  signal ROM_n_0 : STD_LOGIC;
  signal ROM_n_1 : STD_LOGIC;
  signal ROM_n_10 : STD_LOGIC;
  signal ROM_n_11 : STD_LOGIC;
  signal ROM_n_12 : STD_LOGIC;
  signal ROM_n_14 : STD_LOGIC;
  signal ROM_n_15 : STD_LOGIC;
  signal ROM_n_16 : STD_LOGIC;
  signal ROM_n_17 : STD_LOGIC;
  signal ROM_n_18 : STD_LOGIC;
  signal ROM_n_19 : STD_LOGIC;
  signal ROM_n_20 : STD_LOGIC;
  signal ROM_n_21 : STD_LOGIC;
  signal ROM_n_22 : STD_LOGIC;
  signal ROM_n_6 : STD_LOGIC;
  signal ROM_n_7 : STD_LOGIC;
  signal ROM_n_8 : STD_LOGIC;
  signal ROM_n_9 : STD_LOGIC;
  signal multOp : STD_LOGIC_VECTOR ( 11 to 11 );
  signal o_mac_init : STD_LOGIC;
  signal o_rom_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 11 to 11 );
  signal \plusOp__3\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal ram_address_sig : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ram_we_sig : STD_LOGIC;
  signal rdata : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
ControlUnit: entity work.design_1_my_fir_filter_0_0_control_unit
     port map (
      D(3 downto 2) => rdata(3 downto 2),
      D(1) => \plusOp__3\(1),
      D(0) => rdata(0),
      E(0) => E(0),
      Q(1 downto 0) => Q(9 downto 8),
      axi_araddr(1 downto 0) => axi_araddr(1 downto 0),
      \counter_reg[2]_0\(2 downto 0) => ram_address_sig(2 downto 0),
      fir_valid_lat => fir_valid_lat,
      fir_valid_lat_reg(0) => fir_valid_lat_reg(0),
      o_mac_init => o_mac_init,
      o_valid_out_reg_0 => o_valid_out_reg,
      ram_we_sig => ram_we_sig,
      s00_axi_aclk => s00_axi_aclk
    );
MAC: entity work.design_1_my_fir_filter_0_0_mac
     port map (
      CO(0) => multOp(11),
      D(0) => p_1_in(11),
      DI(2) => ROM_n_0,
      DI(1) => ROM_n_1,
      DI(0) => RAM_n_17,
      I28(18 downto 0) => I28(18 downto 0),
      O(0) => MAC_n_20,
      S(3) => ROM_n_14,
      S(2) => RAM_n_15,
      S(1) => ROM_n_15,
      S(0) => RAM_n_16,
      \acc_reg[11]_0\(2) => ROM_n_10,
      \acc_reg[11]_0\(1) => ROM_n_11,
      \acc_reg[11]_0\(0) => RAM_n_12,
      \acc_reg[11]_1\(2) => ROM_n_20,
      \acc_reg[11]_1\(1) => ROM_n_21,
      \acc_reg[11]_1\(0) => ROM_n_22,
      \acc_reg[7]_0\(3) => ROM_n_6,
      \acc_reg[7]_0\(2) => RAM_n_0,
      \acc_reg[7]_0\(1) => ROM_n_7,
      \acc_reg[7]_0\(0) => ROM_n_8,
      \acc_reg[7]_1\(3) => ROM_n_16,
      \acc_reg[7]_1\(2) => ROM_n_17,
      \acc_reg[7]_1\(1) => ROM_n_18,
      \acc_reg[7]_1\(0) => ROM_n_19,
      o_mac_init => o_mac_init,
      s00_axi_aclk => s00_axi_aclk
    );
RAM: entity work.design_1_my_fir_filter_0_0_mlab_ram
     port map (
      DI(0) => RAM_n_17,
      Q(8) => Q(9),
      Q(7 downto 0) => Q(7 downto 0),
      S(1) => RAM_n_15,
      S(0) => RAM_n_16,
      \multOp__0_carry__0\ => ROM_n_9,
      \multOp__0_carry__1\ => ROM_n_12,
      \multOp__0_carry__1_i_6\(3 downto 0) => o_rom_out(3 downto 0),
      \o_do_reg[0]_0\(2 downto 0) => ram_address_sig(2 downto 0),
      \o_do_reg[2]_0\ => RAM_n_1,
      \o_do_reg[2]_1\ => RAM_n_10,
      \o_do_reg[3]_0\ => RAM_n_11,
      \o_do_reg[4]_0\ => RAM_n_13,
      \o_do_reg[5]_0\(0) => RAM_n_0,
      \o_do_reg[5]_1\ => RAM_n_14,
      \o_do_reg[7]_0\(7 downto 0) => A(7 downto 0),
      \o_do_reg[7]_1\(0) => RAM_n_12,
      ram_we_sig => ram_we_sig,
      s00_axi_aclk => s00_axi_aclk
    );
ROM: entity work.design_1_my_fir_filter_0_0_mlab_rom
     port map (
      CO(0) => multOp(11),
      D(0) => p_1_in(11),
      DI(1) => ROM_n_0,
      DI(0) => ROM_n_1,
      O(0) => MAC_n_20,
      Q(3 downto 0) => o_rom_out(3 downto 0),
      S(1) => ROM_n_14,
      S(0) => ROM_n_15,
      \multOp__0_carry\ => RAM_n_11,
      \multOp__0_carry__0\ => RAM_n_10,
      \multOp__0_carry__0_0\ => RAM_n_1,
      \multOp__0_carry__0_1\(0) => RAM_n_0,
      \multOp__0_carry__1\ => RAM_n_14,
      \multOp__0_carry__1_0\ => RAM_n_13,
      \multOp__0_carry__1_i_6_0\(7 downto 0) => A(7 downto 0),
      \o_do_reg[6]\(2) => ROM_n_6,
      \o_do_reg[6]\(1) => ROM_n_7,
      \o_do_reg[6]\(0) => ROM_n_8,
      \o_do_reg[7]\(3) => ROM_n_16,
      \o_do_reg[7]\(2) => ROM_n_17,
      \o_do_reg[7]\(1) => ROM_n_18,
      \o_do_reg[7]\(0) => ROM_n_19,
      o_mac_init => o_mac_init,
      \o_rom_out_reg[1]_0\ => ROM_n_9,
      \o_rom_out_reg[1]_1\(1) => ROM_n_10,
      \o_rom_out_reg[1]_1\(0) => ROM_n_11,
      \o_rom_out_reg[1]_2\ => ROM_n_12,
      \o_rom_out_reg[2]_0\(2) => ROM_n_20,
      \o_rom_out_reg[2]_0\(1) => ROM_n_21,
      \o_rom_out_reg[2]_0\(0) => ROM_n_22,
      \o_rom_out_reg[3]_0\(3 downto 2) => rdata(3 downto 2),
      \o_rom_out_reg[3]_0\(1) => \plusOp__3\(1),
      \o_rom_out_reg[3]_0\(0) => rdata(0),
      s00_axi_aclk => s00_axi_aclk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_my_fir_filter_0_0_my_fir_filter_v1_0_S00_AXI is
  port (
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_my_fir_filter_0_0_my_fir_filter_v1_0_S00_AXI : entity is "my_fir_filter_v1_0_S00_AXI";
end design_1_my_fir_filter_0_0_my_fir_filter_v1_0_S00_AXI;

architecture STRUCTURE of design_1_my_fir_filter_0_0_my_fir_filter_v1_0_S00_AXI is
  signal C : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal FIR_inst_n_1 : STD_LOGIC;
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal aw_en_i_1_n_0 : STD_LOGIC;
  signal aw_en_reg_n_0 : STD_LOGIC;
  signal axi_araddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal axi_awaddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal axi_awready_i_1_n_0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal fir_valid_lat : STD_LOGIC;
  signal fir_valid_out : STD_LOGIC;
  signal fir_y_lat : STD_LOGIC_VECTOR ( 18 downto 0 );
  signal i_rst : STD_LOGIC;
  signal i_valid_in : STD_LOGIC;
  signal reg_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_rvalid\ : STD_LOGIC;
  signal \slv_reg0[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[0]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[10]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[11]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[12]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[13]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[14]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[15]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[16]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[17]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[18]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[19]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[1]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[20]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[21]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[22]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[23]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[24]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[25]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[26]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[27]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[28]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[29]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[2]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[30]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[31]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[3]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[4]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[5]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[6]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[7]\ : STD_LOGIC;
  signal slv_reg2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg2[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg3 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg3[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg_rden : STD_LOGIC;
  signal \slv_reg_wren__2\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of axi_awready_i_2 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of axi_rvalid_i_1 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair10";
begin
  S_AXI_ARREADY <= \^s_axi_arready\;
  S_AXI_AWREADY <= \^s_axi_awready\;
  S_AXI_WREADY <= \^s_axi_wready\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_rvalid <= \^s00_axi_rvalid\;
FIR_inst: entity work.design_1_my_fir_filter_0_0_FIR
     port map (
      E(0) => fir_valid_out,
      I28(18 downto 0) => C(18 downto 0),
      Q(9) => i_rst,
      Q(8) => i_valid_in,
      Q(7) => \slv_reg0_reg_n_0_[7]\,
      Q(6) => \slv_reg0_reg_n_0_[6]\,
      Q(5) => \slv_reg0_reg_n_0_[5]\,
      Q(4) => \slv_reg0_reg_n_0_[4]\,
      Q(3) => \slv_reg0_reg_n_0_[3]\,
      Q(2) => \slv_reg0_reg_n_0_[2]\,
      Q(1) => \slv_reg0_reg_n_0_[1]\,
      Q(0) => \slv_reg0_reg_n_0_[0]\,
      axi_araddr(1 downto 0) => axi_araddr(3 downto 2),
      fir_valid_lat => fir_valid_lat,
      fir_valid_lat_reg(0) => slv_reg_rden,
      o_valid_out_reg => FIR_inst_n_1,
      s00_axi_aclk => s00_axi_aclk
    );
aw_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFFF8CCC8CCC8CCC"
    )
        port map (
      I0 => \^s_axi_awready\,
      I1 => aw_en_reg_n_0,
      I2 => s00_axi_wvalid,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => aw_en_i_1_n_0
    );
aw_en_reg: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => aw_en_i_1_n_0,
      Q => aw_en_reg_n_0,
      S => axi_awready_i_1_n_0
    );
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(0),
      I1 => s00_axi_arvalid,
      I2 => \^s_axi_arready\,
      I3 => axi_araddr(2),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(1),
      I1 => s00_axi_arvalid,
      I2 => \^s_axi_arready\,
      I3 => axi_araddr(3),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => axi_araddr(2),
      S => axi_awready_i_1_n_0
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => axi_araddr(3),
      S => axi_awready_i_1_n_0
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s_axi_arready\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready0,
      Q => \^s_axi_arready\,
      R => axi_awready_i_1_n_0
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => s00_axi_awaddr(0),
      I1 => s00_axi_awvalid,
      I2 => s00_axi_wvalid,
      I3 => aw_en_reg_n_0,
      I4 => \^s_axi_awready\,
      I5 => axi_awaddr(2),
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFBFFF00008000"
    )
        port map (
      I0 => s00_axi_awaddr(1),
      I1 => s00_axi_awvalid,
      I2 => s00_axi_wvalid,
      I3 => aw_en_reg_n_0,
      I4 => \^s_axi_awready\,
      I5 => axi_awaddr(3),
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => axi_awaddr(2),
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => axi_awaddr(3),
      R => axi_awready_i_1_n_0
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => axi_awready_i_1_n_0
    );
axi_awready_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => aw_en_reg_n_0,
      I3 => \^s_axi_awready\,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^s_axi_awready\,
      R => axi_awready_i_1_n_0
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => \^s_axi_awready\,
      I2 => \^s_axi_wready\,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s00_axi_bvalid\,
      R => axi_awready_i_1_n_0
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(0),
      I1 => fir_y_lat(0),
      I2 => axi_araddr(2),
      I3 => slv_reg2(0),
      I4 => axi_araddr(3),
      I5 => \slv_reg0_reg_n_0_[0]\,
      O => reg_data_out(0)
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(10),
      I1 => fir_y_lat(10),
      I2 => axi_araddr(2),
      I3 => slv_reg2(10),
      I4 => axi_araddr(3),
      I5 => \slv_reg0_reg_n_0_[10]\,
      O => reg_data_out(10)
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(11),
      I1 => fir_y_lat(11),
      I2 => axi_araddr(2),
      I3 => slv_reg2(11),
      I4 => axi_araddr(3),
      I5 => \slv_reg0_reg_n_0_[11]\,
      O => reg_data_out(11)
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(12),
      I1 => fir_y_lat(12),
      I2 => axi_araddr(2),
      I3 => slv_reg2(12),
      I4 => axi_araddr(3),
      I5 => \slv_reg0_reg_n_0_[12]\,
      O => reg_data_out(12)
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(13),
      I1 => fir_y_lat(13),
      I2 => axi_araddr(2),
      I3 => slv_reg2(13),
      I4 => axi_araddr(3),
      I5 => \slv_reg0_reg_n_0_[13]\,
      O => reg_data_out(13)
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(14),
      I1 => fir_y_lat(14),
      I2 => axi_araddr(2),
      I3 => slv_reg2(14),
      I4 => axi_araddr(3),
      I5 => \slv_reg0_reg_n_0_[14]\,
      O => reg_data_out(14)
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(15),
      I1 => fir_y_lat(15),
      I2 => axi_araddr(2),
      I3 => slv_reg2(15),
      I4 => axi_araddr(3),
      I5 => \slv_reg0_reg_n_0_[15]\,
      O => reg_data_out(15)
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(16),
      I1 => fir_y_lat(16),
      I2 => axi_araddr(2),
      I3 => slv_reg2(16),
      I4 => axi_araddr(3),
      I5 => \slv_reg0_reg_n_0_[16]\,
      O => reg_data_out(16)
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(17),
      I1 => fir_y_lat(17),
      I2 => axi_araddr(2),
      I3 => slv_reg2(17),
      I4 => axi_araddr(3),
      I5 => \slv_reg0_reg_n_0_[17]\,
      O => reg_data_out(17)
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(18),
      I1 => fir_y_lat(18),
      I2 => axi_araddr(2),
      I3 => slv_reg2(18),
      I4 => axi_araddr(3),
      I5 => \slv_reg0_reg_n_0_[18]\,
      O => reg_data_out(18)
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(19),
      I1 => fir_valid_lat,
      I2 => axi_araddr(2),
      I3 => slv_reg2(19),
      I4 => axi_araddr(3),
      I5 => \slv_reg0_reg_n_0_[19]\,
      O => reg_data_out(19)
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(1),
      I1 => fir_y_lat(1),
      I2 => axi_araddr(2),
      I3 => slv_reg2(1),
      I4 => axi_araddr(3),
      I5 => \slv_reg0_reg_n_0_[1]\,
      O => reg_data_out(1)
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg3(20),
      I1 => axi_araddr(2),
      I2 => slv_reg2(20),
      I3 => axi_araddr(3),
      I4 => \slv_reg0_reg_n_0_[20]\,
      O => reg_data_out(20)
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg3(21),
      I1 => axi_araddr(2),
      I2 => slv_reg2(21),
      I3 => axi_araddr(3),
      I4 => \slv_reg0_reg_n_0_[21]\,
      O => reg_data_out(21)
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg3(22),
      I1 => axi_araddr(2),
      I2 => slv_reg2(22),
      I3 => axi_araddr(3),
      I4 => \slv_reg0_reg_n_0_[22]\,
      O => reg_data_out(22)
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg3(23),
      I1 => axi_araddr(2),
      I2 => slv_reg2(23),
      I3 => axi_araddr(3),
      I4 => \slv_reg0_reg_n_0_[23]\,
      O => reg_data_out(23)
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg3(24),
      I1 => axi_araddr(2),
      I2 => slv_reg2(24),
      I3 => axi_araddr(3),
      I4 => \slv_reg0_reg_n_0_[24]\,
      O => reg_data_out(24)
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg3(25),
      I1 => axi_araddr(2),
      I2 => slv_reg2(25),
      I3 => axi_araddr(3),
      I4 => \slv_reg0_reg_n_0_[25]\,
      O => reg_data_out(25)
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg3(26),
      I1 => axi_araddr(2),
      I2 => slv_reg2(26),
      I3 => axi_araddr(3),
      I4 => \slv_reg0_reg_n_0_[26]\,
      O => reg_data_out(26)
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg3(27),
      I1 => axi_araddr(2),
      I2 => slv_reg2(27),
      I3 => axi_araddr(3),
      I4 => \slv_reg0_reg_n_0_[27]\,
      O => reg_data_out(27)
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg3(28),
      I1 => axi_araddr(2),
      I2 => slv_reg2(28),
      I3 => axi_araddr(3),
      I4 => \slv_reg0_reg_n_0_[28]\,
      O => reg_data_out(28)
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg3(29),
      I1 => axi_araddr(2),
      I2 => slv_reg2(29),
      I3 => axi_araddr(3),
      I4 => \slv_reg0_reg_n_0_[29]\,
      O => reg_data_out(29)
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(2),
      I1 => fir_y_lat(2),
      I2 => axi_araddr(2),
      I3 => slv_reg2(2),
      I4 => axi_araddr(3),
      I5 => \slv_reg0_reg_n_0_[2]\,
      O => reg_data_out(2)
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg3(30),
      I1 => axi_araddr(2),
      I2 => slv_reg2(30),
      I3 => axi_araddr(3),
      I4 => \slv_reg0_reg_n_0_[30]\,
      O => reg_data_out(30)
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_rvalid\,
      O => slv_reg_rden
    );
\axi_rdata[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B833B800"
    )
        port map (
      I0 => slv_reg3(31),
      I1 => axi_araddr(2),
      I2 => slv_reg2(31),
      I3 => axi_araddr(3),
      I4 => \slv_reg0_reg_n_0_[31]\,
      O => reg_data_out(31)
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(3),
      I1 => fir_y_lat(3),
      I2 => axi_araddr(2),
      I3 => slv_reg2(3),
      I4 => axi_araddr(3),
      I5 => \slv_reg0_reg_n_0_[3]\,
      O => reg_data_out(3)
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(4),
      I1 => fir_y_lat(4),
      I2 => axi_araddr(2),
      I3 => slv_reg2(4),
      I4 => axi_araddr(3),
      I5 => \slv_reg0_reg_n_0_[4]\,
      O => reg_data_out(4)
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(5),
      I1 => fir_y_lat(5),
      I2 => axi_araddr(2),
      I3 => slv_reg2(5),
      I4 => axi_araddr(3),
      I5 => \slv_reg0_reg_n_0_[5]\,
      O => reg_data_out(5)
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(6),
      I1 => fir_y_lat(6),
      I2 => axi_araddr(2),
      I3 => slv_reg2(6),
      I4 => axi_araddr(3),
      I5 => \slv_reg0_reg_n_0_[6]\,
      O => reg_data_out(6)
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(7),
      I1 => fir_y_lat(7),
      I2 => axi_araddr(2),
      I3 => slv_reg2(7),
      I4 => axi_araddr(3),
      I5 => \slv_reg0_reg_n_0_[7]\,
      O => reg_data_out(7)
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(8),
      I1 => fir_y_lat(8),
      I2 => axi_araddr(2),
      I3 => slv_reg2(8),
      I4 => axi_araddr(3),
      I5 => i_valid_in,
      O => reg_data_out(8)
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(9),
      I1 => fir_y_lat(9),
      I2 => axi_araddr(2),
      I3 => slv_reg2(9),
      I4 => axi_araddr(3),
      I5 => i_rst,
      O => reg_data_out(9)
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(0),
      Q => s00_axi_rdata(0),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(10),
      Q => s00_axi_rdata(10),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(11),
      Q => s00_axi_rdata(11),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(12),
      Q => s00_axi_rdata(12),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(13),
      Q => s00_axi_rdata(13),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(14),
      Q => s00_axi_rdata(14),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(15),
      Q => s00_axi_rdata(15),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(16),
      Q => s00_axi_rdata(16),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(17),
      Q => s00_axi_rdata(17),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(18),
      Q => s00_axi_rdata(18),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(19),
      Q => s00_axi_rdata(19),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(1),
      Q => s00_axi_rdata(1),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(20),
      Q => s00_axi_rdata(20),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(21),
      Q => s00_axi_rdata(21),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(22),
      Q => s00_axi_rdata(22),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(23),
      Q => s00_axi_rdata(23),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(24),
      Q => s00_axi_rdata(24),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(25),
      Q => s00_axi_rdata(25),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(26),
      Q => s00_axi_rdata(26),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(27),
      Q => s00_axi_rdata(27),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(28),
      Q => s00_axi_rdata(28),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(29),
      Q => s00_axi_rdata(29),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(2),
      Q => s00_axi_rdata(2),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(30),
      Q => s00_axi_rdata(30),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(31),
      Q => s00_axi_rdata(31),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(3),
      Q => s00_axi_rdata(3),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(4),
      Q => s00_axi_rdata(4),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(5),
      Q => s00_axi_rdata(5),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(6),
      Q => s00_axi_rdata(6),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(7),
      Q => s00_axi_rdata(7),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(8),
      Q => s00_axi_rdata(8),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => slv_reg_rden,
      D => reg_data_out(9),
      Q => s00_axi_rdata(9),
      R => axi_awready_i_1_n_0
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s_axi_arready\,
      I2 => \^s00_axi_rvalid\,
      I3 => s00_axi_rready,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s00_axi_rvalid\,
      R => axi_awready_i_1_n_0
    );
axi_wready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => aw_en_reg_n_0,
      I3 => \^s_axi_wready\,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^s_axi_wready\,
      R => axi_awready_i_1_n_0
    );
fir_valid_lat_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => FIR_inst_n_1,
      Q => fir_valid_lat,
      R => axi_awready_i_1_n_0
    );
\fir_y_lat_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => fir_valid_out,
      D => C(0),
      Q => fir_y_lat(0),
      R => axi_awready_i_1_n_0
    );
\fir_y_lat_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => fir_valid_out,
      D => C(10),
      Q => fir_y_lat(10),
      R => axi_awready_i_1_n_0
    );
\fir_y_lat_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => fir_valid_out,
      D => C(11),
      Q => fir_y_lat(11),
      R => axi_awready_i_1_n_0
    );
\fir_y_lat_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => fir_valid_out,
      D => C(12),
      Q => fir_y_lat(12),
      R => axi_awready_i_1_n_0
    );
\fir_y_lat_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => fir_valid_out,
      D => C(13),
      Q => fir_y_lat(13),
      R => axi_awready_i_1_n_0
    );
\fir_y_lat_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => fir_valid_out,
      D => C(14),
      Q => fir_y_lat(14),
      R => axi_awready_i_1_n_0
    );
\fir_y_lat_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => fir_valid_out,
      D => C(15),
      Q => fir_y_lat(15),
      R => axi_awready_i_1_n_0
    );
\fir_y_lat_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => fir_valid_out,
      D => C(16),
      Q => fir_y_lat(16),
      R => axi_awready_i_1_n_0
    );
\fir_y_lat_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => fir_valid_out,
      D => C(17),
      Q => fir_y_lat(17),
      R => axi_awready_i_1_n_0
    );
\fir_y_lat_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => fir_valid_out,
      D => C(18),
      Q => fir_y_lat(18),
      R => axi_awready_i_1_n_0
    );
\fir_y_lat_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => fir_valid_out,
      D => C(1),
      Q => fir_y_lat(1),
      R => axi_awready_i_1_n_0
    );
\fir_y_lat_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => fir_valid_out,
      D => C(2),
      Q => fir_y_lat(2),
      R => axi_awready_i_1_n_0
    );
\fir_y_lat_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => fir_valid_out,
      D => C(3),
      Q => fir_y_lat(3),
      R => axi_awready_i_1_n_0
    );
\fir_y_lat_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => fir_valid_out,
      D => C(4),
      Q => fir_y_lat(4),
      R => axi_awready_i_1_n_0
    );
\fir_y_lat_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => fir_valid_out,
      D => C(5),
      Q => fir_y_lat(5),
      R => axi_awready_i_1_n_0
    );
\fir_y_lat_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => fir_valid_out,
      D => C(6),
      Q => fir_y_lat(6),
      R => axi_awready_i_1_n_0
    );
\fir_y_lat_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => fir_valid_out,
      D => C(7),
      Q => fir_y_lat(7),
      R => axi_awready_i_1_n_0
    );
\fir_y_lat_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => fir_valid_out,
      D => C(8),
      Q => fir_y_lat(8),
      R => axi_awready_i_1_n_0
    );
\fir_y_lat_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => fir_valid_out,
      D => C(9),
      Q => fir_y_lat(9),
      R => axi_awready_i_1_n_0
    );
\slv_reg0[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => axi_awaddr(3),
      I2 => axi_awaddr(2),
      I3 => s00_axi_wstrb(1),
      O => \slv_reg0[15]_i_1_n_0\
    );
\slv_reg0[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => axi_awaddr(3),
      I2 => axi_awaddr(2),
      I3 => s00_axi_wstrb(2),
      O => \slv_reg0[23]_i_1_n_0\
    );
\slv_reg0[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => axi_awaddr(3),
      I2 => axi_awaddr(2),
      I3 => s00_axi_wstrb(3),
      O => \slv_reg0[31]_i_1_n_0\
    );
\slv_reg0[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => \^s_axi_awready\,
      I2 => \^s_axi_wready\,
      I3 => s00_axi_wvalid,
      O => \slv_reg_wren__2\
    );
\slv_reg0[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => axi_awaddr(3),
      I2 => axi_awaddr(2),
      I3 => s00_axi_wstrb(0),
      O => \slv_reg0[7]_i_1_n_0\
    );
\slv_reg0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => \slv_reg0_reg_n_0_[0]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => \slv_reg0_reg_n_0_[10]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => \slv_reg0_reg_n_0_[11]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => \slv_reg0_reg_n_0_[12]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => \slv_reg0_reg_n_0_[13]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => \slv_reg0_reg_n_0_[14]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => \slv_reg0_reg_n_0_[15]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => \slv_reg0_reg_n_0_[16]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => \slv_reg0_reg_n_0_[17]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => \slv_reg0_reg_n_0_[18]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => \slv_reg0_reg_n_0_[19]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => \slv_reg0_reg_n_0_[1]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => \slv_reg0_reg_n_0_[20]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => \slv_reg0_reg_n_0_[21]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => \slv_reg0_reg_n_0_[22]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => \slv_reg0_reg_n_0_[23]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => \slv_reg0_reg_n_0_[24]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => \slv_reg0_reg_n_0_[25]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => \slv_reg0_reg_n_0_[26]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => \slv_reg0_reg_n_0_[27]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => \slv_reg0_reg_n_0_[28]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => \slv_reg0_reg_n_0_[29]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => \slv_reg0_reg_n_0_[2]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => \slv_reg0_reg_n_0_[30]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => \slv_reg0_reg_n_0_[31]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => \slv_reg0_reg_n_0_[3]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => \slv_reg0_reg_n_0_[4]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => \slv_reg0_reg_n_0_[5]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => \slv_reg0_reg_n_0_[6]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => \slv_reg0_reg_n_0_[7]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => i_valid_in,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => i_rst,
      R => axi_awready_i_1_n_0
    );
\slv_reg2[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => axi_awaddr(3),
      I2 => s00_axi_wstrb(1),
      I3 => axi_awaddr(2),
      O => \slv_reg2[15]_i_1_n_0\
    );
\slv_reg2[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => axi_awaddr(3),
      I2 => s00_axi_wstrb(2),
      I3 => axi_awaddr(2),
      O => \slv_reg2[23]_i_1_n_0\
    );
\slv_reg2[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => axi_awaddr(3),
      I2 => s00_axi_wstrb(3),
      I3 => axi_awaddr(2),
      O => \slv_reg2[31]_i_1_n_0\
    );
\slv_reg2[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => axi_awaddr(3),
      I2 => s00_axi_wstrb(0),
      I3 => axi_awaddr(2),
      O => \slv_reg2[7]_i_1_n_0\
    );
\slv_reg2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg2(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg2(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg2(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg2(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg2(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg2(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg2(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg2(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg2(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg2(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg2(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg2(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg2(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg2(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg2(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg2(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg2(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg2(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg2(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg2(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg2(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg2(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg2(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg2(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg2(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg2(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg2(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg2(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg2(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg2(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg2(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg2(9),
      R => axi_awready_i_1_n_0
    );
\slv_reg3[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => s00_axi_wstrb(1),
      I2 => axi_awaddr(2),
      I3 => axi_awaddr(3),
      O => \slv_reg3[15]_i_1_n_0\
    );
\slv_reg3[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => s00_axi_wstrb(2),
      I2 => axi_awaddr(2),
      I3 => axi_awaddr(3),
      O => \slv_reg3[23]_i_1_n_0\
    );
\slv_reg3[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => s00_axi_wstrb(3),
      I2 => axi_awaddr(2),
      I3 => axi_awaddr(3),
      O => \slv_reg3[31]_i_1_n_0\
    );
\slv_reg3[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__2\,
      I1 => s00_axi_wstrb(0),
      I2 => axi_awaddr(2),
      I3 => axi_awaddr(3),
      O => \slv_reg3[7]_i_1_n_0\
    );
\slv_reg3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg3(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg3(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg3(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg3(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg3(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg3(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg3(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg3(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg3(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg3(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg3(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg3(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg3(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg3(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg3(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg3(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg3(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg3(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg3(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg3(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg3(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg3(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg3(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg3(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg3(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg3(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg3(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg3(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg3(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg3(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg3(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg3(9),
      R => axi_awready_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_my_fir_filter_0_0_my_fir_filter_v1_0 is
  port (
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_my_fir_filter_0_0_my_fir_filter_v1_0 : entity is "my_fir_filter_v1_0";
end design_1_my_fir_filter_0_0_my_fir_filter_v1_0;

architecture STRUCTURE of design_1_my_fir_filter_0_0_my_fir_filter_v1_0 is
begin
my_fir_filter_v1_0_S00_AXI_inst: entity work.design_1_my_fir_filter_0_0_my_fir_filter_v1_0_S00_AXI
     port map (
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_WREADY => S_AXI_WREADY,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(1 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(1 downto 0),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_my_fir_filter_0_0 is
  port (
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_my_fir_filter_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_my_fir_filter_0_0 : entity is "design_1_my_fir_filter_0_0,my_fir_filter_v1_0,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of design_1_my_fir_filter_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of design_1_my_fir_filter_0_0 : entity is "my_fir_filter_v1_0,Vivado 2022.2";
end design_1_my_fir_filter_0_0;

architecture STRUCTURE of design_1_my_fir_filter_0_0 is
  signal \<const0>\ : STD_LOGIC;
  attribute x_interface_info : string;
  attribute x_interface_info of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of s00_axi_aclk : signal is "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 S00_AXI_RST RST";
  attribute x_interface_parameter of s00_axi_aresetn : signal is "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY";
  attribute x_interface_info of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID";
  attribute x_interface_info of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY";
  attribute x_interface_info of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID";
  attribute x_interface_info of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BREADY";
  attribute x_interface_info of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BVALID";
  attribute x_interface_info of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RREADY";
  attribute x_interface_info of s00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RVALID";
  attribute x_interface_info of s00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WREADY";
  attribute x_interface_info of s00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WVALID";
  attribute x_interface_info of s00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR";
  attribute x_interface_info of s00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT";
  attribute x_interface_info of s00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR";
  attribute x_interface_parameter of s00_axi_awaddr : signal is "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of s00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT";
  attribute x_interface_info of s00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BRESP";
  attribute x_interface_info of s00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RDATA";
  attribute x_interface_info of s00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RRESP";
  attribute x_interface_info of s00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WDATA";
  attribute x_interface_info of s00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB";
begin
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.design_1_my_fir_filter_0_0_my_fir_filter_v1_0
     port map (
      S_AXI_ARREADY => s00_axi_arready,
      S_AXI_AWREADY => s00_axi_awready,
      S_AXI_WREADY => s00_axi_wready,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(3 downto 2),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(3 downto 2),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
