// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __DNN_DNN_Pipeline_VITIS_LOOP_41_1_VITIS_LOOP_42_2_VITIS_LOOP_43_3_conv2_kernel_0_2_H__
#define __DNN_DNN_Pipeline_VITIS_LOOP_41_1_VITIS_LOOP_42_2_VITIS_LOOP_43_3_conv2_kernel_0_2_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct DNN_DNN_Pipeline_VITIS_LOOP_41_1_VITIS_LOOP_42_2_VITIS_LOOP_43_3_conv2_kernel_0_2_ram : public sc_core::sc_module {

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


   SC_CTOR(DNN_DNN_Pipeline_VITIS_LOOP_41_1_VITIS_LOOP_42_2_VITIS_LOOP_43_3_conv2_kernel_0_2_ram) {
        ram[0] = "0b10111101000010100101010010000010";
        ram[1] = "0b10111110111011111001100100111101";
        ram[2] = "0b00111111001000001110010011011010";
        ram[3] = "0b00111110010100111100100011100010";
        ram[4] = "0b00111101010110010011010111111100";
        ram[5] = "0b00111101010000011001100011110010";
        ram[6] = "0b00111110111110001011111001110011";
        ram[7] = "0b00111110000100011001001010100111";
        ram[8] = "0b10111111010100111101000110111011";
        ram[9] = "0b00111110110010010011111100101001";
        ram[10] = "0b00111110001111011001011010100111";
        ram[11] = "0b00111110010010110011111110100111";
        ram[12] = "0b10111110100111010010111110100001";
        ram[13] = "0b10111110101000011000100101011001";
        ram[14] = "0b00111111001010111100100100100101";
        ram[15] = "0b10111110100111100111101101011111";


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


SC_MODULE(DNN_DNN_Pipeline_VITIS_LOOP_41_1_VITIS_LOOP_42_2_VITIS_LOOP_43_3_conv2_kernel_0_2) {


static const unsigned DataWidth = 32;
static const unsigned AddressRange = 16;
static const unsigned AddressWidth = 4;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


DNN_DNN_Pipeline_VITIS_LOOP_41_1_VITIS_LOOP_42_2_VITIS_LOOP_43_3_conv2_kernel_0_2_ram* meminst;


SC_CTOR(DNN_DNN_Pipeline_VITIS_LOOP_41_1_VITIS_LOOP_42_2_VITIS_LOOP_43_3_conv2_kernel_0_2) {
meminst = new DNN_DNN_Pipeline_VITIS_LOOP_41_1_VITIS_LOOP_42_2_VITIS_LOOP_43_3_conv2_kernel_0_2_ram("DNN_DNN_Pipeline_VITIS_LOOP_41_1_VITIS_LOOP_42_2_VITIS_LOOP_43_3_conv2_kernel_0_2_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~DNN_DNN_Pipeline_VITIS_LOOP_41_1_VITIS_LOOP_42_2_VITIS_LOOP_43_3_conv2_kernel_0_2() {
    delete meminst;
}


};//endmodule
#endif
