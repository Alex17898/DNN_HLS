// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module DNN_DNN_Pipeline_VITIS_LOOP_78_1 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        conv2_output_address0,
        conv2_output_ce0,
        conv2_output_q0,
        conv2_output_address1,
        conv2_output_ce1,
        conv2_output_q1,
        conv2_output_address2,
        conv2_output_ce2,
        conv2_output_q2,
        conv2_output_address3,
        conv2_output_ce3,
        conv2_output_q3,
        conv2_output_address4,
        conv2_output_ce4,
        conv2_output_q4,
        conv2_output_address5,
        conv2_output_ce5,
        conv2_output_q5,
        conv2_output_address6,
        conv2_output_ce6,
        conv2_output_q6,
        pool2_output_0_0_address0,
        pool2_output_0_0_ce0,
        pool2_output_0_0_we0,
        pool2_output_0_0_d0,
        grp_fu_1544_p_din0,
        grp_fu_1544_p_din1,
        grp_fu_1544_p_opcode,
        grp_fu_1544_p_dout0,
        grp_fu_1544_p_ce,
        grp_fu_1548_p_din0,
        grp_fu_1548_p_din1,
        grp_fu_1548_p_opcode,
        grp_fu_1548_p_dout0,
        grp_fu_1548_p_ce,
        grp_fu_1552_p_din0,
        grp_fu_1552_p_din1,
        grp_fu_1552_p_opcode,
        grp_fu_1552_p_dout0,
        grp_fu_1552_p_ce
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [5:0] conv2_output_address0;
output   conv2_output_ce0;
input  [31:0] conv2_output_q0;
output  [5:0] conv2_output_address1;
output   conv2_output_ce1;
input  [31:0] conv2_output_q1;
output  [5:0] conv2_output_address2;
output   conv2_output_ce2;
input  [31:0] conv2_output_q2;
output  [5:0] conv2_output_address3;
output   conv2_output_ce3;
input  [31:0] conv2_output_q3;
output  [5:0] conv2_output_address4;
output   conv2_output_ce4;
input  [31:0] conv2_output_q4;
output  [5:0] conv2_output_address5;
output   conv2_output_ce5;
input  [31:0] conv2_output_q5;
output  [5:0] conv2_output_address6;
output   conv2_output_ce6;
input  [31:0] conv2_output_q6;
output  [3:0] pool2_output_0_0_address0;
output   pool2_output_0_0_ce0;
output   pool2_output_0_0_we0;
output  [31:0] pool2_output_0_0_d0;
output  [31:0] grp_fu_1544_p_din0;
output  [31:0] grp_fu_1544_p_din1;
output  [4:0] grp_fu_1544_p_opcode;
input  [0:0] grp_fu_1544_p_dout0;
output   grp_fu_1544_p_ce;
output  [31:0] grp_fu_1548_p_din0;
output  [31:0] grp_fu_1548_p_din1;
output  [4:0] grp_fu_1548_p_opcode;
input  [0:0] grp_fu_1548_p_dout0;
output   grp_fu_1548_p_ce;
output  [31:0] grp_fu_1552_p_din0;
output  [31:0] grp_fu_1552_p_din1;
output  [4:0] grp_fu_1552_p_opcode;
input  [0:0] grp_fu_1552_p_dout0;
output   grp_fu_1552_p_ce;

reg ap_idle;
reg conv2_output_ce0;
reg conv2_output_ce1;
reg conv2_output_ce2;
reg conv2_output_ce3;
reg conv2_output_ce4;
reg conv2_output_ce5;
reg conv2_output_ce6;
reg pool2_output_0_0_ce0;
reg pool2_output_0_0_we0;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_state3_pp0_stage0_iter2;
wire    ap_block_state4_pp0_stage0_iter3;
wire    ap_block_state5_pp0_stage0_iter4;
wire    ap_block_state6_pp0_stage0_iter5;
wire    ap_block_state7_pp0_stage0_iter6;
wire    ap_block_state8_pp0_stage0_iter7;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln78_fu_187_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [4:0] p_1_reg_568;
wire    ap_block_pp0_stage0_11001;
reg   [4:0] p_1_reg_568_pp0_iter1_reg;
reg   [4:0] p_1_reg_568_pp0_iter2_reg;
reg   [4:0] p_1_reg_568_pp0_iter3_reg;
reg   [4:0] p_1_reg_568_pp0_iter4_reg;
reg   [4:0] p_1_reg_568_pp0_iter5_reg;
reg   [4:0] p_1_reg_568_pp0_iter6_reg;
wire   [6:0] or_ln84_7_fu_227_p2;
reg   [6:0] or_ln84_7_reg_589;
reg   [6:0] or_ln84_7_reg_589_pp0_iter1_reg;
reg   [6:0] or_ln84_7_reg_589_pp0_iter2_reg;
reg   [6:0] or_ln84_7_reg_589_pp0_iter3_reg;
wire   [6:0] or_ln84_8_fu_242_p2;
reg   [6:0] or_ln84_8_reg_599;
reg   [6:0] or_ln84_8_reg_599_pp0_iter1_reg;
reg   [6:0] or_ln84_8_reg_599_pp0_iter2_reg;
reg   [6:0] or_ln84_8_reg_599_pp0_iter3_reg;
reg   [6:0] or_ln84_8_reg_599_pp0_iter4_reg;
reg   [6:0] or_ln84_8_reg_599_pp0_iter5_reg;
wire   [0:0] icmp_ln84_fu_298_p2;
reg   [0:0] icmp_ln84_reg_619;
wire   [0:0] icmp_ln84_1_fu_304_p2;
reg   [0:0] icmp_ln84_1_reg_624;
wire   [0:0] icmp_ln84_2_fu_310_p2;
reg   [0:0] icmp_ln84_2_reg_629;
wire   [0:0] icmp_ln84_3_fu_316_p2;
reg   [0:0] icmp_ln84_3_reg_634;
reg   [31:0] conv2_output_load_1_reg_639;
reg   [31:0] conv2_output_load_1_reg_639_pp0_iter2_reg;
reg   [31:0] conv2_output_load_2_reg_645;
reg   [31:0] conv2_output_load_2_reg_645_pp0_iter2_reg;
reg   [31:0] conv2_output_load_2_reg_645_pp0_iter3_reg;
reg   [31:0] conv2_output_load_2_reg_645_pp0_iter4_reg;
wire   [0:0] and_ln84_1_fu_336_p2;
reg   [0:0] and_ln84_1_reg_651;
reg   [0:0] and_ln84_1_reg_651_pp0_iter3_reg;
wire   [0:0] icmp_ln84_4_fu_391_p2;
reg   [0:0] icmp_ln84_4_reg_666;
wire   [0:0] icmp_ln84_5_fu_397_p2;
reg   [0:0] icmp_ln84_5_reg_671;
wire   [0:0] icmp_ln84_6_fu_403_p2;
reg   [0:0] icmp_ln84_6_reg_676;
wire   [0:0] icmp_ln84_7_fu_409_p2;
reg   [0:0] icmp_ln84_7_reg_681;
wire   [5:0] select_ln84_fu_450_p3;
reg   [5:0] select_ln84_reg_686;
reg   [5:0] select_ln84_reg_686_pp0_iter5_reg;
wire   [0:0] icmp_ln84_8_fu_498_p2;
reg   [0:0] icmp_ln84_8_reg_701;
wire   [0:0] icmp_ln84_9_fu_504_p2;
reg   [0:0] icmp_ln84_9_reg_706;
wire   [0:0] icmp_ln84_10_fu_510_p2;
reg   [0:0] icmp_ln84_10_reg_711;
wire   [0:0] icmp_ln84_11_fu_516_p2;
reg   [0:0] icmp_ln84_11_reg_716;
wire   [63:0] zext_ln81_fu_207_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] tmp_1_fu_218_p3;
wire   [63:0] tmp_2_fu_233_p3;
wire   [63:0] tmp_3_fu_248_p3;
wire   [63:0] zext_ln84_fu_351_p1;
wire   [63:0] zext_ln84_1_fu_458_p1;
wire   [63:0] zext_ln84_2_fu_552_p1;
wire   [63:0] p_1_cast_fu_557_p1;
reg   [4:0] p_fu_60;
wire    ap_loop_init;
reg   [4:0] ap_sig_allocacmp_p_1;
wire   [4:0] add_ln78_fu_193_p2;
wire   [6:0] tmp_s_fu_199_p3;
wire   [6:0] or_ln84_6_fu_212_p2;
wire   [31:0] bitcast_ln84_fu_262_p1;
wire   [31:0] bitcast_ln84_1_fu_280_p1;
wire   [7:0] tmp_4_fu_266_p4;
wire   [22:0] trunc_ln84_2_fu_276_p1;
wire   [7:0] tmp_5_fu_284_p4;
wire   [22:0] trunc_ln84_3_fu_294_p1;
wire   [0:0] or_ln84_fu_322_p2;
wire   [0:0] or_ln84_1_fu_326_p2;
wire   [0:0] and_ln84_fu_330_p2;
wire   [6:0] tmp_7_fu_342_p4;
wire   [31:0] bitcast_ln84_2_fu_356_p1;
wire   [31:0] bitcast_ln84_3_fu_373_p1;
wire   [7:0] tmp_8_fu_359_p4;
wire   [22:0] trunc_ln84_5_fu_369_p1;
wire   [7:0] tmp_9_fu_377_p4;
wire   [22:0] trunc_ln84_6_fu_387_p1;
wire   [3:0] trunc_ln84_4_fu_418_p1;
wire   [0:0] or_ln84_2_fu_430_p2;
wire   [0:0] or_ln84_3_fu_434_p2;
wire   [0:0] and_ln84_2_fu_438_p2;
wire   [0:0] and_ln84_3_fu_444_p2;
wire   [5:0] trunc_ln84_fu_415_p1;
wire   [5:0] tmp_67_cast_fu_421_p4;
wire   [31:0] bitcast_ln84_4_fu_463_p1;
wire   [31:0] bitcast_ln84_5_fu_480_p1;
wire   [7:0] tmp_11_fu_466_p4;
wire   [22:0] trunc_ln84_7_fu_476_p1;
wire   [7:0] tmp_12_fu_484_p4;
wire   [22:0] trunc_ln84_8_fu_494_p1;
wire   [0:0] or_ln84_4_fu_525_p2;
wire   [0:0] or_ln84_5_fu_529_p2;
wire   [0:0] and_ln84_4_fu_533_p2;
wire   [0:0] and_ln84_5_fu_539_p2;
wire   [5:0] trunc_ln84_1_fu_522_p1;
wire   [5:0] select_ln84_1_fu_545_p3;
wire    ap_block_pp0_stage0_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_done_reg = 1'b0;
end

DNN_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter6_reg == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln78_fu_187_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            p_fu_60 <= add_ln78_fu_193_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            p_fu_60 <= 5'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
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
        or_ln84_7_reg_589_pp0_iter2_reg[6 : 2] <= or_ln84_7_reg_589_pp0_iter1_reg[6 : 2];
        or_ln84_7_reg_589_pp0_iter3_reg[6 : 2] <= or_ln84_7_reg_589_pp0_iter2_reg[6 : 2];
        or_ln84_8_reg_599_pp0_iter2_reg[6 : 2] <= or_ln84_8_reg_599_pp0_iter1_reg[6 : 2];
        or_ln84_8_reg_599_pp0_iter3_reg[6 : 2] <= or_ln84_8_reg_599_pp0_iter2_reg[6 : 2];
        or_ln84_8_reg_599_pp0_iter4_reg[6 : 2] <= or_ln84_8_reg_599_pp0_iter3_reg[6 : 2];
        or_ln84_8_reg_599_pp0_iter5_reg[6 : 2] <= or_ln84_8_reg_599_pp0_iter4_reg[6 : 2];
        p_1_reg_568_pp0_iter2_reg <= p_1_reg_568_pp0_iter1_reg;
        p_1_reg_568_pp0_iter3_reg <= p_1_reg_568_pp0_iter2_reg;
        p_1_reg_568_pp0_iter4_reg <= p_1_reg_568_pp0_iter3_reg;
        p_1_reg_568_pp0_iter5_reg <= p_1_reg_568_pp0_iter4_reg;
        p_1_reg_568_pp0_iter6_reg <= p_1_reg_568_pp0_iter5_reg;
        select_ln84_reg_686 <= select_ln84_fu_450_p3;
        select_ln84_reg_686_pp0_iter5_reg <= select_ln84_reg_686;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln84_1_reg_624 <= icmp_ln84_1_fu_304_p2;
        icmp_ln84_2_reg_629 <= icmp_ln84_2_fu_310_p2;
        icmp_ln84_3_reg_634 <= icmp_ln84_3_fu_316_p2;
        icmp_ln84_reg_619 <= icmp_ln84_fu_298_p2;
        or_ln84_7_reg_589_pp0_iter1_reg[6 : 2] <= or_ln84_7_reg_589[6 : 2];
        or_ln84_8_reg_599_pp0_iter1_reg[6 : 2] <= or_ln84_8_reg_599[6 : 2];
        p_1_reg_568 <= ap_sig_allocacmp_p_1;
        p_1_reg_568_pp0_iter1_reg <= p_1_reg_568;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        conv2_output_load_1_reg_639 <= conv2_output_q4;
        conv2_output_load_2_reg_645 <= conv2_output_q3;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln78_fu_187_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        or_ln84_7_reg_589[6 : 2] <= or_ln84_7_fu_227_p2[6 : 2];
        or_ln84_8_reg_599[6 : 2] <= or_ln84_8_fu_242_p2[6 : 2];
    end
end

always @ (*) begin
    if (((icmp_ln78_fu_187_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter6_reg == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start_int == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_p_1 = 5'd0;
    end else begin
        ap_sig_allocacmp_p_1 = p_fu_60;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        conv2_output_ce0 = 1'b1;
    end else begin
        conv2_output_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        conv2_output_ce1 = 1'b1;
    end else begin
        conv2_output_ce1 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        conv2_output_ce2 = 1'b1;
    end else begin
        conv2_output_ce2 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        conv2_output_ce3 = 1'b1;
    end else begin
        conv2_output_ce3 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        conv2_output_ce4 = 1'b1;
    end else begin
        conv2_output_ce4 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        conv2_output_ce5 = 1'b1;
    end else begin
        conv2_output_ce5 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        conv2_output_ce6 = 1'b1;
    end else begin
        conv2_output_ce6 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        pool2_output_0_0_ce0 = 1'b1;
    end else begin
        pool2_output_0_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter7 == 1'b1))) begin
        pool2_output_0_0_we0 = 1'b1;
    end else begin
        pool2_output_0_0_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln78_fu_193_p2 = (ap_sig_allocacmp_p_1 + 5'd1);

assign and_ln84_1_fu_336_p2 = (grp_fu_1544_p_dout0 & and_ln84_fu_330_p2);

assign and_ln84_2_fu_438_p2 = (or_ln84_3_fu_434_p2 & or_ln84_2_fu_430_p2);

assign and_ln84_3_fu_444_p2 = (grp_fu_1548_p_dout0 & and_ln84_2_fu_438_p2);

assign and_ln84_4_fu_533_p2 = (or_ln84_5_fu_529_p2 & or_ln84_4_fu_525_p2);

assign and_ln84_5_fu_539_p2 = (grp_fu_1552_p_dout0 & and_ln84_4_fu_533_p2);

assign and_ln84_fu_330_p2 = (or_ln84_fu_322_p2 & or_ln84_1_fu_326_p2);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter4 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter5 = ~(1'b1 == 1'b1);

assign ap_block_state7_pp0_stage0_iter6 = ~(1'b1 == 1'b1);

assign ap_block_state8_pp0_stage0_iter7 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign bitcast_ln84_1_fu_280_p1 = conv2_output_q6;

assign bitcast_ln84_2_fu_356_p1 = conv2_output_load_1_reg_639_pp0_iter2_reg;

assign bitcast_ln84_3_fu_373_p1 = conv2_output_q2;

assign bitcast_ln84_4_fu_463_p1 = conv2_output_load_2_reg_645_pp0_iter4_reg;

assign bitcast_ln84_5_fu_480_p1 = conv2_output_q1;

assign bitcast_ln84_fu_262_p1 = conv2_output_q5;

assign conv2_output_address0 = zext_ln84_2_fu_552_p1;

assign conv2_output_address1 = zext_ln84_1_fu_458_p1;

assign conv2_output_address2 = zext_ln84_fu_351_p1;

assign conv2_output_address3 = tmp_3_fu_248_p3;

assign conv2_output_address4 = tmp_2_fu_233_p3;

assign conv2_output_address5 = tmp_1_fu_218_p3;

assign conv2_output_address6 = zext_ln81_fu_207_p1;

assign grp_fu_1544_p_ce = 1'b1;

assign grp_fu_1544_p_din0 = conv2_output_q5;

assign grp_fu_1544_p_din1 = conv2_output_q6;

assign grp_fu_1544_p_opcode = 5'd2;

assign grp_fu_1548_p_ce = 1'b1;

assign grp_fu_1548_p_din0 = conv2_output_load_1_reg_639_pp0_iter2_reg;

assign grp_fu_1548_p_din1 = conv2_output_q2;

assign grp_fu_1548_p_opcode = 5'd2;

assign grp_fu_1552_p_ce = 1'b1;

assign grp_fu_1552_p_din0 = conv2_output_load_2_reg_645_pp0_iter4_reg;

assign grp_fu_1552_p_din1 = conv2_output_q1;

assign grp_fu_1552_p_opcode = 5'd2;

assign icmp_ln78_fu_187_p2 = ((ap_sig_allocacmp_p_1 == 5'd16) ? 1'b1 : 1'b0);

assign icmp_ln84_10_fu_510_p2 = ((tmp_12_fu_484_p4 != 8'd255) ? 1'b1 : 1'b0);

assign icmp_ln84_11_fu_516_p2 = ((trunc_ln84_8_fu_494_p1 == 23'd0) ? 1'b1 : 1'b0);

assign icmp_ln84_1_fu_304_p2 = ((trunc_ln84_2_fu_276_p1 == 23'd0) ? 1'b1 : 1'b0);

assign icmp_ln84_2_fu_310_p2 = ((tmp_5_fu_284_p4 != 8'd255) ? 1'b1 : 1'b0);

assign icmp_ln84_3_fu_316_p2 = ((trunc_ln84_3_fu_294_p1 == 23'd0) ? 1'b1 : 1'b0);

assign icmp_ln84_4_fu_391_p2 = ((tmp_8_fu_359_p4 != 8'd255) ? 1'b1 : 1'b0);

assign icmp_ln84_5_fu_397_p2 = ((trunc_ln84_5_fu_369_p1 == 23'd0) ? 1'b1 : 1'b0);

assign icmp_ln84_6_fu_403_p2 = ((tmp_9_fu_377_p4 != 8'd255) ? 1'b1 : 1'b0);

assign icmp_ln84_7_fu_409_p2 = ((trunc_ln84_6_fu_387_p1 == 23'd0) ? 1'b1 : 1'b0);

assign icmp_ln84_8_fu_498_p2 = ((tmp_11_fu_466_p4 != 8'd255) ? 1'b1 : 1'b0);

assign icmp_ln84_9_fu_504_p2 = ((trunc_ln84_7_fu_476_p1 == 23'd0) ? 1'b1 : 1'b0);

assign icmp_ln84_fu_298_p2 = ((tmp_4_fu_266_p4 != 8'd255) ? 1'b1 : 1'b0);

assign or_ln84_1_fu_326_p2 = (icmp_ln84_3_reg_634 | icmp_ln84_2_reg_629);

assign or_ln84_2_fu_430_p2 = (icmp_ln84_5_reg_671 | icmp_ln84_4_reg_666);

assign or_ln84_3_fu_434_p2 = (icmp_ln84_7_reg_681 | icmp_ln84_6_reg_676);

assign or_ln84_4_fu_525_p2 = (icmp_ln84_9_reg_706 | icmp_ln84_8_reg_701);

assign or_ln84_5_fu_529_p2 = (icmp_ln84_11_reg_716 | icmp_ln84_10_reg_711);

assign or_ln84_6_fu_212_p2 = (tmp_s_fu_199_p3 | 7'd1);

assign or_ln84_7_fu_227_p2 = (tmp_s_fu_199_p3 | 7'd2);

assign or_ln84_8_fu_242_p2 = (tmp_s_fu_199_p3 | 7'd3);

assign or_ln84_fu_322_p2 = (icmp_ln84_reg_619 | icmp_ln84_1_reg_624);

assign p_1_cast_fu_557_p1 = p_1_reg_568_pp0_iter6_reg;

assign pool2_output_0_0_address0 = p_1_cast_fu_557_p1;

assign pool2_output_0_0_d0 = conv2_output_q0;

assign select_ln84_1_fu_545_p3 = ((and_ln84_5_fu_539_p2[0:0] == 1'b1) ? trunc_ln84_1_fu_522_p1 : select_ln84_reg_686_pp0_iter5_reg);

assign select_ln84_fu_450_p3 = ((and_ln84_3_fu_444_p2[0:0] == 1'b1) ? trunc_ln84_fu_415_p1 : tmp_67_cast_fu_421_p4);

assign tmp_11_fu_466_p4 = {{bitcast_ln84_4_fu_463_p1[30:23]}};

assign tmp_12_fu_484_p4 = {{bitcast_ln84_5_fu_480_p1[30:23]}};

assign tmp_1_fu_218_p3 = {{57'd0}, {or_ln84_6_fu_212_p2}};

assign tmp_2_fu_233_p3 = {{57'd0}, {or_ln84_7_fu_227_p2}};

assign tmp_3_fu_248_p3 = {{57'd0}, {or_ln84_8_fu_242_p2}};

assign tmp_4_fu_266_p4 = {{bitcast_ln84_fu_262_p1[30:23]}};

assign tmp_5_fu_284_p4 = {{bitcast_ln84_1_fu_280_p1[30:23]}};

assign tmp_67_cast_fu_421_p4 = {{{trunc_ln84_4_fu_418_p1}, {1'd0}}, {and_ln84_1_reg_651_pp0_iter3_reg}};

assign tmp_7_fu_342_p4 = {{{p_1_reg_568_pp0_iter1_reg}, {1'd0}}, {and_ln84_1_fu_336_p2}};

assign tmp_8_fu_359_p4 = {{bitcast_ln84_2_fu_356_p1[30:23]}};

assign tmp_9_fu_377_p4 = {{bitcast_ln84_3_fu_373_p1[30:23]}};

assign tmp_s_fu_199_p3 = {{ap_sig_allocacmp_p_1}, {2'd0}};

assign trunc_ln84_1_fu_522_p1 = or_ln84_8_reg_599_pp0_iter5_reg[5:0];

assign trunc_ln84_2_fu_276_p1 = bitcast_ln84_fu_262_p1[22:0];

assign trunc_ln84_3_fu_294_p1 = bitcast_ln84_1_fu_280_p1[22:0];

assign trunc_ln84_4_fu_418_p1 = p_1_reg_568_pp0_iter3_reg[3:0];

assign trunc_ln84_5_fu_369_p1 = bitcast_ln84_2_fu_356_p1[22:0];

assign trunc_ln84_6_fu_387_p1 = bitcast_ln84_3_fu_373_p1[22:0];

assign trunc_ln84_7_fu_476_p1 = bitcast_ln84_4_fu_463_p1[22:0];

assign trunc_ln84_8_fu_494_p1 = bitcast_ln84_5_fu_480_p1[22:0];

assign trunc_ln84_fu_415_p1 = or_ln84_7_reg_589_pp0_iter3_reg[5:0];

assign zext_ln81_fu_207_p1 = tmp_s_fu_199_p3;

assign zext_ln84_1_fu_458_p1 = select_ln84_fu_450_p3;

assign zext_ln84_2_fu_552_p1 = select_ln84_1_fu_545_p3;

assign zext_ln84_fu_351_p1 = tmp_7_fu_342_p4;

always @ (posedge ap_clk) begin
    or_ln84_7_reg_589[1:0] <= 2'b10;
    or_ln84_7_reg_589_pp0_iter1_reg[1:0] <= 2'b10;
    or_ln84_7_reg_589_pp0_iter2_reg[1:0] <= 2'b10;
    or_ln84_7_reg_589_pp0_iter3_reg[1:0] <= 2'b10;
    or_ln84_8_reg_599[1:0] <= 2'b11;
    or_ln84_8_reg_599_pp0_iter1_reg[1:0] <= 2'b11;
    or_ln84_8_reg_599_pp0_iter2_reg[1:0] <= 2'b11;
    or_ln84_8_reg_599_pp0_iter3_reg[1:0] <= 2'b11;
    or_ln84_8_reg_599_pp0_iter4_reg[1:0] <= 2'b11;
    or_ln84_8_reg_599_pp0_iter5_reg[1:0] <= 2'b11;
end

endmodule //DNN_DNN_Pipeline_VITIS_LOOP_78_1
