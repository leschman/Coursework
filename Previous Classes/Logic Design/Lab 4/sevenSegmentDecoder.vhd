entity SevenSegmentDecoder is
	port(	dSW1 	: in bit_vector(7 downto 0); --DIP Switch 1 input 
 		dSW2 	: in bit_vector(7 downto 0); --DIP Switch 2 input 
 		dLED_Red : out bit_vector(7 downto 0); --Red LEDs 
 		dLED_Blue : out bit_vector(7 downto 0); --Blue LEDs 
 		dLED17 	: out bit_vector(7 downto 0); --Seven Segment LEDs + Decimal 
 		dLED18 	: out bit_vector(7 downto 0); --Seven Segment LEDs + Decimal 
 		dLED19 	: out bit_vector(7 downto 0); --Seven Segment LEDs + Decimal 
 		dLED20 	: out bit_vector(7 downto 0)); --Seven Segment LEDs + Decimal 
end entity;  
architecture SevenSegmentDecoder_arch of SevenSegmentDecoder is

 component ifProcess
 port(	switch: in bit_vector(3 downto 0); --switch input.
			LED:	out bit_vector(7 downto 0)); --LED output.
			end component;
begin
dLED_Red <= dSW2;
dLED_Blue <= dSW1;

LED17Driver : ifProcess
	port map(switch => dSW2(7 downto 4),
				LED => dLED17);
LED18Driver : ifProcess
	port map(switch => dSW2(3 downto 0),
				LED => dLED18);
LED19Driver : ifProcess
	port map(switch => dSW1(7 downto 4),
				LED => dLED19);
LED20Driver : ifProcess
	port map(switch => dSW1(3 downto 0),
				LED => dLED20);
end architecture;