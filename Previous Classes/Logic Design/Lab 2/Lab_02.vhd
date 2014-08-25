entity Lab_02 is
	port(	SW1 	: in bit_vector(7 downto 0); --DIP Switch 1 input 
 		SW2 	: in bit_vector(7 downto 0); --DIP Switch 2 input 
 		LED_Red : out bit_vector(7 downto 0); --Red LEDs 
 		LED_Blue : out bit_vector(7 downto 0); --Blue LEDs 
 		LED17 	: out bit_vector(7 downto 0); --Seven Segment LEDs + Decimal 
 		LED18 	: out bit_vector(7 downto 0); --Seven Segment LEDs + Decimal 
 		LED19 	: out bit_vector(7 downto 0); --Seven Segment LEDs + Decimal 
 		LED20 	: out bit_vector(7 downto 0)); --Seven Segment LEDs + Decimal 
end entity; 

architecture Lab02_arch of Lab_02 is
begin
lED_Red <= SW1;
LED_Blue <= SW2;
led17<= "11111100" when (sw2(3 downto 0) = "0000") else
	"01100000" when (sw2(3 downto 0) = "0001") else
	"11011010" when (sw2(3 downto 0) = "0010") else
	"11110010" when (sw2(3 downto 0) = "0011") else
	"01100110" when (sw2(3 downto 0) = "0100") else
	"10110110" when (sw2(3 downto 0) = "0101") else
	"10111110" when (sw2(3 downto 0) = "0110") else
	"11100000" when (sw2(3 downto 0) = "0111") else	
	"11111110" when (sw2(3 downto 0) = "1000") else
	"11110110" when (sw2(3 downto 0) = "1001") else
	"11101110" when (sw2(3 downto 0) = "1010") else
	"00111110" when (sw2(3 downto 0) = "1011") else	
	"00011010" when (sw2(3 downto 0) = "1100") else
	"01111010" when (sw2(3 downto 0) = "1101") else
	"10011110" when (sw2(3 downto 0) = "1110") else
	"10001110" when (sw2(3 downto 0) = "1111");

led18<= "11111100" when (sw2(7 downto 4) = "0000") else
	"01100000" when (sw2(7 downto 4) = "0001") else
	"11011010" when (sw2(7 downto 4) = "0010") else
	"11110010" when (sw2(7 downto 4) = "0011") else
	"01100110" when (sw2(7 downto 4) = "0100") else
	"10110110" when (sw2(7 downto 4) = "0101") else
	"10111110" when (sw2(7 downto 4) = "0110") else
	"11100000" when (sw2(7 downto 4) = "0111") else	
	"11111110" when (sw2(7 downto 4) = "1000") else
	"11110110" when (sw2(7 downto 4) = "1001") else
	"11101110" when (sw2(7 downto 4) = "1010") else
	"00111110" when (sw2(7 downto 4) = "1011") else	
	"00011010" when (sw2(7 downto 4) = "1100") else
	"01111010" when (sw2(7 downto 4) = "1101") else
	"10011110" when (sw2(7 downto 4) = "1110") else
	"10001110" when (sw2(7 downto 4) = "1111");
	
led19<= "11111100" when (sw1(3 downto 0) = "0000") else
	"01100000" when (sw1(3 downto 0) = "0001") else
	"11011010" when (sw1(3 downto 0) = "0010") else
	"11110010" when (sw1(3 downto 0) = "0011") else
	"01100110" when (sw1(3 downto 0) = "0100") else
	"10110110" when (sw1(3 downto 0) = "0101") else
	"10111110" when (sw1(3 downto 0) = "0110") else
	"11100000" when (sw1(3 downto 0) = "0111") else	
	"11111110" when (sw1(3 downto 0) = "1000") else
	"11110110" when (sw1(3 downto 0) = "1001") else
	"11101110" when (sw1(3 downto 0) = "1010") else
	"00111110" when (sw1(3 downto 0) = "1011") else	
	"00011010" when (sw1(3 downto 0) = "1100") else
	"01111010" when (sw1(3 downto 0) = "1101") else
	"10011110" when (sw1(3 downto 0) = "1110") else
	"10001110" when (sw1(3 downto 0) = "1111");
	
led20<= "11111100" when (sw1(7 downto 4) = "0000") else
	"01100000" when (sw1(7 downto 4) = "0001") else
	"11011010" when (sw1(7 downto 4) = "0010") else
	"11110010" when (sw1(7 downto 4) = "0011") else
	"01100110" when (sw1(7 downto 4) = "0100") else
	"10110110" when (sw1(7 downto 4) = "0101") else
	"10111110" when (sw1(7 downto 4) = "0110") else
	"11100000" when (sw1(7 downto 4) = "0111") else	
	"11111110" when (sw1(7 downto 4) = "1000") else
	"11110110" when (sw1(7 downto 4) = "1001") else
	"11101110" when (sw1(7 downto 4) = "1010") else
	"00111110" when (sw1(7 downto 4) = "1011") else	
	"00011010" when (sw1(7 downto 4) = "1100") else
	"01111010" when (sw1(7 downto 4) = "1101") else
	"10011110" when (sw1(7 downto 4) = "1110") else
	"10001110" when (sw1(7 downto 4) = "1111");
	end architecture;
	