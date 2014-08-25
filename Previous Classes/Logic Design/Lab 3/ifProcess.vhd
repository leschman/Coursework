entity ifProcess is
	port(	switch: in bit_vector(3 downto 0); --switch input.
			LED:	out bit_vector(7 downto 0)); --LED output.
			
end entity;
architecture ifProcess_arch of ifProcess is
begin
ifProc : process(switch)
	begin
		if(switch = "0000") then
			LED <= "11111100";
			elsif(switch = "0001") then
			LED <= "01100000";
			elsif (switch = "0010") then
			LED <= "11011010";
			elsif (switch = "0011" ) then
			LED <= "11110010";
	elsif (switch = "0100" ) then
			LED <= "01100110";  
	elsif (switch = "0101" ) then
			LED <= "10110110";  
	elsif (switch = "0110") then
			LED <= "10111110";  
	elsif (switch = "0111" ) then
			LED <= "11100000";  	
	elsif (switch = "1000" ) then
			LED <= "11111110";  
	elsif (switch = "1001" ) then
			LED <= "11110110";  
	elsif (switch = "1010" ) then
			LED <= "11101110";  
	elsif (switch = "1011" ) then
			LED <= "00111110";  	
	elsif (switch = "1100" ) then
			LED <= "00011010";  
	elsif (switch = "1101" ) then
			LED <= "01111010"; 
	elsif (switch = "1110" ) then
			LED <= "10011110";  
	else 
			LED <= "10001110";
	end if;
end process ifProc;
end architecture ifProcess_arch;

 