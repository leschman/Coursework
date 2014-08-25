entity lab4 is
	port(	mClock		: in 	bit; -- clock
			reset			: in 	bit;
			LED_Red 	: out bit_vector(7 downto 0); --Red LEDs 
			LED_Blue : out bit_vector(7 downto 0); --Blue LEDs 
			LED17 	: out bit_vector(7 downto 0); --Seven Segment LEDs + Decimal 
			LED18 	: out bit_vector(7 downto 0); --Seven Segment LEDs + Decimal 
			LED19 	: out bit_vector(7 downto 0); --Seven Segment LEDs + Decimal 
			LED20 	: out bit_vector(7 downto 0)); --Seven Segment LEDs + Decimal 
end entity;  
architecture Lab4arch of Lab4 is

 component sevenSegmentDecoder
 port(	dSW1 		: in 	bit_vector(7 downto 0); --DIP Switch 1 input 
			dSW2 		: in 	bit_vector(7 downto 0); --DIP Switch 2 input 
			dLED_Red 	: out bit_vector(7 downto 0); --Red LEDs 
			dLED_Blue : out bit_vector(7 downto 0); --Blue LEDs 
			dLED17 	: out bit_vector(7 downto 0); --Seven Segment LEDs + Decimal 
			dLED18 	: out bit_vector(7 downto 0); --Seven Segment LEDs + Decimal 
			dLED19 	: out bit_vector(7 downto 0); --Seven Segment LEDs + Decimal 
			dLED20 	: out bit_vector(7 downto 0)); --Seven Segment LEDs + Decimal 
			end component;
			
component dflipflop
 port(	clock, d, rst : in bit;
			Q, Qn		: out bit);
			end component;
signal bit0, bit1, bit2, bit3, bit4, bit5, bit6, bit7, bit8, bit9, bit10, bit11, bit12, bit13, bit14, bit15 : bit;
signal qn0, qn1, qn2, qn3, qn4, qn5, qn6, qn7, qn8, qn9, qn10, qn11, qn12, qn13, qn14, qn15, qn16, qn17, qn18, qn19, qn20, qn21, qn22, qn23, qn24, qn25, qn26, qn27, qn28, qn29, qn30, qn31, qn32, qn33, qn34, qn35, qn36 : bit;

begin

	sevenSegmentDecoder0 : sevenSegmentDecoder
		port map(dSW1 => (bit7 & bit6 & bit5 & bit4 & bit3 & bit2 & bit1 & bit0),
					dSW2 => (bit15 & bit14 & bit13 & bit12 & bit11 & bit10 & bit9 & bit8),
					dLED_Red => LED_Red,
					dLED_Blue => LED_Blue,
					dLED17 => LED17,
					dLED18 => LED18,
					dLED19 => LED19,
					dLED20 => LED20);

	dflipflop0 : dflipflop
		port map(clock => mClock,
					rst => reset,
					d  => qn0,
					qn => qn0);
	
	dflipflop1 : dflipflop
		port map(clock => qn0,
					rst => reset,
					d  => qn1,
					qn => qn1);
					
	dflipflop2 : dflipflop
		port map(clock => qn1,
					rst => reset,
					d  => qn2,
					qn => qn2);
	
	dflipflop3 : dflipflop
		port map(clock => qn2,
					rst => reset,
					d  => qn3,
					qn => qn3);
					
	dflipflop4 : dflipflop
		port map(clock => qn3,
					rst => reset,
					d  => qn4,
					qn => qn4);
					
	dflipflop5 : dflipflop
		port map(clock => qn4,
					rst => reset,
					d  => qn5,
					qn => qn5);
					
	dflipflop6 : dflipflop
		port map(clock => qn5,
					rst => reset,
					d  => qn6,
					qn => qn6);
	
	dflipflop7 : dflipflop
		port map(clock => qn6,
					rst => reset,
					d  => qn7,
					qn => qn7);
	
	dflipflop8 : dflipflop
		port map(clock => qn7,
					rst => reset,
					d  => qn8,
					qn => qn8);
					
	dflipflop9 : dflipflop
		port map(clock => qn8,
					rst => reset,
					d  => qn9,
					qn => qn9);
					
	dflipflop10 : dflipflop
		port map(clock => qn9,
					rst => reset,
					d  => qn10,
					qn => qn10);
					
	dflipflop11 : dflipflop
		port map(clock => qn10,
					rst => reset,
					d  => qn11,
					qn => qn11);
					
	dflipflop12 : dflipflop
		port map(clock => qn11,
					rst => reset,
					d  => qn12,
					qn => qn12);

	dflipflop13 : dflipflop
		port map(clock => qn12,
					rst => reset,
					d  => qn13,
					qn => qn13);

	dflipflop14 : dflipflop
		port map(clock => qn13,
					rst => reset,
					d  => qn14,
					qn => qn14);

	dflipflop15 : dflipflop
		port map(clock => qn14,
					rst => reset,
					d  => qn15,
					qn => qn15);	
	
	dflipflop16 : dflipflop
		port map(clock => qn15,
					rst => reset,
					d  => qn16,
					qn => qn16);
				
	dflipflop17 : dflipflop
		port map(clock => qn16,
					rst => reset,
					d  => qn17,
					qn => qn17);				

	dflipflop18 : dflipflop
		port map(clock => qn17,
					rst => reset,
					d  => qn18,
					qn => qn18);	
	
	dflipflop19 : dflipflop
		port map(clock => qn18,
					rst => reset,
					d  => qn19,
					qn => qn19);	
					
	dflipflop20 : dflipflop
		port map(clock => qn19,
					rst => reset,
					d  => qn20,
					qn => qn20);	
	
	dflipflop21 : dflipflop
		port map(clock => qn20,
					rst => reset,
					d  => qn21,
					q 	=> bit0,
					qn => qn21);	
					
	dflipflop22 : dflipflop
		port map(clock => qn21,
					rst => reset,
					d  => qn22,
					q  => bit1,
					qn => qn22);
				
	dflipflop23 : dflipflop
		port map(clock => qn22,
					rst => reset,
					d  => qn23,
					q  => bit2,
					qn => qn23);	
	
	dflipflop24 : dflipflop
		port map(clock => qn23,
					rst => reset,
					d  => qn24,
					q  => bit3,
					qn => qn24);
				
	dflipflop25 : dflipflop
		port map(clock => qn24,
					rst => reset,
					d  => qn25,
					q  => bit4,
					qn => qn25);	
		
	dflipflop26 : dflipflop
		port map(clock => qn25,
					rst => reset,
					d  => qn26,
					q  => bit5,
					qn => qn26);	
				
	dflipflop27 : dflipflop
		port map(clock => qn26,
					rst => reset,
					d  => qn27,
					q  => bit6,
					qn => qn27);	
					
	dflipflop28 : dflipflop
		port map(clock => qn27,
					rst => reset,
					d  => qn28,
					q  => bit7,
					qn => qn28);

	dflipflop29 : dflipflop
		port map(clock => qn28,
					rst => reset,
					d  => qn29,
					q  => bit8,
					qn => qn29);	
	
	dflipflop30 : dflipflop
		port map(clock => qn29,
					rst => reset,
					d  => qn30,
					q  => bit9,
					qn => qn30);	
					
	dflipflop31 : dflipflop
		port map(clock => qn30,
					rst => reset,
					d  => qn31,
					q  => bit10,
					qn => qn31);

	dflipflop32 : dflipflop
		port map(clock => qn31,
					rst => reset,
					d  => qn32,
					q  => bit11,
					qn => qn32);

	dflipflop33 : dflipflop
		port map(clock => qn32,
					rst => reset,
					d  => qn33,
					q  => bit12,
					qn => qn33);	
	
	dflipflop34 : dflipflop
		port map(clock => qn33,
					rst => reset,
					d  => qn34,
					q  => bit13,
					qn => qn34);	
					
	dflipflop35 : dflipflop
		port map(clock => qn34,
					rst => reset,
					d  => qn35,
					q  => bit14,
					qn => qn35);
					
	dflipflop36 : dflipflop
		port map(clock => qn35,
					rst => reset,
					d  => qn36,
					q  => bit15,
					qn => qn36);
end architecture;