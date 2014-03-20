Library IEEE;
use IEEE.std_logic_1164.all;     

entity Counter_TB is
end entity Counter_TB;

architecture CounterArch of Counter_TB is
  
  signal Clock_TB : STD_Logic;
  signal CountOut_TB: STD_Logic_Vector(15 downto 0);
  signal Reset_TB: STD_Logic;
  signal EN_TB: STD_Logic;
  
  signal setup: STD_Logic := '0';
  
  component Counter_9d6c
    port( 	Clock   	: in	STD_LOGIC;
			EN			: in	STD_LOGIC;
			Reset     	: in	STD_LOGIC;
           
           Count_Out : out STD_LOGIC_VECTOR (15 downto 0));
  end component;

  begin
    
    DUT: Counter_9d6c
      port map(	Clock 		=> Clock_TB,
				EN 			=> EN_TB,
				Reset 		=> Reset_TB,
				Count_out 	=> Countout_TB);
    
    STIM : process
      begin
		if(setup = '0') then
			Reset_TB <= '0'; wait for 1ns;
			Reset_TB <= '1'; 
			EN_TB <= '1'; wait for 1ns;
			setup <= '1';
		end if;
		Clock_TB <= '0'; wait for 1ns;
		Clock_TB <= '1'; wait for 1ns;
      end process STIM;
end architecture;
                