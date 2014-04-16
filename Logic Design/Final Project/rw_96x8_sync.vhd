------------------------------------------------------------------------------------------------------------
-- File name   : rw_96x8_sync.vhd
--
-- Project     : 8-bit Microcomputer
--               
-- Description : VHDL model of a 96 x 8-bit R/W memory (Data Memory)
--
-- Author(s)   : Logan Esch
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
-- Date        : 16 April 2014
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
          data_out  : out std_logic_vector(7 downto 0));
end entity;


architecture rw_96x8_sync_arch of rw_96x8_sync is

 --Signal Declaration
 type RW_type is array (0 to 96) of std_logic_vector(3 downto 0);
 signal RW 	: RW_type;
 signal EN	: std_logic;
 
 begin
	ENABLE : process (address)
	begin
		if((to_integer(unsigned(address)) >= 128) and (to_integer(unsigned (address)) <= 223)) then
			EN <= '1';
		else
			EN <= '0';
		end if;
	end process;
 
 
 
	MEMORY : process(clock)
	begin
		if(clock'event and clock = '1') then
			if(EN = '1')
				--check if we are writing or reading
				if( write = '1') then 
					RW(to_integer(unsigned(address))) <= data in;
				else
					data_out <= RW(to_integer(unsigned(address)));
				end if;
			end if;
		end if;
	end process;		

end architecture;   
