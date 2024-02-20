// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
// Date        : Fri Jun  2 03:17:29 2023
// Host        : LAPTOP-4TN2N2PV running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/hls/C++/test/Vivado/DNN/DNN.gen/sources_1/bd/design_1/ip/design_1_fix_address_0_0/design_1_fix_address_0_0_stub.v
// Design      : design_1_fix_address_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "fix_address,Vivado 2021.1" *)
module design_1_fix_address_0_0(addr_in, addr_out)
/* synthesis syn_black_box black_box_pad_pin="addr_in[6:0],addr_out[31:0]" */;
  input [6:0]addr_in;
  output [31:0]addr_out;
endmodule
