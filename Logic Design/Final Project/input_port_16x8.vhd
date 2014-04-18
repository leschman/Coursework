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
use IEEE.numeric_std.all;

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
-- Signal Declarations
	signal 	EN : std_logic;
	
begin
	ENABLE : process (address)
	begin
		if((to_integer(unsigned(address)) >= 240) and (to_integer(unsigned (address)) <= 255)) then
			EN <= '1';
		else
			EN <= '0';
		end if;
	end process; 
 
	OUTPUT : process(clock, reset)
	begin
		--reset, 0 all ports.
		if(reset = '0')then
			data_out <= "00000000";

		elsif(clock'event and clock = '1') then
			if(EN = '1') then
				if( read = '1') then 
					case address is
					when x"F0" => data_out <= port_in_00;
					when x"F1" => data_out <= port_in_01;
					when x"F2" => data_out <= port_in_02;
					when x"F3" => data_out <= port_in_03;
					when x"F4" => data_out <= port_in_04;
					when x"F5" => data_out <= port_in_05;
					when x"F6" => data_out <= port_in_06;
					when x"F7" => data_out <= port_in_07;
					when x"F8" => data_out <= port_in_08;
					when x"F9" => data_out <= port_in_09;
					when x"FA" => data_out <= port_in_10;
					when x"FB" => data_out <= port_in_11;
					when x"FC" => data_out <= port_in_12;
					when x"FD" => data_out <= port_in_13;
					when x"FE" => data_out <= port_in_14;
					when x"FF" => data_out <= port_in_15;
					when others => data_out <= "00000000";
			    end case;
				end if;
			end if;
		end if;
	end process;
end architecture;
	