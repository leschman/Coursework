entity dflipflop is
		port(	clock, d, rst : in bit;
			Q, Qn		: out bit);
end entity dflipflop;

architecture dflipflop_arch of dflipflop is

	begin
	update : process(clock, rst)
		begin
			if(rst = '0')then
			Q <= '0';
			Qn <= '1';
		elsif(clock'event and clock ='1')then
			Q <= D;
			Qn <= not D;
		end if;
	end process update;
	
	
end architecture dflipflop_arch;
	