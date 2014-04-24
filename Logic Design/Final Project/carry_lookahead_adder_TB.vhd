------------------------------------------------------------------------------------------------------------
-- File name   : carry_lookahead_adder.vhd
--
-- Project     : 8-Bit Microcomputer
--               
-- Description : VHDL model of a carry lookahead adder. 
--
-- Author(s)   : Logan Esch	
--
-- Date        : April 20, 2014
--
------------------------------------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

entity carry_lookahead_adder_TB is
end entity;
architecture carry_lookahead_adder_TB_arch of carry_lookahead_adder_TB is
	component carry_lookahead_adder
	port(	A, B 	: in	std_logic_vector(7 downto 0);
			AddOrSub: in	std_logic;
			Sum		: out	std_logic_vector(7 downto 0);
			Cout	: out	std_logic);
	end component;
	
	signal 	A_TB, B_TB, Sum_TB : std_logic_vector(7 downto 0);
	signal 	addOrSub_TB, cOut_TB : std_logic;
			
begin
	
	DUT : carry_lookahead_adder
	port map(	A 			=> A_TB,
				B 			=> B_TB,
				AddOrSub 	=> addOrSub_TB,
				sum			=> sum_TB,
				Cout		=> cOut_TB);
	
	stim : process () 
	begin
		A_TB 		<= "00000000";
		B_TB 		<= "00000000";
		AddOrSub_TB 	<= '0';
		wait for 20ns;
		
		A_TB 		<= "00000001";
		B_TB 		<= "00000000";
		AddOrSub_TB 	<= '0';
		wait for 20ns;
		
		A_TB 		<= "00000001";
		B_TB 		<= "00000001";
		AddOrSub_TB 	<= '0';
		wait for 20ns;
		
		A_TB 		<= "01111110";
		B_TB 		<= "00000001";
		AddOrSub_TB 	<= '0';
		wait for 20ns;
		
		A_TB 		<= "01111111";
		B_TB 		<= "00000001";
		AddOrSub_TB 	<= '0';
		wait for 20ns;
		
		A_TB 		<= "11111111";
		B_TB 		<= "00000001";
		AddOrSub_TB 	<= '0';
		wait for 20ns;

		A_TB 		<= "00000000";
		B_TB 		<= "00000000";
		AddOrSub_TB 	<= '1';
		wait for 20ns;
		
		A_TB 		<= "00000001";
		B_TB 		<= "00000000";
		AddOrSub_TB 	<= '1';
		wait for 20ns;
		
		A_TB 		<= "00000001";
		B_TB 		<= "00000001";
		AddOrSub_TB 	<= '1';
		wait for 20ns;
		
		A_TB 		<= "01111110";
		B_TB 		<= "00000001";
		AddOrSub_TB 	<= '1';
		wait for 20ns;
		
		A_TB 		<= "01111111";
		B_TB 		<= "00000001";
		AddOrSub_TB 	<= '1';
		wait for 20ns;
		
		A_TB 		<= "11111111";
		B_TB 		<= "00000001";
		AddOrSub_TB 	<= '1';
		wait for 20ns;
		
		A_TB 		<= "00000000";
		B_TB 		<= "00000001";
		AddOrSub_TB 	<= '1';
		wait for 20ns;
	end process;
end architecture;