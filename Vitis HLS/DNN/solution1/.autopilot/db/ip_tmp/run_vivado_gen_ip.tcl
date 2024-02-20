create_project prj -part xc7z020-clg400-1 -force
set_property target_language verilog [current_project]
set vivado_ver [version -short]
set COE_DIR "../../syn/verilog"
source "D:/hls/C++/test/DNN/solution1/syn/verilog/DNN_fadd_32ns_32ns_32_3_full_dsp_1_ip.tcl"
source "D:/hls/C++/test/DNN/solution1/syn/verilog/DNN_fcmp_32ns_32ns_1_2_no_dsp_1_ip.tcl"
source "D:/hls/C++/test/DNN/solution1/syn/verilog/DNN_fdiv_32ns_32ns_32_7_no_dsp_1_ip.tcl"
source "D:/hls/C++/test/DNN/solution1/syn/verilog/DNN_fexp_32ns_32ns_32_4_full_dsp_1_ip.tcl"
source "D:/hls/C++/test/DNN/solution1/syn/verilog/DNN_fmul_32ns_32ns_32_2_max_dsp_1_ip.tcl"
