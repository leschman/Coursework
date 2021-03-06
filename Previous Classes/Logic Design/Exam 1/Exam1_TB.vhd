--Logan Esch, Exam1 TB
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.STD_LOGIC_ARITH.ALL;     
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Exam1_TB is
end entity Exam1_TB;

architecture Exam1TBArch of Exam1_TB is
  
  signal clock_tb : STD_LOGIC;
  signal reset_tb : STD_LOGIC;
  signal CNT_TB   : STD_LOGIC_VECTOR (3 downto 0);
  signal F_TB     : STD_LOGIC;
  
  component Exam1
  port( Clock   :  in STD_LOGIC;
        Reset   :  in STD_LOGIC;
        F       : out STD_LOGIC;
        CNT     : out std_logic_vector(3 downto 0));
  end component;

  begin
    
    DUT: Exam1
      port map(clock_tb,reset_tb, f_tb,cnt_tb);
    
    STIM : process
      begin
        reset_tb <= '0';wait for 50ns;
        reset_tb <= '1';
        clock_tb <= '0'; wait for 50ns;
        clock_tb <= '1'; wait for 50ns; 
          assert(F_TB = '0') report "FAILED, Input: 0000, Output: 1" severity WARNING;
          assert(F_TB = '1') report "Success, Input: 0000, Output: 0" severity NOTE;
        clock_tb <= '0'; wait for 50ns;
        clock_tb <= '1'; wait for 50ns; 
          assert(F_TB = '0') report "FAILED, Input: 0001, Output: 1" severity WARNING;
          assert(F_TB = '1') report "Success, Input: 0001, Output: 0" severity NOTE;
        clock_tb <= '0'; wait for 50ns;
        clock_tb <= '1'; wait for 50ns; 
          assert(F_TB = '0') report "FAILED, Input: 0010, Output: 1" severity WARNING;
          assert(F_TB = '1') report "Success, Input: 0010, Output: 0" severity NOTE;
        clock_tb <= '0'; wait for 50ns;
        clock_tb <= '1'; wait for 50ns; 
          assert(F_TB = '1') report "FAILED, Input: 0011, Output: 0" severity WARNING;
          assert(F_TB = '0') report "Success, Input: 0011, Output: 1" severity NOTE;
        clock_tb <= '0'; wait for 50ns;
        clock_tb <= '1'; wait for 50ns; 
          assert(F_TB = '1') report "FAILED, Input: 0100, Output: 0" severity WARNING;
          assert(F_TB = '0') report "Success, Input: 0100, Output: 1" severity NOTE;
        clock_tb <= '0'; wait for 50ns;
        clock_tb <= '1'; wait for 50ns; 
          assert(F_TB = '1') report "FAILED, Input: 0101, Output: 0" severity WARNING;
          assert(F_TB = '0') report "Success, Input: 0101, Output: 1" severity NOTE;
        clock_tb <= '0'; wait for 50ns;
        clock_tb <= '1'; wait for 50ns; 
          assert(F_TB = '0') report "FAILED, Input: 0110, Output: 1" severity WARNING;
          assert(F_TB = '1') report "Success, Input: 0110, Output: 0" severity NOTE;
        clock_tb <= '0'; wait for 50ns;
        clock_tb <= '1'; wait for 50ns; 
          assert(F_TB = '0') report "FAILED, Input: 0111, Output: 1" severity WARNING;
          assert(F_TB = '1') report "Success, Input: 0111, Output: 0" severity NOTE;
        clock_tb <= '0'; wait for 50ns;
        clock_tb <= '1'; wait for 50ns; 
          assert(F_TB = '0') report "FAILED, Input: 1000, Output: 1" severity WARNING;
          assert(F_TB = '1') report "Success, Input: 1000, Output: 0" severity NOTE;
        clock_tb <= '0'; wait for 50ns;
        clock_tb <= '1'; wait for 50ns; 
          assert(F_TB = '1') report "FAILED, Input: 1001, Output: 0" severity WARNING;
          assert(F_TB = '0') report "Success, Input: 1001, Output: 1" severity NOTE;
        clock_tb <= '0'; wait for 50ns;
        clock_tb <= '1'; wait for 50ns; 
          assert(F_TB = '1') report "FAILED, Input: 1010, Output: 0" severity WARNING;
          assert(F_TB = '0') report "Success, Input: 1010, Output: 1" severity NOTE;
        clock_tb <= '0'; wait for 50ns;
        clock_tb <= '1'; wait for 50ns; 
          assert(F_TB = '1') report "FAILED, Input: 1011, Output: 0" severity WARNING;
          assert(F_TB = '0') report "Success, Input: 1011, Output: 1" severity NOTE;
        clock_tb <= '0'; wait for 50ns;
        clock_tb <= '1'; wait for 50ns; 
          assert(F_TB = '0') report "FAILED, Input: 1100, Output: 1" severity WARNING;
          assert(F_TB = '1') report "Success, Input: 1100, Output: 0" severity NOTE;
        clock_tb <= '0'; wait for 50ns;
        clock_tb <= '1'; wait for 50ns; 
          assert(F_TB = '0') report "FAILED, Input: 1101, Output: 1" severity WARNING;
          assert(F_TB = '1') report "Success, Input: 1101, Output: 0" severity NOTE;
        clock_tb <= '0'; wait for 50ns;
        clock_tb <= '1'; wait for 50ns; 
          assert(F_TB = '0') report "FAILED, Input: 1110, Output: 1" severity WARNING;
          assert(F_TB = '1') report "Success, Input: 1110, Output: 0" severity NOTE;
        clock_tb <= '0'; wait for 50ns;
        clock_tb <= '1'; wait for 50ns; 
          assert(F_TB = '1') report "FAILED, Input: 1111, Output: 0" severity WARNING;
          assert(F_TB = '0') report "Success, Input: 1111, Output: 1" severity NOTE;
      end process STIM;
end architecture Exam1TBArch;
                
