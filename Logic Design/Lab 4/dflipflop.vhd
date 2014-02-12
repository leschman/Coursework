entity dflipflop is:
	port(	clock, d : in bit;
			Q, Qn		: out bit);
end entity dflipflop;

architecture dflipflop_arch of dflipflop is

	begin
	update : process(clock)
		begin
		if(clock ='1')
			D <= Q;
			Qn <= not D;
		end if;
	end process update;
end architecture dflipflop_arch;
	