-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_12 is 
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


architecture rtl of DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_12 is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "10111110011011000110101011100011", 
    1 => "10111011110010010001110100111011", 
    2 => "10111110000101000000100110001100", 
    3 => "00111111000110100001001101011000", 
    4 => "10111110001011100001110111111001", 
    5 => "10111101011001111010010000100001", 
    6 => "10111110101011011001111110101111", 
    7 => "10111110110011010010111110100010", 
    8 => "10111101000111100100110111001101", 
    9 => "00111110011011111001010101011010", 
    10 => "10111110100010100000110011101010", 
    11 => "00111100101001011100011000010000", 
    12 => "00111110110110011110010101000100", 
    13 => "00111101100110000001010100101111", 
    14 => "10111010110010111010110101000001", 
    15 => "00111111000011001111001101110000" );


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

