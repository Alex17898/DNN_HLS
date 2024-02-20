// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Version: 2021.1
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module DNN_DNN_Pipeline_VITIS_LOOP_18_1_VITIS_LOOP_19_2 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        temp_input_address0,
        temp_input_ce0,
        temp_input_we0,
        temp_input_d0,
        input_r_address0,
        input_r_ce0,
        input_r_q0
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [6:0] temp_input_address0;
output   temp_input_ce0;
output   temp_input_we0;
output  [31:0] temp_input_d0;
output  [6:0] input_r_address0;
output   input_r_ce0;
input  [31:0] input_r_q0;

reg ap_idle;
reg temp_input_ce0;
reg temp_input_we0;
reg input_r_ce0;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln18_fu_108_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [6:0] add_ln20_3_fu_184_p2;
reg   [6:0] add_ln20_3_reg_269;
wire    ap_block_pp0_stage0_11001;
wire   [63:0] zext_ln20_1_fu_210_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln20_4_fu_236_p1;
reg   [3:0] q_fu_52;
wire    ap_loop_init;
reg   [3:0] ap_sig_allocacmp_q_load;
wire   [3:0] add_ln19_fu_215_p2;
reg   [3:0] p_fu_56;
reg   [3:0] ap_sig_allocacmp_p_load;
wire   [3:0] select_ln18_1_fu_146_p3;
reg   [6:0] indvar_flatten_fu_60;
reg   [6:0] ap_sig_allocacmp_indvar_flatten_load;
wire   [6:0] add_ln18_1_fu_114_p2;
wire   [0:0] icmp_ln19_fu_132_p2;
wire   [3:0] add_ln18_fu_126_p2;
wire   [4:0] tmp_21_fu_162_p3;
wire   [6:0] tmp_s_fu_154_p3;
wire   [6:0] zext_ln20_2_fu_170_p1;
wire   [3:0] select_ln18_fu_138_p3;
wire   [6:0] add_ln20_2_fu_174_p2;
wire   [6:0] zext_ln20_3_fu_180_p1;
wire   [4:0] q_cast_fu_190_p1;
wire   [4:0] add_ln20_1_fu_194_p2;
wire   [6:0] zext_ln20_fu_200_p1;
wire   [6:0] add_ln20_fu_204_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln18_fu_108_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten_fu_60 <= add_ln18_1_fu_114_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_60 <= 7'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln18_fu_108_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            p_fu_56 <= select_ln18_1_fu_146_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            p_fu_56 <= 4'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln18_fu_108_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            q_fu_52 <= add_ln19_fu_215_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            q_fu_52 <= 4'd0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln18_fu_108_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln20_3_reg_269 <= add_ln20_3_fu_184_p2;
    end
end

always @ (*) begin
    if (((icmp_ln18_fu_108_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten_load = 7'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_60;
    end
end

always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_p_load = 4'd0;
    end else begin
        ap_sig_allocacmp_p_load = p_fu_56;
    end
end

always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_q_load = 4'd0;
    end else begin
        ap_sig_allocacmp_q_load = q_fu_52;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        input_r_ce0 = 1'b1;
    end else begin
        input_r_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        temp_input_ce0 = 1'b1;
    end else begin
        temp_input_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        temp_input_we0 = 1'b1;
    end else begin
        temp_input_we0 = 1'b0;
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

assign add_ln18_1_fu_114_p2 = (ap_sig_allocacmp_indvar_flatten_load + 7'd1);

assign add_ln18_fu_126_p2 = (ap_sig_allocacmp_p_load + 4'd1);

assign add_ln19_fu_215_p2 = (select_ln18_fu_138_p3 + 4'd1);

assign add_ln20_1_fu_194_p2 = (tmp_21_fu_162_p3 + q_cast_fu_190_p1);

assign add_ln20_2_fu_174_p2 = (tmp_s_fu_154_p3 + zext_ln20_2_fu_170_p1);

assign add_ln20_3_fu_184_p2 = (add_ln20_2_fu_174_p2 + zext_ln20_3_fu_180_p1);

assign add_ln20_fu_204_p2 = (zext_ln20_fu_200_p1 + tmp_s_fu_154_p3);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;

assign icmp_ln18_fu_108_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 7'd100) ? 1'b1 : 1'b0);

assign icmp_ln19_fu_132_p2 = ((ap_sig_allocacmp_q_load == 4'd10) ? 1'b1 : 1'b0);

assign input_r_address0 = zext_ln20_1_fu_210_p1;

assign q_cast_fu_190_p1 = select_ln18_fu_138_p3;

assign select_ln18_1_fu_146_p3 = ((icmp_ln19_fu_132_p2[0:0] == 1'b1) ? add_ln18_fu_126_p2 : ap_sig_allocacmp_p_load);

assign select_ln18_fu_138_p3 = ((icmp_ln19_fu_132_p2[0:0] == 1'b1) ? 4'd0 : ap_sig_allocacmp_q_load);

assign temp_input_address0 = zext_ln20_4_fu_236_p1;

assign temp_input_d0 = input_r_q0;

assign tmp_21_fu_162_p3 = {{select_ln18_1_fu_146_p3}, {1'd0}};

assign tmp_s_fu_154_p3 = {{select_ln18_1_fu_146_p3}, {3'd0}};

assign zext_ln20_1_fu_210_p1 = add_ln20_fu_204_p2;

assign zext_ln20_2_fu_170_p1 = tmp_21_fu_162_p3;

assign zext_ln20_3_fu_180_p1 = select_ln18_fu_138_p3;

assign zext_ln20_4_fu_236_p1 = add_ln20_3_reg_269;

assign zext_ln20_fu_200_p1 = add_ln20_1_fu_194_p2;

endmodule //DNN_DNN_Pipeline_VITIS_LOOP_18_1_VITIS_LOOP_19_2
