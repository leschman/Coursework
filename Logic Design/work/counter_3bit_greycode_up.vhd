entity counter_3bit_graycode_up is
    port   (Clock           : in   bit;
            Reset           : in   bit;
            Count           : out  bit_vector (2 downto 0));
end entity;

architecture counter3BitGreycodeUp of counter_3bit_graycode_up is

component Dflipflop is
    port   (Clock           : in   bit;
            Reset           : in   bit;
            D               : in   bit;
            Q, Qn           : out  bit);
end component;

signal qCur, qNxt, qN: bit_vector (2 downto 0);


begin
  

  
sponge : Dflipflop port map (clock, reset, qNxt(0), qCur(0),  qn(0)); 
bob    : Dflipflop port map (clock, reset, qNxt(1), qCur(1),  qn(1)); 
square : Dflipflop port map (clock, reset, qNxt(2), qCur(2),  qn(2)); 

qNxt <= "001" when (qcur = "000") else
        "011" when (qcur = "001") else
        "010" when (qcur = "011") else
        "110" when (qcur = "010") else
        "111" when (qcur = "110") else
        "101" when (qcur = "111") else
        "100" when (qcur = "101") else
        "000" when (qcur = "100");
      
count <= qCur;
end architecture;
        

