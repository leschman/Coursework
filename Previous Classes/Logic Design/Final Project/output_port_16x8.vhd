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
use IEEE.numeric_std.all;

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
-- Signal Declarations
	signal 	EN : std_logic;
	
begin
	ENABLE : process (address)
	begin
		if((to_integer(unsigned(address)) >= 224) and (to_integer(unsigned (address)) <= 239)) then
			EN <= '1';
		else
			EN <= '0';
		end if;
	end process; 
 
	OUTPUT : process(clock, reset)
	begin
		--reset, 0 all ports.
		if(reset = '0')then
			port_out_00 <= "00000000";
			port_out_01 <= "00000000";
			port_out_02 <= "00000000";
			port_out_03 <= "00000000";
			port_out_04 <= "00000000";
			port_out_05 <= "00000000";
			port_out_06 <= "00000000";
			port_out_07 <= "00000000";
			port_out_08 <= "00000000";
			port_out_09 <= "00000000";
			port_out_10 <= "00000000";
			port_out_11 <= "00000000";
			port_out_12 <= "00000000";
			port_out_13 <= "00000000";
			port_out_14 <= "00000000";
			port_out_15 <= "00000000";
		elsif(clock'event and clock = '1') then
			if(EN = '1') then
				if( write = '1') then 
					case address is
					when x"E0" => port_out_00 <= data_in;
					when x"E1" => port_out_01 <= data_in;
					when x"E2" => port_out_02 <= data_in;
					when x"E3" => port_out_03 <= data_in;
					when x"E4" => port_out_04 <= data_in;
					when x"E5" => port_out_05 <= data_in;
					when x"E6" => port_out_06 <= data_in;
					when x"E7" => port_out_07 <= data_in;
					when x"E8" => port_out_08 <= data_in;
					when x"E9" => port_out_09 <= data_in;
					when x"EA" => port_out_10 <= data_in;
					when x"EB" => port_out_11 <= data_in;
					when x"EC" => port_out_12 <= data_in;
					when x"ED" => port_out_13 <= data_in;
					when x"EE" => port_out_14 <= data_in;
					when x"EF" => port_out_15 <= data_in;
					when others => port_out_15 <= "00000000";
					end case;
				end if;
			end if;
		end if;
	end process;
end architecture;
	