library IEEE;                    -- this library adds additional capability for VHDL
use IEEE.std_logic_1164.all;     -- this package has "STD_LOGIC" data types
use IEEE.numeric_std.all;


entity counter_9d6c is
    Port ( 	Clock   	: in	STD_LOGIC;
			EN			: in	STD_LOGIC;
			Reset     	: in	STD_LOGIC;
           
           Count_Out : out STD_LOGIC_VECTOR (15 downto 0));
end counter_9d6c;

architecture counter_9d6c_arch of counter_9d6c is

signal count_int : INTEGER range  0 to 65535 := 0;

begin


process (Clock, Reset, EN) 
begin
    
   if (Reset = '0') then 
         count_int <= 0;
         
   elsif (Clock='1' and Clock'event) then
     
      if(count_int = 65535)then
        count_int <= 0;
      else
         count_int <= count_int + 1;
    end if;
   end if;
   
   if(EN = '1')then
		Count_Out <= std_logic_vector(to_unsigned(count_int, 16));
	end if;
   
end process;
 

						
end counter_9d6c_arch;

