entity Prime_Detector is
  port( Dec_In    : in  bit_vector(3 downto 0);
        Prime_Out : out bit);
end entity;
architecture primeDetectorArch of Prime_Detector is
  
  begin
    prime :process(DEC_In)
    begin
      case(DEC_In) is
        when "0010" => Prime_Out <= '1';
        when "0011" => Prime_Out <= '1';
        when "0101" => Prime_Out <= '1';
        when "0111" => Prime_Out <= '1';
        when "1011" => Prime_Out <= '1';
        when "1101" => Prime_Out <= '1';
        when others => Prime_Out <= '0';
      end case;
    end process prime;
  end architecture primeDetectorArch; 