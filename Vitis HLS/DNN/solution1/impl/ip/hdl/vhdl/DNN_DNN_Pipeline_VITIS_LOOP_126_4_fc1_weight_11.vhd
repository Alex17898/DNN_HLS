-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_11 is 
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


architecture rtl of DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_11 is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "10111101000111111001101110000000", 
    1 => "10111111000110011010100001001100", 
    2 => "00111111000010000110011010111010", 
    3 => "10111110110000000100110001111011", 
    4 => "00111111001010001111100110010110", 
    5 => "00111111001101010101111101110000", 
    6 => "10111110001010000000100010111001", 
    7 => "00111111001111001110100101010101", 
    8 => "00111110011111010010011001100110", 
    9 => "00111110011001001001100110101010", 
    10 => "00111111001110100001011010111111", 
    11 => "00111110100001111100001110111001", 
    12 => "10111110111110010101101110100101", 
    13 => "10111110101000100100010011101001", 
    14 => "00111101010010110011000010011101", 
    15 => "10111110111001011110010001011100" );


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

