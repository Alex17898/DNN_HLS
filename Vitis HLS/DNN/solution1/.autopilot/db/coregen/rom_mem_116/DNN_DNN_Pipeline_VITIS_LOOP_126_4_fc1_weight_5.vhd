-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_5 is 
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


architecture rtl of DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_5 is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "00111110110100000101110010111101", 
    1 => "00111111000101000000010110110110", 
    2 => "10111111001010000001101110110011", 
    3 => "10111110001100111011010010101000", 
    4 => "00111110110000011101000111010101", 
    5 => "10111111011000110011111110001111", 
    6 => "10111100101000111111011001001010", 
    7 => "00111111010100001000100101101011", 
    8 => "10111110010101000000001010011110", 
    9 => "00111110100011100100010100101001", 
    10 => "00111100101011010010100111010010", 
    11 => "10111101010110010001100101001000", 
    12 => "10111101111110100011101110100110", 
    13 => "00111110100001000010100011101110", 
    14 => "10111110110110011000101101010101", 
    15 => "00111101111000101010000111100111" );


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

