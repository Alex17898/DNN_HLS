// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __DNN_DNN_Pipeline_VITIS_LOOP_143_8_output_weight_4_H__
#define __DNN_DNN_Pipeline_VITIS_LOOP_143_8_output_weight_4_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct DNN_DNN_Pipeline_VITIS_LOOP_143_8_output_weight_4_ram : public sc_core::sc_module {

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


   SC_CTOR(DNN_DNN_Pipeline_VITIS_LOOP_143_8_output_weight_4_ram) {
        ram[0] = "0b00111111100000111111001001111010";
        ram[1] = "0b00111101001000111100010010110111";
        ram[2] = "0b00111111000111100001001000100101";
        ram[3] = "0b00111110110010101111100111000111";
        ram[4] = "0b10111100100101011010101111010010";
        ram[5] = "0b00111111010100100001011010000101";
        ram[6] = "0b00111101100010110110011110011101";
        ram[7] = "0b10111111000011010011001011100100";
        ram[8] = "0b10111111001000111000111001101011";
        ram[9] = "0b00111110110100001101001010100011";


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


SC_MODULE(DNN_DNN_Pipeline_VITIS_LOOP_143_8_output_weight_4) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 10;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


DNN_DNN_Pipeline_VITIS_LOOP_143_8_output_weight_4_ram* meminst;


SC_CTOR(DNN_DNN_Pipeline_VITIS_LOOP_143_8_output_weight_4) {
meminst = new DNN_DNN_Pipeline_VITIS_LOOP_143_8_output_weight_4_ram("DNN_DNN_Pipeline_VITIS_LOOP_143_8_output_weight_4_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~DNN_DNN_Pipeline_VITIS_LOOP_143_8_output_weight_4() {
    delete meminst;
}


};//endmodule
#endif
