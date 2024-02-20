// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_12_H__
#define __DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_12_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_12_ram : public sc_core::sc_module {

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


   SC_CTOR(DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_12_ram) {
        ram[0] = "0b10111110011011000110101011100011";
        ram[1] = "0b10111011110010010001110100111011";
        ram[2] = "0b10111110000101000000100110001100";
        ram[3] = "0b00111111000110100001001101011000";
        ram[4] = "0b10111110001011100001110111111001";
        ram[5] = "0b10111101011001111010010000100001";
        ram[6] = "0b10111110101011011001111110101111";
        ram[7] = "0b10111110110011010010111110100010";
        ram[8] = "0b10111101000111100100110111001101";
        ram[9] = "0b00111110011011111001010101011010";
        ram[10] = "0b10111110100010100000110011101010";
        ram[11] = "0b00111100101001011100011000010000";
        ram[12] = "0b00111110110110011110010101000100";
        ram[13] = "0b00111101100110000001010100101111";
        ram[14] = "0b10111010110010111010110101000001";
        ram[15] = "0b00111111000011001111001101110000";


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


SC_MODULE(DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_12) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 16;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_12_ram* meminst;


SC_CTOR(DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_12) {
meminst = new DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_12_ram("DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_12_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_12() {
    delete meminst;
}


};//endmodule
#endif
