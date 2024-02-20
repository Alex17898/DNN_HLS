// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Fri Jun  2 03:21:52 2023
// Host        : LAPTOP-4TN2N2PV running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/hls/C++/test/Vivado/DNN/DNN.gen/sources_1/bd/design_1/ip/design_1_DNN_0_0/design_1_DNN_0_0_stub.v
// Design      : design_1_DNN_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "DNN,Vivado 2021.1" *)
module design_1_DNN_0_0(input_r_ce0, ap_clk, ap_rst, ap_start, ap_done, 
  ap_idle, ap_ready, ap_return, input_r_address0, input_r_q0)
/* synthesis syn_black_box black_box_pad_pin="input_r_ce0,ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,ap_return[31:0],input_r_address0[6:0],input_r_q0[31:0]" */;
  output input_r_ce0;
  input ap_clk;
  input ap_rst;
  input ap_start;
  output ap_done;
  output ap_idle;
  output ap_ready;
  output [31:0]ap_return;
  output [6:0]input_r_address0;
  input [31:0]input_r_q0;
endmodule
