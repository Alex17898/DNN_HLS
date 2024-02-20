// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __DNN_DNN_Pipeline_VITIS_LOOP_143_8_output_weight_0_H__
#define __DNN_DNN_Pipeline_VITIS_LOOP_143_8_output_weight_0_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct DNN_DNN_Pipeline_VITIS_LOOP_143_8_output_weight_0_ram : public sc_core::sc_module {

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


   SC_CTOR(DNN_DNN_Pipeline_VITIS_LOOP_143_8_output_weight_0_ram) {
        ram[0] = "0b00111110101001001111111101001010";
        ram[1] = "0b00111101011101101011010010000001";
        ram[2] = "0b10111101100010001011100011110010";
        ram[3] = "0b10111111010110011011001111010111";
        ram[4] = "0b10111110010100110110001011001011";
        ram[5] = "0b00111111001111001101101001011000";
        ram[6] = "0b10111111001001010001110111101111";
        ram[7] = "0b00111110010111000110110000010110";
        ram[8] = "0b00111111100010010000000100011011";
        ram[9] = "0b10111110000110001001110101101100";


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


SC_MODULE(DNN_DNN_Pipeline_VITIS_LOOP_143_8_output_weight_0) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 10;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


DNN_DNN_Pipeline_VITIS_LOOP_143_8_output_weight_0_ram* meminst;


SC_CTOR(DNN_DNN_Pipeline_VITIS_LOOP_143_8_output_weight_0) {
meminst = new DNN_DNN_Pipeline_VITIS_LOOP_143_8_output_weight_0_ram("DNN_DNN_Pipeline_VITIS_LOOP_143_8_output_weight_0_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~DNN_DNN_Pipeline_VITIS_LOOP_143_8_output_weight_0() {
    delete meminst;
}


};//endmodule
#endif
