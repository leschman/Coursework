------------------------------------------------------------------------------------------------------------
-- File name   : rom_128x8_sync_TB.vhd
--
-- Project     : 8-bit Microcomputer
--               
-- Description : Testbench for VHDL model of a 128 x 8-bit ROM memory (Program Memory)
--
-- Author(s)   : Logan Esch
--
-- Note(s)     : Tests ROM,
-- 
--              Address      Description
--              ----------------------------------
--               (x00)         
--                 :         Read Only Memory 
--               (x7F)        (128x8-bit)              
--              ----------------------------------
--
-- Date        : April 17, 2014
--
------------------------------------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity rom_128x8_sync_TB is
end entity;

architecture rom_128x8_sync_arch_TB of rom_128x8_sync_TB is
-- Component Declarations
	component rom_128x8_sync is
	port	(clock   : in  std_logic;
            address  : in  std_logic_vector(7 downto 0);
            data_out : out std_logic_vector(7 downto 0));	
	end component;

-- Signal Declarations
	signal clock_TB 	: std_logic;
	signal address_TB	: std_logic_vector(7 downto 0);
	signal data_out_TB	: std_logic_vector(7 downto 0);
	signal address_num	: integer := 0;

begin
--Component Instantiation
	PROGRAM_MEMORY : rom_128x8_sync
	port map (	clock 		=> clock_TB,
				address		=> address_TB,
				data_out	=> data_out_TB);
	
-- Processes
	STIM : process
	begin
		if(clock_TB = '0') then
			clock_TB <= '1'; wait for 10ns;
			address_TB <= std_logic_vector(to_unsigned(address_num, 8));
			address_num <= address_num + 1;
			if(address_num > 255) then
				address_num <= 0;
			end if;
		else
			clock_TB <= '0'; wait for 10ns;
		end if;
	end process STIM;



end architecture;