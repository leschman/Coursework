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

entity carry_lookahead_adder is
	port(	A, B 	: in	std_logic_vector(7 downto 0);
			AddOrSub: in	std_logic;
			Sum		: out	std_logic_vector(7 downto 0);
			Cout	: out	std_logic);
end entity;
architecture cla_arch of carry_lookahead_adder is
--Component Declarations
	component mod_full_adder
		port(	A, B, Cin, AddOrSub	: in	std_logic;
				Sum, p, g			: out	std_logic);
	end component;
	
--Signal Declarations
signal c, p, g : std_logic_vector(7 downto 0);

begin
	c(0) <= (0 xor AddOrSub);
	c(1) <= g(0) or (p(0) and c(0));
	c(2) <= g(1) or (p(1) and c(1));
	c(3) <= g(2) or (p(2) and c(2));
	c(4) <= g(3) or (p(3) and c(3));
	c(5) <= g(4) or (p(4) and c(4));
	c(6) <= g(5) or (p(5) and c(5));
	c(7) <= g(6) or (p(6) and c(6));
	cOut <= g(7) or (p(7) and c(7));
	
	A0 : mod_full_adder port map (A(0), B(0), C(0), AddOrSub, Sum(0), p(0), g(0));
	A1 : mod_full_adder port map (A(1), B(1), C(1), AddOrSub, Sum(1), p(1), g(1));
	A2 : mod_full_adder port map (A(2), B(2), C(2), AddOrSub, Sum(2), p(2), g(2));
	A3 : mod_full_adder port map (A(3), B(3), C(3), AddOrSub, Sum(3), p(3), g(3));
	A4 : mod_full_adder port map (A(4), B(4), C(4), AddOrSub, Sum(4), p(4), g(4));
	A5 : mod_full_adder port map (A(5), B(5), C(5), AddOrSub, Sum(5), p(5), g(5));
	A6 : mod_full_adder port map (A(6), B(6), C(6), AddOrSub, Sum(6), p(6), g(6));
	A7 : mod_full_adder port map (A(7), B(7), C(7), AddOrSub, Sum(7), p(7), g(7));
end architecture;