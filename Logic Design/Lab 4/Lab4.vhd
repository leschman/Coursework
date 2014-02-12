entity lab4 is
	port(	mClock	: in 	bit; -- clock 
			SW1 		: in 	bit_vector(7 downto 0); --DIP Switch 1 input 
			SW2 		: in 	bit_vector(7 downto 0); --DIP Switch 2 input 
			LED_Red 	: out bit_vector(7 downto 0); --Red LEDs 
			LED_Blue : out bit_vector(7 downto 0); --Blue LEDs 
			LED17 	: out bit_vector(7 downto 0); --Seven Segment LEDs + Decimal 
			LED18 	: out bit_vector(7 downto 0); --Seven Segment LEDs + Decimal 
			LED19 	: out bit_vector(7 downto 0); --Seven Segment LEDs + Decimal 
			LED20 	: out bit_vector(7 downto 0)); --Seven Segment LEDs + Decimal 
end entity;  
architecture Lab_04_arch of Lab_04 is

 component sevenSegmentDecoder
 port(	SW1 		: in 	bit_vector(7 downto 0); --DIP Switch 1 input 
			SW2 		: in 	bit_vector(7 downto 0); --DIP Switch 2 input 
			LED_Red 	: out bit_vector(7 downto 0); --Red LEDs 
			LED_Blue : out bit_vector(7 downto 0); --Blue LEDs 
			LED17 	: out bit_vector(7 downto 0); --Seven Segment LEDs + Decimal 
			LED18 	: out bit_vector(7 downto 0); --Seven Segment LEDs + Decimal 
			LED19 	: out bit_vector(7 downto 0); --Seven Segment LEDs + Decimal 
			LED20 	: out bit_vector(7 downto 0)); --Seven Segment LEDs + Decimal 
			end component;
			
component dflipflop
 port(	clock, d : in bit;
			Q, Qn		: out bit);
			end component;
signal bit0, bit1, bit2, bit3 : bit;
begin

	dflipflop0 : dflipflop
		port map(clock => mClock,
					d => Qn);

end architecture;