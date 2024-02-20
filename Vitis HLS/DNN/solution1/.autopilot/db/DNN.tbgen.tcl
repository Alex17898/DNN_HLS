set moduleName DNN
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {DNN}
set C_modelType { int 32 }
set C_modelArgList {
	{ input_r int 32 regular {array 100 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "input_r", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 32} ]}
# RTL Port declarations: 
set portNum 10
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ input_r_address0 sc_out sc_lv 7 signal 0 } 
	{ input_r_ce0 sc_out sc_logic 1 signal 0 } 
	{ input_r_q0 sc_in sc_lv 32 signal 0 } 
	{ ap_return sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "input_r_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "input_r", "role": "address0" }} , 
 	{ "name": "input_r_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "input_r", "role": "ce0" }} , 
 	{ "name": "input_r_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "input_r", "role": "q0" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "13", "15", "17", "19", "21", "23", "25", "27", "29", "31", "33", "35", "46", "48", "50", "68", "86", "101", "103", "106", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142"],
		"CDFG" : "DNN",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "753", "EstimateLatencyMax" : "753",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "input_r", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "29", "SubInstance" : "grp_DNN_Pipeline_VITIS_LOOP_18_1_VITIS_LOOP_19_2_fu_783", "Port" : "input_r", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "conv2_kernel_0_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_DNN_Pipeline_VITIS_LOOP_41_1_VITIS_LOOP_42_2_VITIS_LOOP_43_3_fu_802", "Port" : "conv2_kernel_0_0", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "conv2_kernel_0_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_DNN_Pipeline_VITIS_LOOP_41_1_VITIS_LOOP_42_2_VITIS_LOOP_43_3_fu_802", "Port" : "conv2_kernel_0_1", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "conv2_kernel_0_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_DNN_Pipeline_VITIS_LOOP_41_1_VITIS_LOOP_42_2_VITIS_LOOP_43_3_fu_802", "Port" : "conv2_kernel_0_2", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "conv2_kernel_1_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_DNN_Pipeline_VITIS_LOOP_41_1_VITIS_LOOP_42_2_VITIS_LOOP_43_3_fu_802", "Port" : "conv2_kernel_1_0", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "conv2_kernel_1_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_DNN_Pipeline_VITIS_LOOP_41_1_VITIS_LOOP_42_2_VITIS_LOOP_43_3_fu_802", "Port" : "conv2_kernel_1_1", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "conv2_kernel_1_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_DNN_Pipeline_VITIS_LOOP_41_1_VITIS_LOOP_42_2_VITIS_LOOP_43_3_fu_802", "Port" : "conv2_kernel_1_2", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "conv2_kernel_2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_DNN_Pipeline_VITIS_LOOP_41_1_VITIS_LOOP_42_2_VITIS_LOOP_43_3_fu_802", "Port" : "conv2_kernel_2_0", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "conv2_kernel_2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_DNN_Pipeline_VITIS_LOOP_41_1_VITIS_LOOP_42_2_VITIS_LOOP_43_3_fu_802", "Port" : "conv2_kernel_2_1", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "conv2_kernel_2_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "35", "SubInstance" : "grp_DNN_Pipeline_VITIS_LOOP_41_1_VITIS_LOOP_42_2_VITIS_LOOP_43_3_fu_802", "Port" : "conv2_kernel_2_2", "Inst_start_state" : "10", "Inst_end_state" : "11"}]},
			{"Name" : "fc1_weight_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "50", "SubInstance" : "grp_DNN_Pipeline_VITIS_LOOP_126_4_fu_838", "Port" : "fc1_weight_0", "Inst_start_state" : "24", "Inst_end_state" : "25"}]},
			{"Name" : "fc1_weight_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "50", "SubInstance" : "grp_DNN_Pipeline_VITIS_LOOP_126_4_fu_838", "Port" : "fc1_weight_1", "Inst_start_state" : "24", "Inst_end_state" : "25"}]},
			{"Name" : "fc1_weight_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "50", "SubInstance" : "grp_DNN_Pipeline_VITIS_LOOP_126_4_fu_838", "Port" : "fc1_weight_2", "Inst_start_state" : "24", "Inst_end_state" : "25"}]},
			{"Name" : "fc1_weight_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "50", "SubInstance" : "grp_DNN_Pipeline_VITIS_LOOP_126_4_fu_838", "Port" : "fc1_weight_3", "Inst_start_state" : "24", "Inst_end_state" : "25"}]},
			{"Name" : "fc1_weight_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "50", "SubInstance" : "grp_DNN_Pipeline_VITIS_LOOP_126_4_fu_838", "Port" : "fc1_weight_4", "Inst_start_state" : "24", "Inst_end_state" : "25"}]},
			{"Name" : "fc1_weight_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "50", "SubInstance" : "grp_DNN_Pipeline_VITIS_LOOP_126_4_fu_838", "Port" : "fc1_weight_5", "Inst_start_state" : "24", "Inst_end_state" : "25"}]},
			{"Name" : "fc1_weight_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "50", "SubInstance" : "grp_DNN_Pipeline_VITIS_LOOP_126_4_fu_838", "Port" : "fc1_weight_6", "Inst_start_state" : "24", "Inst_end_state" : "25"}]},
			{"Name" : "fc1_weight_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "50", "SubInstance" : "grp_DNN_Pipeline_VITIS_LOOP_126_4_fu_838", "Port" : "fc1_weight_7", "Inst_start_state" : "24", "Inst_end_state" : "25"}]},
			{"Name" : "fc1_weight_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "50", "SubInstance" : "grp_DNN_Pipeline_VITIS_LOOP_126_4_fu_838", "Port" : "fc1_weight_8", "Inst_start_state" : "24", "Inst_end_state" : "25"}]},
			{"Name" : "fc1_weight_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "50", "SubInstance" : "grp_DNN_Pipeline_VITIS_LOOP_126_4_fu_838", "Port" : "fc1_weight_9", "Inst_start_state" : "24", "Inst_end_state" : "25"}]},
			{"Name" : "fc1_weight_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "50", "SubInstance" : "grp_DNN_Pipeline_VITIS_LOOP_126_4_fu_838", "Port" : "fc1_weight_10", "Inst_start_state" : "24", "Inst_end_state" : "25"}]},
			{"Name" : "fc1_weight_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "50", "SubInstance" : "grp_DNN_Pipeline_VITIS_LOOP_126_4_fu_838", "Port" : "fc1_weight_11", "Inst_start_state" : "24", "Inst_end_state" : "25"}]},
			{"Name" : "fc1_weight_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "50", "SubInstance" : "grp_DNN_Pipeline_VITIS_LOOP_126_4_fu_838", "Port" : "fc1_weight_12", "Inst_start_state" : "24", "Inst_end_state" : "25"}]},
			{"Name" : "fc1_weight_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "50", "SubInstance" : "grp_DNN_Pipeline_VITIS_LOOP_126_4_fu_838", "Port" : "fc1_weight_13", "Inst_start_state" : "24", "Inst_end_state" : "25"}]},
			{"Name" : "fc1_weight_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "50", "SubInstance" : "grp_DNN_Pipeline_VITIS_LOOP_126_4_fu_838", "Port" : "fc1_weight_14", "Inst_start_state" : "24", "Inst_end_state" : "25"}]},
			{"Name" : "fc1_weight_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "50", "SubInstance" : "grp_DNN_Pipeline_VITIS_LOOP_126_4_fu_838", "Port" : "fc1_weight_15", "Inst_start_state" : "24", "Inst_end_state" : "25"}]},
			{"Name" : "fc2_weight_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "grp_DNN_Pipeline_VITIS_LOOP_135_6_fu_893", "Port" : "fc2_weight_0", "Inst_start_state" : "34", "Inst_end_state" : "35"}]},
			{"Name" : "fc2_weight_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "grp_DNN_Pipeline_VITIS_LOOP_135_6_fu_893", "Port" : "fc2_weight_1", "Inst_start_state" : "34", "Inst_end_state" : "35"}]},
			{"Name" : "fc2_weight_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "grp_DNN_Pipeline_VITIS_LOOP_135_6_fu_893", "Port" : "fc2_weight_2", "Inst_start_state" : "34", "Inst_end_state" : "35"}]},
			{"Name" : "fc2_weight_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "grp_DNN_Pipeline_VITIS_LOOP_135_6_fu_893", "Port" : "fc2_weight_3", "Inst_start_state" : "34", "Inst_end_state" : "35"}]},
			{"Name" : "fc2_weight_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "grp_DNN_Pipeline_VITIS_LOOP_135_6_fu_893", "Port" : "fc2_weight_4", "Inst_start_state" : "34", "Inst_end_state" : "35"}]},
			{"Name" : "fc2_weight_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "grp_DNN_Pipeline_VITIS_LOOP_135_6_fu_893", "Port" : "fc2_weight_5", "Inst_start_state" : "34", "Inst_end_state" : "35"}]},
			{"Name" : "fc2_weight_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "grp_DNN_Pipeline_VITIS_LOOP_135_6_fu_893", "Port" : "fc2_weight_6", "Inst_start_state" : "34", "Inst_end_state" : "35"}]},
			{"Name" : "fc2_weight_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "grp_DNN_Pipeline_VITIS_LOOP_135_6_fu_893", "Port" : "fc2_weight_7", "Inst_start_state" : "34", "Inst_end_state" : "35"}]},
			{"Name" : "fc2_weight_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "grp_DNN_Pipeline_VITIS_LOOP_135_6_fu_893", "Port" : "fc2_weight_8", "Inst_start_state" : "34", "Inst_end_state" : "35"}]},
			{"Name" : "fc2_weight_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "grp_DNN_Pipeline_VITIS_LOOP_135_6_fu_893", "Port" : "fc2_weight_9", "Inst_start_state" : "34", "Inst_end_state" : "35"}]},
			{"Name" : "fc2_weight_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "grp_DNN_Pipeline_VITIS_LOOP_135_6_fu_893", "Port" : "fc2_weight_10", "Inst_start_state" : "34", "Inst_end_state" : "35"}]},
			{"Name" : "fc2_weight_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "grp_DNN_Pipeline_VITIS_LOOP_135_6_fu_893", "Port" : "fc2_weight_11", "Inst_start_state" : "34", "Inst_end_state" : "35"}]},
			{"Name" : "fc2_weight_12", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "grp_DNN_Pipeline_VITIS_LOOP_135_6_fu_893", "Port" : "fc2_weight_12", "Inst_start_state" : "34", "Inst_end_state" : "35"}]},
			{"Name" : "fc2_weight_13", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "grp_DNN_Pipeline_VITIS_LOOP_135_6_fu_893", "Port" : "fc2_weight_13", "Inst_start_state" : "34", "Inst_end_state" : "35"}]},
			{"Name" : "fc2_weight_14", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "grp_DNN_Pipeline_VITIS_LOOP_135_6_fu_893", "Port" : "fc2_weight_14", "Inst_start_state" : "34", "Inst_end_state" : "35"}]},
			{"Name" : "fc2_weight_15", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "68", "SubInstance" : "grp_DNN_Pipeline_VITIS_LOOP_135_6_fu_893", "Port" : "fc2_weight_15", "Inst_start_state" : "34", "Inst_end_state" : "35"}]},
			{"Name" : "output_weight_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "grp_DNN_Pipeline_VITIS_LOOP_143_8_fu_948", "Port" : "output_weight_0", "Inst_start_state" : "42", "Inst_end_state" : "43"}]},
			{"Name" : "output_weight_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "grp_DNN_Pipeline_VITIS_LOOP_143_8_fu_948", "Port" : "output_weight_1", "Inst_start_state" : "42", "Inst_end_state" : "43"}]},
			{"Name" : "output_weight_2", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "grp_DNN_Pipeline_VITIS_LOOP_143_8_fu_948", "Port" : "output_weight_2", "Inst_start_state" : "42", "Inst_end_state" : "43"}]},
			{"Name" : "output_weight_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "grp_DNN_Pipeline_VITIS_LOOP_143_8_fu_948", "Port" : "output_weight_3", "Inst_start_state" : "42", "Inst_end_state" : "43"}]},
			{"Name" : "output_weight_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "grp_DNN_Pipeline_VITIS_LOOP_143_8_fu_948", "Port" : "output_weight_4", "Inst_start_state" : "42", "Inst_end_state" : "43"}]},
			{"Name" : "output_weight_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "grp_DNN_Pipeline_VITIS_LOOP_143_8_fu_948", "Port" : "output_weight_5", "Inst_start_state" : "42", "Inst_end_state" : "43"}]},
			{"Name" : "output_weight_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "grp_DNN_Pipeline_VITIS_LOOP_143_8_fu_948", "Port" : "output_weight_6", "Inst_start_state" : "42", "Inst_end_state" : "43"}]},
			{"Name" : "output_weight_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "grp_DNN_Pipeline_VITIS_LOOP_143_8_fu_948", "Port" : "output_weight_7", "Inst_start_state" : "42", "Inst_end_state" : "43"}]},
			{"Name" : "output_weight_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "grp_DNN_Pipeline_VITIS_LOOP_143_8_fu_948", "Port" : "output_weight_8", "Inst_start_state" : "42", "Inst_end_state" : "43"}]},
			{"Name" : "output_weight_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "grp_DNN_Pipeline_VITIS_LOOP_143_8_fu_948", "Port" : "output_weight_9", "Inst_start_state" : "42", "Inst_end_state" : "43"}]},
			{"Name" : "output_weight_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "grp_DNN_Pipeline_VITIS_LOOP_143_8_fu_948", "Port" : "output_weight_10", "Inst_start_state" : "42", "Inst_end_state" : "43"}]},
			{"Name" : "output_weight_11", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "86", "SubInstance" : "grp_DNN_Pipeline_VITIS_LOOP_143_8_fu_948", "Port" : "output_weight_11", "Inst_start_state" : "42", "Inst_end_state" : "43"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_input_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv1_output_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pool1_output_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv2_output_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pool2_output_0_0_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flatten_output_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fc1_output_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fc2_output_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.temp_output_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.output_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_DNN_Pipeline_1_fu_729", "Parent" : "0", "Child" : ["12"],
		"CDFG" : "DNN_Pipeline_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "66", "EstimateLatencyMax" : "66",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "conv1_output", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "NotSupport"}]},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DNN_Pipeline_1_fu_729.flow_control_loop_pipe_sequential_init_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_DNN_Pipeline_2_fu_735", "Parent" : "0", "Child" : ["14"],
		"CDFG" : "DNN_Pipeline_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "pool1_output", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "NotSupport"}]},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DNN_Pipeline_2_fu_735.flow_control_loop_pipe_sequential_init_U", "Parent" : "13"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_DNN_Pipeline_3_fu_741", "Parent" : "0", "Child" : ["16"],
		"CDFG" : "DNN_Pipeline_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "66", "EstimateLatencyMax" : "66",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "conv2_output", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "NotSupport"}]},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DNN_Pipeline_3_fu_741.flow_control_loop_pipe_sequential_init_U", "Parent" : "15"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_DNN_Pipeline_4_fu_747", "Parent" : "0", "Child" : ["18"],
		"CDFG" : "DNN_Pipeline_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "flatten_output", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "NotSupport"}]},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DNN_Pipeline_4_fu_747.flow_control_loop_pipe_sequential_init_U", "Parent" : "17"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_DNN_Pipeline_5_fu_753", "Parent" : "0", "Child" : ["20"],
		"CDFG" : "DNN_Pipeline_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fc1_output", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "NotSupport"}]},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DNN_Pipeline_5_fu_753.flow_control_loop_pipe_sequential_init_U", "Parent" : "19"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_DNN_Pipeline_6_fu_759", "Parent" : "0", "Child" : ["22"],
		"CDFG" : "DNN_Pipeline_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "14", "EstimateLatencyMax" : "14",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fc2_output", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "NotSupport"}]},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DNN_Pipeline_6_fu_759.flow_control_loop_pipe_sequential_init_U", "Parent" : "21"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_DNN_Pipeline_7_fu_765", "Parent" : "0", "Child" : ["24"],
		"CDFG" : "DNN_Pipeline_7",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12", "EstimateLatencyMax" : "12",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "temp_output", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "NotSupport"}]},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DNN_Pipeline_7_fu_765.flow_control_loop_pipe_sequential_init_U", "Parent" : "23"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_DNN_Pipeline_8_fu_771", "Parent" : "0", "Child" : ["26"],
		"CDFG" : "DNN_Pipeline_8",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12", "EstimateLatencyMax" : "12",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "NotSupport"}]},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DNN_Pipeline_8_fu_771.flow_control_loop_pipe_sequential_init_U", "Parent" : "25"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_DNN_Pipeline_9_fu_777", "Parent" : "0", "Child" : ["28"],
		"CDFG" : "DNN_Pipeline_9",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "102", "EstimateLatencyMax" : "102",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "temp_input", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "NotSupport"}]},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DNN_Pipeline_9_fu_777.flow_control_loop_pipe_sequential_init_U", "Parent" : "27"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_DNN_Pipeline_VITIS_LOOP_18_1_VITIS_LOOP_19_2_fu_783", "Parent" : "0", "Child" : ["30"],
		"CDFG" : "DNN_Pipeline_VITIS_LOOP_18_1_VITIS_LOOP_19_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "102", "EstimateLatencyMax" : "102",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "temp_input", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "input_r", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_18_1_VITIS_LOOP_19_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DNN_Pipeline_VITIS_LOOP_18_1_VITIS_LOOP_19_2_fu_783.flow_control_loop_pipe_sequential_init_U", "Parent" : "29"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_DNN_Pipeline_VITIS_LOOP_24_3_VITIS_LOOP_25_4_fu_790", "Parent" : "0", "Child" : ["32"],
		"CDFG" : "DNN_Pipeline_VITIS_LOOP_24_3_VITIS_LOOP_25_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "96", "EstimateLatencyMax" : "96",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "temp_input", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv1_output", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_24_3_VITIS_LOOP_25_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter31", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter31", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DNN_Pipeline_VITIS_LOOP_24_3_VITIS_LOOP_25_4_fu_790.flow_control_loop_pipe_sequential_init_U", "Parent" : "31"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_DNN_Pipeline_VITIS_LOOP_60_1_VITIS_LOOP_61_2_fu_796", "Parent" : "0", "Child" : ["34"],
		"CDFG" : "DNN_Pipeline_VITIS_LOOP_60_1_VITIS_LOOP_61_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "24", "EstimateLatencyMax" : "24",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "conv1_output", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pool1_output", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_60_1_VITIS_LOOP_61_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter7", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter7", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DNN_Pipeline_VITIS_LOOP_60_1_VITIS_LOOP_61_2_fu_796.flow_control_loop_pipe_sequential_init_U", "Parent" : "33"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_DNN_Pipeline_VITIS_LOOP_41_1_VITIS_LOOP_42_2_VITIS_LOOP_43_3_fu_802", "Parent" : "0", "Child" : ["36", "37", "38", "39", "40", "41", "42", "43", "44", "45"],
		"CDFG" : "DNN_Pipeline_VITIS_LOOP_41_1_VITIS_LOOP_42_2_VITIS_LOOP_43_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "96", "EstimateLatencyMax" : "96",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "pool1_output", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv2_output", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "conv2_kernel_0_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv2_kernel_0_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv2_kernel_0_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv2_kernel_1_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv2_kernel_1_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv2_kernel_1_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv2_kernel_2_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv2_kernel_2_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv2_kernel_2_2", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_41_1_VITIS_LOOP_42_2_VITIS_LOOP_43_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter31", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter31", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DNN_Pipeline_VITIS_LOOP_41_1_VITIS_LOOP_42_2_VITIS_LOOP_43_3_fu_802.conv2_kernel_0_0_U", "Parent" : "35"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DNN_Pipeline_VITIS_LOOP_41_1_VITIS_LOOP_42_2_VITIS_LOOP_43_3_fu_802.conv2_kernel_0_1_U", "Parent" : "35"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DNN_Pipeline_VITIS_LOOP_41_1_VITIS_LOOP_42_2_VITIS_LOOP_43_3_fu_802.conv2_kernel_0_2_U", "Parent" : "35"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DNN_Pipeline_VITIS_LOOP_41_1_VITIS_LOOP_42_2_VITIS_LOOP_43_3_fu_802.conv2_kernel_1_0_U", "Parent" : "35"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DNN_Pipeline_VITIS_LOOP_41_1_VITIS_LOOP_42_2_VITIS_LOOP_43_3_fu_802.conv2_kernel_1_1_U", "Parent" : "35"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DNN_Pipeline_VITIS_LOOP_41_1_VITIS_LOOP_42_2_VITIS_LOOP_43_3_fu_802.conv2_kernel_1_2_U", "Parent" : "35"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DNN_Pipeline_VITIS_LOOP_41_1_VITIS_LOOP_42_2_VITIS_LOOP_43_3_fu_802.conv2_kernel_2_0_U", "Parent" : "35"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DNN_Pipeline_VITIS_LOOP_41_1_VITIS_LOOP_42_2_VITIS_LOOP_43_3_fu_802.conv2_kernel_2_1_U", "Parent" : "35"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DNN_Pipeline_VITIS_LOOP_41_1_VITIS_LOOP_42_2_VITIS_LOOP_43_3_fu_802.conv2_kernel_2_2_U", "Parent" : "35"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DNN_Pipeline_VITIS_LOOP_41_1_VITIS_LOOP_42_2_VITIS_LOOP_43_3_fu_802.flow_control_loop_pipe_sequential_init_U", "Parent" : "35"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_DNN_Pipeline_VITIS_LOOP_78_1_fu_826", "Parent" : "0", "Child" : ["47"],
		"CDFG" : "DNN_Pipeline_VITIS_LOOP_78_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "24", "EstimateLatencyMax" : "24",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "conv2_output", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pool2_output_0_0", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_78_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter7", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter7", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DNN_Pipeline_VITIS_LOOP_78_1_fu_826.flow_control_loop_pipe_sequential_init_U", "Parent" : "46"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_DNN_Pipeline_VITIS_LOOP_117_1_fu_832", "Parent" : "0", "Child" : ["49"],
		"CDFG" : "DNN_Pipeline_VITIS_LOOP_117_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "flatten_output", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pool2_output_0_0", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_117_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DNN_Pipeline_VITIS_LOOP_117_1_fu_832.flow_control_loop_pipe_sequential_init_U", "Parent" : "48"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_DNN_Pipeline_VITIS_LOOP_126_4_fu_838", "Parent" : "0", "Child" : ["51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67"],
		"CDFG" : "DNN_Pipeline_VITIS_LOOP_126_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "flatten_output_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "flatten_output_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "flatten_output_load_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "flatten_output_load_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "flatten_output_load_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "flatten_output_load_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "flatten_output_load_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "flatten_output_load_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "flatten_output_load_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "flatten_output_load_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "flatten_output_load_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "flatten_output_load_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "flatten_output_load_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "flatten_output_load_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "flatten_output_load_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "flatten_output_load_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "fc1_output", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "fc1_weight_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fc1_weight_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fc1_weight_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fc1_weight_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fc1_weight_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fc1_weight_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fc1_weight_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fc1_weight_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fc1_weight_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fc1_weight_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fc1_weight_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fc1_weight_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fc1_weight_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fc1_weight_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fc1_weight_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fc1_weight_15", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_126_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter52", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter52", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DNN_Pipeline_VITIS_LOOP_126_4_fu_838.fc1_weight_0_U", "Parent" : "50"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DNN_Pipeline_VITIS_LOOP_126_4_fu_838.fc1_weight_1_U", "Parent" : "50"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DNN_Pipeline_VITIS_LOOP_126_4_fu_838.fc1_weight_2_U", "Parent" : "50"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DNN_Pipeline_VITIS_LOOP_126_4_fu_838.fc1_weight_3_U", "Parent" : "50"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DNN_Pipeline_VITIS_LOOP_126_4_fu_838.fc1_weight_4_U", "Parent" : "50"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DNN_Pipeline_VITIS_LOOP_126_4_fu_838.fc1_weight_5_U", "Parent" : "50"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DNN_Pipeline_VITIS_LOOP_126_4_fu_838.fc1_weight_6_U", "Parent" : "50"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DNN_Pipeline_VITIS_LOOP_126_4_fu_838.fc1_weight_7_U", "Parent" : "50"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DNN_Pipeline_VITIS_LOOP_126_4_fu_838.fc1_weight_8_U", "Parent" : "50"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DNN_Pipeline_VITIS_LOOP_126_4_fu_838.fc1_weight_9_U", "Parent" : "50"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DNN_Pipeline_VITIS_LOOP_126_4_fu_838.fc1_weight_10_U", "Parent" : "50"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DNN_Pipeline_VITIS_LOOP_126_4_fu_838.fc1_weight_11_U", "Parent" : "50"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DNN_Pipeline_VITIS_LOOP_126_4_fu_838.fc1_weight_12_U", "Parent" : "50"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DNN_Pipeline_VITIS_LOOP_126_4_fu_838.fc1_weight_13_U", "Parent" : "50"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DNN_Pipeline_VITIS_LOOP_126_4_fu_838.fc1_weight_14_U", "Parent" : "50"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DNN_Pipeline_VITIS_LOOP_126_4_fu_838.fc1_weight_15_U", "Parent" : "50"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DNN_Pipeline_VITIS_LOOP_126_4_fu_838.flow_control_loop_pipe_sequential_init_U", "Parent" : "50"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_DNN_Pipeline_VITIS_LOOP_135_6_fu_893", "Parent" : "0", "Child" : ["69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85"],
		"CDFG" : "DNN_Pipeline_VITIS_LOOP_135_6",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "65", "EstimateLatencyMax" : "65",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fc1_output_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "fc1_output_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "fc1_output_load_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "fc1_output_load_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "fc1_output_load_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "fc1_output_load_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "fc1_output_load_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "fc1_output_load_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "fc1_output_load_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "fc1_output_load_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "fc1_output_load_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "fc1_output_load_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "fc1_output_load_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "fc1_output_load_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "fc1_output_load_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "fc1_output_load_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "fc2_output", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "fc2_weight_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fc2_weight_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fc2_weight_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fc2_weight_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fc2_weight_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fc2_weight_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fc2_weight_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fc2_weight_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fc2_weight_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fc2_weight_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fc2_weight_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fc2_weight_11", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fc2_weight_12", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fc2_weight_13", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fc2_weight_14", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "fc2_weight_15", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_135_6", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter52", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter52", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DNN_Pipeline_VITIS_LOOP_135_6_fu_893.fc2_weight_0_U", "Parent" : "68"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DNN_Pipeline_VITIS_LOOP_135_6_fu_893.fc2_weight_1_U", "Parent" : "68"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DNN_Pipeline_VITIS_LOOP_135_6_fu_893.fc2_weight_2_U", "Parent" : "68"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DNN_Pipeline_VITIS_LOOP_135_6_fu_893.fc2_weight_3_U", "Parent" : "68"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DNN_Pipeline_VITIS_LOOP_135_6_fu_893.fc2_weight_4_U", "Parent" : "68"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DNN_Pipeline_VITIS_LOOP_135_6_fu_893.fc2_weight_5_U", "Parent" : "68"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DNN_Pipeline_VITIS_LOOP_135_6_fu_893.fc2_weight_6_U", "Parent" : "68"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DNN_Pipeline_VITIS_LOOP_135_6_fu_893.fc2_weight_7_U", "Parent" : "68"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DNN_Pipeline_VITIS_LOOP_135_6_fu_893.fc2_weight_8_U", "Parent" : "68"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DNN_Pipeline_VITIS_LOOP_135_6_fu_893.fc2_weight_9_U", "Parent" : "68"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DNN_Pipeline_VITIS_LOOP_135_6_fu_893.fc2_weight_10_U", "Parent" : "68"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DNN_Pipeline_VITIS_LOOP_135_6_fu_893.fc2_weight_11_U", "Parent" : "68"},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DNN_Pipeline_VITIS_LOOP_135_6_fu_893.fc2_weight_12_U", "Parent" : "68"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DNN_Pipeline_VITIS_LOOP_135_6_fu_893.fc2_weight_13_U", "Parent" : "68"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DNN_Pipeline_VITIS_LOOP_135_6_fu_893.fc2_weight_14_U", "Parent" : "68"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DNN_Pipeline_VITIS_LOOP_135_6_fu_893.fc2_weight_15_U", "Parent" : "68"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DNN_Pipeline_VITIS_LOOP_135_6_fu_893.flow_control_loop_pipe_sequential_init_U", "Parent" : "68"},
	{"ID" : "86", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_DNN_Pipeline_VITIS_LOOP_143_8_fu_948", "Parent" : "0", "Child" : ["87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100"],
		"CDFG" : "DNN_Pipeline_VITIS_LOOP_143_8",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "54", "EstimateLatencyMax" : "54",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "fc2_output_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "fc2_output_load_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "fc2_output_load_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "fc2_output_load_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "fc2_output_load_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "fc2_output_load_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "fc2_output_load_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "fc2_output_load_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "fc2_output_load_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "fc2_output_load_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "fc2_output_load_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "fc2_output_load_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "temp_output", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "output_weight_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_weight_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_weight_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_weight_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_weight_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_weight_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_weight_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_weight_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_weight_8", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_weight_9", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_weight_10", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "output_weight_11", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_143_8", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter43", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter43", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DNN_Pipeline_VITIS_LOOP_143_8_fu_948.output_weight_0_U", "Parent" : "86"},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DNN_Pipeline_VITIS_LOOP_143_8_fu_948.output_weight_1_U", "Parent" : "86"},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DNN_Pipeline_VITIS_LOOP_143_8_fu_948.output_weight_2_U", "Parent" : "86"},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DNN_Pipeline_VITIS_LOOP_143_8_fu_948.output_weight_3_U", "Parent" : "86"},
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DNN_Pipeline_VITIS_LOOP_143_8_fu_948.output_weight_4_U", "Parent" : "86"},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DNN_Pipeline_VITIS_LOOP_143_8_fu_948.output_weight_5_U", "Parent" : "86"},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DNN_Pipeline_VITIS_LOOP_143_8_fu_948.output_weight_6_U", "Parent" : "86"},
	{"ID" : "94", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DNN_Pipeline_VITIS_LOOP_143_8_fu_948.output_weight_7_U", "Parent" : "86"},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DNN_Pipeline_VITIS_LOOP_143_8_fu_948.output_weight_8_U", "Parent" : "86"},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DNN_Pipeline_VITIS_LOOP_143_8_fu_948.output_weight_9_U", "Parent" : "86"},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DNN_Pipeline_VITIS_LOOP_143_8_fu_948.output_weight_10_U", "Parent" : "86"},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DNN_Pipeline_VITIS_LOOP_143_8_fu_948.output_weight_11_U", "Parent" : "86"},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DNN_Pipeline_VITIS_LOOP_143_8_fu_948.fexp_32ns_32ns_32_4_full_dsp_1_U234", "Parent" : "86"},
	{"ID" : "100", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DNN_Pipeline_VITIS_LOOP_143_8_fu_948.flow_control_loop_pipe_sequential_init_U", "Parent" : "86"},
	{"ID" : "101", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_DNN_Pipeline_VITIS_LOOP_150_10_fu_991", "Parent" : "0", "Child" : ["102"],
		"CDFG" : "DNN_Pipeline_VITIS_LOOP_150_10",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "23", "EstimateLatencyMax" : "23",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "temp_output", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "s_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_150_10", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage1", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage1_subdone", "QuitState" : "ap_ST_fsm_pp0_stage1", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage1_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "102", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DNN_Pipeline_VITIS_LOOP_150_10_fu_991.flow_control_loop_pipe_sequential_init_U", "Parent" : "101"},
	{"ID" : "103", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_DNN_Pipeline_VITIS_LOOP_153_11_fu_997", "Parent" : "0", "Child" : ["104", "105"],
		"CDFG" : "DNN_Pipeline_VITIS_LOOP_153_11",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "temp_output", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "s_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_153_11", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter7", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter7", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DNN_Pipeline_VITIS_LOOP_153_11_fu_997.fdiv_32ns_32ns_32_7_no_dsp_1_U264", "Parent" : "103"},
	{"ID" : "105", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DNN_Pipeline_VITIS_LOOP_153_11_fu_997.flow_control_loop_pipe_sequential_init_U", "Parent" : "103"},
	{"ID" : "106", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_DNN_Pipeline_VITIS_LOOP_158_12_fu_1004", "Parent" : "0", "Child" : ["107"],
		"CDFG" : "DNN_Pipeline_VITIS_LOOP_158_12",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "13", "EstimateLatencyMax" : "13",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "output_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "max_idx_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_158_12", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "107", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_DNN_Pipeline_VITIS_LOOP_158_12_fu_1004.flow_control_loop_pipe_sequential_init_U", "Parent" : "106"},
	{"ID" : "108", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_3_full_dsp_1_U272", "Parent" : "0"},
	{"ID" : "109", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_3_full_dsp_1_U273", "Parent" : "0"},
	{"ID" : "110", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_3_full_dsp_1_U274", "Parent" : "0"},
	{"ID" : "111", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_3_full_dsp_1_U275", "Parent" : "0"},
	{"ID" : "112", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_3_full_dsp_1_U276", "Parent" : "0"},
	{"ID" : "113", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_3_full_dsp_1_U277", "Parent" : "0"},
	{"ID" : "114", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_3_full_dsp_1_U278", "Parent" : "0"},
	{"ID" : "115", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_3_full_dsp_1_U279", "Parent" : "0"},
	{"ID" : "116", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_3_full_dsp_1_U280", "Parent" : "0"},
	{"ID" : "117", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U281", "Parent" : "0"},
	{"ID" : "118", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U282", "Parent" : "0"},
	{"ID" : "119", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U283", "Parent" : "0"},
	{"ID" : "120", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U284", "Parent" : "0"},
	{"ID" : "121", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U285", "Parent" : "0"},
	{"ID" : "122", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U286", "Parent" : "0"},
	{"ID" : "123", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U287", "Parent" : "0"},
	{"ID" : "124", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U288", "Parent" : "0"},
	{"ID" : "125", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U289", "Parent" : "0"},
	{"ID" : "126", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U290", "Parent" : "0"},
	{"ID" : "127", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U291", "Parent" : "0"},
	{"ID" : "128", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fcmp_32ns_32ns_1_2_no_dsp_1_U292", "Parent" : "0"},
	{"ID" : "129", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_3_full_dsp_1_U293", "Parent" : "0"},
	{"ID" : "130", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_3_full_dsp_1_U294", "Parent" : "0"},
	{"ID" : "131", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_3_full_dsp_1_U295", "Parent" : "0"},
	{"ID" : "132", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_3_full_dsp_1_U296", "Parent" : "0"},
	{"ID" : "133", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_3_full_dsp_1_U297", "Parent" : "0"},
	{"ID" : "134", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_3_full_dsp_1_U298", "Parent" : "0"},
	{"ID" : "135", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_3_full_dsp_1_U299", "Parent" : "0"},
	{"ID" : "136", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U300", "Parent" : "0"},
	{"ID" : "137", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U301", "Parent" : "0"},
	{"ID" : "138", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U302", "Parent" : "0"},
	{"ID" : "139", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U303", "Parent" : "0"},
	{"ID" : "140", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U304", "Parent" : "0"},
	{"ID" : "141", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U305", "Parent" : "0"},
	{"ID" : "142", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_2_max_dsp_1_U306", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	DNN {
		input_r {Type I LastRead 0 FirstWrite -1}
		conv2_kernel_0_0 {Type I LastRead -1 FirstWrite -1}
		conv2_kernel_0_1 {Type I LastRead -1 FirstWrite -1}
		conv2_kernel_0_2 {Type I LastRead -1 FirstWrite -1}
		conv2_kernel_1_0 {Type I LastRead -1 FirstWrite -1}
		conv2_kernel_1_1 {Type I LastRead -1 FirstWrite -1}
		conv2_kernel_1_2 {Type I LastRead -1 FirstWrite -1}
		conv2_kernel_2_0 {Type I LastRead -1 FirstWrite -1}
		conv2_kernel_2_1 {Type I LastRead -1 FirstWrite -1}
		conv2_kernel_2_2 {Type I LastRead -1 FirstWrite -1}
		fc1_weight_0 {Type I LastRead -1 FirstWrite -1}
		fc1_weight_1 {Type I LastRead -1 FirstWrite -1}
		fc1_weight_2 {Type I LastRead -1 FirstWrite -1}
		fc1_weight_3 {Type I LastRead -1 FirstWrite -1}
		fc1_weight_4 {Type I LastRead -1 FirstWrite -1}
		fc1_weight_5 {Type I LastRead -1 FirstWrite -1}
		fc1_weight_6 {Type I LastRead -1 FirstWrite -1}
		fc1_weight_7 {Type I LastRead -1 FirstWrite -1}
		fc1_weight_8 {Type I LastRead -1 FirstWrite -1}
		fc1_weight_9 {Type I LastRead -1 FirstWrite -1}
		fc1_weight_10 {Type I LastRead -1 FirstWrite -1}
		fc1_weight_11 {Type I LastRead -1 FirstWrite -1}
		fc1_weight_12 {Type I LastRead -1 FirstWrite -1}
		fc1_weight_13 {Type I LastRead -1 FirstWrite -1}
		fc1_weight_14 {Type I LastRead -1 FirstWrite -1}
		fc1_weight_15 {Type I LastRead -1 FirstWrite -1}
		fc2_weight_0 {Type I LastRead -1 FirstWrite -1}
		fc2_weight_1 {Type I LastRead -1 FirstWrite -1}
		fc2_weight_2 {Type I LastRead -1 FirstWrite -1}
		fc2_weight_3 {Type I LastRead -1 FirstWrite -1}
		fc2_weight_4 {Type I LastRead -1 FirstWrite -1}
		fc2_weight_5 {Type I LastRead -1 FirstWrite -1}
		fc2_weight_6 {Type I LastRead -1 FirstWrite -1}
		fc2_weight_7 {Type I LastRead -1 FirstWrite -1}
		fc2_weight_8 {Type I LastRead -1 FirstWrite -1}
		fc2_weight_9 {Type I LastRead -1 FirstWrite -1}
		fc2_weight_10 {Type I LastRead -1 FirstWrite -1}
		fc2_weight_11 {Type I LastRead -1 FirstWrite -1}
		fc2_weight_12 {Type I LastRead -1 FirstWrite -1}
		fc2_weight_13 {Type I LastRead -1 FirstWrite -1}
		fc2_weight_14 {Type I LastRead -1 FirstWrite -1}
		fc2_weight_15 {Type I LastRead -1 FirstWrite -1}
		output_weight_0 {Type I LastRead -1 FirstWrite -1}
		output_weight_1 {Type I LastRead -1 FirstWrite -1}
		output_weight_2 {Type I LastRead -1 FirstWrite -1}
		output_weight_3 {Type I LastRead -1 FirstWrite -1}
		output_weight_4 {Type I LastRead -1 FirstWrite -1}
		output_weight_5 {Type I LastRead -1 FirstWrite -1}
		output_weight_6 {Type I LastRead -1 FirstWrite -1}
		output_weight_7 {Type I LastRead -1 FirstWrite -1}
		output_weight_8 {Type I LastRead -1 FirstWrite -1}
		output_weight_9 {Type I LastRead -1 FirstWrite -1}
		output_weight_10 {Type I LastRead -1 FirstWrite -1}
		output_weight_11 {Type I LastRead -1 FirstWrite -1}}
	DNN_Pipeline_1 {
		conv1_output {Type O LastRead -1 FirstWrite 0}}
	DNN_Pipeline_2 {
		pool1_output {Type O LastRead -1 FirstWrite 0}}
	DNN_Pipeline_3 {
		conv2_output {Type O LastRead -1 FirstWrite 0}}
	DNN_Pipeline_4 {
		flatten_output {Type O LastRead -1 FirstWrite 0}}
	DNN_Pipeline_5 {
		fc1_output {Type O LastRead -1 FirstWrite 0}}
	DNN_Pipeline_6 {
		fc2_output {Type O LastRead -1 FirstWrite 0}}
	DNN_Pipeline_7 {
		temp_output {Type O LastRead -1 FirstWrite 0}}
	DNN_Pipeline_8 {
		output_r {Type O LastRead -1 FirstWrite 0}}
	DNN_Pipeline_9 {
		temp_input {Type O LastRead -1 FirstWrite 0}}
	DNN_Pipeline_VITIS_LOOP_18_1_VITIS_LOOP_19_2 {
		temp_input {Type O LastRead -1 FirstWrite 1}
		input_r {Type I LastRead 0 FirstWrite -1}}
	DNN_Pipeline_VITIS_LOOP_24_3_VITIS_LOOP_25_4 {
		temp_input {Type I LastRead 1 FirstWrite -1}
		conv1_output {Type O LastRead -1 FirstWrite 31}}
	DNN_Pipeline_VITIS_LOOP_60_1_VITIS_LOOP_61_2 {
		conv1_output {Type I LastRead 6 FirstWrite -1}
		pool1_output {Type O LastRead -1 FirstWrite 7}}
	DNN_Pipeline_VITIS_LOOP_41_1_VITIS_LOOP_42_2_VITIS_LOOP_43_3 {
		pool1_output {Type I LastRead 1 FirstWrite -1}
		conv2_output {Type O LastRead -1 FirstWrite 31}
		conv2_kernel_0_0 {Type I LastRead -1 FirstWrite -1}
		conv2_kernel_0_1 {Type I LastRead -1 FirstWrite -1}
		conv2_kernel_0_2 {Type I LastRead -1 FirstWrite -1}
		conv2_kernel_1_0 {Type I LastRead -1 FirstWrite -1}
		conv2_kernel_1_1 {Type I LastRead -1 FirstWrite -1}
		conv2_kernel_1_2 {Type I LastRead -1 FirstWrite -1}
		conv2_kernel_2_0 {Type I LastRead -1 FirstWrite -1}
		conv2_kernel_2_1 {Type I LastRead -1 FirstWrite -1}
		conv2_kernel_2_2 {Type I LastRead -1 FirstWrite -1}}
	DNN_Pipeline_VITIS_LOOP_78_1 {
		conv2_output {Type I LastRead 6 FirstWrite -1}
		pool2_output_0_0 {Type O LastRead -1 FirstWrite 7}}
	DNN_Pipeline_VITIS_LOOP_117_1 {
		flatten_output {Type O LastRead -1 FirstWrite 1}
		pool2_output_0_0 {Type I LastRead 0 FirstWrite -1}}
	DNN_Pipeline_VITIS_LOOP_126_4 {
		flatten_output_load {Type I LastRead 0 FirstWrite -1}
		flatten_output_load_1 {Type I LastRead 0 FirstWrite -1}
		flatten_output_load_2 {Type I LastRead 0 FirstWrite -1}
		flatten_output_load_3 {Type I LastRead 0 FirstWrite -1}
		flatten_output_load_4 {Type I LastRead 0 FirstWrite -1}
		flatten_output_load_5 {Type I LastRead 0 FirstWrite -1}
		flatten_output_load_6 {Type I LastRead 0 FirstWrite -1}
		flatten_output_load_7 {Type I LastRead 0 FirstWrite -1}
		flatten_output_load_8 {Type I LastRead 0 FirstWrite -1}
		flatten_output_load_9 {Type I LastRead 0 FirstWrite -1}
		flatten_output_load_10 {Type I LastRead 0 FirstWrite -1}
		flatten_output_load_11 {Type I LastRead 0 FirstWrite -1}
		flatten_output_load_12 {Type I LastRead 0 FirstWrite -1}
		flatten_output_load_13 {Type I LastRead 0 FirstWrite -1}
		flatten_output_load_14 {Type I LastRead 0 FirstWrite -1}
		flatten_output_load_15 {Type I LastRead 0 FirstWrite -1}
		fc1_output {Type O LastRead -1 FirstWrite 52}
		fc1_weight_0 {Type I LastRead -1 FirstWrite -1}
		fc1_weight_1 {Type I LastRead -1 FirstWrite -1}
		fc1_weight_2 {Type I LastRead -1 FirstWrite -1}
		fc1_weight_3 {Type I LastRead -1 FirstWrite -1}
		fc1_weight_4 {Type I LastRead -1 FirstWrite -1}
		fc1_weight_5 {Type I LastRead -1 FirstWrite -1}
		fc1_weight_6 {Type I LastRead -1 FirstWrite -1}
		fc1_weight_7 {Type I LastRead -1 FirstWrite -1}
		fc1_weight_8 {Type I LastRead -1 FirstWrite -1}
		fc1_weight_9 {Type I LastRead -1 FirstWrite -1}
		fc1_weight_10 {Type I LastRead -1 FirstWrite -1}
		fc1_weight_11 {Type I LastRead -1 FirstWrite -1}
		fc1_weight_12 {Type I LastRead -1 FirstWrite -1}
		fc1_weight_13 {Type I LastRead -1 FirstWrite -1}
		fc1_weight_14 {Type I LastRead -1 FirstWrite -1}
		fc1_weight_15 {Type I LastRead -1 FirstWrite -1}}
	DNN_Pipeline_VITIS_LOOP_135_6 {
		fc1_output_load {Type I LastRead 0 FirstWrite -1}
		fc1_output_load_1 {Type I LastRead 0 FirstWrite -1}
		fc1_output_load_2 {Type I LastRead 0 FirstWrite -1}
		fc1_output_load_3 {Type I LastRead 0 FirstWrite -1}
		fc1_output_load_4 {Type I LastRead 0 FirstWrite -1}
		fc1_output_load_5 {Type I LastRead 0 FirstWrite -1}
		fc1_output_load_6 {Type I LastRead 0 FirstWrite -1}
		fc1_output_load_7 {Type I LastRead 0 FirstWrite -1}
		fc1_output_load_8 {Type I LastRead 0 FirstWrite -1}
		fc1_output_load_9 {Type I LastRead 0 FirstWrite -1}
		fc1_output_load_10 {Type I LastRead 0 FirstWrite -1}
		fc1_output_load_11 {Type I LastRead 0 FirstWrite -1}
		fc1_output_load_12 {Type I LastRead 0 FirstWrite -1}
		fc1_output_load_13 {Type I LastRead 0 FirstWrite -1}
		fc1_output_load_14 {Type I LastRead 0 FirstWrite -1}
		fc1_output_load_15 {Type I LastRead 0 FirstWrite -1}
		fc2_output {Type O LastRead -1 FirstWrite 52}
		fc2_weight_0 {Type I LastRead -1 FirstWrite -1}
		fc2_weight_1 {Type I LastRead -1 FirstWrite -1}
		fc2_weight_2 {Type I LastRead -1 FirstWrite -1}
		fc2_weight_3 {Type I LastRead -1 FirstWrite -1}
		fc2_weight_4 {Type I LastRead -1 FirstWrite -1}
		fc2_weight_5 {Type I LastRead -1 FirstWrite -1}
		fc2_weight_6 {Type I LastRead -1 FirstWrite -1}
		fc2_weight_7 {Type I LastRead -1 FirstWrite -1}
		fc2_weight_8 {Type I LastRead -1 FirstWrite -1}
		fc2_weight_9 {Type I LastRead -1 FirstWrite -1}
		fc2_weight_10 {Type I LastRead -1 FirstWrite -1}
		fc2_weight_11 {Type I LastRead -1 FirstWrite -1}
		fc2_weight_12 {Type I LastRead -1 FirstWrite -1}
		fc2_weight_13 {Type I LastRead -1 FirstWrite -1}
		fc2_weight_14 {Type I LastRead -1 FirstWrite -1}
		fc2_weight_15 {Type I LastRead -1 FirstWrite -1}}
	DNN_Pipeline_VITIS_LOOP_143_8 {
		fc2_output_load {Type I LastRead 0 FirstWrite -1}
		fc2_output_load_1 {Type I LastRead 0 FirstWrite -1}
		fc2_output_load_2 {Type I LastRead 0 FirstWrite -1}
		fc2_output_load_3 {Type I LastRead 0 FirstWrite -1}
		fc2_output_load_4 {Type I LastRead 0 FirstWrite -1}
		fc2_output_load_5 {Type I LastRead 0 FirstWrite -1}
		fc2_output_load_6 {Type I LastRead 0 FirstWrite -1}
		fc2_output_load_7 {Type I LastRead 0 FirstWrite -1}
		fc2_output_load_8 {Type I LastRead 0 FirstWrite -1}
		fc2_output_load_9 {Type I LastRead 0 FirstWrite -1}
		fc2_output_load_10 {Type I LastRead 0 FirstWrite -1}
		fc2_output_load_11 {Type I LastRead 0 FirstWrite -1}
		temp_output {Type O LastRead -1 FirstWrite 43}
		output_weight_0 {Type I LastRead -1 FirstWrite -1}
		output_weight_1 {Type I LastRead -1 FirstWrite -1}
		output_weight_2 {Type I LastRead -1 FirstWrite -1}
		output_weight_3 {Type I LastRead -1 FirstWrite -1}
		output_weight_4 {Type I LastRead -1 FirstWrite -1}
		output_weight_5 {Type I LastRead -1 FirstWrite -1}
		output_weight_6 {Type I LastRead -1 FirstWrite -1}
		output_weight_7 {Type I LastRead -1 FirstWrite -1}
		output_weight_8 {Type I LastRead -1 FirstWrite -1}
		output_weight_9 {Type I LastRead -1 FirstWrite -1}
		output_weight_10 {Type I LastRead -1 FirstWrite -1}
		output_weight_11 {Type I LastRead -1 FirstWrite -1}}
	DNN_Pipeline_VITIS_LOOP_150_10 {
		temp_output {Type I LastRead 0 FirstWrite -1}
		s_out {Type O LastRead -1 FirstWrite 1}}
	DNN_Pipeline_VITIS_LOOP_153_11 {
		temp_output {Type I LastRead 0 FirstWrite -1}
		s_reload {Type I LastRead 0 FirstWrite -1}
		output_r {Type O LastRead -1 FirstWrite 7}}
	DNN_Pipeline_VITIS_LOOP_158_12 {
		output_r {Type I LastRead 0 FirstWrite -1}
		max_idx_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "753", "Max" : "753"}
	, {"Name" : "Interval", "Min" : "754", "Max" : "754"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	input_r { ap_memory {  { input_r_address0 mem_address 1 7 }  { input_r_ce0 mem_ce 1 1 }  { input_r_q0 mem_dout 0 32 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
