set moduleName DNN_Pipeline_VITIS_LOOP_41_1_VITIS_LOOP_42_2_VITIS_LOOP_43_3
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {DNN_Pipeline_VITIS_LOOP_41_1_VITIS_LOOP_42_2_VITIS_LOOP_43_3}
set C_modelType { void 0 }
set C_modelArgList {
	{ pool1_output float 32 regular {array 16 { 1 1 1 1 1 1 1 1 1 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ conv2_output float 32 regular {array 64 { 0 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "pool1_output", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "conv2_output", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 123
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ pool1_output_address0 sc_out sc_lv 4 signal 0 } 
	{ pool1_output_ce0 sc_out sc_logic 1 signal 0 } 
	{ pool1_output_q0 sc_in sc_lv 32 signal 0 } 
	{ pool1_output_address1 sc_out sc_lv 4 signal 0 } 
	{ pool1_output_ce1 sc_out sc_logic 1 signal 0 } 
	{ pool1_output_q1 sc_in sc_lv 32 signal 0 } 
	{ pool1_output_address2 sc_out sc_lv 4 signal 0 } 
	{ pool1_output_ce2 sc_out sc_logic 1 signal 0 } 
	{ pool1_output_q2 sc_in sc_lv 32 signal 0 } 
	{ pool1_output_address3 sc_out sc_lv 4 signal 0 } 
	{ pool1_output_ce3 sc_out sc_logic 1 signal 0 } 
	{ pool1_output_q3 sc_in sc_lv 32 signal 0 } 
	{ pool1_output_address4 sc_out sc_lv 4 signal 0 } 
	{ pool1_output_ce4 sc_out sc_logic 1 signal 0 } 
	{ pool1_output_q4 sc_in sc_lv 32 signal 0 } 
	{ pool1_output_address5 sc_out sc_lv 4 signal 0 } 
	{ pool1_output_ce5 sc_out sc_logic 1 signal 0 } 
	{ pool1_output_q5 sc_in sc_lv 32 signal 0 } 
	{ pool1_output_address6 sc_out sc_lv 4 signal 0 } 
	{ pool1_output_ce6 sc_out sc_logic 1 signal 0 } 
	{ pool1_output_q6 sc_in sc_lv 32 signal 0 } 
	{ pool1_output_address7 sc_out sc_lv 4 signal 0 } 
	{ pool1_output_ce7 sc_out sc_logic 1 signal 0 } 
	{ pool1_output_q7 sc_in sc_lv 32 signal 0 } 
	{ pool1_output_address8 sc_out sc_lv 4 signal 0 } 
	{ pool1_output_ce8 sc_out sc_logic 1 signal 0 } 
	{ pool1_output_q8 sc_in sc_lv 32 signal 0 } 
	{ conv2_output_address0 sc_out sc_lv 6 signal 1 } 
	{ conv2_output_ce0 sc_out sc_logic 1 signal 1 } 
	{ conv2_output_we0 sc_out sc_logic 1 signal 1 } 
	{ conv2_output_d0 sc_out sc_lv 32 signal 1 } 
	{ grp_fu_1472_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1472_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1472_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_1472_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1472_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1476_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1476_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1476_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_1476_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1476_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1480_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1480_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1480_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_1480_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1480_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1484_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1484_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1484_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_1484_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1484_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1488_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1488_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1488_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_1488_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1488_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1492_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1492_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1492_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_1492_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1492_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1496_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1496_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1496_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_1496_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1496_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1500_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1500_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1500_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_1500_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1500_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1504_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1504_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1504_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_1504_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1504_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1508_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1508_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1508_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1508_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1512_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1512_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1512_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1512_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1516_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1516_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1516_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1516_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1520_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1520_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1520_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1520_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1524_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1524_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1524_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1524_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1528_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1528_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1528_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1528_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1532_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1532_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1532_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1532_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1536_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1536_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1536_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1536_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1540_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1540_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1540_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1540_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1544_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1544_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1544_p_opcode sc_out sc_lv 5 signal -1 } 
	{ grp_fu_1544_p_dout0 sc_in sc_lv 1 signal -1 } 
	{ grp_fu_1544_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "pool1_output_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "pool1_output", "role": "address0" }} , 
 	{ "name": "pool1_output_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_output", "role": "ce0" }} , 
 	{ "name": "pool1_output_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pool1_output", "role": "q0" }} , 
 	{ "name": "pool1_output_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "pool1_output", "role": "address1" }} , 
 	{ "name": "pool1_output_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_output", "role": "ce1" }} , 
 	{ "name": "pool1_output_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pool1_output", "role": "q1" }} , 
 	{ "name": "pool1_output_address2", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "pool1_output", "role": "address2" }} , 
 	{ "name": "pool1_output_ce2", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_output", "role": "ce2" }} , 
 	{ "name": "pool1_output_q2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pool1_output", "role": "q2" }} , 
 	{ "name": "pool1_output_address3", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "pool1_output", "role": "address3" }} , 
 	{ "name": "pool1_output_ce3", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_output", "role": "ce3" }} , 
 	{ "name": "pool1_output_q3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pool1_output", "role": "q3" }} , 
 	{ "name": "pool1_output_address4", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "pool1_output", "role": "address4" }} , 
 	{ "name": "pool1_output_ce4", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_output", "role": "ce4" }} , 
 	{ "name": "pool1_output_q4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pool1_output", "role": "q4" }} , 
 	{ "name": "pool1_output_address5", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "pool1_output", "role": "address5" }} , 
 	{ "name": "pool1_output_ce5", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_output", "role": "ce5" }} , 
 	{ "name": "pool1_output_q5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pool1_output", "role": "q5" }} , 
 	{ "name": "pool1_output_address6", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "pool1_output", "role": "address6" }} , 
 	{ "name": "pool1_output_ce6", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_output", "role": "ce6" }} , 
 	{ "name": "pool1_output_q6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pool1_output", "role": "q6" }} , 
 	{ "name": "pool1_output_address7", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "pool1_output", "role": "address7" }} , 
 	{ "name": "pool1_output_ce7", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_output", "role": "ce7" }} , 
 	{ "name": "pool1_output_q7", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pool1_output", "role": "q7" }} , 
 	{ "name": "pool1_output_address8", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "pool1_output", "role": "address8" }} , 
 	{ "name": "pool1_output_ce8", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pool1_output", "role": "ce8" }} , 
 	{ "name": "pool1_output_q8", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "pool1_output", "role": "q8" }} , 
 	{ "name": "conv2_output_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "conv2_output", "role": "address0" }} , 
 	{ "name": "conv2_output_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2_output", "role": "ce0" }} , 
 	{ "name": "conv2_output_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "conv2_output", "role": "we0" }} , 
 	{ "name": "conv2_output_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "conv2_output", "role": "d0" }} , 
 	{ "name": "grp_fu_1472_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1472_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1472_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1472_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1472_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_1472_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_1472_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1472_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1472_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1472_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1476_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1476_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1476_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1476_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1476_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_1476_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_1476_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1476_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1476_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1476_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1480_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1480_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1480_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1480_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1480_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_1480_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_1480_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1480_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1480_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1480_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1484_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1484_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1484_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1484_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1484_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_1484_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_1484_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1484_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1484_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1484_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1488_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1488_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1488_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1488_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1488_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_1488_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_1488_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1488_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1488_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1488_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1492_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1492_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1492_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1492_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1492_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_1492_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_1492_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1492_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1492_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1492_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1496_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1496_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1496_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1496_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1496_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_1496_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_1496_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1496_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1496_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1496_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1500_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1500_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1500_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1500_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1500_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_1500_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_1500_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1500_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1500_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1500_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1504_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1504_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1504_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1504_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1504_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_1504_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_1504_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1504_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1504_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1504_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1508_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1508_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1508_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1508_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1508_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1508_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1508_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1508_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1512_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1512_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1512_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1512_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1512_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1512_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1512_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1512_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1516_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1516_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1516_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1516_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1516_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1516_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1516_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1516_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1520_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1520_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1520_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1520_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1520_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1520_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1520_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1520_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1524_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1524_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1524_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1524_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1524_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1524_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1524_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1524_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1528_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1528_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1528_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1528_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1528_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1528_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1528_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1528_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1532_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1532_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1532_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1532_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1532_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1532_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1532_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1532_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1536_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1536_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1536_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1536_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1536_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1536_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1536_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1536_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1540_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1540_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1540_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1540_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1540_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1540_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1540_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1540_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1544_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1544_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1544_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1544_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1544_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "grp_fu_1544_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_1544_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1544_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1544_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1544_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv2_kernel_0_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv2_kernel_0_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv2_kernel_0_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv2_kernel_1_0_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv2_kernel_1_1_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv2_kernel_1_2_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv2_kernel_2_0_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv2_kernel_2_1_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.conv2_kernel_2_2_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		conv2_kernel_2_2 {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "96", "Max" : "96"}
	, {"Name" : "Interval", "Min" : "96", "Max" : "96"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	pool1_output { ap_memory {  { pool1_output_address0 mem_address 1 4 }  { pool1_output_ce0 mem_ce 1 1 }  { pool1_output_q0 mem_dout 0 32 }  { pool1_output_address1 MemPortADDR2 1 4 }  { pool1_output_ce1 MemPortCE2 1 1 }  { pool1_output_q1 MemPortDOUT2 0 32 }  { pool1_output_address2 MemPortADDR2 1 4 }  { pool1_output_ce2 MemPortCE2 1 1 }  { pool1_output_q2 MemPortDOUT2 0 32 }  { pool1_output_address3 MemPortADDR2 1 4 }  { pool1_output_ce3 MemPortCE2 1 1 }  { pool1_output_q3 MemPortDOUT2 0 32 }  { pool1_output_address4 MemPortADDR2 1 4 }  { pool1_output_ce4 MemPortCE2 1 1 }  { pool1_output_q4 MemPortDOUT2 0 32 }  { pool1_output_address5 MemPortADDR2 1 4 }  { pool1_output_ce5 MemPortCE2 1 1 }  { pool1_output_q5 MemPortDOUT2 0 32 }  { pool1_output_address6 MemPortADDR2 1 4 }  { pool1_output_ce6 MemPortCE2 1 1 }  { pool1_output_q6 MemPortDOUT2 0 32 }  { pool1_output_address7 MemPortADDR2 1 4 }  { pool1_output_ce7 MemPortCE2 1 1 }  { pool1_output_q7 MemPortDOUT2 0 32 }  { pool1_output_address8 MemPortADDR2 1 4 }  { pool1_output_ce8 MemPortCE2 1 1 }  { pool1_output_q8 MemPortDOUT2 0 32 } } }
	conv2_output { ap_memory {  { conv2_output_address0 mem_address 1 6 }  { conv2_output_ce0 mem_ce 1 1 }  { conv2_output_we0 mem_we 1 1 }  { conv2_output_d0 mem_din 1 32 } } }
}
