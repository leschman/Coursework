------------------------------------------------------------------------------------------------------------
-- File name   : rw_96x8_sync.vhd
--
-- Project     : 8-bit Microcomputer
--               
-- Description : VHDL model of a 96 x 8-bit R/W memory (Data Memory)
--
-- Author(s)   : 
--
-- Note(s)     : This RAM memory contains is used for program data.
-- 
--              Address      Description
--              ----------------------------------
--               (x80)         
--                 :         Random Access Memory 
--               (xDF)        (96x8-bit)          
--              ----------------------------------    
--
-- Date        : 
--
------------------------------------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity rw_96x8_sync is
    port (clock    : in  std_logic;
          data_in  : in  std_logic_vector(7 downto 0);    
          write    : in  std_logic;
          address  : in  std_logic_vector(7 downto 0);
          data_out : out std_logic_vector(7 downto 0));
end entity;


architecture rw_96x8_sync_arch of rw_96x8_sync is

 -- add functionality here...

end architecture;   
