------------------------------------------------------------------------------------------------------------
-- File name   : mod_full_adder.vhd
--
-- Project     : 8-Bit Microcomputer
--               
-- Description : VHDL model of a full adder. 
--
-- Author(s)   : Logan Esch	
--
-- Date        : April 20, 2014
--
------------------------------------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

entity mod_full_adder is
	port(	A, B, Cin, addOrSub	: in	std_logic;
			Sum, p, g			: out	std_logic);
end entity;

architecture mod_full_adder_arch of mod_full_adder is

begin
	Sum <= (A xor (B xor addOrSub) xor Cin);
	p	<= (A or (B xor addOrSub));
	g	<= (A and (B xor addOrSub));
end architecture;