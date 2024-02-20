// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __DNN_DNN_Pipeline_VITIS_LOOP_135_6_fc2_weight_2_H__
#define __DNN_DNN_Pipeline_VITIS_LOOP_135_6_fc2_weight_2_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct DNN_DNN_Pipeline_VITIS_LOOP_135_6_fc2_weight_2_ram : public sc_core::sc_module {

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


   SC_CTOR(DNN_DNN_Pipeline_VITIS_LOOP_135_6_fc2_weight_2_ram) {
        ram[0] = "0b00111110110110001011010001001010";
        ram[1] = "0b00111110110010110110101100001010";
        ram[2] = "0b00111110101011011010010011001011";
        ram[3] = "0b10111111001111010100110010101011";
        ram[4] = "0b10111111101010110100101011111010";
        ram[5] = "0b10111110110100100001100011001001";
        ram[6] = "0b10111111100100010011100110000000";
        ram[7] = "0b10111111011111110110110000011101";
        ram[8] = "0b00111111001100101100101001010101";
        ram[9] = "0b00111110000001011010101111011000";
        ram[10] = "0b00111110111100010010001010100001";
        ram[11] = "0b10111101101101101100110100001101";


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


SC_MODULE(DNN_DNN_Pipeline_VITIS_LOOP_135_6_fc2_weight_2) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 12;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


DNN_DNN_Pipeline_VITIS_LOOP_135_6_fc2_weight_2_ram* meminst;


SC_CTOR(DNN_DNN_Pipeline_VITIS_LOOP_135_6_fc2_weight_2) {
meminst = new DNN_DNN_Pipeline_VITIS_LOOP_135_6_fc2_weight_2_ram("DNN_DNN_Pipeline_VITIS_LOOP_135_6_fc2_weight_2_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~DNN_DNN_Pipeline_VITIS_LOOP_135_6_fc2_weight_2() {
    delete meminst;
}


};//endmodule
#endif
