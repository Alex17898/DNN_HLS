set moduleName DNN_Pipeline_VITIS_LOOP_126_4
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
set C_modelName {DNN_Pipeline_VITIS_LOOP_126_4}
set C_modelType { void 0 }
set C_modelArgList {
	{ flatten_output_load float 32 regular  }
	{ flatten_output_load_1 float 32 regular  }
	{ flatten_output_load_2 float 32 regular  }
	{ flatten_output_load_3 float 32 regular  }
	{ flatten_output_load_4 float 32 regular  }
	{ flatten_output_load_5 float 32 regular  }
	{ flatten_output_load_6 float 32 regular  }
	{ flatten_output_load_7 float 32 regular  }
	{ flatten_output_load_8 float 32 regular  }
	{ flatten_output_load_9 float 32 regular  }
	{ flatten_output_load_10 float 32 regular  }
	{ flatten_output_load_11 float 32 regular  }
	{ flatten_output_load_12 float 32 regular  }
	{ flatten_output_load_13 float 32 regular  }
	{ flatten_output_load_14 float 32 regular  }
	{ flatten_output_load_15 float 32 regular  }
	{ fc1_output float 32 regular {array 16 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "flatten_output_load", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "flatten_output_load_1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "flatten_output_load_2", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "flatten_output_load_3", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "flatten_output_load_4", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "flatten_output_load_5", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "flatten_output_load_6", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "flatten_output_load_7", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "flatten_output_load_8", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "flatten_output_load_9", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "flatten_output_load_10", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "flatten_output_load_11", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "flatten_output_load_12", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "flatten_output_load_13", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "flatten_output_load_14", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "flatten_output_load_15", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "fc1_output", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 175
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ flatten_output_load sc_in sc_lv 32 signal 0 } 
	{ flatten_output_load_1 sc_in sc_lv 32 signal 1 } 
	{ flatten_output_load_2 sc_in sc_lv 32 signal 2 } 
	{ flatten_output_load_3 sc_in sc_lv 32 signal 3 } 
	{ flatten_output_load_4 sc_in sc_lv 32 signal 4 } 
	{ flatten_output_load_5 sc_in sc_lv 32 signal 5 } 
	{ flatten_output_load_6 sc_in sc_lv 32 signal 6 } 
	{ flatten_output_load_7 sc_in sc_lv 32 signal 7 } 
	{ flatten_output_load_8 sc_in sc_lv 32 signal 8 } 
	{ flatten_output_load_9 sc_in sc_lv 32 signal 9 } 
	{ flatten_output_load_10 sc_in sc_lv 32 signal 10 } 
	{ flatten_output_load_11 sc_in sc_lv 32 signal 11 } 
	{ flatten_output_load_12 sc_in sc_lv 32 signal 12 } 
	{ flatten_output_load_13 sc_in sc_lv 32 signal 13 } 
	{ flatten_output_load_14 sc_in sc_lv 32 signal 14 } 
	{ flatten_output_load_15 sc_in sc_lv 32 signal 15 } 
	{ fc1_output_address0 sc_out sc_lv 4 signal 16 } 
	{ fc1_output_ce0 sc_out sc_logic 1 signal 16 } 
	{ fc1_output_we0 sc_out sc_logic 1 signal 16 } 
	{ fc1_output_d0 sc_out sc_lv 32 signal 16 } 
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
	{ grp_fu_1556_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1556_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1556_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_1556_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1556_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1560_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1560_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1560_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_1560_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1560_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1564_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1564_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1564_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_1564_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1564_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1568_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1568_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1568_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_1568_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1568_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1572_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1572_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1572_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_1572_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1572_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1576_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1576_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1576_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_1576_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1576_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1580_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1580_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1580_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_1580_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1580_p_ce sc_out sc_logic 1 signal -1 } 
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
	{ grp_fu_1584_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1584_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1584_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1584_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1588_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1588_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1588_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1588_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1592_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1592_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1592_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1592_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1596_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1596_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1596_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1596_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1600_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1600_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1600_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1600_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1604_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1604_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1604_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1604_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_1608_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1608_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_1608_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_1608_p_ce sc_out sc_logic 1 signal -1 } 
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
 	{ "name": "flatten_output_load", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "flatten_output_load", "role": "default" }} , 
 	{ "name": "flatten_output_load_1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "flatten_output_load_1", "role": "default" }} , 
 	{ "name": "flatten_output_load_2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "flatten_output_load_2", "role": "default" }} , 
 	{ "name": "flatten_output_load_3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "flatten_output_load_3", "role": "default" }} , 
 	{ "name": "flatten_output_load_4", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "flatten_output_load_4", "role": "default" }} , 
 	{ "name": "flatten_output_load_5", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "flatten_output_load_5", "role": "default" }} , 
 	{ "name": "flatten_output_load_6", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "flatten_output_load_6", "role": "default" }} , 
 	{ "name": "flatten_output_load_7", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "flatten_output_load_7", "role": "default" }} , 
 	{ "name": "flatten_output_load_8", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "flatten_output_load_8", "role": "default" }} , 
 	{ "name": "flatten_output_load_9", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "flatten_output_load_9", "role": "default" }} , 
 	{ "name": "flatten_output_load_10", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "flatten_output_load_10", "role": "default" }} , 
 	{ "name": "flatten_output_load_11", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "flatten_output_load_11", "role": "default" }} , 
 	{ "name": "flatten_output_load_12", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "flatten_output_load_12", "role": "default" }} , 
 	{ "name": "flatten_output_load_13", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "flatten_output_load_13", "role": "default" }} , 
 	{ "name": "flatten_output_load_14", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "flatten_output_load_14", "role": "default" }} , 
 	{ "name": "flatten_output_load_15", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "flatten_output_load_15", "role": "default" }} , 
 	{ "name": "fc1_output_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "fc1_output", "role": "address0" }} , 
 	{ "name": "fc1_output_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fc1_output", "role": "ce0" }} , 
 	{ "name": "fc1_output_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fc1_output", "role": "we0" }} , 
 	{ "name": "fc1_output_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fc1_output", "role": "d0" }} , 
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
 	{ "name": "grp_fu_1556_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1556_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1556_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1556_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1556_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_1556_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_1556_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1556_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1556_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1556_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1560_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1560_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1560_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1560_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1560_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_1560_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_1560_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1560_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1560_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1560_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1564_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1564_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1564_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1564_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1564_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_1564_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_1564_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1564_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1564_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1564_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1568_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1568_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1568_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1568_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1568_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_1568_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_1568_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1568_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1568_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1568_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1572_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1572_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1572_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1572_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1572_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_1572_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_1572_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1572_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1572_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1572_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1576_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1576_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1576_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1576_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1576_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_1576_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_1576_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1576_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1576_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1576_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1580_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1580_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1580_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1580_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1580_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_1580_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_1580_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1580_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1580_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1580_p_ce", "role": "default" }} , 
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
 	{ "name": "grp_fu_1584_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1584_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1584_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1584_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1584_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1584_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1584_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1584_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1588_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1588_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1588_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1588_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1588_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1588_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1588_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1588_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1592_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1592_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1592_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1592_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1592_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1592_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1592_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1592_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1596_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1596_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1596_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1596_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1596_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1596_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1596_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1596_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1600_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1600_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1600_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1600_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1600_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1600_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1600_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1600_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1604_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1604_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1604_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1604_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1604_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1604_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1604_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1604_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1608_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1608_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1608_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1608_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1608_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1608_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1608_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1608_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_1544_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1544_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_1544_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_1544_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_1544_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "grp_fu_1544_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_1544_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1544_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_1544_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_1544_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fc1_weight_0_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fc1_weight_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fc1_weight_2_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fc1_weight_3_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fc1_weight_4_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fc1_weight_5_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fc1_weight_6_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fc1_weight_7_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fc1_weight_8_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fc1_weight_9_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fc1_weight_10_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fc1_weight_11_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fc1_weight_12_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fc1_weight_13_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fc1_weight_14_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fc1_weight_15_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		fc1_weight_15 {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "69", "Max" : "69"}
	, {"Name" : "Interval", "Min" : "69", "Max" : "69"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	flatten_output_load { ap_none {  { flatten_output_load in_data 0 32 } } }
	flatten_output_load_1 { ap_none {  { flatten_output_load_1 in_data 0 32 } } }
	flatten_output_load_2 { ap_none {  { flatten_output_load_2 in_data 0 32 } } }
	flatten_output_load_3 { ap_none {  { flatten_output_load_3 in_data 0 32 } } }
	flatten_output_load_4 { ap_none {  { flatten_output_load_4 in_data 0 32 } } }
	flatten_output_load_5 { ap_none {  { flatten_output_load_5 in_data 0 32 } } }
	flatten_output_load_6 { ap_none {  { flatten_output_load_6 in_data 0 32 } } }
	flatten_output_load_7 { ap_none {  { flatten_output_load_7 in_data 0 32 } } }
	flatten_output_load_8 { ap_none {  { flatten_output_load_8 in_data 0 32 } } }
	flatten_output_load_9 { ap_none {  { flatten_output_load_9 in_data 0 32 } } }
	flatten_output_load_10 { ap_none {  { flatten_output_load_10 in_data 0 32 } } }
	flatten_output_load_11 { ap_none {  { flatten_output_load_11 in_data 0 32 } } }
	flatten_output_load_12 { ap_none {  { flatten_output_load_12 in_data 0 32 } } }
	flatten_output_load_13 { ap_none {  { flatten_output_load_13 in_data 0 32 } } }
	flatten_output_load_14 { ap_none {  { flatten_output_load_14 in_data 0 32 } } }
	flatten_output_load_15 { ap_none {  { flatten_output_load_15 in_data 0 32 } } }
	fc1_output { ap_memory {  { fc1_output_address0 mem_address 1 4 }  { fc1_output_ce0 mem_ce 1 1 }  { fc1_output_we0 mem_we 1 1 }  { fc1_output_d0 mem_din 1 32 } } }
}
