entity bcd is
	port( 	bcd_clock 		: in 	STD_Logic;
			bcd_SW2			: in 	STD_Logic_Vector(1 downto 0);
			bcd_LED_Red 	: out 	STD_Logic_Vector(7 downto 0); --Red LEDs 
			bcd_LED_Blue 	: out 	STD_Logic_Vector(7 downto 0); --Blue LEDs 
			bcd_LED17 		: out 	STD_Logic_Vector(7 downto 0); --Seven Segment LEDs + Decimal 
			bcd_LED18 		: out 	STD_Logic_Vector(7 downto 0); --Seven Segment LEDs + Decimal 
			bcd_LED19 		: out 	STD_Logic_Vector(7 downto 0); --Seven Segment LEDs + Decimal 
			bcd_LED20 		: out 	STD_Logic_Vector(7 downto 0));
end entity;
architecture bcd_arch of bcd is
	signal old_led4 = STD_Logic_Vector(7 downto 0);
begin
	led4 : process(clock) is
	begin
		case(old_led4)is
		when "11111100" => bcd_LED20 <= "01100000"; --0 -> 1
		when "01100000" => bcd_LED20 <= "11011010"; --1 -> 2
		when "11011010" => bcd_LED20 <= "11110010"; --2 -> 3
		when "11110010" => bcd_LED20 <= "01100110"; --3 -> 4
		when "01100110" => bcd_LED20 <= "10110110"; --4 -> 5
		when "10110110" => bcd_LED20 <= "10111110"; --5 -> 6
		when "10111110" => bcd_LED20 <= "11100000"; --6 -> 7
		when "11100000" => bcd_LED20 <= "11111110"; --7 -> 8
		when "11111110" => bcd_LED20 <= "11100110"; --8 -> 9
		when "11100110" => bcd_LED20 <= "11111100"; --9 -> 0
	end process led4;
		