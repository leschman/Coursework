-- Logan Esch, Exam 1
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.STD_LOGIC_ARITH.ALL;     
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Exam1 is
  port( Clock   :  in STD_LOGIC;
        Reset   :  in STD_LOGIC;
        F       : out STD_LOGIC;
        CNT     : out std_logic_vector(3 downto 0));
end entity Exam1;

architecture exam1Arch of Exam1 is
  
  signal WXYZ : std_logic_vector(3 downto 0) := "0000";
  
  
  
  begin
    
    clockProc :process (Clock, Reset) 
      begin
    
        if (Reset = '0') then 
          WXYZ <= "0000";
         
        elsif (Clock='1' and Clock'event) then
          WXYZ <= WXYZ + 1;
        end if;
        
        case(WXYZ) is
        when "0011" => F <= '1';
        when "0100" => F <= '1';
        when "0101" => F <= '1';
        when "1001" => F <= '1';
        when "1010" => F <= '1';
        when "1011" => F <= '1';
        when "1111" => F <= '1';
        when others => F <= '0';
      end case;
    end process clockProc;
   
    CNT <= WXYZ;
  end architecture exam1Arch; 