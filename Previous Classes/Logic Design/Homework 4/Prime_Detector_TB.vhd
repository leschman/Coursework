entity Prime_Detector_TB is
end entity Prime_Detector_TB;

architecture PrimeDetectorTBArch of Prime_Detector_TB is
  
  signal DEC_IN_TB : bit_vector(3 downto 0);
  signal Prime_Out_TB: bit;
  
  component Prime_Detector
    port( Dec_In    : in  bit_vector(3 downto 0);
        Prime_Out : out bit);
  end component;

  begin
    
    DUT: Prime_Detector
      port map( Dec_In => DEC_IN_TB,
                Prime_Out => Prime_Out_TB);
    
    STIM : process
      begin
        DEC_IN_TB <= "0000"; wait for 50ns; 
          assert(Prime_Out_TB = '0') report "FAILED, Input: 0000, Output: 1" severity WARNING;
          assert(Prime_Out_TB = '1') report "Success, Input: 0000, Output: 0" severity NOTE;
        DEC_IN_TB <= "0001"; wait for 50ns; 
          assert(Prime_Out_TB = '0') report "FAILED, Input: 0001, Output: 1" severity WARNING;
          assert(Prime_Out_TB = '1') report "Success, Input: 0001, Output: 0" severity NOTE;
        DEC_IN_TB <= "0010"; wait for 50ns; 
          assert(Prime_Out_TB = '1') report "FAILED, Input: 0010, Output: 0" severity WARNING;
          assert(Prime_Out_TB = '0') report "Success, Input: 0010, Output: 1" severity NOTE;
        DEC_IN_TB <= "0011"; wait for 50ns; 
          assert(Prime_Out_TB = '1') report "FAILED, Input: 0011, Output: 0" severity WARNING;
          assert(Prime_Out_TB = '0') report "Success, Input: 0011, Output: 1" severity NOTE;
        DEC_IN_TB <= "0100"; wait for 50ns; 
          assert(Prime_Out_TB = '0') report "FAILED, Input: 0100, Output: 1" severity WARNING;
          assert(Prime_Out_TB = '1') report "Success, Input: 0100, Output: 0" severity NOTE;
        DEC_IN_TB <= "0101"; wait for 50ns; 
          assert(Prime_Out_TB = '1') report "FAILED, Input: 0101, Output: 0" severity WARNING;
          assert(Prime_Out_TB = '0') report "Success, Input: 0101, Output: 1" severity NOTE;
        DEC_IN_TB <= "0110"; wait for 50ns; 
          assert(Prime_Out_TB = '0') report "FAILED, Input: 0110, Output: 1" severity WARNING;
          assert(Prime_Out_TB = '1') report "Success, Input: 0110, Output: 0" severity NOTE;
        DEC_IN_TB <= "0111"; wait for 50ns; 
          assert(Prime_Out_TB = '1') report "FAILED, Input: 0111, Output: 0" severity WARNING;
          assert(Prime_Out_TB = '0') report "Success, Input: 0111, Output: 1" severity NOTE;
        DEC_IN_TB <= "1000"; wait for 50ns; 
          assert(Prime_Out_TB = '0') report "FAILED, Input: 1000, Output: 1" severity WARNING;
          assert(Prime_Out_TB = '1') report "Success, Input: 1000, Output: 0" severity NOTE;
        DEC_IN_TB <= "1001"; wait for 50ns; 
          assert(Prime_Out_TB = '0') report "FAILED, Input: 1001, Output: 1" severity WARNING;
          assert(Prime_Out_TB = '1') report "Success, Input: 1001, Output: 0" severity NOTE;
        DEC_IN_TB <= "1010"; wait for 50ns; 
          assert(Prime_Out_TB = '0') report "FAILED, Input: 1010, Output: 1" severity WARNING;
          assert(Prime_Out_TB = '1') report "Success, Input: 1010, Output: 0" severity NOTE;
        DEC_IN_TB <= "1011"; wait for 50ns; 
          assert(Prime_Out_TB = '1') report "FAILED, Input: 1011, Output: 0" severity WARNING;
          assert(Prime_Out_TB = '0') report "Success, Input: 1011, Output: 1" severity NOTE;
        DEC_IN_TB <= "1100"; wait for 50ns; 
          assert(Prime_Out_TB = '0') report "FAILED, Input: 1100, Output: 1" severity WARNING;
          assert(Prime_Out_TB = '1') report "Success, Input: 1100, Output: 0" severity NOTE;
        DEC_IN_TB <= "1101"; wait for 50ns; 
          assert(Prime_Out_TB = '1') report "FAILED, Input: 1101, Output: 0" severity WARNING;
          assert(Prime_Out_TB = '0') report "Success, Input: 1101, Output: 1" severity NOTE;
        DEC_IN_TB <= "1110"; wait for 50ns; 
          assert(Prime_Out_TB = '0') report "FAILED, Input: 1110, Output: 1" severity WARNING;
          assert(Prime_Out_TB = '1') report "Success, Input: 1110, Output: 0" severity NOTE;
        DEC_IN_TB <= "1111"; wait for 50ns; 
          assert(Prime_Out_TB = '0') report "FAILED, Input: 1111, Output: 1" severity WARNING;
          assert(Prime_Out_TB = '1') report "Success, Input: 1111, Output: 0" severity NOTE;
      end process STIM;
end architecture PrimeDetectorTBArch;
                