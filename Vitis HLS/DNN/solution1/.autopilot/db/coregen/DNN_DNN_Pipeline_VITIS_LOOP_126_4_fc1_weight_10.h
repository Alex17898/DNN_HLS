// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_10_H__
#define __DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_10_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_10_ram : public sc_core::sc_module {

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


   SC_CTOR(DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_10_ram) {
        ram[0] = "0b10111100110000010001101010110000";
        ram[1] = "0b10111111000010101011101011011111";
        ram[2] = "0b10111110011011001010101101001100";
        ram[3] = "0b00111111000111000101000010111001";
        ram[4] = "0b00111111001000100011011001010101";
        ram[5] = "0b00111111000111111101001110010100";
        ram[6] = "0b00111110110100100100001010111000";
        ram[7] = "0b00111110101001111010001100111011";
        ram[8] = "0b10111111011100001101101100000001";
        ram[9] = "0b10111110010000100111111010101011";
        ram[10] = "0b10111101010110001111010010111001";
        ram[11] = "0b00111101010001001110000001001000";
        ram[12] = "0b00111111010010000010111011110110";
        ram[13] = "0b10111110100001001000000001110100";
        ram[14] = "0b00111110011111000111101001001101";
        ram[15] = "0b00111110011110011000110010011011";


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


SC_MODULE(DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_10) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 16;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_10_ram* meminst;


SC_CTOR(DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_10) {
meminst = new DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_10_ram("DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_10_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_10() {
    delete meminst;
}


};//endmodule
#endif
