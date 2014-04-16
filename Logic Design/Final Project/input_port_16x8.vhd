------------------------------------------------------------------------------------------------------------
-- File name   : input_port_16x8.vhd
--
-- Project     : 8-bit Microcomputer
--               
-- Description : VHDL model of a 16 x 8-bit input port.
--
-- Author(s)   : Logan Esch
--
-- Note(s)     : This memory is used for input.
-- 
--              Address      Description
--              ----------------------------------
--               (xF0)         
--                 :          
--               (xFF)        (16x8-bit)          
--              ---------------------------------- 
--
-- Date        : 16 April 2014
--
------------------------------------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

entity input_port_16x8 is
	port   (clock		: in	std_logic;
			reset		: in	std_logic;
			address		: in	std_logic_vector (7 downto 0);
			port_in_00	: in   	std_logic_vector (7 downto 0);
			port_in_01  : in   	std_logic_vector (7 downto 0);
			port_in_02  : in   	std_logic_vector (7 downto 0);
			port_in_03  : in   	std_logic_vector (7 downto 0);
			port_in_04  : in   	std_logic_vector (7 downto 0);
			port_in_05  : in   	std_logic_vector (7 downto 0);
			port_in_06  : in   	std_logic_vector (7 downto 0);               
			port_in_07  : in   	std_logic_vector (7 downto 0);
			port_in_08  : in   	std_logic_vector (7 downto 0);
			port_in_09  : in   	std_logic_vector (7 downto 0);
			port_in_10  : in   	std_logic_vector (7 downto 0);
			port_in_11  : in   	std_logic_vector (7 downto 0);
			port_in_12  : in   	std_logic_vector (7 downto 0);
			port_in_13  : in   	std_logic_vector (7 downto 0);
			port_in_14  : in   	std_logic_vector (7 downto 0);
			port_in_15  : in   	std_logic_vector (7 downto 0);
			data_out	: out	std_logic_vector (7 downto 0);
			read		: in 	std_logic);
end entity;
architecture input_port_16x8_arch of input_port_16x8 is

end architecture;
	