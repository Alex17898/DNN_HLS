// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_9_H__
#define __DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_9_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_9_ram : public sc_core::sc_module {

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


   SC_CTOR(DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_9_ram) {
        ram[0] = "0b10111110100001011000010001000100";
        ram[1] = "0b00111110111110001101101101000110";
        ram[2] = "0b00111110000010100101111110111110";
        ram[3] = "0b00111110011010111011100011001100";
        ram[4] = "0b10111111011110000100110101010001";
        ram[5] = "0b10111110100110101110101010111000";
        ram[6] = "0b00111111001001000001001010011111";
        ram[7] = "0b10111011101101111100110110001001";
        ram[8] = "0b00111110010011001101101110111111";
        ram[9] = "0b10111110101011001101010011011111";
        ram[10] = "0b10111110101111101010011100101001";
        ram[11] = "0b10111100111000011011111000010000";
        ram[12] = "0b00111101101010101101110011001011";
        ram[13] = "0b10111110110011011001100000111010";
        ram[14] = "0b00111100111000111111001001001100";
        ram[15] = "0b00111111001001101010111001111100";


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


SC_MODULE(DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_9) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 16;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_9_ram* meminst;


SC_CTOR(DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_9) {
meminst = new DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_9_ram("DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_9_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_9() {
    delete meminst;
}


};//endmodule
#endif
