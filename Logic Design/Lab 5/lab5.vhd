entity lab5 is
	port(	mClock		: in 	bit; -- clock
			reset			: in 	bit;
			LED_Red 	: out bit_vector(7 downto 0); --Red LEDs 
			LED_Blue : out bit_vector(7 downto 0); --Blue LEDs 
			LED17 	: out bit_vector(7 downto 0); --Seven Segment LEDs + Decimal 
			LED18 	: out bit_vector(7 downto 0); --Seven Segment LEDs + Decimal 
			LED19 	: out bit_vector(7 downto 0); --Seven Segment LEDs + Decimal 
			LED20 	: out bit_vector(7 downto 0)); --Seven Segment LEDs + Decimal 
end entity;
architecture lab5_arch of lab5 is

begin

end architecture lab5_arch;  