-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity DNN_DNN_Pipeline_VITIS_LOOP_41_1_VITIS_LOOP_42_2_VITIS_LOOP_43_3_conv2_kernel_0_0 is 
    generic(
             DataWidth     : integer := 32; 
             AddressWidth     : integer := 4; 
             AddressRange    : integer := 16
    ); 
    port (
          address0      : in std_logic_vector(AddressWidth-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DataWidth-1 downto 0);
          reset     : in std_logic;
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of DNN_DNN_Pipeline_VITIS_LOOP_41_1_VITIS_LOOP_42_2_VITIS_LOOP_43_3_conv2_kernel_0_0 is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "00111110111011011010011000011110", 
    1 => "10111110010011010010100100010011", 
    2 => "00111111010001001101111000111100", 
    3 => "00111110110011011001100101100111", 
    4 => "00111111001110011100011100000100", 
    5 => "00111110011001001111101001001000", 
    6 => "00111110110011000001010101001101", 
    7 => "00111110010011101101000000101101", 
    8 => "00111111010111000001010010110110", 
    9 => "10111110111011010000011000110110", 
    10 => "10111110001111110000101111110010", 
    11 => "10111111100110110001110011101011", 
    12 => "00111110100100110001101001101101", 
    13 => "10111110110011011000111111010110", 
    14 => "00111101001000010010010100010100", 
    15 => "10111110100010011010101000011101" );


begin 


memory_access_guard_0: process (address0) 
begin
      address0_tmp <= address0;
--synthesis translate_off
      if (CONV_INTEGER(address0) > AddressRange-1) then
           address0_tmp <= (others => '0');
      else 
           address0_tmp <= address0;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            q0 <= mem(CONV_INTEGER(address0_tmp)); 
        end if;
    end if;
end process;

end rtl;

