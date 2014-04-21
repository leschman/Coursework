------------------------------------------------------------------------------------------------------------
-- File name   : alu.vhd
--
-- Project     : 8-Bit Microcomputer
--               
-- Description : VHDL model of the ALU. 
--
-- Author(s)   : Logan Esch	
--
-- Date        : April 20, 2014
--
------------------------------------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity alu is
	port(	clock	: in	STD_LOGIC;
			alu_sel	: in	STD_LOGIC_VECTOR(2 downto 0);
			a_in	: in	STD_LOGIC_VECTOR(7 downto 0);
			b_in	: in	STD_LOGIC_VECTOR(7 downto 0);
			result	: out	STD_LOGIC_VECTOR(7 downto 0);
			ccResult: out	std_logic_vector(3 downto 0));
end entity;

architecture ALU_Arch of alu is
--Component Declaration
	component carry_lookahead_adder 
	port(	A, B 	: in	std_logic_vector(7 downto 0);
			AddOrSub: in	std_logic;
			Sum		: out	std_logic_vector(7 downto 0);
			Cout	: out	std_logic);
	end component;
	
--Signal Declaration
	signal adder_sum_out 	: std_logic_vector(7 downto 0) := x"00";
	signal adder_cOut		: std_logic := '0';
	signal add_or_sub		: std_logic := '0';
	
begin

--Component Instantiation
	adder : carry_lookahead_adder
	port map(	A 	=> 	a_in,
				B	=>	b_in,
				AddOrSub => add_or_sub,
				Sum => adder_sum_out,
				cOut=> adder_cOut);

	ALU : process(ALU_Sel, a_in, b_in)
	begin
		case alu_sel is
		--ADD
		when "000" =>
			--tell adder to add: '0'. 
			add_or_sub 	<= '0';
			result 		<= adder_sum_out;
			--check if negative + negative = positive overflow.
			if(a_in(7) = '1' and b_in(7) = '1' and adder_sum_out(7) = '0')then
				ccResult(2) <= '1';
			else
				ccResult(2) <= '1';
			end if;
			
			--Check if all 0's
			if((a_in or b_in) = x"00")then
				ccResult(1) <= '1';
			else
				ccResult(1) <= '0';
			end if;
			
			ccResult(3) <= adder_cOut;
		--SUB
		when "001" =>
			--tell adder to sub: '1'.
			add_or_sub 	<= '1';
			result 		<= adder_sum_out;
			
			--OVERFLOW
			--check if negative - positive = positive overflow.
			if(a_in(7) = '1' and b_in(7) = '0' and adder_sum_out(7) = '0')then
				ccResult(2) <= '1';
			--check if positive - negative = negative overflow.
			elsif(a_in(0) = '1' and b_in(7) = '1' and adder_sum_out(7) = '1')then
				ccResult(2) <= '1';			
			else
				ccResult(2) <= '1';
			end if;
			
			--Check if all 0's
			if((a_in or b_in) = x"00")then
				ccResult(1) <= '1';
			else
				ccResult(1) <= '0';
			end if;
			ccResult(3) <= adder_cOut;
		--AND
		when "010" =>
			result <= 	(a_in and b_in);
			ccResult(0) <= '0'; --negative not possible.
			ccResult(2) <= '0'; --overflow not possible.
			ccResult(3) <= '0'; --carry not possible.
			--Check if all 0's
			if((a_in or b_in) = x"00")then
				ccResult(1) <= '1';
			else
				ccResult(1) <= '0';
			end if;
		--OR
		when "011" =>
			result <= 	(a_in or b_in);
			ccResult(0) <= '0'; --negative not possible.
			ccResult(2) <= '0'; --overflow not possible.
			ccResult(3) <= '0'; --carry not possible.
			--Check if all 0's
			if((a_in or b_in) = x"00")then
				ccResult(1) <= '1';
			else
				ccResult(1) <= '0';
			end if;
			
		--INCREMENT
		--when "100" =>
		--DECREMENT
		--when "101" =>
		when others => 
			result <= x"00";
			ccResult <= x"0";
		end case;
	end process;
end architecture;
	
	
	
	