// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_13_H__
#define __DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_13_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_13_ram : public sc_core::sc_module {

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


   SC_CTOR(DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_13_ram) {
        ram[0] = "0b00111110000101110011110010001110";
        ram[1] = "0b10111111000001111111001110010011";
        ram[2] = "0b10111111001001010001000101001011";
        ram[3] = "0b10111110101110011111100101011001";
        ram[4] = "0b10111111010010010111101110101001";
        ram[5] = "0b10111110111001101000110000011000";
        ram[6] = "0b00111111000010111110001111000001";
        ram[7] = "0b00111111000010001111100000011001";
        ram[8] = "0b10111110000100100100101001000100";
        ram[9] = "0b10111110000001101011011101111100";
        ram[10] = "0b10111110000010011000011100110101";
        ram[11] = "0b00111100111100101011100111000000";
        ram[12] = "0b10111111110011001111000010000010";
        ram[13] = "0b00111101101100010100101101110010";
        ram[14] = "0b10111110010011000010010101011101";
        ram[15] = "0b10111111110000000011011001110100";


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


SC_MODULE(DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_13) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 16;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_13_ram* meminst;


SC_CTOR(DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_13) {
meminst = new DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_13_ram("DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_13_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_13() {
    delete meminst;
}


};//endmodule
#endif
