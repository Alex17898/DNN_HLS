// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_3_H__
#define __DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_3_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_3_ram : public sc_core::sc_module {

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


   SC_CTOR(DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_3_ram) {
        ram[0] = "0b10111110101000000000110000001010";
        ram[1] = "0b00111110101100001000000101101001";
        ram[2] = "0b00111110110001100100101110111011";
        ram[3] = "0b00111111000101110111101010110000";
        ram[4] = "0b00111111001110111010101101001110";
        ram[5] = "0b00111101101000100011111000011111";
        ram[6] = "0b00111111000000001111111011011110";
        ram[7] = "0b00111110100001001010011011010010";
        ram[8] = "0b10111110111100100001010111010100";
        ram[9] = "0b10111110110110010101101011111111";
        ram[10] = "0b10111101011000010110000001011001";
        ram[11] = "0b10111110010001010011111111000000";
        ram[12] = "0b10111110000111100001100010101100";
        ram[13] = "0b10111110111100010001001000010001";
        ram[14] = "0b10111110001011110111110011111110";
        ram[15] = "0b00111110010110110100111010011100";


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


SC_MODULE(DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_3) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 16;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_3_ram* meminst;


SC_CTOR(DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_3) {
meminst = new DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_3_ram("DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_3_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_3() {
    delete meminst;
}


};//endmodule
#endif
