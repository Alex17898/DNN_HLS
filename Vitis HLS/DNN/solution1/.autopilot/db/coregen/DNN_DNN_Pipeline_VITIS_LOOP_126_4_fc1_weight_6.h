// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_6_H__
#define __DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_6_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_6_ram : public sc_core::sc_module {

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


   SC_CTOR(DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_6_ram) {
        ram[0] = "0b10111110010110011010010101000010";
        ram[1] = "0b00111111000110100101110111101111";
        ram[2] = "0b00111110000111011001001110010100";
        ram[3] = "0b10111111100100100000111011101101";
        ram[4] = "0b00111101000001100110010000110111";
        ram[5] = "0b10111110010010011011110110111001";
        ram[6] = "0b10111111000010111011001001011001";
        ram[7] = "0b00111111100000001000011000000001";
        ram[8] = "0b10111101110000101101000001011111";
        ram[9] = "0b00111101100101011011001001101100";
        ram[10] = "0b00111101101101011000011100000101";
        ram[11] = "0b10111110101010111010000111001001";
        ram[12] = "0b00111111001000111001000111100111";
        ram[13] = "0b00111100110001000010111111100000";
        ram[14] = "0b10111110101011011010111100111110";
        ram[15] = "0b00111101111000010111011101101100";


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


SC_MODULE(DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_6) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 16;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_6_ram* meminst;


SC_CTOR(DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_6) {
meminst = new DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_6_ram("DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_6_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_6() {
    delete meminst;
}


};//endmodule
#endif
