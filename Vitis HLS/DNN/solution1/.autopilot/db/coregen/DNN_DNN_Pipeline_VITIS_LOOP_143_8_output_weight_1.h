// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __DNN_DNN_Pipeline_VITIS_LOOP_143_8_output_weight_1_H__
#define __DNN_DNN_Pipeline_VITIS_LOOP_143_8_output_weight_1_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct DNN_DNN_Pipeline_VITIS_LOOP_143_8_output_weight_1_ram : public sc_core::sc_module {

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


   SC_CTOR(DNN_DNN_Pipeline_VITIS_LOOP_143_8_output_weight_1_ram) {
        ram[0] = "0b00111111000010010010010000111011";
        ram[1] = "0b00111111100000100001111000000011";
        ram[2] = "0b10111110010001010110100101101101";
        ram[3] = "0b10111110100100101111010111100011";
        ram[4] = "0b00111111011001001100000001101110";
        ram[5] = "0b10111101110100010001101110000011";
        ram[6] = "0b00111111101101000110100110100110";
        ram[7] = "0b10111110110011010011010101010101";
        ram[8] = "0b10111110111110100000001011100100";
        ram[9] = "0b10111111101101101100100101111011";


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


SC_MODULE(DNN_DNN_Pipeline_VITIS_LOOP_143_8_output_weight_1) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 10;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


DNN_DNN_Pipeline_VITIS_LOOP_143_8_output_weight_1_ram* meminst;


SC_CTOR(DNN_DNN_Pipeline_VITIS_LOOP_143_8_output_weight_1) {
meminst = new DNN_DNN_Pipeline_VITIS_LOOP_143_8_output_weight_1_ram("DNN_DNN_Pipeline_VITIS_LOOP_143_8_output_weight_1_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~DNN_DNN_Pipeline_VITIS_LOOP_143_8_output_weight_1() {
    delete meminst;
}


};//endmodule
#endif
