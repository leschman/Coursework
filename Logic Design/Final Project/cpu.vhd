------------------------------------------------------------------------------------------------------------
-- File name   : cpu.vhd
--
-- Project     : 8-Bit Microcomputer
--               
-- Description : VHDL model of an 8-bit CPU for use in the uCat computer system
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
  
entity cpu is
    port  ( clock       : in  STD_LOGIC;
            reset       : in  STD_LOGIC;
            to_memory   : out STD_LOGIC_VECTOR (7 downto 0);
            from_memory : in  STD_LOGIC_VECTOR (7 downto 0);             
            address     : out STD_LOGIC_VECTOR (7 downto 0);
            write       : out STD_LOGIC);    
end entity;

architecture cpu_arch of cpu is

 -- Signal Declaration
 
     signal  IR_Load   : STD_LOGIC;
     signal  IR        : STD_LOGIC_VECTOR (7 downto 0);
     signal  MAR_Load  : STD_LOGIC;             
     signal  PC_Load   : STD_LOGIC;
     signal  PC_Inc    : STD_LOGIC;             
     signal  A_Load    : STD_LOGIC;
     signal  B_Load    : STD_LOGIC;             
     signal  ALU_Sel   : STD_LOGIC_VECTOR (2 downto 0);             
     signal  CCR_Result: STD_LOGIC_VECTOR (3 downto 0);
     signal  CCR_Load  : STD_LOGIC;             
     signal  Bus1_Sel  : STD_LOGIC_VECTOR (1 downto 0);                          
     signal  Bus2_Sel  : STD_LOGIC_VECTOR (1 downto 0);


 -- Component Declaration

    component control_unit
      port ( clock     : in  STD_LOGIC;
             reset     : in  STD_LOGIC;
             write     : out STD_LOGIC;
             IR_Load   : out STD_LOGIC;
             IR        : in  STD_LOGIC_VECTOR (7 downto 0);
             MAR_Load  : out STD_LOGIC;             
             PC_Load   : out STD_LOGIC;
             PC_Inc    : out STD_LOGIC;             
             A_Load    : out STD_LOGIC;
             B_Load    : out STD_LOGIC;             
             ALU_Sel   : out STD_LOGIC_VECTOR (2 downto 0);             
             CCR_Result: in  STD_LOGIC_VECTOR (3 downto 0);
             CCR_Load  : out STD_LOGIC;             
             Bus1_Sel  : out STD_LOGIC_VECTOR (1 downto 0);                          
             Bus2_Sel  : out STD_LOGIC_VECTOR (1 downto 0));                          
    end component;

    component processing_unit
      port ( clock       : in  STD_LOGIC;
             reset       : in  STD_LOGIC;
             from_memory : in  STD_LOGIC_VECTOR (7 downto 0);             
             to_memory   : out STD_LOGIC_VECTOR (7 downto 0);
             address     : out STD_LOGIC_VECTOR (7 downto 0);
             IR_Load     : in  STD_LOGIC;
             IR          : out STD_LOGIC_VECTOR (7 downto 0);
             MAR_Load    : in  STD_LOGIC;             
             PC_Load     : in  STD_LOGIC;
             PC_Inc      : in  STD_LOGIC;             
             A_Load      : in  STD_LOGIC;
             B_Load      : in  STD_LOGIC;             
             ALU_Sel     : in  STD_LOGIC_VECTOR (2 downto 0);             
             CCR_Result  : out STD_LOGIC_VECTOR (3 downto 0);
             CCR_Load    : in  STD_LOGIC;             
             Bus1_Sel    : in  STD_LOGIC_VECTOR (1 downto 0);                          
             Bus2_Sel    : in  STD_LOGIC_VECTOR (1 downto 0));                          
    end component;



 begin

 -- Component Instantiations

 CU_1 : Control_unit
  port map ( clock      => clock,
             reset      => reset,
             write      => write,
             IR_Load    => IR_Load,
             IR         => IR,
             MAR_Load   => MAR_Load,
             PC_Load    => PC_Load,
             PC_Inc     => PC_Inc,
             A_Load     => A_load,
             B_Load     => B_Load,
             ALU_Sel    => ALU_Sel,
             CCR_Result => CCR_Result,
             CCR_Load   => CCR_Load,
             Bus1_Sel   => Bus1_Sel,
             Bus2_Sel   => Bus2_Sel);

 PU_1 : processing_unit
  port map ( clock       => clock,
             reset       => reset,
             from_memory => from_memory,  
             to_memory   => to_memory,
             address     => address,
             IR_Load     => IR_Load ,
             IR          => IR,
             MAR_Load    => MAR_Load,             
             PC_Load     => PC_Load,
             PC_Inc      => PC_Inc,             
             A_Load      => A_Load,
             B_Load      => B_Load,
             ALU_Sel     => ALU_Sel,
             CCR_Result  => CCR_Result,
             CCR_Load    => CCR_Load,
             Bus1_Sel    => Bus1_Sel,
             Bus2_Sel    => Bus2_Sel);

end architecture;