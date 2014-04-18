------------------------------------------------------------------------------------------------------------
-- File name   : memory_TB.vhd
--
-- Project     : 8-Bit Microcomputer
--               
-- Description : TESTBENCH for VHDL model of a 256x8 Memory System with ROM, RAM, and IO
--
-- Author(s)   : Logan Esch
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
-- Date        : 18 April 2014
--
------------------------------------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity memory_TB is
end entity;

architecture memory_TB_Arch of memory_TB is
--Component Declarations
	component memory
	port      (clock          : in   std_logic;
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
	end component;

--Signal Declarations
	signal 		clock_TB         : std_logic;
	signal		reset_TB          : std_logic := '0';
	signal		address_TB        : std_logic_vector (7 downto 0);
	signal		write_TB          : std_logic := '1';
	signal		data_in_TB        : std_logic_vector (7 downto 0);
	signal		data_out_TB       : std_logic_vector (7 downto 0);
	signal		port_in_00_TB     : std_logic_vector (7 downto 0);
	signal		port_in_01_TB     : std_logic_vector (7 downto 0);
	signal		port_in_02_TB     : std_logic_vector (7 downto 0);
	signal		port_in_03_TB     : std_logic_vector (7 downto 0);
	signal		port_in_04_TB     : std_logic_vector (7 downto 0);
	signal		port_in_05_TB     : std_logic_vector (7 downto 0);
	signal		port_in_06_TB     : std_logic_vector (7 downto 0);               
	signal		port_in_07_TB     : std_logic_vector (7 downto 0);
	signal		port_in_08_TB     : std_logic_vector (7 downto 0);
	signal		port_in_09_TB     : std_logic_vector (7 downto 0);
	signal		port_in_10_TB     : std_logic_vector (7 downto 0);
	signal		port_in_11_TB     : std_logic_vector (7 downto 0);
	signal		port_in_12_TB     : std_logic_vector (7 downto 0);
	signal		port_in_13_TB     : std_logic_vector (7 downto 0);
	signal		port_in_14_TB     : std_logic_vector (7 downto 0);
	signal		port_in_15_TB     : std_logic_vector (7 downto 0);                                                                   
	signal		port_out_00_TB    : std_logic_vector (7 downto 0);
	signal		port_out_01_TB    : std_logic_vector (7 downto 0);
	signal		port_out_02_TB    : std_logic_vector (7 downto 0);
	signal		port_out_03_TB    : std_logic_vector (7 downto 0);
	signal		port_out_04_TB    : std_logic_vector (7 downto 0);
	signal		port_out_05_TB    : std_logic_vector (7 downto 0);
	signal		port_out_06_TB    : std_logic_vector (7 downto 0);
	signal		port_out_07_TB    : std_logic_vector (7 downto 0);
	signal		port_out_08_TB    : std_logic_vector (7 downto 0);
	signal		port_out_09_TB    : std_logic_vector (7 downto 0);
	signal		port_out_10_TB    : std_logic_vector (7 downto 0);
	signal		port_out_11_TB    : std_logic_vector (7 downto 0);
	signal		port_out_12_TB    : std_logic_vector (7 downto 0);
	signal		port_out_13_TB    : std_logic_vector (7 downto 0);
	signal		port_out_14_TB    : std_logic_vector (7 downto 0);
	signal		port_out_15_TB    : std_logic_vector (7 downto 0);
	signal address_num	: integer range 0 to 255:= 0;
begin

--Component Instantiation
	MEMORY_1 : memory
	port map ( 	clock       => clock_TB,
				reset       => reset_TB,        
				address     => address_TB,  -- this requires an internal signal
				write       => write_TB,
				data_in     => data_in_TB,  -- this requires an internal signal
				data_out    => data_out_TB, -- this requires an internal signal
				
				port_in_00  => port_in_00_TB,
				port_in_01  => port_in_01_TB,
				port_in_02  => port_in_02_TB,
				port_in_03  => port_in_03_TB,
				port_in_04  => port_in_04_TB,
				port_in_05  => port_in_05_TB,
				port_in_06  => port_in_06_TB,
				port_in_07  => port_in_07_TB,
				port_in_08  => port_in_08_TB,
				port_in_09  => port_in_09_TB,
				port_in_10  => port_in_10_TB,
				port_in_11  => port_in_11_TB,
				port_in_12  => port_in_12_TB,
				port_in_13  => port_in_13_TB,
				port_in_14  => port_in_14_TB,
				port_in_15  => port_in_15_TB,
				
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
	  --reset first
	  if(reset_TB = '0')then
	   wait for 10ns;
	   reset_TB <= '1';
	   wait for 10ns;
	  end if;
	  
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
	
--Signal Constants
	port_in_00_TB <= x"F0";
	port_in_01_TB <= x"F1";
	port_in_02_TB <= x"F2";
	port_in_03_TB <= x"F3";
	port_in_04_TB <= x"F4";
	port_in_05_TB <= x"F5";
	port_in_06_TB <= x"F6";              
	port_in_07_TB <= x"F7";
	port_in_08_TB <= x"F8";
	port_in_09_TB <= x"F9";
	port_in_10_TB <= x"FA";
	port_in_11_TB <= x"FB";
	port_in_12_TB <= x"FC";
	port_in_13_TB <= x"FD";
	port_in_14_TB <= x"FE";
	port_in_15_TB <= x"FF";
	

end architecture;