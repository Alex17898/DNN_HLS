// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_8_H__
#define __DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_8_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_8_ram : public sc_core::sc_module {

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


   SC_CTOR(DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_8_ram) {
        ram[0] = "0b10111110011110110010110100001111";
        ram[1] = "0b00111101111111010010000101110100";
        ram[2] = "0b00111110100101100111011001010011";
        ram[3] = "0b00111110100000100001110011000011";
        ram[4] = "0b10111110011101000000101101010100";
        ram[5] = "0b00111111010100100011011011001010";
        ram[6] = "0b00111110010010011100000011101101";
        ram[7] = "0b00111111001011100010001110100000";
        ram[8] = "0b00111111000011101100110110101101";
        ram[9] = "0b10111110100011100111011011111000";
        ram[10] = "0b10111111011101011000100001100100";
        ram[11] = "0b10111110000100110101111000011000";
        ram[12] = "0b10111111000101100101100010010100";
        ram[13] = "0b10111011110001100011110000000001";
        ram[14] = "0b10111110100100100100100110000101";
        ram[15] = "0b00111110101010100101101100100100";


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


SC_MODULE(DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_8) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 16;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_8_ram* meminst;


SC_CTOR(DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_8) {
meminst = new DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_8_ram("DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_8_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_8() {
    delete meminst;
}


};//endmodule
#endif
