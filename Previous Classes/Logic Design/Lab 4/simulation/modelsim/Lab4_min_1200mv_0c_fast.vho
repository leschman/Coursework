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

-- DATE "02/12/2014 17:12:03"

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

ENTITY 	lab4 IS
    PORT (
	mClock : IN std_logic;
	reset : IN std_logic;
	LED_Red : BUFFER std_logic_vector(7 DOWNTO 0);
	LED_Blue : BUFFER std_logic_vector(7 DOWNTO 0);
	LED17 : BUFFER std_logic_vector(7 DOWNTO 0);
	LED18 : BUFFER std_logic_vector(7 DOWNTO 0);
	LED19 : BUFFER std_logic_vector(7 DOWNTO 0);
	LED20 : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END lab4;

-- Design Ports Information
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
-- mClock	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab4 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_mClock : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_LED_Red : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_LED_Blue : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_LED17 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_LED18 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_LED19 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_LED20 : std_logic_vector(7 DOWNTO 0);
SIGNAL \dflipflop21|Qn~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dflipflop20|Qn~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dflipflop23|Qn~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dflipflop22|Qn~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dflipflop24|Qn~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dflipflop29|Qn~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dflipflop26|Qn~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dflipflop28|Qn~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dflipflop25|Qn~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dflipflop27|Qn~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dflipflop30|Qn~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dflipflop33|Qn~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dflipflop34|Qn~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dflipflop35|Qn~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dflipflop31|Qn~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \dflipflop32|Qn~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \mClock~input_o\ : std_logic;
SIGNAL \dflipflop0|Qn~0_combout\ : std_logic;
SIGNAL \dflipflop0|Qn~feeder_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \dflipflop0|Qn~q\ : std_logic;
SIGNAL \dflipflop1|Qn~0_combout\ : std_logic;
SIGNAL \dflipflop1|Qn~feeder_combout\ : std_logic;
SIGNAL \dflipflop1|Qn~q\ : std_logic;
SIGNAL \dflipflop2|Qn~0_combout\ : std_logic;
SIGNAL \dflipflop2|Qn~q\ : std_logic;
SIGNAL \dflipflop3|Qn~0_combout\ : std_logic;
SIGNAL \dflipflop3|Qn~feeder_combout\ : std_logic;
SIGNAL \dflipflop3|Qn~q\ : std_logic;
SIGNAL \dflipflop4|Qn~0_combout\ : std_logic;
SIGNAL \dflipflop4|Qn~feeder_combout\ : std_logic;
SIGNAL \dflipflop4|Qn~q\ : std_logic;
SIGNAL \dflipflop5|Qn~0_combout\ : std_logic;
SIGNAL \dflipflop5|Qn~feeder_combout\ : std_logic;
SIGNAL \dflipflop5|Qn~q\ : std_logic;
SIGNAL \dflipflop6|Qn~0_combout\ : std_logic;
SIGNAL \dflipflop6|Qn~feeder_combout\ : std_logic;
SIGNAL \dflipflop6|Qn~q\ : std_logic;
SIGNAL \dflipflop7|Qn~0_combout\ : std_logic;
SIGNAL \dflipflop7|Qn~feeder_combout\ : std_logic;
SIGNAL \dflipflop7|Qn~q\ : std_logic;
SIGNAL \dflipflop8|Qn~0_combout\ : std_logic;
SIGNAL \dflipflop8|Qn~feeder_combout\ : std_logic;
SIGNAL \dflipflop8|Qn~q\ : std_logic;
SIGNAL \dflipflop9|Qn~0_combout\ : std_logic;
SIGNAL \dflipflop9|Qn~feeder_combout\ : std_logic;
SIGNAL \dflipflop9|Qn~q\ : std_logic;
SIGNAL \dflipflop10|Qn~0_combout\ : std_logic;
SIGNAL \dflipflop10|Qn~feeder_combout\ : std_logic;
SIGNAL \dflipflop10|Qn~q\ : std_logic;
SIGNAL \dflipflop11|Qn~0_combout\ : std_logic;
SIGNAL \dflipflop11|Qn~q\ : std_logic;
SIGNAL \dflipflop12|Qn~0_combout\ : std_logic;
SIGNAL \dflipflop12|Qn~feeder_combout\ : std_logic;
SIGNAL \dflipflop12|Qn~q\ : std_logic;
SIGNAL \dflipflop13|Qn~0_combout\ : std_logic;
SIGNAL \dflipflop13|Qn~feeder_combout\ : std_logic;
SIGNAL \dflipflop13|Qn~q\ : std_logic;
SIGNAL \dflipflop14|Qn~0_combout\ : std_logic;
SIGNAL \dflipflop14|Qn~feeder_combout\ : std_logic;
SIGNAL \dflipflop14|Qn~q\ : std_logic;
SIGNAL \dflipflop15|Qn~0_combout\ : std_logic;
SIGNAL \dflipflop15|Qn~feeder_combout\ : std_logic;
SIGNAL \dflipflop15|Qn~q\ : std_logic;
SIGNAL \dflipflop16|Qn~0_combout\ : std_logic;
SIGNAL \dflipflop16|Qn~feeder_combout\ : std_logic;
SIGNAL \dflipflop16|Qn~q\ : std_logic;
SIGNAL \dflipflop17|Qn~0_combout\ : std_logic;
SIGNAL \dflipflop17|Qn~feeder_combout\ : std_logic;
SIGNAL \dflipflop17|Qn~q\ : std_logic;
SIGNAL \dflipflop18|Qn~0_combout\ : std_logic;
SIGNAL \dflipflop18|Qn~feeder_combout\ : std_logic;
SIGNAL \dflipflop18|Qn~q\ : std_logic;
SIGNAL \dflipflop19|Qn~0_combout\ : std_logic;
SIGNAL \dflipflop19|Qn~q\ : std_logic;
SIGNAL \dflipflop20|Qn~0_combout\ : std_logic;
SIGNAL \dflipflop20|Qn~feeder_combout\ : std_logic;
SIGNAL \dflipflop20|Qn~q\ : std_logic;
SIGNAL \dflipflop20|Qn~clkctrl_outclk\ : std_logic;
SIGNAL \dflipflop21|Qn~0_combout\ : std_logic;
SIGNAL \dflipflop21|Qn~feeder_combout\ : std_logic;
SIGNAL \dflipflop21|Qn~q\ : std_logic;
SIGNAL \dflipflop21|Qn~clkctrl_outclk\ : std_logic;
SIGNAL \dflipflop22|Qn~0_combout\ : std_logic;
SIGNAL \dflipflop22|Qn~feeder_combout\ : std_logic;
SIGNAL \dflipflop22|Qn~q\ : std_logic;
SIGNAL \dflipflop22|Qn~clkctrl_outclk\ : std_logic;
SIGNAL \dflipflop23|Qn~0_combout\ : std_logic;
SIGNAL \dflipflop23|Qn~feeder_combout\ : std_logic;
SIGNAL \dflipflop23|Qn~q\ : std_logic;
SIGNAL \dflipflop23|Qn~clkctrl_outclk\ : std_logic;
SIGNAL \dflipflop24|Qn~0_combout\ : std_logic;
SIGNAL \dflipflop24|Qn~feeder_combout\ : std_logic;
SIGNAL \dflipflop24|Qn~q\ : std_logic;
SIGNAL \dflipflop24|Qn~clkctrl_outclk\ : std_logic;
SIGNAL \dflipflop25|Qn~0_combout\ : std_logic;
SIGNAL \dflipflop25|Qn~feeder_combout\ : std_logic;
SIGNAL \dflipflop25|Qn~q\ : std_logic;
SIGNAL \dflipflop25|Qn~clkctrl_outclk\ : std_logic;
SIGNAL \dflipflop26|Qn~0_combout\ : std_logic;
SIGNAL \dflipflop26|Qn~feeder_combout\ : std_logic;
SIGNAL \dflipflop26|Qn~q\ : std_logic;
SIGNAL \dflipflop26|Qn~clkctrl_outclk\ : std_logic;
SIGNAL \dflipflop27|Qn~0_combout\ : std_logic;
SIGNAL \dflipflop27|Qn~feeder_combout\ : std_logic;
SIGNAL \dflipflop27|Qn~q\ : std_logic;
SIGNAL \dflipflop27|Qn~clkctrl_outclk\ : std_logic;
SIGNAL \dflipflop28|Qn~0_combout\ : std_logic;
SIGNAL \dflipflop28|Qn~feeder_combout\ : std_logic;
SIGNAL \dflipflop28|Qn~q\ : std_logic;
SIGNAL \dflipflop28|Qn~clkctrl_outclk\ : std_logic;
SIGNAL \dflipflop29|Qn~0_combout\ : std_logic;
SIGNAL \dflipflop29|Qn~feeder_combout\ : std_logic;
SIGNAL \dflipflop29|Qn~q\ : std_logic;
SIGNAL \dflipflop29|Q~0_combout\ : std_logic;
SIGNAL \dflipflop29|Q~feeder_combout\ : std_logic;
SIGNAL \dflipflop29|Q~q\ : std_logic;
SIGNAL \dflipflop29|Qn~clkctrl_outclk\ : std_logic;
SIGNAL \dflipflop30|Qn~0_combout\ : std_logic;
SIGNAL \dflipflop30|Qn~feeder_combout\ : std_logic;
SIGNAL \dflipflop30|Qn~q\ : std_logic;
SIGNAL \dflipflop30|Q~0_combout\ : std_logic;
SIGNAL \dflipflop30|Q~feeder_combout\ : std_logic;
SIGNAL \dflipflop30|Q~q\ : std_logic;
SIGNAL \dflipflop30|Qn~clkctrl_outclk\ : std_logic;
SIGNAL \dflipflop31|Qn~0_combout\ : std_logic;
SIGNAL \dflipflop31|Qn~feeder_combout\ : std_logic;
SIGNAL \dflipflop31|Qn~q\ : std_logic;
SIGNAL \dflipflop31|Q~0_combout\ : std_logic;
SIGNAL \dflipflop31|Q~feeder_combout\ : std_logic;
SIGNAL \dflipflop31|Q~q\ : std_logic;
SIGNAL \dflipflop31|Qn~clkctrl_outclk\ : std_logic;
SIGNAL \dflipflop32|Qn~0_combout\ : std_logic;
SIGNAL \dflipflop32|Qn~feeder_combout\ : std_logic;
SIGNAL \dflipflop32|Qn~q\ : std_logic;
SIGNAL \dflipflop32|Q~0_combout\ : std_logic;
SIGNAL \dflipflop32|Q~feeder_combout\ : std_logic;
SIGNAL \dflipflop32|Q~q\ : std_logic;
SIGNAL \dflipflop32|Qn~clkctrl_outclk\ : std_logic;
SIGNAL \dflipflop33|Qn~0_combout\ : std_logic;
SIGNAL \dflipflop33|Qn~feeder_combout\ : std_logic;
SIGNAL \dflipflop33|Qn~q\ : std_logic;
SIGNAL \dflipflop33|Q~0_combout\ : std_logic;
SIGNAL \dflipflop33|Q~feeder_combout\ : std_logic;
SIGNAL \dflipflop33|Q~q\ : std_logic;
SIGNAL \dflipflop33|Qn~clkctrl_outclk\ : std_logic;
SIGNAL \dflipflop34|Qn~0_combout\ : std_logic;
SIGNAL \dflipflop34|Qn~feeder_combout\ : std_logic;
SIGNAL \dflipflop34|Qn~q\ : std_logic;
SIGNAL \dflipflop34|Q~0_combout\ : std_logic;
SIGNAL \dflipflop34|Q~feeder_combout\ : std_logic;
SIGNAL \dflipflop34|Q~q\ : std_logic;
SIGNAL \dflipflop34|Qn~clkctrl_outclk\ : std_logic;
SIGNAL \dflipflop35|Qn~0_combout\ : std_logic;
SIGNAL \dflipflop35|Qn~feeder_combout\ : std_logic;
SIGNAL \dflipflop35|Qn~q\ : std_logic;
SIGNAL \dflipflop35|Q~0_combout\ : std_logic;
SIGNAL \dflipflop35|Q~feeder_combout\ : std_logic;
SIGNAL \dflipflop35|Q~q\ : std_logic;
SIGNAL \dflipflop35|Qn~clkctrl_outclk\ : std_logic;
SIGNAL \dflipflop36|Qn~0_combout\ : std_logic;
SIGNAL \dflipflop36|Qn~q\ : std_logic;
SIGNAL \dflipflop36|Q~0_combout\ : std_logic;
SIGNAL \dflipflop36|Q~q\ : std_logic;
SIGNAL \dflipflop21|Q~0_combout\ : std_logic;
SIGNAL \dflipflop21|Q~feeder_combout\ : std_logic;
SIGNAL \dflipflop21|Q~q\ : std_logic;
SIGNAL \dflipflop22|Q~0_combout\ : std_logic;
SIGNAL \dflipflop22|Q~feeder_combout\ : std_logic;
SIGNAL \dflipflop22|Q~q\ : std_logic;
SIGNAL \dflipflop23|Q~0_combout\ : std_logic;
SIGNAL \dflipflop23|Q~feeder_combout\ : std_logic;
SIGNAL \dflipflop23|Q~q\ : std_logic;
SIGNAL \dflipflop24|Q~0_combout\ : std_logic;
SIGNAL \dflipflop24|Q~feeder_combout\ : std_logic;
SIGNAL \dflipflop24|Q~q\ : std_logic;
SIGNAL \dflipflop25|Q~0_combout\ : std_logic;
SIGNAL \dflipflop25|Q~feeder_combout\ : std_logic;
SIGNAL \dflipflop25|Q~q\ : std_logic;
SIGNAL \dflipflop26|Q~0_combout\ : std_logic;
SIGNAL \dflipflop26|Q~feeder_combout\ : std_logic;
SIGNAL \dflipflop26|Q~q\ : std_logic;
SIGNAL \dflipflop27|Q~0_combout\ : std_logic;
SIGNAL \dflipflop27|Q~feeder_combout\ : std_logic;
SIGNAL \dflipflop27|Q~q\ : std_logic;
SIGNAL \dflipflop28|Q~0_combout\ : std_logic;
SIGNAL \dflipflop28|Q~feeder_combout\ : std_logic;
SIGNAL \dflipflop28|Q~q\ : std_logic;
SIGNAL \sevenSegmentDecoder0|LED17Driver|LED[1]~0_combout\ : std_logic;
SIGNAL \sevenSegmentDecoder0|LED17Driver|LED[2]~1_combout\ : std_logic;
SIGNAL \sevenSegmentDecoder0|LED17Driver|LED[3]~2_combout\ : std_logic;
SIGNAL \sevenSegmentDecoder0|LED17Driver|LED[4]~3_combout\ : std_logic;
SIGNAL \sevenSegmentDecoder0|LED17Driver|LED[5]~4_combout\ : std_logic;
SIGNAL \sevenSegmentDecoder0|LED17Driver|LED[6]~5_combout\ : std_logic;
SIGNAL \sevenSegmentDecoder0|LED17Driver|LED[7]~6_combout\ : std_logic;
SIGNAL \sevenSegmentDecoder0|LED18Driver|LED[1]~0_combout\ : std_logic;
SIGNAL \sevenSegmentDecoder0|LED18Driver|LED[2]~1_combout\ : std_logic;
SIGNAL \sevenSegmentDecoder0|LED18Driver|LED[3]~2_combout\ : std_logic;
SIGNAL \sevenSegmentDecoder0|LED18Driver|LED[4]~3_combout\ : std_logic;
SIGNAL \sevenSegmentDecoder0|LED18Driver|LED[5]~4_combout\ : std_logic;
SIGNAL \sevenSegmentDecoder0|LED18Driver|LED[6]~5_combout\ : std_logic;
SIGNAL \sevenSegmentDecoder0|LED18Driver|LED[7]~6_combout\ : std_logic;
SIGNAL \sevenSegmentDecoder0|LED19Driver|LED[1]~0_combout\ : std_logic;
SIGNAL \sevenSegmentDecoder0|LED19Driver|LED[2]~1_combout\ : std_logic;
SIGNAL \sevenSegmentDecoder0|LED19Driver|LED[3]~2_combout\ : std_logic;
SIGNAL \sevenSegmentDecoder0|LED19Driver|LED[4]~3_combout\ : std_logic;
SIGNAL \sevenSegmentDecoder0|LED19Driver|LED[5]~4_combout\ : std_logic;
SIGNAL \sevenSegmentDecoder0|LED19Driver|LED[6]~5_combout\ : std_logic;
SIGNAL \sevenSegmentDecoder0|LED19Driver|LED[7]~6_combout\ : std_logic;
SIGNAL \sevenSegmentDecoder0|LED20Driver|LED[1]~0_combout\ : std_logic;
SIGNAL \sevenSegmentDecoder0|LED20Driver|LED[2]~1_combout\ : std_logic;
SIGNAL \sevenSegmentDecoder0|LED20Driver|LED[3]~2_combout\ : std_logic;
SIGNAL \sevenSegmentDecoder0|LED20Driver|LED[4]~3_combout\ : std_logic;
SIGNAL \sevenSegmentDecoder0|LED20Driver|LED[5]~4_combout\ : std_logic;
SIGNAL \sevenSegmentDecoder0|LED20Driver|LED[6]~5_combout\ : std_logic;
SIGNAL \sevenSegmentDecoder0|LED20Driver|LED[7]~6_combout\ : std_logic;
SIGNAL \dflipflop32|ALT_INV_Qn~clkctrl_outclk\ : std_logic;
SIGNAL \dflipflop31|ALT_INV_Qn~clkctrl_outclk\ : std_logic;
SIGNAL \dflipflop35|ALT_INV_Qn~clkctrl_outclk\ : std_logic;
SIGNAL \dflipflop34|ALT_INV_Qn~clkctrl_outclk\ : std_logic;
SIGNAL \dflipflop33|ALT_INV_Qn~clkctrl_outclk\ : std_logic;
SIGNAL \dflipflop30|ALT_INV_Qn~clkctrl_outclk\ : std_logic;
SIGNAL \dflipflop27|ALT_INV_Qn~clkctrl_outclk\ : std_logic;
SIGNAL \dflipflop25|ALT_INV_Qn~clkctrl_outclk\ : std_logic;
SIGNAL \dflipflop28|ALT_INV_Qn~clkctrl_outclk\ : std_logic;
SIGNAL \dflipflop26|ALT_INV_Qn~clkctrl_outclk\ : std_logic;
SIGNAL \dflipflop29|ALT_INV_Qn~clkctrl_outclk\ : std_logic;
SIGNAL \dflipflop24|ALT_INV_Qn~clkctrl_outclk\ : std_logic;
SIGNAL \dflipflop22|ALT_INV_Qn~clkctrl_outclk\ : std_logic;
SIGNAL \dflipflop23|ALT_INV_Qn~clkctrl_outclk\ : std_logic;
SIGNAL \dflipflop20|ALT_INV_Qn~clkctrl_outclk\ : std_logic;
SIGNAL \dflipflop21|ALT_INV_Qn~clkctrl_outclk\ : std_logic;
SIGNAL \dflipflop17|ALT_INV_Qn~q\ : std_logic;
SIGNAL \dflipflop18|ALT_INV_Qn~q\ : std_logic;
SIGNAL \dflipflop19|ALT_INV_Qn~q\ : std_logic;
SIGNAL \sevenSegmentDecoder0|LED20Driver|ALT_INV_LED[4]~3_combout\ : std_logic;
SIGNAL \sevenSegmentDecoder0|LED20Driver|ALT_INV_LED[3]~2_combout\ : std_logic;
SIGNAL \sevenSegmentDecoder0|LED19Driver|ALT_INV_LED[4]~3_combout\ : std_logic;
SIGNAL \sevenSegmentDecoder0|LED19Driver|ALT_INV_LED[3]~2_combout\ : std_logic;
SIGNAL \sevenSegmentDecoder0|LED18Driver|ALT_INV_LED[4]~3_combout\ : std_logic;
SIGNAL \sevenSegmentDecoder0|LED18Driver|ALT_INV_LED[3]~2_combout\ : std_logic;
SIGNAL \sevenSegmentDecoder0|LED17Driver|ALT_INV_LED[4]~3_combout\ : std_logic;
SIGNAL \sevenSegmentDecoder0|LED17Driver|ALT_INV_LED[3]~2_combout\ : std_logic;
SIGNAL \dflipflop0|ALT_INV_Qn~q\ : std_logic;
SIGNAL \dflipflop1|ALT_INV_Qn~q\ : std_logic;
SIGNAL \dflipflop2|ALT_INV_Qn~q\ : std_logic;
SIGNAL \dflipflop3|ALT_INV_Qn~q\ : std_logic;
SIGNAL \dflipflop4|ALT_INV_Qn~q\ : std_logic;
SIGNAL \dflipflop5|ALT_INV_Qn~q\ : std_logic;
SIGNAL \dflipflop6|ALT_INV_Qn~q\ : std_logic;
SIGNAL \dflipflop7|ALT_INV_Qn~q\ : std_logic;
SIGNAL \dflipflop8|ALT_INV_Qn~q\ : std_logic;
SIGNAL \dflipflop9|ALT_INV_Qn~q\ : std_logic;
SIGNAL \dflipflop10|ALT_INV_Qn~q\ : std_logic;
SIGNAL \dflipflop11|ALT_INV_Qn~q\ : std_logic;
SIGNAL \dflipflop12|ALT_INV_Qn~q\ : std_logic;
SIGNAL \dflipflop13|ALT_INV_Qn~q\ : std_logic;
SIGNAL \dflipflop14|ALT_INV_Qn~q\ : std_logic;
SIGNAL \dflipflop15|ALT_INV_Qn~q\ : std_logic;
SIGNAL \dflipflop16|ALT_INV_Qn~q\ : std_logic;

BEGIN

ww_mClock <= mClock;
ww_reset <= reset;
LED_Red <= ww_LED_Red;
LED_Blue <= ww_LED_Blue;
LED17 <= ww_LED17;
LED18 <= ww_LED18;
LED19 <= ww_LED19;
LED20 <= ww_LED20;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\dflipflop21|Qn~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \dflipflop21|Qn~q\);

\dflipflop20|Qn~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \dflipflop20|Qn~q\);

\dflipflop23|Qn~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \dflipflop23|Qn~q\);

\dflipflop22|Qn~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \dflipflop22|Qn~q\);

\dflipflop24|Qn~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \dflipflop24|Qn~q\);

\dflipflop29|Qn~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \dflipflop29|Qn~q\);

\dflipflop26|Qn~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \dflipflop26|Qn~q\);

\dflipflop28|Qn~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \dflipflop28|Qn~q\);

\dflipflop25|Qn~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \dflipflop25|Qn~q\);

\dflipflop27|Qn~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \dflipflop27|Qn~q\);

\dflipflop30|Qn~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \dflipflop30|Qn~q\);

\dflipflop33|Qn~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \dflipflop33|Qn~q\);

\dflipflop34|Qn~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \dflipflop34|Qn~q\);

\dflipflop35|Qn~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \dflipflop35|Qn~q\);

\dflipflop31|Qn~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \dflipflop31|Qn~q\);

\dflipflop32|Qn~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \dflipflop32|Qn~q\);
\dflipflop32|ALT_INV_Qn~clkctrl_outclk\ <= NOT \dflipflop32|Qn~clkctrl_outclk\;
\dflipflop31|ALT_INV_Qn~clkctrl_outclk\ <= NOT \dflipflop31|Qn~clkctrl_outclk\;
\dflipflop35|ALT_INV_Qn~clkctrl_outclk\ <= NOT \dflipflop35|Qn~clkctrl_outclk\;
\dflipflop34|ALT_INV_Qn~clkctrl_outclk\ <= NOT \dflipflop34|Qn~clkctrl_outclk\;
\dflipflop33|ALT_INV_Qn~clkctrl_outclk\ <= NOT \dflipflop33|Qn~clkctrl_outclk\;
\dflipflop30|ALT_INV_Qn~clkctrl_outclk\ <= NOT \dflipflop30|Qn~clkctrl_outclk\;
\dflipflop27|ALT_INV_Qn~clkctrl_outclk\ <= NOT \dflipflop27|Qn~clkctrl_outclk\;
\dflipflop25|ALT_INV_Qn~clkctrl_outclk\ <= NOT \dflipflop25|Qn~clkctrl_outclk\;
\dflipflop28|ALT_INV_Qn~clkctrl_outclk\ <= NOT \dflipflop28|Qn~clkctrl_outclk\;
\dflipflop26|ALT_INV_Qn~clkctrl_outclk\ <= NOT \dflipflop26|Qn~clkctrl_outclk\;
\dflipflop29|ALT_INV_Qn~clkctrl_outclk\ <= NOT \dflipflop29|Qn~clkctrl_outclk\;
\dflipflop24|ALT_INV_Qn~clkctrl_outclk\ <= NOT \dflipflop24|Qn~clkctrl_outclk\;
\dflipflop22|ALT_INV_Qn~clkctrl_outclk\ <= NOT \dflipflop22|Qn~clkctrl_outclk\;
\dflipflop23|ALT_INV_Qn~clkctrl_outclk\ <= NOT \dflipflop23|Qn~clkctrl_outclk\;
\dflipflop20|ALT_INV_Qn~clkctrl_outclk\ <= NOT \dflipflop20|Qn~clkctrl_outclk\;
\dflipflop21|ALT_INV_Qn~clkctrl_outclk\ <= NOT \dflipflop21|Qn~clkctrl_outclk\;
\dflipflop17|ALT_INV_Qn~q\ <= NOT \dflipflop17|Qn~q\;
\dflipflop18|ALT_INV_Qn~q\ <= NOT \dflipflop18|Qn~q\;
\dflipflop19|ALT_INV_Qn~q\ <= NOT \dflipflop19|Qn~q\;
\sevenSegmentDecoder0|LED20Driver|ALT_INV_LED[4]~3_combout\ <= NOT \sevenSegmentDecoder0|LED20Driver|LED[4]~3_combout\;
\sevenSegmentDecoder0|LED20Driver|ALT_INV_LED[3]~2_combout\ <= NOT \sevenSegmentDecoder0|LED20Driver|LED[3]~2_combout\;
\sevenSegmentDecoder0|LED19Driver|ALT_INV_LED[4]~3_combout\ <= NOT \sevenSegmentDecoder0|LED19Driver|LED[4]~3_combout\;
\sevenSegmentDecoder0|LED19Driver|ALT_INV_LED[3]~2_combout\ <= NOT \sevenSegmentDecoder0|LED19Driver|LED[3]~2_combout\;
\sevenSegmentDecoder0|LED18Driver|ALT_INV_LED[4]~3_combout\ <= NOT \sevenSegmentDecoder0|LED18Driver|LED[4]~3_combout\;
\sevenSegmentDecoder0|LED18Driver|ALT_INV_LED[3]~2_combout\ <= NOT \sevenSegmentDecoder0|LED18Driver|LED[3]~2_combout\;
\sevenSegmentDecoder0|LED17Driver|ALT_INV_LED[4]~3_combout\ <= NOT \sevenSegmentDecoder0|LED17Driver|LED[4]~3_combout\;
\sevenSegmentDecoder0|LED17Driver|ALT_INV_LED[3]~2_combout\ <= NOT \sevenSegmentDecoder0|LED17Driver|LED[3]~2_combout\;
\dflipflop0|ALT_INV_Qn~q\ <= NOT \dflipflop0|Qn~q\;
\dflipflop1|ALT_INV_Qn~q\ <= NOT \dflipflop1|Qn~q\;
\dflipflop2|ALT_INV_Qn~q\ <= NOT \dflipflop2|Qn~q\;
\dflipflop3|ALT_INV_Qn~q\ <= NOT \dflipflop3|Qn~q\;
\dflipflop4|ALT_INV_Qn~q\ <= NOT \dflipflop4|Qn~q\;
\dflipflop5|ALT_INV_Qn~q\ <= NOT \dflipflop5|Qn~q\;
\dflipflop6|ALT_INV_Qn~q\ <= NOT \dflipflop6|Qn~q\;
\dflipflop7|ALT_INV_Qn~q\ <= NOT \dflipflop7|Qn~q\;
\dflipflop8|ALT_INV_Qn~q\ <= NOT \dflipflop8|Qn~q\;
\dflipflop9|ALT_INV_Qn~q\ <= NOT \dflipflop9|Qn~q\;
\dflipflop10|ALT_INV_Qn~q\ <= NOT \dflipflop10|Qn~q\;
\dflipflop11|ALT_INV_Qn~q\ <= NOT \dflipflop11|Qn~q\;
\dflipflop12|ALT_INV_Qn~q\ <= NOT \dflipflop12|Qn~q\;
\dflipflop13|ALT_INV_Qn~q\ <= NOT \dflipflop13|Qn~q\;
\dflipflop14|ALT_INV_Qn~q\ <= NOT \dflipflop14|Qn~q\;
\dflipflop15|ALT_INV_Qn~q\ <= NOT \dflipflop15|Qn~q\;
\dflipflop16|ALT_INV_Qn~q\ <= NOT \dflipflop16|Qn~q\;

-- Location: IOOBUF_X31_Y34_N9
\LED_Red[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dflipflop29|Q~q\,
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
	i => \dflipflop30|Q~q\,
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
	i => \dflipflop31|Q~q\,
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
	i => \dflipflop32|Q~q\,
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
	i => \dflipflop33|Q~q\,
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
	i => \dflipflop34|Q~q\,
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
	i => \dflipflop35|Q~q\,
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
	i => \dflipflop36|Q~q\,
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
	i => \dflipflop21|Q~q\,
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
	i => \dflipflop22|Q~q\,
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
	i => \dflipflop23|Q~q\,
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
	i => \dflipflop24|Q~q\,
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
	i => \dflipflop25|Q~q\,
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
	i => \dflipflop26|Q~q\,
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
	i => \dflipflop27|Q~q\,
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
	i => \dflipflop28|Q~q\,
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
	i => \sevenSegmentDecoder0|LED17Driver|LED[1]~0_combout\,
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
	i => \sevenSegmentDecoder0|LED17Driver|LED[2]~1_combout\,
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
	i => \sevenSegmentDecoder0|LED17Driver|ALT_INV_LED[3]~2_combout\,
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
	i => \sevenSegmentDecoder0|LED17Driver|ALT_INV_LED[4]~3_combout\,
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
	i => \sevenSegmentDecoder0|LED17Driver|LED[5]~4_combout\,
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
	i => \sevenSegmentDecoder0|LED17Driver|LED[6]~5_combout\,
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
	i => \sevenSegmentDecoder0|LED17Driver|LED[7]~6_combout\,
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
	i => \sevenSegmentDecoder0|LED18Driver|LED[1]~0_combout\,
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
	i => \sevenSegmentDecoder0|LED18Driver|LED[2]~1_combout\,
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
	i => \sevenSegmentDecoder0|LED18Driver|ALT_INV_LED[3]~2_combout\,
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
	i => \sevenSegmentDecoder0|LED18Driver|ALT_INV_LED[4]~3_combout\,
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
	i => \sevenSegmentDecoder0|LED18Driver|LED[5]~4_combout\,
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
	i => \sevenSegmentDecoder0|LED18Driver|LED[6]~5_combout\,
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
	i => \sevenSegmentDecoder0|LED18Driver|LED[7]~6_combout\,
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
	i => \sevenSegmentDecoder0|LED19Driver|LED[1]~0_combout\,
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
	i => \sevenSegmentDecoder0|LED19Driver|LED[2]~1_combout\,
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
	i => \sevenSegmentDecoder0|LED19Driver|ALT_INV_LED[3]~2_combout\,
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
	i => \sevenSegmentDecoder0|LED19Driver|ALT_INV_LED[4]~3_combout\,
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
	i => \sevenSegmentDecoder0|LED19Driver|LED[5]~4_combout\,
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
	i => \sevenSegmentDecoder0|LED19Driver|LED[6]~5_combout\,
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
	i => \sevenSegmentDecoder0|LED19Driver|LED[7]~6_combout\,
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
	i => \sevenSegmentDecoder0|LED20Driver|LED[1]~0_combout\,
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
	i => \sevenSegmentDecoder0|LED20Driver|LED[2]~1_combout\,
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
	i => \sevenSegmentDecoder0|LED20Driver|ALT_INV_LED[3]~2_combout\,
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
	i => \sevenSegmentDecoder0|LED20Driver|ALT_INV_LED[4]~3_combout\,
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
	i => \sevenSegmentDecoder0|LED20Driver|LED[5]~4_combout\,
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
	i => \sevenSegmentDecoder0|LED20Driver|LED[6]~5_combout\,
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
	i => \sevenSegmentDecoder0|LED20Driver|LED[7]~6_combout\,
	devoe => ww_devoe,
	o => \LED20[7]~output_o\);

-- Location: IOIBUF_X27_Y0_N22
\mClock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mClock,
	o => \mClock~input_o\);

-- Location: LCCOMB_X28_Y8_N10
\dflipflop0|Qn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dflipflop0|Qn~0_combout\ = !\dflipflop0|Qn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dflipflop0|Qn~q\,
	combout => \dflipflop0|Qn~0_combout\);

-- Location: LCCOMB_X28_Y8_N24
\dflipflop0|Qn~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dflipflop0|Qn~feeder_combout\ = \dflipflop0|Qn~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dflipflop0|Qn~0_combout\,
	combout => \dflipflop0|Qn~feeder_combout\);

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

-- Location: FF_X28_Y8_N25
\dflipflop0|Qn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \mClock~input_o\,
	d => \dflipflop0|Qn~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dflipflop0|Qn~q\);

-- Location: LCCOMB_X28_Y8_N22
\dflipflop1|Qn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dflipflop1|Qn~0_combout\ = !\dflipflop1|Qn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dflipflop1|Qn~q\,
	combout => \dflipflop1|Qn~0_combout\);

-- Location: LCCOMB_X28_Y8_N14
\dflipflop1|Qn~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dflipflop1|Qn~feeder_combout\ = \dflipflop1|Qn~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dflipflop1|Qn~0_combout\,
	combout => \dflipflop1|Qn~feeder_combout\);

-- Location: FF_X28_Y8_N15
\dflipflop1|Qn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dflipflop0|ALT_INV_Qn~q\,
	d => \dflipflop1|Qn~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dflipflop1|Qn~q\);

-- Location: LCCOMB_X27_Y8_N10
\dflipflop2|Qn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dflipflop2|Qn~0_combout\ = !\dflipflop2|Qn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dflipflop2|Qn~q\,
	combout => \dflipflop2|Qn~0_combout\);

-- Location: FF_X27_Y8_N3
\dflipflop2|Qn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dflipflop1|ALT_INV_Qn~q\,
	asdata => \dflipflop2|Qn~0_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dflipflop2|Qn~q\);

-- Location: LCCOMB_X27_Y8_N22
\dflipflop3|Qn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dflipflop3|Qn~0_combout\ = !\dflipflop3|Qn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dflipflop3|Qn~q\,
	combout => \dflipflop3|Qn~0_combout\);

-- Location: LCCOMB_X27_Y8_N14
\dflipflop3|Qn~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dflipflop3|Qn~feeder_combout\ = \dflipflop3|Qn~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dflipflop3|Qn~0_combout\,
	combout => \dflipflop3|Qn~feeder_combout\);

-- Location: FF_X27_Y8_N15
\dflipflop3|Qn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dflipflop2|ALT_INV_Qn~q\,
	d => \dflipflop3|Qn~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dflipflop3|Qn~q\);

-- Location: LCCOMB_X27_Y12_N4
\dflipflop4|Qn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dflipflop4|Qn~0_combout\ = !\dflipflop4|Qn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dflipflop4|Qn~q\,
	combout => \dflipflop4|Qn~0_combout\);

-- Location: LCCOMB_X27_Y12_N16
\dflipflop4|Qn~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dflipflop4|Qn~feeder_combout\ = \dflipflop4|Qn~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dflipflop4|Qn~0_combout\,
	combout => \dflipflop4|Qn~feeder_combout\);

-- Location: FF_X27_Y12_N17
\dflipflop4|Qn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dflipflop3|ALT_INV_Qn~q\,
	d => \dflipflop4|Qn~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dflipflop4|Qn~q\);

-- Location: LCCOMB_X27_Y12_N26
\dflipflop5|Qn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dflipflop5|Qn~0_combout\ = !\dflipflop5|Qn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dflipflop5|Qn~q\,
	combout => \dflipflop5|Qn~0_combout\);

-- Location: LCCOMB_X27_Y12_N14
\dflipflop5|Qn~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dflipflop5|Qn~feeder_combout\ = \dflipflop5|Qn~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dflipflop5|Qn~0_combout\,
	combout => \dflipflop5|Qn~feeder_combout\);

-- Location: FF_X27_Y12_N15
\dflipflop5|Qn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dflipflop4|ALT_INV_Qn~q\,
	d => \dflipflop5|Qn~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dflipflop5|Qn~q\);

-- Location: LCCOMB_X28_Y14_N28
\dflipflop6|Qn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dflipflop6|Qn~0_combout\ = !\dflipflop6|Qn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dflipflop6|Qn~q\,
	combout => \dflipflop6|Qn~0_combout\);

-- Location: LCCOMB_X28_Y14_N8
\dflipflop6|Qn~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dflipflop6|Qn~feeder_combout\ = \dflipflop6|Qn~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dflipflop6|Qn~0_combout\,
	combout => \dflipflop6|Qn~feeder_combout\);

-- Location: FF_X28_Y14_N9
\dflipflop6|Qn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dflipflop5|ALT_INV_Qn~q\,
	d => \dflipflop6|Qn~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dflipflop6|Qn~q\);

-- Location: LCCOMB_X28_Y14_N30
\dflipflop7|Qn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dflipflop7|Qn~0_combout\ = !\dflipflop7|Qn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dflipflop7|Qn~q\,
	combout => \dflipflop7|Qn~0_combout\);

-- Location: LCCOMB_X28_Y14_N10
\dflipflop7|Qn~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dflipflop7|Qn~feeder_combout\ = \dflipflop7|Qn~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dflipflop7|Qn~0_combout\,
	combout => \dflipflop7|Qn~feeder_combout\);

-- Location: FF_X28_Y14_N11
\dflipflop7|Qn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dflipflop6|ALT_INV_Qn~q\,
	d => \dflipflop7|Qn~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dflipflop7|Qn~q\);

-- Location: LCCOMB_X28_Y16_N0
\dflipflop8|Qn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dflipflop8|Qn~0_combout\ = !\dflipflop8|Qn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dflipflop8|Qn~q\,
	combout => \dflipflop8|Qn~0_combout\);

-- Location: LCCOMB_X28_Y16_N14
\dflipflop8|Qn~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dflipflop8|Qn~feeder_combout\ = \dflipflop8|Qn~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dflipflop8|Qn~0_combout\,
	combout => \dflipflop8|Qn~feeder_combout\);

-- Location: FF_X28_Y16_N15
\dflipflop8|Qn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dflipflop7|ALT_INV_Qn~q\,
	d => \dflipflop8|Qn~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dflipflop8|Qn~q\);

-- Location: LCCOMB_X29_Y20_N22
\dflipflop9|Qn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dflipflop9|Qn~0_combout\ = !\dflipflop9|Qn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dflipflop9|Qn~q\,
	combout => \dflipflop9|Qn~0_combout\);

-- Location: LCCOMB_X29_Y20_N2
\dflipflop9|Qn~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dflipflop9|Qn~feeder_combout\ = \dflipflop9|Qn~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dflipflop9|Qn~0_combout\,
	combout => \dflipflop9|Qn~feeder_combout\);

-- Location: FF_X29_Y20_N3
\dflipflop9|Qn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dflipflop8|ALT_INV_Qn~q\,
	d => \dflipflop9|Qn~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dflipflop9|Qn~q\);

-- Location: LCCOMB_X29_Y20_N28
\dflipflop10|Qn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dflipflop10|Qn~0_combout\ = !\dflipflop10|Qn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dflipflop10|Qn~q\,
	combout => \dflipflop10|Qn~0_combout\);

-- Location: LCCOMB_X29_Y20_N14
\dflipflop10|Qn~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dflipflop10|Qn~feeder_combout\ = \dflipflop10|Qn~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dflipflop10|Qn~0_combout\,
	combout => \dflipflop10|Qn~feeder_combout\);

-- Location: FF_X29_Y20_N15
\dflipflop10|Qn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dflipflop9|ALT_INV_Qn~q\,
	d => \dflipflop10|Qn~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dflipflop10|Qn~q\);

-- Location: LCCOMB_X28_Y20_N2
\dflipflop11|Qn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dflipflop11|Qn~0_combout\ = !\dflipflop11|Qn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dflipflop11|Qn~q\,
	combout => \dflipflop11|Qn~0_combout\);

-- Location: FF_X28_Y20_N17
\dflipflop11|Qn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dflipflop10|ALT_INV_Qn~q\,
	asdata => \dflipflop11|Qn~0_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dflipflop11|Qn~q\);

-- Location: LCCOMB_X28_Y20_N22
\dflipflop12|Qn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dflipflop12|Qn~0_combout\ = !\dflipflop12|Qn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dflipflop12|Qn~q\,
	combout => \dflipflop12|Qn~0_combout\);

-- Location: LCCOMB_X28_Y20_N14
\dflipflop12|Qn~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dflipflop12|Qn~feeder_combout\ = \dflipflop12|Qn~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dflipflop12|Qn~0_combout\,
	combout => \dflipflop12|Qn~feeder_combout\);

-- Location: FF_X28_Y20_N15
\dflipflop12|Qn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dflipflop11|ALT_INV_Qn~q\,
	d => \dflipflop12|Qn~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dflipflop12|Qn~q\);

-- Location: LCCOMB_X29_Y21_N20
\dflipflop13|Qn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dflipflop13|Qn~0_combout\ = !\dflipflop13|Qn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dflipflop13|Qn~q\,
	combout => \dflipflop13|Qn~0_combout\);

-- Location: LCCOMB_X29_Y21_N24
\dflipflop13|Qn~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dflipflop13|Qn~feeder_combout\ = \dflipflop13|Qn~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dflipflop13|Qn~0_combout\,
	combout => \dflipflop13|Qn~feeder_combout\);

-- Location: FF_X29_Y21_N25
\dflipflop13|Qn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dflipflop12|ALT_INV_Qn~q\,
	d => \dflipflop13|Qn~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dflipflop13|Qn~q\);

-- Location: LCCOMB_X29_Y21_N22
\dflipflop14|Qn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dflipflop14|Qn~0_combout\ = !\dflipflop14|Qn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dflipflop14|Qn~q\,
	combout => \dflipflop14|Qn~0_combout\);

-- Location: LCCOMB_X29_Y21_N14
\dflipflop14|Qn~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dflipflop14|Qn~feeder_combout\ = \dflipflop14|Qn~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dflipflop14|Qn~0_combout\,
	combout => \dflipflop14|Qn~feeder_combout\);

-- Location: FF_X29_Y21_N15
\dflipflop14|Qn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dflipflop13|ALT_INV_Qn~q\,
	d => \dflipflop14|Qn~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dflipflop14|Qn~q\);

-- Location: LCCOMB_X29_Y25_N30
\dflipflop15|Qn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dflipflop15|Qn~0_combout\ = !\dflipflop15|Qn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dflipflop15|Qn~q\,
	combout => \dflipflop15|Qn~0_combout\);

-- Location: LCCOMB_X29_Y25_N28
\dflipflop15|Qn~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dflipflop15|Qn~feeder_combout\ = \dflipflop15|Qn~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dflipflop15|Qn~0_combout\,
	combout => \dflipflop15|Qn~feeder_combout\);

-- Location: FF_X29_Y25_N29
\dflipflop15|Qn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dflipflop14|ALT_INV_Qn~q\,
	d => \dflipflop15|Qn~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dflipflop15|Qn~q\);

-- Location: LCCOMB_X29_Y25_N26
\dflipflop16|Qn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dflipflop16|Qn~0_combout\ = !\dflipflop16|Qn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dflipflop16|Qn~q\,
	combout => \dflipflop16|Qn~0_combout\);

-- Location: LCCOMB_X29_Y25_N14
\dflipflop16|Qn~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dflipflop16|Qn~feeder_combout\ = \dflipflop16|Qn~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dflipflop16|Qn~0_combout\,
	combout => \dflipflop16|Qn~feeder_combout\);

-- Location: FF_X29_Y25_N15
\dflipflop16|Qn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dflipflop15|ALT_INV_Qn~q\,
	d => \dflipflop16|Qn~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dflipflop16|Qn~q\);

-- Location: LCCOMB_X29_Y29_N10
\dflipflop17|Qn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dflipflop17|Qn~0_combout\ = !\dflipflop17|Qn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dflipflop17|Qn~q\,
	combout => \dflipflop17|Qn~0_combout\);

-- Location: LCCOMB_X29_Y29_N4
\dflipflop17|Qn~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dflipflop17|Qn~feeder_combout\ = \dflipflop17|Qn~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dflipflop17|Qn~0_combout\,
	combout => \dflipflop17|Qn~feeder_combout\);

-- Location: FF_X29_Y29_N5
\dflipflop17|Qn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dflipflop16|ALT_INV_Qn~q\,
	d => \dflipflop17|Qn~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dflipflop17|Qn~q\);

-- Location: LCCOMB_X29_Y29_N22
\dflipflop18|Qn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dflipflop18|Qn~0_combout\ = !\dflipflop18|Qn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dflipflop18|Qn~q\,
	combout => \dflipflop18|Qn~0_combout\);

-- Location: LCCOMB_X29_Y29_N14
\dflipflop18|Qn~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dflipflop18|Qn~feeder_combout\ = \dflipflop18|Qn~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dflipflop18|Qn~0_combout\,
	combout => \dflipflop18|Qn~feeder_combout\);

-- Location: FF_X29_Y29_N15
\dflipflop18|Qn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dflipflop17|ALT_INV_Qn~q\,
	d => \dflipflop18|Qn~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dflipflop18|Qn~q\);

-- Location: LCCOMB_X28_Y29_N2
\dflipflop19|Qn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dflipflop19|Qn~0_combout\ = !\dflipflop19|Qn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dflipflop19|Qn~q\,
	combout => \dflipflop19|Qn~0_combout\);

-- Location: FF_X28_Y29_N17
\dflipflop19|Qn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dflipflop18|ALT_INV_Qn~q\,
	asdata => \dflipflop19|Qn~0_combout\,
	clrn => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dflipflop19|Qn~q\);

-- Location: LCCOMB_X28_Y29_N22
\dflipflop20|Qn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dflipflop20|Qn~0_combout\ = !\dflipflop20|Qn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dflipflop20|Qn~q\,
	combout => \dflipflop20|Qn~0_combout\);

-- Location: LCCOMB_X28_Y29_N14
\dflipflop20|Qn~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dflipflop20|Qn~feeder_combout\ = \dflipflop20|Qn~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dflipflop20|Qn~0_combout\,
	combout => \dflipflop20|Qn~feeder_combout\);

-- Location: FF_X28_Y29_N15
\dflipflop20|Qn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dflipflop19|ALT_INV_Qn~q\,
	d => \dflipflop20|Qn~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dflipflop20|Qn~q\);

-- Location: CLKCTRL_G14
\dflipflop20|Qn~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \dflipflop20|Qn~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \dflipflop20|Qn~clkctrl_outclk\);

-- Location: LCCOMB_X51_Y17_N30
\dflipflop21|Qn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dflipflop21|Qn~0_combout\ = !\dflipflop21|Qn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dflipflop21|Qn~q\,
	combout => \dflipflop21|Qn~0_combout\);

-- Location: LCCOMB_X51_Y17_N26
\dflipflop21|Qn~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dflipflop21|Qn~feeder_combout\ = \dflipflop21|Qn~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dflipflop21|Qn~0_combout\,
	combout => \dflipflop21|Qn~feeder_combout\);

-- Location: FF_X51_Y17_N27
\dflipflop21|Qn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dflipflop20|ALT_INV_Qn~clkctrl_outclk\,
	d => \dflipflop21|Qn~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dflipflop21|Qn~q\);

-- Location: CLKCTRL_G9
\dflipflop21|Qn~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \dflipflop21|Qn~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \dflipflop21|Qn~clkctrl_outclk\);

-- Location: LCCOMB_X51_Y17_N22
\dflipflop22|Qn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dflipflop22|Qn~0_combout\ = !\dflipflop22|Qn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dflipflop22|Qn~q\,
	combout => \dflipflop22|Qn~0_combout\);

-- Location: LCCOMB_X51_Y17_N0
\dflipflop22|Qn~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dflipflop22|Qn~feeder_combout\ = \dflipflop22|Qn~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dflipflop22|Qn~0_combout\,
	combout => \dflipflop22|Qn~feeder_combout\);

-- Location: FF_X51_Y17_N1
\dflipflop22|Qn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dflipflop21|ALT_INV_Qn~clkctrl_outclk\,
	d => \dflipflop22|Qn~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dflipflop22|Qn~q\);

-- Location: CLKCTRL_G7
\dflipflop22|Qn~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \dflipflop22|Qn~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \dflipflop22|Qn~clkctrl_outclk\);

-- Location: LCCOMB_X25_Y32_N10
\dflipflop23|Qn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dflipflop23|Qn~0_combout\ = !\dflipflop23|Qn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dflipflop23|Qn~q\,
	combout => \dflipflop23|Qn~0_combout\);

-- Location: LCCOMB_X25_Y32_N24
\dflipflop23|Qn~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dflipflop23|Qn~feeder_combout\ = \dflipflop23|Qn~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dflipflop23|Qn~0_combout\,
	combout => \dflipflop23|Qn~feeder_combout\);

-- Location: FF_X25_Y32_N25
\dflipflop23|Qn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dflipflop22|ALT_INV_Qn~clkctrl_outclk\,
	d => \dflipflop23|Qn~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dflipflop23|Qn~q\);

-- Location: CLKCTRL_G10
\dflipflop23|Qn~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \dflipflop23|Qn~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \dflipflop23|Qn~clkctrl_outclk\);

-- Location: LCCOMB_X25_Y33_N22
\dflipflop24|Qn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dflipflop24|Qn~0_combout\ = !\dflipflop24|Qn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dflipflop24|Qn~q\,
	combout => \dflipflop24|Qn~0_combout\);

-- Location: LCCOMB_X25_Y33_N10
\dflipflop24|Qn~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dflipflop24|Qn~feeder_combout\ = \dflipflop24|Qn~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dflipflop24|Qn~0_combout\,
	combout => \dflipflop24|Qn~feeder_combout\);

-- Location: FF_X25_Y33_N11
\dflipflop24|Qn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dflipflop23|ALT_INV_Qn~clkctrl_outclk\,
	d => \dflipflop24|Qn~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dflipflop24|Qn~q\);

-- Location: CLKCTRL_G13
\dflipflop24|Qn~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \dflipflop24|Qn~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \dflipflop24|Qn~clkctrl_outclk\);

-- Location: LCCOMB_X26_Y33_N26
\dflipflop25|Qn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dflipflop25|Qn~0_combout\ = !\dflipflop25|Qn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dflipflop25|Qn~q\,
	combout => \dflipflop25|Qn~0_combout\);

-- Location: LCCOMB_X26_Y33_N22
\dflipflop25|Qn~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dflipflop25|Qn~feeder_combout\ = \dflipflop25|Qn~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dflipflop25|Qn~0_combout\,
	combout => \dflipflop25|Qn~feeder_combout\);

-- Location: FF_X26_Y33_N23
\dflipflop25|Qn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dflipflop24|ALT_INV_Qn~clkctrl_outclk\,
	d => \dflipflop25|Qn~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dflipflop25|Qn~q\);

-- Location: CLKCTRL_G11
\dflipflop25|Qn~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \dflipflop25|Qn~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \dflipflop25|Qn~clkctrl_outclk\);

-- Location: LCCOMB_X28_Y1_N16
\dflipflop26|Qn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dflipflop26|Qn~0_combout\ = !\dflipflop26|Qn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dflipflop26|Qn~q\,
	combout => \dflipflop26|Qn~0_combout\);

-- Location: LCCOMB_X28_Y1_N30
\dflipflop26|Qn~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dflipflop26|Qn~feeder_combout\ = \dflipflop26|Qn~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dflipflop26|Qn~0_combout\,
	combout => \dflipflop26|Qn~feeder_combout\);

-- Location: FF_X28_Y1_N31
\dflipflop26|Qn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dflipflop25|ALT_INV_Qn~clkctrl_outclk\,
	d => \dflipflop26|Qn~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dflipflop26|Qn~q\);

-- Location: CLKCTRL_G16
\dflipflop26|Qn~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \dflipflop26|Qn~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \dflipflop26|Qn~clkctrl_outclk\);

-- Location: LCCOMB_X28_Y1_N12
\dflipflop27|Qn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dflipflop27|Qn~0_combout\ = !\dflipflop27|Qn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dflipflop27|Qn~q\,
	combout => \dflipflop27|Qn~0_combout\);

-- Location: LCCOMB_X28_Y1_N8
\dflipflop27|Qn~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dflipflop27|Qn~feeder_combout\ = \dflipflop27|Qn~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dflipflop27|Qn~0_combout\,
	combout => \dflipflop27|Qn~feeder_combout\);

-- Location: FF_X28_Y1_N9
\dflipflop27|Qn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dflipflop26|ALT_INV_Qn~clkctrl_outclk\,
	d => \dflipflop27|Qn~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dflipflop27|Qn~q\);

-- Location: CLKCTRL_G17
\dflipflop27|Qn~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \dflipflop27|Qn~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \dflipflop27|Qn~clkctrl_outclk\);

-- Location: LCCOMB_X26_Y33_N30
\dflipflop28|Qn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dflipflop28|Qn~0_combout\ = !\dflipflop28|Qn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dflipflop28|Qn~q\,
	combout => \dflipflop28|Qn~0_combout\);

-- Location: LCCOMB_X26_Y33_N8
\dflipflop28|Qn~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dflipflop28|Qn~feeder_combout\ = \dflipflop28|Qn~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dflipflop28|Qn~0_combout\,
	combout => \dflipflop28|Qn~feeder_combout\);

-- Location: FF_X26_Y33_N9
\dflipflop28|Qn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dflipflop27|ALT_INV_Qn~clkctrl_outclk\,
	d => \dflipflop28|Qn~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dflipflop28|Qn~q\);

-- Location: CLKCTRL_G12
\dflipflop28|Qn~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \dflipflop28|Qn~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \dflipflop28|Qn~clkctrl_outclk\);

-- Location: LCCOMB_X52_Y17_N30
\dflipflop29|Qn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dflipflop29|Qn~0_combout\ = !\dflipflop29|Qn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dflipflop29|Qn~q\,
	combout => \dflipflop29|Qn~0_combout\);

-- Location: LCCOMB_X52_Y17_N0
\dflipflop29|Qn~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dflipflop29|Qn~feeder_combout\ = \dflipflop29|Qn~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dflipflop29|Qn~0_combout\,
	combout => \dflipflop29|Qn~feeder_combout\);

-- Location: FF_X52_Y17_N1
\dflipflop29|Qn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dflipflop28|ALT_INV_Qn~clkctrl_outclk\,
	d => \dflipflop29|Qn~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dflipflop29|Qn~q\);

-- Location: LCCOMB_X52_Y17_N18
\dflipflop29|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dflipflop29|Q~0_combout\ = !\dflipflop29|Qn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dflipflop29|Qn~q\,
	combout => \dflipflop29|Q~0_combout\);

-- Location: LCCOMB_X52_Y17_N22
\dflipflop29|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dflipflop29|Q~feeder_combout\ = \dflipflop29|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dflipflop29|Q~0_combout\,
	combout => \dflipflop29|Q~feeder_combout\);

-- Location: FF_X52_Y17_N23
\dflipflop29|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dflipflop28|ALT_INV_Qn~clkctrl_outclk\,
	d => \dflipflop29|Q~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dflipflop29|Q~q\);

-- Location: CLKCTRL_G8
\dflipflop29|Qn~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \dflipflop29|Qn~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \dflipflop29|Qn~clkctrl_outclk\);

-- Location: LCCOMB_X52_Y17_N8
\dflipflop30|Qn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dflipflop30|Qn~0_combout\ = !\dflipflop30|Qn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dflipflop30|Qn~q\,
	combout => \dflipflop30|Qn~0_combout\);

-- Location: LCCOMB_X52_Y17_N12
\dflipflop30|Qn~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dflipflop30|Qn~feeder_combout\ = \dflipflop30|Qn~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dflipflop30|Qn~0_combout\,
	combout => \dflipflop30|Qn~feeder_combout\);

-- Location: FF_X52_Y17_N13
\dflipflop30|Qn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dflipflop29|ALT_INV_Qn~clkctrl_outclk\,
	d => \dflipflop30|Qn~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dflipflop30|Qn~q\);

-- Location: LCCOMB_X52_Y17_N24
\dflipflop30|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dflipflop30|Q~0_combout\ = !\dflipflop30|Qn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dflipflop30|Qn~q\,
	combout => \dflipflop30|Q~0_combout\);

-- Location: LCCOMB_X52_Y17_N28
\dflipflop30|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dflipflop30|Q~feeder_combout\ = \dflipflop30|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dflipflop30|Q~0_combout\,
	combout => \dflipflop30|Q~feeder_combout\);

-- Location: FF_X52_Y17_N29
\dflipflop30|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dflipflop29|ALT_INV_Qn~clkctrl_outclk\,
	d => \dflipflop30|Q~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dflipflop30|Q~q\);

-- Location: CLKCTRL_G6
\dflipflop30|Qn~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \dflipflop30|Qn~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \dflipflop30|Qn~clkctrl_outclk\);

-- Location: LCCOMB_X50_Y16_N6
\dflipflop31|Qn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dflipflop31|Qn~0_combout\ = !\dflipflop31|Qn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dflipflop31|Qn~q\,
	combout => \dflipflop31|Qn~0_combout\);

-- Location: LCCOMB_X50_Y16_N0
\dflipflop31|Qn~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dflipflop31|Qn~feeder_combout\ = \dflipflop31|Qn~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dflipflop31|Qn~0_combout\,
	combout => \dflipflop31|Qn~feeder_combout\);

-- Location: FF_X50_Y16_N1
\dflipflop31|Qn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dflipflop30|ALT_INV_Qn~clkctrl_outclk\,
	d => \dflipflop31|Qn~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dflipflop31|Qn~q\);

-- Location: LCCOMB_X50_Y16_N20
\dflipflop31|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dflipflop31|Q~0_combout\ = !\dflipflop31|Qn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dflipflop31|Qn~q\,
	combout => \dflipflop31|Q~0_combout\);

-- Location: LCCOMB_X50_Y16_N26
\dflipflop31|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dflipflop31|Q~feeder_combout\ = \dflipflop31|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dflipflop31|Q~0_combout\,
	combout => \dflipflop31|Q~feeder_combout\);

-- Location: FF_X50_Y16_N27
\dflipflop31|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dflipflop30|ALT_INV_Qn~clkctrl_outclk\,
	d => \dflipflop31|Q~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dflipflop31|Q~q\);

-- Location: CLKCTRL_G1
\dflipflop31|Qn~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \dflipflop31|Qn~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \dflipflop31|Qn~clkctrl_outclk\);

-- Location: LCCOMB_X52_Y16_N28
\dflipflop32|Qn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dflipflop32|Qn~0_combout\ = !\dflipflop32|Qn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dflipflop32|Qn~q\,
	combout => \dflipflop32|Qn~0_combout\);

-- Location: LCCOMB_X52_Y16_N26
\dflipflop32|Qn~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dflipflop32|Qn~feeder_combout\ = \dflipflop32|Qn~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dflipflop32|Qn~0_combout\,
	combout => \dflipflop32|Qn~feeder_combout\);

-- Location: FF_X52_Y16_N27
\dflipflop32|Qn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dflipflop31|ALT_INV_Qn~clkctrl_outclk\,
	d => \dflipflop32|Qn~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dflipflop32|Qn~q\);

-- Location: LCCOMB_X52_Y16_N24
\dflipflop32|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dflipflop32|Q~0_combout\ = !\dflipflop32|Qn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dflipflop32|Qn~q\,
	combout => \dflipflop32|Q~0_combout\);

-- Location: LCCOMB_X50_Y16_N22
\dflipflop32|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dflipflop32|Q~feeder_combout\ = \dflipflop32|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dflipflop32|Q~0_combout\,
	combout => \dflipflop32|Q~feeder_combout\);

-- Location: FF_X50_Y16_N23
\dflipflop32|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dflipflop31|ALT_INV_Qn~clkctrl_outclk\,
	d => \dflipflop32|Q~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dflipflop32|Q~q\);

-- Location: CLKCTRL_G5
\dflipflop32|Qn~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \dflipflop32|Qn~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \dflipflop32|Qn~clkctrl_outclk\);

-- Location: LCCOMB_X27_Y2_N24
\dflipflop33|Qn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dflipflop33|Qn~0_combout\ = !\dflipflop33|Qn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dflipflop33|Qn~q\,
	combout => \dflipflop33|Qn~0_combout\);

-- Location: LCCOMB_X27_Y2_N4
\dflipflop33|Qn~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dflipflop33|Qn~feeder_combout\ = \dflipflop33|Qn~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dflipflop33|Qn~0_combout\,
	combout => \dflipflop33|Qn~feeder_combout\);

-- Location: FF_X27_Y2_N5
\dflipflop33|Qn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dflipflop32|ALT_INV_Qn~clkctrl_outclk\,
	d => \dflipflop33|Qn~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dflipflop33|Qn~q\);

-- Location: LCCOMB_X27_Y7_N22
\dflipflop33|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dflipflop33|Q~0_combout\ = !\dflipflop33|Qn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dflipflop33|Qn~q\,
	combout => \dflipflop33|Q~0_combout\);

-- Location: LCCOMB_X27_Y7_N16
\dflipflop33|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dflipflop33|Q~feeder_combout\ = \dflipflop33|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dflipflop33|Q~0_combout\,
	combout => \dflipflop33|Q~feeder_combout\);

-- Location: FF_X27_Y7_N17
\dflipflop33|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dflipflop32|ALT_INV_Qn~clkctrl_outclk\,
	d => \dflipflop33|Q~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dflipflop33|Q~q\);

-- Location: CLKCTRL_G19
\dflipflop33|Qn~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \dflipflop33|Qn~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \dflipflop33|Qn~clkctrl_outclk\);

-- Location: LCCOMB_X27_Y1_N0
\dflipflop34|Qn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dflipflop34|Qn~0_combout\ = !\dflipflop34|Qn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dflipflop34|Qn~q\,
	combout => \dflipflop34|Qn~0_combout\);

-- Location: LCCOMB_X27_Y1_N20
\dflipflop34|Qn~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dflipflop34|Qn~feeder_combout\ = \dflipflop34|Qn~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dflipflop34|Qn~0_combout\,
	combout => \dflipflop34|Qn~feeder_combout\);

-- Location: FF_X27_Y1_N21
\dflipflop34|Qn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dflipflop33|ALT_INV_Qn~clkctrl_outclk\,
	d => \dflipflop34|Qn~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dflipflop34|Qn~q\);

-- Location: LCCOMB_X27_Y1_N24
\dflipflop34|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dflipflop34|Q~0_combout\ = !\dflipflop34|Qn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dflipflop34|Qn~q\,
	combout => \dflipflop34|Q~0_combout\);

-- Location: LCCOMB_X27_Y1_N18
\dflipflop34|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dflipflop34|Q~feeder_combout\ = \dflipflop34|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dflipflop34|Q~0_combout\,
	combout => \dflipflop34|Q~feeder_combout\);

-- Location: FF_X27_Y1_N19
\dflipflop34|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dflipflop33|ALT_INV_Qn~clkctrl_outclk\,
	d => \dflipflop34|Q~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dflipflop34|Q~q\);

-- Location: CLKCTRL_G15
\dflipflop34|Qn~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \dflipflop34|Qn~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \dflipflop34|Qn~clkctrl_outclk\);

-- Location: LCCOMB_X27_Y1_N14
\dflipflop35|Qn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dflipflop35|Qn~0_combout\ = !\dflipflop35|Qn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dflipflop35|Qn~q\,
	combout => \dflipflop35|Qn~0_combout\);

-- Location: LCCOMB_X27_Y1_N6
\dflipflop35|Qn~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dflipflop35|Qn~feeder_combout\ = \dflipflop35|Qn~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dflipflop35|Qn~0_combout\,
	combout => \dflipflop35|Qn~feeder_combout\);

-- Location: FF_X27_Y1_N7
\dflipflop35|Qn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dflipflop34|ALT_INV_Qn~clkctrl_outclk\,
	d => \dflipflop35|Qn~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dflipflop35|Qn~q\);

-- Location: LCCOMB_X27_Y1_N16
\dflipflop35|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dflipflop35|Q~0_combout\ = !\dflipflop35|Qn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dflipflop35|Qn~q\,
	combout => \dflipflop35|Q~0_combout\);

-- Location: LCCOMB_X27_Y1_N12
\dflipflop35|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dflipflop35|Q~feeder_combout\ = \dflipflop35|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dflipflop35|Q~0_combout\,
	combout => \dflipflop35|Q~feeder_combout\);

-- Location: FF_X27_Y1_N13
\dflipflop35|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dflipflop34|ALT_INV_Qn~clkctrl_outclk\,
	d => \dflipflop35|Q~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dflipflop35|Q~q\);

-- Location: CLKCTRL_G18
\dflipflop35|Qn~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \dflipflop35|Qn~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \dflipflop35|Qn~clkctrl_outclk\);

-- Location: LCCOMB_X31_Y11_N12
\dflipflop36|Qn~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dflipflop36|Qn~0_combout\ = !\dflipflop36|Qn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dflipflop36|Qn~q\,
	combout => \dflipflop36|Qn~0_combout\);

-- Location: FF_X31_Y11_N13
\dflipflop36|Qn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dflipflop35|ALT_INV_Qn~clkctrl_outclk\,
	d => \dflipflop36|Qn~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dflipflop36|Qn~q\);

-- Location: LCCOMB_X31_Y11_N4
\dflipflop36|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dflipflop36|Q~0_combout\ = !\dflipflop36|Qn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dflipflop36|Qn~q\,
	combout => \dflipflop36|Q~0_combout\);

-- Location: FF_X31_Y11_N5
\dflipflop36|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dflipflop35|ALT_INV_Qn~clkctrl_outclk\,
	d => \dflipflop36|Q~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dflipflop36|Q~q\);

-- Location: LCCOMB_X46_Y17_N4
\dflipflop21|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dflipflop21|Q~0_combout\ = !\dflipflop21|Qn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \dflipflop21|Qn~q\,
	combout => \dflipflop21|Q~0_combout\);

-- Location: LCCOMB_X45_Y17_N4
\dflipflop21|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dflipflop21|Q~feeder_combout\ = \dflipflop21|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dflipflop21|Q~0_combout\,
	combout => \dflipflop21|Q~feeder_combout\);

-- Location: FF_X45_Y17_N5
\dflipflop21|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dflipflop20|ALT_INV_Qn~clkctrl_outclk\,
	d => \dflipflop21|Q~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dflipflop21|Q~q\);

-- Location: LCCOMB_X51_Y17_N20
\dflipflop22|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dflipflop22|Q~0_combout\ = !\dflipflop22|Qn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dflipflop22|Qn~q\,
	combout => \dflipflop22|Q~0_combout\);

-- Location: LCCOMB_X50_Y17_N12
\dflipflop22|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dflipflop22|Q~feeder_combout\ = \dflipflop22|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dflipflop22|Q~0_combout\,
	combout => \dflipflop22|Q~feeder_combout\);

-- Location: FF_X50_Y17_N13
\dflipflop22|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dflipflop21|ALT_INV_Qn~clkctrl_outclk\,
	d => \dflipflop22|Q~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dflipflop22|Q~q\);

-- Location: LCCOMB_X25_Y32_N20
\dflipflop23|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dflipflop23|Q~0_combout\ = !\dflipflop23|Qn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dflipflop23|Qn~q\,
	combout => \dflipflop23|Q~0_combout\);

-- Location: LCCOMB_X25_Y32_N18
\dflipflop23|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dflipflop23|Q~feeder_combout\ = \dflipflop23|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dflipflop23|Q~0_combout\,
	combout => \dflipflop23|Q~feeder_combout\);

-- Location: FF_X25_Y32_N19
\dflipflop23|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dflipflop22|ALT_INV_Qn~clkctrl_outclk\,
	d => \dflipflop23|Q~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dflipflop23|Q~q\);

-- Location: LCCOMB_X25_Y33_N0
\dflipflop24|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dflipflop24|Q~0_combout\ = !\dflipflop24|Qn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \dflipflop24|Qn~q\,
	combout => \dflipflop24|Q~0_combout\);

-- Location: LCCOMB_X25_Y33_N4
\dflipflop24|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dflipflop24|Q~feeder_combout\ = \dflipflop24|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dflipflop24|Q~0_combout\,
	combout => \dflipflop24|Q~feeder_combout\);

-- Location: FF_X25_Y33_N5
\dflipflop24|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dflipflop23|ALT_INV_Qn~clkctrl_outclk\,
	d => \dflipflop24|Q~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dflipflop24|Q~q\);

-- Location: LCCOMB_X26_Y33_N0
\dflipflop25|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dflipflop25|Q~0_combout\ = !\dflipflop25|Qn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dflipflop25|Qn~q\,
	combout => \dflipflop25|Q~0_combout\);

-- Location: LCCOMB_X26_Y33_N12
\dflipflop25|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dflipflop25|Q~feeder_combout\ = \dflipflop25|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dflipflop25|Q~0_combout\,
	combout => \dflipflop25|Q~feeder_combout\);

-- Location: FF_X26_Y33_N13
\dflipflop25|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dflipflop24|ALT_INV_Qn~clkctrl_outclk\,
	d => \dflipflop25|Q~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dflipflop25|Q~q\);

-- Location: LCCOMB_X28_Y1_N22
\dflipflop26|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dflipflop26|Q~0_combout\ = !\dflipflop26|Qn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dflipflop26|Qn~q\,
	combout => \dflipflop26|Q~0_combout\);

-- Location: LCCOMB_X28_Y1_N6
\dflipflop26|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dflipflop26|Q~feeder_combout\ = \dflipflop26|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dflipflop26|Q~0_combout\,
	combout => \dflipflop26|Q~feeder_combout\);

-- Location: FF_X28_Y1_N7
\dflipflop26|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dflipflop25|ALT_INV_Qn~clkctrl_outclk\,
	d => \dflipflop26|Q~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dflipflop26|Q~q\);

-- Location: LCCOMB_X28_Y1_N24
\dflipflop27|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dflipflop27|Q~0_combout\ = !\dflipflop27|Qn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dflipflop27|Qn~q\,
	combout => \dflipflop27|Q~0_combout\);

-- Location: LCCOMB_X28_Y1_N0
\dflipflop27|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dflipflop27|Q~feeder_combout\ = \dflipflop27|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dflipflop27|Q~0_combout\,
	combout => \dflipflop27|Q~feeder_combout\);

-- Location: FF_X28_Y1_N1
\dflipflop27|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dflipflop26|ALT_INV_Qn~clkctrl_outclk\,
	d => \dflipflop27|Q~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dflipflop27|Q~q\);

-- Location: LCCOMB_X26_Y33_N20
\dflipflop28|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dflipflop28|Q~0_combout\ = !\dflipflop28|Qn~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dflipflop28|Qn~q\,
	combout => \dflipflop28|Q~0_combout\);

-- Location: LCCOMB_X26_Y33_N28
\dflipflop28|Q~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \dflipflop28|Q~feeder_combout\ = \dflipflop28|Q~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dflipflop28|Q~0_combout\,
	combout => \dflipflop28|Q~feeder_combout\);

-- Location: FF_X26_Y33_N29
\dflipflop28|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \dflipflop27|ALT_INV_Qn~clkctrl_outclk\,
	d => \dflipflop28|Q~feeder_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dflipflop28|Q~q\);

-- Location: LCCOMB_X31_Y11_N30
\sevenSegmentDecoder0|LED17Driver|LED[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenSegmentDecoder0|LED17Driver|LED[1]~0_combout\ = (\dflipflop36|Q~q\) # ((\dflipflop35|Q~q\ & ((!\dflipflop34|Q~q\) # (!\dflipflop33|Q~q\))) # (!\dflipflop35|Q~q\ & ((\dflipflop34|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dflipflop33|Q~q\,
	datab => \dflipflop35|Q~q\,
	datac => \dflipflop34|Q~q\,
	datad => \dflipflop36|Q~q\,
	combout => \sevenSegmentDecoder0|LED17Driver|LED[1]~0_combout\);

-- Location: LCCOMB_X31_Y11_N0
\sevenSegmentDecoder0|LED17Driver|LED[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenSegmentDecoder0|LED17Driver|LED[2]~1_combout\ = (\dflipflop35|Q~q\ & ((\dflipflop34|Q~q\ & ((\dflipflop36|Q~q\) # (!\dflipflop33|Q~q\))) # (!\dflipflop34|Q~q\ & ((!\dflipflop36|Q~q\))))) # (!\dflipflop35|Q~q\ & ((\dflipflop36|Q~q\) # 
-- ((!\dflipflop33|Q~q\ & !\dflipflop34|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dflipflop33|Q~q\,
	datab => \dflipflop35|Q~q\,
	datac => \dflipflop34|Q~q\,
	datad => \dflipflop36|Q~q\,
	combout => \sevenSegmentDecoder0|LED17Driver|LED[2]~1_combout\);

-- Location: LCCOMB_X31_Y11_N22
\sevenSegmentDecoder0|LED17Driver|LED[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenSegmentDecoder0|LED17Driver|LED[3]~2_combout\ = (\dflipflop34|Q~q\ & (\dflipflop33|Q~q\ & ((!\dflipflop36|Q~q\)))) # (!\dflipflop34|Q~q\ & ((\dflipflop35|Q~q\ & ((!\dflipflop36|Q~q\))) # (!\dflipflop35|Q~q\ & (\dflipflop33|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dflipflop33|Q~q\,
	datab => \dflipflop35|Q~q\,
	datac => \dflipflop34|Q~q\,
	datad => \dflipflop36|Q~q\,
	combout => \sevenSegmentDecoder0|LED17Driver|LED[3]~2_combout\);

-- Location: LCCOMB_X31_Y11_N24
\sevenSegmentDecoder0|LED17Driver|LED[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenSegmentDecoder0|LED17Driver|LED[4]~3_combout\ = (\dflipflop34|Q~q\ & ((\dflipflop33|Q~q\ & (\dflipflop35|Q~q\)) # (!\dflipflop33|Q~q\ & (!\dflipflop35|Q~q\ & \dflipflop36|Q~q\)))) # (!\dflipflop34|Q~q\ & (!\dflipflop36|Q~q\ & (\dflipflop33|Q~q\ $ 
-- (\dflipflop35|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dflipflop33|Q~q\,
	datab => \dflipflop35|Q~q\,
	datac => \dflipflop34|Q~q\,
	datad => \dflipflop36|Q~q\,
	combout => \sevenSegmentDecoder0|LED17Driver|LED[4]~3_combout\);

-- Location: LCCOMB_X31_Y11_N18
\sevenSegmentDecoder0|LED17Driver|LED[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenSegmentDecoder0|LED17Driver|LED[5]~4_combout\ = (\dflipflop35|Q~q\ & (((\dflipflop33|Q~q\ & !\dflipflop34|Q~q\)) # (!\dflipflop36|Q~q\))) # (!\dflipflop35|Q~q\ & ((\dflipflop33|Q~q\) # ((\dflipflop36|Q~q\) # (!\dflipflop34|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dflipflop33|Q~q\,
	datab => \dflipflop35|Q~q\,
	datac => \dflipflop34|Q~q\,
	datad => \dflipflop36|Q~q\,
	combout => \sevenSegmentDecoder0|LED17Driver|LED[5]~4_combout\);

-- Location: LCCOMB_X31_Y11_N8
\sevenSegmentDecoder0|LED17Driver|LED[6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenSegmentDecoder0|LED17Driver|LED[6]~5_combout\ = (\dflipflop34|Q~q\ & ((\dflipflop33|Q~q\ & ((!\dflipflop36|Q~q\))) # (!\dflipflop33|Q~q\ & (!\dflipflop35|Q~q\)))) # (!\dflipflop34|Q~q\ & ((\dflipflop33|Q~q\ $ (!\dflipflop36|Q~q\)) # 
-- (!\dflipflop35|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101110110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dflipflop33|Q~q\,
	datab => \dflipflop35|Q~q\,
	datac => \dflipflop34|Q~q\,
	datad => \dflipflop36|Q~q\,
	combout => \sevenSegmentDecoder0|LED17Driver|LED[6]~5_combout\);

-- Location: LCCOMB_X31_Y11_N10
\sevenSegmentDecoder0|LED17Driver|LED[7]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenSegmentDecoder0|LED17Driver|LED[7]~6_combout\ = (\dflipflop35|Q~q\ & ((\dflipflop34|Q~q\) # ((\dflipflop33|Q~q\ & !\dflipflop36|Q~q\)))) # (!\dflipflop35|Q~q\ & ((\dflipflop34|Q~q\ $ (\dflipflop36|Q~q\)) # (!\dflipflop33|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001111111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dflipflop33|Q~q\,
	datab => \dflipflop35|Q~q\,
	datac => \dflipflop34|Q~q\,
	datad => \dflipflop36|Q~q\,
	combout => \sevenSegmentDecoder0|LED17Driver|LED[7]~6_combout\);

-- Location: LCCOMB_X52_Y17_N14
\sevenSegmentDecoder0|LED18Driver|LED[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenSegmentDecoder0|LED18Driver|LED[1]~0_combout\ = (\dflipflop32|Q~q\) # ((\dflipflop30|Q~q\ & ((!\dflipflop29|Q~q\) # (!\dflipflop31|Q~q\))) # (!\dflipflop30|Q~q\ & (\dflipflop31|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dflipflop30|Q~q\,
	datab => \dflipflop31|Q~q\,
	datac => \dflipflop29|Q~q\,
	datad => \dflipflop32|Q~q\,
	combout => \sevenSegmentDecoder0|LED18Driver|LED[1]~0_combout\);

-- Location: LCCOMB_X52_Y17_N20
\sevenSegmentDecoder0|LED18Driver|LED[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenSegmentDecoder0|LED18Driver|LED[2]~1_combout\ = (\dflipflop30|Q~q\ & ((\dflipflop32|Q~q\) # ((\dflipflop31|Q~q\ & !\dflipflop29|Q~q\)))) # (!\dflipflop30|Q~q\ & ((\dflipflop31|Q~q\ & ((!\dflipflop32|Q~q\))) # (!\dflipflop31|Q~q\ & 
-- ((\dflipflop32|Q~q\) # (!\dflipflop29|Q~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dflipflop30|Q~q\,
	datab => \dflipflop31|Q~q\,
	datac => \dflipflop29|Q~q\,
	datad => \dflipflop32|Q~q\,
	combout => \sevenSegmentDecoder0|LED18Driver|LED[2]~1_combout\);

-- Location: LCCOMB_X52_Y17_N16
\sevenSegmentDecoder0|LED18Driver|LED[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenSegmentDecoder0|LED18Driver|LED[3]~2_combout\ = (\dflipflop30|Q~q\ & (((\dflipflop29|Q~q\ & !\dflipflop32|Q~q\)))) # (!\dflipflop30|Q~q\ & ((\dflipflop31|Q~q\ & ((!\dflipflop32|Q~q\))) # (!\dflipflop31|Q~q\ & (\dflipflop29|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dflipflop30|Q~q\,
	datab => \dflipflop31|Q~q\,
	datac => \dflipflop29|Q~q\,
	datad => \dflipflop32|Q~q\,
	combout => \sevenSegmentDecoder0|LED18Driver|LED[3]~2_combout\);

-- Location: LCCOMB_X52_Y17_N6
\sevenSegmentDecoder0|LED18Driver|LED[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenSegmentDecoder0|LED18Driver|LED[4]~3_combout\ = (\dflipflop30|Q~q\ & ((\dflipflop31|Q~q\ & (\dflipflop29|Q~q\)) # (!\dflipflop31|Q~q\ & (!\dflipflop29|Q~q\ & \dflipflop32|Q~q\)))) # (!\dflipflop30|Q~q\ & (!\dflipflop32|Q~q\ & (\dflipflop31|Q~q\ $ 
-- (\dflipflop29|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dflipflop30|Q~q\,
	datab => \dflipflop31|Q~q\,
	datac => \dflipflop29|Q~q\,
	datad => \dflipflop32|Q~q\,
	combout => \sevenSegmentDecoder0|LED18Driver|LED[4]~3_combout\);

-- Location: LCCOMB_X52_Y17_N26
\sevenSegmentDecoder0|LED18Driver|LED[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenSegmentDecoder0|LED18Driver|LED[5]~4_combout\ = (\dflipflop31|Q~q\ & (((!\dflipflop30|Q~q\ & \dflipflop29|Q~q\)) # (!\dflipflop32|Q~q\))) # (!\dflipflop31|Q~q\ & (((\dflipflop29|Q~q\) # (\dflipflop32|Q~q\)) # (!\dflipflop30|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dflipflop30|Q~q\,
	datab => \dflipflop31|Q~q\,
	datac => \dflipflop29|Q~q\,
	datad => \dflipflop32|Q~q\,
	combout => \sevenSegmentDecoder0|LED18Driver|LED[5]~4_combout\);

-- Location: LCCOMB_X50_Y16_N24
\sevenSegmentDecoder0|LED18Driver|LED[6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenSegmentDecoder0|LED18Driver|LED[6]~5_combout\ = (\dflipflop32|Q~q\ & ((\dflipflop29|Q~q\ & ((!\dflipflop30|Q~q\))) # (!\dflipflop29|Q~q\ & (!\dflipflop31|Q~q\)))) # (!\dflipflop32|Q~q\ & ((\dflipflop29|Q~q\ $ (!\dflipflop30|Q~q\)) # 
-- (!\dflipflop31|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011110011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dflipflop32|Q~q\,
	datab => \dflipflop29|Q~q\,
	datac => \dflipflop31|Q~q\,
	datad => \dflipflop30|Q~q\,
	combout => \sevenSegmentDecoder0|LED18Driver|LED[6]~5_combout\);

-- Location: LCCOMB_X50_Y16_N30
\sevenSegmentDecoder0|LED18Driver|LED[7]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenSegmentDecoder0|LED18Driver|LED[7]~6_combout\ = (\dflipflop31|Q~q\ & ((\dflipflop30|Q~q\) # ((!\dflipflop32|Q~q\ & \dflipflop29|Q~q\)))) # (!\dflipflop31|Q~q\ & ((\dflipflop32|Q~q\ $ (\dflipflop30|Q~q\)) # (!\dflipflop29|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dflipflop32|Q~q\,
	datab => \dflipflop29|Q~q\,
	datac => \dflipflop31|Q~q\,
	datad => \dflipflop30|Q~q\,
	combout => \sevenSegmentDecoder0|LED18Driver|LED[7]~6_combout\);

-- Location: LCCOMB_X28_Y1_N20
\sevenSegmentDecoder0|LED19Driver|LED[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenSegmentDecoder0|LED19Driver|LED[1]~0_combout\ = (\dflipflop28|Q~q\) # ((\dflipflop27|Q~q\ & ((!\dflipflop26|Q~q\) # (!\dflipflop25|Q~q\))) # (!\dflipflop27|Q~q\ & ((\dflipflop26|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dflipflop27|Q~q\,
	datab => \dflipflop25|Q~q\,
	datac => \dflipflop28|Q~q\,
	datad => \dflipflop26|Q~q\,
	combout => \sevenSegmentDecoder0|LED19Driver|LED[1]~0_combout\);

-- Location: LCCOMB_X28_Y1_N28
\sevenSegmentDecoder0|LED19Driver|LED[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenSegmentDecoder0|LED19Driver|LED[2]~1_combout\ = (\dflipflop27|Q~q\ & ((\dflipflop28|Q~q\ & ((\dflipflop26|Q~q\))) # (!\dflipflop28|Q~q\ & ((!\dflipflop26|Q~q\) # (!\dflipflop25|Q~q\))))) # (!\dflipflop27|Q~q\ & ((\dflipflop28|Q~q\) # 
-- ((!\dflipflop25|Q~q\ & !\dflipflop26|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001001011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dflipflop27|Q~q\,
	datab => \dflipflop25|Q~q\,
	datac => \dflipflop28|Q~q\,
	datad => \dflipflop26|Q~q\,
	combout => \sevenSegmentDecoder0|LED19Driver|LED[2]~1_combout\);

-- Location: LCCOMB_X28_Y1_N14
\sevenSegmentDecoder0|LED19Driver|LED[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenSegmentDecoder0|LED19Driver|LED[3]~2_combout\ = (\dflipflop26|Q~q\ & (((\dflipflop25|Q~q\ & !\dflipflop28|Q~q\)))) # (!\dflipflop26|Q~q\ & ((\dflipflop27|Q~q\ & ((!\dflipflop28|Q~q\))) # (!\dflipflop27|Q~q\ & (\dflipflop25|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dflipflop27|Q~q\,
	datab => \dflipflop25|Q~q\,
	datac => \dflipflop28|Q~q\,
	datad => \dflipflop26|Q~q\,
	combout => \sevenSegmentDecoder0|LED19Driver|LED[3]~2_combout\);

-- Location: LCCOMB_X28_Y1_N26
\sevenSegmentDecoder0|LED19Driver|LED[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenSegmentDecoder0|LED19Driver|LED[4]~3_combout\ = (\dflipflop26|Q~q\ & ((\dflipflop27|Q~q\ & (\dflipflop25|Q~q\)) # (!\dflipflop27|Q~q\ & (!\dflipflop25|Q~q\ & \dflipflop28|Q~q\)))) # (!\dflipflop26|Q~q\ & (!\dflipflop28|Q~q\ & (\dflipflop27|Q~q\ $ 
-- (\dflipflop25|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dflipflop27|Q~q\,
	datab => \dflipflop25|Q~q\,
	datac => \dflipflop28|Q~q\,
	datad => \dflipflop26|Q~q\,
	combout => \sevenSegmentDecoder0|LED19Driver|LED[4]~3_combout\);

-- Location: LCCOMB_X28_Y1_N10
\sevenSegmentDecoder0|LED19Driver|LED[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenSegmentDecoder0|LED19Driver|LED[5]~4_combout\ = (\dflipflop27|Q~q\ & (((\dflipflop25|Q~q\ & !\dflipflop26|Q~q\)) # (!\dflipflop28|Q~q\))) # (!\dflipflop27|Q~q\ & ((\dflipflop25|Q~q\) # ((\dflipflop28|Q~q\) # (!\dflipflop26|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dflipflop27|Q~q\,
	datab => \dflipflop25|Q~q\,
	datac => \dflipflop28|Q~q\,
	datad => \dflipflop26|Q~q\,
	combout => \sevenSegmentDecoder0|LED19Driver|LED[5]~4_combout\);

-- Location: LCCOMB_X28_Y1_N18
\sevenSegmentDecoder0|LED19Driver|LED[6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenSegmentDecoder0|LED19Driver|LED[6]~5_combout\ = (\dflipflop28|Q~q\ & ((\dflipflop25|Q~q\ & ((!\dflipflop26|Q~q\))) # (!\dflipflop25|Q~q\ & (!\dflipflop27|Q~q\)))) # (!\dflipflop28|Q~q\ & ((\dflipflop25|Q~q\ $ (!\dflipflop26|Q~q\)) # 
-- (!\dflipflop27|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110111010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dflipflop27|Q~q\,
	datab => \dflipflop25|Q~q\,
	datac => \dflipflop28|Q~q\,
	datad => \dflipflop26|Q~q\,
	combout => \sevenSegmentDecoder0|LED19Driver|LED[6]~5_combout\);

-- Location: LCCOMB_X28_Y1_N4
\sevenSegmentDecoder0|LED19Driver|LED[7]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenSegmentDecoder0|LED19Driver|LED[7]~6_combout\ = (\dflipflop27|Q~q\ & ((\dflipflop26|Q~q\) # ((\dflipflop25|Q~q\ & !\dflipflop28|Q~q\)))) # (!\dflipflop27|Q~q\ & ((\dflipflop28|Q~q\ $ (\dflipflop26|Q~q\)) # (!\dflipflop25|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111101011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dflipflop27|Q~q\,
	datab => \dflipflop25|Q~q\,
	datac => \dflipflop28|Q~q\,
	datad => \dflipflop26|Q~q\,
	combout => \sevenSegmentDecoder0|LED19Driver|LED[7]~6_combout\);

-- Location: LCCOMB_X45_Y17_N2
\sevenSegmentDecoder0|LED20Driver|LED[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenSegmentDecoder0|LED20Driver|LED[1]~0_combout\ = (\dflipflop24|Q~q\) # ((\dflipflop23|Q~q\ & ((!\dflipflop22|Q~q\) # (!\dflipflop21|Q~q\))) # (!\dflipflop23|Q~q\ & ((\dflipflop22|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dflipflop21|Q~q\,
	datab => \dflipflop23|Q~q\,
	datac => \dflipflop24|Q~q\,
	datad => \dflipflop22|Q~q\,
	combout => \sevenSegmentDecoder0|LED20Driver|LED[1]~0_combout\);

-- Location: LCCOMB_X45_Y17_N20
\sevenSegmentDecoder0|LED20Driver|LED[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenSegmentDecoder0|LED20Driver|LED[2]~1_combout\ = (\dflipflop23|Q~q\ & ((\dflipflop24|Q~q\ & ((\dflipflop22|Q~q\))) # (!\dflipflop24|Q~q\ & ((!\dflipflop22|Q~q\) # (!\dflipflop21|Q~q\))))) # (!\dflipflop23|Q~q\ & ((\dflipflop24|Q~q\) # 
-- ((!\dflipflop21|Q~q\ & !\dflipflop22|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dflipflop21|Q~q\,
	datab => \dflipflop23|Q~q\,
	datac => \dflipflop24|Q~q\,
	datad => \dflipflop22|Q~q\,
	combout => \sevenSegmentDecoder0|LED20Driver|LED[2]~1_combout\);

-- Location: LCCOMB_X45_Y17_N10
\sevenSegmentDecoder0|LED20Driver|LED[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenSegmentDecoder0|LED20Driver|LED[3]~2_combout\ = (\dflipflop22|Q~q\ & (\dflipflop21|Q~q\ & ((!\dflipflop24|Q~q\)))) # (!\dflipflop22|Q~q\ & ((\dflipflop23|Q~q\ & ((!\dflipflop24|Q~q\))) # (!\dflipflop23|Q~q\ & (\dflipflop21|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dflipflop21|Q~q\,
	datab => \dflipflop23|Q~q\,
	datac => \dflipflop24|Q~q\,
	datad => \dflipflop22|Q~q\,
	combout => \sevenSegmentDecoder0|LED20Driver|LED[3]~2_combout\);

-- Location: LCCOMB_X45_Y17_N12
\sevenSegmentDecoder0|LED20Driver|LED[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenSegmentDecoder0|LED20Driver|LED[4]~3_combout\ = (\dflipflop22|Q~q\ & ((\dflipflop21|Q~q\ & (\dflipflop23|Q~q\)) # (!\dflipflop21|Q~q\ & (!\dflipflop23|Q~q\ & \dflipflop24|Q~q\)))) # (!\dflipflop22|Q~q\ & (!\dflipflop24|Q~q\ & (\dflipflop21|Q~q\ $ 
-- (\dflipflop23|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dflipflop21|Q~q\,
	datab => \dflipflop23|Q~q\,
	datac => \dflipflop24|Q~q\,
	datad => \dflipflop22|Q~q\,
	combout => \sevenSegmentDecoder0|LED20Driver|LED[4]~3_combout\);

-- Location: LCCOMB_X45_Y17_N14
\sevenSegmentDecoder0|LED20Driver|LED[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenSegmentDecoder0|LED20Driver|LED[5]~4_combout\ = (\dflipflop23|Q~q\ & (((\dflipflop21|Q~q\ & !\dflipflop22|Q~q\)) # (!\dflipflop24|Q~q\))) # (!\dflipflop23|Q~q\ & ((\dflipflop21|Q~q\) # ((\dflipflop24|Q~q\) # (!\dflipflop22|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dflipflop21|Q~q\,
	datab => \dflipflop23|Q~q\,
	datac => \dflipflop24|Q~q\,
	datad => \dflipflop22|Q~q\,
	combout => \sevenSegmentDecoder0|LED20Driver|LED[5]~4_combout\);

-- Location: LCCOMB_X45_Y17_N28
\sevenSegmentDecoder0|LED20Driver|LED[6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenSegmentDecoder0|LED20Driver|LED[6]~5_combout\ = (\dflipflop24|Q~q\ & ((\dflipflop21|Q~q\ & ((!\dflipflop22|Q~q\))) # (!\dflipflop21|Q~q\ & (!\dflipflop23|Q~q\)))) # (!\dflipflop24|Q~q\ & ((\dflipflop21|Q~q\ $ (!\dflipflop22|Q~q\)) # 
-- (!\dflipflop23|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101110110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dflipflop21|Q~q\,
	datab => \dflipflop23|Q~q\,
	datac => \dflipflop24|Q~q\,
	datad => \dflipflop22|Q~q\,
	combout => \sevenSegmentDecoder0|LED20Driver|LED[6]~5_combout\);

-- Location: LCCOMB_X45_Y17_N22
\sevenSegmentDecoder0|LED20Driver|LED[7]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sevenSegmentDecoder0|LED20Driver|LED[7]~6_combout\ = (\dflipflop23|Q~q\ & ((\dflipflop22|Q~q\) # ((\dflipflop21|Q~q\ & !\dflipflop24|Q~q\)))) # (!\dflipflop23|Q~q\ & ((\dflipflop24|Q~q\ $ (\dflipflop22|Q~q\)) # (!\dflipflop21|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dflipflop21|Q~q\,
	datab => \dflipflop23|Q~q\,
	datac => \dflipflop24|Q~q\,
	datad => \dflipflop22|Q~q\,
	combout => \sevenSegmentDecoder0|LED20Driver|LED[7]~6_combout\);

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


