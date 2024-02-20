// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_1_H__
#define __DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_1_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_1_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 32;
  static const unsigned AddressRange = 16;
  static const unsigned AddressWidth = 4;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_1_ram) {
        ram[0] = "0b00111101110011000001100010000100";
        ram[1] = "0b10111111000011010001100001010101";
        ram[2] = "0b00111110101100110111011101011101";
        ram[3] = "0b10111110000101110010001010011000";
        ram[4] = "0b10111110000000011101000110101011";
        ram[5] = "0b10111110100010011011001000010011";
        ram[6] = "0b10111110001110010000100001100000";
        ram[7] = "0b00111011101001001011100101000111";
        ram[8] = "0b10111100000100101110111001100010";
        ram[9] = "0b10111110100001110101001000100111";
        ram[10] = "0b10111111000110111000111100110111";
        ram[11] = "0b10111100000010100111011000000000";
        ram[12] = "0b00111111101000000100011100100000";
        ram[13] = "0b10111100100100001100101100100110";
        ram[14] = "0b10111110111001100111110110011000";
        ram[15] = "0b00111111000110011100010000100001";


SC_METHOD(prc_write_0);
  sensitive<<clk.pos();
   }


void prc_write_0()
{
    if (ce0.read() == sc_dt::Log_1) 
    {
            if(address0.read().is_01() && address0.read().to_uint()<AddressRange)
              q0 = ram[address0.read().to_uint()];
            else
              q0 = sc_lv<DataWidth>();
    }
}


}; //endmodule


SC_MODULE(DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_1) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 16;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_1_ram* meminst;


SC_CTOR(DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_1) {
meminst = new DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_1_ram("DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_1_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_1() {
    delete meminst;
}


};//endmodule
#endif
