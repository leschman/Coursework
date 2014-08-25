entity clock_div is
	port(	mClock		: in 	bit; -- clock
			mreset			: in 	bit;
			mOut : out bit);
			
end entity;  
architecture clock_div_arch of clock_div is

 
--components			
component dflipflop
 port(	clock, d, rst : in bit;
			Q, Qn		: out bit);
			end component;

--signals
signal outbit	: bit_vector(31 downto 0);
signal qnbit	: bit_vector(31 downto 0);


begin

	mout <=outbit(23);
	dflipflop0 : dflipflop
		port map(clock => mClock,
					rst => mreset,
					d  => qnbit(0),
					qn => qnbit(0),
					q  => outbit(0));
	
	dflipflop1 : dflipflop
		port map(clock => qnbit(0),
					rst => mreset,
					d  => qnbit(1),
					qn => qnbit(1),
					q  => outbit(1));
					
	dflipflop2 : dflipflop
		port map(clock => qnbit(1),
					rst => mreset,
					d  => qnbit(2),
					qn => qnbit(2),
					q  => outbit(2));
	
	dflipflop3 : dflipflop
		port map(clock => qnbit(2),
					rst => mreset,
					d  => qnbit(3),
					qn => qnbit(3),
					q  => outbit(3));
					
	dflipflop4 : dflipflop
		port map(clock => qnbit(3),
					rst => mreset,
					d  => qnbit(4),
					qn => qnbit(4),
					q  => outbit(4));
					
	dflipflop5 : dflipflop
		port map(clock => qnbit(4),
					rst => mreset,
					d  => qnbit(5),
					qn => qnbit(5),
					q  => outbit(5));
					
	dflipflop6 : dflipflop
		port map(clock => qnbit(5),
					rst => mreset,
					d  => qnbit(6),
					qn => qnbit(6),
					q  => outbit(6));
	
	dflipflop7 : dflipflop
		port map(clock => qnbit(6),
					rst => mreset,
					d  => qnbit(7),
					qn => qnbit(7),
					q  => outbit(7));
	
	dflipflop8 : dflipflop
		port map(clock => qnbit(7),
					rst => mreset,
					d  => qnbit(8),
					qn => qnbit(8),
					q  => outbit(8));
					
	dflipflop9 : dflipflop
		port map(clock => qnbit(8),
					rst => mreset,
					d  => qnbit(9),
					qn => qnbit(9),
					q  => outbit(9));
					
	dflipflop10 : dflipflop
		port map(clock => qnbit(9),
					rst => mreset,
					d  => qnbit(10),
					qn => qnbit(10),
					q  => outbit(10));
					
	dflipflop11 : dflipflop
		port map(clock => qnbit(10),
					rst => mreset,
					d  => qnbit(11),
					qn => qnbit(11),
					q  => outbit(11));
					
	dflipflop12 : dflipflop
		port map(clock => qnbit(11),
					rst => mreset,
					d  => qnbit(12),
					qn => qnbit(12),
					q  => outbit(12));

	dflipflop13 : dflipflop
		port map(clock => qnbit(12),
					rst => mreset,
					d  => qnbit(13),
					qn => qnbit(13),
					q  => outbit(13));

	dflipflop14 : dflipflop
		port map(clock => qnbit(13),
					rst => mreset,
					d  => qnbit(14),
					qn => qnbit(14),
					q  => outbit(14));

	dflipflop15 : dflipflop
		port map(clock => qnbit(14),
					rst => mreset,
					d  => qnbit(15),
					qn => qnbit(15),
					q  => outbit(15));	
	
	dflipflop16 : dflipflop
		port map(clock => qnbit(15),
					rst => mreset,
					d  => qnbit(16),
					qn => qnbit(16),
					q  => outbit(16));
				
	dflipflop17 : dflipflop
		port map(clock => qnbit(16),
					rst => mreset,
					d  => qnbit(17),
					qn => qnbit(17),
					q  => outbit(17));				

	dflipflop18 : dflipflop
		port map(clock => qnbit(17),
					rst => mreset,
					d  => qnbit(18),
					qn => qnbit(18),
					q  => outbit(18));	
	
	dflipflop19 : dflipflop
		port map(clock => qnbit(18),
					rst => mreset,
					d  => qnbit(19),
					qn => qnbit(19),
					q  => outbit(19));	
					
	dflipflop20 : dflipflop
		port map(clock => qnbit(19),
					rst => mreset,
					d  => qnbit(20),
					qn => qnbit(20),
					q  => outbit(20));	
	
	dflipflop21 : dflipflop
		port map(clock => qnbit(20),
					rst => mreset,
					d  => qnbit(21),
					qn => qnbit(21),
					q  => outbit(21));	
					
	dflipflop22 : dflipflop
		port map(clock => qnbit(21),
					rst => mreset,
					d  => qnbit(22),
					qn => qnbit(22),
					q  => outbit(21));
				
	dflipflop23 : dflipflop
		port map(clock => qnbit(22),
					rst => mreset,
					d  => qnbit(23),
					qn => qnbit(23),
					q  => outbit(23));	
	
	dflipflop24 : dflipflop
		port map(clock => qnbit(23),
					rst => mreset,
					d  => qnbit(24),
					qn => qnbit(24),
					q  => outbit(24));
				
	dflipflop25 : dflipflop
		port map(clock => qnbit(24),
					rst => mreset,
					d  => qnbit(25),
					qn => qnbit(25),
					q  => outbit(25));	
		
	dflipflop26 : dflipflop
		port map(clock => qnbit(25),
					rst => mreset,
					d  => qnbit(26),
					qn => qnbit(26),
					q  => outbit(26));	
				
	dflipflop27 : dflipflop
		port map(clock => qnbit(26),
					rst => mreset,
					d  => qnbit(27),
					qn => qnbit(27),
					q  => outbit(27));	
					
	dflipflop28 : dflipflop
		port map(clock => qnbit(27),
					rst => mreset,
					d  => qnbit(28),
					qn => qnbit(28),
					q  => outbit(28));

	dflipflop29 : dflipflop
		port map(clock => qnbit(28),
					rst => mreset,
					d  => qnbit(29),
					qn => qnbit(29),
					q  => outbit(29));	
	
	dflipflop30 : dflipflop
		port map(clock => qnbit(29),
					rst => mreset,
					d  => qnbit(30),
					qn => qnbit(30),
					q  => outbit(30));	
					
	dflipflop31 : dflipflop
		port map(clock => qnbit(30),
					rst => mreset,
					d  => qnbit(31),
					qn => qnbit(31),
					q  => outbit(31));

end architecture;