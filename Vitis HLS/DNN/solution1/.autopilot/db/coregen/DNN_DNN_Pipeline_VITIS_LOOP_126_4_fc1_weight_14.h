// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_14_H__
#define __DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_14_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_14_ram : public sc_core::sc_module {

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


   SC_CTOR(DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_14_ram) {
        ram[0] = "0b00111110101110101000001111000101";
        ram[1] = "0b00111111000000101000011011001111";
        ram[2] = "0b10111110101000101100010011000010";
        ram[3] = "0b10111111000000110101001111111101";
        ram[4] = "0b10111111000100100011110000110011";
        ram[5] = "0b00111110110011000010001000001101";
        ram[6] = "0b10111110110111001000010011100001";
        ram[7] = "0b10111111000011011000011001001011";
        ram[8] = "0b00111110111001110001111011110100";
        ram[9] = "0b10111110101110110011010000100111";
        ram[10] = "0b00111110000000111011001011001000";
        ram[11] = "0b10111101110111010011100001000100";
        ram[12] = "0b10111110100010000100000011001100";
        ram[13] = "0b00111101110111001110101001111100";
        ram[14] = "0b10111110011001001111101111010110";
        ram[15] = "0b00111110101001001101100110110001";


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


SC_MODULE(DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_14) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 16;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_14_ram* meminst;


SC_CTOR(DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_14) {
meminst = new DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_14_ram("DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_14_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_14() {
    delete meminst;
}


};//endmodule
#endif
