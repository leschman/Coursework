library IEEE;
use IEEE.std_logic_1164.all;

entity alu_TB is
end entity;
architecture alu_TB_arch of alu_tb is
	component alu
	port(	
			alu_sel	: in	STD_LOGIC_VECTOR(2 downto 0);
			a_in	: in	STD_LOGIC_VECTOR(7 downto 0);
			b_in	: in	STD_LOGIC_VECTOR(7 downto 0);
			result	: out	STD_LOGIC_VECTOR(7 downto 0));
	end component;
	
	signal alu_sel_TB	: std_logic_vector(2 downto 0);
	signal a_TB		: STD_LOGIC_VECTOR(7 downto 0);
	signal b_TB		: STD_LOGIC_VECTOR(7 downto 0);
	signal result_TB: STD_LOGIC_VECTOR(7 downto 0);
	
begin
	DUT : alu
	port map(	
				alu_sel => alu_sel_TB,
				a_in	=> a_TB,
				b_in	=> b_TB,
				result	=> result_TB);
	stim : process
	begin
	  
		alu_sel_TB <= "000";
		a_TB <= "00000000";
		b_TB <= "00000000";
		wait for 20ns;
		--1+1
		
		alu_sel_TB <= "000";
		a_TB <= "00000001";
		b_TB <= "00000001";
		wait for 20ns;
		--1+0
		
		alu_sel_TB <= "000";
		a_TB <= "00000001";
		b_TB <= "00000000";
		wait for 20ns;
		--30+1
		
		alu_sel_TB <= "000";
		a_TB <= "00011110";
		b_TB <= "00000001";
		wait for 20ns;
		--31+1
		
		alu_sel_TB <= "000";
		a_TB <= "00011111";
		b_TB <= "00000001";
		wait for 20ns;
		--positive overflow
		
		alu_sel_TB <= "000";
		a_TB <= "01111111";
		b_TB <= "00000001";
		wait for 20ns;
		--negative overflow
		
		alu_sel_TB <= "000";
		a_TB <= "11111111";
		b_TB <= "10000000";
		wait for 20ns;
		
		--1-1
		
		alu_sel_TB <= "001";
		a_TB <= "00000001";
		b_TB <= "00000001";
		wait for 20ns;
		--0-1
		
		alu_sel_TB <= "001";
		a_TB <= "00000000";
		b_TB <= "00000001";
		wait for 20ns;
		--1-0
		
		alu_sel_TB <= "001";
		a_TB <= "00000001";
		b_TB <= "00000000";
		wait for 20ns;
		--127-1 negative overflow (neg-pos = pos)
		
		alu_sel_TB <= "001";
		a_TB <= "11111111";
		b_TB <= "00000001";
		wait for 20ns;
		--1-127 negative overflow (pos - neg = neg)
		
		alu_sel_TB <= "001";
		a_TB <= "00000001";
		b_TB <= "11111111";
		wait for 20ns;
		
		--AND
		
		alu_sel_TB <= "010";
		a_TB <= "11111111";
		b_TB <= "00000000";
		wait for 20ns;
		
		--OR
		
		alu_sel_TB <= "011";
		a_TB <= "00000000";
		b_TB <= "00000000";
		wait for 20ns;
	end process;
end architecture;