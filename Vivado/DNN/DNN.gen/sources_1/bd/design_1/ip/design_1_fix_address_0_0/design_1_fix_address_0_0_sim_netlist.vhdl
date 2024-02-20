-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
-- Date        : Fri Jun  2 03:17:29 2023
-- Host        : LAPTOP-4TN2N2PV running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/hls/C++/test/Vivado/DNN/DNN.gen/sources_1/bd/design_1/ip/design_1_fix_address_0_0/design_1_fix_address_0_0_sim_netlist.vhdl
-- Design      : design_1_fix_address_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_fix_address_0_0 is
  port (
    addr_in : in STD_LOGIC_VECTOR ( 6 downto 0 );
    addr_out : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_fix_address_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_fix_address_0_0 : entity is "design_1_fix_address_0_0,fix_address,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_fix_address_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_fix_address_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_fix_address_0_0 : entity is "fix_address,Vivado 2021.1";
end design_1_fix_address_0_0;

architecture STRUCTURE of design_1_fix_address_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^addr_in\ : STD_LOGIC_VECTOR ( 6 downto 0 );
begin
  \^addr_in\(6 downto 0) <= addr_in(6 downto 0);
  addr_out(31) <= \<const0>\;
  addr_out(30) <= \<const0>\;
  addr_out(29) <= \<const0>\;
  addr_out(28) <= \<const0>\;
  addr_out(27) <= \<const0>\;
  addr_out(26) <= \<const0>\;
  addr_out(25) <= \<const0>\;
  addr_out(24) <= \<const0>\;
  addr_out(23) <= \<const0>\;
  addr_out(22) <= \<const0>\;
  addr_out(21) <= \<const0>\;
  addr_out(20) <= \<const0>\;
  addr_out(19) <= \<const0>\;
  addr_out(18) <= \<const0>\;
  addr_out(17) <= \<const0>\;
  addr_out(16) <= \<const0>\;
  addr_out(15) <= \<const0>\;
  addr_out(14) <= \<const0>\;
  addr_out(13) <= \<const0>\;
  addr_out(12) <= \<const0>\;
  addr_out(11) <= \<const0>\;
  addr_out(10) <= \<const0>\;
  addr_out(9) <= \<const0>\;
  addr_out(8 downto 2) <= \^addr_in\(6 downto 0);
  addr_out(1) <= \<const0>\;
  addr_out(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
end STRUCTURE;
