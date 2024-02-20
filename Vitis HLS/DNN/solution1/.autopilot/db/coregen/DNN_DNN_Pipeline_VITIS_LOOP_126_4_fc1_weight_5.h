// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_5_H__
#define __DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_5_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_5_ram : public sc_core::sc_module {

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


   SC_CTOR(DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_5_ram) {
        ram[0] = "0b00111110110100000101110010111101";
        ram[1] = "0b00111111000101000000010110110110";
        ram[2] = "0b10111111001010000001101110110011";
        ram[3] = "0b10111110001100111011010010101000";
        ram[4] = "0b00111110110000011101000111010101";
        ram[5] = "0b10111111011000110011111110001111";
        ram[6] = "0b10111100101000111111011001001010";
        ram[7] = "0b00111111010100001000100101101011";
        ram[8] = "0b10111110010101000000001010011110";
        ram[9] = "0b00111110100011100100010100101001";
        ram[10] = "0b00111100101011010010100111010010";
        ram[11] = "0b10111101010110010001100101001000";
        ram[12] = "0b10111101111110100011101110100110";
        ram[13] = "0b00111110100001000010100011101110";
        ram[14] = "0b10111110110110011000101101010101";
        ram[15] = "0b00111101111000101010000111100111";


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


SC_MODULE(DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_5) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 16;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_5_ram* meminst;


SC_CTOR(DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_5) {
meminst = new DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_5_ram("DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_5_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_5() {
    delete meminst;
}


};//endmodule
#endif
