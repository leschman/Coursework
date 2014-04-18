------------------------------------------------------------------------------------------------------------
-- File name   : control_unit.vhd
--
-- Project     : 8-Bit Microcomputer
--               
-- Description : VHDL model of the CPU processing unit including
--
-- Author(s)   : Logan Esch	
--
-- Date        : April 18, 2014
--
------------------------------------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity processing_unit is
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
end entity;

architecture processing_unit_arch of processing_unit is
begin
--Component Declaration
	--component alu
	--port();

	--component ccr
	--port();

--Signal Declaration
	signal bus1 	std_logic_vector(7 downto 0):= "00000000";
	signal bus2 	std_logic_vector(7 downto 0):= "00000000";
	signal IRR 		std_logic_vector(7 downto 0):= "00000000";
	signal MAR		std_logic_vector(7 downto 0):= "00000000";
	signal PC		std_logic_vector(7 downto 0):= "00000000";
	signal A 		std_logic_vector(7 downto 0):= "00000000";
	signal B 		std_logic_vector(7 downto 0):= "00000000";
	
	
begin

--Component Instantiation

--Processes
	INSTRUCTION_REGISTER : process(clock)
	begin
		if(reset = '0')then
			IRR <= "00000000";
			IR <= IRR;
		elsif(clock'event and clock = '1') then
			--check if IR_Load is enabled
			if(IR_Load = '1')then
				IRR <= bus2;
				IR <= IRR;
			end if;
		end if;
	end process;
	
	MEMORY_ADDRESS_REGISTER : process(clock)
	begin
		if(reset = '0')then
			MAR <= "00000000";
			address <= MAR;
		elsif(clock'event and clock = '1') then
			--check if MAR_Load is enabled
			if(MAR_Load = '1')then
				MAR <= bus2;
				address <= MAR;
			end if;
		end if;
	end process;
	
	PROGRAM_COUNTER : process(clock)
	begin	
		if(reset = '0')then
			PC <= "00000000";
		elsif(clock'event and clock = '1') then
			--check if PC_LOAD is enabled
			if(PC_Load = '1')then
				PC <= bus2;
				
			--check if PC_Inc is enabled
			elsif(PC_Inc = '1')then
				--increment the PC
				PC <= std_logic_vector(to_unsigned(to_integer(unsigned(PC)) + 1) ,8);
			end if;
		end if;
	end process;
	
	REGISTER_A : process(clock)
	begin
		if(reset = '0')then
			A <= "00000000";
		elsif(clock'event and  clock ='1')then
			--check if A_Load is enabled
			if(A_Load = '1') then
				A <= bus2;
			end if;
		end if;
	end process;
	
	REGISTER_B : process(clock)
	begin
		if(reset = '0')then
			B <= "00000000";
		elsif(clock'event and  clock ='1')then
			--check if B_Load is enabled
			if(B_Load = '1') then
				B <= bus2;
			end if;
		end if;
	end process;
	
	BUS1_MUX : process(clock)
	begin
		if(reset = '0')then
			Bus1 <= "00000000";
		elsif(clock'event and clock = '1')then
			case bus1_sel is
			when "00" => bus1 <= pc;
			when "01" => bus1 <= A;
			when "10" => bus1 <= B;
			when others => bus1 <= "00000000";
			end case;
		end if;
	end process;
	
	BUS2_MUX : process(clock)
	begin
		if(reset = '0')then
			Bus2 <= "00000000";
		elsif(clock'event and clock = '1')then
			case bus2_sel is
			--when "00" => bus2 <= ALU_out;
			when "01" => bus2 <= bus1;
			when "10" => bus2 <= from_memory;
			when others => bus2 <= "00000000";
			end case;
		end if;
	end process;

	to_memory <= Bus1;

	
end architecture;
