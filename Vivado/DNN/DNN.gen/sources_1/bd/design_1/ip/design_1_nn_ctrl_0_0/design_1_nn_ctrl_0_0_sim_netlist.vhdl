-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
-- Date        : Fri Jun  2 03:17:52 2023
-- Host        : LAPTOP-4TN2N2PV running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/hls/C++/test/Vivado/DNN/DNN.gen/sources_1/bd/design_1/ip/design_1_nn_ctrl_0_0/design_1_nn_ctrl_0_0_sim_netlist.vhdl
-- Design      : design_1_nn_ctrl_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_nn_ctrl_0_0_nn_ctrl is
  port (
    ap_start : out STD_LOGIC;
    led_ctrl4 : out STD_LOGIC;
    led_ctrl1 : out STD_LOGIC;
    led_ctrl2 : out STD_LOGIC;
    led_ctrl3 : out STD_LOGIC;
    nn_res_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_Clk : in STD_LOGIC;
    ap_idle : in STD_LOGIC;
    ap_ready : in STD_LOGIC;
    rstb_busy : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_nn_ctrl_0_0_nn_ctrl : entity is "nn_ctrl";
end design_1_nn_ctrl_0_0_nn_ctrl;

architecture STRUCTURE of design_1_nn_ctrl_0_0_nn_ctrl is
  signal \cnt0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \cnt0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \cnt0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \cnt0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \cnt0_carry__0_n_0\ : STD_LOGIC;
  signal \cnt0_carry__0_n_1\ : STD_LOGIC;
  signal \cnt0_carry__0_n_2\ : STD_LOGIC;
  signal \cnt0_carry__0_n_3\ : STD_LOGIC;
  signal \cnt0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \cnt0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \cnt0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \cnt0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \cnt0_carry__1_n_0\ : STD_LOGIC;
  signal \cnt0_carry__1_n_1\ : STD_LOGIC;
  signal \cnt0_carry__1_n_2\ : STD_LOGIC;
  signal \cnt0_carry__1_n_3\ : STD_LOGIC;
  signal \cnt0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \cnt0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \cnt0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \cnt0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \cnt0_carry__2_n_1\ : STD_LOGIC;
  signal \cnt0_carry__2_n_2\ : STD_LOGIC;
  signal \cnt0_carry__2_n_3\ : STD_LOGIC;
  signal cnt0_carry_i_1_n_0 : STD_LOGIC;
  signal cnt0_carry_i_2_n_0 : STD_LOGIC;
  signal cnt0_carry_i_3_n_0 : STD_LOGIC;
  signal cnt0_carry_i_4_n_0 : STD_LOGIC;
  signal cnt0_carry_i_5_n_0 : STD_LOGIC;
  signal cnt0_carry_n_0 : STD_LOGIC;
  signal cnt0_carry_n_1 : STD_LOGIC;
  signal cnt0_carry_n_2 : STD_LOGIC;
  signal cnt0_carry_n_3 : STD_LOGIC;
  signal \cnt[0]_i_2_n_0\ : STD_LOGIC;
  signal cnt_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \cnt_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal led_ctrl1_INST_0_i_1_n_0 : STD_LOGIC;
  signal led_ctrl1_INST_0_i_2_n_0 : STD_LOGIC;
  signal led_ctrl1_INST_0_i_3_n_0 : STD_LOGIC;
  signal led_ctrl1_INST_0_i_4_n_0 : STD_LOGIC;
  signal led_ctrl1_INST_0_i_5_n_0 : STD_LOGIC;
  signal led_ctrl1_INST_0_i_6_n_0 : STD_LOGIC;
  signal led_ctrl1_INST_0_i_7_n_0 : STD_LOGIC;
  signal led_ctrl2_INST_0_i_1_n_0 : STD_LOGIC;
  signal led_ctrl2_INST_0_i_2_n_0 : STD_LOGIC;
  signal led_ctrl2_INST_0_i_3_n_0 : STD_LOGIC;
  signal led_ctrl2_INST_0_i_4_n_0 : STD_LOGIC;
  signal led_ctrl2_INST_0_i_5_n_0 : STD_LOGIC;
  signal led_ctrl2_INST_0_i_6_n_0 : STD_LOGIC;
  signal led_ctrl2_INST_0_i_7_n_0 : STD_LOGIC;
  signal led_ctrl2_INST_0_i_8_n_0 : STD_LOGIC;
  signal led_ctrl3_INST_0_i_1_n_0 : STD_LOGIC;
  signal led_ctrl3_INST_0_i_2_n_0 : STD_LOGIC;
  signal led_ctrl3_INST_0_i_3_n_0 : STD_LOGIC;
  signal led_ctrl3_INST_0_i_4_n_0 : STD_LOGIC;
  signal led_ctrl3_INST_0_i_5_n_0 : STD_LOGIC;
  signal led_ctrl3_INST_0_i_6_n_0 : STD_LOGIC;
  signal led_ctrl3_INST_0_i_7_n_0 : STD_LOGIC;
  signal led_ctrl3_INST_0_i_8_n_0 : STD_LOGIC;
  signal led_ctrl3_INST_0_i_9_n_0 : STD_LOGIC;
  signal led_ctrl4_INST_0_i_1_n_0 : STD_LOGIC;
  signal led_ctrl4_INST_0_i_2_n_0 : STD_LOGIC;
  signal led_ctrl4_INST_0_i_3_n_0 : STD_LOGIC;
  signal led_ctrl4_INST_0_i_4_n_0 : STD_LOGIC;
  signal led_ctrl4_INST_0_i_5_n_0 : STD_LOGIC;
  signal led_ctrl4_INST_0_i_6_n_0 : STD_LOGIC;
  signal led_ctrl4_INST_0_i_7_n_0 : STD_LOGIC;
  signal led_ctrl4_INST_0_i_8_n_0 : STD_LOGIC;
  signal sel : STD_LOGIC;
  signal start_signal : STD_LOGIC;
  signal \start_signal1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \start_signal1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \start_signal1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \start_signal1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \start_signal1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \start_signal1_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \start_signal1_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \start_signal1_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \start_signal1_carry__0_n_0\ : STD_LOGIC;
  signal \start_signal1_carry__0_n_1\ : STD_LOGIC;
  signal \start_signal1_carry__0_n_2\ : STD_LOGIC;
  signal \start_signal1_carry__0_n_3\ : STD_LOGIC;
  signal \start_signal1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \start_signal1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \start_signal1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \start_signal1_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \start_signal1_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \start_signal1_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \start_signal1_carry__1_i_7_n_0\ : STD_LOGIC;
  signal \start_signal1_carry__1_i_8_n_0\ : STD_LOGIC;
  signal \start_signal1_carry__1_n_0\ : STD_LOGIC;
  signal \start_signal1_carry__1_n_1\ : STD_LOGIC;
  signal \start_signal1_carry__1_n_2\ : STD_LOGIC;
  signal \start_signal1_carry__1_n_3\ : STD_LOGIC;
  signal \start_signal1_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \start_signal1_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \start_signal1_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \start_signal1_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \start_signal1_carry__2_i_5_n_0\ : STD_LOGIC;
  signal \start_signal1_carry__2_i_6_n_0\ : STD_LOGIC;
  signal \start_signal1_carry__2_i_7_n_0\ : STD_LOGIC;
  signal \start_signal1_carry__2_i_8_n_0\ : STD_LOGIC;
  signal \start_signal1_carry__2_n_0\ : STD_LOGIC;
  signal \start_signal1_carry__2_n_1\ : STD_LOGIC;
  signal \start_signal1_carry__2_n_2\ : STD_LOGIC;
  signal \start_signal1_carry__2_n_3\ : STD_LOGIC;
  signal start_signal1_carry_i_1_n_0 : STD_LOGIC;
  signal start_signal1_carry_i_2_n_0 : STD_LOGIC;
  signal start_signal1_carry_i_3_n_0 : STD_LOGIC;
  signal start_signal1_carry_i_4_n_0 : STD_LOGIC;
  signal start_signal1_carry_i_5_n_0 : STD_LOGIC;
  signal start_signal1_carry_i_6_n_0 : STD_LOGIC;
  signal start_signal1_carry_i_7_n_0 : STD_LOGIC;
  signal start_signal1_carry_i_8_n_0 : STD_LOGIC;
  signal start_signal1_carry_n_0 : STD_LOGIC;
  signal start_signal1_carry_n_1 : STD_LOGIC;
  signal start_signal1_carry_n_2 : STD_LOGIC;
  signal start_signal1_carry_n_3 : STD_LOGIC;
  signal start_signal_reg_i_1_n_0 : STD_LOGIC;
  signal NLW_cnt0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_cnt0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_cnt0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_cnt0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_cnt_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_start_signal1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_start_signal1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_start_signal1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_start_signal1_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of cnt0_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \cnt0_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \cnt0_carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \cnt0_carry__2\ : label is 11;
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \cnt_reg[0]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \cnt_reg[12]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \cnt_reg[16]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \cnt_reg[20]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \cnt_reg[24]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \cnt_reg[28]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \cnt_reg[4]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \cnt_reg[8]_i_1\ : label is 11;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of led_ctrl1_INST_0_i_5 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of led_ctrl1_INST_0_i_7 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of led_ctrl2_INST_0_i_6 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of led_ctrl3_INST_0_i_6 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of led_ctrl3_INST_0_i_7 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of led_ctrl4_INST_0_i_7 : label is "soft_lutpair0";
  attribute COMPARATOR_THRESHOLD of start_signal1_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \start_signal1_carry__0\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \start_signal1_carry__1\ : label is 11;
  attribute COMPARATOR_THRESHOLD of \start_signal1_carry__2\ : label is 11;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of start_signal_reg : label is "LD";
begin
\/i_\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \start_signal1_carry__2_n_0\,
      I1 => ap_idle,
      I2 => ap_ready,
      O => start_signal
    );
cnt0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => cnt0_carry_n_0,
      CO(2) => cnt0_carry_n_1,
      CO(1) => cnt0_carry_n_2,
      CO(0) => cnt0_carry_n_3,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => cnt0_carry_i_1_n_0,
      O(3 downto 0) => NLW_cnt0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => cnt0_carry_i_2_n_0,
      S(2) => cnt0_carry_i_3_n_0,
      S(1) => cnt0_carry_i_4_n_0,
      S(0) => cnt0_carry_i_5_n_0
    );
\cnt0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => cnt0_carry_n_0,
      CO(3) => \cnt0_carry__0_n_0\,
      CO(2) => \cnt0_carry__0_n_1\,
      CO(1) => \cnt0_carry__0_n_2\,
      CO(0) => \cnt0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_cnt0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \cnt0_carry__0_i_1_n_0\,
      S(2) => \cnt0_carry__0_i_2_n_0\,
      S(1) => \cnt0_carry__0_i_3_n_0\,
      S(0) => \cnt0_carry__0_i_4_n_0\
    );
\cnt0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_reg(14),
      I1 => cnt_reg(15),
      O => \cnt0_carry__0_i_1_n_0\
    );
\cnt0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_reg(12),
      I1 => cnt_reg(13),
      O => \cnt0_carry__0_i_2_n_0\
    );
\cnt0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_reg(10),
      I1 => cnt_reg(11),
      O => \cnt0_carry__0_i_3_n_0\
    );
\cnt0_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_reg(8),
      I1 => cnt_reg(9),
      O => \cnt0_carry__0_i_4_n_0\
    );
\cnt0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt0_carry__0_n_0\,
      CO(3) => \cnt0_carry__1_n_0\,
      CO(2) => \cnt0_carry__1_n_1\,
      CO(1) => \cnt0_carry__1_n_2\,
      CO(0) => \cnt0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_cnt0_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \cnt0_carry__1_i_1_n_0\,
      S(2) => \cnt0_carry__1_i_2_n_0\,
      S(1) => \cnt0_carry__1_i_3_n_0\,
      S(0) => \cnt0_carry__1_i_4_n_0\
    );
\cnt0_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_reg(22),
      I1 => cnt_reg(23),
      O => \cnt0_carry__1_i_1_n_0\
    );
\cnt0_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_reg(20),
      I1 => cnt_reg(21),
      O => \cnt0_carry__1_i_2_n_0\
    );
\cnt0_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_reg(18),
      I1 => cnt_reg(19),
      O => \cnt0_carry__1_i_3_n_0\
    );
\cnt0_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_reg(16),
      I1 => cnt_reg(17),
      O => \cnt0_carry__1_i_4_n_0\
    );
\cnt0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt0_carry__1_n_0\,
      CO(3) => sel,
      CO(2) => \cnt0_carry__2_n_1\,
      CO(1) => \cnt0_carry__2_n_2\,
      CO(0) => \cnt0_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => cnt_reg(31),
      DI(2 downto 0) => B"000",
      O(3 downto 0) => \NLW_cnt0_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \cnt0_carry__2_i_1_n_0\,
      S(2) => \cnt0_carry__2_i_2_n_0\,
      S(1) => \cnt0_carry__2_i_3_n_0\,
      S(0) => \cnt0_carry__2_i_4_n_0\
    );
\cnt0_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_reg(30),
      I1 => cnt_reg(31),
      O => \cnt0_carry__2_i_1_n_0\
    );
\cnt0_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_reg(28),
      I1 => cnt_reg(29),
      O => \cnt0_carry__2_i_2_n_0\
    );
\cnt0_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_reg(26),
      I1 => cnt_reg(27),
      O => \cnt0_carry__2_i_3_n_0\
    );
\cnt0_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_reg(24),
      I1 => cnt_reg(25),
      O => \cnt0_carry__2_i_4_n_0\
    );
cnt0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => cnt_reg(0),
      I1 => cnt_reg(1),
      O => cnt0_carry_i_1_n_0
    );
cnt0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_reg(6),
      I1 => cnt_reg(7),
      O => cnt0_carry_i_2_n_0
    );
cnt0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_reg(4),
      I1 => cnt_reg(5),
      O => cnt0_carry_i_3_n_0
    );
cnt0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_reg(2),
      I1 => cnt_reg(3),
      O => cnt0_carry_i_4_n_0
    );
cnt0_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cnt_reg(0),
      I1 => cnt_reg(1),
      O => cnt0_carry_i_5_n_0
    );
\cnt[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_reg(0),
      O => \cnt[0]_i_2_n_0\
    );
\cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clk,
      CE => sel,
      D => \cnt_reg[0]_i_1_n_7\,
      Q => cnt_reg(0),
      R => '0'
    );
\cnt_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \cnt_reg[0]_i_1_n_0\,
      CO(2) => \cnt_reg[0]_i_1_n_1\,
      CO(1) => \cnt_reg[0]_i_1_n_2\,
      CO(0) => \cnt_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \cnt_reg[0]_i_1_n_4\,
      O(2) => \cnt_reg[0]_i_1_n_5\,
      O(1) => \cnt_reg[0]_i_1_n_6\,
      O(0) => \cnt_reg[0]_i_1_n_7\,
      S(3 downto 1) => cnt_reg(3 downto 1),
      S(0) => \cnt[0]_i_2_n_0\
    );
\cnt_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clk,
      CE => sel,
      D => \cnt_reg[8]_i_1_n_5\,
      Q => cnt_reg(10),
      R => '0'
    );
\cnt_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clk,
      CE => sel,
      D => \cnt_reg[8]_i_1_n_4\,
      Q => cnt_reg(11),
      R => '0'
    );
\cnt_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clk,
      CE => sel,
      D => \cnt_reg[12]_i_1_n_7\,
      Q => cnt_reg(12),
      R => '0'
    );
\cnt_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[8]_i_1_n_0\,
      CO(3) => \cnt_reg[12]_i_1_n_0\,
      CO(2) => \cnt_reg[12]_i_1_n_1\,
      CO(1) => \cnt_reg[12]_i_1_n_2\,
      CO(0) => \cnt_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_reg[12]_i_1_n_4\,
      O(2) => \cnt_reg[12]_i_1_n_5\,
      O(1) => \cnt_reg[12]_i_1_n_6\,
      O(0) => \cnt_reg[12]_i_1_n_7\,
      S(3 downto 0) => cnt_reg(15 downto 12)
    );
\cnt_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clk,
      CE => sel,
      D => \cnt_reg[12]_i_1_n_6\,
      Q => cnt_reg(13),
      R => '0'
    );
\cnt_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clk,
      CE => sel,
      D => \cnt_reg[12]_i_1_n_5\,
      Q => cnt_reg(14),
      R => '0'
    );
\cnt_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clk,
      CE => sel,
      D => \cnt_reg[12]_i_1_n_4\,
      Q => cnt_reg(15),
      R => '0'
    );
\cnt_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clk,
      CE => sel,
      D => \cnt_reg[16]_i_1_n_7\,
      Q => cnt_reg(16),
      R => '0'
    );
\cnt_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[12]_i_1_n_0\,
      CO(3) => \cnt_reg[16]_i_1_n_0\,
      CO(2) => \cnt_reg[16]_i_1_n_1\,
      CO(1) => \cnt_reg[16]_i_1_n_2\,
      CO(0) => \cnt_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_reg[16]_i_1_n_4\,
      O(2) => \cnt_reg[16]_i_1_n_5\,
      O(1) => \cnt_reg[16]_i_1_n_6\,
      O(0) => \cnt_reg[16]_i_1_n_7\,
      S(3 downto 0) => cnt_reg(19 downto 16)
    );
\cnt_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clk,
      CE => sel,
      D => \cnt_reg[16]_i_1_n_6\,
      Q => cnt_reg(17),
      R => '0'
    );
\cnt_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clk,
      CE => sel,
      D => \cnt_reg[16]_i_1_n_5\,
      Q => cnt_reg(18),
      R => '0'
    );
\cnt_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clk,
      CE => sel,
      D => \cnt_reg[16]_i_1_n_4\,
      Q => cnt_reg(19),
      R => '0'
    );
\cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clk,
      CE => sel,
      D => \cnt_reg[0]_i_1_n_6\,
      Q => cnt_reg(1),
      R => '0'
    );
\cnt_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clk,
      CE => sel,
      D => \cnt_reg[20]_i_1_n_7\,
      Q => cnt_reg(20),
      R => '0'
    );
\cnt_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[16]_i_1_n_0\,
      CO(3) => \cnt_reg[20]_i_1_n_0\,
      CO(2) => \cnt_reg[20]_i_1_n_1\,
      CO(1) => \cnt_reg[20]_i_1_n_2\,
      CO(0) => \cnt_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_reg[20]_i_1_n_4\,
      O(2) => \cnt_reg[20]_i_1_n_5\,
      O(1) => \cnt_reg[20]_i_1_n_6\,
      O(0) => \cnt_reg[20]_i_1_n_7\,
      S(3 downto 0) => cnt_reg(23 downto 20)
    );
\cnt_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clk,
      CE => sel,
      D => \cnt_reg[20]_i_1_n_6\,
      Q => cnt_reg(21),
      R => '0'
    );
\cnt_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clk,
      CE => sel,
      D => \cnt_reg[20]_i_1_n_5\,
      Q => cnt_reg(22),
      R => '0'
    );
\cnt_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clk,
      CE => sel,
      D => \cnt_reg[20]_i_1_n_4\,
      Q => cnt_reg(23),
      R => '0'
    );
\cnt_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clk,
      CE => sel,
      D => \cnt_reg[24]_i_1_n_7\,
      Q => cnt_reg(24),
      R => '0'
    );
\cnt_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[20]_i_1_n_0\,
      CO(3) => \cnt_reg[24]_i_1_n_0\,
      CO(2) => \cnt_reg[24]_i_1_n_1\,
      CO(1) => \cnt_reg[24]_i_1_n_2\,
      CO(0) => \cnt_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_reg[24]_i_1_n_4\,
      O(2) => \cnt_reg[24]_i_1_n_5\,
      O(1) => \cnt_reg[24]_i_1_n_6\,
      O(0) => \cnt_reg[24]_i_1_n_7\,
      S(3 downto 0) => cnt_reg(27 downto 24)
    );
\cnt_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clk,
      CE => sel,
      D => \cnt_reg[24]_i_1_n_6\,
      Q => cnt_reg(25),
      R => '0'
    );
\cnt_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clk,
      CE => sel,
      D => \cnt_reg[24]_i_1_n_5\,
      Q => cnt_reg(26),
      R => '0'
    );
\cnt_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clk,
      CE => sel,
      D => \cnt_reg[24]_i_1_n_4\,
      Q => cnt_reg(27),
      R => '0'
    );
\cnt_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clk,
      CE => sel,
      D => \cnt_reg[28]_i_1_n_7\,
      Q => cnt_reg(28),
      R => '0'
    );
\cnt_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[24]_i_1_n_0\,
      CO(3) => \NLW_cnt_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \cnt_reg[28]_i_1_n_1\,
      CO(1) => \cnt_reg[28]_i_1_n_2\,
      CO(0) => \cnt_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_reg[28]_i_1_n_4\,
      O(2) => \cnt_reg[28]_i_1_n_5\,
      O(1) => \cnt_reg[28]_i_1_n_6\,
      O(0) => \cnt_reg[28]_i_1_n_7\,
      S(3 downto 0) => cnt_reg(31 downto 28)
    );
\cnt_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clk,
      CE => sel,
      D => \cnt_reg[28]_i_1_n_6\,
      Q => cnt_reg(29),
      R => '0'
    );
\cnt_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clk,
      CE => sel,
      D => \cnt_reg[0]_i_1_n_5\,
      Q => cnt_reg(2),
      R => '0'
    );
\cnt_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clk,
      CE => sel,
      D => \cnt_reg[28]_i_1_n_5\,
      Q => cnt_reg(30),
      R => '0'
    );
\cnt_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clk,
      CE => sel,
      D => \cnt_reg[28]_i_1_n_4\,
      Q => cnt_reg(31),
      R => '0'
    );
\cnt_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clk,
      CE => sel,
      D => \cnt_reg[0]_i_1_n_4\,
      Q => cnt_reg(3),
      R => '0'
    );
\cnt_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clk,
      CE => sel,
      D => \cnt_reg[4]_i_1_n_7\,
      Q => cnt_reg(4),
      R => '0'
    );
\cnt_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[0]_i_1_n_0\,
      CO(3) => \cnt_reg[4]_i_1_n_0\,
      CO(2) => \cnt_reg[4]_i_1_n_1\,
      CO(1) => \cnt_reg[4]_i_1_n_2\,
      CO(0) => \cnt_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_reg[4]_i_1_n_4\,
      O(2) => \cnt_reg[4]_i_1_n_5\,
      O(1) => \cnt_reg[4]_i_1_n_6\,
      O(0) => \cnt_reg[4]_i_1_n_7\,
      S(3 downto 0) => cnt_reg(7 downto 4)
    );
\cnt_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clk,
      CE => sel,
      D => \cnt_reg[4]_i_1_n_6\,
      Q => cnt_reg(5),
      R => '0'
    );
\cnt_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clk,
      CE => sel,
      D => \cnt_reg[4]_i_1_n_5\,
      Q => cnt_reg(6),
      R => '0'
    );
\cnt_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clk,
      CE => sel,
      D => \cnt_reg[4]_i_1_n_4\,
      Q => cnt_reg(7),
      R => '0'
    );
\cnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clk,
      CE => sel,
      D => \cnt_reg[8]_i_1_n_7\,
      Q => cnt_reg(8),
      R => '0'
    );
\cnt_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_reg[4]_i_1_n_0\,
      CO(3) => \cnt_reg[8]_i_1_n_0\,
      CO(2) => \cnt_reg[8]_i_1_n_1\,
      CO(1) => \cnt_reg[8]_i_1_n_2\,
      CO(0) => \cnt_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_reg[8]_i_1_n_4\,
      O(2) => \cnt_reg[8]_i_1_n_5\,
      O(1) => \cnt_reg[8]_i_1_n_6\,
      O(0) => \cnt_reg[8]_i_1_n_7\,
      S(3 downto 0) => cnt_reg(11 downto 8)
    );
\cnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_Clk,
      CE => sel,
      D => \cnt_reg[8]_i_1_n_6\,
      Q => cnt_reg(9),
      R => '0'
    );
led_ctrl1_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000009F"
    )
        port map (
      I0 => nn_res_in(1),
      I1 => nn_res_in(2),
      I2 => nn_res_in(3),
      I3 => led_ctrl1_INST_0_i_1_n_0,
      I4 => led_ctrl1_INST_0_i_2_n_0,
      I5 => led_ctrl1_INST_0_i_3_n_0,
      O => led_ctrl1
    );
led_ctrl1_INST_0_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFFFF"
    )
        port map (
      I0 => nn_res_in(17),
      I1 => nn_res_in(16),
      I2 => nn_res_in(19),
      I3 => nn_res_in(18),
      I4 => led_ctrl1_INST_0_i_4_n_0,
      O => led_ctrl1_INST_0_i_1_n_0
    );
led_ctrl1_INST_0_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEFFFF"
    )
        port map (
      I0 => nn_res_in(9),
      I1 => nn_res_in(8),
      I2 => nn_res_in(11),
      I3 => nn_res_in(10),
      I4 => led_ctrl1_INST_0_i_5_n_0,
      O => led_ctrl1_INST_0_i_2_n_0
    );
led_ctrl1_INST_0_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFB"
    )
        port map (
      I0 => led_ctrl1_INST_0_i_6_n_0,
      I1 => led_ctrl1_INST_0_i_7_n_0,
      I2 => nn_res_in(26),
      I3 => nn_res_in(27),
      I4 => nn_res_in(24),
      I5 => nn_res_in(25),
      O => led_ctrl1_INST_0_i_3_n_0
    );
led_ctrl1_INST_0_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => nn_res_in(14),
      I1 => nn_res_in(15),
      I2 => nn_res_in(12),
      I3 => nn_res_in(13),
      O => led_ctrl1_INST_0_i_4_n_0
    );
led_ctrl1_INST_0_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => nn_res_in(6),
      I1 => nn_res_in(7),
      I2 => nn_res_in(4),
      I3 => nn_res_in(5),
      O => led_ctrl1_INST_0_i_5_n_0
    );
led_ctrl1_INST_0_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFD"
    )
        port map (
      I0 => nn_res_in(0),
      I1 => nn_res_in(29),
      I2 => nn_res_in(28),
      I3 => nn_res_in(30),
      I4 => nn_res_in(31),
      O => led_ctrl1_INST_0_i_6_n_0
    );
led_ctrl1_INST_0_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => nn_res_in(22),
      I1 => nn_res_in(23),
      I2 => nn_res_in(20),
      I3 => nn_res_in(21),
      O => led_ctrl1_INST_0_i_7_n_0
    );
led_ctrl2_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => led_ctrl2_INST_0_i_1_n_0,
      I1 => led_ctrl2_INST_0_i_2_n_0,
      I2 => led_ctrl2_INST_0_i_3_n_0,
      I3 => led_ctrl2_INST_0_i_4_n_0,
      O => led_ctrl2
    );
led_ctrl2_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF7FFFFFFE"
    )
        port map (
      I0 => nn_res_in(21),
      I1 => nn_res_in(22),
      I2 => nn_res_in(23),
      I3 => nn_res_in(24),
      I4 => nn_res_in(25),
      I5 => led_ctrl2_INST_0_i_5_n_0,
      O => led_ctrl2_INST_0_i_1_n_0
    );
led_ctrl2_INST_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFFFFFFFFFE"
    )
        port map (
      I0 => nn_res_in(28),
      I1 => nn_res_in(27),
      I2 => led_ctrl2_INST_0_i_6_n_0,
      I3 => nn_res_in(29),
      I4 => nn_res_in(30),
      I5 => nn_res_in(31),
      O => led_ctrl2_INST_0_i_2_n_0
    );
led_ctrl2_INST_0_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF7FFFFFFE"
    )
        port map (
      I0 => nn_res_in(5),
      I1 => nn_res_in(6),
      I2 => nn_res_in(7),
      I3 => nn_res_in(8),
      I4 => nn_res_in(9),
      I5 => led_ctrl2_INST_0_i_7_n_0,
      O => led_ctrl2_INST_0_i_3_n_0
    );
led_ctrl2_INST_0_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF7FFFFFFE"
    )
        port map (
      I0 => nn_res_in(13),
      I1 => nn_res_in(14),
      I2 => nn_res_in(15),
      I3 => nn_res_in(16),
      I4 => nn_res_in(17),
      I5 => led_ctrl2_INST_0_i_8_n_0,
      O => led_ctrl2_INST_0_i_4_n_0
    );
led_ctrl2_INST_0_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFE"
    )
        port map (
      I0 => nn_res_in(21),
      I1 => nn_res_in(20),
      I2 => nn_res_in(19),
      I3 => nn_res_in(18),
      I4 => nn_res_in(17),
      O => led_ctrl2_INST_0_i_5_n_0
    );
led_ctrl2_INST_0_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7E"
    )
        port map (
      I0 => nn_res_in(25),
      I1 => nn_res_in(26),
      I2 => nn_res_in(27),
      O => led_ctrl2_INST_0_i_6_n_0
    );
led_ctrl2_INST_0_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7BFBFFFBFFFBFFFA"
    )
        port map (
      I0 => nn_res_in(5),
      I1 => nn_res_in(1),
      I2 => nn_res_in(4),
      I3 => nn_res_in(3),
      I4 => nn_res_in(2),
      I5 => nn_res_in(0),
      O => led_ctrl2_INST_0_i_7_n_0
    );
led_ctrl2_INST_0_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFE"
    )
        port map (
      I0 => nn_res_in(13),
      I1 => nn_res_in(12),
      I2 => nn_res_in(11),
      I3 => nn_res_in(10),
      I4 => nn_res_in(9),
      O => led_ctrl2_INST_0_i_8_n_0
    );
led_ctrl3_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => led_ctrl3_INST_0_i_1_n_0,
      I1 => led_ctrl3_INST_0_i_2_n_0,
      I2 => led_ctrl3_INST_0_i_3_n_0,
      O => led_ctrl3
    );
led_ctrl3_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFBEFF"
    )
        port map (
      I0 => led_ctrl3_INST_0_i_4_n_0,
      I1 => nn_res_in(31),
      I2 => nn_res_in(30),
      I3 => nn_res_in(2),
      I4 => led_ctrl3_INST_0_i_5_n_0,
      I5 => led_ctrl3_INST_0_i_6_n_0,
      O => led_ctrl3_INST_0_i_1_n_0
    );
led_ctrl3_INST_0_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFFFFFE"
    )
        port map (
      I0 => led_ctrl3_INST_0_i_7_n_0,
      I1 => led_ctrl3_INST_0_i_8_n_0,
      I2 => nn_res_in(26),
      I3 => nn_res_in(27),
      I4 => nn_res_in(28),
      O => led_ctrl3_INST_0_i_2_n_0
    );
led_ctrl3_INST_0_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF7FFFFFFE"
    )
        port map (
      I0 => nn_res_in(12),
      I1 => nn_res_in(13),
      I2 => nn_res_in(14),
      I3 => nn_res_in(15),
      I4 => nn_res_in(16),
      I5 => led_ctrl3_INST_0_i_9_n_0,
      O => led_ctrl3_INST_0_i_3_n_0
    );
led_ctrl3_INST_0_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7EFFFFFFFFFFFF7E"
    )
        port map (
      I0 => nn_res_in(30),
      I1 => nn_res_in(29),
      I2 => nn_res_in(28),
      I3 => nn_res_in(26),
      I4 => nn_res_in(25),
      I5 => nn_res_in(24),
      O => led_ctrl3_INST_0_i_4_n_0
    );
led_ctrl3_INST_0_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFE"
    )
        port map (
      I0 => nn_res_in(20),
      I1 => nn_res_in(19),
      I2 => nn_res_in(18),
      I3 => nn_res_in(17),
      I4 => nn_res_in(16),
      O => led_ctrl3_INST_0_i_5_n_0
    );
led_ctrl3_INST_0_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFE"
    )
        port map (
      I0 => nn_res_in(24),
      I1 => nn_res_in(23),
      I2 => nn_res_in(22),
      I3 => nn_res_in(21),
      I4 => nn_res_in(20),
      O => led_ctrl3_INST_0_i_6_n_0
    );
led_ctrl3_INST_0_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFE"
    )
        port map (
      I0 => nn_res_in(8),
      I1 => nn_res_in(7),
      I2 => nn_res_in(6),
      I3 => nn_res_in(5),
      I4 => nn_res_in(4),
      O => led_ctrl3_INST_0_i_7_n_0
    );
led_ctrl3_INST_0_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F70"
    )
        port map (
      I0 => nn_res_in(0),
      I1 => nn_res_in(1),
      I2 => nn_res_in(3),
      I3 => nn_res_in(4),
      O => led_ctrl3_INST_0_i_8_n_0
    );
led_ctrl3_INST_0_i_9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFE"
    )
        port map (
      I0 => nn_res_in(12),
      I1 => nn_res_in(11),
      I2 => nn_res_in(10),
      I3 => nn_res_in(9),
      I4 => nn_res_in(8),
      O => led_ctrl3_INST_0_i_9_n_0
    );
led_ctrl4_INST_0: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => led_ctrl4_INST_0_i_1_n_0,
      I1 => led_ctrl4_INST_0_i_2_n_0,
      I2 => led_ctrl4_INST_0_i_3_n_0,
      I3 => led_ctrl4_INST_0_i_4_n_0,
      I4 => led_ctrl4_INST_0_i_5_n_0,
      O => led_ctrl4
    );
led_ctrl4_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF7FFFFFFE"
    )
        port map (
      I0 => nn_res_in(19),
      I1 => nn_res_in(20),
      I2 => nn_res_in(21),
      I3 => nn_res_in(22),
      I4 => nn_res_in(23),
      I5 => led_ctrl4_INST_0_i_6_n_0,
      O => led_ctrl4_INST_0_i_1_n_0
    );
led_ctrl4_INST_0_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FF4"
    )
        port map (
      I0 => nn_res_in(3),
      I1 => nn_res_in(0),
      I2 => nn_res_in(1),
      I3 => nn_res_in(2),
      I4 => led_ctrl4_INST_0_i_7_n_0,
      O => led_ctrl4_INST_0_i_2_n_0
    );
led_ctrl4_INST_0_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7EFFFFFFFFFFFF7E"
    )
        port map (
      I0 => nn_res_in(7),
      I1 => nn_res_in(6),
      I2 => nn_res_in(5),
      I3 => nn_res_in(31),
      I4 => nn_res_in(30),
      I5 => nn_res_in(29),
      O => led_ctrl4_INST_0_i_3_n_0
    );
led_ctrl4_INST_0_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7EFFFF7EFFFFFF7E"
    )
        port map (
      I0 => nn_res_in(29),
      I1 => nn_res_in(28),
      I2 => nn_res_in(27),
      I3 => nn_res_in(5),
      I4 => nn_res_in(4),
      I5 => nn_res_in(2),
      O => led_ctrl4_INST_0_i_4_n_0
    );
led_ctrl4_INST_0_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF7FFFFFFE"
    )
        port map (
      I0 => nn_res_in(11),
      I1 => nn_res_in(12),
      I2 => nn_res_in(13),
      I3 => nn_res_in(14),
      I4 => nn_res_in(15),
      I5 => led_ctrl4_INST_0_i_8_n_0,
      O => led_ctrl4_INST_0_i_5_n_0
    );
led_ctrl4_INST_0_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFE"
    )
        port map (
      I0 => nn_res_in(19),
      I1 => nn_res_in(18),
      I2 => nn_res_in(17),
      I3 => nn_res_in(16),
      I4 => nn_res_in(15),
      O => led_ctrl4_INST_0_i_6_n_0
    );
led_ctrl4_INST_0_i_7: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFE"
    )
        port map (
      I0 => nn_res_in(27),
      I1 => nn_res_in(26),
      I2 => nn_res_in(25),
      I3 => nn_res_in(24),
      I4 => nn_res_in(23),
      O => led_ctrl4_INST_0_i_7_n_0
    );
led_ctrl4_INST_0_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFE"
    )
        port map (
      I0 => nn_res_in(11),
      I1 => nn_res_in(10),
      I2 => nn_res_in(9),
      I3 => nn_res_in(8),
      I4 => nn_res_in(7),
      O => led_ctrl4_INST_0_i_8_n_0
    );
start_signal1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => start_signal1_carry_n_0,
      CO(2) => start_signal1_carry_n_1,
      CO(1) => start_signal1_carry_n_2,
      CO(0) => start_signal1_carry_n_3,
      CYINIT => '0',
      DI(3) => start_signal1_carry_i_1_n_0,
      DI(2) => start_signal1_carry_i_2_n_0,
      DI(1) => start_signal1_carry_i_3_n_0,
      DI(0) => start_signal1_carry_i_4_n_0,
      O(3 downto 0) => NLW_start_signal1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => start_signal1_carry_i_5_n_0,
      S(2) => start_signal1_carry_i_6_n_0,
      S(1) => start_signal1_carry_i_7_n_0,
      S(0) => start_signal1_carry_i_8_n_0
    );
\start_signal1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => start_signal1_carry_n_0,
      CO(3) => \start_signal1_carry__0_n_0\,
      CO(2) => \start_signal1_carry__0_n_1\,
      CO(1) => \start_signal1_carry__0_n_2\,
      CO(0) => \start_signal1_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \start_signal1_carry__0_i_1_n_0\,
      DI(2) => \start_signal1_carry__0_i_2_n_0\,
      DI(1) => \start_signal1_carry__0_i_3_n_0\,
      DI(0) => \start_signal1_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_start_signal1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \start_signal1_carry__0_i_5_n_0\,
      S(2) => \start_signal1_carry__0_i_6_n_0\,
      S(1) => \start_signal1_carry__0_i_7_n_0\,
      S(0) => \start_signal1_carry__0_i_8_n_0\
    );
\start_signal1_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cnt_reg(14),
      I1 => cnt_reg(15),
      O => \start_signal1_carry__0_i_1_n_0\
    );
\start_signal1_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cnt_reg(12),
      I1 => cnt_reg(13),
      O => \start_signal1_carry__0_i_2_n_0\
    );
\start_signal1_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cnt_reg(10),
      I1 => cnt_reg(11),
      O => \start_signal1_carry__0_i_3_n_0\
    );
\start_signal1_carry__0_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cnt_reg(8),
      I1 => cnt_reg(9),
      O => \start_signal1_carry__0_i_4_n_0\
    );
\start_signal1_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_reg(14),
      I1 => cnt_reg(15),
      O => \start_signal1_carry__0_i_5_n_0\
    );
\start_signal1_carry__0_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_reg(12),
      I1 => cnt_reg(13),
      O => \start_signal1_carry__0_i_6_n_0\
    );
\start_signal1_carry__0_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_reg(10),
      I1 => cnt_reg(11),
      O => \start_signal1_carry__0_i_7_n_0\
    );
\start_signal1_carry__0_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_reg(8),
      I1 => cnt_reg(9),
      O => \start_signal1_carry__0_i_8_n_0\
    );
\start_signal1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \start_signal1_carry__0_n_0\,
      CO(3) => \start_signal1_carry__1_n_0\,
      CO(2) => \start_signal1_carry__1_n_1\,
      CO(1) => \start_signal1_carry__1_n_2\,
      CO(0) => \start_signal1_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \start_signal1_carry__1_i_1_n_0\,
      DI(2) => \start_signal1_carry__1_i_2_n_0\,
      DI(1) => \start_signal1_carry__1_i_3_n_0\,
      DI(0) => \start_signal1_carry__1_i_4_n_0\,
      O(3 downto 0) => \NLW_start_signal1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \start_signal1_carry__1_i_5_n_0\,
      S(2) => \start_signal1_carry__1_i_6_n_0\,
      S(1) => \start_signal1_carry__1_i_7_n_0\,
      S(0) => \start_signal1_carry__1_i_8_n_0\
    );
\start_signal1_carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cnt_reg(22),
      I1 => cnt_reg(23),
      O => \start_signal1_carry__1_i_1_n_0\
    );
\start_signal1_carry__1_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cnt_reg(20),
      I1 => cnt_reg(21),
      O => \start_signal1_carry__1_i_2_n_0\
    );
\start_signal1_carry__1_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cnt_reg(18),
      I1 => cnt_reg(19),
      O => \start_signal1_carry__1_i_3_n_0\
    );
\start_signal1_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cnt_reg(16),
      I1 => cnt_reg(17),
      O => \start_signal1_carry__1_i_4_n_0\
    );
\start_signal1_carry__1_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_reg(22),
      I1 => cnt_reg(23),
      O => \start_signal1_carry__1_i_5_n_0\
    );
\start_signal1_carry__1_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_reg(20),
      I1 => cnt_reg(21),
      O => \start_signal1_carry__1_i_6_n_0\
    );
\start_signal1_carry__1_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_reg(18),
      I1 => cnt_reg(19),
      O => \start_signal1_carry__1_i_7_n_0\
    );
\start_signal1_carry__1_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_reg(16),
      I1 => cnt_reg(17),
      O => \start_signal1_carry__1_i_8_n_0\
    );
\start_signal1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \start_signal1_carry__1_n_0\,
      CO(3) => \start_signal1_carry__2_n_0\,
      CO(2) => \start_signal1_carry__2_n_1\,
      CO(1) => \start_signal1_carry__2_n_2\,
      CO(0) => \start_signal1_carry__2_n_3\,
      CYINIT => '0',
      DI(3) => \start_signal1_carry__2_i_1_n_0\,
      DI(2) => \start_signal1_carry__2_i_2_n_0\,
      DI(1) => \start_signal1_carry__2_i_3_n_0\,
      DI(0) => \start_signal1_carry__2_i_4_n_0\,
      O(3 downto 0) => \NLW_start_signal1_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \start_signal1_carry__2_i_5_n_0\,
      S(2) => \start_signal1_carry__2_i_6_n_0\,
      S(1) => \start_signal1_carry__2_i_7_n_0\,
      S(0) => \start_signal1_carry__2_i_8_n_0\
    );
\start_signal1_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_reg(30),
      I1 => cnt_reg(31),
      O => \start_signal1_carry__2_i_1_n_0\
    );
\start_signal1_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cnt_reg(28),
      I1 => cnt_reg(29),
      O => \start_signal1_carry__2_i_2_n_0\
    );
\start_signal1_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cnt_reg(26),
      I1 => cnt_reg(27),
      O => \start_signal1_carry__2_i_3_n_0\
    );
\start_signal1_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cnt_reg(24),
      I1 => cnt_reg(25),
      O => \start_signal1_carry__2_i_4_n_0\
    );
\start_signal1_carry__2_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_reg(30),
      I1 => cnt_reg(31),
      O => \start_signal1_carry__2_i_5_n_0\
    );
\start_signal1_carry__2_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_reg(28),
      I1 => cnt_reg(29),
      O => \start_signal1_carry__2_i_6_n_0\
    );
\start_signal1_carry__2_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_reg(26),
      I1 => cnt_reg(27),
      O => \start_signal1_carry__2_i_7_n_0\
    );
\start_signal1_carry__2_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_reg(24),
      I1 => cnt_reg(25),
      O => \start_signal1_carry__2_i_8_n_0\
    );
start_signal1_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cnt_reg(6),
      I1 => cnt_reg(7),
      O => start_signal1_carry_i_1_n_0
    );
start_signal1_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cnt_reg(4),
      I1 => cnt_reg(5),
      O => start_signal1_carry_i_2_n_0
    );
start_signal1_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cnt_reg(2),
      I1 => cnt_reg(3),
      O => start_signal1_carry_i_3_n_0
    );
start_signal1_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => cnt_reg(0),
      I1 => cnt_reg(1),
      O => start_signal1_carry_i_4_n_0
    );
start_signal1_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_reg(6),
      I1 => cnt_reg(7),
      O => start_signal1_carry_i_5_n_0
    );
start_signal1_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_reg(4),
      I1 => cnt_reg(5),
      O => start_signal1_carry_i_6_n_0
    );
start_signal1_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt_reg(2),
      I1 => cnt_reg(3),
      O => start_signal1_carry_i_7_n_0
    );
start_signal1_carry_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt_reg(1),
      I1 => cnt_reg(0),
      O => start_signal1_carry_i_8_n_0
    );
start_signal_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => start_signal_reg_i_1_n_0,
      G => start_signal,
      GE => '1',
      Q => ap_start
    );
start_signal_reg_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rstb_busy,
      O => start_signal_reg_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_nn_ctrl_0_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_nn_ctrl_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_nn_ctrl_0_0 : entity is "design_1_nn_ctrl_0_0,nn_ctrl,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_nn_ctrl_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_nn_ctrl_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_nn_ctrl_0_0 : entity is "nn_ctrl,Vivado 2021.1";
end design_1_nn_ctrl_0_0;

architecture STRUCTURE of design_1_nn_ctrl_0_0 is
  signal \<const1>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ap_rst : signal is "xilinx.com:signal:reset:1.0 ap_rst RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ap_rst : signal is "XIL_INTERFACENAME ap_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of i_Clk : signal is "xilinx.com:signal:clock:1.0 i_Clk CLK";
  attribute X_INTERFACE_PARAMETER of i_Clk : signal is "XIL_INTERFACENAME i_Clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
begin
  ap_rst <= \<const1>\;
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.design_1_nn_ctrl_0_0_nn_ctrl
     port map (
      ap_idle => ap_idle,
      ap_ready => ap_ready,
      ap_start => ap_start,
      i_Clk => i_Clk,
      led_ctrl1 => led_ctrl1,
      led_ctrl2 => led_ctrl2,
      led_ctrl3 => led_ctrl3,
      led_ctrl4 => led_ctrl4,
      nn_res_in(31 downto 0) => nn_res_in(31 downto 0),
      rstb_busy => rstb_busy
    );
end STRUCTURE;
