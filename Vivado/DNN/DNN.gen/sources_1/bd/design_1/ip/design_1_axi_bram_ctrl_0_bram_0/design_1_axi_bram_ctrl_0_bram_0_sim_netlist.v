// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Fri Jun  2 03:15:57 2023
// Host        : LAPTOP-4TN2N2PV running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/hls/C++/test/Vivado/DNN/DNN.gen/sources_1/bd/design_1/ip/design_1_axi_bram_ctrl_0_bram_0/design_1_axi_bram_ctrl_0_bram_0_sim_netlist.v
// Design      : design_1_axi_bram_ctrl_0_bram_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_axi_bram_ctrl_0_bram_0,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module design_1_axi_bram_ctrl_0_bram_0
   (clka,
    rsta,
    ena,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    web,
    addrb,
    dinb,
    doutb,
    rsta_busy,
    rstb_busy);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) input rsta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [3:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [31:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE BRAM_CTRL, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB RST" *) input rstb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [3:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [31:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [31:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [31:0]doutb;
  output rsta_busy;
  output rstb_busy;

  wire [31:0]addra;
  wire [31:0]addrb;
  wire clka;
  wire clkb;
  wire [31:0]dina;
  wire [31:0]dinb;
  wire [31:0]douta;
  wire [31:0]doutb;
  wire ena;
  wire enb;
  wire rsta;
  wire rsta_busy;
  wire rstb;
  wire rstb_busy;
  wire [3:0]wea;
  wire [3:0]web;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "32" *) 
  (* C_ADDRB_WIDTH = "32" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "2" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "1" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     10.7492 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "1" *) 
  (* C_HAS_RSTB = "1" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "NONE" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "2048" *) 
  (* C_READ_DEPTH_B = "2048" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "1" *) 
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "4" *) 
  (* C_WEB_WIDTH = "4" *) 
  (* C_WRITE_DEPTH_A = "2048" *) 
  (* C_WRITE_DEPTH_B = "2048" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  design_1_axi_bram_ctrl_0_bram_0_blk_mem_gen_v8_4_4 U0
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addra[12:2],1'b0,1'b0}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addrb[12:2],1'b0,1'b0}),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[31:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(rsta),
        .rsta_busy(rsta_busy),
        .rstb(rstb),
        .rstb_busy(rstb_busy),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[31:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(web));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2021.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
sbNGmomEbP78s1hfxgX3P1Jo01EKJk0i0C7iGpF+Yibr9EK0s4mcIifHDN/ag4jpPwW3bPllMHvn
U8AEY3mO8hCXVVoilrcRuCaEna/98GycCzy4G7FnYMfowsJb5k9ifRdE2jnurzeTLFbupUSpDF0H
Rl3Ci3DTGeExAZZ9UQE=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
zZZZoIprBFYfDWmCCcduELBM7HU98/+rvP9g8+y1mYyD3r3HEDm4ZwehwZvPoYWqoGXYoFqWZh3h
utt0abIfUW9/oF2vJ9hXn7nArtcm/Eui18rPYqp3aj/AItPNVXojk9zp7uFZLPTqcyig5v3Jtenl
qPnLi1Z84ZCW7NIRw6Y0bgmw6z26E8VPbYrZHs+0YW8Sztjo6CdIrQeEL5WBDolA0aHoKHWRZyFs
l5eRDmBAolj2uF07t/3eY3J7cYJmEDaoZ0TR1qcz25VFNu0OlcrEJ19IT+QdAxTah4jqJtknGZrT
6lUMwDZ7dBQwF1EuaE6p90gGNERhGAsbHLdvaw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
KUbz0Iu2faeWqD6HFeuGLtSOAlqZmpKCCJfzym8tkcWUUNgNMn2mYvx6PTM7j4tyig8JdUG3uZYs
NfPgAsNXQtTI7b19u9CkMks9jR+oEzX1rW7QtTvSj/nHZLg2smoFwuB5Ieb7/B8IIs1NTUrIz6Rc
itLQVG+L+GMziamsrx4=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
G7XYdRx9VGclyxTEtwMG+rjJHV8bfBxEGdkcN82UL3koN3Dt0M5AWkzEvHcskt1W0hTOjyYgmvYj
/p70w1nz96tlg226+e4UubpRmBH9QXBBX6UmqIwSiHj9H+XI1yNfTIdlwBKGQvfzwCAMwBwrrrGL
/804k5Ux3RhWRvwezZB4+sj9DFm4akREVXmNpfeqjI2X02LU/MxWMUbKxvjJnD9YxikAAO6ccTd6
8DKv76V76MEFVyXc7E2FeQDToW3lqkRTa6MTpIXbYSekRihQC+qPVuhPUneA4kepvQDfgFYE8/Ir
gu5gK+s/qNfuXhJUAqyLjslrUcY4+XD9ckpSvQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YXkYRXpUPv/tETnwnThdQ46UaPmI23lN9vrxHQjIOhq3WNJCuz7TYZK9hyzSdo6k0U6QE9ihQy2L
rYZg68RGbrK8bzlcnQ41r18LZb4GYlAn9PH7IrF1B+aHm3578doOZHf8wzUE2s+d1aHQIn6VIZjL
14pCTAjErJfMO13fgX6h8sgxb4GFC3eIORmkrq2J/fB9HALyh/qdGiLi7DejMfmdsssbOcPQTZUh
6Belf7fHTkIEr9B44rFZgMyrMVx4N9p0XpXD3JPe7Xeg6a3jxdqxHATaMuLdIa4s+ZiAz1TRx0EO
FFihCnLLb7weBBITQyTIncRL817BrF/ZXZD8Yw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_01", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
g7FbNw1ywd4TBNHq8OmK/4zoKI/t7vKmyT8R8SeiyUtKywhn0/7DZ/lV0Lf4IhY8X5MYsKtOQ5l6
DIl3fxtOhxpi8NHn9Nw3Nfb8NnS38Zuy6DSpwOL0f/GSmUSf2/YdB5Ben6xibQT0Oy//oBl5/1kR
pV5fWjj8WRgI6cnmfyj3g1MxepxPu1A/UHxlm1/i9yUHHi114N/hEQ0iujjrn6GxfZSiJUVF+r6c
rnxD//eOAl/YaxhdU/KhUkfsMn+MxtA5m6hTYYE0bnze8rpmEU5UGYKyY0p8KUs+MgsdTe+m/7gV
HSf6puBqQmEa1qksRfl742aL9B9y169or7Jp9Q==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kd1A2zIphLxXB0RyfHIqLkHXfWl0n38vROERuDghYrhK0ItcWGEP0XBrri6k1VZCSPYwiSu//pM6
83BfcPKbk09/A+ksvDIa3xS8Tg7DJK2AS+0pdnzBSjVWh+QD+glA3Hjk6LG9OMbjXyqD3hnMKacA
VRMwxKktV+KT5NXj5a7fMxXjo9exc0xM+woUJiSYs8onoUSwfBeH5/xhUy+iu+w0/OOydQE2LXZ0
1y+RObiz5C22dD4GGCfuvUCGAthYpUf633ZxRYN45mmAn5PxPsH4o+l2GhH/50Gu/VPVoAWDhgXQ
e93oPri++HinkK2uvDhDl4PI9HtRkq11Ky3uXQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
gDrrFgXHVyBo+Cn0bYn+SOSOCXPg7besukY6l0JmA/nu4gap105Wxbg11c7TJZ9ctHVLc5DXAxr+
EIvFpAIepoZBREtMjTlaIdNJ8k1nUpwAv2jaQeseq1TudTjugV1jtOYYk0RKd88z/6SJ8t9urDW0
yKqsfEWU3PwGcUGHOWtTn2hfAceNznmEIFWLmFmzSQJ1hQNdsIQn3jHnfMVYu8cAz5xvPVQWYyJW
pMHXhNYk6GyAjIshh991slb1g01K1ilR2tKD1EmxH5WGrX9BEUqBjHQo6uluC/d3mvcEQ5nJ1v+P
hIlj4qzUQT1wXjpk6d/BvNx7LyWmj5iq35dzNm+cdhfGwaFGG//vgmB6D/dFfs2BYSjHsa6VlpVM
7e2OgoFenuG9p1SVPI6gAs2MuFtnDKfxW7jS3RGhvsquS3tg1iFCDH/OU7E5aWfY7twF3yyN6G10
l72RZw62DfNoCdyUMG9sA8nc4qf6dEhyrr5S6XxpJhoBDJvkeq0TCUQZ

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XR7vRF1m+9DS2Pv4r/O4uHwmvtXkChnKbsJCYczn1dvkZbcZSbBm/2UH78dXUaNorOh9XAuCvSjb
ER73y7e0anAfaIf1tJ9Y9pIb8EuNxGS/Pqdvg36cWarwGac9tsscdv/HWfb5Z+qWEk0/uFcLI7pH
CZO7fF2/ONQjA0NtUFBjW4idlx8WrySIuJgDs4jyGkMhbHR3U/ghF1YhMhwgwsbbcptfC1XLrIqQ
OecZnZu8E2hyc5eK/ccYdKcHnXoL55z1p5amI6Fuvz0wKTz2QQ/mwXodfGjEC1ZRWwTn7zCFM91M
qrA1Is49i6pSa7/VICjgn8ULMT1oKGfJLPm7hg==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 59984)
`pragma protect data_block
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
ahikm/PaOsepJatYFkgEQcBQc1U=
`pragma protect end_protected
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
