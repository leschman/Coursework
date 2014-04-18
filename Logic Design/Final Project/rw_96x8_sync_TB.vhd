------------------------------------------------------------------------------------------------------------
-- File name   : rw_96x8_sync_TB.vhd
--
-- Project     : 8-bit Microcomputer
--               
-- Description : Testbench for VHDL model of a 96 x 8-bit R/W memory (Data Memory)
--
-- Author(s)   : Logan Esch
--
-- Note(s)     : Tests RAM,
-- 
--              Address      Description
--              ----------------------------------
--               (x80)         
--                 :         Random Access Memory 
--               (xDF)        (96x8-bit)          
--              ---------------------------------- 
--
-- Date        : April 17, 2014
--
------------------------------------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity rw_96x8_sync_TB is
end entity;

architecture rw_96x8_sync_TB_arch of rw_96x8_sync_TB is
-- Component Declarations
	component rw_96x8_sync is
	port (clock    : in  std_logic;
          data_in  : in  std_logic_vector(7 downto 0);    
          write    : in  std_logic;
          address  : in  std_logic_vector(7 downto 0);
          data_out  : out std_logic_vector(7 downto 0));
	end component;

-- Signal Declarations
	signal clock_TB 	: std_logic;
	signal data_in_TB	: std_logic_vector(7 downto 0);
	signal write_TB    	: std_logic := '1';	
	signal address_TB	: std_logic_vector(7 downto 0);
	signal data_out_TB	: std_logic_vector(7 downto 0);
	signal address_num	: integer range 0 to 255:= 0;

begin
--Component Instantiation
	DATA_MEMORY : rw_96x8_sync
	port map (	clock 		=> clock_TB,
				address 	=> address_TB,
				data_in		=> data_in_TB,
				data_out	=> data_out_TB,
				write		=> write_TB);
	
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