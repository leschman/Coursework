------------------------------------------------------------------------------------------------------------
-- File name   : output_port_16x8.vhd
--
-- Project     : 8-bit Microcomputer
--               
-- Description : VHDL model of a 16 x 8-bit Output port.
--
-- Author(s)   : Logan Esch
--
-- Note(s)     : This memory is used for output.
-- 
--              Address      Description
--              ----------------------------------
--               (xE0)         
--                 :          
--               (xEF)        (16x8-bit)          
--              ---------------------------------- 
--
-- Date        : 16 April 2014
--
------------------------------------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

entity output_port_16x8 is
	port   (clock		: in	std_logic;
			reset		: in	std_logic;
			address		: in	std_logic_vector (7 downto 0);
			data_in		: in	std_logic_vector (7 downto 0);
			port_out_00	: out  	std_logic_vector (7 downto 0);
			port_out_01	: out  	std_logic_vector (7 downto 0);
			port_out_02 : out  	std_logic_vector (7 downto 0);
			port_out_03 : out  	std_logic_vector (7 downto 0);
			port_out_04 : out  	std_logic_vector (7 downto 0);
			port_out_05 : out  	std_logic_vector (7 downto 0);
			port_out_06 : out  	std_logic_vector (7 downto 0);
			port_out_07 : out  	std_logic_vector (7 downto 0);
			port_out_08 : out  	std_logic_vector (7 downto 0);
			port_out_09 : out  	std_logic_vector (7 downto 0);
			port_out_10 : out  	std_logic_vector (7 downto 0);
			port_out_11 : out  	std_logic_vector (7 downto 0);
			port_out_12 : out  	std_logic_vector (7 downto 0);
			port_out_13 : out  	std_logic_vector (7 downto 0);
			port_out_14 : out  	std_logic_vector (7 downto 0);
			port_out_15 : out	std_logic_vector (7 downto 0);
			write		: in 	std_logic);
end entity;
architecture output_port_16x8_arch of output_port_16x8 is

end architecture;
	