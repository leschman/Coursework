------------------------------------------------------------------------------------------------------------
-- File name   : control_unit.vhd
--
-- Project     : 8-Bit Microcomputer
--               
-- Description : VHDL model of the CPU processing unit including
--
-- Author(s)   : 
--
-- Date        : 
--
------------------------------------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity processing_unit is
      port ( clock       : in  STD_LOGIC;
             reset       : in  STD_LOGIC;
             from_memory : in  STD_LOGIC_VECTOR (7 downto 0);             
             to_memory   : out STD_LOGIC_VECTOR (7 downto 0);
             address     : out STD_LOGIC_VECTOR (7 downto 0);
             IR_Load     : in  STD_LOGIC;
             IR          : out STD_LOGIC_VECTOR (7 downto 0);
             MAR_Load    : in  STD_LOGIC;             
             PC_Load     : in  STD_LOGIC;
             PC_Inc      : in  STD_LOGIC;             
             A_Load      : in  STD_LOGIC;
             B_Load      : in  STD_LOGIC;             
             ALU_Sel     : in  STD_LOGIC_VECTOR (2 downto 0);             
             CCR_Result  : out STD_LOGIC_VECTOR (3 downto 0);
             CCR_Load    : in  STD_LOGIC;             
             Bus1_Sel    : in  STD_LOGIC_VECTOR (1 downto 0);                          
             Bus2_Sel    : in  STD_LOGIC_VECTOR (1 downto 0));                            
end entity;

architecture processing_unit_arch of processing_unit is
begin
 -- add functionality here...

end architecture;
