// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_15_H__
#define __DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_15_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_15_ram : public sc_core::sc_module {

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


   SC_CTOR(DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_15_ram) {
        ram[0] = "0b10111110101001010011011000101010";
        ram[1] = "0b10111110010110111101111011100001";
        ram[2] = "0b10111110010100010101111010001011";
        ram[3] = "0b10111110111110110100101000000110";
        ram[4] = "0b00111101110110100100011101111111";
        ram[5] = "0b10111111001110000110110011011101";
        ram[6] = "0b00111110100100000101111110000011";
        ram[7] = "0b10111111000001101111111111010110";
        ram[8] = "0b10111110100000010111010001100100";
        ram[9] = "0b10111101100001011011111111001000";
        ram[10] = "0b10111110101011010100110110101111";
        ram[11] = "0b10111101011101100001010010001000";
        ram[12] = "0b10111110111110101010110001001100";
        ram[13] = "0b10111110110000101011011111001010";
        ram[14] = "0b10111110101101110101001100011001";
        ram[15] = "0b00111111010110011000111001001010";


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


SC_MODULE(DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_15) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 16;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_15_ram* meminst;


SC_CTOR(DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_15) {
meminst = new DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_15_ram("DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_15_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_15() {
    delete meminst;
}


};//endmodule
#endif
