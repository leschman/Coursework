------------------------------------------------------------------------------------------------------------
-- File name   : rom_128x8_sync.vhd
--
-- Project     : 8-bit Microcomputer
--               
-- Description : VHDL model of a 128 x 8-bit ROM memory (Program Memory)
--
-- Author(s)   : Brock J. LaMeres
--               Montana State University
--               lameres@ece.montana.edu
--
-- Note(s)     : This ROM memory contains the program instructions for the microcomputer.
-- 
--              Address      Description
--              ----------------------------------
--               (x00)         
--                 :         Read Only Memory 
--               (x7F)        (128x8-bit)              
--              ----------------------------------
--
-- Date        : April 15, 2014
--
------------------------------------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity rom_128x8_sync is
  port     (clock    : in  std_logic;
            address  : in  std_logic_vector(7 downto 0);
            data_out : out std_logic_vector(7 downto 0));
end entity;

architecture rom_128x8_sync_arch of rom_128x8_sync is

  -- Constants for Instruction Pnemonics
  constant LDA_IMM  : std_logic_vector (7 downto 0) := x"86";   -- Load Register A with Immediate Addressing
  constant LDA_DIR  : std_logic_vector (7 downto 0) := x"87";   -- Load Register A with Direct Addressing
  constant STA_DIR  : std_logic_vector (7 downto 0) := x"96";   -- Store Register A to memory (RAM or IO)
  constant LDB_IMM  : std_logic_vector (7 downto 0) := x"88";   -- Load Register B with Immediate Addressing
  constant LDB_DIR  : std_logic_vector (7 downto 0) := x"89";   -- Load Register B with Direct Addressing
  constant STB_DIR  : std_logic_vector (7 downto 0) := x"97";   -- Store Register B to memory (RAM or IO)
  constant BRA      : std_logic_vector (7 downto 0) := x"20";   -- Branch Always                           
  constant BEQ      : std_logic_vector (7 downto 0) := x"21";   -- Branch if Equal to Zero
  constant ADD_AB   : std_logic_vector (7 downto 0) := x"42";   -- A <= A + B
  constant SUB_AB   : std_logic_vector (7 downto 0) := x"43";   -- A <= A - B
  constant AND_AB   : std_logic_vector (7 downto 0) := x"44";   -- A <= A and B
  constant OR_AB    : std_logic_vector (7 downto 0) := x"45";   -- A <= A or B
  constant INCA     : std_logic_vector (7 downto 0) := x"46";   -- A <= A + 1
  constant INCB     : std_logic_vector (7 downto 0) := x"47";   -- B <= B + 1
  constant DECA     : std_logic_vector (7 downto 0) := x"48";   -- A <= A - 1
  constant DECB     : std_logic_vector (7 downto 0) := x"49";   -- B <= B - 1


  type rom_type is array (0 to 127) of std_logic_vector(7 downto 0);

  constant ROM : rom_type := (0      => INCA,  --set A to 1
                              1      => SUB_AB,--1 - 0     
                              2      => BEQ,   -- branch if equal to x00.
                              3      => x"00",  
                              4      => INCB,  -- set B = 1.
                              5      => SUB_AB,-- 1-1 = 0    
                              6      => BEQ,  -- testing Store B Dir (Port Out 01)
                              7      => x"00",
                              8      => DECA,  -- testing Load A DIR
                              9      => DECB,     
                             10      => DECA,  -- testing Store A Dir (Port Out 00)
                             11      => DECB,  
                             12      => DECA,  -- testing Load B DIR
                             13      => DECB,     
                             14      => INCA,  -- testing Store B Dir (Port Out 01)
                             15      => INCB, 
                             16      => BRA,      -- testing Branch Always
                             17      => x"00",
                            100      => x"A1",
                            101      => x"B1",
                              others => x"00");

  signal EN : std_logic;    
                                
 begin
   
-- A circuit to create an enable so that this memory is only active for valid addresses (e.g., 0 to 127)
  enable : process (address) 
    begin
      if ( (to_integer(unsigned(address)) >= 0) and (to_integer(unsigned(address)) <= 127)) then
        EN <= '1';
      else 
        EN <= '0';
      end if;
    end process;   

-- Model of the ROM memory   
   memory : process (clock) 
     begin
        if (clock'event and clock='1') then
          if (EN='1') then
            data_out <= ROM(to_integer(unsigned(address)));  
          end if; 
      end if;
   end process;
 
end architecture;   