-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_2 is 
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


architecture rtl of DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_2 is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "10111110110000010111000001000111", 
    1 => "00111110101001010110101001011110", 
    2 => "00111111010001100011010100000101", 
    3 => "00111111001001000100001111101010", 
    4 => "00111111001101110000010000010110", 
    5 => "10111101100111010111001101001010", 
    6 => "10111110100000100000011101010111", 
    7 => "10111110100011100110011100101111", 
    8 => "00111110110101111011110101100101", 
    9 => "00111100011011100011011011100000", 
    10 => "00111111010001000001000111101110", 
    11 => "00111101010001101010011011111000", 
    12 => "00111110101001111011001010001111", 
    13 => "00111101000011010101011011110001", 
    14 => "00111110001000100010001100010101", 
    15 => "10111110001011010111010011011110" );


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

