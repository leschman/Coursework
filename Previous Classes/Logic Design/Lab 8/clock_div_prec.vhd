library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.STD_LOGIC_ARITH.ALL;     
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity clock_div_prec is
	port(	cdp_clock		: in 	STD_Logic; -- clock
			cdp_reset		: in 	STD_Logic;
			cdp_SW1 		: in 	STD_Logic_vector(7 downto 0); --DIP Switch 1 input 
			cdp_SW2 		: in 	STD_Logic_vector(1 downto 0); --DIP Switch 2 input 
			cdp_clockOut 	: out	STD_Logic -- clock divided. 
			
end entity;  

architecture clock_div_prec_arch of clock_div_prec is
signal clock_count : INTEGER := 0;

begin
	clockUp : process(cdp_clock, cdp_reset)
	begin
		if(cdp_reset = '0') then
			clock_count = 0;
		elsif(cdp_clock'event and cdp_clock = '1') then
			clock_count = clock_count + 1;
		end if;
	end process clockUp;
	
	oneHz : process(clockUp)
	begin
		if(SW2 = "00" and clockUP = 25000000)then
			cdp_clockOut = not cdp_clockOut;
			clockUp = 0;
		end if;
	end process oneHz
end architecture clock_div_prec_arch;
		
		