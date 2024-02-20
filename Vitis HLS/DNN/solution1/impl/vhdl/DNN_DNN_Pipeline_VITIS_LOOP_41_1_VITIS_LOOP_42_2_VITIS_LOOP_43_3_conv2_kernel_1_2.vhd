-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity DNN_DNN_Pipeline_VITIS_LOOP_41_1_VITIS_LOOP_42_2_VITIS_LOOP_43_3_conv2_kernel_1_2 is 
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


architecture rtl of DNN_DNN_Pipeline_VITIS_LOOP_41_1_VITIS_LOOP_42_2_VITIS_LOOP_43_3_conv2_kernel_1_2 is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "10111110110001000001000000110000", 
    1 => "00111110001010001011110001011010", 
    2 => "10111110000000100111110110001001", 
    3 => "00111101000111001110011111001101", 
    4 => "00111110100000010010011010100110", 
    5 => "00111110000100110110110100100010", 
    6 => "10111111001000010000101000010011", 
    7 => "10111111000010001010001110100101", 
    8 => "10111110001001011000100011100011", 
    9 => "00111110110000110001101010110001", 
    10 => "00111110110000100010000001111001", 
    11 => "10111101011010111111111011000001", 
    12 => "00111111001001011111111011001010", 
    13 => "00111110100001111000000001111000", 
    14 => "00111101010101011010100111101011", 
    15 => "10111101100101011011100110100110" );


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

