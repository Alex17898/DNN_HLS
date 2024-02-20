// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __DNN_DNN_Pipeline_VITIS_LOOP_135_6_fc2_weight_3_H__
#define __DNN_DNN_Pipeline_VITIS_LOOP_135_6_fc2_weight_3_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct DNN_DNN_Pipeline_VITIS_LOOP_135_6_fc2_weight_3_ram : public sc_core::sc_module {

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


   SC_CTOR(DNN_DNN_Pipeline_VITIS_LOOP_135_6_fc2_weight_3_ram) {
        ram[0] = "0b00111110100001111101010011010101";
        ram[1] = "0b10111110101111111011000001010000";
        ram[2] = "0b10111110110111110001101100011110";
        ram[3] = "0b10111110101000110011111100100000";
        ram[4] = "0b10111110111010110100001001100001";
        ram[5] = "0b00111111001010100100111100110100";
        ram[6] = "0b00111111000011011111100000011111";
        ram[7] = "0b00111110001110010000110000101010";
        ram[8] = "0b00111111010100011011010001011010";
        ram[9] = "0b00111110101010010100001110010010";
        ram[10] = "0b00111111001111101010010101011010";
        ram[11] = "0b10111110000110101110001111011101";


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


SC_MODULE(DNN_DNN_Pipeline_VITIS_LOOP_135_6_fc2_weight_3) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 12;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


DNN_DNN_Pipeline_VITIS_LOOP_135_6_fc2_weight_3_ram* meminst;


SC_CTOR(DNN_DNN_Pipeline_VITIS_LOOP_135_6_fc2_weight_3) {
meminst = new DNN_DNN_Pipeline_VITIS_LOOP_135_6_fc2_weight_3_ram("DNN_DNN_Pipeline_VITIS_LOOP_135_6_fc2_weight_3_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~DNN_DNN_Pipeline_VITIS_LOOP_135_6_fc2_weight_3() {
    delete meminst;
}


};//endmodule
#endif
