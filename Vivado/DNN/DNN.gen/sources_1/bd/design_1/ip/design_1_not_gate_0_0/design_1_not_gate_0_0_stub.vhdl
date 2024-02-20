-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
-- Date        : Fri Jun  2 03:15:44 2023
-- Host        : LAPTOP-4TN2N2PV running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/hls/C++/test/Vivado/DNN/DNN.gen/sources_1/bd/design_1/ip/design_1_not_gate_0_0/design_1_not_gate_0_0_stub.vhdl
-- Design      : design_1_not_gate_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_not_gate_0_0 is
  Port ( 
    i_in : in STD_LOGIC;
    o_out : out STD_LOGIC
  );

end design_1_not_gate_0_0;

architecture stub of design_1_not_gate_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "i_in,o_out";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "not_gate,Vivado 2021.1";
begin
end;
