-- ==============================================================
-- Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_13 is 
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


architecture rtl of DNN_DNN_Pipeline_VITIS_LOOP_126_4_fc1_weight_13 is 

signal address0_tmp : std_logic_vector(AddressWidth-1 downto 0); 
type mem_array is array (0 to AddressRange-1) of std_logic_vector (DataWidth-1 downto 0); 
signal mem : mem_array := (
    0 => "00111110000101110011110010001110", 
    1 => "10111111000001111111001110010011", 
    2 => "10111111001001010001000101001011", 
    3 => "10111110101110011111100101011001", 
    4 => "10111111010010010111101110101001", 
    5 => "10111110111001101000110000011000", 
    6 => "00111111000010111110001111000001", 
    7 => "00111111000010001111100000011001", 
    8 => "10111110000100100100101001000100", 
    9 => "10111110000001101011011101111100", 
    10 => "10111110000010011000011100110101", 
    11 => "00111100111100101011100111000000", 
    12 => "10111111110011001111000010000010", 
    13 => "00111101101100010100101101110010", 
    14 => "10111110010011000010010101011101", 
    15 => "10111111110000000011011001110100" );


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

