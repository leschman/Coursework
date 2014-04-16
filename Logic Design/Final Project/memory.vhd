------------------------------------------------------------------------------------------------------------
-- File name   : memory.vhd
--
-- Project     : 8-Bit Microcomputer
--               
-- Description : VHDL model of a 256x8 Memory System with ROM, RAM, and IO
--
-- Author(s)   : 
--
-- Note(s)     : Address      Description
--              ----------------------------------
--              x"00"       Instruction Memory (ROM)    
--               :            (128x8-bit) 
--               : 
--              x"7F"                          
--              ----------------------------------
--              x"80"       Data Memory (RAM)
--               :            (96x8-bit)
--              x"DF"           
--              ----------------------------------               
--              x"E0"        Output Ports 
--               :            (16 ports)
--              x"EF"           
--              ----------------------------------               
--              x"F0"        Input Ports 
--               :            (16 ports)
--              x"FF"           
--              ----------------------------------
--
-- Date        : 
--
------------------------------------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity memory is
      port ( clock          : in   std_logic;
             reset          : in   std_logic;
             address        : in   std_logic_vector (7 downto 0);
             write          : in   std_logic;
             data_in        : in   std_logic_vector (7 downto 0);
             data_out       : out  std_logic_vector (7 downto 0);
             port_in_00     : in   std_logic_vector (7 downto 0);
             port_in_01     : in   std_logic_vector (7 downto 0);
             port_in_02     : in   std_logic_vector (7 downto 0);
             port_in_03     : in   std_logic_vector (7 downto 0);
             port_in_04     : in   std_logic_vector (7 downto 0);
             port_in_05     : in   std_logic_vector (7 downto 0);
             port_in_06     : in   std_logic_vector (7 downto 0);               
             port_in_07     : in   std_logic_vector (7 downto 0);
             port_in_08     : in   std_logic_vector (7 downto 0);
             port_in_09     : in   std_logic_vector (7 downto 0);
             port_in_10     : in   std_logic_vector (7 downto 0);
             port_in_11     : in   std_logic_vector (7 downto 0);
             port_in_12     : in   std_logic_vector (7 downto 0);
             port_in_13     : in   std_logic_vector (7 downto 0);
             port_in_14     : in   std_logic_vector (7 downto 0);
             port_in_15     : in   std_logic_vector (7 downto 0);                                                                   
             port_out_00    : out  std_logic_vector (7 downto 0);
             port_out_01    : out  std_logic_vector (7 downto 0);
             port_out_02    : out  std_logic_vector (7 downto 0);
             port_out_03    : out  std_logic_vector (7 downto 0);
             port_out_04    : out  std_logic_vector (7 downto 0);
             port_out_05    : out  std_logic_vector (7 downto 0);
             port_out_06    : out  std_logic_vector (7 downto 0);
             port_out_07    : out  std_logic_vector (7 downto 0);
             port_out_08    : out  std_logic_vector (7 downto 0);
             port_out_09    : out  std_logic_vector (7 downto 0);
             port_out_10    : out  std_logic_vector (7 downto 0);
             port_out_11    : out  std_logic_vector (7 downto 0);
             port_out_12    : out  std_logic_vector (7 downto 0);
             port_out_13    : out  std_logic_vector (7 downto 0);
             port_out_14    : out  std_logic_vector (7 downto 0);
             port_out_15    : out  std_logic_vector (7 downto 0));
end entity;

architecture memory_arch of memory is

 -- add functionality here...

end architecture;
