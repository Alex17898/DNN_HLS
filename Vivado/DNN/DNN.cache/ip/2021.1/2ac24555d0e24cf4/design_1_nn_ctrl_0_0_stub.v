// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Fri Jun  2 03:17:51 2023
// Host        : LAPTOP-4TN2N2PV running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_nn_ctrl_0_0_stub.v
// Design      : design_1_nn_ctrl_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "nn_ctrl,Vivado 2021.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(i_Clk, ap_ready, ap_start, ap_done, ap_idle, 
  ap_rst, rstb_busy, led_ctrl1, led_ctrl2, led_ctrl3, led_ctrl4, nn_res_in)
/* synthesis syn_black_box black_box_pad_pin="i_Clk,ap_ready,ap_start,ap_done,ap_idle,ap_rst,rstb_busy,led_ctrl1,led_ctrl2,led_ctrl3,led_ctrl4,nn_res_in[31:0]" */;
  input i_Clk;
  input ap_ready;
  output ap_start;
  input ap_done;
  input ap_idle;
  output ap_rst;
  input rstb_busy;
  output led_ctrl1;
  output led_ctrl2;
  output led_ctrl3;
  output led_ctrl4;
  input [31:0]nn_res_in;
endmodule
