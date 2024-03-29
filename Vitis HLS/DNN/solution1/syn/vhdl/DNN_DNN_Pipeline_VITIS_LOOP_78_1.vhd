-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Version: 2021.1
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity DNN_DNN_Pipeline_VITIS_LOOP_78_1 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    conv2_output_address0 : OUT STD_LOGIC_VECTOR (5 downto 0);
    conv2_output_ce0 : OUT STD_LOGIC;
    conv2_output_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    conv2_output_address1 : OUT STD_LOGIC_VECTOR (5 downto 0);
    conv2_output_ce1 : OUT STD_LOGIC;
    conv2_output_q1 : IN STD_LOGIC_VECTOR (31 downto 0);
    conv2_output_address2 : OUT STD_LOGIC_VECTOR (5 downto 0);
    conv2_output_ce2 : OUT STD_LOGIC;
    conv2_output_q2 : IN STD_LOGIC_VECTOR (31 downto 0);
    conv2_output_address3 : OUT STD_LOGIC_VECTOR (5 downto 0);
    conv2_output_ce3 : OUT STD_LOGIC;
    conv2_output_q3 : IN STD_LOGIC_VECTOR (31 downto 0);
    conv2_output_address4 : OUT STD_LOGIC_VECTOR (5 downto 0);
    conv2_output_ce4 : OUT STD_LOGIC;
    conv2_output_q4 : IN STD_LOGIC_VECTOR (31 downto 0);
    conv2_output_address5 : OUT STD_LOGIC_VECTOR (5 downto 0);
    conv2_output_ce5 : OUT STD_LOGIC;
    conv2_output_q5 : IN STD_LOGIC_VECTOR (31 downto 0);
    conv2_output_address6 : OUT STD_LOGIC_VECTOR (5 downto 0);
    conv2_output_ce6 : OUT STD_LOGIC;
    conv2_output_q6 : IN STD_LOGIC_VECTOR (31 downto 0);
    pool2_output_0_0_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    pool2_output_0_0_ce0 : OUT STD_LOGIC;
    pool2_output_0_0_we0 : OUT STD_LOGIC;
    pool2_output_0_0_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    grp_fu_1544_p_din0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    grp_fu_1544_p_din1 : OUT STD_LOGIC_VECTOR (31 downto 0);
    grp_fu_1544_p_opcode : OUT STD_LOGIC_VECTOR (4 downto 0);
    grp_fu_1544_p_dout0 : IN STD_LOGIC_VECTOR (0 downto 0);
    grp_fu_1544_p_ce : OUT STD_LOGIC;
    grp_fu_1548_p_din0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    grp_fu_1548_p_din1 : OUT STD_LOGIC_VECTOR (31 downto 0);
    grp_fu_1548_p_opcode : OUT STD_LOGIC_VECTOR (4 downto 0);
    grp_fu_1548_p_dout0 : IN STD_LOGIC_VECTOR (0 downto 0);
    grp_fu_1548_p_ce : OUT STD_LOGIC;
    grp_fu_1552_p_din0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    grp_fu_1552_p_din1 : OUT STD_LOGIC_VECTOR (31 downto 0);
    grp_fu_1552_p_opcode : OUT STD_LOGIC_VECTOR (4 downto 0);
    grp_fu_1552_p_dout0 : IN STD_LOGIC_VECTOR (0 downto 0);
    grp_fu_1552_p_ce : OUT STD_LOGIC );
end;


architecture behav of DNN_DNN_Pipeline_VITIS_LOOP_78_1 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    constant ap_const_lv5_10 : STD_LOGIC_VECTOR (4 downto 0) := "10000";
    constant ap_const_lv5_1 : STD_LOGIC_VECTOR (4 downto 0) := "00001";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv7_1 : STD_LOGIC_VECTOR (6 downto 0) := "0000001";
    constant ap_const_lv57_0 : STD_LOGIC_VECTOR (56 downto 0) := "000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv7_2 : STD_LOGIC_VECTOR (6 downto 0) := "0000010";
    constant ap_const_lv7_3 : STD_LOGIC_VECTOR (6 downto 0) := "0000011";
    constant ap_const_lv32_17 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010111";
    constant ap_const_lv32_1E : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011110";
    constant ap_const_lv8_FF : STD_LOGIC_VECTOR (7 downto 0) := "11111111";
    constant ap_const_lv23_0 : STD_LOGIC_VECTOR (22 downto 0) := "00000000000000000000000";
    constant ap_const_lv5_2 : STD_LOGIC_VECTOR (4 downto 0) := "00010";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter3 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter4 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter5 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter6 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter7 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_state4_pp0_stage0_iter3 : BOOLEAN;
    signal ap_block_state5_pp0_stage0_iter4 : BOOLEAN;
    signal ap_block_state6_pp0_stage0_iter5 : BOOLEAN;
    signal ap_block_state7_pp0_stage0_iter6 : BOOLEAN;
    signal ap_block_state8_pp0_stage0_iter7 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal icmp_ln78_fu_187_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal p_1_reg_568 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal p_1_reg_568_pp0_iter1_reg : STD_LOGIC_VECTOR (4 downto 0);
    signal p_1_reg_568_pp0_iter2_reg : STD_LOGIC_VECTOR (4 downto 0);
    signal p_1_reg_568_pp0_iter3_reg : STD_LOGIC_VECTOR (4 downto 0);
    signal p_1_reg_568_pp0_iter4_reg : STD_LOGIC_VECTOR (4 downto 0);
    signal p_1_reg_568_pp0_iter5_reg : STD_LOGIC_VECTOR (4 downto 0);
    signal p_1_reg_568_pp0_iter6_reg : STD_LOGIC_VECTOR (4 downto 0);
    signal or_ln84_7_fu_227_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal or_ln84_7_reg_589 : STD_LOGIC_VECTOR (6 downto 0);
    signal or_ln84_7_reg_589_pp0_iter1_reg : STD_LOGIC_VECTOR (6 downto 0);
    signal or_ln84_7_reg_589_pp0_iter2_reg : STD_LOGIC_VECTOR (6 downto 0);
    signal or_ln84_7_reg_589_pp0_iter3_reg : STD_LOGIC_VECTOR (6 downto 0);
    signal or_ln84_8_fu_242_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal or_ln84_8_reg_599 : STD_LOGIC_VECTOR (6 downto 0);
    signal or_ln84_8_reg_599_pp0_iter1_reg : STD_LOGIC_VECTOR (6 downto 0);
    signal or_ln84_8_reg_599_pp0_iter2_reg : STD_LOGIC_VECTOR (6 downto 0);
    signal or_ln84_8_reg_599_pp0_iter3_reg : STD_LOGIC_VECTOR (6 downto 0);
    signal or_ln84_8_reg_599_pp0_iter4_reg : STD_LOGIC_VECTOR (6 downto 0);
    signal or_ln84_8_reg_599_pp0_iter5_reg : STD_LOGIC_VECTOR (6 downto 0);
    signal icmp_ln84_fu_298_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln84_reg_619 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln84_1_fu_304_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln84_1_reg_624 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln84_2_fu_310_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln84_2_reg_629 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln84_3_fu_316_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln84_3_reg_634 : STD_LOGIC_VECTOR (0 downto 0);
    signal conv2_output_load_1_reg_639 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv2_output_load_1_reg_639_pp0_iter2_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal conv2_output_load_2_reg_645 : STD_LOGIC_VECTOR (31 downto 0);
    signal conv2_output_load_2_reg_645_pp0_iter2_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal conv2_output_load_2_reg_645_pp0_iter3_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal conv2_output_load_2_reg_645_pp0_iter4_reg : STD_LOGIC_VECTOR (31 downto 0);
    signal and_ln84_1_fu_336_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln84_1_reg_651 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln84_1_reg_651_pp0_iter3_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln84_4_fu_391_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln84_4_reg_666 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln84_5_fu_397_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln84_5_reg_671 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln84_6_fu_403_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln84_6_reg_676 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln84_7_fu_409_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln84_7_reg_681 : STD_LOGIC_VECTOR (0 downto 0);
    signal select_ln84_fu_450_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal select_ln84_reg_686 : STD_LOGIC_VECTOR (5 downto 0);
    signal select_ln84_reg_686_pp0_iter5_reg : STD_LOGIC_VECTOR (5 downto 0);
    signal icmp_ln84_8_fu_498_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln84_8_reg_701 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln84_9_fu_504_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln84_9_reg_706 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln84_10_fu_510_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln84_10_reg_711 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln84_11_fu_516_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln84_11_reg_716 : STD_LOGIC_VECTOR (0 downto 0);
    signal zext_ln81_fu_207_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal tmp_1_fu_218_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_2_fu_233_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_3_fu_248_p3 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln84_fu_351_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln84_1_fu_458_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln84_2_fu_552_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal p_1_cast_fu_557_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal p_fu_60 : STD_LOGIC_VECTOR (4 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal ap_sig_allocacmp_p_1 : STD_LOGIC_VECTOR (4 downto 0);
    signal add_ln78_fu_193_p2 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_s_fu_199_p3 : STD_LOGIC_VECTOR (6 downto 0);
    signal or_ln84_6_fu_212_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal bitcast_ln84_fu_262_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal bitcast_ln84_1_fu_280_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_4_fu_266_p4 : STD_LOGIC_VECTOR (7 downto 0);
    signal trunc_ln84_2_fu_276_p1 : STD_LOGIC_VECTOR (22 downto 0);
    signal tmp_5_fu_284_p4 : STD_LOGIC_VECTOR (7 downto 0);
    signal trunc_ln84_3_fu_294_p1 : STD_LOGIC_VECTOR (22 downto 0);
    signal or_ln84_fu_322_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln84_1_fu_326_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln84_fu_330_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_7_fu_342_p4 : STD_LOGIC_VECTOR (6 downto 0);
    signal bitcast_ln84_2_fu_356_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal bitcast_ln84_3_fu_373_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_8_fu_359_p4 : STD_LOGIC_VECTOR (7 downto 0);
    signal trunc_ln84_5_fu_369_p1 : STD_LOGIC_VECTOR (22 downto 0);
    signal tmp_9_fu_377_p4 : STD_LOGIC_VECTOR (7 downto 0);
    signal trunc_ln84_6_fu_387_p1 : STD_LOGIC_VECTOR (22 downto 0);
    signal trunc_ln84_4_fu_418_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal or_ln84_2_fu_430_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln84_3_fu_434_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln84_2_fu_438_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln84_3_fu_444_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal trunc_ln84_fu_415_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal tmp_67_cast_fu_421_p4 : STD_LOGIC_VECTOR (5 downto 0);
    signal bitcast_ln84_4_fu_463_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal bitcast_ln84_5_fu_480_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_11_fu_466_p4 : STD_LOGIC_VECTOR (7 downto 0);
    signal trunc_ln84_7_fu_476_p1 : STD_LOGIC_VECTOR (22 downto 0);
    signal tmp_12_fu_484_p4 : STD_LOGIC_VECTOR (7 downto 0);
    signal trunc_ln84_8_fu_494_p1 : STD_LOGIC_VECTOR (22 downto 0);
    signal or_ln84_4_fu_525_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln84_5_fu_529_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln84_4_fu_533_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln84_5_fu_539_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal trunc_ln84_1_fu_522_p1 : STD_LOGIC_VECTOR (5 downto 0);
    signal select_ln84_1_fu_545_p3 : STD_LOGIC_VECTOR (5 downto 0);
    signal ap_block_pp0_stage0_00001 : BOOLEAN;
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter1_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter2_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter3_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter4_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter5_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter6_reg : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component DNN_fcmp_32ns_32ns_1_2_no_dsp_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (31 downto 0);
        din1 : IN STD_LOGIC_VECTOR (31 downto 0);
        ce : IN STD_LOGIC;
        opcode : IN STD_LOGIC_VECTOR (4 downto 0);
        dout : OUT STD_LOGIC_VECTOR (0 downto 0) );
    end component;


    component DNN_flow_control_loop_pipe_sequential_init IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_start_int : OUT STD_LOGIC;
        ap_loop_init : OUT STD_LOGIC;
        ap_ready_int : IN STD_LOGIC;
        ap_loop_exit_ready : IN STD_LOGIC;
        ap_loop_exit_done : IN STD_LOGIC;
        ap_continue_int : OUT STD_LOGIC;
        ap_done_int : IN STD_LOGIC );
    end component;



begin
    flow_control_loop_pipe_sequential_init_U : component DNN_flow_control_loop_pipe_sequential_init
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => ap_start,
        ap_ready => ap_ready,
        ap_done => ap_done,
        ap_start_int => ap_start_int,
        ap_loop_init => ap_loop_init,
        ap_ready_int => ap_ready_int,
        ap_loop_exit_ready => ap_condition_exit_pp0_iter0_stage0,
        ap_loop_exit_done => ap_done_int,
        ap_continue_int => ap_continue_int,
        ap_done_int => ap_done_int);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue_int = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_loop_exit_ready_pp0_iter6_reg = ap_const_logic_1))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter0_stage0)) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_enable_reg_pp0_iter1 <= ap_start_int;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter2_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter3_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter3 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter4_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter4 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter5_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter5 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter6_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter6 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter7_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter7 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
                end if; 
            end if;
        end if;
    end process;


    p_fu_60_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln78_fu_187_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    p_fu_60 <= add_ln78_fu_193_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    p_fu_60 <= ap_const_lv5_0;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then
                and_ln84_1_reg_651 <= and_ln84_1_fu_336_p2;
                and_ln84_1_reg_651_pp0_iter3_reg <= and_ln84_1_reg_651;
                ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
                ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
                ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
                ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
                conv2_output_load_1_reg_639_pp0_iter2_reg <= conv2_output_load_1_reg_639;
                conv2_output_load_2_reg_645_pp0_iter2_reg <= conv2_output_load_2_reg_645;
                conv2_output_load_2_reg_645_pp0_iter3_reg <= conv2_output_load_2_reg_645_pp0_iter2_reg;
                conv2_output_load_2_reg_645_pp0_iter4_reg <= conv2_output_load_2_reg_645_pp0_iter3_reg;
                icmp_ln84_10_reg_711 <= icmp_ln84_10_fu_510_p2;
                icmp_ln84_11_reg_716 <= icmp_ln84_11_fu_516_p2;
                icmp_ln84_4_reg_666 <= icmp_ln84_4_fu_391_p2;
                icmp_ln84_5_reg_671 <= icmp_ln84_5_fu_397_p2;
                icmp_ln84_6_reg_676 <= icmp_ln84_6_fu_403_p2;
                icmp_ln84_7_reg_681 <= icmp_ln84_7_fu_409_p2;
                icmp_ln84_8_reg_701 <= icmp_ln84_8_fu_498_p2;
                icmp_ln84_9_reg_706 <= icmp_ln84_9_fu_504_p2;
                    or_ln84_7_reg_589_pp0_iter2_reg(6 downto 2) <= or_ln84_7_reg_589_pp0_iter1_reg(6 downto 2);
                    or_ln84_7_reg_589_pp0_iter3_reg(6 downto 2) <= or_ln84_7_reg_589_pp0_iter2_reg(6 downto 2);
                    or_ln84_8_reg_599_pp0_iter2_reg(6 downto 2) <= or_ln84_8_reg_599_pp0_iter1_reg(6 downto 2);
                    or_ln84_8_reg_599_pp0_iter3_reg(6 downto 2) <= or_ln84_8_reg_599_pp0_iter2_reg(6 downto 2);
                    or_ln84_8_reg_599_pp0_iter4_reg(6 downto 2) <= or_ln84_8_reg_599_pp0_iter3_reg(6 downto 2);
                    or_ln84_8_reg_599_pp0_iter5_reg(6 downto 2) <= or_ln84_8_reg_599_pp0_iter4_reg(6 downto 2);
                p_1_reg_568_pp0_iter2_reg <= p_1_reg_568_pp0_iter1_reg;
                p_1_reg_568_pp0_iter3_reg <= p_1_reg_568_pp0_iter2_reg;
                p_1_reg_568_pp0_iter4_reg <= p_1_reg_568_pp0_iter3_reg;
                p_1_reg_568_pp0_iter5_reg <= p_1_reg_568_pp0_iter4_reg;
                p_1_reg_568_pp0_iter6_reg <= p_1_reg_568_pp0_iter5_reg;
                select_ln84_reg_686 <= select_ln84_fu_450_p3;
                select_ln84_reg_686_pp0_iter5_reg <= select_ln84_reg_686;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
                ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
                icmp_ln84_1_reg_624 <= icmp_ln84_1_fu_304_p2;
                icmp_ln84_2_reg_629 <= icmp_ln84_2_fu_310_p2;
                icmp_ln84_3_reg_634 <= icmp_ln84_3_fu_316_p2;
                icmp_ln84_reg_619 <= icmp_ln84_fu_298_p2;
                    or_ln84_7_reg_589_pp0_iter1_reg(6 downto 2) <= or_ln84_7_reg_589(6 downto 2);
                    or_ln84_8_reg_599_pp0_iter1_reg(6 downto 2) <= or_ln84_8_reg_599(6 downto 2);
                p_1_reg_568 <= ap_sig_allocacmp_p_1;
                p_1_reg_568_pp0_iter1_reg <= p_1_reg_568;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                conv2_output_load_1_reg_639 <= conv2_output_q4;
                conv2_output_load_2_reg_645 <= conv2_output_q3;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln78_fu_187_p2 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                    or_ln84_7_reg_589(6 downto 2) <= or_ln84_7_fu_227_p2(6 downto 2);
                    or_ln84_8_reg_599(6 downto 2) <= or_ln84_8_fu_242_p2(6 downto 2);
            end if;
        end if;
    end process;
    or_ln84_7_reg_589(1 downto 0) <= "10";
    or_ln84_7_reg_589_pp0_iter1_reg(1 downto 0) <= "10";
    or_ln84_7_reg_589_pp0_iter2_reg(1 downto 0) <= "10";
    or_ln84_7_reg_589_pp0_iter3_reg(1 downto 0) <= "10";
    or_ln84_8_reg_599(1 downto 0) <= "11";
    or_ln84_8_reg_599_pp0_iter1_reg(1 downto 0) <= "11";
    or_ln84_8_reg_599_pp0_iter2_reg(1 downto 0) <= "11";
    or_ln84_8_reg_599_pp0_iter3_reg(1 downto 0) <= "11";
    or_ln84_8_reg_599_pp0_iter4_reg(1 downto 0) <= "11";
    or_ln84_8_reg_599_pp0_iter5_reg(1 downto 0) <= "11";

    ap_NS_fsm_assign_proc : process (ap_CS_fsm)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    add_ln78_fu_193_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_p_1) + unsigned(ap_const_lv5_1));
    and_ln84_1_fu_336_p2 <= (grp_fu_1544_p_dout0 and and_ln84_fu_330_p2);
    and_ln84_2_fu_438_p2 <= (or_ln84_3_fu_434_p2 and or_ln84_2_fu_430_p2);
    and_ln84_3_fu_444_p2 <= (grp_fu_1548_p_dout0 and and_ln84_2_fu_438_p2);
    and_ln84_4_fu_533_p2 <= (or_ln84_5_fu_529_p2 and or_ln84_4_fu_525_p2);
    and_ln84_5_fu_539_p2 <= (grp_fu_1552_p_dout0 and and_ln84_4_fu_533_p2);
    and_ln84_fu_330_p2 <= (or_ln84_fu_322_p2 and or_ln84_1_fu_326_p2);
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_00001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage0_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state4_pp0_stage0_iter3 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state5_pp0_stage0_iter4 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state6_pp0_stage0_iter5 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state7_pp0_stage0_iter6 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state8_pp0_stage0_iter7 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_exit_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone, icmp_ln78_fu_187_p2)
    begin
        if (((icmp_ln78_fu_187_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_block_pp0_stage0_subdone, ap_done_reg, ap_loop_exit_ready_pp0_iter6_reg)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_loop_exit_ready_pp0_iter6_reg = ap_const_logic_1))) then 
            ap_done_int <= ap_const_logic_1;
        else 
            ap_done_int <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);
    ap_enable_reg_pp0_iter0 <= ap_start_int;

    ap_idle_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_idle_pp0, ap_start_int)
    begin
        if (((ap_start_int = ap_const_logic_0) and (ap_idle_pp0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2, ap_enable_reg_pp0_iter3, ap_enable_reg_pp0_iter4, ap_enable_reg_pp0_iter5, ap_enable_reg_pp0_iter6, ap_enable_reg_pp0_iter7)
    begin
        if (((ap_enable_reg_pp0_iter7 = ap_const_logic_0) and (ap_enable_reg_pp0_iter6 = ap_const_logic_0) and (ap_enable_reg_pp0_iter5 = ap_const_logic_0) and (ap_enable_reg_pp0_iter4 = ap_const_logic_0) and (ap_enable_reg_pp0_iter3 = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter0_stage0;

    ap_ready_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_allocacmp_p_1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, p_fu_60, ap_loop_init)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_loop_init = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_sig_allocacmp_p_1 <= ap_const_lv5_0;
        else 
            ap_sig_allocacmp_p_1 <= p_fu_60;
        end if; 
    end process;

    bitcast_ln84_1_fu_280_p1 <= conv2_output_q6;
    bitcast_ln84_2_fu_356_p1 <= conv2_output_load_1_reg_639_pp0_iter2_reg;
    bitcast_ln84_3_fu_373_p1 <= conv2_output_q2;
    bitcast_ln84_4_fu_463_p1 <= conv2_output_load_2_reg_645_pp0_iter4_reg;
    bitcast_ln84_5_fu_480_p1 <= conv2_output_q1;
    bitcast_ln84_fu_262_p1 <= conv2_output_q5;
    conv2_output_address0 <= zext_ln84_2_fu_552_p1(6 - 1 downto 0);
    conv2_output_address1 <= zext_ln84_1_fu_458_p1(6 - 1 downto 0);
    conv2_output_address2 <= zext_ln84_fu_351_p1(6 - 1 downto 0);
    conv2_output_address3 <= tmp_3_fu_248_p3(6 - 1 downto 0);
    conv2_output_address4 <= tmp_2_fu_233_p3(6 - 1 downto 0);
    conv2_output_address5 <= tmp_1_fu_218_p3(6 - 1 downto 0);
    conv2_output_address6 <= zext_ln81_fu_207_p1(6 - 1 downto 0);

    conv2_output_ce0_assign_proc : process(ap_enable_reg_pp0_iter6, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter6 = ap_const_logic_1))) then 
            conv2_output_ce0 <= ap_const_logic_1;
        else 
            conv2_output_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    conv2_output_ce1_assign_proc : process(ap_enable_reg_pp0_iter4, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter4 = ap_const_logic_1))) then 
            conv2_output_ce1 <= ap_const_logic_1;
        else 
            conv2_output_ce1 <= ap_const_logic_0;
        end if; 
    end process;


    conv2_output_ce2_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            conv2_output_ce2 <= ap_const_logic_1;
        else 
            conv2_output_ce2 <= ap_const_logic_0;
        end if; 
    end process;


    conv2_output_ce3_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            conv2_output_ce3 <= ap_const_logic_1;
        else 
            conv2_output_ce3 <= ap_const_logic_0;
        end if; 
    end process;


    conv2_output_ce4_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            conv2_output_ce4 <= ap_const_logic_1;
        else 
            conv2_output_ce4 <= ap_const_logic_0;
        end if; 
    end process;


    conv2_output_ce5_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            conv2_output_ce5 <= ap_const_logic_1;
        else 
            conv2_output_ce5 <= ap_const_logic_0;
        end if; 
    end process;


    conv2_output_ce6_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            conv2_output_ce6 <= ap_const_logic_1;
        else 
            conv2_output_ce6 <= ap_const_logic_0;
        end if; 
    end process;

    grp_fu_1544_p_ce <= ap_const_logic_1;
    grp_fu_1544_p_din0 <= conv2_output_q5;
    grp_fu_1544_p_din1 <= conv2_output_q6;
    grp_fu_1544_p_opcode <= ap_const_lv5_2;
    grp_fu_1548_p_ce <= ap_const_logic_1;
    grp_fu_1548_p_din0 <= conv2_output_load_1_reg_639_pp0_iter2_reg;
    grp_fu_1548_p_din1 <= conv2_output_q2;
    grp_fu_1548_p_opcode <= ap_const_lv5_2;
    grp_fu_1552_p_ce <= ap_const_logic_1;
    grp_fu_1552_p_din0 <= conv2_output_load_2_reg_645_pp0_iter4_reg;
    grp_fu_1552_p_din1 <= conv2_output_q1;
    grp_fu_1552_p_opcode <= ap_const_lv5_2;
    icmp_ln78_fu_187_p2 <= "1" when (ap_sig_allocacmp_p_1 = ap_const_lv5_10) else "0";
    icmp_ln84_10_fu_510_p2 <= "0" when (tmp_12_fu_484_p4 = ap_const_lv8_FF) else "1";
    icmp_ln84_11_fu_516_p2 <= "1" when (trunc_ln84_8_fu_494_p1 = ap_const_lv23_0) else "0";
    icmp_ln84_1_fu_304_p2 <= "1" when (trunc_ln84_2_fu_276_p1 = ap_const_lv23_0) else "0";
    icmp_ln84_2_fu_310_p2 <= "0" when (tmp_5_fu_284_p4 = ap_const_lv8_FF) else "1";
    icmp_ln84_3_fu_316_p2 <= "1" when (trunc_ln84_3_fu_294_p1 = ap_const_lv23_0) else "0";
    icmp_ln84_4_fu_391_p2 <= "0" when (tmp_8_fu_359_p4 = ap_const_lv8_FF) else "1";
    icmp_ln84_5_fu_397_p2 <= "1" when (trunc_ln84_5_fu_369_p1 = ap_const_lv23_0) else "0";
    icmp_ln84_6_fu_403_p2 <= "0" when (tmp_9_fu_377_p4 = ap_const_lv8_FF) else "1";
    icmp_ln84_7_fu_409_p2 <= "1" when (trunc_ln84_6_fu_387_p1 = ap_const_lv23_0) else "0";
    icmp_ln84_8_fu_498_p2 <= "0" when (tmp_11_fu_466_p4 = ap_const_lv8_FF) else "1";
    icmp_ln84_9_fu_504_p2 <= "1" when (trunc_ln84_7_fu_476_p1 = ap_const_lv23_0) else "0";
    icmp_ln84_fu_298_p2 <= "0" when (tmp_4_fu_266_p4 = ap_const_lv8_FF) else "1";
    or_ln84_1_fu_326_p2 <= (icmp_ln84_3_reg_634 or icmp_ln84_2_reg_629);
    or_ln84_2_fu_430_p2 <= (icmp_ln84_5_reg_671 or icmp_ln84_4_reg_666);
    or_ln84_3_fu_434_p2 <= (icmp_ln84_7_reg_681 or icmp_ln84_6_reg_676);
    or_ln84_4_fu_525_p2 <= (icmp_ln84_9_reg_706 or icmp_ln84_8_reg_701);
    or_ln84_5_fu_529_p2 <= (icmp_ln84_11_reg_716 or icmp_ln84_10_reg_711);
    or_ln84_6_fu_212_p2 <= (tmp_s_fu_199_p3 or ap_const_lv7_1);
    or_ln84_7_fu_227_p2 <= (tmp_s_fu_199_p3 or ap_const_lv7_2);
    or_ln84_8_fu_242_p2 <= (tmp_s_fu_199_p3 or ap_const_lv7_3);
    or_ln84_fu_322_p2 <= (icmp_ln84_reg_619 or icmp_ln84_1_reg_624);
    p_1_cast_fu_557_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_1_reg_568_pp0_iter6_reg),64));
    pool2_output_0_0_address0 <= p_1_cast_fu_557_p1(4 - 1 downto 0);

    pool2_output_0_0_ce0_assign_proc : process(ap_enable_reg_pp0_iter7, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter7 = ap_const_logic_1))) then 
            pool2_output_0_0_ce0 <= ap_const_logic_1;
        else 
            pool2_output_0_0_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    pool2_output_0_0_d0 <= conv2_output_q0;

    pool2_output_0_0_we0_assign_proc : process(ap_enable_reg_pp0_iter7, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter7 = ap_const_logic_1))) then 
            pool2_output_0_0_we0 <= ap_const_logic_1;
        else 
            pool2_output_0_0_we0 <= ap_const_logic_0;
        end if; 
    end process;

    select_ln84_1_fu_545_p3 <= 
        trunc_ln84_1_fu_522_p1 when (and_ln84_5_fu_539_p2(0) = '1') else 
        select_ln84_reg_686_pp0_iter5_reg;
    select_ln84_fu_450_p3 <= 
        trunc_ln84_fu_415_p1 when (and_ln84_3_fu_444_p2(0) = '1') else 
        tmp_67_cast_fu_421_p4;
    tmp_11_fu_466_p4 <= bitcast_ln84_4_fu_463_p1(30 downto 23);
    tmp_12_fu_484_p4 <= bitcast_ln84_5_fu_480_p1(30 downto 23);
    tmp_1_fu_218_p3 <= (ap_const_lv57_0 & or_ln84_6_fu_212_p2);
    tmp_2_fu_233_p3 <= (ap_const_lv57_0 & or_ln84_7_fu_227_p2);
    tmp_3_fu_248_p3 <= (ap_const_lv57_0 & or_ln84_8_fu_242_p2);
    tmp_4_fu_266_p4 <= bitcast_ln84_fu_262_p1(30 downto 23);
    tmp_5_fu_284_p4 <= bitcast_ln84_1_fu_280_p1(30 downto 23);
    tmp_67_cast_fu_421_p4 <= ((trunc_ln84_4_fu_418_p1 & ap_const_lv1_0) & and_ln84_1_reg_651_pp0_iter3_reg);
    tmp_7_fu_342_p4 <= ((p_1_reg_568_pp0_iter1_reg & ap_const_lv1_0) & and_ln84_1_fu_336_p2);
    tmp_8_fu_359_p4 <= bitcast_ln84_2_fu_356_p1(30 downto 23);
    tmp_9_fu_377_p4 <= bitcast_ln84_3_fu_373_p1(30 downto 23);
    tmp_s_fu_199_p3 <= (ap_sig_allocacmp_p_1 & ap_const_lv2_0);
    trunc_ln84_1_fu_522_p1 <= or_ln84_8_reg_599_pp0_iter5_reg(6 - 1 downto 0);
    trunc_ln84_2_fu_276_p1 <= bitcast_ln84_fu_262_p1(23 - 1 downto 0);
    trunc_ln84_3_fu_294_p1 <= bitcast_ln84_1_fu_280_p1(23 - 1 downto 0);
    trunc_ln84_4_fu_418_p1 <= p_1_reg_568_pp0_iter3_reg(4 - 1 downto 0);
    trunc_ln84_5_fu_369_p1 <= bitcast_ln84_2_fu_356_p1(23 - 1 downto 0);
    trunc_ln84_6_fu_387_p1 <= bitcast_ln84_3_fu_373_p1(23 - 1 downto 0);
    trunc_ln84_7_fu_476_p1 <= bitcast_ln84_4_fu_463_p1(23 - 1 downto 0);
    trunc_ln84_8_fu_494_p1 <= bitcast_ln84_5_fu_480_p1(23 - 1 downto 0);
    trunc_ln84_fu_415_p1 <= or_ln84_7_reg_589_pp0_iter3_reg(6 - 1 downto 0);
    zext_ln81_fu_207_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_s_fu_199_p3),64));
    zext_ln84_1_fu_458_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln84_fu_450_p3),64));
    zext_ln84_2_fu_552_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln84_1_fu_545_p3),64));
    zext_ln84_fu_351_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_7_fu_342_p4),64));
end behav;
