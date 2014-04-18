------------------------------------------------------------------------------------------------------------
-- File name   : control_unit.vhd
--
-- Project     : 8-Bit Microcomputer
--               
-- Description : VHDL model of the CPU control finite state machine
--
-- Author(s)   : 
--
-- Date        : 
--
------------------------------------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

entity control_unit is
      port ( clock     : in  STD_LOGIC;
             reset     : in  STD_LOGIC;
             write     : out STD_LOGIC;
             IR_Load   : out STD_LOGIC;
             IR        : in  STD_LOGIC_VECTOR (7 downto 0);
             MAR_Load  : out STD_LOGIC;             
             PC_Load   : out STD_LOGIC;
             PC_Inc    : out STD_LOGIC;             
             A_Load    : out STD_LOGIC;
             B_Load    : out STD_LOGIC;             
             ALU_Sel   : out STD_LOGIC_VECTOR (2 downto 0);             
             CCR_Result: in  STD_LOGIC_VECTOR (3 downto 0);
             CCR_Load  : out STD_LOGIC;             
             Bus1_Sel  : out STD_LOGIC_VECTOR (1 downto 0);                          
             Bus2_Sel  : out STD_LOGIC_VECTOR (1 downto 0));    
end entity;

architecture control_unit_arch of control_unit is
  
begin
  
 -- add functionality here...

end architecture;
