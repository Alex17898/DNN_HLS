// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __DNN_DNN_Pipeline_VITIS_LOOP_135_6_fc2_weight_8_H__
#define __DNN_DNN_Pipeline_VITIS_LOOP_135_6_fc2_weight_8_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct DNN_DNN_Pipeline_VITIS_LOOP_135_6_fc2_weight_8_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 32;
  static const unsigned AddressRange = 12;
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


   SC_CTOR(DNN_DNN_Pipeline_VITIS_LOOP_135_6_fc2_weight_8_ram) {
        ram[0] = "0b10111110001001111111110001100000";
        ram[1] = "0b00111110110111100110100011101111";
        ram[2] = "0b00111111000111000110101110110010";
        ram[3] = "0b10111111001110011101010110000001";
        ram[4] = "0b00111111001111101000111001010110";
        ram[5] = "0b00111110100001001110011001111010";
        ram[6] = "0b10111111000110110110111100001101";
        ram[7] = "0b00111111001000001101100100001011";
        ram[8] = "0b00111110110101010101010111111111";
        ram[9] = "0b10111110010110011011101110010000";
        ram[10] = "0b00111110001000010111111110101001";
        ram[11] = "0b00111111001111101101001111000111";


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


SC_MODULE(DNN_DNN_Pipeline_VITIS_LOOP_135_6_fc2_weight_8) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 12;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


DNN_DNN_Pipeline_VITIS_LOOP_135_6_fc2_weight_8_ram* meminst;


SC_CTOR(DNN_DNN_Pipeline_VITIS_LOOP_135_6_fc2_weight_8) {
meminst = new DNN_DNN_Pipeline_VITIS_LOOP_135_6_fc2_weight_8_ram("DNN_DNN_Pipeline_VITIS_LOOP_135_6_fc2_weight_8_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~DNN_DNN_Pipeline_VITIS_LOOP_135_6_fc2_weight_8() {
    delete meminst;
}


};//endmodule
#endif