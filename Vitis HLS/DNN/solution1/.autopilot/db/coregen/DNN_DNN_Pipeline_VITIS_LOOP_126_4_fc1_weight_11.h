// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_11_H__
#define __DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_11_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_11_ram : public sc_core::sc_module {

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


   SC_CTOR(DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_11_ram) {
        ram[0] = "0b10111101000111111001101110000000";
        ram[1] = "0b10111111000110011010100001001100";
        ram[2] = "0b00111111000010000110011010111010";
        ram[3] = "0b10111110110000000100110001111011";
        ram[4] = "0b00111111001010001111100110010110";
        ram[5] = "0b00111111001101010101111101110000";
        ram[6] = "0b10111110001010000000100010111001";
        ram[7] = "0b00111111001111001110100101010101";
        ram[8] = "0b00111110011111010010011001100110";
        ram[9] = "0b00111110011001001001100110101010";
        ram[10] = "0b00111111001110100001011010111111";
        ram[11] = "0b00111110100001111100001110111001";
        ram[12] = "0b10111110111110010101101110100101";
        ram[13] = "0b10111110101000100100010011101001";
        ram[14] = "0b00111101010010110011000010011101";
        ram[15] = "0b10111110111001011110010001011100";


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


SC_MODULE(DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_11) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 16;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_11_ram* meminst;


SC_CTOR(DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_11) {
meminst = new DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_11_ram("DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_11_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_11() {
    delete meminst;
}


};//endmodule
#endif
