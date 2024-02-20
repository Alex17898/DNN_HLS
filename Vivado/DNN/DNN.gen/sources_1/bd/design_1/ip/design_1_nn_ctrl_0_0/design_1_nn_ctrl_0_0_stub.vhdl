-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
-- Date        : Fri Jun  2 03:17:52 2023
-- Host        : LAPTOP-4TN2N2PV running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/hls/C++/test/Vivado/DNN/DNN.gen/sources_1/bd/design_1/ip/design_1_nn_ctrl_0_0/design_1_nn_ctrl_0_0_stub.vhdl
-- Design      : design_1_nn_ctrl_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_nn_ctrl_0_0 is
  Port ( 
    i_Clk : in STD_LOGIC;
    ap_ready : in STD_LOGIC;
    ap_start : out STD_LOGIC;
    ap_done : in STD_LOGIC;
    ap_idle : in STD_LOGIC;
    ap_rst : out STD_LOGIC;
    rstb_busy : in STD_LOGIC;
    led_ctrl1 : out STD_LOGIC;
    led_ctrl2 : out STD_LOGIC;
    led_ctrl3 : out STD_LOGIC;
    led_ctrl4 : out STD_LOGIC;
    nn_res_in : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end design_1_nn_ctrl_0_0;

architecture stub of design_1_nn_ctrl_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "i_Clk,ap_ready,ap_start,ap_done,ap_idle,ap_rst,rstb_busy,led_ctrl1,led_ctrl2,led_ctrl3,led_ctrl4,nn_res_in[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "nn_ctrl,Vivado 2021.1";
begin
end;
