library IEEE;
use IEEE.std_logic_1164.all;
entity FSM_9d1 is
  port( Din : in STD_Logic;
        reset : in STD_Logic;
        Dout: out STD_Logic);
end entity;

architecture arch of FSM_9d1 is

type state is (S0,S1, S2, S3);
signal curState : state;
begin
  statelogic : Process(Din, reset)
    begin
            
      case(curstate)is
        when S0 => 
          if(Din = '1')then
            curState <= S1;
            dout <= '1';
          end if;
        when S1 => 
             if(din = '0')then
             dout <='1';
             curState <= S2;
           else 
             dout <= '0';
             curState <=S3;
          end if;
        when S2 => 
          if(Din = '1')then
            curState <= S3;
            Dout <= '1';
        else
            curState <= S0;
            dout <= '0';
          end if;
        when s3 =>
          if(din = '1') then
          dout <= '1';
          curState <= s0;
        end if;
          
      end case;
      if(reset = '0')then
        curState <= s0;
        dout <= '0';
      end if;
    end process;
  end architecture;
