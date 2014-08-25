entity Lab_03 is
	port(	SW1 	: in bit_vector(7 downto 0); --DIP Switch 1 input 
 		SW2 	: in bit_vector(7 downto 0); --DIP Switch 2 input 
 		LED_Red : out bit_vector(7 downto 0); --Red LEDs 
 		LED_Blue : out bit_vector(7 downto 0); --Blue LEDs 
 		LED17 	: out bit_vector(7 downto 0); --Seven Segment LEDs + Decimal 
 		LED18 	: out bit_vector(7 downto 0); --Seven Segment LEDs + Decimal 
 		LED19 	: out bit_vector(7 downto 0); --Seven Segment LEDs + Decimal 
 		LED20 	: out bit_vector(7 downto 0)); --Seven Segment LEDs + Decimal 
end entity;  
architecture Lab_03_arch of Lab_03 is

 component ifProcess
 port(	switch: in bit_vector(3 downto 0); --switch input.
			LED:	out bit_vector(7 downto 0)); --LED output.
			end component;
component caseProcess
 port(	switch: in bit_vector(3 downto 0); --switch input.
			LED:	out bit_vector(7 downto 0)); --LED output.
			end component;
begin
LED_Red <= SW1;
LED_Blue <= SW2;

LED17Driver : ifProcess
	port map(switch => SW2(3 downto 0),
				LED => LED17);
LED18Driver : ifProcess
	port map(switch => SW2(7 downto 4),
				LED => LED18);
LED19Driver : caseProcess
	port map(switch => SW1(3 downto 0),
				LED => LED19);
LED20Driver : caseProcess
	port map(switch => SW1(7 downto 4),
				LED => LED20);
end architecture;