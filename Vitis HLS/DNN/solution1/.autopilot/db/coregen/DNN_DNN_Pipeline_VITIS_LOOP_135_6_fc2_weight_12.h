// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __DNN_DNN_Pipeline_VITIS_LOOP_135_6_fc2_weight_12_H__
#define __DNN_DNN_Pipeline_VITIS_LOOP_135_6_fc2_weight_12_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct DNN_DNN_Pipeline_VITIS_LOOP_135_6_fc2_weight_12_ram : public sc_core::sc_module {

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


   SC_CTOR(DNN_DNN_Pipeline_VITIS_LOOP_135_6_fc2_weight_12_ram) {
        ram[0] = "0b00111101100011001011001110100101";
        ram[1] = "0b10111111001011000000000100111100";
        ram[2] = "0b00111111011001111111110001110001";
        ram[3] = "0b10111101110010011111100111100110";
        ram[4] = "0b10111110101001110111100110001100";
        ram[5] = "0b00111110011011111101011111001011";
        ram[6] = "0b00111111011100000000011101011111";
        ram[7] = "0b10111110101101110110000100011000";
        ram[8] = "0b10111110010010011111000100010010";
        ram[9] = "0b10111110100110001000011010101111";
        ram[10] = "0b00111101110111100101010100010011";
        ram[11] = "0b10111110101000001110010000010010";


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


SC_MODULE(DNN_DNN_Pipeline_VITIS_LOOP_135_6_fc2_weight_12) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 12;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


DNN_DNN_Pipeline_VITIS_LOOP_135_6_fc2_weight_12_ram* meminst;


SC_CTOR(DNN_DNN_Pipeline_VITIS_LOOP_135_6_fc2_weight_12) {
meminst = new DNN_DNN_Pipeline_VITIS_LOOP_135_6_fc2_weight_12_ram("DNN_DNN_Pipeline_VITIS_LOOP_135_6_fc2_weight_12_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~DNN_DNN_Pipeline_VITIS_LOOP_135_6_fc2_weight_12() {
    delete meminst;
}


};//endmodule
#endif
