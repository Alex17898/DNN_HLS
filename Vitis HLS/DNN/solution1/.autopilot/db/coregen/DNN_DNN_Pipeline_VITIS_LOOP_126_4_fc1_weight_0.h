// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_0_H__
#define __DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_0_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_0_ram : public sc_core::sc_module {

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


   SC_CTOR(DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_0_ram) {
        ram[0] = "0b10111110100001010001101001111100";
        ram[1] = "0b10111110111000101111011011000000";
        ram[2] = "0b10111100101000100000001000010010";
        ram[3] = "0b00111101101110111100101111100011";
        ram[4] = "0b10111111011010111111100010100110";
        ram[5] = "0b10111110110001101000011010111011";
        ram[6] = "0b00111110111001100011111011011110";
        ram[7] = "0b00111110011110001010101001000101";
        ram[8] = "0b10111111011010110010001110010010";
        ram[9] = "0b10111110101111100010010110100110";
        ram[10] = "0b00111101011001110101000010101111";
        ram[11] = "0b10111110011000111001110011010000";
        ram[12] = "0b00111110111110111110101100110011";
        ram[13] = "0b00111110001011000001110110111010";
        ram[14] = "0b00111101001101011101100101000011";
        ram[15] = "0b00111101111000001000100000100000";


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


SC_MODULE(DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_0) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 16;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_0_ram* meminst;


SC_CTOR(DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_0) {
meminst = new DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_0_ram("DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_0_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_0() {
    delete meminst;
}


};//endmodule
#endif
