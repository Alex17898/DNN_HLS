// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __DNN_DNN_Pipeline_VITIS_LOOP_135_6_fc2_weight_6_H__
#define __DNN_DNN_Pipeline_VITIS_LOOP_135_6_fc2_weight_6_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct DNN_DNN_Pipeline_VITIS_LOOP_135_6_fc2_weight_6_ram : public sc_core::sc_module {

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


   SC_CTOR(DNN_DNN_Pipeline_VITIS_LOOP_135_6_fc2_weight_6_ram) {
        ram[0] = "0b00111100001000011110001001000100";
        ram[1] = "0b00111111001010010001010101111101";
        ram[2] = "0b10111111010101110000011011101010";
        ram[3] = "0b10111110100001011011110010110100";
        ram[4] = "0b00111110101110000010111111001111";
        ram[5] = "0b10111111011111000100001101000001";
        ram[6] = "0b00111111100011011010100001111101";
        ram[7] = "0b10111101111101010011101101110110";
        ram[8] = "0b00111101011111010000000011110000";
        ram[9] = "0b00111101010001010001011000011001";
        ram[10] = "0b00111110111110110000111010011101";
        ram[11] = "0b00111110110100000010110110011111";


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


SC_MODULE(DNN_DNN_Pipeline_VITIS_LOOP_135_6_fc2_weight_6) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 12;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


DNN_DNN_Pipeline_VITIS_LOOP_135_6_fc2_weight_6_ram* meminst;


SC_CTOR(DNN_DNN_Pipeline_VITIS_LOOP_135_6_fc2_weight_6) {
meminst = new DNN_DNN_Pipeline_VITIS_LOOP_135_6_fc2_weight_6_ram("DNN_DNN_Pipeline_VITIS_LOOP_135_6_fc2_weight_6_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~DNN_DNN_Pipeline_VITIS_LOOP_135_6_fc2_weight_6() {
    delete meminst;
}


};//endmodule
#endif
