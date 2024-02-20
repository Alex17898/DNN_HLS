-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Version: 2021.1
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity DNN_DNN_Pipeline_VITIS_LOOP_158_12 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    output_r_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    output_r_ce0 : OUT STD_LOGIC;
    output_r_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    max_idx_out : OUT STD_LOGIC_VECTOR (31 downto 0);
    max_idx_out_ap_vld : OUT STD_LOGIC;
    grp_fu_1544_p_din0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    grp_fu_1544_p_din1 : OUT STD_LOGIC_VECTOR (31 downto 0);
    grp_fu_1544_p_opcode : OUT STD_LOGIC_VECTOR (4 downto 0);
    grp_fu_1544_p_dout0 : IN STD_LOGIC_VECTOR (0 downto 0);
    grp_fu_1544_p_ce : OUT STD_LOGIC );
end;


architecture behav of DNN_DNN_Pipeline_VITIS_LOOP_158_12 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_C479F99A : STD_LOGIC_VECTOR (31 downto 0) := "11000100011110011111100110011010";
    constant ap_const_lv32_FFFFFFFF : STD_LOGIC_VECTOR (31 downto 0) := "11111111111111111111111111111111";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv4_A : STD_LOGIC_VECTOR (3 downto 0) := "1010";
    constant ap_const_lv4_1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
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
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal icmp_ln158_fu_99_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal i_reg_263 : STD_LOGIC_VECTOR (3 downto 0);
    signal i_reg_263_pp0_iter1_reg : STD_LOGIC_VECTOR (3 downto 0);
    signal icmp_ln158_reg_268 : STD_LOGIC_VECTOR (0 downto 0);
    signal max_val_load_reg_277 : STD_LOGIC_VECTOR (31 downto 0);
    signal max_val_1_reg_284 : STD_LOGIC_VECTOR (31 downto 0);
    signal trunc_ln159_cast_fu_111_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal max_val_fu_44 : STD_LOGIC_VECTOR (31 downto 0);
    signal max_val_2_fu_210_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_sig_allocacmp_max_val_load : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal max_idx_fu_48 : STD_LOGIC_VECTOR (31 downto 0);
    signal max_idx_4_fu_219_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal max_idx_1_fu_52 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_sig_allocacmp_i : STD_LOGIC_VECTOR (3 downto 0);
    signal add_ln158_fu_105_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal bitcast_ln159_fu_128_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal bitcast_ln159_1_fu_145_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_s_fu_131_p4 : STD_LOGIC_VECTOR (7 downto 0);
    signal trunc_ln159_fu_141_p1 : STD_LOGIC_VECTOR (22 downto 0);
    signal icmp_ln159_1_fu_168_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln159_fu_162_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_22_fu_148_p4 : STD_LOGIC_VECTOR (7 downto 0);
    signal trunc_ln159_1_fu_158_p1 : STD_LOGIC_VECTOR (22 downto 0);
    signal icmp_ln159_3_fu_186_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln159_2_fu_180_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln159_fu_174_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln159_fu_198_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal or_ln159_1_fu_192_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln159_1_fu_204_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal zext_ln159_fu_216_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_block_pp0_stage0_00001 : BOOLEAN;
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter1_reg : STD_LOGIC;
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
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_loop_exit_ready_pp0_iter1_reg = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
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


    max_idx_1_fu_52_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln158_fu_99_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    max_idx_1_fu_52 <= add_ln158_fu_105_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    max_idx_1_fu_52 <= ap_const_lv4_0;
                end if;
            end if; 
        end if;
    end process;

    max_idx_fu_48_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then
                if (((ap_loop_init = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    max_idx_fu_48 <= ap_const_lv32_FFFFFFFF;
                elsif ((ap_enable_reg_pp0_iter2 = ap_const_logic_1)) then 
                    max_idx_fu_48 <= max_idx_4_fu_219_p3;
                end if;
            end if; 
        end if;
    end process;

    max_val_fu_44_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then
                if (((ap_loop_init = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    max_val_fu_44 <= ap_const_lv32_C479F99A;
                elsif ((ap_enable_reg_pp0_iter2 = ap_const_logic_1)) then 
                    max_val_fu_44 <= max_val_2_fu_210_p3;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
                i_reg_263 <= ap_sig_allocacmp_i;
                i_reg_263_pp0_iter1_reg <= i_reg_263;
                icmp_ln158_reg_268 <= icmp_ln158_fu_99_p2;
                max_val_1_reg_284 <= output_r_q0;
                max_val_load_reg_277 <= ap_sig_allocacmp_max_val_load;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    add_ln158_fu_105_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_i) + unsigned(ap_const_lv4_1));
    and_ln159_1_fu_204_p2 <= (or_ln159_1_fu_192_p2 and and_ln159_fu_198_p2);
    and_ln159_fu_198_p2 <= (or_ln159_fu_174_p2 and grp_fu_1544_p_dout0);
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_00001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_01001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage0_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_exit_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone, icmp_ln158_fu_99_p2)
    begin
        if (((icmp_ln158_fu_99_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_subdone, ap_done_reg, ap_loop_exit_ready_pp0_iter1_reg)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_loop_exit_ready_pp0_iter1_reg = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_done_int <= ap_const_logic_1;
        else 
            ap_done_int <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);
    ap_enable_reg_pp0_iter0 <= ap_start_int;

    ap_idle_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_idle_pp0, ap_start_int)
    begin
        if (((ap_idle_pp0 = ap_const_logic_1) and (ap_start_int = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
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


    ap_sig_allocacmp_i_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, ap_loop_init, max_idx_1_fu_52)
    begin
        if (((ap_loop_init = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_sig_allocacmp_i <= ap_const_lv4_0;
        else 
            ap_sig_allocacmp_i <= max_idx_1_fu_52;
        end if; 
    end process;


    ap_sig_allocacmp_max_val_load_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0, max_val_fu_44, max_val_2_fu_210_p3)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            ap_sig_allocacmp_max_val_load <= max_val_2_fu_210_p3;
        else 
            ap_sig_allocacmp_max_val_load <= max_val_fu_44;
        end if; 
    end process;

    bitcast_ln159_1_fu_145_p1 <= max_val_load_reg_277;
    bitcast_ln159_fu_128_p1 <= max_val_1_reg_284;
    grp_fu_1544_p_ce <= ap_const_logic_1;
    grp_fu_1544_p_din0 <= output_r_q0;
    grp_fu_1544_p_din1 <= ap_sig_allocacmp_max_val_load;
    grp_fu_1544_p_opcode <= ap_const_lv5_2;
    icmp_ln158_fu_99_p2 <= "1" when (ap_sig_allocacmp_i = ap_const_lv4_A) else "0";
    icmp_ln159_1_fu_168_p2 <= "1" when (trunc_ln159_fu_141_p1 = ap_const_lv23_0) else "0";
    icmp_ln159_2_fu_180_p2 <= "0" when (tmp_22_fu_148_p4 = ap_const_lv8_FF) else "1";
    icmp_ln159_3_fu_186_p2 <= "1" when (trunc_ln159_1_fu_158_p1 = ap_const_lv23_0) else "0";
    icmp_ln159_fu_162_p2 <= "0" when (tmp_s_fu_131_p4 = ap_const_lv8_FF) else "1";
    max_idx_4_fu_219_p3 <= 
        zext_ln159_fu_216_p1 when (and_ln159_1_fu_204_p2(0) = '1') else 
        max_idx_fu_48;
    max_idx_out <= max_idx_fu_48;

    max_idx_out_ap_vld_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0_11001, icmp_ln158_reg_268)
    begin
        if (((icmp_ln158_reg_268 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            max_idx_out_ap_vld <= ap_const_logic_1;
        else 
            max_idx_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    max_val_2_fu_210_p3 <= 
        max_val_1_reg_284 when (and_ln159_1_fu_204_p2(0) = '1') else 
        max_val_load_reg_277;
    or_ln159_1_fu_192_p2 <= (icmp_ln159_3_fu_186_p2 or icmp_ln159_2_fu_180_p2);
    or_ln159_fu_174_p2 <= (icmp_ln159_fu_162_p2 or icmp_ln159_1_fu_168_p2);
    output_r_address0 <= trunc_ln159_cast_fu_111_p1(4 - 1 downto 0);

    output_r_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            output_r_ce0 <= ap_const_logic_1;
        else 
            output_r_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    tmp_22_fu_148_p4 <= bitcast_ln159_1_fu_145_p1(30 downto 23);
    tmp_s_fu_131_p4 <= bitcast_ln159_fu_128_p1(30 downto 23);
    trunc_ln159_1_fu_158_p1 <= bitcast_ln159_1_fu_145_p1(23 - 1 downto 0);
    trunc_ln159_cast_fu_111_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ap_sig_allocacmp_i),64));
    trunc_ln159_fu_141_p1 <= bitcast_ln159_fu_128_p1(23 - 1 downto 0);
    zext_ln159_fu_216_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_reg_263_pp0_iter1_reg),32));
end behav;
