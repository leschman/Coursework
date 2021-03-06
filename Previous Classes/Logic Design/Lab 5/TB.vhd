library IEEE;
use IEEE.std_logic_1164.all;

entity FSM_TB is
end entity FSM_TB;

architecture FSMArch of FSM_TB is
  
  signal Din_TB : STD_LOgic;
  signal Reset_TB: STD_Logic;
  signal DOut_TB: STD_Logic;
  
  component FSM_9d1 is
  port( Din : in STD_Logic;
        reset : in STD_Logic;
        Dout: out STD_Logic);
  end component;

  begin
    
    DUT: FSM_9d1
      port map( Din => Din_tb,
                reset => reset_tb,
                dout => dout_tb);
    
    STIM : process
      begin
        reset_tb <= '0'; wait for 50ns;
        reset_tb <= '1'; wait for 50ns;
        Din_tb <= '0'; wait for 50ns;
        Din_tb <= '0'; wait for 50ns;
        Din_tb <= '1'; wait for 50ns;
        Din_tb <= '0'; wait for 50ns;
        Din_tb <= '0'; wait for 50ns;
        Din_tb <= '1'; wait for 50ns;
        Din_tb <= '1'; wait for 50ns;
        Din_tb <= '1'; wait for 50ns; 
          
      end process STIM;
end architecture;