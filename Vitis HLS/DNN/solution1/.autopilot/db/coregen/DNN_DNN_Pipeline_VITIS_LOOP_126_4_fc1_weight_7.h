// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_7_H__
#define __DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_7_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_7_ram : public sc_core::sc_module {

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


   SC_CTOR(DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_7_ram) {
        ram[0] = "0b10111101110100110010011100100100";
        ram[1] = "0b10111101110111010000000011010110";
        ram[2] = "0b10111100100110101010010001100000";
        ram[3] = "0b10111110110100110101111111011011";
        ram[4] = "0b00111111001011110001001110010110";
        ram[5] = "0b10111110001110010000001001101110";
        ram[6] = "0b00111111011111011100000101000100";
        ram[7] = "0b00111101000001011001101000000011";
        ram[8] = "0b00111110100011010000100110110110";
        ram[9] = "0b10111110011001101011011111001100";
        ram[10] = "0b10111110111001001101001110010101";
        ram[11] = "0b10111110101110011011110110001000";
        ram[12] = "0b10111110100100001100000011110001";
        ram[13] = "0b10111101101100000001101110011000";
        ram[14] = "0b10111101010111001011000011011001";
        ram[15] = "0b00111101101000101100000101000011";


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


SC_MODULE(DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_7) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 16;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_7_ram* meminst;


SC_CTOR(DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_7) {
meminst = new DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_7_ram("DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_7_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_7() {
    delete meminst;
}


};//endmodule
#endif
