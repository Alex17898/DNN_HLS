// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __DNN_DNN_Pipeline_VITIS_LOOP_143_8_output_weight_2_H__
#define __DNN_DNN_Pipeline_VITIS_LOOP_143_8_output_weight_2_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct DNN_DNN_Pipeline_VITIS_LOOP_143_8_output_weight_2_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 32;
  static const unsigned AddressRange = 10;
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


   SC_CTOR(DNN_DNN_Pipeline_VITIS_LOOP_143_8_output_weight_2_ram) {
        ram[0] = "0b10111111001111110000111111010001";
        ram[1] = "0b00111110000111011011001110001111";
        ram[2] = "0b10111110110100100100101011101111";
        ram[3] = "0b00111110010000110111110001000010";
        ram[4] = "0b00111111001010000110011111000010";
        ram[5] = "0b00111111001010000010011000001101";
        ram[6] = "0b00111111000101100011110010100001";
        ram[7] = "0b10111111010111111010100000110011";
        ram[8] = "0b10111101111010100101001100001111";
        ram[9] = "0b10111101110100010110000010101100";


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


SC_MODULE(DNN_DNN_Pipeline_VITIS_LOOP_143_8_output_weight_2) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 10;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


DNN_DNN_Pipeline_VITIS_LOOP_143_8_output_weight_2_ram* meminst;


SC_CTOR(DNN_DNN_Pipeline_VITIS_LOOP_143_8_output_weight_2) {
meminst = new DNN_DNN_Pipeline_VITIS_LOOP_143_8_output_weight_2_ram("DNN_DNN_Pipeline_VITIS_LOOP_143_8_output_weight_2_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~DNN_DNN_Pipeline_VITIS_LOOP_143_8_output_weight_2() {
    delete meminst;
}


};//endmodule
#endif