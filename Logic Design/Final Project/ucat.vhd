------------------------------------------------------------------------------------------------------------
-- File name   : ucat.vhd
--
-- Project     : 8-bit Microcomputer
--
-- Description : Top level of the computer system
--
-- Author(s)   : Brock J. LaMeres
--               Montana State University
--               lameres@ece.montana.edu
--
-- Date        : April 15, 2014
--
------------------------------------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
  
entity ucat is
    port   ( clock          : in   std_logic;
             reset          : in   std_logic;
             port_in_00     : in   std_logic_vector (7 downto 0);
             port_in_01     : in   std_logic_vector (7 downto 0);
             port_in_02     : in   std_logic_vector (7 downto 0);
             port_in_03     : in   std_logic_vector (7 downto 0);
             port_in_04     : in   std_logic_vector (7 downto 0);
             port_in_05     : in   std_logic_vector (7 downto 0);
             port_in_06     : in   std_logic_vector (7 downto 0);               
             port_in_07     : in   std_logic_vector (7 downto 0);
             port_in_08     : in   std_logic_vector (7 downto 0);
             port_in_09     : in   std_logic_vector (7 downto 0);
             port_in_10     : in   std_logic_vector (7 downto 0);
             port_in_11     : in   std_logic_vector (7 downto 0);
             port_in_12     : in   std_logic_vector (7 downto 0);
             port_in_13     : in   std_logic_vector (7 downto 0);
             port_in_14     : in   std_logic_vector (7 downto 0);
             port_in_15     : in   std_logic_vector (7 downto 0);                                                                   
             port_out_00    : out  std_logic_vector (7 downto 0);
             port_out_01    : out  std_logic_vector (7 downto 0);
             port_out_02    : out  std_logic_vector (7 downto 0);
             port_out_03    : out  std_logic_vector (7 downto 0);
             port_out_04    : out  std_logic_vector (7 downto 0);
             port_out_05    : out  std_logic_vector (7 downto 0);
             port_out_06    : out  std_logic_vector (7 downto 0);
             port_out_07    : out  std_logic_vector (7 downto 0);
             port_out_08    : out  std_logic_vector (7 downto 0);
             port_out_09    : out  std_logic_vector (7 downto 0);
             port_out_10    : out  std_logic_vector (7 downto 0);
             port_out_11    : out  std_logic_vector (7 downto 0);
             port_out_12    : out  std_logic_vector (7 downto 0);
             port_out_13    : out  std_logic_vector (7 downto 0);
             port_out_14    : out  std_logic_vector (7 downto 0);
             port_out_15    : out  std_logic_vector (7 downto 0));
end entity;

architecture ucat_arch of ucat is

 -- Component Declaration

    component cpu
      port ( clock          : in  std_logic;
             reset          : in  std_logic;
             to_memory      : out std_logic_vector (7 downto 0);
             from_memory    : in  std_logic_vector (7 downto 0);             
             address        : out std_logic_vector (7 downto 0);
             write          : out std_logic);    
    end component;

    component memory
      port ( clock          : in   std_logic;
             reset          : in   std_logic;
             address        : in   std_logic_vector (7 downto 0);
             write          : in   std_logic;
             data_in        : in   std_logic_vector (7 downto 0);
             data_out       : out  std_logic_vector (7 downto 0);
             port_in_00     : in   std_logic_vector (7 downto 0);
             port_in_01     : in   std_logic_vector (7 downto 0);
             port_in_02     : in   std_logic_vector (7 downto 0);
             port_in_03     : in   std_logic_vector (7 downto 0);
             port_in_04     : in   std_logic_vector (7 downto 0);
             port_in_05     : in   std_logic_vector (7 downto 0);
             port_in_06     : in   std_logic_vector (7 downto 0);               
             port_in_07     : in   std_logic_vector (7 downto 0);
             port_in_08     : in   std_logic_vector (7 downto 0);
             port_in_09     : in   std_logic_vector (7 downto 0);
             port_in_10     : in   std_logic_vector (7 downto 0);
             port_in_11     : in   std_logic_vector (7 downto 0);
             port_in_12     : in   std_logic_vector (7 downto 0);
             port_in_13     : in   std_logic_vector (7 downto 0);
             port_in_14     : in   std_logic_vector (7 downto 0);
             port_in_15     : in   std_logic_vector (7 downto 0);                                                                   
             port_out_00    : out  std_logic_vector (7 downto 0);
             port_out_01    : out  std_logic_vector (7 downto 0);
             port_out_02    : out  std_logic_vector (7 downto 0);
             port_out_03    : out  std_logic_vector (7 downto 0);
             port_out_04    : out  std_logic_vector (7 downto 0);
             port_out_05    : out  std_logic_vector (7 downto 0);
             port_out_06    : out  std_logic_vector (7 downto 0);
             port_out_07    : out  std_logic_vector (7 downto 0);
             port_out_08    : out  std_logic_vector (7 downto 0);
             port_out_09    : out  std_logic_vector (7 downto 0);
             port_out_10    : out  std_logic_vector (7 downto 0);
             port_out_11    : out  std_logic_vector (7 downto 0);
             port_out_12    : out  std_logic_vector (7 downto 0);
             port_out_13    : out  std_logic_vector (7 downto 0);
             port_out_14    : out  std_logic_vector (7 downto 0);
             port_out_15    : out  std_logic_vector (7 downto 0));
    end component;


 -- Signal Declaration
 
    signal   memory_data_in  : STD_LOGIC_VECTOR (7 downto 0);
    signal   memory_data_out : STD_LOGIC_VECTOR (7 downto 0);    
    signal   memory_address  : STD_LOGIC_VECTOR (7 downto 0);
    signal   memory_write    : STD_LOGIC;
 
    begin

 -- Component Instantiations
    CPU_1 : cpu
      port map ( clock       => clock,
                 reset       => reset,
                 to_memory   => memory_data_in,
                 from_memory => memory_data_out,
                 address     => memory_address,
                 write       => memory_write);    

    MEMORY_1 : memory
	port map ( 	clock       => clock,
				reset       => reset,        
				address     => memory_address,  -- this requires an internal signal
				write       => memory_write,
				data_in     => memory_data_in,  -- this requires an internal signal
				data_out    => memory_data_out, -- this requires an internal signal
				
				port_in_00  => port_in_00,
				port_in_01  => port_in_01,
				port_in_02  => port_in_02,
				port_in_03  => port_in_03,
				port_in_04  => port_in_04,
				port_in_05  => port_in_05,
				port_in_06  => port_in_06,
				port_in_07  => port_in_07,
				port_in_08  => port_in_08,
				port_in_09  => port_in_09,
				port_in_10  => port_in_10,
				port_in_11  => port_in_11,
				port_in_12  => port_in_12,
				port_in_13  => port_in_13,
				port_in_14  => port_in_14,
				port_in_15  => port_in_15,
				
				port_out_00 => port_out_00,
				port_out_01 => port_out_01,
				port_out_02 => port_out_02,
				port_out_03 => port_out_03,
				port_out_04 => port_out_04,
				port_out_05 => port_out_05,
				port_out_06 => port_out_06,
				port_out_07 => port_out_07,
				port_out_08 => port_out_08,
				port_out_09 => port_out_09,
				port_out_10 => port_out_10,
				port_out_11 => port_out_11,
				port_out_12 => port_out_12,
				port_out_13 => port_out_13,
				port_out_14 => port_out_14,
				port_out_15 => port_out_15);
       
end architecture;