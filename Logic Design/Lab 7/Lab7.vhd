entity lab7 is
	port(	clock		: in 	bit; -- clock
			reset		: in 	bit;
			SW1 		: in bit_vector(7 downto 0); --DIP Switch 1 input 
			SW2 		: in bit_vector(7 downto 0); --DIP Switch 2 input 
			LED_Red 	: out bit_vector(7 downto 0); --Red LEDs 
			LED_Blue 	: out bit_vector(7 downto 0); --Blue LEDs 
			LED17 		: out bit_vector(7 downto 0); --Seven Segment LEDs + Decimal 
			LED18 		: out bit_vector(7 downto 0); --Seven Segment LEDs + Decimal 
			LED19 		: out bit_vector(7 downto 0); --Seven Segment LEDs + Decimal 
			LED20 		: out bit_vector(7 downto 0)); --Seven Segment LEDs + Decimal
			
end entity;  
architecture lab7_arch of lab7 is

	component clock_div is
	port(	mClock		: in 	bit; -- clock
			mreset			: in 	bit;
			mout		: out bit);
	end component;
			

	type state is(s0, s1, s2, s3, s4, s5, s6, s7, s8, s9, s10, s11, s12, s13, s14, s15);
	type inputs is(zero, one, two);
	signal currentState : state; 
	signal nextState	: state;
	signal oldState		: state;
	signal input		: inputs;
	signal lclock : bit;

begin

	cdiv : clock_div
		port map(
				mClock => clock,
				mreset => reset,
				mout => lclock);

inputProc : Process(SW1) is
	begin
		case(SW2) is
			when "00000000" => input <= zero;
			when "00000001" => input <= one;
			when "00000010" => input <= two;
			when others => input <= zero;
		end case;
	end process inputProc;

	nextStateLogic : Process(currentState, input)
		begin
			case(currentState) is
				when s0 => nextState <= s1;
				when s1 => 
					if(input = two) then
						nextState <= s12;
						else nextState <= s2;
					end if;
				when s2 => nextState <= s3;
				when s3 => nextState <= s4;
				when s4 => nextState <= s5;
				when s5 => nextState <= s6;
				when s6 => nextState <= s7;
				when s7 => 
					if(input = one) then
						nextState <= s15;
						else nextState <= s8;
					end if;
				when s8 => nextState <= s9;
				when s9 => nextState <= s10;
				when s10 => nextState <= s11;
				when s11 => nextState <= s0;
				when s12 => nextState <= s13;
				when s13 => nextState <= s8;
				when s14 => nextState <= s2;
				when s15 => nextState <= s14;
			end case;
		end process nextStateLogic;
		
	currentStateLogic : Process(currentState, oldState)	
		begin
			case(currentState) is
				when s0 => 	LED17 <="10000100";
								LED18 <="00000000";
								LED19 <="00000000";
								LED20 <="00000000";
								
				when s1 => 	LED18 <="10000000";
								LED17 <="10000000";
								LED19 <="00000000";
								LED20 <="00000000";
								
				when s2 =>	if(oldState = s14)then
								LED19 <="10000100";
								LED17 <="00000000";
								LED18 <="00000000";
								LED20 <="00000000";
								else
								LED19 <="10000000";
								LED17 <="00000000";
								LED18 <="10000000";
								LED20 <="00000000";
								end if;
								
				when s3 =>	LED20 <="10000000";
								LED17 <="00000000";
								LED18 <="00000000";
								LED19 <="10000000";
								
				when s4 =>	LED20 <="11000000";
								LED17 <="00000000";
								LED18 <="00000000";
								LED19 <="00000000";
								
				when s5 => 	LED20 <="01100000";
								LED17 <="00000000";
								LED18 <="00000000";
								LED19 <="00000000";
								
				when s6 =>	LED20 <="00110000";
								LED17 <="00000000";
								LED18 <="00000000";
								LED19 <="00000000";
				
				when s7 =>	LED19 <="00010000";
								LED17 <="00000000";
								LED18 <="00000000";
								LED20 <="00010000";
				
				when s8 =>	if(oldstate = s13)then
								LED18 <="00110000";
								LED17 <="00000000";
								LED19 <="00000000";
								LED20 <="00000000";
								else
								LED18 <="00010000";
								LED17 <="00000000";
								LED19 <="00010000";
								LED20 <="00000000";
								end if;
								
				when s9 =>	LED17 <="00010000";
								LED18 <="00010000";								
								LED19 <="00000000";
								LED20 <="00000000";
								
				when s10 =>	LED17 <="00011000";
								LED18 <="00000000";
								LED19 <="00000000";
								LED20 <="00000000";
								
				when s11 => LED17 <="00001100";
								LED18 <="00000000";
								LED19 <="00000000";
								LED20 <="00000000";
								
				when s12 => LED18 <="11000000";
								LED17 <="00000000";
								LED19 <="00000000";
								LED20 <="00000000";
								
				when s13 => LED18 <="01100000";
								LED17 <="00000000";
								LED19 <="00000000";
								LED20 <="00000000";
								
				when s14 => LED19 <="00001100";
								LED17 <="00000000";
								LED18 <="00000000";
								LED20 <="00000000";
								
				when s15 => LED19 <="00011000";
								LED17 <="00000000";
								LED18 <="00000000";
								LED20 <="00000000";
			end case;
--			case(oldState) is
--				when s0 => 	LED17 <="10000000";
--								
--				when s1 => 	LED18 <="10000000";
--				when s2 =>	LED19 <="10000000";
--				when s3 =>	LED20 <="10000000";
--				when s4 =>	LED20 <="01000000";
--				when s5 => 	LED20 <="00100000";
--				when s6 =>	LED20 <="00010000";
--				when s7 =>	LED19 <="00010000";
--				when s8 =>	LED18 <="00010000";
--				when s9 =>	LED17 <="00010000";
--				when s10 =>	LED17 <="00001000";
--				when s11 => LED17 <="00000100";
--				when s12 => LED18 <="01000000";
--				when s13 => LED18 <="00100000";
--				when s14 => LED19 <="00000100";
--				when s15 => LED19 <="00001000";
--			end case;
		end process currentStateLogic;
		
	clockLogic : process(lclock, reset)
		begin
			if(reset = '0') then
				currentState <= s0;
				oldState <= s11;
			elsif(lclock'event and lclock = '1') then
				oldState 		<= currentState;
				currentState 	<= nextState;
			end if;
		end process clockLogic;	
	end architecture;