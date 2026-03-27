// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (lin64) Build 3671981 Fri Oct 14 04:59:54 MDT 2022
// Date        : Fri Mar 27 19:57:58 2026
// Host        : c5bfe17b53e5 running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/user/Digital_VLSI/lab4/lab4.gen/sources_1/bd/design_1/ip/design_1_my_fir_filter_0_0/design_1_my_fir_filter_0_0_sim_netlist.v
// Design      : design_1_my_fir_filter_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_my_fir_filter_0_0,my_fir_filter_v1_0,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "my_fir_filter_v1_0,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module design_1_my_fir_filter_0_0
   (s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready,
    s00_axi_aclk,
    s00_axi_aresetn);
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [3:0]s00_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [3:0]s00_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) input s00_axi_rready;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input s00_axi_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) (* x_interface_parameter = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;

  wire \<const0> ;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_my_fir_filter_0_0_my_fir_filter_v1_0 U0
       (.S_AXI_ARREADY(s00_axi_arready),
        .S_AXI_AWREADY(s00_axi_awready),
        .S_AXI_WREADY(s00_axi_wready),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[3:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[3:2]),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "FIR" *) 
module design_1_my_fir_filter_0_0_FIR
   (E,
    o_valid_out_reg,
    I28,
    s00_axi_aclk,
    Q,
    fir_valid_lat_reg,
    axi_araddr,
    fir_valid_lat);
  output [0:0]E;
  output o_valid_out_reg;
  output [18:0]I28;
  input s00_axi_aclk;
  input [9:0]Q;
  input [0:0]fir_valid_lat_reg;
  input [1:0]axi_araddr;
  input fir_valid_lat;

  wire [7:0]A;
  wire [0:0]E;
  wire [18:0]I28;
  wire MAC_n_20;
  wire [9:0]Q;
  wire RAM_n_0;
  wire RAM_n_1;
  wire RAM_n_10;
  wire RAM_n_11;
  wire RAM_n_12;
  wire RAM_n_13;
  wire RAM_n_14;
  wire RAM_n_15;
  wire RAM_n_16;
  wire RAM_n_17;
  wire ROM_n_0;
  wire ROM_n_1;
  wire ROM_n_10;
  wire ROM_n_11;
  wire ROM_n_12;
  wire ROM_n_14;
  wire ROM_n_15;
  wire ROM_n_16;
  wire ROM_n_17;
  wire ROM_n_18;
  wire ROM_n_19;
  wire ROM_n_20;
  wire ROM_n_21;
  wire ROM_n_22;
  wire ROM_n_6;
  wire ROM_n_7;
  wire ROM_n_8;
  wire ROM_n_9;
  wire [1:0]axi_araddr;
  wire fir_valid_lat;
  wire [0:0]fir_valid_lat_reg;
  wire [11:11]multOp;
  wire o_mac_init;
  wire [3:0]o_rom_out;
  wire o_valid_out_reg;
  wire [11:11]p_1_in;
  wire [1:1]plusOp__3;
  wire [2:0]ram_address_sig;
  wire ram_we_sig;
  wire [3:0]rdata;
  wire s00_axi_aclk;

  design_1_my_fir_filter_0_0_control_unit ControlUnit
       (.D({rdata[3:2],plusOp__3,rdata[0]}),
        .E(E),
        .Q(Q[9:8]),
        .axi_araddr(axi_araddr),
        .\counter_reg[2]_0 (ram_address_sig),
        .fir_valid_lat(fir_valid_lat),
        .fir_valid_lat_reg(fir_valid_lat_reg),
        .o_mac_init(o_mac_init),
        .o_valid_out_reg_0(o_valid_out_reg),
        .ram_we_sig(ram_we_sig),
        .s00_axi_aclk(s00_axi_aclk));
  design_1_my_fir_filter_0_0_mac MAC
       (.CO(multOp),
        .D(p_1_in),
        .DI({ROM_n_0,ROM_n_1,RAM_n_17}),
        .I28(I28),
        .O(MAC_n_20),
        .S({ROM_n_14,RAM_n_15,ROM_n_15,RAM_n_16}),
        .\acc_reg[11]_0 ({ROM_n_10,ROM_n_11,RAM_n_12}),
        .\acc_reg[11]_1 ({ROM_n_20,ROM_n_21,ROM_n_22}),
        .\acc_reg[7]_0 ({ROM_n_6,RAM_n_0,ROM_n_7,ROM_n_8}),
        .\acc_reg[7]_1 ({ROM_n_16,ROM_n_17,ROM_n_18,ROM_n_19}),
        .o_mac_init(o_mac_init),
        .s00_axi_aclk(s00_axi_aclk));
  design_1_my_fir_filter_0_0_mlab_ram RAM
       (.DI(RAM_n_17),
        .Q({Q[9],Q[7:0]}),
        .S({RAM_n_15,RAM_n_16}),
        .multOp__0_carry__0(ROM_n_9),
        .multOp__0_carry__1(ROM_n_12),
        .multOp__0_carry__1_i_6(o_rom_out),
        .\o_do_reg[0]_0 (ram_address_sig),
        .\o_do_reg[2]_0 (RAM_n_1),
        .\o_do_reg[2]_1 (RAM_n_10),
        .\o_do_reg[3]_0 (RAM_n_11),
        .\o_do_reg[4]_0 (RAM_n_13),
        .\o_do_reg[5]_0 (RAM_n_0),
        .\o_do_reg[5]_1 (RAM_n_14),
        .\o_do_reg[7]_0 (A),
        .\o_do_reg[7]_1 (RAM_n_12),
        .ram_we_sig(ram_we_sig),
        .s00_axi_aclk(s00_axi_aclk));
  design_1_my_fir_filter_0_0_mlab_rom ROM
       (.CO(multOp),
        .D(p_1_in),
        .DI({ROM_n_0,ROM_n_1}),
        .O(MAC_n_20),
        .Q(o_rom_out),
        .S({ROM_n_14,ROM_n_15}),
        .multOp__0_carry(RAM_n_11),
        .multOp__0_carry__0(RAM_n_10),
        .multOp__0_carry__0_0(RAM_n_1),
        .multOp__0_carry__0_1(RAM_n_0),
        .multOp__0_carry__1(RAM_n_14),
        .multOp__0_carry__1_0(RAM_n_13),
        .multOp__0_carry__1_i_6_0(A),
        .\o_do_reg[6] ({ROM_n_6,ROM_n_7,ROM_n_8}),
        .\o_do_reg[7] ({ROM_n_16,ROM_n_17,ROM_n_18,ROM_n_19}),
        .o_mac_init(o_mac_init),
        .\o_rom_out_reg[1]_0 (ROM_n_9),
        .\o_rom_out_reg[1]_1 ({ROM_n_10,ROM_n_11}),
        .\o_rom_out_reg[1]_2 (ROM_n_12),
        .\o_rom_out_reg[2]_0 ({ROM_n_20,ROM_n_21,ROM_n_22}),
        .\o_rom_out_reg[3]_0 ({rdata[3:2],plusOp__3,rdata[0]}),
        .s00_axi_aclk(s00_axi_aclk));
endmodule

(* ORIG_REF_NAME = "control_unit" *) 
module design_1_my_fir_filter_0_0_control_unit
   (ram_we_sig,
    E,
    o_mac_init,
    \counter_reg[2]_0 ,
    o_valid_out_reg_0,
    D,
    s00_axi_aclk,
    Q,
    fir_valid_lat_reg,
    axi_araddr,
    fir_valid_lat);
  output ram_we_sig;
  output [0:0]E;
  output o_mac_init;
  output [2:0]\counter_reg[2]_0 ;
  output o_valid_out_reg_0;
  output [3:0]D;
  input s00_axi_aclk;
  input [1:0]Q;
  input [0:0]fir_valid_lat_reg;
  input [1:0]axi_araddr;
  input fir_valid_lat;

  wire [3:0]D;
  wire [0:0]E;
  wire [1:0]Q;
  wire [1:0]axi_araddr;
  wire \counter[0]_i_1_n_0 ;
  wire \counter[1]_i_1_n_0 ;
  wire \counter[2]_i_1_n_0 ;
  wire \counter[3]_i_1_n_0 ;
  wire \counter[3]_i_2_n_0 ;
  wire [2:0]\counter_reg[2]_0 ;
  wire \counter_reg_n_0_[3] ;
  wire fir_valid_lat;
  wire [0:0]fir_valid_lat_reg;
  wire mac_init_next;
  wire o_mac_init;
  wire o_valid_out_reg_0;
  wire ram_we_sig;
  wire s00_axi_aclk;
  wire valid_out_next;
  wire valid_out_next_0;

  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h5551)) 
    \counter[0]_i_1 
       (.I0(\counter_reg[2]_0 [0]),
        .I1(\counter_reg_n_0_[3] ),
        .I2(\counter_reg[2]_0 [1]),
        .I3(\counter_reg[2]_0 [2]),
        .O(\counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter[1]_i_1 
       (.I0(\counter_reg[2]_0 [0]),
        .I1(\counter_reg[2]_0 [1]),
        .O(\counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \counter[2]_i_1 
       (.I0(\counter_reg[2]_0 [0]),
        .I1(\counter_reg[2]_0 [1]),
        .I2(\counter_reg[2]_0 [2]),
        .O(\counter[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFEF)) 
    \counter[3]_i_1 
       (.I0(Q[0]),
        .I1(\counter_reg[2]_0 [0]),
        .I2(\counter_reg_n_0_[3] ),
        .I3(\counter_reg[2]_0 [1]),
        .I4(\counter_reg[2]_0 [2]),
        .O(\counter[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h34F0F0C0)) 
    \counter[3]_i_2 
       (.I0(Q[0]),
        .I1(\counter_reg[2]_0 [0]),
        .I2(\counter_reg_n_0_[3] ),
        .I3(\counter_reg[2]_0 [1]),
        .I4(\counter_reg[2]_0 [2]),
        .O(\counter[3]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\counter[3]_i_1_n_0 ),
        .CLR(Q[1]),
        .D(\counter[0]_i_1_n_0 ),
        .Q(\counter_reg[2]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\counter[3]_i_1_n_0 ),
        .CLR(Q[1]),
        .D(\counter[1]_i_1_n_0 ),
        .Q(\counter_reg[2]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\counter[3]_i_1_n_0 ),
        .CLR(Q[1]),
        .D(\counter[2]_i_1_n_0 ),
        .Q(\counter_reg[2]_0 [2]));
  FDPE #(
    .INIT(1'b1)) 
    \counter_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\counter[3]_i_1_n_0 ),
        .D(\counter[3]_i_2_n_0 ),
        .PRE(Q[1]),
        .Q(\counter_reg_n_0_[3] ));
  LUT5 #(
    .INIT(32'hFFBFAAAA)) 
    fir_valid_lat_i_1
       (.I0(E),
        .I1(fir_valid_lat_reg),
        .I2(axi_araddr[0]),
        .I3(axi_araddr[1]),
        .I4(fir_valid_lat),
        .O(o_valid_out_reg_0));
  FDCE o_mac_init_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(Q[1]),
        .D(ram_we_sig),
        .Q(o_mac_init));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \o_rom_out[0]_i_1 
       (.I0(\counter_reg[2]_0 [0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \o_rom_out[1]_i_1 
       (.I0(\counter_reg[2]_0 [0]),
        .I1(\counter_reg[2]_0 [1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h6C)) 
    \o_rom_out[2]_i_1 
       (.I0(\counter_reg[2]_0 [1]),
        .I1(\counter_reg[2]_0 [2]),
        .I2(\counter_reg[2]_0 [0]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \o_rom_out[3]_i_1 
       (.I0(\counter_reg[2]_0 [1]),
        .I1(\counter_reg[2]_0 [2]),
        .I2(\counter_reg[2]_0 [0]),
        .O(D[3]));
  FDCE o_valid_out_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(Q[1]),
        .D(valid_out_next),
        .Q(E));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h08100000)) 
    o_we_i_1
       (.I0(\counter_reg[2]_0 [2]),
        .I1(\counter_reg[2]_0 [1]),
        .I2(\counter_reg_n_0_[3] ),
        .I3(\counter_reg[2]_0 [0]),
        .I4(Q[0]),
        .O(mac_init_next));
  FDCE #(
    .INIT(1'b0)) 
    o_we_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(Q[1]),
        .D(mac_init_next),
        .Q(ram_we_sig));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    valid_out_next_i_1
       (.I0(\counter_reg[2]_0 [0]),
        .I1(\counter_reg_n_0_[3] ),
        .I2(\counter_reg[2]_0 [1]),
        .I3(\counter_reg[2]_0 [2]),
        .O(valid_out_next_0));
  FDCE #(
    .INIT(1'b0)) 
    valid_out_next_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(Q[1]),
        .D(valid_out_next_0),
        .Q(valid_out_next));
endmodule

(* ORIG_REF_NAME = "mac" *) 
module design_1_my_fir_filter_0_0_mac
   (CO,
    I28,
    O,
    DI,
    S,
    \acc_reg[7]_0 ,
    \acc_reg[7]_1 ,
    \acc_reg[11]_0 ,
    \acc_reg[11]_1 ,
    D,
    o_mac_init,
    s00_axi_aclk);
  output [0:0]CO;
  output [18:0]I28;
  output [0:0]O;
  input [2:0]DI;
  input [3:0]S;
  input [3:0]\acc_reg[7]_0 ;
  input [3:0]\acc_reg[7]_1 ;
  input [2:0]\acc_reg[11]_0 ;
  input [2:0]\acc_reg[11]_1 ;
  input [0:0]D;
  input o_mac_init;
  input s00_axi_aclk;

  wire [0:0]CO;
  wire [0:0]D;
  wire [2:0]DI;
  wire [18:0]I28;
  wire [0:0]O;
  wire [3:0]S;
  wire \acc[11]_i_3_n_0 ;
  wire \acc[11]_i_4_n_0 ;
  wire \acc[11]_i_5_n_0 ;
  wire \acc[11]_i_6_n_0 ;
  wire \acc[3]_i_3_n_0 ;
  wire \acc[3]_i_4_n_0 ;
  wire \acc[3]_i_5_n_0 ;
  wire \acc[3]_i_6_n_0 ;
  wire \acc[7]_i_3_n_0 ;
  wire \acc[7]_i_4_n_0 ;
  wire \acc[7]_i_5_n_0 ;
  wire \acc[7]_i_6_n_0 ;
  wire [2:0]\acc_reg[11]_0 ;
  wire [2:0]\acc_reg[11]_1 ;
  wire \acc_reg[11]_i_2_n_0 ;
  wire \acc_reg[11]_i_2_n_1 ;
  wire \acc_reg[11]_i_2_n_2 ;
  wire \acc_reg[11]_i_2_n_3 ;
  wire \acc_reg[11]_i_2_n_5 ;
  wire \acc_reg[11]_i_2_n_6 ;
  wire \acc_reg[11]_i_2_n_7 ;
  wire \acc_reg[15]_i_1_n_0 ;
  wire \acc_reg[15]_i_1_n_1 ;
  wire \acc_reg[15]_i_1_n_2 ;
  wire \acc_reg[15]_i_1_n_3 ;
  wire \acc_reg[15]_i_1_n_4 ;
  wire \acc_reg[15]_i_1_n_5 ;
  wire \acc_reg[15]_i_1_n_6 ;
  wire \acc_reg[15]_i_1_n_7 ;
  wire \acc_reg[18]_i_1_n_2 ;
  wire \acc_reg[18]_i_1_n_3 ;
  wire \acc_reg[3]_i_2_n_0 ;
  wire \acc_reg[3]_i_2_n_1 ;
  wire \acc_reg[3]_i_2_n_2 ;
  wire \acc_reg[3]_i_2_n_3 ;
  wire \acc_reg[3]_i_2_n_4 ;
  wire \acc_reg[3]_i_2_n_5 ;
  wire \acc_reg[3]_i_2_n_6 ;
  wire \acc_reg[3]_i_2_n_7 ;
  wire [3:0]\acc_reg[7]_0 ;
  wire [3:0]\acc_reg[7]_1 ;
  wire \acc_reg[7]_i_2_n_0 ;
  wire \acc_reg[7]_i_2_n_1 ;
  wire \acc_reg[7]_i_2_n_2 ;
  wire \acc_reg[7]_i_2_n_3 ;
  wire \acc_reg[7]_i_2_n_4 ;
  wire \acc_reg[7]_i_2_n_5 ;
  wire \acc_reg[7]_i_2_n_6 ;
  wire \acc_reg[7]_i_2_n_7 ;
  wire [10:0]multOp;
  wire multOp__0_carry__0_n_0;
  wire multOp__0_carry__0_n_1;
  wire multOp__0_carry__0_n_2;
  wire multOp__0_carry__0_n_3;
  wire multOp__0_carry__1_n_2;
  wire multOp__0_carry__1_n_3;
  wire multOp__0_carry_n_0;
  wire multOp__0_carry_n_1;
  wire multOp__0_carry_n_2;
  wire multOp__0_carry_n_3;
  wire o_mac_init;
  wire [18:0]p_1_in;
  wire s00_axi_aclk;
  wire [3:2]\NLW_acc_reg[18]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_acc_reg[18]_i_1_O_UNCONNECTED ;
  wire [2:2]NLW_multOp__0_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_multOp__0_carry__1_O_UNCONNECTED;

  LUT3 #(
    .INIT(8'hB8)) 
    \acc[0]_i_1 
       (.I0(multOp[0]),
        .I1(o_mac_init),
        .I2(\acc_reg[3]_i_2_n_7 ),
        .O(p_1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \acc[10]_i_1 
       (.I0(multOp[10]),
        .I1(o_mac_init),
        .I2(\acc_reg[11]_i_2_n_5 ),
        .O(p_1_in[10]));
  LUT2 #(
    .INIT(4'h6)) 
    \acc[11]_i_3 
       (.I0(I28[11]),
        .I1(CO),
        .O(\acc[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \acc[11]_i_4 
       (.I0(I28[10]),
        .I1(multOp[10]),
        .O(\acc[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \acc[11]_i_5 
       (.I0(I28[9]),
        .I1(multOp[9]),
        .O(\acc[11]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \acc[11]_i_6 
       (.I0(I28[8]),
        .I1(multOp[8]),
        .O(\acc[11]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \acc[1]_i_1 
       (.I0(multOp[1]),
        .I1(o_mac_init),
        .I2(\acc_reg[3]_i_2_n_6 ),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \acc[2]_i_1 
       (.I0(multOp[2]),
        .I1(o_mac_init),
        .I2(\acc_reg[3]_i_2_n_5 ),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \acc[3]_i_1 
       (.I0(multOp[3]),
        .I1(o_mac_init),
        .I2(\acc_reg[3]_i_2_n_4 ),
        .O(p_1_in[3]));
  LUT2 #(
    .INIT(4'h6)) 
    \acc[3]_i_3 
       (.I0(I28[3]),
        .I1(multOp[3]),
        .O(\acc[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \acc[3]_i_4 
       (.I0(I28[2]),
        .I1(multOp[2]),
        .O(\acc[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \acc[3]_i_5 
       (.I0(I28[1]),
        .I1(multOp[1]),
        .O(\acc[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \acc[3]_i_6 
       (.I0(I28[0]),
        .I1(multOp[0]),
        .O(\acc[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \acc[4]_i_1 
       (.I0(multOp[4]),
        .I1(o_mac_init),
        .I2(\acc_reg[7]_i_2_n_7 ),
        .O(p_1_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \acc[5]_i_1 
       (.I0(multOp[5]),
        .I1(o_mac_init),
        .I2(\acc_reg[7]_i_2_n_6 ),
        .O(p_1_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \acc[6]_i_1 
       (.I0(multOp[6]),
        .I1(o_mac_init),
        .I2(\acc_reg[7]_i_2_n_5 ),
        .O(p_1_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \acc[7]_i_1 
       (.I0(multOp[7]),
        .I1(o_mac_init),
        .I2(\acc_reg[7]_i_2_n_4 ),
        .O(p_1_in[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \acc[7]_i_3 
       (.I0(I28[7]),
        .I1(multOp[7]),
        .O(\acc[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \acc[7]_i_4 
       (.I0(I28[6]),
        .I1(multOp[6]),
        .O(\acc[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \acc[7]_i_5 
       (.I0(I28[5]),
        .I1(multOp[5]),
        .O(\acc[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \acc[7]_i_6 
       (.I0(I28[4]),
        .I1(multOp[4]),
        .O(\acc[7]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \acc[8]_i_1 
       (.I0(multOp[8]),
        .I1(o_mac_init),
        .I2(\acc_reg[11]_i_2_n_7 ),
        .O(p_1_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \acc[9]_i_1 
       (.I0(multOp[9]),
        .I1(o_mac_init),
        .I2(\acc_reg[11]_i_2_n_6 ),
        .O(p_1_in[9]));
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(p_1_in[0]),
        .Q(I28[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(p_1_in[10]),
        .Q(I28[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(D),
        .Q(I28[11]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \acc_reg[11]_i_2 
       (.CI(\acc_reg[7]_i_2_n_0 ),
        .CO({\acc_reg[11]_i_2_n_0 ,\acc_reg[11]_i_2_n_1 ,\acc_reg[11]_i_2_n_2 ,\acc_reg[11]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(I28[11:8]),
        .O({O,\acc_reg[11]_i_2_n_5 ,\acc_reg[11]_i_2_n_6 ,\acc_reg[11]_i_2_n_7 }),
        .S({\acc[11]_i_3_n_0 ,\acc[11]_i_4_n_0 ,\acc[11]_i_5_n_0 ,\acc[11]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\acc_reg[15]_i_1_n_7 ),
        .Q(I28[12]),
        .R(o_mac_init));
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\acc_reg[15]_i_1_n_6 ),
        .Q(I28[13]),
        .R(o_mac_init));
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\acc_reg[15]_i_1_n_5 ),
        .Q(I28[14]),
        .R(o_mac_init));
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\acc_reg[15]_i_1_n_4 ),
        .Q(I28[15]),
        .R(o_mac_init));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \acc_reg[15]_i_1 
       (.CI(\acc_reg[11]_i_2_n_0 ),
        .CO({\acc_reg[15]_i_1_n_0 ,\acc_reg[15]_i_1_n_1 ,\acc_reg[15]_i_1_n_2 ,\acc_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\acc_reg[15]_i_1_n_4 ,\acc_reg[15]_i_1_n_5 ,\acc_reg[15]_i_1_n_6 ,\acc_reg[15]_i_1_n_7 }),
        .S(I28[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(p_1_in[16]),
        .Q(I28[16]),
        .R(o_mac_init));
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(p_1_in[17]),
        .Q(I28[17]),
        .R(o_mac_init));
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(p_1_in[18]),
        .Q(I28[18]),
        .R(o_mac_init));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \acc_reg[18]_i_1 
       (.CI(\acc_reg[15]_i_1_n_0 ),
        .CO({\NLW_acc_reg[18]_i_1_CO_UNCONNECTED [3:2],\acc_reg[18]_i_1_n_2 ,\acc_reg[18]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_acc_reg[18]_i_1_O_UNCONNECTED [3],p_1_in[18:16]}),
        .S({1'b0,I28[18:16]}));
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(p_1_in[1]),
        .Q(I28[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(p_1_in[2]),
        .Q(I28[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(p_1_in[3]),
        .Q(I28[3]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \acc_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\acc_reg[3]_i_2_n_0 ,\acc_reg[3]_i_2_n_1 ,\acc_reg[3]_i_2_n_2 ,\acc_reg[3]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(I28[3:0]),
        .O({\acc_reg[3]_i_2_n_4 ,\acc_reg[3]_i_2_n_5 ,\acc_reg[3]_i_2_n_6 ,\acc_reg[3]_i_2_n_7 }),
        .S({\acc[3]_i_3_n_0 ,\acc[3]_i_4_n_0 ,\acc[3]_i_5_n_0 ,\acc[3]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(p_1_in[4]),
        .Q(I28[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(p_1_in[5]),
        .Q(I28[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(p_1_in[6]),
        .Q(I28[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(p_1_in[7]),
        .Q(I28[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \acc_reg[7]_i_2 
       (.CI(\acc_reg[3]_i_2_n_0 ),
        .CO({\acc_reg[7]_i_2_n_0 ,\acc_reg[7]_i_2_n_1 ,\acc_reg[7]_i_2_n_2 ,\acc_reg[7]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI(I28[7:4]),
        .O({\acc_reg[7]_i_2_n_4 ,\acc_reg[7]_i_2_n_5 ,\acc_reg[7]_i_2_n_6 ,\acc_reg[7]_i_2_n_7 }),
        .S({\acc[7]_i_3_n_0 ,\acc[7]_i_4_n_0 ,\acc[7]_i_5_n_0 ,\acc[7]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(p_1_in[8]),
        .Q(I28[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \acc_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(p_1_in[9]),
        .Q(I28[9]),
        .R(1'b0));
  CARRY4 multOp__0_carry
       (.CI(1'b0),
        .CO({multOp__0_carry_n_0,multOp__0_carry_n_1,multOp__0_carry_n_2,multOp__0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({DI,1'b0}),
        .O(multOp[3:0]),
        .S(S));
  CARRY4 multOp__0_carry__0
       (.CI(multOp__0_carry_n_0),
        .CO({multOp__0_carry__0_n_0,multOp__0_carry__0_n_1,multOp__0_carry__0_n_2,multOp__0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(\acc_reg[7]_0 ),
        .O(multOp[7:4]),
        .S(\acc_reg[7]_1 ));
  CARRY4 multOp__0_carry__1
       (.CI(multOp__0_carry__0_n_0),
        .CO({CO,NLW_multOp__0_carry__1_CO_UNCONNECTED[2],multOp__0_carry__1_n_2,multOp__0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,\acc_reg[11]_0 }),
        .O({NLW_multOp__0_carry__1_O_UNCONNECTED[3],multOp[10:8]}),
        .S({1'b1,\acc_reg[11]_1 }));
endmodule

(* ORIG_REF_NAME = "mlab_ram" *) 
module design_1_my_fir_filter_0_0_mlab_ram
   (\o_do_reg[5]_0 ,
    \o_do_reg[2]_0 ,
    \o_do_reg[7]_0 ,
    \o_do_reg[2]_1 ,
    \o_do_reg[3]_0 ,
    \o_do_reg[7]_1 ,
    \o_do_reg[4]_0 ,
    \o_do_reg[5]_1 ,
    S,
    DI,
    Q,
    \o_do_reg[0]_0 ,
    ram_we_sig,
    multOp__0_carry__1_i_6,
    multOp__0_carry__0,
    multOp__0_carry__1,
    s00_axi_aclk);
  output [0:0]\o_do_reg[5]_0 ;
  output \o_do_reg[2]_0 ;
  output [7:0]\o_do_reg[7]_0 ;
  output \o_do_reg[2]_1 ;
  output \o_do_reg[3]_0 ;
  output [0:0]\o_do_reg[7]_1 ;
  output \o_do_reg[4]_0 ;
  output \o_do_reg[5]_1 ;
  output [1:0]S;
  output [0:0]DI;
  input [8:0]Q;
  input [2:0]\o_do_reg[0]_0 ;
  input ram_we_sig;
  input [3:0]multOp__0_carry__1_i_6;
  input multOp__0_carry__0;
  input multOp__0_carry__1;
  input s00_axi_aclk;

  wire [0:0]DI;
  wire [8:0]Q;
  wire [7:0]\RAM_reg[0] ;
  wire [7:0]\RAM_reg[1] ;
  wire [7:0]\RAM_reg[2] ;
  wire [7:0]\RAM_reg[3] ;
  wire [7:0]\RAM_reg[4] ;
  wire [7:0]\RAM_reg[5] ;
  wire [7:0]\RAM_reg[6] ;
  wire [7:0]\RAM_reg[7] ;
  wire [1:0]S;
  wire multOp__0_carry__0;
  wire multOp__0_carry__1;
  wire [3:0]multOp__0_carry__1_i_6;
  wire o_do0;
  wire \o_do[0]_i_1_n_0 ;
  wire \o_do[0]_i_2_n_0 ;
  wire \o_do[0]_i_3_n_0 ;
  wire \o_do[1]_i_1_n_0 ;
  wire \o_do[1]_i_2_n_0 ;
  wire \o_do[1]_i_3_n_0 ;
  wire \o_do[2]_i_1_n_0 ;
  wire \o_do[2]_i_2_n_0 ;
  wire \o_do[2]_i_3_n_0 ;
  wire \o_do[3]_i_1_n_0 ;
  wire \o_do[3]_i_2_n_0 ;
  wire \o_do[3]_i_3_n_0 ;
  wire \o_do[4]_i_1_n_0 ;
  wire \o_do[4]_i_2_n_0 ;
  wire \o_do[4]_i_3_n_0 ;
  wire \o_do[5]_i_1_n_0 ;
  wire \o_do[5]_i_2_n_0 ;
  wire \o_do[5]_i_3_n_0 ;
  wire \o_do[6]_i_1_n_0 ;
  wire \o_do[6]_i_2_n_0 ;
  wire \o_do[6]_i_3_n_0 ;
  wire \o_do[7]_i_2_n_0 ;
  wire \o_do[7]_i_3_n_0 ;
  wire \o_do[7]_i_4_n_0 ;
  wire [2:0]\o_do_reg[0]_0 ;
  wire \o_do_reg[2]_0 ;
  wire \o_do_reg[2]_1 ;
  wire \o_do_reg[3]_0 ;
  wire \o_do_reg[4]_0 ;
  wire [0:0]\o_do_reg[5]_0 ;
  wire \o_do_reg[5]_1 ;
  wire [7:0]\o_do_reg[7]_0 ;
  wire [0:0]\o_do_reg[7]_1 ;
  wire ram_we_sig;
  wire s00_axi_aclk;

  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[0][0] 
       (.C(s00_axi_aclk),
        .CE(ram_we_sig),
        .CLR(Q[8]),
        .D(Q[0]),
        .Q(\RAM_reg[0] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[0][1] 
       (.C(s00_axi_aclk),
        .CE(ram_we_sig),
        .CLR(Q[8]),
        .D(Q[1]),
        .Q(\RAM_reg[0] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[0][2] 
       (.C(s00_axi_aclk),
        .CE(ram_we_sig),
        .CLR(Q[8]),
        .D(Q[2]),
        .Q(\RAM_reg[0] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[0][3] 
       (.C(s00_axi_aclk),
        .CE(ram_we_sig),
        .CLR(Q[8]),
        .D(Q[3]),
        .Q(\RAM_reg[0] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[0][4] 
       (.C(s00_axi_aclk),
        .CE(ram_we_sig),
        .CLR(Q[8]),
        .D(Q[4]),
        .Q(\RAM_reg[0] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[0][5] 
       (.C(s00_axi_aclk),
        .CE(ram_we_sig),
        .CLR(Q[8]),
        .D(Q[5]),
        .Q(\RAM_reg[0] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[0][6] 
       (.C(s00_axi_aclk),
        .CE(ram_we_sig),
        .CLR(Q[8]),
        .D(Q[6]),
        .Q(\RAM_reg[0] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[0][7] 
       (.C(s00_axi_aclk),
        .CE(ram_we_sig),
        .CLR(Q[8]),
        .D(Q[7]),
        .Q(\RAM_reg[0] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[1][0] 
       (.C(s00_axi_aclk),
        .CE(ram_we_sig),
        .CLR(Q[8]),
        .D(\RAM_reg[0] [0]),
        .Q(\RAM_reg[1] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[1][1] 
       (.C(s00_axi_aclk),
        .CE(ram_we_sig),
        .CLR(Q[8]),
        .D(\RAM_reg[0] [1]),
        .Q(\RAM_reg[1] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[1][2] 
       (.C(s00_axi_aclk),
        .CE(ram_we_sig),
        .CLR(Q[8]),
        .D(\RAM_reg[0] [2]),
        .Q(\RAM_reg[1] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[1][3] 
       (.C(s00_axi_aclk),
        .CE(ram_we_sig),
        .CLR(Q[8]),
        .D(\RAM_reg[0] [3]),
        .Q(\RAM_reg[1] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[1][4] 
       (.C(s00_axi_aclk),
        .CE(ram_we_sig),
        .CLR(Q[8]),
        .D(\RAM_reg[0] [4]),
        .Q(\RAM_reg[1] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[1][5] 
       (.C(s00_axi_aclk),
        .CE(ram_we_sig),
        .CLR(Q[8]),
        .D(\RAM_reg[0] [5]),
        .Q(\RAM_reg[1] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[1][6] 
       (.C(s00_axi_aclk),
        .CE(ram_we_sig),
        .CLR(Q[8]),
        .D(\RAM_reg[0] [6]),
        .Q(\RAM_reg[1] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[1][7] 
       (.C(s00_axi_aclk),
        .CE(ram_we_sig),
        .CLR(Q[8]),
        .D(\RAM_reg[0] [7]),
        .Q(\RAM_reg[1] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[2][0] 
       (.C(s00_axi_aclk),
        .CE(ram_we_sig),
        .CLR(Q[8]),
        .D(\RAM_reg[1] [0]),
        .Q(\RAM_reg[2] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[2][1] 
       (.C(s00_axi_aclk),
        .CE(ram_we_sig),
        .CLR(Q[8]),
        .D(\RAM_reg[1] [1]),
        .Q(\RAM_reg[2] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[2][2] 
       (.C(s00_axi_aclk),
        .CE(ram_we_sig),
        .CLR(Q[8]),
        .D(\RAM_reg[1] [2]),
        .Q(\RAM_reg[2] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[2][3] 
       (.C(s00_axi_aclk),
        .CE(ram_we_sig),
        .CLR(Q[8]),
        .D(\RAM_reg[1] [3]),
        .Q(\RAM_reg[2] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[2][4] 
       (.C(s00_axi_aclk),
        .CE(ram_we_sig),
        .CLR(Q[8]),
        .D(\RAM_reg[1] [4]),
        .Q(\RAM_reg[2] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[2][5] 
       (.C(s00_axi_aclk),
        .CE(ram_we_sig),
        .CLR(Q[8]),
        .D(\RAM_reg[1] [5]),
        .Q(\RAM_reg[2] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[2][6] 
       (.C(s00_axi_aclk),
        .CE(ram_we_sig),
        .CLR(Q[8]),
        .D(\RAM_reg[1] [6]),
        .Q(\RAM_reg[2] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[2][7] 
       (.C(s00_axi_aclk),
        .CE(ram_we_sig),
        .CLR(Q[8]),
        .D(\RAM_reg[1] [7]),
        .Q(\RAM_reg[2] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[3][0] 
       (.C(s00_axi_aclk),
        .CE(ram_we_sig),
        .CLR(Q[8]),
        .D(\RAM_reg[2] [0]),
        .Q(\RAM_reg[3] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[3][1] 
       (.C(s00_axi_aclk),
        .CE(ram_we_sig),
        .CLR(Q[8]),
        .D(\RAM_reg[2] [1]),
        .Q(\RAM_reg[3] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[3][2] 
       (.C(s00_axi_aclk),
        .CE(ram_we_sig),
        .CLR(Q[8]),
        .D(\RAM_reg[2] [2]),
        .Q(\RAM_reg[3] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[3][3] 
       (.C(s00_axi_aclk),
        .CE(ram_we_sig),
        .CLR(Q[8]),
        .D(\RAM_reg[2] [3]),
        .Q(\RAM_reg[3] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[3][4] 
       (.C(s00_axi_aclk),
        .CE(ram_we_sig),
        .CLR(Q[8]),
        .D(\RAM_reg[2] [4]),
        .Q(\RAM_reg[3] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[3][5] 
       (.C(s00_axi_aclk),
        .CE(ram_we_sig),
        .CLR(Q[8]),
        .D(\RAM_reg[2] [5]),
        .Q(\RAM_reg[3] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[3][6] 
       (.C(s00_axi_aclk),
        .CE(ram_we_sig),
        .CLR(Q[8]),
        .D(\RAM_reg[2] [6]),
        .Q(\RAM_reg[3] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[3][7] 
       (.C(s00_axi_aclk),
        .CE(ram_we_sig),
        .CLR(Q[8]),
        .D(\RAM_reg[2] [7]),
        .Q(\RAM_reg[3] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[4][0] 
       (.C(s00_axi_aclk),
        .CE(ram_we_sig),
        .CLR(Q[8]),
        .D(\RAM_reg[3] [0]),
        .Q(\RAM_reg[4] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[4][1] 
       (.C(s00_axi_aclk),
        .CE(ram_we_sig),
        .CLR(Q[8]),
        .D(\RAM_reg[3] [1]),
        .Q(\RAM_reg[4] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[4][2] 
       (.C(s00_axi_aclk),
        .CE(ram_we_sig),
        .CLR(Q[8]),
        .D(\RAM_reg[3] [2]),
        .Q(\RAM_reg[4] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[4][3] 
       (.C(s00_axi_aclk),
        .CE(ram_we_sig),
        .CLR(Q[8]),
        .D(\RAM_reg[3] [3]),
        .Q(\RAM_reg[4] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[4][4] 
       (.C(s00_axi_aclk),
        .CE(ram_we_sig),
        .CLR(Q[8]),
        .D(\RAM_reg[3] [4]),
        .Q(\RAM_reg[4] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[4][5] 
       (.C(s00_axi_aclk),
        .CE(ram_we_sig),
        .CLR(Q[8]),
        .D(\RAM_reg[3] [5]),
        .Q(\RAM_reg[4] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[4][6] 
       (.C(s00_axi_aclk),
        .CE(ram_we_sig),
        .CLR(Q[8]),
        .D(\RAM_reg[3] [6]),
        .Q(\RAM_reg[4] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[4][7] 
       (.C(s00_axi_aclk),
        .CE(ram_we_sig),
        .CLR(Q[8]),
        .D(\RAM_reg[3] [7]),
        .Q(\RAM_reg[4] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[5][0] 
       (.C(s00_axi_aclk),
        .CE(ram_we_sig),
        .CLR(Q[8]),
        .D(\RAM_reg[4] [0]),
        .Q(\RAM_reg[5] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[5][1] 
       (.C(s00_axi_aclk),
        .CE(ram_we_sig),
        .CLR(Q[8]),
        .D(\RAM_reg[4] [1]),
        .Q(\RAM_reg[5] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[5][2] 
       (.C(s00_axi_aclk),
        .CE(ram_we_sig),
        .CLR(Q[8]),
        .D(\RAM_reg[4] [2]),
        .Q(\RAM_reg[5] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[5][3] 
       (.C(s00_axi_aclk),
        .CE(ram_we_sig),
        .CLR(Q[8]),
        .D(\RAM_reg[4] [3]),
        .Q(\RAM_reg[5] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[5][4] 
       (.C(s00_axi_aclk),
        .CE(ram_we_sig),
        .CLR(Q[8]),
        .D(\RAM_reg[4] [4]),
        .Q(\RAM_reg[5] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[5][5] 
       (.C(s00_axi_aclk),
        .CE(ram_we_sig),
        .CLR(Q[8]),
        .D(\RAM_reg[4] [5]),
        .Q(\RAM_reg[5] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[5][6] 
       (.C(s00_axi_aclk),
        .CE(ram_we_sig),
        .CLR(Q[8]),
        .D(\RAM_reg[4] [6]),
        .Q(\RAM_reg[5] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[5][7] 
       (.C(s00_axi_aclk),
        .CE(ram_we_sig),
        .CLR(Q[8]),
        .D(\RAM_reg[4] [7]),
        .Q(\RAM_reg[5] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[6][0] 
       (.C(s00_axi_aclk),
        .CE(ram_we_sig),
        .CLR(Q[8]),
        .D(\RAM_reg[5] [0]),
        .Q(\RAM_reg[6] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[6][1] 
       (.C(s00_axi_aclk),
        .CE(ram_we_sig),
        .CLR(Q[8]),
        .D(\RAM_reg[5] [1]),
        .Q(\RAM_reg[6] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[6][2] 
       (.C(s00_axi_aclk),
        .CE(ram_we_sig),
        .CLR(Q[8]),
        .D(\RAM_reg[5] [2]),
        .Q(\RAM_reg[6] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[6][3] 
       (.C(s00_axi_aclk),
        .CE(ram_we_sig),
        .CLR(Q[8]),
        .D(\RAM_reg[5] [3]),
        .Q(\RAM_reg[6] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[6][4] 
       (.C(s00_axi_aclk),
        .CE(ram_we_sig),
        .CLR(Q[8]),
        .D(\RAM_reg[5] [4]),
        .Q(\RAM_reg[6] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[6][5] 
       (.C(s00_axi_aclk),
        .CE(ram_we_sig),
        .CLR(Q[8]),
        .D(\RAM_reg[5] [5]),
        .Q(\RAM_reg[6] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[6][6] 
       (.C(s00_axi_aclk),
        .CE(ram_we_sig),
        .CLR(Q[8]),
        .D(\RAM_reg[5] [6]),
        .Q(\RAM_reg[6] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[6][7] 
       (.C(s00_axi_aclk),
        .CE(ram_we_sig),
        .CLR(Q[8]),
        .D(\RAM_reg[5] [7]),
        .Q(\RAM_reg[6] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[7][0] 
       (.C(s00_axi_aclk),
        .CE(ram_we_sig),
        .CLR(Q[8]),
        .D(\RAM_reg[6] [0]),
        .Q(\RAM_reg[7] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[7][1] 
       (.C(s00_axi_aclk),
        .CE(ram_we_sig),
        .CLR(Q[8]),
        .D(\RAM_reg[6] [1]),
        .Q(\RAM_reg[7] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[7][2] 
       (.C(s00_axi_aclk),
        .CE(ram_we_sig),
        .CLR(Q[8]),
        .D(\RAM_reg[6] [2]),
        .Q(\RAM_reg[7] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[7][3] 
       (.C(s00_axi_aclk),
        .CE(ram_we_sig),
        .CLR(Q[8]),
        .D(\RAM_reg[6] [3]),
        .Q(\RAM_reg[7] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[7][4] 
       (.C(s00_axi_aclk),
        .CE(ram_we_sig),
        .CLR(Q[8]),
        .D(\RAM_reg[6] [4]),
        .Q(\RAM_reg[7] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[7][5] 
       (.C(s00_axi_aclk),
        .CE(ram_we_sig),
        .CLR(Q[8]),
        .D(\RAM_reg[6] [5]),
        .Q(\RAM_reg[7] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[7][6] 
       (.C(s00_axi_aclk),
        .CE(ram_we_sig),
        .CLR(Q[8]),
        .D(\RAM_reg[6] [6]),
        .Q(\RAM_reg[7] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[7][7] 
       (.C(s00_axi_aclk),
        .CE(ram_we_sig),
        .CLR(Q[8]),
        .D(\RAM_reg[6] [7]),
        .Q(\RAM_reg[7] [7]));
  LUT6 #(
    .INIT(64'hF880808088000000)) 
    multOp__0_carry__0_i_11
       (.I0(\o_do_reg[7]_0 [2]),
        .I1(multOp__0_carry__1_i_6[2]),
        .I2(\o_do_reg[7]_0 [3]),
        .I3(multOp__0_carry__1_i_6[3]),
        .I4(\o_do_reg[7]_0 [1]),
        .I5(multOp__0_carry__1_i_6[1]),
        .O(\o_do_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    multOp__0_carry__0_i_15
       (.I0(\o_do_reg[7]_0 [4]),
        .I1(multOp__0_carry__1_i_6[2]),
        .I2(\o_do_reg[7]_0 [3]),
        .I3(multOp__0_carry__1_i_6[3]),
        .I4(\o_do_reg[7]_0 [5]),
        .I5(multOp__0_carry__1_i_6[1]),
        .O(\o_do_reg[4]_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    multOp__0_carry__0_i_17
       (.I0(\o_do_reg[7]_0 [2]),
        .I1(multOp__0_carry__1_i_6[1]),
        .O(\o_do_reg[2]_1 ));
  LUT4 #(
    .INIT(16'hEA80)) 
    multOp__0_carry__0_i_2
       (.I0(\o_do_reg[2]_0 ),
        .I1(\o_do_reg[7]_0 [5]),
        .I2(multOp__0_carry__1_i_6[0]),
        .I3(multOp__0_carry__0),
        .O(\o_do_reg[5]_0 ));
  LUT4 #(
    .INIT(16'hEA80)) 
    multOp__0_carry__1_i_3
       (.I0(\o_do_reg[4]_0 ),
        .I1(\o_do_reg[7]_0 [7]),
        .I2(multOp__0_carry__1_i_6[0]),
        .I3(multOp__0_carry__1),
        .O(\o_do_reg[7]_1 ));
  LUT2 #(
    .INIT(4'h7)) 
    multOp__0_carry__1_i_8
       (.I0(\o_do_reg[7]_0 [5]),
        .I1(multOp__0_carry__1_i_6[2]),
        .O(\o_do_reg[5]_1 ));
  LUT2 #(
    .INIT(4'h8)) 
    multOp__0_carry_i_3
       (.I0(\o_do_reg[7]_0 [1]),
        .I1(multOp__0_carry__1_i_6[0]),
        .O(DI));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    multOp__0_carry_i_5
       (.I0(\o_do_reg[7]_0 [0]),
        .I1(multOp__0_carry__1_i_6[2]),
        .I2(\o_do_reg[7]_0 [1]),
        .I3(multOp__0_carry__1_i_6[1]),
        .I4(multOp__0_carry__1_i_6[0]),
        .I5(\o_do_reg[7]_0 [2]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h8)) 
    multOp__0_carry_i_7
       (.I0(\o_do_reg[7]_0 [0]),
        .I1(multOp__0_carry__1_i_6[0]),
        .O(S[0]));
  LUT2 #(
    .INIT(4'h7)) 
    multOp__0_carry_i_9
       (.I0(\o_do_reg[7]_0 [3]),
        .I1(multOp__0_carry__1_i_6[0]),
        .O(\o_do_reg[3]_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \o_do[0]_i_1 
       (.I0(Q[0]),
        .I1(\o_do[0]_i_2_n_0 ),
        .I2(\o_do_reg[0]_0 [2]),
        .I3(\o_do[0]_i_3_n_0 ),
        .I4(ram_we_sig),
        .O(\o_do[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o_do[0]_i_2 
       (.I0(\RAM_reg[7] [0]),
        .I1(\RAM_reg[6] [0]),
        .I2(\o_do_reg[0]_0 [1]),
        .I3(\RAM_reg[5] [0]),
        .I4(\o_do_reg[0]_0 [0]),
        .I5(\RAM_reg[4] [0]),
        .O(\o_do[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o_do[0]_i_3 
       (.I0(\RAM_reg[3] [0]),
        .I1(\RAM_reg[2] [0]),
        .I2(\o_do_reg[0]_0 [1]),
        .I3(\RAM_reg[1] [0]),
        .I4(\o_do_reg[0]_0 [0]),
        .I5(\RAM_reg[0] [0]),
        .O(\o_do[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \o_do[1]_i_1 
       (.I0(Q[1]),
        .I1(\o_do[1]_i_2_n_0 ),
        .I2(\o_do_reg[0]_0 [2]),
        .I3(\o_do[1]_i_3_n_0 ),
        .I4(ram_we_sig),
        .O(\o_do[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o_do[1]_i_2 
       (.I0(\RAM_reg[7] [1]),
        .I1(\RAM_reg[6] [1]),
        .I2(\o_do_reg[0]_0 [1]),
        .I3(\RAM_reg[5] [1]),
        .I4(\o_do_reg[0]_0 [0]),
        .I5(\RAM_reg[4] [1]),
        .O(\o_do[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o_do[1]_i_3 
       (.I0(\RAM_reg[3] [1]),
        .I1(\RAM_reg[2] [1]),
        .I2(\o_do_reg[0]_0 [1]),
        .I3(\RAM_reg[1] [1]),
        .I4(\o_do_reg[0]_0 [0]),
        .I5(\RAM_reg[0] [1]),
        .O(\o_do[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \o_do[2]_i_1 
       (.I0(Q[2]),
        .I1(\o_do[2]_i_2_n_0 ),
        .I2(\o_do_reg[0]_0 [2]),
        .I3(\o_do[2]_i_3_n_0 ),
        .I4(ram_we_sig),
        .O(\o_do[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o_do[2]_i_2 
       (.I0(\RAM_reg[7] [2]),
        .I1(\RAM_reg[6] [2]),
        .I2(\o_do_reg[0]_0 [1]),
        .I3(\RAM_reg[5] [2]),
        .I4(\o_do_reg[0]_0 [0]),
        .I5(\RAM_reg[4] [2]),
        .O(\o_do[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o_do[2]_i_3 
       (.I0(\RAM_reg[3] [2]),
        .I1(\RAM_reg[2] [2]),
        .I2(\o_do_reg[0]_0 [1]),
        .I3(\RAM_reg[1] [2]),
        .I4(\o_do_reg[0]_0 [0]),
        .I5(\RAM_reg[0] [2]),
        .O(\o_do[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \o_do[3]_i_1 
       (.I0(Q[3]),
        .I1(\o_do[3]_i_2_n_0 ),
        .I2(\o_do_reg[0]_0 [2]),
        .I3(\o_do[3]_i_3_n_0 ),
        .I4(ram_we_sig),
        .O(\o_do[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o_do[3]_i_2 
       (.I0(\RAM_reg[7] [3]),
        .I1(\RAM_reg[6] [3]),
        .I2(\o_do_reg[0]_0 [1]),
        .I3(\RAM_reg[5] [3]),
        .I4(\o_do_reg[0]_0 [0]),
        .I5(\RAM_reg[4] [3]),
        .O(\o_do[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o_do[3]_i_3 
       (.I0(\RAM_reg[3] [3]),
        .I1(\RAM_reg[2] [3]),
        .I2(\o_do_reg[0]_0 [1]),
        .I3(\RAM_reg[1] [3]),
        .I4(\o_do_reg[0]_0 [0]),
        .I5(\RAM_reg[0] [3]),
        .O(\o_do[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \o_do[4]_i_1 
       (.I0(Q[4]),
        .I1(\o_do[4]_i_2_n_0 ),
        .I2(\o_do_reg[0]_0 [2]),
        .I3(\o_do[4]_i_3_n_0 ),
        .I4(ram_we_sig),
        .O(\o_do[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o_do[4]_i_2 
       (.I0(\RAM_reg[7] [4]),
        .I1(\RAM_reg[6] [4]),
        .I2(\o_do_reg[0]_0 [1]),
        .I3(\RAM_reg[5] [4]),
        .I4(\o_do_reg[0]_0 [0]),
        .I5(\RAM_reg[4] [4]),
        .O(\o_do[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o_do[4]_i_3 
       (.I0(\RAM_reg[3] [4]),
        .I1(\RAM_reg[2] [4]),
        .I2(\o_do_reg[0]_0 [1]),
        .I3(\RAM_reg[1] [4]),
        .I4(\o_do_reg[0]_0 [0]),
        .I5(\RAM_reg[0] [4]),
        .O(\o_do[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \o_do[5]_i_1 
       (.I0(Q[5]),
        .I1(\o_do[5]_i_2_n_0 ),
        .I2(\o_do_reg[0]_0 [2]),
        .I3(\o_do[5]_i_3_n_0 ),
        .I4(ram_we_sig),
        .O(\o_do[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o_do[5]_i_2 
       (.I0(\RAM_reg[7] [5]),
        .I1(\RAM_reg[6] [5]),
        .I2(\o_do_reg[0]_0 [1]),
        .I3(\RAM_reg[5] [5]),
        .I4(\o_do_reg[0]_0 [0]),
        .I5(\RAM_reg[4] [5]),
        .O(\o_do[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o_do[5]_i_3 
       (.I0(\RAM_reg[3] [5]),
        .I1(\RAM_reg[2] [5]),
        .I2(\o_do_reg[0]_0 [1]),
        .I3(\RAM_reg[1] [5]),
        .I4(\o_do_reg[0]_0 [0]),
        .I5(\RAM_reg[0] [5]),
        .O(\o_do[5]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \o_do[6]_i_1 
       (.I0(Q[6]),
        .I1(\o_do[6]_i_2_n_0 ),
        .I2(\o_do_reg[0]_0 [2]),
        .I3(\o_do[6]_i_3_n_0 ),
        .I4(ram_we_sig),
        .O(\o_do[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o_do[6]_i_2 
       (.I0(\RAM_reg[7] [6]),
        .I1(\RAM_reg[6] [6]),
        .I2(\o_do_reg[0]_0 [1]),
        .I3(\RAM_reg[5] [6]),
        .I4(\o_do_reg[0]_0 [0]),
        .I5(\RAM_reg[4] [6]),
        .O(\o_do[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o_do[6]_i_3 
       (.I0(\RAM_reg[3] [6]),
        .I1(\RAM_reg[2] [6]),
        .I2(\o_do_reg[0]_0 [1]),
        .I3(\RAM_reg[1] [6]),
        .I4(\o_do_reg[0]_0 [0]),
        .I5(\RAM_reg[0] [6]),
        .O(\o_do[6]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \o_do[7]_i_1 
       (.I0(Q[8]),
        .O(o_do0));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \o_do[7]_i_2 
       (.I0(Q[7]),
        .I1(\o_do[7]_i_3_n_0 ),
        .I2(\o_do_reg[0]_0 [2]),
        .I3(\o_do[7]_i_4_n_0 ),
        .I4(ram_we_sig),
        .O(\o_do[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o_do[7]_i_3 
       (.I0(\RAM_reg[7] [7]),
        .I1(\RAM_reg[6] [7]),
        .I2(\o_do_reg[0]_0 [1]),
        .I3(\RAM_reg[5] [7]),
        .I4(\o_do_reg[0]_0 [0]),
        .I5(\RAM_reg[4] [7]),
        .O(\o_do[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \o_do[7]_i_4 
       (.I0(\RAM_reg[3] [7]),
        .I1(\RAM_reg[2] [7]),
        .I2(\o_do_reg[0]_0 [1]),
        .I3(\RAM_reg[1] [7]),
        .I4(\o_do_reg[0]_0 [0]),
        .I5(\RAM_reg[0] [7]),
        .O(\o_do[7]_i_4_n_0 ));
  FDRE \o_do_reg[0] 
       (.C(s00_axi_aclk),
        .CE(o_do0),
        .D(\o_do[0]_i_1_n_0 ),
        .Q(\o_do_reg[7]_0 [0]),
        .R(1'b0));
  FDRE \o_do_reg[1] 
       (.C(s00_axi_aclk),
        .CE(o_do0),
        .D(\o_do[1]_i_1_n_0 ),
        .Q(\o_do_reg[7]_0 [1]),
        .R(1'b0));
  FDRE \o_do_reg[2] 
       (.C(s00_axi_aclk),
        .CE(o_do0),
        .D(\o_do[2]_i_1_n_0 ),
        .Q(\o_do_reg[7]_0 [2]),
        .R(1'b0));
  FDRE \o_do_reg[3] 
       (.C(s00_axi_aclk),
        .CE(o_do0),
        .D(\o_do[3]_i_1_n_0 ),
        .Q(\o_do_reg[7]_0 [3]),
        .R(1'b0));
  FDRE \o_do_reg[4] 
       (.C(s00_axi_aclk),
        .CE(o_do0),
        .D(\o_do[4]_i_1_n_0 ),
        .Q(\o_do_reg[7]_0 [4]),
        .R(1'b0));
  FDRE \o_do_reg[5] 
       (.C(s00_axi_aclk),
        .CE(o_do0),
        .D(\o_do[5]_i_1_n_0 ),
        .Q(\o_do_reg[7]_0 [5]),
        .R(1'b0));
  FDRE \o_do_reg[6] 
       (.C(s00_axi_aclk),
        .CE(o_do0),
        .D(\o_do[6]_i_1_n_0 ),
        .Q(\o_do_reg[7]_0 [6]),
        .R(1'b0));
  FDRE \o_do_reg[7] 
       (.C(s00_axi_aclk),
        .CE(o_do0),
        .D(\o_do[7]_i_2_n_0 ),
        .Q(\o_do_reg[7]_0 [7]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "mlab_rom" *) 
module design_1_my_fir_filter_0_0_mlab_rom
   (DI,
    Q,
    \o_do_reg[6] ,
    \o_rom_out_reg[1]_0 ,
    \o_rom_out_reg[1]_1 ,
    \o_rom_out_reg[1]_2 ,
    D,
    S,
    \o_do_reg[7] ,
    \o_rom_out_reg[2]_0 ,
    multOp__0_carry__1_i_6_0,
    multOp__0_carry__1,
    CO,
    o_mac_init,
    O,
    multOp__0_carry,
    multOp__0_carry__0,
    multOp__0_carry__0_0,
    multOp__0_carry__0_1,
    multOp__0_carry__1_0,
    \o_rom_out_reg[3]_0 ,
    s00_axi_aclk);
  output [1:0]DI;
  output [3:0]Q;
  output [2:0]\o_do_reg[6] ;
  output \o_rom_out_reg[1]_0 ;
  output [1:0]\o_rom_out_reg[1]_1 ;
  output \o_rom_out_reg[1]_2 ;
  output [0:0]D;
  output [1:0]S;
  output [3:0]\o_do_reg[7] ;
  output [2:0]\o_rom_out_reg[2]_0 ;
  input [7:0]multOp__0_carry__1_i_6_0;
  input multOp__0_carry__1;
  input [0:0]CO;
  input o_mac_init;
  input [0:0]O;
  input multOp__0_carry;
  input multOp__0_carry__0;
  input multOp__0_carry__0_0;
  input [0:0]multOp__0_carry__0_1;
  input multOp__0_carry__1_0;
  input [3:0]\o_rom_out_reg[3]_0 ;
  input s00_axi_aclk;

  wire [0:0]CO;
  wire [0:0]D;
  wire [1:0]DI;
  wire [0:0]O;
  wire [3:0]Q;
  wire [1:0]S;
  wire multOp__0_carry;
  wire multOp__0_carry__0;
  wire multOp__0_carry__0_0;
  wire [0:0]multOp__0_carry__0_1;
  wire multOp__0_carry__0_i_10_n_0;
  wire multOp__0_carry__0_i_13_n_0;
  wire multOp__0_carry__0_i_14_n_0;
  wire multOp__0_carry__0_i_9_n_0;
  wire multOp__0_carry__1;
  wire multOp__0_carry__1_0;
  wire multOp__0_carry__1_i_10_n_0;
  wire [7:0]multOp__0_carry__1_i_6_0;
  wire multOp__0_carry__1_i_7_n_0;
  wire multOp__0_carry__1_i_9_n_0;
  wire multOp__0_carry_i_8_n_0;
  wire [2:0]\o_do_reg[6] ;
  wire [3:0]\o_do_reg[7] ;
  wire o_mac_init;
  wire \o_rom_out_reg[1]_0 ;
  wire [1:0]\o_rom_out_reg[1]_1 ;
  wire \o_rom_out_reg[1]_2 ;
  wire [2:0]\o_rom_out_reg[2]_0 ;
  wire [3:0]\o_rom_out_reg[3]_0 ;
  wire s00_axi_aclk;

  LUT3 #(
    .INIT(8'hB8)) 
    \acc[11]_i_1 
       (.I0(CO),
        .I1(o_mac_init),
        .I2(O),
        .O(D));
  LUT4 #(
    .INIT(16'hEA80)) 
    multOp__0_carry__0_i_1
       (.I0(multOp__0_carry__0_i_9_n_0),
        .I1(multOp__0_carry__1_i_6_0[6]),
        .I2(Q[0]),
        .I3(multOp__0_carry__0_i_10_n_0),
        .O(\o_do_reg[6] [2]));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    multOp__0_carry__0_i_10
       (.I0(Q[1]),
        .I1(multOp__0_carry__1_i_6_0[5]),
        .I2(multOp__0_carry__1_i_6_0[3]),
        .I3(Q[3]),
        .I4(multOp__0_carry__1_i_6_0[4]),
        .I5(Q[2]),
        .O(multOp__0_carry__0_i_10_n_0));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    multOp__0_carry__0_i_12
       (.I0(Q[1]),
        .I1(multOp__0_carry__1_i_6_0[4]),
        .I2(multOp__0_carry__1_i_6_0[3]),
        .I3(Q[2]),
        .I4(multOp__0_carry__1_i_6_0[2]),
        .I5(Q[3]),
        .O(\o_rom_out_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    multOp__0_carry__0_i_13
       (.I0(Q[0]),
        .I1(multOp__0_carry__1_i_6_0[3]),
        .I2(Q[2]),
        .I3(multOp__0_carry__1_i_6_0[1]),
        .I4(multOp__0_carry__1_i_6_0[0]),
        .I5(Q[1]),
        .O(multOp__0_carry__0_i_13_n_0));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    multOp__0_carry__0_i_14
       (.I0(Q[1]),
        .I1(multOp__0_carry__1_i_6_0[3]),
        .I2(Q[3]),
        .I3(multOp__0_carry__1_i_6_0[1]),
        .I4(multOp__0_carry__1_i_6_0[2]),
        .I5(Q[2]),
        .O(multOp__0_carry__0_i_14_n_0));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    multOp__0_carry__0_i_16
       (.I0(Q[1]),
        .I1(multOp__0_carry__1_i_6_0[6]),
        .I2(multOp__0_carry__1_i_6_0[5]),
        .I3(Q[2]),
        .I4(multOp__0_carry__1_i_6_0[4]),
        .I5(Q[3]),
        .O(\o_rom_out_reg[1]_2 ));
  LUT4 #(
    .INIT(16'h8F0C)) 
    multOp__0_carry__0_i_3
       (.I0(Q[0]),
        .I1(multOp__0_carry__1_i_6_0[4]),
        .I2(multOp__0_carry__0_i_13_n_0),
        .I3(multOp__0_carry__0_i_14_n_0),
        .O(\o_do_reg[6] [1]));
  LUT4 #(
    .INIT(16'h6999)) 
    multOp__0_carry__0_i_4
       (.I0(multOp__0_carry__0_i_13_n_0),
        .I1(multOp__0_carry__0_i_14_n_0),
        .I2(multOp__0_carry__1_i_6_0[4]),
        .I3(Q[0]),
        .O(\o_do_reg[6] [0]));
  LUT5 #(
    .INIT(32'h69969696)) 
    multOp__0_carry__0_i_5
       (.I0(\o_do_reg[6] [2]),
        .I1(multOp__0_carry__1_0),
        .I2(\o_rom_out_reg[1]_2 ),
        .I3(multOp__0_carry__1_i_6_0[7]),
        .I4(Q[0]),
        .O(\o_do_reg[7] [3]));
  LUT5 #(
    .INIT(32'h69969696)) 
    multOp__0_carry__0_i_6
       (.I0(multOp__0_carry__0_1),
        .I1(multOp__0_carry__0_i_9_n_0),
        .I2(multOp__0_carry__0_i_10_n_0),
        .I3(multOp__0_carry__1_i_6_0[6]),
        .I4(Q[0]),
        .O(\o_do_reg[7] [2]));
  LUT5 #(
    .INIT(32'h69969696)) 
    multOp__0_carry__0_i_7
       (.I0(\o_do_reg[6] [1]),
        .I1(multOp__0_carry__0_0),
        .I2(\o_rom_out_reg[1]_0 ),
        .I3(multOp__0_carry__1_i_6_0[5]),
        .I4(Q[0]),
        .O(\o_do_reg[7] [1]));
  LUT6 #(
    .INIT(64'h6A55AA6AAA6AAA6A)) 
    multOp__0_carry__0_i_8
       (.I0(\o_do_reg[6] [0]),
        .I1(multOp__0_carry__1_i_6_0[0]),
        .I2(Q[3]),
        .I3(multOp__0_carry__0),
        .I4(Q[2]),
        .I5(multOp__0_carry__1_i_6_0[1]),
        .O(\o_do_reg[7] [0]));
  LUT6 #(
    .INIT(64'hF880808088000000)) 
    multOp__0_carry__0_i_9
       (.I0(Q[2]),
        .I1(multOp__0_carry__1_i_6_0[3]),
        .I2(multOp__0_carry__1_i_6_0[2]),
        .I3(Q[1]),
        .I4(multOp__0_carry__1_i_6_0[4]),
        .I5(Q[3]),
        .O(multOp__0_carry__0_i_9_n_0));
  LUT6 #(
    .INIT(64'hF8A0C00080000000)) 
    multOp__0_carry__1_i_1
       (.I0(Q[1]),
        .I1(multOp__0_carry__1_i_6_0[5]),
        .I2(multOp__0_carry__1_i_6_0[6]),
        .I3(Q[3]),
        .I4(multOp__0_carry__1_i_6_0[7]),
        .I5(Q[2]),
        .O(\o_rom_out_reg[1]_1 [1]));
  LUT6 #(
    .INIT(64'hF880808088000000)) 
    multOp__0_carry__1_i_10
       (.I0(Q[2]),
        .I1(multOp__0_carry__1_i_6_0[5]),
        .I2(multOp__0_carry__1_i_6_0[6]),
        .I3(Q[3]),
        .I4(multOp__0_carry__1_i_6_0[4]),
        .I5(Q[1]),
        .O(multOp__0_carry__1_i_10_n_0));
  LUT6 #(
    .INIT(64'h80000000A888A000)) 
    multOp__0_carry__1_i_2
       (.I0(multOp__0_carry__1_i_7_n_0),
        .I1(Q[1]),
        .I2(multOp__0_carry__1_i_6_0[4]),
        .I3(Q[3]),
        .I4(multOp__0_carry__1_i_6_0[6]),
        .I5(multOp__0_carry__1),
        .O(\o_rom_out_reg[1]_1 [0]));
  LUT6 #(
    .INIT(64'h1777880080800000)) 
    multOp__0_carry__1_i_4
       (.I0(Q[2]),
        .I1(multOp__0_carry__1_i_6_0[6]),
        .I2(multOp__0_carry__1_i_6_0[5]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(multOp__0_carry__1_i_6_0[7]),
        .O(\o_rom_out_reg[2]_0 [2]));
  LUT6 #(
    .INIT(64'h6A959595956A6A6A)) 
    multOp__0_carry__1_i_5
       (.I0(\o_rom_out_reg[1]_1 [0]),
        .I1(Q[2]),
        .I2(multOp__0_carry__1_i_6_0[7]),
        .I3(Q[3]),
        .I4(multOp__0_carry__1_i_6_0[6]),
        .I5(multOp__0_carry__1_i_9_n_0),
        .O(\o_rom_out_reg[2]_0 [1]));
  LUT6 #(
    .INIT(64'hEA80157F157FEA80)) 
    multOp__0_carry__1_i_6
       (.I0(\o_rom_out_reg[1]_2 ),
        .I1(Q[0]),
        .I2(multOp__0_carry__1_i_6_0[7]),
        .I3(multOp__0_carry__1_0),
        .I4(multOp__0_carry__1_i_7_n_0),
        .I5(multOp__0_carry__1_i_10_n_0),
        .O(\o_rom_out_reg[2]_0 [0]));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    multOp__0_carry__1_i_7
       (.I0(Q[1]),
        .I1(multOp__0_carry__1_i_6_0[7]),
        .I2(multOp__0_carry__1_i_6_0[6]),
        .I3(Q[2]),
        .I4(multOp__0_carry__1_i_6_0[5]),
        .I5(Q[3]),
        .O(multOp__0_carry__1_i_7_n_0));
  LUT6 #(
    .INIT(64'hF880808088000000)) 
    multOp__0_carry__1_i_9
       (.I0(Q[2]),
        .I1(multOp__0_carry__1_i_6_0[6]),
        .I2(multOp__0_carry__1_i_6_0[5]),
        .I3(Q[1]),
        .I4(multOp__0_carry__1_i_6_0[7]),
        .I5(Q[3]),
        .O(multOp__0_carry__1_i_9_n_0));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    multOp__0_carry_i_1
       (.I0(Q[1]),
        .I1(multOp__0_carry__1_i_6_0[2]),
        .I2(Q[2]),
        .I3(multOp__0_carry__1_i_6_0[1]),
        .I4(Q[3]),
        .I5(multOp__0_carry__1_i_6_0[0]),
        .O(DI[1]));
  LUT4 #(
    .INIT(16'h7888)) 
    multOp__0_carry_i_2
       (.I0(Q[1]),
        .I1(multOp__0_carry__1_i_6_0[1]),
        .I2(Q[2]),
        .I3(multOp__0_carry__1_i_6_0[0]),
        .O(DI[0]));
  LUT6 #(
    .INIT(64'h6AC0653F953F9AC0)) 
    multOp__0_carry_i_4
       (.I0(Q[3]),
        .I1(multOp__0_carry__1_i_6_0[2]),
        .I2(Q[1]),
        .I3(multOp__0_carry__1_i_6_0[0]),
        .I4(multOp__0_carry_i_8_n_0),
        .I5(multOp__0_carry),
        .O(S[1]));
  LUT4 #(
    .INIT(16'h7888)) 
    multOp__0_carry_i_6
       (.I0(Q[0]),
        .I1(multOp__0_carry__1_i_6_0[1]),
        .I2(Q[1]),
        .I3(multOp__0_carry__1_i_6_0[0]),
        .O(S[0]));
  LUT2 #(
    .INIT(4'h7)) 
    multOp__0_carry_i_8
       (.I0(Q[2]),
        .I1(multOp__0_carry__1_i_6_0[1]),
        .O(multOp__0_carry_i_8_n_0));
  FDRE \o_rom_out_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\o_rom_out_reg[3]_0 [0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \o_rom_out_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\o_rom_out_reg[3]_0 [1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \o_rom_out_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\o_rom_out_reg[3]_0 [2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \o_rom_out_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\o_rom_out_reg[3]_0 [3]),
        .Q(Q[3]),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "my_fir_filter_v1_0" *) 
module design_1_my_fir_filter_0_0_my_fir_filter_v1_0
   (S_AXI_AWREADY,
    S_AXI_WREADY,
    S_AXI_ARREADY,
    s00_axi_rdata,
    s00_axi_rvalid,
    s00_axi_bvalid,
    s00_axi_awaddr,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_aclk,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_wstrb,
    s00_axi_aresetn,
    s00_axi_bready,
    s00_axi_rready);
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output S_AXI_ARREADY;
  output [31:0]s00_axi_rdata;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  input [1:0]s00_axi_awaddr;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input s00_axi_aclk;
  input [31:0]s00_axi_wdata;
  input [1:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input [3:0]s00_axi_wstrb;
  input s00_axi_aresetn;
  input s00_axi_bready;
  input s00_axi_rready;

  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  design_1_my_fir_filter_0_0_my_fir_filter_v1_0_S00_AXI my_fir_filter_v1_0_S00_AXI_inst
       (.S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_WREADY(S_AXI_WREADY),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "my_fir_filter_v1_0_S00_AXI" *) 
module design_1_my_fir_filter_0_0_my_fir_filter_v1_0_S00_AXI
   (S_AXI_AWREADY,
    S_AXI_WREADY,
    S_AXI_ARREADY,
    s00_axi_rdata,
    s00_axi_rvalid,
    s00_axi_bvalid,
    s00_axi_awaddr,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_aclk,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_wstrb,
    s00_axi_aresetn,
    s00_axi_bready,
    s00_axi_rready);
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output S_AXI_ARREADY;
  output [31:0]s00_axi_rdata;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  input [1:0]s00_axi_awaddr;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input s00_axi_aclk;
  input [31:0]s00_axi_wdata;
  input [1:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input [3:0]s00_axi_wstrb;
  input s00_axi_aresetn;
  input s00_axi_bready;
  input s00_axi_rready;

  wire [18:0]C;
  wire FIR_inst_n_1;
  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire [3:2]axi_araddr;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire axi_arready0;
  wire [3:2]axi_awaddr;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire axi_awready0;
  wire axi_awready_i_1_n_0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire fir_valid_lat;
  wire fir_valid_out;
  wire [18:0]fir_y_lat;
  wire i_rst;
  wire i_valid_in;
  wire [31:0]reg_data_out;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire \slv_reg0[15]_i_1_n_0 ;
  wire \slv_reg0[23]_i_1_n_0 ;
  wire \slv_reg0[31]_i_1_n_0 ;
  wire \slv_reg0[7]_i_1_n_0 ;
  wire \slv_reg0_reg_n_0_[0] ;
  wire \slv_reg0_reg_n_0_[10] ;
  wire \slv_reg0_reg_n_0_[11] ;
  wire \slv_reg0_reg_n_0_[12] ;
  wire \slv_reg0_reg_n_0_[13] ;
  wire \slv_reg0_reg_n_0_[14] ;
  wire \slv_reg0_reg_n_0_[15] ;
  wire \slv_reg0_reg_n_0_[16] ;
  wire \slv_reg0_reg_n_0_[17] ;
  wire \slv_reg0_reg_n_0_[18] ;
  wire \slv_reg0_reg_n_0_[19] ;
  wire \slv_reg0_reg_n_0_[1] ;
  wire \slv_reg0_reg_n_0_[20] ;
  wire \slv_reg0_reg_n_0_[21] ;
  wire \slv_reg0_reg_n_0_[22] ;
  wire \slv_reg0_reg_n_0_[23] ;
  wire \slv_reg0_reg_n_0_[24] ;
  wire \slv_reg0_reg_n_0_[25] ;
  wire \slv_reg0_reg_n_0_[26] ;
  wire \slv_reg0_reg_n_0_[27] ;
  wire \slv_reg0_reg_n_0_[28] ;
  wire \slv_reg0_reg_n_0_[29] ;
  wire \slv_reg0_reg_n_0_[2] ;
  wire \slv_reg0_reg_n_0_[30] ;
  wire \slv_reg0_reg_n_0_[31] ;
  wire \slv_reg0_reg_n_0_[3] ;
  wire \slv_reg0_reg_n_0_[4] ;
  wire \slv_reg0_reg_n_0_[5] ;
  wire \slv_reg0_reg_n_0_[6] ;
  wire \slv_reg0_reg_n_0_[7] ;
  wire [31:0]slv_reg2;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire [31:0]slv_reg3;
  wire \slv_reg3[15]_i_1_n_0 ;
  wire \slv_reg3[23]_i_1_n_0 ;
  wire \slv_reg3[31]_i_1_n_0 ;
  wire \slv_reg3[7]_i_1_n_0 ;
  wire slv_reg_rden;
  wire slv_reg_wren__2;

  design_1_my_fir_filter_0_0_FIR FIR_inst
       (.E(fir_valid_out),
        .I28(C),
        .Q({i_rst,i_valid_in,\slv_reg0_reg_n_0_[7] ,\slv_reg0_reg_n_0_[6] ,\slv_reg0_reg_n_0_[5] ,\slv_reg0_reg_n_0_[4] ,\slv_reg0_reg_n_0_[3] ,\slv_reg0_reg_n_0_[2] ,\slv_reg0_reg_n_0_[1] ,\slv_reg0_reg_n_0_[0] }),
        .axi_araddr(axi_araddr),
        .fir_valid_lat(fir_valid_lat),
        .fir_valid_lat_reg(slv_reg_rden),
        .o_valid_out_reg(FIR_inst_n_1),
        .s00_axi_aclk(s00_axi_aclk));
  LUT6 #(
    .INIT(64'hBFFF8CCC8CCC8CCC)) 
    aw_en_i_1
       (.I0(S_AXI_AWREADY),
        .I1(aw_en_reg_n_0),
        .I2(s00_axi_wvalid),
        .I3(s00_axi_awvalid),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr[0]),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[2]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[3]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  FDSE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(axi_araddr[2]),
        .S(axi_awready_i_1_n_0));
  FDSE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(axi_araddr[3]),
        .S(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(S_AXI_ARREADY),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wvalid),
        .I3(aw_en_reg_n_0),
        .I4(S_AXI_AWREADY),
        .I5(axi_awaddr[2]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wvalid),
        .I3(aw_en_reg_n_0),
        .I4(S_AXI_AWREADY),
        .I5(axi_awaddr[3]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(axi_awaddr[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(axi_awaddr[3]),
        .R(axi_awready_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    axi_awready_i_2
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(aw_en_reg_n_0),
        .I3(S_AXI_AWREADY),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(S_AXI_AWREADY),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s00_axi_awvalid),
        .I1(S_AXI_AWREADY),
        .I2(S_AXI_WREADY),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_1 
       (.I0(slv_reg3[0]),
        .I1(fir_y_lat[0]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[0]),
        .I4(axi_araddr[3]),
        .I5(\slv_reg0_reg_n_0_[0] ),
        .O(reg_data_out[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[10]_i_1 
       (.I0(slv_reg3[10]),
        .I1(fir_y_lat[10]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[10]),
        .I4(axi_araddr[3]),
        .I5(\slv_reg0_reg_n_0_[10] ),
        .O(reg_data_out[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[11]_i_1 
       (.I0(slv_reg3[11]),
        .I1(fir_y_lat[11]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[11]),
        .I4(axi_araddr[3]),
        .I5(\slv_reg0_reg_n_0_[11] ),
        .O(reg_data_out[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[12]_i_1 
       (.I0(slv_reg3[12]),
        .I1(fir_y_lat[12]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[12]),
        .I4(axi_araddr[3]),
        .I5(\slv_reg0_reg_n_0_[12] ),
        .O(reg_data_out[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[13]_i_1 
       (.I0(slv_reg3[13]),
        .I1(fir_y_lat[13]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[13]),
        .I4(axi_araddr[3]),
        .I5(\slv_reg0_reg_n_0_[13] ),
        .O(reg_data_out[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[14]_i_1 
       (.I0(slv_reg3[14]),
        .I1(fir_y_lat[14]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[14]),
        .I4(axi_araddr[3]),
        .I5(\slv_reg0_reg_n_0_[14] ),
        .O(reg_data_out[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[15]_i_1 
       (.I0(slv_reg3[15]),
        .I1(fir_y_lat[15]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[15]),
        .I4(axi_araddr[3]),
        .I5(\slv_reg0_reg_n_0_[15] ),
        .O(reg_data_out[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[16]_i_1 
       (.I0(slv_reg3[16]),
        .I1(fir_y_lat[16]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[16]),
        .I4(axi_araddr[3]),
        .I5(\slv_reg0_reg_n_0_[16] ),
        .O(reg_data_out[16]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[17]_i_1 
       (.I0(slv_reg3[17]),
        .I1(fir_y_lat[17]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[17]),
        .I4(axi_araddr[3]),
        .I5(\slv_reg0_reg_n_0_[17] ),
        .O(reg_data_out[17]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[18]_i_1 
       (.I0(slv_reg3[18]),
        .I1(fir_y_lat[18]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[18]),
        .I4(axi_araddr[3]),
        .I5(\slv_reg0_reg_n_0_[18] ),
        .O(reg_data_out[18]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[19]_i_1 
       (.I0(slv_reg3[19]),
        .I1(fir_valid_lat),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[19]),
        .I4(axi_araddr[3]),
        .I5(\slv_reg0_reg_n_0_[19] ),
        .O(reg_data_out[19]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_1 
       (.I0(slv_reg3[1]),
        .I1(fir_y_lat[1]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[1]),
        .I4(axi_araddr[3]),
        .I5(\slv_reg0_reg_n_0_[1] ),
        .O(reg_data_out[1]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[20]_i_1 
       (.I0(slv_reg3[20]),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[20]),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[20] ),
        .O(reg_data_out[20]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[21]_i_1 
       (.I0(slv_reg3[21]),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[21]),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[21] ),
        .O(reg_data_out[21]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[22]_i_1 
       (.I0(slv_reg3[22]),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[22]),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[22] ),
        .O(reg_data_out[22]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[23]_i_1 
       (.I0(slv_reg3[23]),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[23]),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[23] ),
        .O(reg_data_out[23]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[24]_i_1 
       (.I0(slv_reg3[24]),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[24]),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[24] ),
        .O(reg_data_out[24]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[25]_i_1 
       (.I0(slv_reg3[25]),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[25]),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[25] ),
        .O(reg_data_out[25]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[26]_i_1 
       (.I0(slv_reg3[26]),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[26]),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[26] ),
        .O(reg_data_out[26]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[27]_i_1 
       (.I0(slv_reg3[27]),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[27]),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[27] ),
        .O(reg_data_out[27]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[28]_i_1 
       (.I0(slv_reg3[28]),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[28]),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[28] ),
        .O(reg_data_out[28]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[29]_i_1 
       (.I0(slv_reg3[29]),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[29]),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[29] ),
        .O(reg_data_out[29]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_1 
       (.I0(slv_reg3[2]),
        .I1(fir_y_lat[2]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[2]),
        .I4(axi_araddr[3]),
        .I5(\slv_reg0_reg_n_0_[2] ),
        .O(reg_data_out[2]));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[30]_i_1 
       (.I0(slv_reg3[30]),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[30]),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[30] ),
        .O(reg_data_out[30]));
  LUT3 #(
    .INIT(8'h08)) 
    \axi_rdata[31]_i_1 
       (.I0(S_AXI_ARREADY),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rvalid),
        .O(slv_reg_rden));
  LUT5 #(
    .INIT(32'hB833B800)) 
    \axi_rdata[31]_i_2 
       (.I0(slv_reg3[31]),
        .I1(axi_araddr[2]),
        .I2(slv_reg2[31]),
        .I3(axi_araddr[3]),
        .I4(\slv_reg0_reg_n_0_[31] ),
        .O(reg_data_out[31]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_1 
       (.I0(slv_reg3[3]),
        .I1(fir_y_lat[3]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[3]),
        .I4(axi_araddr[3]),
        .I5(\slv_reg0_reg_n_0_[3] ),
        .O(reg_data_out[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_1 
       (.I0(slv_reg3[4]),
        .I1(fir_y_lat[4]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[4]),
        .I4(axi_araddr[3]),
        .I5(\slv_reg0_reg_n_0_[4] ),
        .O(reg_data_out[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[5]_i_1 
       (.I0(slv_reg3[5]),
        .I1(fir_y_lat[5]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[5]),
        .I4(axi_araddr[3]),
        .I5(\slv_reg0_reg_n_0_[5] ),
        .O(reg_data_out[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[6]_i_1 
       (.I0(slv_reg3[6]),
        .I1(fir_y_lat[6]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[6]),
        .I4(axi_araddr[3]),
        .I5(\slv_reg0_reg_n_0_[6] ),
        .O(reg_data_out[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[7]_i_1 
       (.I0(slv_reg3[7]),
        .I1(fir_y_lat[7]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[7]),
        .I4(axi_araddr[3]),
        .I5(\slv_reg0_reg_n_0_[7] ),
        .O(reg_data_out[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[8]_i_1 
       (.I0(slv_reg3[8]),
        .I1(fir_y_lat[8]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[8]),
        .I4(axi_araddr[3]),
        .I5(i_valid_in),
        .O(reg_data_out[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[9]_i_1 
       (.I0(slv_reg3[9]),
        .I1(fir_y_lat[9]),
        .I2(axi_araddr[2]),
        .I3(slv_reg2[9]),
        .I4(axi_araddr[3]),
        .I5(i_rst),
        .O(reg_data_out[9]));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[0]),
        .Q(s00_axi_rdata[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[10]),
        .Q(s00_axi_rdata[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[11]),
        .Q(s00_axi_rdata[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[12]),
        .Q(s00_axi_rdata[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[13]),
        .Q(s00_axi_rdata[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[14]),
        .Q(s00_axi_rdata[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[15]),
        .Q(s00_axi_rdata[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[16]),
        .Q(s00_axi_rdata[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[17]),
        .Q(s00_axi_rdata[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[18]),
        .Q(s00_axi_rdata[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[19]),
        .Q(s00_axi_rdata[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[1]),
        .Q(s00_axi_rdata[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[20]),
        .Q(s00_axi_rdata[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[21]),
        .Q(s00_axi_rdata[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[22]),
        .Q(s00_axi_rdata[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[23]),
        .Q(s00_axi_rdata[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[24]),
        .Q(s00_axi_rdata[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[25]),
        .Q(s00_axi_rdata[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[26]),
        .Q(s00_axi_rdata[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[27]),
        .Q(s00_axi_rdata[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[28]),
        .Q(s00_axi_rdata[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[29]),
        .Q(s00_axi_rdata[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[2]),
        .Q(s00_axi_rdata[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[30]),
        .Q(s00_axi_rdata[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[31]),
        .Q(s00_axi_rdata[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[3]),
        .Q(s00_axi_rdata[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[4]),
        .Q(s00_axi_rdata[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[5]),
        .Q(s00_axi_rdata[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[6]),
        .Q(s00_axi_rdata[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[7]),
        .Q(s00_axi_rdata[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[8]),
        .Q(s00_axi_rdata[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[9]),
        .Q(s00_axi_rdata[9]),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(s00_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .I2(s00_axi_rvalid),
        .I3(s00_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s00_axi_rvalid),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    axi_wready_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(aw_en_reg_n_0),
        .I3(S_AXI_WREADY),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(S_AXI_WREADY),
        .R(axi_awready_i_1_n_0));
  FDRE fir_valid_lat_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(FIR_inst_n_1),
        .Q(fir_valid_lat),
        .R(axi_awready_i_1_n_0));
  FDRE \fir_y_lat_reg[0] 
       (.C(s00_axi_aclk),
        .CE(fir_valid_out),
        .D(C[0]),
        .Q(fir_y_lat[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \fir_y_lat_reg[10] 
       (.C(s00_axi_aclk),
        .CE(fir_valid_out),
        .D(C[10]),
        .Q(fir_y_lat[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \fir_y_lat_reg[11] 
       (.C(s00_axi_aclk),
        .CE(fir_valid_out),
        .D(C[11]),
        .Q(fir_y_lat[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \fir_y_lat_reg[12] 
       (.C(s00_axi_aclk),
        .CE(fir_valid_out),
        .D(C[12]),
        .Q(fir_y_lat[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \fir_y_lat_reg[13] 
       (.C(s00_axi_aclk),
        .CE(fir_valid_out),
        .D(C[13]),
        .Q(fir_y_lat[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \fir_y_lat_reg[14] 
       (.C(s00_axi_aclk),
        .CE(fir_valid_out),
        .D(C[14]),
        .Q(fir_y_lat[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \fir_y_lat_reg[15] 
       (.C(s00_axi_aclk),
        .CE(fir_valid_out),
        .D(C[15]),
        .Q(fir_y_lat[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \fir_y_lat_reg[16] 
       (.C(s00_axi_aclk),
        .CE(fir_valid_out),
        .D(C[16]),
        .Q(fir_y_lat[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \fir_y_lat_reg[17] 
       (.C(s00_axi_aclk),
        .CE(fir_valid_out),
        .D(C[17]),
        .Q(fir_y_lat[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \fir_y_lat_reg[18] 
       (.C(s00_axi_aclk),
        .CE(fir_valid_out),
        .D(C[18]),
        .Q(fir_y_lat[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \fir_y_lat_reg[1] 
       (.C(s00_axi_aclk),
        .CE(fir_valid_out),
        .D(C[1]),
        .Q(fir_y_lat[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \fir_y_lat_reg[2] 
       (.C(s00_axi_aclk),
        .CE(fir_valid_out),
        .D(C[2]),
        .Q(fir_y_lat[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \fir_y_lat_reg[3] 
       (.C(s00_axi_aclk),
        .CE(fir_valid_out),
        .D(C[3]),
        .Q(fir_y_lat[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \fir_y_lat_reg[4] 
       (.C(s00_axi_aclk),
        .CE(fir_valid_out),
        .D(C[4]),
        .Q(fir_y_lat[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \fir_y_lat_reg[5] 
       (.C(s00_axi_aclk),
        .CE(fir_valid_out),
        .D(C[5]),
        .Q(fir_y_lat[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \fir_y_lat_reg[6] 
       (.C(s00_axi_aclk),
        .CE(fir_valid_out),
        .D(C[6]),
        .Q(fir_y_lat[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \fir_y_lat_reg[7] 
       (.C(s00_axi_aclk),
        .CE(fir_valid_out),
        .D(C[7]),
        .Q(fir_y_lat[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \fir_y_lat_reg[8] 
       (.C(s00_axi_aclk),
        .CE(fir_valid_out),
        .D(C[8]),
        .Q(fir_y_lat[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \fir_y_lat_reg[9] 
       (.C(s00_axi_aclk),
        .CE(fir_valid_out),
        .D(C[9]),
        .Q(fir_y_lat[9]),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[2]),
        .I3(s00_axi_wstrb[1]),
        .O(\slv_reg0[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[2]),
        .I3(s00_axi_wstrb[2]),
        .O(\slv_reg0[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[2]),
        .I3(s00_axi_wstrb[3]),
        .O(\slv_reg0[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg0[31]_i_2 
       (.I0(s00_axi_awvalid),
        .I1(S_AXI_AWREADY),
        .I2(S_AXI_WREADY),
        .I3(s00_axi_wvalid),
        .O(slv_reg_wren__2));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[2]),
        .I3(s00_axi_wstrb[0]),
        .O(\slv_reg0[7]_i_1_n_0 ));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(\slv_reg0_reg_n_0_[0] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\slv_reg0_reg_n_0_[10] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\slv_reg0_reg_n_0_[11] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\slv_reg0_reg_n_0_[12] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\slv_reg0_reg_n_0_[13] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\slv_reg0_reg_n_0_[14] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\slv_reg0_reg_n_0_[15] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\slv_reg0_reg_n_0_[16] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\slv_reg0_reg_n_0_[17] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\slv_reg0_reg_n_0_[18] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\slv_reg0_reg_n_0_[19] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\slv_reg0_reg_n_0_[1] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\slv_reg0_reg_n_0_[20] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\slv_reg0_reg_n_0_[21] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\slv_reg0_reg_n_0_[22] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg0_reg_n_0_[23] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg0_reg_n_0_[24] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\slv_reg0_reg_n_0_[25] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\slv_reg0_reg_n_0_[26] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\slv_reg0_reg_n_0_[27] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\slv_reg0_reg_n_0_[28] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\slv_reg0_reg_n_0_[29] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\slv_reg0_reg_n_0_[2] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\slv_reg0_reg_n_0_[30] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\slv_reg0_reg_n_0_[31] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\slv_reg0_reg_n_0_[3] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\slv_reg0_reg_n_0_[4] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\slv_reg0_reg_n_0_[5] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\slv_reg0_reg_n_0_[6] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\slv_reg0_reg_n_0_[7] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(i_valid_in),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(i_rst),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(axi_awaddr[3]),
        .I2(s00_axi_wstrb[1]),
        .I3(axi_awaddr[2]),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(axi_awaddr[3]),
        .I2(s00_axi_wstrb[2]),
        .I3(axi_awaddr[2]),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(axi_awaddr[3]),
        .I2(s00_axi_wstrb[3]),
        .I3(axi_awaddr[2]),
        .O(\slv_reg2[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(axi_awaddr[3]),
        .I2(s00_axi_wstrb[0]),
        .I3(axi_awaddr[2]),
        .O(\slv_reg2[7]_i_1_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg2[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg2[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg2[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg2[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg2[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg2[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg2[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg2[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg2[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg2[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg2[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg2[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg2[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg2[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg2[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg2[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg2[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg2[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg2[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg2[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg2[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg2[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg2[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg2[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg2[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg2[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg2[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg2[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg2[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg2[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg2[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg2[9]),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb[1]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[3]),
        .O(\slv_reg3[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb[2]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[3]),
        .O(\slv_reg3[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb[3]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[3]),
        .O(\slv_reg3[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(s00_axi_wstrb[0]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[3]),
        .O(\slv_reg3[7]_i_1_n_0 ));
  FDRE \slv_reg3_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg3[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg3[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg3[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg3[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg3[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg3[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg3[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg3[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg3[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg3[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg3[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg3[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg3[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg3[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg3[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg3[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg3[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg3[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg3[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg3[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg3[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg3[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg3[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg3[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg3[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg3[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg3[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg3[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg3[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg3[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg3[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg3[9]),
        .R(axi_awready_i_1_n_0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
