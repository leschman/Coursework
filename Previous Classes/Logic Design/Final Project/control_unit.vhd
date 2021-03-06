------------------------------------------------------------------------------------------------------------
-- File name   : control_unit.vhd
--
-- Project     : 8-Bit Microcomputer
--               
-- Description : VHDL model of the CPU control finite state machine
--
-- Author(s)   : Logan Esch
--
-- Date        : April 18, 2014
--
------------------------------------------------------------------------------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;

entity control_unit is
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
             Bus2_Sel  : out STD_LOGIC_VECTOR (1 downto 0);
			 Bus3_Sel  : out STD_LOGIC);    
end entity;

architecture control_unit_arch of control_unit is

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
	
--Constants for Processing Unit MUX control
	constant PC		: std_logic_vector(1 downto 0)	:= "00";
	constant A		: std_logic_vector(1 downto 0)	:= "01";
	constant B		: std_logic_vector(1 downto 0)	:= "10";
	
	constant ALU	: std_logic_vector(1 downto 0)	:= "00";
	constant BUS1	: std_logic_vector(1 downto 0)	:= "01";
	constant FROM_MEMORY	: std_logic_vector(1 downto 0)	:= "10";
	
--Constants for ALU Control
	constant ALU_ADD: std_logic_vector(2 downto 0) := "000";
	constant ALU_SUB: std_logic_vector(2 downto 0) := "001";
	constant ALU_AND: std_logic_vector(2 downto 0) := "010";
	constant ALU_OR : std_logic_vector(2 downto 0) := "011";

	

	type state is(	S_FETCH_0, 		S_FETCH_1, 		S_FETCH_2, 		S_DECODE_3, 
					S_LDA_IMM_4, 	S_LDA_IMM_5,	S_LDA_IMM_6,
					S_LDB_IMM_4,	S_LDB_IMM_5,	S_LDB_IMM_6,
					S_LDA_DIR_4,	S_LDA_DIR_5,	S_LDA_DIR_6,	S_LDA_DIR_7,	S_LDA_DIR_8,
					S_LDB_DIR_4,	S_LDB_DIR_5,	S_LDB_DIR_6,	S_LDB_DIR_7,	S_LDB_DIR_8,
					S_STA_DIR_4,	S_STA_DIR_5,	S_STA_DIR_6,	S_STA_DIR_7,
					S_STB_DIR_4,	S_STB_DIR_5,	S_STB_DIR_6,	S_STB_DIR_7,
					S_BRA_4,		S_BRA_5,		S_BRA_6,
					S_BEQ_4,		S_BEQ_5,		S_BEQ_6,
					S_ADD_4,		S_ADD_5,		S_ADD_6,
					S_SUB_4,		S_SUB_5,		S_SUB_6,
					S_AND_4,		S_AND_5,		S_AND_6,
					S_OR_4,			S_OR_5,			S_OR_6,
					S_INCA_4,		S_INCA_5,		S_INCA_6,
					S_INCB_4,		S_INCB_5,		S_INCB_6,
					S_DECA_4,		S_DECA_5,		S_DECA_6,
					S_DECB_4,		S_DECB_5,		S_DECB_6);
	signal currentState, nextState : state;

begin
	CLOCKPROCESS : process(clock, reset)
	begin
		if(reset = '0')then
			currentState <= S_FETCH_0;

		elsif(clock'event and clock = '1')then
			currentState <= nextState;
		else
			currentState <= currentState;
		end if;
	end process;

	UPDATE_STATE : process(currentState)
	begin
		case currentState is
------------------------------------------------------------------------------------------------
--								 FETCH
------------------------------------------------------------------------------------------------
		--Place the PC Value into the MAR in order to provide the address for the OpCode.
		when S_FETCH_0 =>
			IR_Load <= '0'; 
			A_Load <= '0';
			B_Load <= '0';
			write <= '0';
			pc_load <= '0';
			pc_inc <= '0';
			ALU_sel <= "000";
			CCR_Load <= '0';
			bus1_sel <= PC;
			bus2_sel <= BUS1;
			bus3_sel <= '0';
			MAR_Load <= '1';
			nextState <= S_FETCH_1;
			
		--Put the OpCode arriving on From_Memory on Bus2, Increment PC_Inc.
		when S_FETCH_1 =>
			MAR_Load <= '0';
			bus2_sel <= from_memory;
			PC_Inc <= '1';
			nextState <= S_FETCH_2;
			
		--Latch the OpCode from Bus2 into IR.
		when S_FETCH_2 =>
			PC_Inc <= '0';
			IR_Load <= '1';
			nextState <= S_DECODE_3;
		
		--Decode the OpCode and determine the next sequence.
		when S_DECODE_3 =>
			IR_Load <= '0';
			case IR is
			when LDA_IMM 	=> nextState <= S_LDA_IMM_4;
			when LDB_IMM 	=> nextState <= S_LDB_IMM_4;
			when LDA_DIR 	=> nextState <= S_LDA_DIR_4;
			when LDB_DIR 	=> nextState <= S_LDB_DIR_4;
			when STA_DIR 	=> nextState <= S_STA_DIR_4;
			when STB_DIR 	=> nextState <= S_STB_DIR_4;
			when BRA 		=> nextState <= S_BRA_4;
			when BEQ 		=> nextState <= S_BEQ_4;
			when ADD_AB		=> nextState <= S_ADD_4;
			when SUB_AB		=> nextState <= S_SUB_4;
			when AND_AB		=> nextState <= S_AND_4;
			when OR_AB		=> nextState <= S_OR_4;
			when INCA		=> nextState <= S_INCA_4;
			when INCB		=> nextState <= S_INCB_4;
			when DECA		=> nextState <= S_DECA_4;
			when DECB		=> nextState <= S_DECB_4;
			when others 	=> nextState <= S_FETCH_0;
			end case;
------------------------------------------------------------------------------------------------
--								 LDA_IMM
------------------------------------------------------------------------------------------------		
		--PC is pointing at address to load, move PC to MAR
		when S_LDA_IMM_4 =>
			Bus1_Sel <= PC;
			Bus2_Sel <= bus1;
			MAR_Load <= '1';
			nextState <= S_LDA_IMM_5;
			
		--Move the Operand on From_Memory onto Bus2, Increment PC_Inc.
		when S_LDA_IMM_5 =>
			MAR_Load <= '0';
			Bus2_sel <= from_memory;
			pc_inc <= '1';
			nextState <= S_LDA_IMM_6;
		
		--Latch the Operand from Bus2 into A.
		when S_LDA_IMM_6 =>
			pc_inc <= '0';
			A_Load <= '1';
			nextState <= S_FETCH_0;
------------------------------------------------------------------------------------------------
--								 LDB_IMM
------------------------------------------------------------------------------------------------		
		--PC is pointing at address to load, move PC to MAR
		when S_LDB_IMM_4 =>
			Bus1_Sel <= PC;
			Bus2_Sel <= bus1;
			MAR_Load <= '1';
			nextState <= S_LDB_IMM_5;
			
		--Move the Operand on From_Memory onto Bus2, Increment PC_Inc.
		when S_LDB_IMM_5 =>
			MAR_Load <= '0';
			Bus2_sel <= from_memory;
			pc_inc <= '1';
			nextState <= S_LDB_IMM_6;
		
		--Latch the Operand from Bus2 into B.
		when S_LDB_IMM_6 =>
			pc_inc <= '0';
			B_Load <= '1';
			nextState <= S_FETCH_0;
------------------------------------------------------------------------------------------------
--								 LDA_DIR
------------------------------------------------------------------------------------------------		
		--PC is pointing to the address of the cell we are moving into A. Move PC to MAR. 
		when S_LDA_DIR_4 =>
			BUS1_SEL <= PC;
			Bus2_sel <= BUS1;
			MAR_Load <= '1';
			nextState <= S_LDA_DIR_5;
		
		--Move From_Memory onto Bus2, Increment PC_Inc.
		when S_LDA_DIR_5 =>
			MAR_Load <= '0';
			Bus2_sel <= from_memory;
			PC_Inc <= '1';
			nextState <= S_LDA_DIR_6;
		
		--Address we are reading from is on Bus2, latch into MAR.
		when S_LDA_DIR_6 =>
			PC_Inc <= '0';
			MAR_Load <= '1';
			nextState <= S_LDA_DIR_7;
		
		--MAR is pointing to the Read Address, move data onto Bus2.
		when S_LDA_DIR_7 =>
			MAR_Load <= '0';
			Bus2_Sel <= from_memory;
			nextState <= S_LDA_DIR_8;
		
		--Data is on Bus2, latch into A.
		when S_LDA_DIR_8 =>
			A_Load <= '1';
			nextState <= S_FETCH_0;
------------------------------------------------------------------------------------------------
--								 LDB_DIR
------------------------------------------------------------------------------------------------		
		--PC is pointing to the address of the cell we are moving into B. Move PC to MAR. 
		when S_LDB_DIR_4 =>
			BUS1_SEL <= PC;
			Bus2_sel <= BUS1;
			MAR_Load <= '1';
			nextState <= S_LDB_DIR_5;
		
		--Move From_Memory onto Bus2, Increment PC_Inc.
		when S_LDB_DIR_5 =>
			MAR_Load <= '0';
			Bus2_sel <= from_memory;
			PC_Inc <= '1';
			nextState <= S_LDB_DIR_6;
		
		--Address we are reading from is on Bus2, latch into MAR.
		when S_LDB_DIR_6 =>
			PC_Inc <= '0';
			MAR_Load <= '1';
			nextState <= S_LDB_DIR_7;
		
		--MAR is pointing to the Read Address, move data onto Bus2.
		when S_LDB_DIR_7 =>
			MAR_Load <= '0';
			Bus2_Sel <= from_memory;
			nextState <= S_LDB_DIR_8;
		
		--Data is on Bus2, latch into B.
		when S_LDB_DIR_8 =>
			B_Load <= '1';
			nextState <= S_FETCH_0;
------------------------------------------------------------------------------------------------
--								 STA_DIR
------------------------------------------------------------------------------------------------			
		--PC is pointing to the address we are moving A to. Move PC to MAR. 
		when S_STA_DIR_4 =>
			BUS1_SEL <= PC;
			Bus2_sel <= BUS1;
			MAR_Load <= '1';
			nextState <= S_STA_DIR_5;
		
		--Move From_Memory onto Bus2, Increment PC_Inc.
		when S_STA_DIR_5 =>
			MAR_Load <= '0';
			Bus2_sel <= from_memory;
			PC_Inc <= '1';
			nextState <= S_STA_DIR_6;
		
		--Address we are writing to is on Bus2, latch into MAR.
		when S_STA_DIR_6 =>
			PC_Inc <= '0';
			MAR_Load <= '1';
			nextState <= S_STA_DIR_7;
		
		--MAR is pointing to the Write Address, Move A to Bus1, assert Write.
		when S_STA_DIR_7 =>
			MAR_Load <= '0';
			Bus1_Sel <= A;
			write <= '1';
			nextState <= S_FETCH_0;
------------------------------------------------------------------------------------------------
--								 STB_DIR
------------------------------------------------------------------------------------------------			
		--PC is pointing to the address we are moving B to. Move PC to MAR. 
		when S_STB_DIR_4 =>
			BUS1_SEL <= PC;
			Bus2_sel <= BUS1;
			MAR_Load <= '1';
			nextState <= S_STB_DIR_5;
		
		--Move From_Memory onto Bus2, Increment PC_Inc.
		when S_STB_DIR_5 =>
			MAR_Load <= '0';
			Bus2_sel <= from_memory;
			PC_Inc <= '1';
			nextState <= S_STB_DIR_6;
		
		--Address we are writing to is on Bus2, latch into MAR.
		when S_STB_DIR_6 =>
			PC_Inc <= '0';
			MAR_Load <= '1';
			nextState <= S_STB_DIR_7;
		
		--MAR is pointing to the Write Address, Move B to Bus1, assert Write.
		when S_STB_DIR_7 =>
			MAR_Load <= '0';
			Bus1_Sel <= B;
			write <= '1';
			nextState <= S_FETCH_0;
------------------------------------------------------------------------------------------------
--								 BRA
------------------------------------------------------------------------------------------------		
		--PC is pointing to operand we are jumping to. Move PC to MAR.
		when S_BRA_4 =>
			bus1_sel <= PC;
			bus2_sel <= bus1;
			mar_load <= '1';
			nextState <= S_Bra_5;
		
		--Move operand onto Bus2 from From_Memory.
		when S_BRA_5 =>
			mar_load <= '0';
			bus2_sel <= from_memory;
			nextState <= S_Bra_6;
			
		--Load Bus2 into PC.
		when S_BRA_6 =>
			PC_Load <= '1';
			nextState <= S_Fetch_0;
------------------------------------------------------------------------------------------------
--								 BEQ
------------------------------------------------------------------------------------------------		
		 
		when S_BEQ_4 =>
			if(CCR_Result(1) = '1') then
			--Equal, proceed with branching.
			--PC is pointing to the address of the cell we maybe moving into IR. Move PC to MAR.
				BUS1_SEL <= PC;
				Bus2_sel <= BUS1;
				MAR_Load <= '1';
				nextState <= S_BEQ_5;
			else
			--Not equal, skip branching, increment PC and return.
				pc_inc <= '1';
				nextState <= S_FETCH_0;
			end if;
		
		--Move From_Memory onto Bus2, 
		when S_BEQ_5 =>
			MAR_Load <= '0';
			Bus2_sel <= from_memory;
			PC_Inc <= '1';
			nextState <= S_BEQ_6;
		
		--Address we are jumping to is on Bus2, latch into pc.
		when S_BEQ_6 =>
			PC_Inc <= '0';
			PC_Load <= '1';
			nextState <= S_FETCH_0;
		
------------------------------------------------------------------------------------------------
--								 ADD
------------------------------------------------------------------------------------------------
		--PC is already pointing to next instruction, leave it be. 
		--Tell ALU to ADD, Move A onto BUS1.
		when S_ADD_4 =>
			bus1_sel <= A;
			bus3_sel <= '0';			
			ALU_sel <= ALU_add;
			nextState <= S_ADD_5;
		
		--open MUX to move results onto BUS2.
		when S_ADD_5 =>
			bus2_sel <= ALU;
			nextState <= S_ADD_6;
			
		--load results into A and CCR.
		when S_ADD_6 =>
			ccr_load <= '1';
			a_load <= '1';
			nextState <= S_Fetch_0;
------------------------------------------------------------------------------------------------
--								 SUB
------------------------------------------------------------------------------------------------
		--PC is already pointing to next instruction, leave it be. 
		--Tell ALU to SUB, move A onto BUS1.
		when S_SUB_4 =>
			bus1_sel <= A;
			bus3_sel <= '0';
			ALU_sel <= ALU_SUB;
			nextState <= S_SUB_5;
		
		--Open MUX to move results onto BUS2.
		when S_SUB_5 =>
			bus2_sel <= ALU;
			nextState <= S_SUB_6;
			
		--load results into A and CCR.
		when S_SUB_6 =>
			ccr_load <= '1';
			a_load <= '1';
			nextState <= S_Fetch_0;
------------------------------------------------------------------------------------------------
--								 AND
------------------------------------------------------------------------------------------------
		--PC is already pointing to next instruction, leave it be. 
		--Tell ALU to AND, move A onto BUS1.
		when S_AND_4 =>
			bus1_sel <= A;
			bus3_sel <= '0';
			ALU_sel <= ALU_AND;
			nextState <= S_AND_5;
		
		--Open MUX to move results onto BUS2.
		when S_AND_5 =>
			bus2_sel <= ALU;
			nextState <= S_AND_6;
			
		--load results into A and CCR.
		when S_AND_6 =>
			ccr_load <= '1';
			a_load <= '1';
			nextState <= S_Fetch_0;
------------------------------------------------------------------------------------------------
--								 OR
------------------------------------------------------------------------------------------------
		--PC is already pointing to next instruction, leave it be. 
		--Tell ALU to OR, move A onto BUS1.
		when S_OR_4 =>
			bus1_sel <= A;
			bus3_sel <= '0';
			ALU_sel <= ALU_OR;
			nextState <= S_OR_5;
		
		--Open MUX to move results onto BUS2.
		when S_OR_5 =>
			bus2_sel <= ALU;
			nextState <= S_OR_6;
			
		--load results into A and CCR.
		when S_OR_6 =>
			ccr_load <= '1';
			a_load <= '1';
			nextState <= S_Fetch_0;
------------------------------------------------------------------------------------------------
--								 INCA
------------------------------------------------------------------------------------------------
		--PC is already pointing to next instruction, leave it be. 
		--Tell ALU to ADD, move A onto BUS1.
		--move One onto bus3.
		when S_INCA_4 =>
			bus1_sel <= A;
			bus3_sel <= '1';
			ALU_sel <= ALU_ADD;
			nextState <= S_INCA_5;
		
		--Open MUX to move results onto BUS2.
		when S_INCA_5 =>
			bus2_sel <= ALU;
			nextState <= S_INCA_6;
			
		--load results into A and CCR.
		when S_INCA_6 =>
			ccr_load <= '1';
			a_load <= '1';
			nextState <= S_Fetch_0;
------------------------------------------------------------------------------------------------
--								 INCB
------------------------------------------------------------------------------------------------
		--PC is already pointing to next instruction, leave it be. 
		--Tell ALU to ADD, move B onto BUS1.
		--move One onto bus3.
		when S_INCB_4 =>
			bus1_sel <= B;
			bus3_sel <= '1';
			ALU_sel <= ALU_ADD;
			nextState <= S_INCB_5;
		
		--Open MUX to move results onto BUS2.
		when S_INCB_5 =>
			bus2_sel <= ALU;
			nextState <= S_INCB_6;
			
		--load results into B and CCR.
		when S_INCB_6 =>
			ccr_load <= '1';
			b_load <= '1';
			nextState <= S_Fetch_0;
------------------------------------------------------------------------------------------------
--								 DECA
------------------------------------------------------------------------------------------------
		--PC is already pointing to next instruction, leave it be. 
		--Tell ALU to ADD, move A onto BUS1.
		--move One onto bus3.
		when S_DECA_4 =>
			bus1_sel <= A;
			bus3_sel <= '1';
			ALU_sel <= ALU_SUB;
			nextState <= S_DECA_5;
		
		--Open MUX to move results onto BUS2.
		when S_DECA_5 =>
			bus2_sel <= ALU;
			nextState <= S_DECA_6;
			
		--load results into B and CCR.
		when S_DECA_6 =>
			ccr_load <= '1';
			A_load <= '1';
			nextState <= S_Fetch_0;
------------------------------------------------------------------------------------------------
--								 DECB
------------------------------------------------------------------------------------------------
		--PC is already pointing to next instruction, leave it be. 
		--Tell ALU to ADD, move A onto BUS1.
		--move One onto bus3.
		when S_DECB_4 =>
			bus1_sel <= B;
			bus3_sel <= '1';
			ALU_sel <= ALU_SUB;
			nextState <= S_DECB_5;
		
		--Open MUX to move results onto BUS2.
		when S_DECB_5 =>
			bus2_sel <= ALU;
			nextState <= S_DECB_6;
			
		--load results into B and CCR.
		when S_DECB_6 =>
			ccr_load <= '1';
			B_load <= '1';
			nextState <= S_Fetch_0;
------------------------------------------------------------------------------------------------
--								 OTHERS
------------------------------------------------------------------------------------------------		
		when others => nextState <= S_FETCH_0;
		end case;
	end process;	
			
			


end architecture;
