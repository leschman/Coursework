------------------------------------------------------------------------------------------------------------
-- File name   : memory.vhd
--
-- Project     : 8-Bit Microcomputer
--               
-- Description : VHDL model of a 256x8 Memory System with ROM, RAM, and IO
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
-- Date        : 16 April 2014
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

-- Component Declarations

	component rom_128x8_sync 
	port	(clock    : in  std_logic;
			address  : in  std_logic_vector(7 downto 0);
			data_out : out std_logic_vector(7 downto 0));
	end component;
	
	component rw_96x8_sync
	port 	(clock    : in  std_logic;
			data_in  : in  std_logic_vector(7 downto 0);    
			write    : in  std_logic;
			address  : in  std_logic_vector(7 downto 0);
			data_out : out std_logic_vector(7 downto 0));
	end component;
	
	component output_port_16x8
	port	(clock		: in	std_logic;
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
	end component;
	
	component input_port_16x8
	port	(clock		: in	std_logic;
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
	end component;

-- Signal Declaration
	signal program_memory_out 	: std_logic_vector(7 downto 0);
	signal data_memory_out 		: std_logic_vector(7 downto 0);
	signal input_port_out 		: std_logic_vector(7 downto 0);
begin	

-- Component Instantiation
	PROGRAM_MEMORY : rom_128x8_sync
	port map (	clock 		=> clock,
				address		=> address,
				data_out	=> program_memory_out);
	
	DATA_MEMORY : rw_96x8_sync
	port map (	clock 		=> clock,
				address 	=> address,
				data_in		=> data_in,
				data_out	=> data_memory_out,
				write		=> write);
				
	OUTPUT_PORT : output_port_16x8
	port map (	clock 		=> clock,
				reset		=> reset,
				address		=> address,
				data_in		=> data_in,
				write		=> write,
				port_out_00 => port_out_00,
				port_out_01 => port_out_01,
				port_out_02 => port_out_02,
				port_out_03 => port_out_03,
				port_out_04 => port_out_04,
				port_out_05 => port_out_05,
				port_out_06 => port_out_06,
				port_out_07 => port_out_07,
				port_out_08 => port_out_08,
				port_out_09 => port_out_09,
				port_out_10 => port_out_10,
				port_out_11 => port_out_11,
				port_out_12 => port_out_12,
				port_out_13 => port_out_13,
				port_out_14 => port_out_14,
				port_out_15 => port_out_15);
	
	INPUT_PORT 	: input_port_16x8
	port map (	clock		=> clock,
				reset		=> reset,
				address		=> address,
				port_in_00  => port_in_00,
				port_in_01  => port_in_01,
				port_in_02  => port_in_02,
				port_in_03  => port_in_03,
				port_in_04  => port_in_04,
				port_in_05  => port_in_05,
				port_in_06  => port_in_06,
				port_in_07  => port_in_07,
				port_in_08  => port_in_08,
				port_in_09  => port_in_09,
				port_in_10  => port_in_10,
				port_in_11  => port_in_11,
				port_in_12  => port_in_12,
				port_in_13  => port_in_13,
				port_in_14  => port_in_14,
				port_in_15  => port_in_15,
				data_out	=> input_port_out,
				read		=> write);

-- Data Out Multiplexor
	data_out_mux : process (clock)
	begin
		if(clock'event and clock='1')then
			--check if address is in program memory (0-127)
			if ((to_integer(unsigned(address)) >= 0 and (to_integer(unsigned(address)) <= 127)) then
				data_out <= program_memory_out;
			--check if address is in data memory (128-223)
			elsif ((to_integer(unsigned(address)) >= 128 and (to_integer(unsigned(address)) <= 223)) then
				data_out <= data_memory_out;
			--check if address is input port (240-255)
			elsif ((to_integer(unsigned(address)) >= 240 and (to_integer(unsigned(address)) <= 255)) then
				data_out <= input_port_out;
			end if;
		end if;
	end process;
				
end architecture;
