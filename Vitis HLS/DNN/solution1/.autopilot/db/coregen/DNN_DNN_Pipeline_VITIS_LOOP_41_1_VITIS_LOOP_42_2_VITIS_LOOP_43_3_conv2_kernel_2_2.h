// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __DNN_DNN_Pipeline_VITIS_LOOP_41_1_VITIS_LOOP_42_2_VITIS_LOOP_43_3_conv2_kernel_2_2_H__
#define __DNN_DNN_Pipeline_VITIS_LOOP_41_1_VITIS_LOOP_42_2_VITIS_LOOP_43_3_conv2_kernel_2_2_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct DNN_DNN_Pipeline_VITIS_LOOP_41_1_VITIS_LOOP_42_2_VITIS_LOOP_43_3_conv2_kernel_2_2_ram : public sc_core::sc_module {

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


   SC_CTOR(DNN_DNN_Pipeline_VITIS_LOOP_41_1_VITIS_LOOP_42_2_VITIS_LOOP_43_3_conv2_kernel_2_2_ram) {
        ram[0] = "0b10111110111010100001100111101011";
        ram[1] = "0b00111110110010011111110100010101";
        ram[2] = "0b10111110110000010010101101011110";
        ram[3] = "0b00111110111101100011101100000100";
        ram[4] = "0b10111110111111100111000101101001";
        ram[5] = "0b00111110011011100000111100111101";
        ram[6] = "0b00111110101011001000010000001110";
        ram[7] = "0b00111110110010000101010010101100";
        ram[8] = "0b00111101100001010111101001111000";
        ram[9] = "0b00111110001100011000101011001010";
        ram[10] = "0b00111111001000011010100001001000";
        ram[11] = "0b00111111000100010110110001100001";
        ram[12] = "0b10111110000110000001100111010010";
        ram[13] = "0b10111101110000001110111000000111";
        ram[14] = "0b00111110100110001111001000010111";
        ram[15] = "0b00111110011010100101100001110001";


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


SC_MODULE(DNN_DNN_Pipeline_VITIS_LOOP_41_1_VITIS_LOOP_42_2_VITIS_LOOP_43_3_conv2_kernel_2_2) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 16;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


DNN_DNN_Pipeline_VITIS_LOOP_41_1_VITIS_LOOP_42_2_VITIS_LOOP_43_3_conv2_kernel_2_2_ram* meminst;


SC_CTOR(DNN_DNN_Pipeline_VITIS_LOOP_41_1_VITIS_LOOP_42_2_VITIS_LOOP_43_3_conv2_kernel_2_2) {
meminst = new DNN_DNN_Pipeline_VITIS_LOOP_41_1_VITIS_LOOP_42_2_VITIS_LOOP_43_3_conv2_kernel_2_2_ram("DNN_DNN_Pipeline_VITIS_LOOP_41_1_VITIS_LOOP_42_2_VITIS_LOOP_43_3_conv2_kernel_2_2_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~DNN_DNN_Pipeline_VITIS_LOOP_41_1_VITIS_LOOP_42_2_VITIS_LOOP_43_3_conv2_kernel_2_2() {
    delete meminst;
}


};//endmodule
#endif
