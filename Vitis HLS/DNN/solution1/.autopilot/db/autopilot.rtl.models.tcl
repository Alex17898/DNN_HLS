set SynModuleInfo {
  {SRCNAME DNN_Pipeline_1 MODELNAME DNN_Pipeline_1 RTLNAME DNN_DNN_Pipeline_1
    SUBMODULES {
      {MODELNAME DNN_flow_control_loop_pipe_sequential_init RTLNAME DNN_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME DNN_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME DNN_Pipeline_2 MODELNAME DNN_Pipeline_2 RTLNAME DNN_DNN_Pipeline_2}
  {SRCNAME DNN_Pipeline_3 MODELNAME DNN_Pipeline_3 RTLNAME DNN_DNN_Pipeline_3}
  {SRCNAME DNN_Pipeline_4 MODELNAME DNN_Pipeline_4 RTLNAME DNN_DNN_Pipeline_4}
  {SRCNAME DNN_Pipeline_5 MODELNAME DNN_Pipeline_5 RTLNAME DNN_DNN_Pipeline_5}
  {SRCNAME DNN_Pipeline_6 MODELNAME DNN_Pipeline_6 RTLNAME DNN_DNN_Pipeline_6}
  {SRCNAME DNN_Pipeline_7 MODELNAME DNN_Pipeline_7 RTLNAME DNN_DNN_Pipeline_7}
  {SRCNAME DNN_Pipeline_8 MODELNAME DNN_Pipeline_8 RTLNAME DNN_DNN_Pipeline_8}
  {SRCNAME DNN_Pipeline_9 MODELNAME DNN_Pipeline_9 RTLNAME DNN_DNN_Pipeline_9}
  {SRCNAME DNN_Pipeline_VITIS_LOOP_18_1_VITIS_LOOP_19_2 MODELNAME DNN_Pipeline_VITIS_LOOP_18_1_VITIS_LOOP_19_2 RTLNAME DNN_DNN_Pipeline_VITIS_LOOP_18_1_VITIS_LOOP_19_2}
  {SRCNAME DNN_Pipeline_VITIS_LOOP_24_3_VITIS_LOOP_25_4 MODELNAME DNN_Pipeline_VITIS_LOOP_24_3_VITIS_LOOP_25_4 RTLNAME DNN_DNN_Pipeline_VITIS_LOOP_24_3_VITIS_LOOP_25_4
    SUBMODULES {
      {MODELNAME DNN_fadd_32ns_32ns_32_3_full_dsp_1 RTLNAME DNN_fadd_32ns_32ns_32_3_full_dsp_1 BINDTYPE op TYPE fadd IMPL fulldsp LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME DNN_fmul_32ns_32ns_32_2_max_dsp_1 RTLNAME DNN_fmul_32ns_32ns_32_2_max_dsp_1 BINDTYPE op TYPE fmul IMPL maxdsp LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME DNN_fcmp_32ns_32ns_1_2_no_dsp_1 RTLNAME DNN_fcmp_32ns_32ns_1_2_no_dsp_1 BINDTYPE op TYPE fcmp IMPL auto LATENCY 1 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME DNN_Pipeline_VITIS_LOOP_60_1_VITIS_LOOP_61_2 MODELNAME DNN_Pipeline_VITIS_LOOP_60_1_VITIS_LOOP_61_2 RTLNAME DNN_DNN_Pipeline_VITIS_LOOP_60_1_VITIS_LOOP_61_2}
  {SRCNAME DNN_Pipeline_VITIS_LOOP_41_1_VITIS_LOOP_42_2_VITIS_LOOP_43_3 MODELNAME DNN_Pipeline_VITIS_LOOP_41_1_VITIS_LOOP_42_2_VITIS_LOOP_43_3 RTLNAME DNN_DNN_Pipeline_VITIS_LOOP_41_1_VITIS_LOOP_42_2_VITIS_LOOP_43_3
    SUBMODULES {
      {MODELNAME DNN_DNN_Pipeline_VITIS_LOOP_41_1_VITIS_LOOP_42_2_VITIS_LOOP_43_3_conv2_kernel_0_0 RTLNAME DNN_DNN_Pipeline_VITIS_LOOP_41_1_VITIS_LOOP_42_2_VITIS_LOOP_43_3_conv2_kernel_0_0 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME DNN_DNN_Pipeline_VITIS_LOOP_41_1_VITIS_LOOP_42_2_VITIS_LOOP_43_3_conv2_kernel_0_1 RTLNAME DNN_DNN_Pipeline_VITIS_LOOP_41_1_VITIS_LOOP_42_2_VITIS_LOOP_43_3_conv2_kernel_0_1 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME DNN_DNN_Pipeline_VITIS_LOOP_41_1_VITIS_LOOP_42_2_VITIS_LOOP_43_3_conv2_kernel_0_2 RTLNAME DNN_DNN_Pipeline_VITIS_LOOP_41_1_VITIS_LOOP_42_2_VITIS_LOOP_43_3_conv2_kernel_0_2 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME DNN_DNN_Pipeline_VITIS_LOOP_41_1_VITIS_LOOP_42_2_VITIS_LOOP_43_3_conv2_kernel_1_0 RTLNAME DNN_DNN_Pipeline_VITIS_LOOP_41_1_VITIS_LOOP_42_2_VITIS_LOOP_43_3_conv2_kernel_1_0 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME DNN_DNN_Pipeline_VITIS_LOOP_41_1_VITIS_LOOP_42_2_VITIS_LOOP_43_3_conv2_kernel_1_1 RTLNAME DNN_DNN_Pipeline_VITIS_LOOP_41_1_VITIS_LOOP_42_2_VITIS_LOOP_43_3_conv2_kernel_1_1 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME DNN_DNN_Pipeline_VITIS_LOOP_41_1_VITIS_LOOP_42_2_VITIS_LOOP_43_3_conv2_kernel_1_2 RTLNAME DNN_DNN_Pipeline_VITIS_LOOP_41_1_VITIS_LOOP_42_2_VITIS_LOOP_43_3_conv2_kernel_1_2 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME DNN_DNN_Pipeline_VITIS_LOOP_41_1_VITIS_LOOP_42_2_VITIS_LOOP_43_3_conv2_kernel_2_0 RTLNAME DNN_DNN_Pipeline_VITIS_LOOP_41_1_VITIS_LOOP_42_2_VITIS_LOOP_43_3_conv2_kernel_2_0 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME DNN_DNN_Pipeline_VITIS_LOOP_41_1_VITIS_LOOP_42_2_VITIS_LOOP_43_3_conv2_kernel_2_1 RTLNAME DNN_DNN_Pipeline_VITIS_LOOP_41_1_VITIS_LOOP_42_2_VITIS_LOOP_43_3_conv2_kernel_2_1 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME DNN_DNN_Pipeline_VITIS_LOOP_41_1_VITIS_LOOP_42_2_VITIS_LOOP_43_3_conv2_kernel_2_2 RTLNAME DNN_DNN_Pipeline_VITIS_LOOP_41_1_VITIS_LOOP_42_2_VITIS_LOOP_43_3_conv2_kernel_2_2 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME DNN_Pipeline_VITIS_LOOP_78_1 MODELNAME DNN_Pipeline_VITIS_LOOP_78_1 RTLNAME DNN_DNN_Pipeline_VITIS_LOOP_78_1}
  {SRCNAME DNN_Pipeline_VITIS_LOOP_117_1 MODELNAME DNN_Pipeline_VITIS_LOOP_117_1 RTLNAME DNN_DNN_Pipeline_VITIS_LOOP_117_1}
  {SRCNAME DNN_Pipeline_VITIS_LOOP_126_4 MODELNAME DNN_Pipeline_VITIS_LOOP_126_4 RTLNAME DNN_DNN_Pipeline_VITIS_LOOP_126_4
    SUBMODULES {
      {MODELNAME DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_0 RTLNAME DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_0 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_1 RTLNAME DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_1 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_2 RTLNAME DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_2 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_3 RTLNAME DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_3 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_4 RTLNAME DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_4 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_5 RTLNAME DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_5 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_6 RTLNAME DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_6 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_7 RTLNAME DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_7 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_8 RTLNAME DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_8 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_9 RTLNAME DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_9 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_10 RTLNAME DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_10 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_11 RTLNAME DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_11 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_12 RTLNAME DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_12 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_13 RTLNAME DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_13 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_14 RTLNAME DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_14 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_15 RTLNAME DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_15 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME DNN_Pipeline_VITIS_LOOP_135_6 MODELNAME DNN_Pipeline_VITIS_LOOP_135_6 RTLNAME DNN_DNN_Pipeline_VITIS_LOOP_135_6
    SUBMODULES {
      {MODELNAME DNN_DNN_Pipeline_VITIS_LOOP_135_6_fc2_weight_0 RTLNAME DNN_DNN_Pipeline_VITIS_LOOP_135_6_fc2_weight_0 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME DNN_DNN_Pipeline_VITIS_LOOP_135_6_fc2_weight_1 RTLNAME DNN_DNN_Pipeline_VITIS_LOOP_135_6_fc2_weight_1 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME DNN_DNN_Pipeline_VITIS_LOOP_135_6_fc2_weight_2 RTLNAME DNN_DNN_Pipeline_VITIS_LOOP_135_6_fc2_weight_2 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME DNN_DNN_Pipeline_VITIS_LOOP_135_6_fc2_weight_3 RTLNAME DNN_DNN_Pipeline_VITIS_LOOP_135_6_fc2_weight_3 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME DNN_DNN_Pipeline_VITIS_LOOP_135_6_fc2_weight_4 RTLNAME DNN_DNN_Pipeline_VITIS_LOOP_135_6_fc2_weight_4 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME DNN_DNN_Pipeline_VITIS_LOOP_135_6_fc2_weight_5 RTLNAME DNN_DNN_Pipeline_VITIS_LOOP_135_6_fc2_weight_5 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME DNN_DNN_Pipeline_VITIS_LOOP_135_6_fc2_weight_6 RTLNAME DNN_DNN_Pipeline_VITIS_LOOP_135_6_fc2_weight_6 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME DNN_DNN_Pipeline_VITIS_LOOP_135_6_fc2_weight_7 RTLNAME DNN_DNN_Pipeline_VITIS_LOOP_135_6_fc2_weight_7 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME DNN_DNN_Pipeline_VITIS_LOOP_135_6_fc2_weight_8 RTLNAME DNN_DNN_Pipeline_VITIS_LOOP_135_6_fc2_weight_8 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME DNN_DNN_Pipeline_VITIS_LOOP_135_6_fc2_weight_9 RTLNAME DNN_DNN_Pipeline_VITIS_LOOP_135_6_fc2_weight_9 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME DNN_DNN_Pipeline_VITIS_LOOP_135_6_fc2_weight_10 RTLNAME DNN_DNN_Pipeline_VITIS_LOOP_135_6_fc2_weight_10 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME DNN_DNN_Pipeline_VITIS_LOOP_135_6_fc2_weight_11 RTLNAME DNN_DNN_Pipeline_VITIS_LOOP_135_6_fc2_weight_11 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME DNN_DNN_Pipeline_VITIS_LOOP_135_6_fc2_weight_12 RTLNAME DNN_DNN_Pipeline_VITIS_LOOP_135_6_fc2_weight_12 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME DNN_DNN_Pipeline_VITIS_LOOP_135_6_fc2_weight_13 RTLNAME DNN_DNN_Pipeline_VITIS_LOOP_135_6_fc2_weight_13 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME DNN_DNN_Pipeline_VITIS_LOOP_135_6_fc2_weight_14 RTLNAME DNN_DNN_Pipeline_VITIS_LOOP_135_6_fc2_weight_14 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME DNN_DNN_Pipeline_VITIS_LOOP_135_6_fc2_weight_15 RTLNAME DNN_DNN_Pipeline_VITIS_LOOP_135_6_fc2_weight_15 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME DNN_Pipeline_VITIS_LOOP_143_8 MODELNAME DNN_Pipeline_VITIS_LOOP_143_8 RTLNAME DNN_DNN_Pipeline_VITIS_LOOP_143_8
    SUBMODULES {
      {MODELNAME DNN_fexp_32ns_32ns_32_4_full_dsp_1 RTLNAME DNN_fexp_32ns_32ns_32_4_full_dsp_1 BINDTYPE op TYPE fexp IMPL fulldsp LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME DNN_DNN_Pipeline_VITIS_LOOP_143_8_output_weight_0 RTLNAME DNN_DNN_Pipeline_VITIS_LOOP_143_8_output_weight_0 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME DNN_DNN_Pipeline_VITIS_LOOP_143_8_output_weight_1 RTLNAME DNN_DNN_Pipeline_VITIS_LOOP_143_8_output_weight_1 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME DNN_DNN_Pipeline_VITIS_LOOP_143_8_output_weight_2 RTLNAME DNN_DNN_Pipeline_VITIS_LOOP_143_8_output_weight_2 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME DNN_DNN_Pipeline_VITIS_LOOP_143_8_output_weight_3 RTLNAME DNN_DNN_Pipeline_VITIS_LOOP_143_8_output_weight_3 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME DNN_DNN_Pipeline_VITIS_LOOP_143_8_output_weight_4 RTLNAME DNN_DNN_Pipeline_VITIS_LOOP_143_8_output_weight_4 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME DNN_DNN_Pipeline_VITIS_LOOP_143_8_output_weight_5 RTLNAME DNN_DNN_Pipeline_VITIS_LOOP_143_8_output_weight_5 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME DNN_DNN_Pipeline_VITIS_LOOP_143_8_output_weight_6 RTLNAME DNN_DNN_Pipeline_VITIS_LOOP_143_8_output_weight_6 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME DNN_DNN_Pipeline_VITIS_LOOP_143_8_output_weight_7 RTLNAME DNN_DNN_Pipeline_VITIS_LOOP_143_8_output_weight_7 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME DNN_DNN_Pipeline_VITIS_LOOP_143_8_output_weight_8 RTLNAME DNN_DNN_Pipeline_VITIS_LOOP_143_8_output_weight_8 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME DNN_DNN_Pipeline_VITIS_LOOP_143_8_output_weight_9 RTLNAME DNN_DNN_Pipeline_VITIS_LOOP_143_8_output_weight_9 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME DNN_DNN_Pipeline_VITIS_LOOP_143_8_output_weight_10 RTLNAME DNN_DNN_Pipeline_VITIS_LOOP_143_8_output_weight_10 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME DNN_DNN_Pipeline_VITIS_LOOP_143_8_output_weight_11 RTLNAME DNN_DNN_Pipeline_VITIS_LOOP_143_8_output_weight_11 BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME DNN_Pipeline_VITIS_LOOP_150_10 MODELNAME DNN_Pipeline_VITIS_LOOP_150_10 RTLNAME DNN_DNN_Pipeline_VITIS_LOOP_150_10}
  {SRCNAME DNN_Pipeline_VITIS_LOOP_153_11 MODELNAME DNN_Pipeline_VITIS_LOOP_153_11 RTLNAME DNN_DNN_Pipeline_VITIS_LOOP_153_11
    SUBMODULES {
      {MODELNAME DNN_fdiv_32ns_32ns_32_7_no_dsp_1 RTLNAME DNN_fdiv_32ns_32ns_32_7_no_dsp_1 BINDTYPE op TYPE fdiv IMPL fabric LATENCY 6 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME DNN_Pipeline_VITIS_LOOP_158_12 MODELNAME DNN_Pipeline_VITIS_LOOP_158_12 RTLNAME DNN_DNN_Pipeline_VITIS_LOOP_158_12}
  {SRCNAME DNN MODELNAME DNN RTLNAME DNN IS_TOP 1
    SUBMODULES {
      {MODELNAME DNN_temp_input RTLNAME DNN_temp_input BINDTYPE storage TYPE ram_1wnr IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME DNN_conv1_output RTLNAME DNN_conv1_output BINDTYPE storage TYPE ram_1wnr IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME DNN_pool1_output RTLNAME DNN_pool1_output BINDTYPE storage TYPE ram_1wnr IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME DNN_pool2_output_0_0 RTLNAME DNN_pool2_output_0_0 BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME DNN_flatten_output RTLNAME DNN_flatten_output BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME DNN_fc2_output RTLNAME DNN_fc2_output BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME DNN_temp_output RTLNAME DNN_temp_output BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
}