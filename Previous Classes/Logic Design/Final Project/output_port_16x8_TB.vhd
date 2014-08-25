------------------------------------------------------------------------------------------------------------
-- File name   : output_port_16x8_TB.vhd
--
-- Project     : 8-bit Microcomputer
--               
-- Description : Testbench for VHDL model of a 16 x 8-bit Output port.
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
-- Date        : 17 April 2014
--
------------------------------------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity output_port_16x8_TB is
end entity;

architecture output_port_16x8_arch_TB of output_port_16x8_TB is
-- Component Declarations
	component output_port_16x8 is
	port	(clock		: in	std_logic;
			reset		: in	std_logic;
			address		: in	std_logic_vector (7 downto 0);
			port_out_00	: in   	std_logic_vector (7 downto 0);
			port_out_01  : in   	std_logic_vector (7 downto 0);
			port_out_02  : in   	std_logic_vector (7 downto 0);
			port_out_03  : in   	std_logic_vector (7 downto 0);
			port_out_04  : in   	std_logic_vector (7 downto 0);
			port_out_05  : in   	std_logic_vector (7 downto 0);
			port_out_06  : in   	std_logic_vector (7 downto 0);               
			port_out_07  : in   	std_logic_vector (7 downto 0);
			port_out_08  : in   	std_logic_vector (7 downto 0);
			port_out_09  : in   	std_logic_vector (7 downto 0);
			port_out_10  : in   	std_logic_vector (7 downto 0);
			port_out_11  : in   	std_logic_vector (7 downto 0);
			port_out_12  : in   	std_logic_vector (7 downto 0);
			port_out_13  : in   	std_logic_vector (7 downto 0);
			port_out_14  : in   	std_logic_vector (7 downto 0);
			port_out_15  : in   	std_logic_vector (7 downto 0);
			data_in	: out	std_logic_vector (7 downto 0);
			write		: in 	std_logic);	
	end component;

-- Signal Declarations
	signal    clock_TB	      :	std_logic;
	signal		  reset_TB	      :	std_logic;
	signal				address_TB 		  :	std_logic_vector (7 downto 0);
	signal				port_out_00_TB 	:	std_logic_vector (7 downto 0);
	signal				port_out_01_TB 	:	std_logic_vector (7 downto 0);
	signal				port_out_02_TB 	:	std_logic_vector (7 downto 0);
	signal				port_out_03_TB 	:	std_logic_vector (7 downto 0);
	signal				port_out_04_TB 	:	std_logic_vector (7 downto 0);
	signal				port_out_05_TB 	:	std_logic_vector (7 downto 0);
	signal				port_out_06_TB 	:	std_logic_vector (7 downto 0);               
	signal				port_out_07_TB 	:	std_logic_vector (7 downto 0);
	signal				port_out_08_TB 	:	std_logic_vector (7 downto 0);
	signal				port_out_09_TB 	:	std_logic_vector (7 downto 0);
	signal				port_out_10_TB 	:	std_logic_vector (7 downto 0);
	signal				port_out_11_TB 	:	std_logic_vector (7 downto 0);
	signal				port_out_12_TB 	:	std_logic_vector (7 downto 0);
	signal				port_out_13_TB 	:	std_logic_vector (7 downto 0);
	signal				port_out_14_TB 	:	std_logic_vector (7 downto 0);
	signal				port_out_15_TB 	:	std_logic_vector (7 downto 0);
	signal				data_in_TB  	  :	std_logic_vector (7 downto 0);
	signal				write_TB 		     :	std_logic;
	signal address_num	: integer range 0 to 255:= 0;

begin
--Component Instantiation
	OUTPUT_PORT : output_port_16x8
	port map (	clock 		=> clock_TB,
				reset		     => reset_TB,
				address		   => address_TB,
				data_in		   => data_in_TB,
				write		     => write_TB,
				port_out_00 => port_out_00_TB,
				port_out_01 => port_out_01_TB,
				port_out_02 => port_out_02_TB,
				port_out_03 => port_out_03_TB,
				port_out_04 => port_out_04_TB,
				port_out_05 => port_out_05_TB,
				port_out_06 => port_out_06_TB,
				port_out_07 => port_out_07_TB,
				port_out_08 => port_out_08_TB,
				port_out_09 => port_out_09_TB,
				port_out_10 => port_out_10_TB,
				port_out_11 => port_out_11_TB,
				port_out_12 => port_out_12_TB,
				port_out_13 => port_out_13_TB,
				port_out_14 => port_out_14_TB,
				port_out_15 => port_out_15_TB);
	
-- Processes
	STIM : process
	begin
		if(clock_TB = '0') then
			clock_TB <= '1'; wait for 10ns;
			address_TB <= std_logic_vector(to_unsigned(address_num, 8));
			data_in_TB <= std_logic_vector(to_unsigned(address_num, 8));
			if(address_num = 255) then
				write_TB <= not write_TB;
				address_num <= 0;
			else
			  address_num <= address_num + 1;
			end if;
		else
			clock_TB <= '0'; wait for 10ns;
		end if;
	end process STIM;



end architecture;