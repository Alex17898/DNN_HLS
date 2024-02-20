// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_2_H__
#define __DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_2_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_2_ram : public sc_core::sc_module {

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


   SC_CTOR(DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_2_ram) {
        ram[0] = "0b10111110110000010111000001000111";
        ram[1] = "0b00111110101001010110101001011110";
        ram[2] = "0b00111111010001100011010100000101";
        ram[3] = "0b00111111001001000100001111101010";
        ram[4] = "0b00111111001101110000010000010110";
        ram[5] = "0b10111101100111010111001101001010";
        ram[6] = "0b10111110100000100000011101010111";
        ram[7] = "0b10111110100011100110011100101111";
        ram[8] = "0b00111110110101111011110101100101";
        ram[9] = "0b00111100011011100011011011100000";
        ram[10] = "0b00111111010001000001000111101110";
        ram[11] = "0b00111101010001101010011011111000";
        ram[12] = "0b00111110101001111011001010001111";
        ram[13] = "0b00111101000011010101011011110001";
        ram[14] = "0b00111110001000100010001100010101";
        ram[15] = "0b10111110001011010111010011011110";


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


SC_MODULE(DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_2) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 16;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_2_ram* meminst;


SC_CTOR(DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_2) {
meminst = new DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_2_ram("DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_2_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_2() {
    delete meminst;
}


};//endmodule
#endif
