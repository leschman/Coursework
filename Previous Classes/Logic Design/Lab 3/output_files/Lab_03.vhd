entity caseProcess is
	port(	switch: in bit_vector(3 downto 0); --switch input.
			LED:	out bit_vector(7 downto 0)); --LED output.
			
end entity;
architecture caseProcess_arch of caseProcess is
begin
caseProc : process(switch)
	begin
	case switch is
	when "0000" =>	LED <= "11111100";
	when "0001" => LED <= "01100000";
	when "0010" => LED <= "11011010";
	when "0011" => LED <= "11110010";
	when "0100" => LED <= "01100110";  
	when "0101" => LED <= "10110110";  
	when "0110" =>	LED <= "10111110";  
	when "0111" => LED <= "11100000";  	
	when "1000" =>	LED <= "11111110";  
	when "1001" =>	LED <= "11110110";  
	when "1010" =>	LED <= "11101110";  
	when "1011" =>	LED <= "00111110";  	
	when "1100" =>	LED <= "00011010";  
	when "1101" =>	LED <= "01111010"; 
	when "1110" =>	LED <= "10011110";  
	when others =>	LED <= "10001110";
	end case;
end process caseProc;
end architecture caseProcess_arch;

 