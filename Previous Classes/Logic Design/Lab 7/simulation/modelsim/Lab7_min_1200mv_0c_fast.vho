-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Full Version"

-- DATE "02/26/2014 18:07:15"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	lab7 IS
    PORT (
	clock : IN std_logic;
	reset : IN std_logic;
	SW1 : IN STD.STANDARD.bit_vector(7 DOWNTO 0);
	SW2 : IN STD.STANDARD.bit_vector(7 DOWNTO 0);
	LED_Red : OUT STD.STANDARD.bit_vector(7 DOWNTO 0);
	LED_Blue : OUT STD.STANDARD.bit_vector(7 DOWNTO 0);
	LED17 : OUT STD.STANDARD.bit_vector(7 DOWNTO 0);
	LED18 : OUT STD.STANDARD.bit_vector(7 DOWNTO 0);
	LED19 : OUT STD.STANDARD.bit_vector(7 DOWNTO 0);
	LED20 : OUT STD.STANDARD.bit_vector(7 DOWNTO 0)
	);
END lab7;

-- Design Ports Information
-- SW1[0]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW1[1]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW1[2]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW1[3]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW1[4]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW1[5]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW1[6]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW1[7]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_Red[0]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_Red[1]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_Red[2]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_Red[3]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_Red[4]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_Red[5]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_Red[6]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_Red[7]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_Blue[0]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_Blue[1]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_Blue[2]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_Blue[3]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_Blue[4]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_Blue[5]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_Blue[6]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_Blue[7]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED17[0]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED17[1]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED17[2]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED17[3]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED17[4]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED17[5]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED17[6]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED17[7]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED18[0]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED18[1]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED18[2]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED18[3]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED18[4]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED18[5]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED18[6]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED18[7]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED19[0]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED19[1]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED19[2]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED19[3]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED19[4]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED19[5]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED19[6]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED19[7]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED20[0]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED20[1]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED20[2]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED20[3]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED20[4]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED20[5]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED20[6]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED20[7]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW2[2]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW2[3]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW2[4]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW2[5]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW2[6]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW2[7]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW2[0]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW2[1]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab7 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_SW1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_SW2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_LED_Red : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_LED_Blue : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_LED17 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_LED18 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_LED19 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_LED20 : std_logic_vector(7 DOWNTO 0);
SIGNAL \cdiv|dflipflop22|Qn~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cdiv|dflipflop23|Q~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW1[0]~input_o\ : std_logic;
SIGNAL \SW1[1]~input_o\ : std_logic;
SIGNAL \SW1[2]~input_o\ : std_logic;
SIGNAL \SW1[3]~input_o\ : std_logic;
SIGNAL \SW1[4]~input_o\ : std_logic;
SIGNAL \SW1[5]~input_o\ : std_logic;
SIGNAL \SW1[6]~input_o\ : std_logic;
SIGNAL \SW1[7]~input_o\ : std_logic;
SIGNAL \LED_Red[0]~output_o\ : std_logic;
SIGNAL \LED_Red[1]~output_o\ : std_logic;
SIGNAL \LED_Red[2]~output_o\ : std_logic;
SIGNAL \LED_Red[3]~output_o\ : std_logic;
SIGNAL \LED_Red[4]~output_o\ : std_logic;
SIGNAL \LED_Red[5]~output_o\ : std_logic;
SIGNAL \LED_Red[6]~output_o\ : std_logic;
SIGNAL \LED_Red[7]~output_o\ : std_logic;
SIGNAL \LED_Blue[0]~output_o\ : std_logic;
SIGNAL \LED_Blue[1]~output_o\ : std_logic;
SIGNAL \LED_Blue[2]~output_o\ : std_logic;
SIGNAL \LED_Blue[3]~output_o\ : std_logic;
SIGNAL \LED_Blue[4]~output_o\ : std_logic;
SIGNAL \LED_Blue[5]~output_o\ : std_logic;
SIGNAL \LED_Blue[6]~output_o\ : std_logic;
SIGNAL \LED_Blue[7]~output_o\ : std_logic;
SIGNAL \LED17[0]~output_o\ : std_logic;
SIGNAL \LED17[1]~output_o\ : std_logic;
SIGNAL \LED17[2]~output_o\ : std_logic;
SIGNAL \LED17[3]~output_o\ : std_logic;
SIGNAL \LED17[4]~output_o\ : std_logic;
SIGNAL \LED17[5]~output_o\ : std_logic;
SIGNAL \LED17[6]~output_o\ : std_logic;
SIGNAL \LED17[7]~output_o\ : std_logic;
SIGNAL \LED18[0]~output_o\ : std_logic;
SIGNAL \LED18[1]~output_o\ : std_logic;
SIGNAL \LED18[2]~output_o\ : std_logic;
SIGNAL \LED18[3]~output_o\ : std_logic;
SIGNAL \LED18[4]~output_o\ : std_logic;
SIGNAL \LED18[5]~output_o\ : std_logic;
SIGNAL \LED18[6]~output_o\ : std_logic;
SIGNAL \LED18[7]~output_o\ : std_logic;
SIGNAL \LED19[0]~output_o\ : std_logic;
SIGNAL \LED19[1]~output_o\ : std_logic;
SIGNAL \LED19[2]~output_o\ : std_logic;
SIGNAL \LED19[3]~output_o\ : std_logic;
SIGNAL \LED19[4]~output_o\ : std_logic;
SIGNAL \LED19[5]~output_o\ : std_logic;
SIGNAL \LED19[6]~output_o\ : std_logic;
SIGNAL \LED19[7]~output_o\ : std_logic;
SIGNAL \LED20[0]~output_o\ : std_logic;
SIGNAL \LED20[1]~output_o\ : std_logic;
SIGNAL \LED20[2]~output_o\ : std_logic;
SIGNAL \LED20[3]~output_o\ : std_logic;
SIGNAL \LED20[4]~output_o\ : std_logic;
SIGNAL \LED20[5]~output_o\ : std_logic;
SIGNAL \LED20[6]~output_o\ : std_logic;
SIGNAL \LED20[7]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \cdiv|dflipflop0|Qn~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \cdiv|dflipflop0|Qn~q\ : std_logic;
SIGNAL \cdiv|dflipflop1|Qn~0_combout\ : std_logic;
SIGNAL \cdiv|dflipflop1|Qn~feeder_combout\ : std_logic;
SIGNAL \cdiv|dflipflop1|Qn~q\ : std_logic;
SIGNAL \cdiv|dflipflop2|Qn~0_combout\ : std_logic;
SIGNAL \cdiv|dflipflop2|Qn~feeder_combout\ : std_logic;
SIGNAL \cdiv|dflipflop2|Qn~q\ : std_logic;
SIGNAL \cdiv|dflipflop3|Qn~0_combout\ : std_logic;
SIGNAL \cdiv|dflipflop3|Qn~feeder_combout\ : std_logic;
SIGNAL \cdiv|dflipflop3|Qn~q\ : std_logic;
SIGNAL \cdiv|dflipflop4|Qn~0_combout\ : std_logic;
SIGNAL \cdiv|dflipflop4|Qn~feeder_combout\ : std_logic;
SIGNAL \cdiv|dflipflop4|Qn~q\ : std_logic;
SIGNAL \cdiv|dflipflop5|Qn~0_combout\ : std_logic;
SIGNAL \cdiv|dflipflop5|Qn~feeder_combout\ : std_logic;
SIGNAL \cdiv|dflipflop5|Qn~q\ : std_logic;
SIGNAL \cdiv|dflipflop6|Qn~0_combout\ : std_logic;
SIGNAL \cdiv|dflipflop6|Qn~feeder_combout\ : std_logic;
SIGNAL \cdiv|dflipflop6|Qn~q\ : std_logic;
SIGNAL \cdiv|dflipflop7|Qn~0_combout\ : std_logic;
SIGNAL \cdiv|dflipflop7|Qn~feeder_combout\ : std_logic;
SIGNAL \cdiv|dflipflop7|Qn~q\ : std_logic;
SIGNAL \cdiv|dflipflop8|Qn~0_combout\ : std_logic;
SIGNAL \cdiv|dflipflop8|Qn~feeder_combout\ : std_logic;
SIGNAL \cdiv|dflipflop8|Qn~q\ : std_logic;
SIGNAL \cdiv|dflipflop9|Qn~0_combout\ : std_logic;
SIGNAL \cdiv|dflipflop9|Qn~feeder_combout\ : std_logic;
SIGNAL \cdiv|dflipflop9|Qn~q\ : std_logic;
SIGNAL \cdiv|dflipflop10|Qn~0_combout\ : std_logic;
SIGNAL \cdiv|dflipflop10|Qn~feeder_combout\ : std_logic;
SIGNAL \cdiv|dflipflop10|Qn~q\ : std_logic;
SIGNAL \cdiv|dflipflop11|Qn~0_combout\ : std_logic;
SIGNAL \cdiv|dflipflop11|Qn~feeder_combout\ : std_logic;
SIGNAL \cdiv|dflipflop11|Qn~q\ : std_logic;
SIGNAL \cdiv|dflipflop12|Qn~0_combout\ : std_logic;
SIGNAL \cdiv|dflipflop12|Qn~feeder_combout\ : std_logic;
SIGNAL \cdiv|dflipflop12|Qn~q\ : std_logic;
SIGNAL \cdiv|dflipflop13|Qn~0_combout\ : std_logic;
SIGNAL \cdiv|dflipflop13|Qn~q\ : std_logic;
SIGNAL \cdiv|dflipflop14|Qn~0_combout\ : std_logic;
SIGNAL \cdiv|dflipflop14|Qn~feeder_combout\ : std_logic;
SIGNAL \cdiv|dflipflop14|Qn~q\ : std_logic;
SIGNAL \cdiv|dflipflop15|Qn~0_combout\ : std_logic;
SIGNAL \cdiv|dflipflop15|Qn~feeder_combout\ : std_logic;
SIGNAL \cdiv|dflipflop15|Qn~q\ : std_logic;
SIGNAL \cdiv|dflipflop16|Qn~0_combout\ : std_logic;
SIGNAL \cdiv|dflipflop16|Qn~q\ : std_logic;
SIGNAL \cdiv|dflipflop17|Qn~0_combout\ : std_logic;
SIGNAL \cdiv|dflipflop17|Qn~feeder_combout\ : std_logic;
SIGNAL \cdiv|dflipflop17|Qn~q\ : std_logic;
SIGNAL \cdiv|dflipflop18|Qn~0_combout\ : std_logic;
SIGNAL \cdiv|dflipflop18|Qn~feeder_combout\ : std_logic;
SIGNAL \cdiv|dflipflop18|Qn~q\ : std_logic;
SIGNAL \cdiv|dflipflop19|Qn~0_combout\ : std_logic;
SIGNAL \cdiv|dflipflop19|Qn~feeder_combout\ : std_logic;
SIGNAL \cdiv|dflipflop19|Qn~q\ : std_logic;
SIGNAL \cdiv|dflipflop20|Qn~0_combout\ : std_logic;
SIGNAL \cdiv|dflipflop20|Qn~feeder_combout\ : std_logic;
SIGNAL \cdiv|dflipflop20|Qn~q\ : std_logic;
SIGNAL \cdiv|dflipflop21|Qn~0_combout\ : std_logic;
SIGNAL \cdiv|dflipflop21|Qn~feeder_combout\ : std_logic;
SIGNAL \cdiv|dflipflop21|Qn~q\ : std_logic;
SIGNAL \cdiv|dflipflop22|Qn~0_combout\ : std_logic;
SIGNAL \cdiv|dflipflop22|Qn~feeder_combout\ : std_logic;
SIGNAL \cdiv|dflipflop22|Qn~q\ : std_logic;
SIGNAL \cdiv|dflipflop22|Qn~clkctrl_outclk\ : std_logic;
SIGNAL \cdiv|dflipflop23|Qn~0_combout\ : std_logic;
SIGNAL \cdiv|dflipflop23|Qn~q\ : std_logic;
SIGNAL \cdiv|dflipflop23|Q~0_combout\ : std_logic;
SIGNAL \cdiv|dflipflop23|Q~q\ : std_logic;
SIGNAL \cdiv|dflipflop23|Q~clkctrl_outclk\ : std_logic;
SIGNAL \SW2[6]~input_o\ : std_logic;
SIGNAL \SW2[2]~input_o\ : std_logic;
SIGNAL \SW2[5]~input_o\ : std_logic;
SIGNAL \SW2[4]~input_o\ : std_logic;
SIGNAL \SW2[3]~input_o\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \SW2[7]~input_o\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \SW2[1]~input_o\ : std_logic;
SIGNAL \SW2[0]~input_o\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \currentState.s0~0_combout\ : std_logic;
SIGNAL \currentState.s0~q\ : std_logic;
SIGNAL \currentState.s1~0_combout\ : std_logic;
SIGNAL \currentState.s1~q\ : std_logic;
SIGNAL \nextState.s12~2_combout\ : std_logic;
SIGNAL \currentState.s12~q\ : std_logic;
SIGNAL \currentState.s13~q\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \nextState.s15~2_combout\ : std_logic;
SIGNAL \currentState.s15~q\ : std_logic;
SIGNAL \currentState.s14~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \currentState.s2~q\ : std_logic;
SIGNAL \currentState.s3~q\ : std_logic;
SIGNAL \currentState.s4~q\ : std_logic;
SIGNAL \currentState.s5~feeder_combout\ : std_logic;
SIGNAL \currentState.s5~q\ : std_logic;
SIGNAL \currentState.s6~feeder_combout\ : std_logic;
SIGNAL \currentState.s6~q\ : std_logic;
SIGNAL \currentState.s7~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \currentState.s8~q\ : std_logic;
SIGNAL \currentState.s9~q\ : std_logic;
SIGNAL \currentState.s10~q\ : std_logic;
SIGNAL \currentState.s11~feeder_combout\ : std_logic;
SIGNAL \currentState.s11~q\ : std_logic;
SIGNAL \LED17~0_combout\ : std_logic;
SIGNAL \LED17~1_combout\ : std_logic;
SIGNAL \LED17~2_combout\ : std_logic;
SIGNAL \LED17~3_combout\ : std_logic;
SIGNAL \LED18~0_combout\ : std_logic;
SIGNAL \oldState.s13~q\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \LED18~1_combout\ : std_logic;
SIGNAL \oldState.s14~q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \LED19~0_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \LED19~1_combout\ : std_logic;
SIGNAL \LED20~0_combout\ : std_logic;
SIGNAL \LED20~1_combout\ : std_logic;
SIGNAL \LED20~2_combout\ : std_logic;
SIGNAL \LED20~3_combout\ : std_logic;
SIGNAL \cdiv|dflipflop22|ALT_INV_Qn~clkctrl_outclk\ : std_logic;
SIGNAL \cdiv|dflipflop0|ALT_INV_Qn~q\ : std_logic;
SIGNAL \cdiv|dflipflop1|ALT_INV_Qn~q\ : std_logic;
SIGNAL \cdiv|dflipflop2|ALT_INV_Qn~q\ : std_logic;
SIGNAL \cdiv|dflipflop3|ALT_INV_Qn~q\ : std_logic;
SIGNAL \cdiv|dflipflop4|ALT_INV_Qn~q\ : std_logic;
SIGNAL \cdiv|dflipflop5|ALT_INV_Qn~q\ : std_logic;
SIGNAL \cdiv|dflipflop6|ALT_INV_Qn~q\ : std_logic;
SIGNAL \cdiv|dflipflop7|ALT_INV_Qn~q\ : std_logic;
SIGNAL \cdiv|dflipflop8|ALT_INV_Qn~q\ : std_logic;
SIGNAL \cdiv|dflipflop9|ALT_INV_Qn~q\ : std_logic;
SIGNAL \cdiv|dflipflop10|ALT_INV_Qn~q\ : std_logic;
SIGNAL \cdiv|dflipflop11|ALT_INV_Qn~q\ : std_logic;
SIGNAL \cdiv|dflipflop12|ALT_INV_Qn~q\ : std_logic;
SIGNAL \cdiv|dflipflop13|ALT_INV_Qn~q\ : std_logic;
SIGNAL \cdiv|dflipflop14|ALT_INV_Qn~q\ : std_logic;
SIGNAL \cdiv|dflipflop15|ALT_INV_Qn~q\ : std_logic;
SIGNAL \cdiv|dflipflop16|ALT_INV_Qn~q\ : std_logic;
SIGNAL \cdiv|dflipflop17|ALT_INV_Qn~q\ : std_logic;
SIGNAL \cdiv|dflipflop18|ALT_INV_Qn~q\ : std_logic;
SIGNAL \cdiv|dflipflop19|ALT_INV_Qn~q\ : std_logic;
SIGNAL \cdiv|dflipflop20|ALT_INV_Qn~q\ : std_logic;
SIGNAL \cdiv|dflipflop21|ALT_INV_Qn~q\ : std_logic;

BEGIN

ww_clock <= clock;
ww_reset <= reset;
ww_SW1 <= IEEE.STD_LOGIC_1164.TO_STDLOGICVECTOR(SW1);
ww_SW2 <= IEEE.STD_LOGIC_1164.TO_STDLOGICVECTOR(SW2);
LED_Red <= IEEE.STD_LOGIC_1164.TO_BITVECTOR(ww_LED_Red);
LED_Blue <= IEEE.STD_LOGIC_1164.TO_BITVECTOR(ww_LED_Blue);
LED17 <= IEEE.STD_LOGIC_1164.TO_BITVECTOR(ww_LED17);
LED18 <= IEEE.STD_LOGIC_1164.TO_BITVECTOR(ww_LED18);
LED19 <= IEEE.STD_LOGIC_1164.TO_BITVECTOR(ww_LED19);
LED20 <= IEEE.STD_LOGIC_1164.TO_BITVECTOR(ww_LED20);
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\cdiv|dflipflop22|Qn~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \cdiv|dflipflop22|Qn~q\);

\cdiv|dflipflop23|Q~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \cdiv|dflipflop23|Q~q\);
\cdiv|dflipflop22|ALT_INV_Qn~clkctrl_outclk\ <= NOT \cdiv|dflipflop22|Qn~clkctrl_outclk\;
\cdiv|dflipflop0|ALT_INV_Qn~q\ <= NOT \cdiv|dflipflop0|Qn~q\;
\cdiv|dflipflop1|ALT_INV_Qn~q\ <= NOT \cdiv|dflipflop1|Qn~q\;
\cdiv|dflipflop2|ALT_INV_Qn~q\ <= NOT \cdiv|dflipflop2|Qn~q\;
\cdiv|dflipflop3|ALT_INV_Qn~q\ <= NOT \cdiv|dflipflop3|Qn~q\;
\cdiv|dflipflop4|ALT_INV_Qn~q\ <= NOT \cdiv|dflipflop4|Qn~q\;
\cdiv|dflipflop5|ALT_INV_Qn~q\ <= NOT \cdiv|dflipflop5|Qn~q\;
\cdiv|dflipflop6|ALT_INV_Qn~q\ <= NOT \cdiv|dflipflop6|Qn~q\;
\cdiv|dflipflop7|ALT_INV_Qn~q\ <= NOT \cdiv|dflipflop7|Qn~q\;
\cdiv|dflipflop8|ALT_INV_Qn~q\ <= NOT \cdiv|dflipflop8|Qn~q\;
\cdiv|dflipflop9|ALT_INV_Qn~q\ <= NOT \cdiv|dflipflop9|Qn~q\;
\cdiv|dflipflop10|ALT_INV_Qn~q\ <= NOT \cdiv|dflipflop10|Qn~q\;
\cdiv|dflipflop11|ALT_INV_Qn~q\ <= NOT \cdiv|dflipflop11|Qn~q\;
\cdiv|dflipflop12|ALT_INV_Qn~q\ <= NOT \cdiv|dflipflop12|Qn~q\;
\cdiv|dflipflop13|ALT_INV_Qn~q\ <= NOT \cdiv|dflipflop13|Qn~q\;
\cdiv|dflipflop14|ALT_INV_Qn~q\ <= NOT \cdiv|dflipflop14|Qn~q\;
\cdiv|dflipflop15|ALT_INV_Qn~q\ <= NOT \cdiv|dflipflop15|Qn~q\;
\cdiv|dflipflop16|ALT_INV_Qn~q\ <= NOT \cdiv|dflipflop16|Qn~q\;
\cdiv|dflipflop17|ALT_INV_Qn~q\ <= NOT \cdiv|dflipflop17|Qn~q\;
\cdiv|dflipflop18|ALT_INV_Qn~q\ <= NOT \cdiv|dflipflop18|Qn~q\;
\cdiv|dflipflop19|ALT_INV_Qn~q\ <= NOT \cdiv|dflipflop19|Qn~q\;
\cdiv|dflipflop20|ALT_INV_Qn~q\ <= NOT \cdiv|dflipflop20|Qn~q\;
\cdiv|dflipflop21|ALT_INV_Qn~q\ <= NOT \cdiv|dflipflop21|Qn~q\;

-- Location: IOOBUF_X31_Y34_N9
\LED_Red[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED_Red[0]~output_o\);

-- Location: IOOBUF_X31_Y34_N2
\LED_Red[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED_Red[1]~output_o\);

-- Location: IOOBUF_X29_Y34_N16
\LED_Red[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED_Red[2]~output_o\);

-- Location: IOOBUF_X34_Y34_N2
\LED_Red[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED_Red[3]~output_o\);

-- Location: IOOBUF_X20_Y34_N16
\LED_Red[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED_Red[4]~output_o\);

-- Location: IOOBUF_X20_Y34_N9
\LED_Red[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED_Red[5]~output_o\);

-- Location: IOOBUF_X23_Y34_N23
\LED_Red[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED_Red[6]~output_o\);

-- Location: IOOBUF_X16_Y34_N16
\LED_Red[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED_Red[7]~output_o\);

-- Location: IOOBUF_X43_Y34_N23
\LED_Blue[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED_Blue[0]~output_o\);

-- Location: IOOBUF_X51_Y34_N23
\LED_Blue[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED_Blue[1]~output_o\);

-- Location: IOOBUF_X51_Y34_N16
\LED_Blue[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED_Blue[2]~output_o\);

-- Location: IOOBUF_X43_Y34_N16
\LED_Blue[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED_Blue[3]~output_o\);

-- Location: IOOBUF_X40_Y34_N9
\LED_Blue[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED_Blue[4]~output_o\);

-- Location: IOOBUF_X38_Y34_N2
\LED_Blue[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED_Blue[5]~output_o\);

-- Location: IOOBUF_X45_Y34_N16
\LED_Blue[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED_Blue[6]~output_o\);

-- Location: IOOBUF_X45_Y34_N9
\LED_Blue[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED_Blue[7]~output_o\);

-- Location: IOOBUF_X53_Y10_N16
\LED17[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED17[0]~output_o\);

-- Location: IOOBUF_X53_Y6_N23
\LED17[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED17[1]~output_o\);

-- Location: IOOBUF_X53_Y16_N9
\LED17[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LED17~0_combout\,
	devoe => ww_devoe,
	o => \LED17[2]~output_o\);

-- Location: IOOBUF_X53_Y13_N9
\LED17[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LED17~1_combout\,
	devoe => ww_devoe,
	o => \LED17[3]~output_o\);

-- Location: IOOBUF_X43_Y0_N23
\LED17[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LED17~2_combout\,
	devoe => ww_devoe,
	o => \LED17[4]~output_o\);

-- Location: IOOBUF_X53_Y14_N9
\LED17[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED17[5]~output_o\);

-- Location: IOOBUF_X53_Y9_N9
\LED17[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED17[6]~output_o\);

-- Location: IOOBUF_X53_Y15_N9
\LED17[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LED17~3_combout\,
	devoe => ww_devoe,
	o => \LED17[7]~output_o\);

-- Location: IOOBUF_X53_Y7_N9
\LED18[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED18[0]~output_o\);

-- Location: IOOBUF_X53_Y11_N2
\LED18[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED18[1]~output_o\);

-- Location: IOOBUF_X53_Y9_N16
\LED18[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED18[2]~output_o\);

-- Location: IOOBUF_X53_Y9_N23
\LED18[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED18[3]~output_o\);

-- Location: IOOBUF_X53_Y6_N16
\LED18[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LED18~0_combout\,
	devoe => ww_devoe,
	o => \LED18[4]~output_o\);

-- Location: IOOBUF_X49_Y0_N2
\LED18[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector3~0_combout\,
	devoe => ww_devoe,
	o => \LED18[5]~output_o\);

-- Location: IOOBUF_X53_Y8_N23
\LED18[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LED18~1_combout\,
	devoe => ww_devoe,
	o => \LED18[6]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\LED18[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector2~0_combout\,
	devoe => ww_devoe,
	o => \LED18[7]~output_o\);

-- Location: IOOBUF_X34_Y0_N23
\LED19[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED19[0]~output_o\);

-- Location: IOOBUF_X34_Y0_N2
\LED19[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED19[1]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\LED19[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector5~0_combout\,
	devoe => ww_devoe,
	o => \LED19[2]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\LED19[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LED19~0_combout\,
	devoe => ww_devoe,
	o => \LED19[3]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\LED19[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector4~0_combout\,
	devoe => ww_devoe,
	o => \LED19[4]~output_o\);

-- Location: IOOBUF_X47_Y0_N23
\LED19[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED19[5]~output_o\);

-- Location: IOOBUF_X34_Y0_N16
\LED19[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED19[6]~output_o\);

-- Location: IOOBUF_X43_Y0_N16
\LED19[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LED19~1_combout\,
	devoe => ww_devoe,
	o => \LED19[7]~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\LED20[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED20[0]~output_o\);

-- Location: IOOBUF_X45_Y0_N16
\LED20[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED20[1]~output_o\);

-- Location: IOOBUF_X36_Y0_N16
\LED20[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED20[2]~output_o\);

-- Location: IOOBUF_X36_Y0_N9
\LED20[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LED20[3]~output_o\);

-- Location: IOOBUF_X45_Y0_N23
\LED20[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LED20~0_combout\,
	devoe => ww_devoe,
	o => \LED20[4]~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\LED20[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LED20~1_combout\,
	devoe => ww_devoe,
	o => \LED20[5]~output_o\);

-- Location: IOOBUF_X53_Y21_N23
\LED20[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LED20~2_combout\,
	devoe => ww_devoe,
	o => \LED20[6]~output_o\);

-- Location: IOOBUF_X36_Y0_N23
\LED20[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \LED20~3_combout\,
	devoe => ww_devoe,
	o => \LED20[7]~output_o\);

-- Location: IOIBUF_X27_Y0_N22
\clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: LCCOMB_X31_Y4_N16
\cdiv|dflipflop0|Qn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cdiv|dflipflop0|Qn~0_combout\ = !\cdiv|dflipflop0|Qn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cdiv|dflipflop0|Qn~q\,
	combout => \cdiv|dflipflop0|Qn~0_combout\);

-- Location: IOIBUF_X53_Y14_N1
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X31_Y4_N7
\cdiv|dflipflop0|Qn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \cdiv|dflipflop0|Qn~0_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cdiv|dflipflop0|Qn~q\);

-- Location: LCCOMB_X31_Y8_N22
\cdiv|dflipflop1|Qn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cdiv|dflipflop1|Qn~0_combout\ = !\cdiv|dflipflop1|Qn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cdiv|dflipflop1|Qn~q\,
	combout => \cdiv|dflipflop1|Qn~0_combout\);

-- Location: LCCOMB_X31_Y8_N24
\cdiv|dflipflop1|Qn~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \cdiv|dflipflop1|Qn~feeder_combout\ = \cdiv|dflipflop1|Qn~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cdiv|dflipflop1|Qn~0_combout\,
	combout => \cdiv|dflipflop1|Qn~feeder_combout\);

-- Location: FF_X31_Y8_N25
\cdiv|dflipflop1|Qn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cdiv|dflipflop0|ALT_INV_Qn~q\,
	d => \cdiv|dflipflop1|Qn~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cdiv|dflipflop1|Qn~q\);

-- Location: LCCOMB_X31_Y8_N28
\cdiv|dflipflop2|Qn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cdiv|dflipflop2|Qn~0_combout\ = !\cdiv|dflipflop2|Qn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cdiv|dflipflop2|Qn~q\,
	combout => \cdiv|dflipflop2|Qn~0_combout\);

-- Location: LCCOMB_X31_Y8_N14
\cdiv|dflipflop2|Qn~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \cdiv|dflipflop2|Qn~feeder_combout\ = \cdiv|dflipflop2|Qn~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cdiv|dflipflop2|Qn~0_combout\,
	combout => \cdiv|dflipflop2|Qn~feeder_combout\);

-- Location: FF_X31_Y8_N15
\cdiv|dflipflop2|Qn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cdiv|dflipflop1|ALT_INV_Qn~q\,
	d => \cdiv|dflipflop2|Qn~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cdiv|dflipflop2|Qn~q\);

-- Location: LCCOMB_X34_Y8_N4
\cdiv|dflipflop3|Qn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cdiv|dflipflop3|Qn~0_combout\ = !\cdiv|dflipflop3|Qn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cdiv|dflipflop3|Qn~q\,
	combout => \cdiv|dflipflop3|Qn~0_combout\);

-- Location: LCCOMB_X34_Y8_N8
\cdiv|dflipflop3|Qn~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \cdiv|dflipflop3|Qn~feeder_combout\ = \cdiv|dflipflop3|Qn~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cdiv|dflipflop3|Qn~0_combout\,
	combout => \cdiv|dflipflop3|Qn~feeder_combout\);

-- Location: FF_X34_Y8_N9
\cdiv|dflipflop3|Qn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cdiv|dflipflop2|ALT_INV_Qn~q\,
	d => \cdiv|dflipflop3|Qn~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cdiv|dflipflop3|Qn~q\);

-- Location: LCCOMB_X34_Y8_N26
\cdiv|dflipflop4|Qn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cdiv|dflipflop4|Qn~0_combout\ = !\cdiv|dflipflop4|Qn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cdiv|dflipflop4|Qn~q\,
	combout => \cdiv|dflipflop4|Qn~0_combout\);

-- Location: LCCOMB_X34_Y8_N6
\cdiv|dflipflop4|Qn~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \cdiv|dflipflop4|Qn~feeder_combout\ = \cdiv|dflipflop4|Qn~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cdiv|dflipflop4|Qn~0_combout\,
	combout => \cdiv|dflipflop4|Qn~feeder_combout\);

-- Location: FF_X34_Y8_N7
\cdiv|dflipflop4|Qn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cdiv|dflipflop3|ALT_INV_Qn~q\,
	d => \cdiv|dflipflop4|Qn~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cdiv|dflipflop4|Qn~q\);

-- Location: LCCOMB_X35_Y8_N28
\cdiv|dflipflop5|Qn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cdiv|dflipflop5|Qn~0_combout\ = !\cdiv|dflipflop5|Qn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cdiv|dflipflop5|Qn~q\,
	combout => \cdiv|dflipflop5|Qn~0_combout\);

-- Location: LCCOMB_X35_Y8_N24
\cdiv|dflipflop5|Qn~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \cdiv|dflipflop5|Qn~feeder_combout\ = \cdiv|dflipflop5|Qn~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cdiv|dflipflop5|Qn~0_combout\,
	combout => \cdiv|dflipflop5|Qn~feeder_combout\);

-- Location: FF_X35_Y8_N25
\cdiv|dflipflop5|Qn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cdiv|dflipflop4|ALT_INV_Qn~q\,
	d => \cdiv|dflipflop5|Qn~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cdiv|dflipflop5|Qn~q\);

-- Location: LCCOMB_X35_Y8_N26
\cdiv|dflipflop6|Qn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cdiv|dflipflop6|Qn~0_combout\ = !\cdiv|dflipflop6|Qn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cdiv|dflipflop6|Qn~q\,
	combout => \cdiv|dflipflop6|Qn~0_combout\);

-- Location: LCCOMB_X35_Y8_N0
\cdiv|dflipflop6|Qn~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \cdiv|dflipflop6|Qn~feeder_combout\ = \cdiv|dflipflop6|Qn~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cdiv|dflipflop6|Qn~0_combout\,
	combout => \cdiv|dflipflop6|Qn~feeder_combout\);

-- Location: FF_X35_Y8_N1
\cdiv|dflipflop6|Qn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cdiv|dflipflop5|ALT_INV_Qn~q\,
	d => \cdiv|dflipflop6|Qn~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cdiv|dflipflop6|Qn~q\);

-- Location: LCCOMB_X35_Y9_N12
\cdiv|dflipflop7|Qn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cdiv|dflipflop7|Qn~0_combout\ = !\cdiv|dflipflop7|Qn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cdiv|dflipflop7|Qn~q\,
	combout => \cdiv|dflipflop7|Qn~0_combout\);

-- Location: LCCOMB_X35_Y9_N18
\cdiv|dflipflop7|Qn~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \cdiv|dflipflop7|Qn~feeder_combout\ = \cdiv|dflipflop7|Qn~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cdiv|dflipflop7|Qn~0_combout\,
	combout => \cdiv|dflipflop7|Qn~feeder_combout\);

-- Location: FF_X35_Y9_N19
\cdiv|dflipflop7|Qn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cdiv|dflipflop6|ALT_INV_Qn~q\,
	d => \cdiv|dflipflop7|Qn~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cdiv|dflipflop7|Qn~q\);

-- Location: LCCOMB_X35_Y9_N22
\cdiv|dflipflop8|Qn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cdiv|dflipflop8|Qn~0_combout\ = !\cdiv|dflipflop8|Qn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cdiv|dflipflop8|Qn~q\,
	combout => \cdiv|dflipflop8|Qn~0_combout\);

-- Location: LCCOMB_X35_Y9_N14
\cdiv|dflipflop8|Qn~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \cdiv|dflipflop8|Qn~feeder_combout\ = \cdiv|dflipflop8|Qn~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cdiv|dflipflop8|Qn~0_combout\,
	combout => \cdiv|dflipflop8|Qn~feeder_combout\);

-- Location: FF_X35_Y9_N15
\cdiv|dflipflop8|Qn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cdiv|dflipflop7|ALT_INV_Qn~q\,
	d => \cdiv|dflipflop8|Qn~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cdiv|dflipflop8|Qn~q\);

-- Location: LCCOMB_X36_Y11_N30
\cdiv|dflipflop9|Qn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cdiv|dflipflop9|Qn~0_combout\ = !\cdiv|dflipflop9|Qn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cdiv|dflipflop9|Qn~q\,
	combout => \cdiv|dflipflop9|Qn~0_combout\);

-- Location: LCCOMB_X36_Y11_N4
\cdiv|dflipflop9|Qn~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \cdiv|dflipflop9|Qn~feeder_combout\ = \cdiv|dflipflop9|Qn~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cdiv|dflipflop9|Qn~0_combout\,
	combout => \cdiv|dflipflop9|Qn~feeder_combout\);

-- Location: FF_X36_Y11_N5
\cdiv|dflipflop9|Qn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cdiv|dflipflop8|ALT_INV_Qn~q\,
	d => \cdiv|dflipflop9|Qn~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cdiv|dflipflop9|Qn~q\);

-- Location: LCCOMB_X36_Y11_N22
\cdiv|dflipflop10|Qn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cdiv|dflipflop10|Qn~0_combout\ = !\cdiv|dflipflop10|Qn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cdiv|dflipflop10|Qn~q\,
	combout => \cdiv|dflipflop10|Qn~0_combout\);

-- Location: LCCOMB_X36_Y11_N14
\cdiv|dflipflop10|Qn~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \cdiv|dflipflop10|Qn~feeder_combout\ = \cdiv|dflipflop10|Qn~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cdiv|dflipflop10|Qn~0_combout\,
	combout => \cdiv|dflipflop10|Qn~feeder_combout\);

-- Location: FF_X36_Y11_N15
\cdiv|dflipflop10|Qn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cdiv|dflipflop9|ALT_INV_Qn~q\,
	d => \cdiv|dflipflop10|Qn~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cdiv|dflipflop10|Qn~q\);

-- Location: LCCOMB_X37_Y11_N0
\cdiv|dflipflop11|Qn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cdiv|dflipflop11|Qn~0_combout\ = !\cdiv|dflipflop11|Qn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cdiv|dflipflop11|Qn~q\,
	combout => \cdiv|dflipflop11|Qn~0_combout\);

-- Location: LCCOMB_X37_Y11_N20
\cdiv|dflipflop11|Qn~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \cdiv|dflipflop11|Qn~feeder_combout\ = \cdiv|dflipflop11|Qn~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cdiv|dflipflop11|Qn~0_combout\,
	combout => \cdiv|dflipflop11|Qn~feeder_combout\);

-- Location: FF_X37_Y11_N21
\cdiv|dflipflop11|Qn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cdiv|dflipflop10|ALT_INV_Qn~q\,
	d => \cdiv|dflipflop11|Qn~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cdiv|dflipflop11|Qn~q\);

-- Location: LCCOMB_X37_Y11_N8
\cdiv|dflipflop12|Qn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cdiv|dflipflop12|Qn~0_combout\ = !\cdiv|dflipflop12|Qn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cdiv|dflipflop12|Qn~q\,
	combout => \cdiv|dflipflop12|Qn~0_combout\);

-- Location: LCCOMB_X37_Y11_N4
\cdiv|dflipflop12|Qn~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \cdiv|dflipflop12|Qn~feeder_combout\ = \cdiv|dflipflop12|Qn~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cdiv|dflipflop12|Qn~0_combout\,
	combout => \cdiv|dflipflop12|Qn~feeder_combout\);

-- Location: FF_X37_Y11_N5
\cdiv|dflipflop12|Qn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cdiv|dflipflop11|ALT_INV_Qn~q\,
	d => \cdiv|dflipflop12|Qn~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cdiv|dflipflop12|Qn~q\);

-- Location: LCCOMB_X43_Y11_N12
\cdiv|dflipflop13|Qn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cdiv|dflipflop13|Qn~0_combout\ = !\cdiv|dflipflop13|Qn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cdiv|dflipflop13|Qn~q\,
	combout => \cdiv|dflipflop13|Qn~0_combout\);

-- Location: FF_X43_Y11_N21
\cdiv|dflipflop13|Qn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cdiv|dflipflop12|ALT_INV_Qn~q\,
	asdata => \cdiv|dflipflop13|Qn~0_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cdiv|dflipflop13|Qn~q\);

-- Location: LCCOMB_X43_Y11_N22
\cdiv|dflipflop14|Qn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cdiv|dflipflop14|Qn~0_combout\ = !\cdiv|dflipflop14|Qn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cdiv|dflipflop14|Qn~q\,
	combout => \cdiv|dflipflop14|Qn~0_combout\);

-- Location: LCCOMB_X43_Y11_N14
\cdiv|dflipflop14|Qn~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \cdiv|dflipflop14|Qn~feeder_combout\ = \cdiv|dflipflop14|Qn~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cdiv|dflipflop14|Qn~0_combout\,
	combout => \cdiv|dflipflop14|Qn~feeder_combout\);

-- Location: FF_X43_Y11_N15
\cdiv|dflipflop14|Qn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cdiv|dflipflop13|ALT_INV_Qn~q\,
	d => \cdiv|dflipflop14|Qn~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cdiv|dflipflop14|Qn~q\);

-- Location: LCCOMB_X44_Y13_N8
\cdiv|dflipflop15|Qn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cdiv|dflipflop15|Qn~0_combout\ = !\cdiv|dflipflop15|Qn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cdiv|dflipflop15|Qn~q\,
	combout => \cdiv|dflipflop15|Qn~0_combout\);

-- Location: LCCOMB_X44_Y13_N14
\cdiv|dflipflop15|Qn~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \cdiv|dflipflop15|Qn~feeder_combout\ = \cdiv|dflipflop15|Qn~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cdiv|dflipflop15|Qn~0_combout\,
	combout => \cdiv|dflipflop15|Qn~feeder_combout\);

-- Location: FF_X44_Y13_N15
\cdiv|dflipflop15|Qn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cdiv|dflipflop14|ALT_INV_Qn~q\,
	d => \cdiv|dflipflop15|Qn~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cdiv|dflipflop15|Qn~q\);

-- Location: LCCOMB_X43_Y13_N0
\cdiv|dflipflop16|Qn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cdiv|dflipflop16|Qn~0_combout\ = !\cdiv|dflipflop16|Qn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cdiv|dflipflop16|Qn~q\,
	combout => \cdiv|dflipflop16|Qn~0_combout\);

-- Location: FF_X43_Y13_N17
\cdiv|dflipflop16|Qn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cdiv|dflipflop15|ALT_INV_Qn~q\,
	asdata => \cdiv|dflipflop16|Qn~0_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cdiv|dflipflop16|Qn~q\);

-- Location: LCCOMB_X43_Y13_N30
\cdiv|dflipflop17|Qn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cdiv|dflipflop17|Qn~0_combout\ = !\cdiv|dflipflop17|Qn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cdiv|dflipflop17|Qn~q\,
	combout => \cdiv|dflipflop17|Qn~0_combout\);

-- Location: LCCOMB_X43_Y13_N6
\cdiv|dflipflop17|Qn~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \cdiv|dflipflop17|Qn~feeder_combout\ = \cdiv|dflipflop17|Qn~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cdiv|dflipflop17|Qn~0_combout\,
	combout => \cdiv|dflipflop17|Qn~feeder_combout\);

-- Location: FF_X43_Y13_N7
\cdiv|dflipflop17|Qn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cdiv|dflipflop16|ALT_INV_Qn~q\,
	d => \cdiv|dflipflop17|Qn~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cdiv|dflipflop17|Qn~q\);

-- Location: LCCOMB_X44_Y13_N18
\cdiv|dflipflop18|Qn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cdiv|dflipflop18|Qn~0_combout\ = !\cdiv|dflipflop18|Qn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cdiv|dflipflop18|Qn~q\,
	combout => \cdiv|dflipflop18|Qn~0_combout\);

-- Location: LCCOMB_X44_Y13_N12
\cdiv|dflipflop18|Qn~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \cdiv|dflipflop18|Qn~feeder_combout\ = \cdiv|dflipflop18|Qn~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cdiv|dflipflop18|Qn~0_combout\,
	combout => \cdiv|dflipflop18|Qn~feeder_combout\);

-- Location: FF_X44_Y13_N13
\cdiv|dflipflop18|Qn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cdiv|dflipflop17|ALT_INV_Qn~q\,
	d => \cdiv|dflipflop18|Qn~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cdiv|dflipflop18|Qn~q\);

-- Location: LCCOMB_X44_Y17_N10
\cdiv|dflipflop19|Qn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cdiv|dflipflop19|Qn~0_combout\ = !\cdiv|dflipflop19|Qn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cdiv|dflipflop19|Qn~q\,
	combout => \cdiv|dflipflop19|Qn~0_combout\);

-- Location: LCCOMB_X44_Y17_N20
\cdiv|dflipflop19|Qn~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \cdiv|dflipflop19|Qn~feeder_combout\ = \cdiv|dflipflop19|Qn~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cdiv|dflipflop19|Qn~0_combout\,
	combout => \cdiv|dflipflop19|Qn~feeder_combout\);

-- Location: FF_X44_Y17_N21
\cdiv|dflipflop19|Qn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cdiv|dflipflop18|ALT_INV_Qn~q\,
	d => \cdiv|dflipflop19|Qn~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cdiv|dflipflop19|Qn~q\);

-- Location: LCCOMB_X44_Y17_N22
\cdiv|dflipflop20|Qn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cdiv|dflipflop20|Qn~0_combout\ = !\cdiv|dflipflop20|Qn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cdiv|dflipflop20|Qn~q\,
	combout => \cdiv|dflipflop20|Qn~0_combout\);

-- Location: LCCOMB_X44_Y17_N14
\cdiv|dflipflop20|Qn~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \cdiv|dflipflop20|Qn~feeder_combout\ = \cdiv|dflipflop20|Qn~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cdiv|dflipflop20|Qn~0_combout\,
	combout => \cdiv|dflipflop20|Qn~feeder_combout\);

-- Location: FF_X44_Y17_N15
\cdiv|dflipflop20|Qn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cdiv|dflipflop19|ALT_INV_Qn~q\,
	d => \cdiv|dflipflop20|Qn~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cdiv|dflipflop20|Qn~q\);

-- Location: LCCOMB_X52_Y17_N10
\cdiv|dflipflop21|Qn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cdiv|dflipflop21|Qn~0_combout\ = !\cdiv|dflipflop21|Qn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cdiv|dflipflop21|Qn~q\,
	combout => \cdiv|dflipflop21|Qn~0_combout\);

-- Location: LCCOMB_X52_Y17_N4
\cdiv|dflipflop21|Qn~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \cdiv|dflipflop21|Qn~feeder_combout\ = \cdiv|dflipflop21|Qn~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cdiv|dflipflop21|Qn~0_combout\,
	combout => \cdiv|dflipflop21|Qn~feeder_combout\);

-- Location: FF_X52_Y17_N5
\cdiv|dflipflop21|Qn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cdiv|dflipflop20|ALT_INV_Qn~q\,
	d => \cdiv|dflipflop21|Qn~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cdiv|dflipflop21|Qn~q\);

-- Location: LCCOMB_X52_Y17_N22
\cdiv|dflipflop22|Qn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cdiv|dflipflop22|Qn~0_combout\ = !\cdiv|dflipflop22|Qn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cdiv|dflipflop22|Qn~q\,
	combout => \cdiv|dflipflop22|Qn~0_combout\);

-- Location: LCCOMB_X52_Y17_N14
\cdiv|dflipflop22|Qn~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \cdiv|dflipflop22|Qn~feeder_combout\ = \cdiv|dflipflop22|Qn~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cdiv|dflipflop22|Qn~0_combout\,
	combout => \cdiv|dflipflop22|Qn~feeder_combout\);

-- Location: FF_X52_Y17_N15
\cdiv|dflipflop22|Qn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cdiv|dflipflop21|ALT_INV_Qn~q\,
	d => \cdiv|dflipflop22|Qn~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cdiv|dflipflop22|Qn~q\);

-- Location: CLKCTRL_G7
\cdiv|dflipflop22|Qn~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \cdiv|dflipflop22|Qn~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \cdiv|dflipflop22|Qn~clkctrl_outclk\);

-- Location: LCCOMB_X27_Y2_N0
\cdiv|dflipflop23|Qn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cdiv|dflipflop23|Qn~0_combout\ = !\cdiv|dflipflop23|Qn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cdiv|dflipflop23|Qn~q\,
	combout => \cdiv|dflipflop23|Qn~0_combout\);

-- Location: FF_X27_Y2_N1
\cdiv|dflipflop23|Qn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cdiv|dflipflop22|ALT_INV_Qn~clkctrl_outclk\,
	d => \cdiv|dflipflop23|Qn~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cdiv|dflipflop23|Qn~q\);

-- Location: LCCOMB_X27_Y2_N24
\cdiv|dflipflop23|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cdiv|dflipflop23|Q~0_combout\ = !\cdiv|dflipflop23|Qn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cdiv|dflipflop23|Qn~q\,
	combout => \cdiv|dflipflop23|Q~0_combout\);

-- Location: FF_X27_Y2_N25
\cdiv|dflipflop23|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cdiv|dflipflop22|ALT_INV_Qn~clkctrl_outclk\,
	d => \cdiv|dflipflop23|Q~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cdiv|dflipflop23|Q~q\);

-- Location: CLKCTRL_G15
\cdiv|dflipflop23|Q~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \cdiv|dflipflop23|Q~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \cdiv|dflipflop23|Q~clkctrl_outclk\);

-- Location: IOIBUF_X9_Y34_N22
\SW2[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW2(6),
	o => \SW2[6]~input_o\);

-- Location: IOIBUF_X7_Y34_N8
\SW2[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW2(2),
	o => \SW2[2]~input_o\);

-- Location: IOIBUF_X7_Y34_N1
\SW2[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW2(5),
	o => \SW2[5]~input_o\);

-- Location: IOIBUF_X3_Y34_N1
\SW2[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW2(4),
	o => \SW2[4]~input_o\);

-- Location: IOIBUF_X7_Y34_N15
\SW2[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW2(3),
	o => \SW2[3]~input_o\);

-- Location: LCCOMB_X7_Y33_N24
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (!\SW2[2]~input_o\ & (!\SW2[5]~input_o\ & (!\SW2[4]~input_o\ & !\SW2[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW2[2]~input_o\,
	datab => \SW2[5]~input_o\,
	datac => \SW2[4]~input_o\,
	datad => \SW2[3]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: IOIBUF_X11_Y34_N1
\SW2[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW2(7),
	o => \SW2[7]~input_o\);

-- Location: LCCOMB_X10_Y33_N20
\Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (!\SW2[6]~input_o\ & (\Mux2~0_combout\ & !\SW2[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW2[6]~input_o\,
	datac => \Mux2~0_combout\,
	datad => \SW2[7]~input_o\,
	combout => \Mux2~1_combout\);

-- Location: IOIBUF_X1_Y34_N1
\SW2[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW2(1),
	o => \SW2[1]~input_o\);

-- Location: IOIBUF_X1_Y34_N8
\SW2[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW2(0),
	o => \SW2[0]~input_o\);

-- Location: LCCOMB_X40_Y2_N4
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (!\SW2[1]~input_o\ & \SW2[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW2[1]~input_o\,
	datab => \SW2[0]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X40_Y2_N12
\currentState.s0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \currentState.s0~0_combout\ = !\currentState.s11~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \currentState.s11~q\,
	combout => \currentState.s0~0_combout\);

-- Location: FF_X40_Y2_N13
\currentState.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cdiv|dflipflop23|Q~clkctrl_outclk\,
	d => \currentState.s0~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \currentState.s0~q\);

-- Location: LCCOMB_X40_Y2_N28
\currentState.s1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \currentState.s1~0_combout\ = !\currentState.s0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \currentState.s0~q\,
	combout => \currentState.s1~0_combout\);

-- Location: FF_X40_Y2_N29
\currentState.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cdiv|dflipflop23|Q~clkctrl_outclk\,
	d => \currentState.s1~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \currentState.s1~q\);

-- Location: LCCOMB_X40_Y2_N14
\nextState.s12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \nextState.s12~2_combout\ = (\Mux2~1_combout\ & (!\SW2[0]~input_o\ & (\SW2[1]~input_o\ & \currentState.s1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \SW2[0]~input_o\,
	datac => \SW2[1]~input_o\,
	datad => \currentState.s1~q\,
	combout => \nextState.s12~2_combout\);

-- Location: FF_X40_Y2_N15
\currentState.s12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cdiv|dflipflop23|Q~clkctrl_outclk\,
	d => \nextState.s12~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \currentState.s12~q\);

-- Location: FF_X40_Y2_N27
\currentState.s13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cdiv|dflipflop23|Q~clkctrl_outclk\,
	asdata => \currentState.s12~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \currentState.s13~q\);

-- Location: LCCOMB_X40_Y2_N24
\Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (\SW2[1]~input_o\ & !\SW2[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW2[1]~input_o\,
	datab => \SW2[0]~input_o\,
	combout => \Mux2~2_combout\);

-- Location: LCCOMB_X40_Y2_N18
\nextState.s15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \nextState.s15~2_combout\ = (\Mux2~1_combout\ & (\SW2[0]~input_o\ & (!\SW2[1]~input_o\ & \currentState.s7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \SW2[0]~input_o\,
	datac => \SW2[1]~input_o\,
	datad => \currentState.s7~q\,
	combout => \nextState.s15~2_combout\);

-- Location: FF_X40_Y2_N19
\currentState.s15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cdiv|dflipflop23|Q~clkctrl_outclk\,
	d => \nextState.s15~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \currentState.s15~q\);

-- Location: FF_X40_Y2_N31
\currentState.s14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cdiv|dflipflop23|Q~clkctrl_outclk\,
	asdata => \currentState.s15~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \currentState.s14~q\);

-- Location: LCCOMB_X40_Y2_N8
\Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\currentState.s14~q\) # ((\currentState.s1~q\ & ((!\Mux2~2_combout\) # (!\Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \Mux2~2_combout\,
	datac => \currentState.s14~q\,
	datad => \currentState.s1~q\,
	combout => \Selector0~0_combout\);

-- Location: FF_X40_Y2_N9
\currentState.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cdiv|dflipflop23|Q~clkctrl_outclk\,
	d => \Selector0~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \currentState.s2~q\);

-- Location: FF_X40_Y2_N3
\currentState.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cdiv|dflipflop23|Q~clkctrl_outclk\,
	asdata => \currentState.s2~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \currentState.s3~q\);

-- Location: FF_X40_Y2_N11
\currentState.s4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cdiv|dflipflop23|Q~clkctrl_outclk\,
	asdata => \currentState.s3~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \currentState.s4~q\);

-- Location: LCCOMB_X41_Y2_N10
\currentState.s5~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \currentState.s5~feeder_combout\ = \currentState.s4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \currentState.s4~q\,
	combout => \currentState.s5~feeder_combout\);

-- Location: FF_X41_Y2_N11
\currentState.s5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cdiv|dflipflop23|Q~clkctrl_outclk\,
	d => \currentState.s5~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \currentState.s5~q\);

-- Location: LCCOMB_X41_Y2_N26
\currentState.s6~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \currentState.s6~feeder_combout\ = \currentState.s5~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \currentState.s5~q\,
	combout => \currentState.s6~feeder_combout\);

-- Location: FF_X41_Y2_N27
\currentState.s6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cdiv|dflipflop23|Q~clkctrl_outclk\,
	d => \currentState.s6~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \currentState.s6~q\);

-- Location: FF_X41_Y2_N5
\currentState.s7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cdiv|dflipflop23|Q~clkctrl_outclk\,
	asdata => \currentState.s6~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \currentState.s7~q\);

-- Location: LCCOMB_X40_Y2_N22
\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\currentState.s13~q\) # ((\currentState.s7~q\ & ((!\Mux1~0_combout\) # (!\Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \Mux1~0_combout\,
	datac => \currentState.s13~q\,
	datad => \currentState.s7~q\,
	combout => \Selector1~0_combout\);

-- Location: FF_X40_Y2_N23
\currentState.s8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cdiv|dflipflop23|Q~clkctrl_outclk\,
	d => \Selector1~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \currentState.s8~q\);

-- Location: FF_X40_Y2_N5
\currentState.s9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cdiv|dflipflop23|Q~clkctrl_outclk\,
	asdata => \currentState.s8~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \currentState.s9~q\);

-- Location: FF_X40_Y2_N21
\currentState.s10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cdiv|dflipflop23|Q~clkctrl_outclk\,
	asdata => \currentState.s9~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \currentState.s10~q\);

-- Location: LCCOMB_X40_Y2_N6
\currentState.s11~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \currentState.s11~feeder_combout\ = \currentState.s10~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \currentState.s10~q\,
	combout => \currentState.s11~feeder_combout\);

-- Location: FF_X40_Y2_N7
\currentState.s11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cdiv|dflipflop23|Q~clkctrl_outclk\,
	d => \currentState.s11~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \currentState.s11~q\);

-- Location: LCCOMB_X41_Y2_N12
\LED17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LED17~0_combout\ = (\currentState.s11~q\) # (!\currentState.s0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \currentState.s11~q\,
	datad => \currentState.s0~q\,
	combout => \LED17~0_combout\);

-- Location: LCCOMB_X41_Y2_N14
\LED17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LED17~1_combout\ = (\currentState.s11~q\) # (\currentState.s10~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \currentState.s11~q\,
	datad => \currentState.s10~q\,
	combout => \LED17~1_combout\);

-- Location: LCCOMB_X41_Y2_N16
\LED17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LED17~2_combout\ = (\currentState.s9~q\) # (\currentState.s10~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \currentState.s9~q\,
	datad => \currentState.s10~q\,
	combout => \LED17~2_combout\);

-- Location: LCCOMB_X41_Y2_N22
\LED17~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LED17~3_combout\ = (\currentState.s1~q\) # (!\currentState.s0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \currentState.s1~q\,
	datad => \currentState.s0~q\,
	combout => \LED17~3_combout\);

-- Location: LCCOMB_X41_Y2_N24
\LED18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LED18~0_combout\ = (\currentState.s9~q\) # (\currentState.s8~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \currentState.s9~q\,
	datad => \currentState.s8~q\,
	combout => \LED18~0_combout\);

-- Location: FF_X40_Y2_N17
\oldState.s13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cdiv|dflipflop23|Q~clkctrl_outclk\,
	asdata => \currentState.s13~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \oldState.s13~q\);

-- Location: LCCOMB_X41_Y2_N6
\Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\currentState.s13~q\) # ((\currentState.s8~q\ & \oldState.s13~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \currentState.s8~q\,
	datac => \oldState.s13~q\,
	datad => \currentState.s13~q\,
	combout => \Selector3~0_combout\);

-- Location: LCCOMB_X41_Y2_N4
\LED18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LED18~1_combout\ = (\currentState.s12~q\) # (\currentState.s13~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \currentState.s12~q\,
	datad => \currentState.s13~q\,
	combout => \LED18~1_combout\);

-- Location: FF_X40_Y2_N25
\oldState.s14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \cdiv|dflipflop23|Q~clkctrl_outclk\,
	asdata => \currentState.s14~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \oldState.s14~q\);

-- Location: LCCOMB_X40_Y2_N26
\Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\currentState.s12~q\) # ((\currentState.s1~q\) # ((\currentState.s2~q\ & !\oldState.s14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \currentState.s2~q\,
	datab => \oldState.s14~q\,
	datac => \currentState.s12~q\,
	datad => \currentState.s1~q\,
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X40_Y2_N20
\Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\currentState.s14~q\) # ((\currentState.s2~q\ & \oldState.s14~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \currentState.s14~q\,
	datab => \currentState.s2~q\,
	datad => \oldState.s14~q\,
	combout => \Selector5~0_combout\);

-- Location: LCCOMB_X40_Y2_N30
\LED19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LED19~0_combout\ = (\currentState.s15~q\) # (\currentState.s14~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \currentState.s15~q\,
	datac => \currentState.s14~q\,
	combout => \LED19~0_combout\);

-- Location: LCCOMB_X40_Y2_N16
\Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\currentState.s15~q\) # ((\currentState.s7~q\) # ((\currentState.s8~q\ & !\oldState.s13~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \currentState.s8~q\,
	datab => \currentState.s15~q\,
	datac => \oldState.s13~q\,
	datad => \currentState.s7~q\,
	combout => \Selector4~0_combout\);

-- Location: LCCOMB_X40_Y2_N2
\LED19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LED19~1_combout\ = (\currentState.s2~q\) # (\currentState.s3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \currentState.s2~q\,
	datac => \currentState.s3~q\,
	combout => \LED19~1_combout\);

-- Location: LCCOMB_X41_Y2_N8
\LED20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LED20~0_combout\ = (\currentState.s6~q\) # (\currentState.s7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \currentState.s6~q\,
	datac => \currentState.s7~q\,
	combout => \LED20~0_combout\);

-- Location: LCCOMB_X41_Y2_N28
\LED20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LED20~1_combout\ = (\currentState.s6~q\) # (\currentState.s5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \currentState.s6~q\,
	datad => \currentState.s5~q\,
	combout => \LED20~1_combout\);

-- Location: LCCOMB_X41_Y2_N18
\LED20~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LED20~2_combout\ = (\currentState.s4~q\) # (\currentState.s5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \currentState.s4~q\,
	datad => \currentState.s5~q\,
	combout => \LED20~2_combout\);

-- Location: LCCOMB_X40_Y2_N10
\LED20~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LED20~3_combout\ = (\currentState.s3~q\) # (\currentState.s4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \currentState.s3~q\,
	datac => \currentState.s4~q\,
	combout => \LED20~3_combout\);

-- Location: IOIBUF_X14_Y34_N22
\SW1[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW1(0),
	o => \SW1[0]~input_o\);

-- Location: IOIBUF_X5_Y34_N15
\SW1[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW1(1),
	o => \SW1[1]~input_o\);

-- Location: IOIBUF_X16_Y34_N8
\SW1[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW1(2),
	o => \SW1[2]~input_o\);

-- Location: IOIBUF_X16_Y34_N1
\SW1[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW1(3),
	o => \SW1[3]~input_o\);

-- Location: IOIBUF_X18_Y34_N1
\SW1[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW1(4),
	o => \SW1[4]~input_o\);

-- Location: IOIBUF_X9_Y34_N8
\SW1[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW1(5),
	o => \SW1[5]~input_o\);

-- Location: IOIBUF_X20_Y34_N22
\SW1[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW1(6),
	o => \SW1[6]~input_o\);

-- Location: IOIBUF_X18_Y34_N22
\SW1[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW1(7),
	o => \SW1[7]~input_o\);

ww_LED_Red(0) <= \LED_Red[0]~output_o\;

ww_LED_Red(1) <= \LED_Red[1]~output_o\;

ww_LED_Red(2) <= \LED_Red[2]~output_o\;

ww_LED_Red(3) <= \LED_Red[3]~output_o\;

ww_LED_Red(4) <= \LED_Red[4]~output_o\;

ww_LED_Red(5) <= \LED_Red[5]~output_o\;

ww_LED_Red(6) <= \LED_Red[6]~output_o\;

ww_LED_Red(7) <= \LED_Red[7]~output_o\;

ww_LED_Blue(0) <= \LED_Blue[0]~output_o\;

ww_LED_Blue(1) <= \LED_Blue[1]~output_o\;

ww_LED_Blue(2) <= \LED_Blue[2]~output_o\;

ww_LED_Blue(3) <= \LED_Blue[3]~output_o\;

ww_LED_Blue(4) <= \LED_Blue[4]~output_o\;

ww_LED_Blue(5) <= \LED_Blue[5]~output_o\;

ww_LED_Blue(6) <= \LED_Blue[6]~output_o\;

ww_LED_Blue(7) <= \LED_Blue[7]~output_o\;

ww_LED17(0) <= \LED17[0]~output_o\;

ww_LED17(1) <= \LED17[1]~output_o\;

ww_LED17(2) <= \LED17[2]~output_o\;

ww_LED17(3) <= \LED17[3]~output_o\;

ww_LED17(4) <= \LED17[4]~output_o\;

ww_LED17(5) <= \LED17[5]~output_o\;

ww_LED17(6) <= \LED17[6]~output_o\;

ww_LED17(7) <= \LED17[7]~output_o\;

ww_LED18(0) <= \LED18[0]~output_o\;

ww_LED18(1) <= \LED18[1]~output_o\;

ww_LED18(2) <= \LED18[2]~output_o\;

ww_LED18(3) <= \LED18[3]~output_o\;

ww_LED18(4) <= \LED18[4]~output_o\;

ww_LED18(5) <= \LED18[5]~output_o\;

ww_LED18(6) <= \LED18[6]~output_o\;

ww_LED18(7) <= \LED18[7]~output_o\;

ww_LED19(0) <= \LED19[0]~output_o\;

ww_LED19(1) <= \LED19[1]~output_o\;

ww_LED19(2) <= \LED19[2]~output_o\;

ww_LED19(3) <= \LED19[3]~output_o\;

ww_LED19(4) <= \LED19[4]~output_o\;

ww_LED19(5) <= \LED19[5]~output_o\;

ww_LED19(6) <= \LED19[6]~output_o\;

ww_LED19(7) <= \LED19[7]~output_o\;

ww_LED20(0) <= \LED20[0]~output_o\;

ww_LED20(1) <= \LED20[1]~output_o\;

ww_LED20(2) <= \LED20[2]~output_o\;

ww_LED20(3) <= \LED20[3]~output_o\;

ww_LED20(4) <= \LED20[4]~output_o\;

ww_LED20(5) <= \LED20[5]~output_o\;

ww_LED20(6) <= \LED20[6]~output_o\;

ww_LED20(7) <= \LED20[7]~output_o\;
END structure;


