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

-- DATE "01/15/2014 16:20:08"

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

ENTITY 	Lab01 IS
    PORT (
	CLK : IN std_logic;
	RST : IN std_logic;
	SW1 : IN std_logic_vector(7 DOWNTO 0);
	SW2 : IN std_logic_vector(7 DOWNTO 0);
	LED_Red : OUT std_logic_vector(7 DOWNTO 0);
	LED_Blue : OUT std_logic_vector(7 DOWNTO 0);
	LED17 : OUT std_logic_vector(7 DOWNTO 0);
	LED18 : OUT std_logic_vector(7 DOWNTO 0);
	LED19 : OUT std_logic_vector(7 DOWNTO 0);
	LED20 : OUT std_logic_vector(7 DOWNTO 0)
	);
END Lab01;

-- Design Ports Information
-- LED_Red[0]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_Red[1]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_Red[2]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_Red[3]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_Red[4]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_Red[5]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_Red[6]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_Red[7]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_Blue[0]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_Blue[1]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_Blue[2]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_Blue[3]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_Blue[4]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_Blue[5]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_Blue[6]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED_Blue[7]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED17[0]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED17[1]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED17[2]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED17[3]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED17[4]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED17[5]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED17[6]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED17[7]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED18[0]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED18[1]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED18[2]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED18[3]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED18[4]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED18[5]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED18[6]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED18[7]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED19[0]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED19[1]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED19[2]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED19[3]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED19[4]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED19[5]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED19[6]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED19[7]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED20[0]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED20[1]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED20[2]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED20[3]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED20[4]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED20[5]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED20[6]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LED20[7]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW1[0]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW1[1]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW1[2]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW1[3]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW1[4]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW1[5]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW1[6]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW1[7]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW2[0]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW2[1]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW2[2]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW2[3]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW2[4]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW2[5]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW2[6]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW2[7]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Lab01 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_RST : std_logic;
SIGNAL ww_SW1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_SW2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_LED_Red : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_LED_Blue : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_LED17 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_LED18 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_LED19 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_LED20 : std_logic_vector(7 DOWNTO 0);
SIGNAL \RST~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK_DIV1|count_std[23]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \CLK_DIV1|count_std[0]~24_combout\ : std_logic;
SIGNAL \RST~input_o\ : std_logic;
SIGNAL \RST~inputclkctrl_outclk\ : std_logic;
SIGNAL \CLK_DIV1|count_int[1]~23_combout\ : std_logic;
SIGNAL \CLK_DIV1|count_int[1]~24\ : std_logic;
SIGNAL \CLK_DIV1|count_int[2]~25_combout\ : std_logic;
SIGNAL \CLK_DIV1|count_int[2]~26\ : std_logic;
SIGNAL \CLK_DIV1|count_int[3]~27_combout\ : std_logic;
SIGNAL \CLK_DIV1|count_int[3]~28\ : std_logic;
SIGNAL \CLK_DIV1|count_int[4]~29_combout\ : std_logic;
SIGNAL \CLK_DIV1|count_int[4]~30\ : std_logic;
SIGNAL \CLK_DIV1|count_int[5]~31_combout\ : std_logic;
SIGNAL \CLK_DIV1|count_int[5]~32\ : std_logic;
SIGNAL \CLK_DIV1|count_int[6]~33_combout\ : std_logic;
SIGNAL \CLK_DIV1|count_int[6]~34\ : std_logic;
SIGNAL \CLK_DIV1|count_int[7]~35_combout\ : std_logic;
SIGNAL \CLK_DIV1|count_int[7]~36\ : std_logic;
SIGNAL \CLK_DIV1|count_int[8]~37_combout\ : std_logic;
SIGNAL \CLK_DIV1|count_int[8]~38\ : std_logic;
SIGNAL \CLK_DIV1|count_int[9]~39_combout\ : std_logic;
SIGNAL \CLK_DIV1|count_int[9]~40\ : std_logic;
SIGNAL \CLK_DIV1|count_int[10]~41_combout\ : std_logic;
SIGNAL \CLK_DIV1|count_int[10]~42\ : std_logic;
SIGNAL \CLK_DIV1|count_int[11]~43_combout\ : std_logic;
SIGNAL \CLK_DIV1|count_int[11]~44\ : std_logic;
SIGNAL \CLK_DIV1|count_int[12]~45_combout\ : std_logic;
SIGNAL \CLK_DIV1|count_int[12]~46\ : std_logic;
SIGNAL \CLK_DIV1|count_int[13]~47_combout\ : std_logic;
SIGNAL \CLK_DIV1|count_int[13]~48\ : std_logic;
SIGNAL \CLK_DIV1|count_int[14]~49_combout\ : std_logic;
SIGNAL \CLK_DIV1|count_int[14]~50\ : std_logic;
SIGNAL \CLK_DIV1|count_int[15]~51_combout\ : std_logic;
SIGNAL \CLK_DIV1|count_int[15]~52\ : std_logic;
SIGNAL \CLK_DIV1|count_int[16]~53_combout\ : std_logic;
SIGNAL \CLK_DIV1|count_int[16]~54\ : std_logic;
SIGNAL \CLK_DIV1|count_int[17]~55_combout\ : std_logic;
SIGNAL \CLK_DIV1|count_int[17]~56\ : std_logic;
SIGNAL \CLK_DIV1|count_int[18]~57_combout\ : std_logic;
SIGNAL \CLK_DIV1|count_int[18]~58\ : std_logic;
SIGNAL \CLK_DIV1|count_int[19]~59_combout\ : std_logic;
SIGNAL \CLK_DIV1|Equal0~5_combout\ : std_logic;
SIGNAL \CLK_DIV1|count_int[19]~60\ : std_logic;
SIGNAL \CLK_DIV1|count_int[20]~61_combout\ : std_logic;
SIGNAL \CLK_DIV1|count_int[20]~62\ : std_logic;
SIGNAL \CLK_DIV1|count_int[21]~63_combout\ : std_logic;
SIGNAL \CLK_DIV1|count_int[21]~64\ : std_logic;
SIGNAL \CLK_DIV1|count_int[22]~65_combout\ : std_logic;
SIGNAL \CLK_DIV1|count_int[22]~66\ : std_logic;
SIGNAL \CLK_DIV1|count_int[23]~67_combout\ : std_logic;
SIGNAL \CLK_DIV1|Equal0~6_combout\ : std_logic;
SIGNAL \CLK_DIV1|Equal0~1_combout\ : std_logic;
SIGNAL \CLK_DIV1|Equal0~0_combout\ : std_logic;
SIGNAL \CLK_DIV1|Equal0~2_combout\ : std_logic;
SIGNAL \CLK_DIV1|Equal0~3_combout\ : std_logic;
SIGNAL \CLK_DIV1|Equal0~4_combout\ : std_logic;
SIGNAL \CLK_DIV1|Equal0~7_combout\ : std_logic;
SIGNAL \CLK_DIV1|count_std[0]~25\ : std_logic;
SIGNAL \CLK_DIV1|count_std[1]~26_combout\ : std_logic;
SIGNAL \CLK_DIV1|count_std[1]~27\ : std_logic;
SIGNAL \CLK_DIV1|count_std[2]~28_combout\ : std_logic;
SIGNAL \CLK_DIV1|count_std[2]~29\ : std_logic;
SIGNAL \CLK_DIV1|count_std[3]~30_combout\ : std_logic;
SIGNAL \CLK_DIV1|count_std[3]~31\ : std_logic;
SIGNAL \CLK_DIV1|count_std[4]~32_combout\ : std_logic;
SIGNAL \CLK_DIV1|count_std[4]~33\ : std_logic;
SIGNAL \CLK_DIV1|count_std[5]~34_combout\ : std_logic;
SIGNAL \CLK_DIV1|count_std[5]~35\ : std_logic;
SIGNAL \CLK_DIV1|count_std[6]~36_combout\ : std_logic;
SIGNAL \CLK_DIV1|count_std[6]~37\ : std_logic;
SIGNAL \CLK_DIV1|count_std[7]~38_combout\ : std_logic;
SIGNAL \CLK_DIV1|count_std[7]~39\ : std_logic;
SIGNAL \CLK_DIV1|count_std[8]~40_combout\ : std_logic;
SIGNAL \CLK_DIV1|count_std[8]~41\ : std_logic;
SIGNAL \CLK_DIV1|count_std[9]~42_combout\ : std_logic;
SIGNAL \CLK_DIV1|count_std[9]~43\ : std_logic;
SIGNAL \CLK_DIV1|count_std[10]~44_combout\ : std_logic;
SIGNAL \CLK_DIV1|count_std[10]~45\ : std_logic;
SIGNAL \CLK_DIV1|count_std[11]~46_combout\ : std_logic;
SIGNAL \CLK_DIV1|count_std[11]~47\ : std_logic;
SIGNAL \CLK_DIV1|count_std[12]~48_combout\ : std_logic;
SIGNAL \CLK_DIV1|count_std[12]~49\ : std_logic;
SIGNAL \CLK_DIV1|count_std[13]~50_combout\ : std_logic;
SIGNAL \CLK_DIV1|count_std[13]~51\ : std_logic;
SIGNAL \CLK_DIV1|count_std[14]~52_combout\ : std_logic;
SIGNAL \CLK_DIV1|count_std[14]~53\ : std_logic;
SIGNAL \CLK_DIV1|count_std[15]~54_combout\ : std_logic;
SIGNAL \CLK_DIV1|count_std[15]~55\ : std_logic;
SIGNAL \CLK_DIV1|count_std[16]~56_combout\ : std_logic;
SIGNAL \CLK_DIV1|count_std[16]~57\ : std_logic;
SIGNAL \CLK_DIV1|count_std[17]~58_combout\ : std_logic;
SIGNAL \CLK_DIV1|count_std[17]~59\ : std_logic;
SIGNAL \CLK_DIV1|count_std[18]~60_combout\ : std_logic;
SIGNAL \CLK_DIV1|count_std[18]~61\ : std_logic;
SIGNAL \CLK_DIV1|count_std[19]~62_combout\ : std_logic;
SIGNAL \CLK_DIV1|count_std[19]~63\ : std_logic;
SIGNAL \CLK_DIV1|count_std[20]~64_combout\ : std_logic;
SIGNAL \CLK_DIV1|count_std[20]~65\ : std_logic;
SIGNAL \CLK_DIV1|count_std[21]~66_combout\ : std_logic;
SIGNAL \CLK_DIV1|count_std[21]~67\ : std_logic;
SIGNAL \CLK_DIV1|count_std[22]~68_combout\ : std_logic;
SIGNAL \CLK_DIV1|count_std[22]~69\ : std_logic;
SIGNAL \CLK_DIV1|count_std[23]~70_combout\ : std_logic;
SIGNAL \CLK_DIV1|count_std[23]~clkctrl_outclk\ : std_logic;
SIGNAL \COUNT1|count_int[0]~3_combout\ : std_logic;
SIGNAL \COUNT1|count_int[1]~0_combout\ : std_logic;
SIGNAL \COUNT1|count_int[2]~1_combout\ : std_logic;
SIGNAL \COUNT1|count_int[3]~2_combout\ : std_logic;
SIGNAL \SW1[0]~input_o\ : std_logic;
SIGNAL \SW1[1]~input_o\ : std_logic;
SIGNAL \SW1[2]~input_o\ : std_logic;
SIGNAL \SW1[3]~input_o\ : std_logic;
SIGNAL \SW1[4]~input_o\ : std_logic;
SIGNAL \SW1[5]~input_o\ : std_logic;
SIGNAL \SW1[6]~input_o\ : std_logic;
SIGNAL \SW1[7]~input_o\ : std_logic;
SIGNAL \SW2[0]~input_o\ : std_logic;
SIGNAL \SW2[1]~input_o\ : std_logic;
SIGNAL \SW2[2]~input_o\ : std_logic;
SIGNAL \SW2[3]~input_o\ : std_logic;
SIGNAL \SW2[4]~input_o\ : std_logic;
SIGNAL \SW2[5]~input_o\ : std_logic;
SIGNAL \SW2[6]~input_o\ : std_logic;
SIGNAL \SW2[7]~input_o\ : std_logic;
SIGNAL \CLK_DIV1|count_std\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \CLK_DIV1|count_int\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \COUNT1|count_int\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_CLK <= CLK;
ww_RST <= RST;
ww_SW1 <= SW1;
ww_SW2 <= SW2;
LED_Red <= ww_LED_Red;
LED_Blue <= ww_LED_Blue;
LED17 <= ww_LED17;
LED18 <= ww_LED18;
LED19 <= ww_LED19;
LED20 <= ww_LED20;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\RST~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RST~input_o\);

\CLK_DIV1|count_std[23]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK_DIV1|count_std\(23));

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);

-- Location: IOOBUF_X40_Y34_N2
\LED_Red[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \COUNT1|count_int\(0),
	devoe => ww_devoe,
	o => \LED_Red[0]~output_o\);

-- Location: IOOBUF_X31_Y34_N9
\LED_Red[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \COUNT1|count_int\(1),
	devoe => ww_devoe,
	o => \LED_Red[1]~output_o\);

-- Location: IOOBUF_X34_Y34_N9
\LED_Red[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \COUNT1|count_int\(2),
	devoe => ww_devoe,
	o => \LED_Red[2]~output_o\);

-- Location: IOOBUF_X36_Y0_N9
\LED_Red[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \COUNT1|count_int\(3),
	devoe => ww_devoe,
	o => \LED_Red[3]~output_o\);

-- Location: IOOBUF_X47_Y34_N23
\LED_Red[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \COUNT1|count_int\(0),
	devoe => ww_devoe,
	o => \LED_Red[4]~output_o\);

-- Location: IOOBUF_X31_Y34_N2
\LED_Red[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \COUNT1|count_int\(1),
	devoe => ww_devoe,
	o => \LED_Red[5]~output_o\);

-- Location: IOOBUF_X40_Y34_N9
\LED_Red[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \COUNT1|count_int\(2),
	devoe => ww_devoe,
	o => \LED_Red[6]~output_o\);

-- Location: IOOBUF_X36_Y0_N23
\LED_Red[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \COUNT1|count_int\(3),
	devoe => ww_devoe,
	o => \LED_Red[7]~output_o\);

-- Location: IOOBUF_X43_Y34_N16
\LED_Blue[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \COUNT1|count_int\(0),
	devoe => ww_devoe,
	o => \LED_Blue[0]~output_o\);

-- Location: IOOBUF_X34_Y34_N2
\LED_Blue[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \COUNT1|count_int\(1),
	devoe => ww_devoe,
	o => \LED_Blue[1]~output_o\);

-- Location: IOOBUF_X38_Y34_N2
\LED_Blue[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \COUNT1|count_int\(2),
	devoe => ww_devoe,
	o => \LED_Blue[2]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\LED_Blue[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \COUNT1|count_int\(3),
	devoe => ww_devoe,
	o => \LED_Blue[3]~output_o\);

-- Location: IOOBUF_X43_Y34_N23
\LED_Blue[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \COUNT1|count_int\(0),
	devoe => ww_devoe,
	o => \LED_Blue[4]~output_o\);

-- Location: IOOBUF_X34_Y34_N16
\LED_Blue[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \COUNT1|count_int\(1),
	devoe => ww_devoe,
	o => \LED_Blue[5]~output_o\);

-- Location: IOOBUF_X38_Y34_N16
\LED_Blue[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \COUNT1|count_int\(2),
	devoe => ww_devoe,
	o => \LED_Blue[6]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\LED_Blue[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \COUNT1|count_int\(3),
	devoe => ww_devoe,
	o => \LED_Blue[7]~output_o\);

-- Location: IOOBUF_X20_Y0_N2
\LED17[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW1[0]~input_o\,
	devoe => ww_devoe,
	o => \LED17[0]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\LED17[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW1[1]~input_o\,
	devoe => ww_devoe,
	o => \LED17[1]~output_o\);

-- Location: IOOBUF_X7_Y34_N2
\LED17[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW1[2]~input_o\,
	devoe => ww_devoe,
	o => \LED17[2]~output_o\);

-- Location: IOOBUF_X45_Y0_N23
\LED17[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW1[3]~input_o\,
	devoe => ww_devoe,
	o => \LED17[3]~output_o\);

-- Location: IOOBUF_X20_Y34_N16
\LED17[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW1[4]~input_o\,
	devoe => ww_devoe,
	o => \LED17[4]~output_o\);

-- Location: IOOBUF_X14_Y0_N2
\LED17[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW1[5]~input_o\,
	devoe => ww_devoe,
	o => \LED17[5]~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\LED17[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW1[6]~input_o\,
	devoe => ww_devoe,
	o => \LED17[6]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\LED17[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW1[7]~input_o\,
	devoe => ww_devoe,
	o => \LED17[7]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\LED18[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW1[0]~input_o\,
	devoe => ww_devoe,
	o => \LED18[0]~output_o\);

-- Location: IOOBUF_X25_Y0_N16
\LED18[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW1[1]~input_o\,
	devoe => ww_devoe,
	o => \LED18[1]~output_o\);

-- Location: IOOBUF_X7_Y34_N16
\LED18[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW1[2]~input_o\,
	devoe => ww_devoe,
	o => \LED18[2]~output_o\);

-- Location: IOOBUF_X47_Y0_N23
\LED18[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW1[3]~input_o\,
	devoe => ww_devoe,
	o => \LED18[3]~output_o\);

-- Location: IOOBUF_X20_Y34_N23
\LED18[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW1[4]~input_o\,
	devoe => ww_devoe,
	o => \LED18[4]~output_o\);

-- Location: IOOBUF_X14_Y0_N23
\LED18[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW1[5]~input_o\,
	devoe => ww_devoe,
	o => \LED18[5]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\LED18[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW1[6]~input_o\,
	devoe => ww_devoe,
	o => \LED18[6]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\LED18[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW1[7]~input_o\,
	devoe => ww_devoe,
	o => \LED18[7]~output_o\);

-- Location: IOOBUF_X23_Y34_N23
\LED19[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW2[0]~input_o\,
	devoe => ww_devoe,
	o => \LED19[0]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\LED19[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW2[1]~input_o\,
	devoe => ww_devoe,
	o => \LED19[1]~output_o\);

-- Location: IOOBUF_X16_Y34_N2
\LED19[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW2[2]~input_o\,
	devoe => ww_devoe,
	o => \LED19[2]~output_o\);

-- Location: IOOBUF_X14_Y34_N16
\LED19[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW2[3]~input_o\,
	devoe => ww_devoe,
	o => \LED19[3]~output_o\);

-- Location: IOOBUF_X45_Y34_N9
\LED19[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW2[4]~input_o\,
	devoe => ww_devoe,
	o => \LED19[4]~output_o\);

-- Location: IOOBUF_X53_Y21_N23
\LED19[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW2[5]~input_o\,
	devoe => ww_devoe,
	o => \LED19[5]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\LED19[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW2[6]~input_o\,
	devoe => ww_devoe,
	o => \LED19[6]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\LED19[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW2[7]~input_o\,
	devoe => ww_devoe,
	o => \LED19[7]~output_o\);

-- Location: IOOBUF_X29_Y34_N16
\LED20[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW2[0]~input_o\,
	devoe => ww_devoe,
	o => \LED20[0]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\LED20[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW2[1]~input_o\,
	devoe => ww_devoe,
	o => \LED20[1]~output_o\);

-- Location: IOOBUF_X16_Y34_N9
\LED20[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW2[2]~input_o\,
	devoe => ww_devoe,
	o => \LED20[2]~output_o\);

-- Location: IOOBUF_X14_Y34_N23
\LED20[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW2[3]~input_o\,
	devoe => ww_devoe,
	o => \LED20[3]~output_o\);

-- Location: IOOBUF_X45_Y34_N16
\LED20[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW2[4]~input_o\,
	devoe => ww_devoe,
	o => \LED20[4]~output_o\);

-- Location: IOOBUF_X53_Y20_N23
\LED20[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW2[5]~input_o\,
	devoe => ww_devoe,
	o => \LED20[5]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\LED20[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW2[6]~input_o\,
	devoe => ww_devoe,
	o => \LED20[6]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\LED20[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW2[7]~input_o\,
	devoe => ww_devoe,
	o => \LED20[7]~output_o\);

-- Location: IOIBUF_X0_Y16_N8
\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G2
\CLK~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: LCCOMB_X1_Y9_N8
\CLK_DIV1|count_std[0]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_DIV1|count_std[0]~24_combout\ = \CLK_DIV1|count_std\(0) $ (VCC)
-- \CLK_DIV1|count_std[0]~25\ = CARRY(\CLK_DIV1|count_std\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLK_DIV1|count_std\(0),
	datad => VCC,
	combout => \CLK_DIV1|count_std[0]~24_combout\,
	cout => \CLK_DIV1|count_std[0]~25\);

-- Location: IOIBUF_X0_Y16_N15
\RST~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RST,
	o => \RST~input_o\);

-- Location: CLKCTRL_G4
\RST~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RST~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RST~inputclkctrl_outclk\);

-- Location: LCCOMB_X2_Y9_N10
\CLK_DIV1|count_int[1]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_DIV1|count_int[1]~23_combout\ = (\CLK_DIV1|count_std\(0) & (\CLK_DIV1|count_int\(1) $ (VCC))) # (!\CLK_DIV1|count_std\(0) & (\CLK_DIV1|count_int\(1) & VCC))
-- \CLK_DIV1|count_int[1]~24\ = CARRY((\CLK_DIV1|count_std\(0) & \CLK_DIV1|count_int\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK_DIV1|count_std\(0),
	datab => \CLK_DIV1|count_int\(1),
	datad => VCC,
	combout => \CLK_DIV1|count_int[1]~23_combout\,
	cout => \CLK_DIV1|count_int[1]~24\);

-- Location: FF_X2_Y9_N11
\CLK_DIV1|count_int[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CLK_DIV1|count_int[1]~23_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	sclr => \CLK_DIV1|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_DIV1|count_int\(1));

-- Location: LCCOMB_X2_Y9_N12
\CLK_DIV1|count_int[2]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_DIV1|count_int[2]~25_combout\ = (\CLK_DIV1|count_int\(2) & (!\CLK_DIV1|count_int[1]~24\)) # (!\CLK_DIV1|count_int\(2) & ((\CLK_DIV1|count_int[1]~24\) # (GND)))
-- \CLK_DIV1|count_int[2]~26\ = CARRY((!\CLK_DIV1|count_int[1]~24\) # (!\CLK_DIV1|count_int\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLK_DIV1|count_int\(2),
	datad => VCC,
	cin => \CLK_DIV1|count_int[1]~24\,
	combout => \CLK_DIV1|count_int[2]~25_combout\,
	cout => \CLK_DIV1|count_int[2]~26\);

-- Location: FF_X2_Y9_N13
\CLK_DIV1|count_int[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CLK_DIV1|count_int[2]~25_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	sclr => \CLK_DIV1|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_DIV1|count_int\(2));

-- Location: LCCOMB_X2_Y9_N14
\CLK_DIV1|count_int[3]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_DIV1|count_int[3]~27_combout\ = (\CLK_DIV1|count_int\(3) & (\CLK_DIV1|count_int[2]~26\ $ (GND))) # (!\CLK_DIV1|count_int\(3) & (!\CLK_DIV1|count_int[2]~26\ & VCC))
-- \CLK_DIV1|count_int[3]~28\ = CARRY((\CLK_DIV1|count_int\(3) & !\CLK_DIV1|count_int[2]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK_DIV1|count_int\(3),
	datad => VCC,
	cin => \CLK_DIV1|count_int[2]~26\,
	combout => \CLK_DIV1|count_int[3]~27_combout\,
	cout => \CLK_DIV1|count_int[3]~28\);

-- Location: FF_X2_Y9_N15
\CLK_DIV1|count_int[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CLK_DIV1|count_int[3]~27_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	sclr => \CLK_DIV1|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_DIV1|count_int\(3));

-- Location: LCCOMB_X2_Y9_N16
\CLK_DIV1|count_int[4]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_DIV1|count_int[4]~29_combout\ = (\CLK_DIV1|count_int\(4) & (!\CLK_DIV1|count_int[3]~28\)) # (!\CLK_DIV1|count_int\(4) & ((\CLK_DIV1|count_int[3]~28\) # (GND)))
-- \CLK_DIV1|count_int[4]~30\ = CARRY((!\CLK_DIV1|count_int[3]~28\) # (!\CLK_DIV1|count_int\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK_DIV1|count_int\(4),
	datad => VCC,
	cin => \CLK_DIV1|count_int[3]~28\,
	combout => \CLK_DIV1|count_int[4]~29_combout\,
	cout => \CLK_DIV1|count_int[4]~30\);

-- Location: FF_X2_Y9_N17
\CLK_DIV1|count_int[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CLK_DIV1|count_int[4]~29_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	sclr => \CLK_DIV1|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_DIV1|count_int\(4));

-- Location: LCCOMB_X2_Y9_N18
\CLK_DIV1|count_int[5]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_DIV1|count_int[5]~31_combout\ = (\CLK_DIV1|count_int\(5) & (\CLK_DIV1|count_int[4]~30\ $ (GND))) # (!\CLK_DIV1|count_int\(5) & (!\CLK_DIV1|count_int[4]~30\ & VCC))
-- \CLK_DIV1|count_int[5]~32\ = CARRY((\CLK_DIV1|count_int\(5) & !\CLK_DIV1|count_int[4]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK_DIV1|count_int\(5),
	datad => VCC,
	cin => \CLK_DIV1|count_int[4]~30\,
	combout => \CLK_DIV1|count_int[5]~31_combout\,
	cout => \CLK_DIV1|count_int[5]~32\);

-- Location: FF_X2_Y9_N19
\CLK_DIV1|count_int[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CLK_DIV1|count_int[5]~31_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	sclr => \CLK_DIV1|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_DIV1|count_int\(5));

-- Location: LCCOMB_X2_Y9_N20
\CLK_DIV1|count_int[6]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_DIV1|count_int[6]~33_combout\ = (\CLK_DIV1|count_int\(6) & (!\CLK_DIV1|count_int[5]~32\)) # (!\CLK_DIV1|count_int\(6) & ((\CLK_DIV1|count_int[5]~32\) # (GND)))
-- \CLK_DIV1|count_int[6]~34\ = CARRY((!\CLK_DIV1|count_int[5]~32\) # (!\CLK_DIV1|count_int\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK_DIV1|count_int\(6),
	datad => VCC,
	cin => \CLK_DIV1|count_int[5]~32\,
	combout => \CLK_DIV1|count_int[6]~33_combout\,
	cout => \CLK_DIV1|count_int[6]~34\);

-- Location: FF_X2_Y9_N21
\CLK_DIV1|count_int[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CLK_DIV1|count_int[6]~33_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	sclr => \CLK_DIV1|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_DIV1|count_int\(6));

-- Location: LCCOMB_X2_Y9_N22
\CLK_DIV1|count_int[7]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_DIV1|count_int[7]~35_combout\ = (\CLK_DIV1|count_int\(7) & (\CLK_DIV1|count_int[6]~34\ $ (GND))) # (!\CLK_DIV1|count_int\(7) & (!\CLK_DIV1|count_int[6]~34\ & VCC))
-- \CLK_DIV1|count_int[7]~36\ = CARRY((\CLK_DIV1|count_int\(7) & !\CLK_DIV1|count_int[6]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLK_DIV1|count_int\(7),
	datad => VCC,
	cin => \CLK_DIV1|count_int[6]~34\,
	combout => \CLK_DIV1|count_int[7]~35_combout\,
	cout => \CLK_DIV1|count_int[7]~36\);

-- Location: FF_X2_Y9_N23
\CLK_DIV1|count_int[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CLK_DIV1|count_int[7]~35_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	sclr => \CLK_DIV1|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_DIV1|count_int\(7));

-- Location: LCCOMB_X2_Y9_N24
\CLK_DIV1|count_int[8]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_DIV1|count_int[8]~37_combout\ = (\CLK_DIV1|count_int\(8) & (!\CLK_DIV1|count_int[7]~36\)) # (!\CLK_DIV1|count_int\(8) & ((\CLK_DIV1|count_int[7]~36\) # (GND)))
-- \CLK_DIV1|count_int[8]~38\ = CARRY((!\CLK_DIV1|count_int[7]~36\) # (!\CLK_DIV1|count_int\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK_DIV1|count_int\(8),
	datad => VCC,
	cin => \CLK_DIV1|count_int[7]~36\,
	combout => \CLK_DIV1|count_int[8]~37_combout\,
	cout => \CLK_DIV1|count_int[8]~38\);

-- Location: FF_X2_Y9_N25
\CLK_DIV1|count_int[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CLK_DIV1|count_int[8]~37_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	sclr => \CLK_DIV1|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_DIV1|count_int\(8));

-- Location: LCCOMB_X2_Y9_N26
\CLK_DIV1|count_int[9]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_DIV1|count_int[9]~39_combout\ = (\CLK_DIV1|count_int\(9) & (\CLK_DIV1|count_int[8]~38\ $ (GND))) # (!\CLK_DIV1|count_int\(9) & (!\CLK_DIV1|count_int[8]~38\ & VCC))
-- \CLK_DIV1|count_int[9]~40\ = CARRY((\CLK_DIV1|count_int\(9) & !\CLK_DIV1|count_int[8]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLK_DIV1|count_int\(9),
	datad => VCC,
	cin => \CLK_DIV1|count_int[8]~38\,
	combout => \CLK_DIV1|count_int[9]~39_combout\,
	cout => \CLK_DIV1|count_int[9]~40\);

-- Location: FF_X2_Y9_N27
\CLK_DIV1|count_int[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CLK_DIV1|count_int[9]~39_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	sclr => \CLK_DIV1|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_DIV1|count_int\(9));

-- Location: LCCOMB_X2_Y9_N28
\CLK_DIV1|count_int[10]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_DIV1|count_int[10]~41_combout\ = (\CLK_DIV1|count_int\(10) & (!\CLK_DIV1|count_int[9]~40\)) # (!\CLK_DIV1|count_int\(10) & ((\CLK_DIV1|count_int[9]~40\) # (GND)))
-- \CLK_DIV1|count_int[10]~42\ = CARRY((!\CLK_DIV1|count_int[9]~40\) # (!\CLK_DIV1|count_int\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK_DIV1|count_int\(10),
	datad => VCC,
	cin => \CLK_DIV1|count_int[9]~40\,
	combout => \CLK_DIV1|count_int[10]~41_combout\,
	cout => \CLK_DIV1|count_int[10]~42\);

-- Location: FF_X2_Y9_N29
\CLK_DIV1|count_int[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CLK_DIV1|count_int[10]~41_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	sclr => \CLK_DIV1|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_DIV1|count_int\(10));

-- Location: LCCOMB_X2_Y9_N30
\CLK_DIV1|count_int[11]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_DIV1|count_int[11]~43_combout\ = (\CLK_DIV1|count_int\(11) & (\CLK_DIV1|count_int[10]~42\ $ (GND))) # (!\CLK_DIV1|count_int\(11) & (!\CLK_DIV1|count_int[10]~42\ & VCC))
-- \CLK_DIV1|count_int[11]~44\ = CARRY((\CLK_DIV1|count_int\(11) & !\CLK_DIV1|count_int[10]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLK_DIV1|count_int\(11),
	datad => VCC,
	cin => \CLK_DIV1|count_int[10]~42\,
	combout => \CLK_DIV1|count_int[11]~43_combout\,
	cout => \CLK_DIV1|count_int[11]~44\);

-- Location: FF_X2_Y9_N31
\CLK_DIV1|count_int[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CLK_DIV1|count_int[11]~43_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	sclr => \CLK_DIV1|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_DIV1|count_int\(11));

-- Location: LCCOMB_X2_Y8_N0
\CLK_DIV1|count_int[12]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_DIV1|count_int[12]~45_combout\ = (\CLK_DIV1|count_int\(12) & (!\CLK_DIV1|count_int[11]~44\)) # (!\CLK_DIV1|count_int\(12) & ((\CLK_DIV1|count_int[11]~44\) # (GND)))
-- \CLK_DIV1|count_int[12]~46\ = CARRY((!\CLK_DIV1|count_int[11]~44\) # (!\CLK_DIV1|count_int\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK_DIV1|count_int\(12),
	datad => VCC,
	cin => \CLK_DIV1|count_int[11]~44\,
	combout => \CLK_DIV1|count_int[12]~45_combout\,
	cout => \CLK_DIV1|count_int[12]~46\);

-- Location: FF_X2_Y8_N1
\CLK_DIV1|count_int[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CLK_DIV1|count_int[12]~45_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	sclr => \CLK_DIV1|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_DIV1|count_int\(12));

-- Location: LCCOMB_X2_Y8_N2
\CLK_DIV1|count_int[13]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_DIV1|count_int[13]~47_combout\ = (\CLK_DIV1|count_int\(13) & (\CLK_DIV1|count_int[12]~46\ $ (GND))) # (!\CLK_DIV1|count_int\(13) & (!\CLK_DIV1|count_int[12]~46\ & VCC))
-- \CLK_DIV1|count_int[13]~48\ = CARRY((\CLK_DIV1|count_int\(13) & !\CLK_DIV1|count_int[12]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK_DIV1|count_int\(13),
	datad => VCC,
	cin => \CLK_DIV1|count_int[12]~46\,
	combout => \CLK_DIV1|count_int[13]~47_combout\,
	cout => \CLK_DIV1|count_int[13]~48\);

-- Location: FF_X2_Y8_N3
\CLK_DIV1|count_int[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CLK_DIV1|count_int[13]~47_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	sclr => \CLK_DIV1|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_DIV1|count_int\(13));

-- Location: LCCOMB_X2_Y8_N4
\CLK_DIV1|count_int[14]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_DIV1|count_int[14]~49_combout\ = (\CLK_DIV1|count_int\(14) & (!\CLK_DIV1|count_int[13]~48\)) # (!\CLK_DIV1|count_int\(14) & ((\CLK_DIV1|count_int[13]~48\) # (GND)))
-- \CLK_DIV1|count_int[14]~50\ = CARRY((!\CLK_DIV1|count_int[13]~48\) # (!\CLK_DIV1|count_int\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK_DIV1|count_int\(14),
	datad => VCC,
	cin => \CLK_DIV1|count_int[13]~48\,
	combout => \CLK_DIV1|count_int[14]~49_combout\,
	cout => \CLK_DIV1|count_int[14]~50\);

-- Location: FF_X2_Y8_N5
\CLK_DIV1|count_int[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CLK_DIV1|count_int[14]~49_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	sclr => \CLK_DIV1|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_DIV1|count_int\(14));

-- Location: LCCOMB_X2_Y8_N6
\CLK_DIV1|count_int[15]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_DIV1|count_int[15]~51_combout\ = (\CLK_DIV1|count_int\(15) & (\CLK_DIV1|count_int[14]~50\ $ (GND))) # (!\CLK_DIV1|count_int\(15) & (!\CLK_DIV1|count_int[14]~50\ & VCC))
-- \CLK_DIV1|count_int[15]~52\ = CARRY((\CLK_DIV1|count_int\(15) & !\CLK_DIV1|count_int[14]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLK_DIV1|count_int\(15),
	datad => VCC,
	cin => \CLK_DIV1|count_int[14]~50\,
	combout => \CLK_DIV1|count_int[15]~51_combout\,
	cout => \CLK_DIV1|count_int[15]~52\);

-- Location: FF_X2_Y8_N7
\CLK_DIV1|count_int[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CLK_DIV1|count_int[15]~51_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	sclr => \CLK_DIV1|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_DIV1|count_int\(15));

-- Location: LCCOMB_X2_Y8_N8
\CLK_DIV1|count_int[16]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_DIV1|count_int[16]~53_combout\ = (\CLK_DIV1|count_int\(16) & (!\CLK_DIV1|count_int[15]~52\)) # (!\CLK_DIV1|count_int\(16) & ((\CLK_DIV1|count_int[15]~52\) # (GND)))
-- \CLK_DIV1|count_int[16]~54\ = CARRY((!\CLK_DIV1|count_int[15]~52\) # (!\CLK_DIV1|count_int\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK_DIV1|count_int\(16),
	datad => VCC,
	cin => \CLK_DIV1|count_int[15]~52\,
	combout => \CLK_DIV1|count_int[16]~53_combout\,
	cout => \CLK_DIV1|count_int[16]~54\);

-- Location: FF_X2_Y8_N9
\CLK_DIV1|count_int[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CLK_DIV1|count_int[16]~53_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	sclr => \CLK_DIV1|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_DIV1|count_int\(16));

-- Location: LCCOMB_X2_Y8_N10
\CLK_DIV1|count_int[17]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_DIV1|count_int[17]~55_combout\ = (\CLK_DIV1|count_int\(17) & (\CLK_DIV1|count_int[16]~54\ $ (GND))) # (!\CLK_DIV1|count_int\(17) & (!\CLK_DIV1|count_int[16]~54\ & VCC))
-- \CLK_DIV1|count_int[17]~56\ = CARRY((\CLK_DIV1|count_int\(17) & !\CLK_DIV1|count_int[16]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLK_DIV1|count_int\(17),
	datad => VCC,
	cin => \CLK_DIV1|count_int[16]~54\,
	combout => \CLK_DIV1|count_int[17]~55_combout\,
	cout => \CLK_DIV1|count_int[17]~56\);

-- Location: FF_X2_Y8_N11
\CLK_DIV1|count_int[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CLK_DIV1|count_int[17]~55_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	sclr => \CLK_DIV1|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_DIV1|count_int\(17));

-- Location: LCCOMB_X2_Y8_N12
\CLK_DIV1|count_int[18]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_DIV1|count_int[18]~57_combout\ = (\CLK_DIV1|count_int\(18) & (!\CLK_DIV1|count_int[17]~56\)) # (!\CLK_DIV1|count_int\(18) & ((\CLK_DIV1|count_int[17]~56\) # (GND)))
-- \CLK_DIV1|count_int[18]~58\ = CARRY((!\CLK_DIV1|count_int[17]~56\) # (!\CLK_DIV1|count_int\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLK_DIV1|count_int\(18),
	datad => VCC,
	cin => \CLK_DIV1|count_int[17]~56\,
	combout => \CLK_DIV1|count_int[18]~57_combout\,
	cout => \CLK_DIV1|count_int[18]~58\);

-- Location: FF_X2_Y8_N13
\CLK_DIV1|count_int[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CLK_DIV1|count_int[18]~57_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	sclr => \CLK_DIV1|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_DIV1|count_int\(18));

-- Location: LCCOMB_X2_Y8_N14
\CLK_DIV1|count_int[19]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_DIV1|count_int[19]~59_combout\ = (\CLK_DIV1|count_int\(19) & (\CLK_DIV1|count_int[18]~58\ $ (GND))) # (!\CLK_DIV1|count_int\(19) & (!\CLK_DIV1|count_int[18]~58\ & VCC))
-- \CLK_DIV1|count_int[19]~60\ = CARRY((\CLK_DIV1|count_int\(19) & !\CLK_DIV1|count_int[18]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK_DIV1|count_int\(19),
	datad => VCC,
	cin => \CLK_DIV1|count_int[18]~58\,
	combout => \CLK_DIV1|count_int[19]~59_combout\,
	cout => \CLK_DIV1|count_int[19]~60\);

-- Location: FF_X2_Y8_N15
\CLK_DIV1|count_int[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CLK_DIV1|count_int[19]~59_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	sclr => \CLK_DIV1|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_DIV1|count_int\(19));

-- Location: LCCOMB_X2_Y8_N26
\CLK_DIV1|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_DIV1|Equal0~5_combout\ = (\CLK_DIV1|count_int\(17) & (\CLK_DIV1|count_int\(16) & (\CLK_DIV1|count_int\(19) & \CLK_DIV1|count_int\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK_DIV1|count_int\(17),
	datab => \CLK_DIV1|count_int\(16),
	datac => \CLK_DIV1|count_int\(19),
	datad => \CLK_DIV1|count_int\(18),
	combout => \CLK_DIV1|Equal0~5_combout\);

-- Location: LCCOMB_X2_Y8_N16
\CLK_DIV1|count_int[20]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_DIV1|count_int[20]~61_combout\ = (\CLK_DIV1|count_int\(20) & (!\CLK_DIV1|count_int[19]~60\)) # (!\CLK_DIV1|count_int\(20) & ((\CLK_DIV1|count_int[19]~60\) # (GND)))
-- \CLK_DIV1|count_int[20]~62\ = CARRY((!\CLK_DIV1|count_int[19]~60\) # (!\CLK_DIV1|count_int\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLK_DIV1|count_int\(20),
	datad => VCC,
	cin => \CLK_DIV1|count_int[19]~60\,
	combout => \CLK_DIV1|count_int[20]~61_combout\,
	cout => \CLK_DIV1|count_int[20]~62\);

-- Location: FF_X2_Y8_N17
\CLK_DIV1|count_int[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CLK_DIV1|count_int[20]~61_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	sclr => \CLK_DIV1|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_DIV1|count_int\(20));

-- Location: LCCOMB_X2_Y8_N18
\CLK_DIV1|count_int[21]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_DIV1|count_int[21]~63_combout\ = (\CLK_DIV1|count_int\(21) & (\CLK_DIV1|count_int[20]~62\ $ (GND))) # (!\CLK_DIV1|count_int\(21) & (!\CLK_DIV1|count_int[20]~62\ & VCC))
-- \CLK_DIV1|count_int[21]~64\ = CARRY((\CLK_DIV1|count_int\(21) & !\CLK_DIV1|count_int[20]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLK_DIV1|count_int\(21),
	datad => VCC,
	cin => \CLK_DIV1|count_int[20]~62\,
	combout => \CLK_DIV1|count_int[21]~63_combout\,
	cout => \CLK_DIV1|count_int[21]~64\);

-- Location: FF_X2_Y8_N19
\CLK_DIV1|count_int[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CLK_DIV1|count_int[21]~63_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	sclr => \CLK_DIV1|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_DIV1|count_int\(21));

-- Location: LCCOMB_X2_Y8_N20
\CLK_DIV1|count_int[22]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_DIV1|count_int[22]~65_combout\ = (\CLK_DIV1|count_int\(22) & (!\CLK_DIV1|count_int[21]~64\)) # (!\CLK_DIV1|count_int\(22) & ((\CLK_DIV1|count_int[21]~64\) # (GND)))
-- \CLK_DIV1|count_int[22]~66\ = CARRY((!\CLK_DIV1|count_int[21]~64\) # (!\CLK_DIV1|count_int\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK_DIV1|count_int\(22),
	datad => VCC,
	cin => \CLK_DIV1|count_int[21]~64\,
	combout => \CLK_DIV1|count_int[22]~65_combout\,
	cout => \CLK_DIV1|count_int[22]~66\);

-- Location: FF_X2_Y8_N21
\CLK_DIV1|count_int[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CLK_DIV1|count_int[22]~65_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	sclr => \CLK_DIV1|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_DIV1|count_int\(22));

-- Location: LCCOMB_X2_Y8_N22
\CLK_DIV1|count_int[23]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_DIV1|count_int[23]~67_combout\ = \CLK_DIV1|count_int[22]~66\ $ (!\CLK_DIV1|count_int\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \CLK_DIV1|count_int\(23),
	cin => \CLK_DIV1|count_int[22]~66\,
	combout => \CLK_DIV1|count_int[23]~67_combout\);

-- Location: FF_X2_Y8_N23
\CLK_DIV1|count_int[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CLK_DIV1|count_int[23]~67_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	sclr => \CLK_DIV1|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_DIV1|count_int\(23));

-- Location: LCCOMB_X2_Y8_N28
\CLK_DIV1|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_DIV1|Equal0~6_combout\ = (\CLK_DIV1|count_int\(23) & (\CLK_DIV1|count_int\(20) & (\CLK_DIV1|count_int\(21) & \CLK_DIV1|count_int\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK_DIV1|count_int\(23),
	datab => \CLK_DIV1|count_int\(20),
	datac => \CLK_DIV1|count_int\(21),
	datad => \CLK_DIV1|count_int\(22),
	combout => \CLK_DIV1|Equal0~6_combout\);

-- Location: LCCOMB_X2_Y9_N6
\CLK_DIV1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_DIV1|Equal0~1_combout\ = (\CLK_DIV1|count_int\(7) & (\CLK_DIV1|count_int\(5) & (\CLK_DIV1|count_int\(4) & \CLK_DIV1|count_int\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK_DIV1|count_int\(7),
	datab => \CLK_DIV1|count_int\(5),
	datac => \CLK_DIV1|count_int\(4),
	datad => \CLK_DIV1|count_int\(6),
	combout => \CLK_DIV1|Equal0~1_combout\);

-- Location: LCCOMB_X2_Y9_N4
\CLK_DIV1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_DIV1|Equal0~0_combout\ = (\CLK_DIV1|count_int\(1) & (\CLK_DIV1|count_int\(3) & (\CLK_DIV1|count_int\(2) & !\CLK_DIV1|count_std\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK_DIV1|count_int\(1),
	datab => \CLK_DIV1|count_int\(3),
	datac => \CLK_DIV1|count_int\(2),
	datad => \CLK_DIV1|count_std\(0),
	combout => \CLK_DIV1|Equal0~0_combout\);

-- Location: LCCOMB_X2_Y9_N8
\CLK_DIV1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_DIV1|Equal0~2_combout\ = (\CLK_DIV1|count_int\(9) & (\CLK_DIV1|count_int\(8) & (\CLK_DIV1|count_int\(11) & \CLK_DIV1|count_int\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK_DIV1|count_int\(9),
	datab => \CLK_DIV1|count_int\(8),
	datac => \CLK_DIV1|count_int\(11),
	datad => \CLK_DIV1|count_int\(10),
	combout => \CLK_DIV1|Equal0~2_combout\);

-- Location: LCCOMB_X2_Y8_N24
\CLK_DIV1|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_DIV1|Equal0~3_combout\ = (\CLK_DIV1|count_int\(15) & (\CLK_DIV1|count_int\(13) & (\CLK_DIV1|count_int\(14) & \CLK_DIV1|count_int\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK_DIV1|count_int\(15),
	datab => \CLK_DIV1|count_int\(13),
	datac => \CLK_DIV1|count_int\(14),
	datad => \CLK_DIV1|count_int\(12),
	combout => \CLK_DIV1|Equal0~3_combout\);

-- Location: LCCOMB_X2_Y9_N2
\CLK_DIV1|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_DIV1|Equal0~4_combout\ = (\CLK_DIV1|Equal0~1_combout\ & (\CLK_DIV1|Equal0~0_combout\ & (\CLK_DIV1|Equal0~2_combout\ & \CLK_DIV1|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK_DIV1|Equal0~1_combout\,
	datab => \CLK_DIV1|Equal0~0_combout\,
	datac => \CLK_DIV1|Equal0~2_combout\,
	datad => \CLK_DIV1|Equal0~3_combout\,
	combout => \CLK_DIV1|Equal0~4_combout\);

-- Location: LCCOMB_X2_Y9_N0
\CLK_DIV1|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_DIV1|Equal0~7_combout\ = (\CLK_DIV1|Equal0~5_combout\ & (\CLK_DIV1|Equal0~6_combout\ & \CLK_DIV1|Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK_DIV1|Equal0~5_combout\,
	datac => \CLK_DIV1|Equal0~6_combout\,
	datad => \CLK_DIV1|Equal0~4_combout\,
	combout => \CLK_DIV1|Equal0~7_combout\);

-- Location: FF_X1_Y9_N9
\CLK_DIV1|count_std[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CLK_DIV1|count_std[0]~24_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	sclr => \CLK_DIV1|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_DIV1|count_std\(0));

-- Location: LCCOMB_X1_Y9_N10
\CLK_DIV1|count_std[1]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_DIV1|count_std[1]~26_combout\ = (\CLK_DIV1|count_std\(1) & (!\CLK_DIV1|count_std[0]~25\)) # (!\CLK_DIV1|count_std\(1) & ((\CLK_DIV1|count_std[0]~25\) # (GND)))
-- \CLK_DIV1|count_std[1]~27\ = CARRY((!\CLK_DIV1|count_std[0]~25\) # (!\CLK_DIV1|count_std\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLK_DIV1|count_std\(1),
	datad => VCC,
	cin => \CLK_DIV1|count_std[0]~25\,
	combout => \CLK_DIV1|count_std[1]~26_combout\,
	cout => \CLK_DIV1|count_std[1]~27\);

-- Location: FF_X1_Y9_N11
\CLK_DIV1|count_std[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CLK_DIV1|count_std[1]~26_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	sclr => \CLK_DIV1|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_DIV1|count_std\(1));

-- Location: LCCOMB_X1_Y9_N12
\CLK_DIV1|count_std[2]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_DIV1|count_std[2]~28_combout\ = (\CLK_DIV1|count_std\(2) & (\CLK_DIV1|count_std[1]~27\ $ (GND))) # (!\CLK_DIV1|count_std\(2) & (!\CLK_DIV1|count_std[1]~27\ & VCC))
-- \CLK_DIV1|count_std[2]~29\ = CARRY((\CLK_DIV1|count_std\(2) & !\CLK_DIV1|count_std[1]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLK_DIV1|count_std\(2),
	datad => VCC,
	cin => \CLK_DIV1|count_std[1]~27\,
	combout => \CLK_DIV1|count_std[2]~28_combout\,
	cout => \CLK_DIV1|count_std[2]~29\);

-- Location: FF_X1_Y9_N13
\CLK_DIV1|count_std[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CLK_DIV1|count_std[2]~28_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	sclr => \CLK_DIV1|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_DIV1|count_std\(2));

-- Location: LCCOMB_X1_Y9_N14
\CLK_DIV1|count_std[3]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_DIV1|count_std[3]~30_combout\ = (\CLK_DIV1|count_std\(3) & (!\CLK_DIV1|count_std[2]~29\)) # (!\CLK_DIV1|count_std\(3) & ((\CLK_DIV1|count_std[2]~29\) # (GND)))
-- \CLK_DIV1|count_std[3]~31\ = CARRY((!\CLK_DIV1|count_std[2]~29\) # (!\CLK_DIV1|count_std\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK_DIV1|count_std\(3),
	datad => VCC,
	cin => \CLK_DIV1|count_std[2]~29\,
	combout => \CLK_DIV1|count_std[3]~30_combout\,
	cout => \CLK_DIV1|count_std[3]~31\);

-- Location: FF_X1_Y9_N15
\CLK_DIV1|count_std[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CLK_DIV1|count_std[3]~30_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	sclr => \CLK_DIV1|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_DIV1|count_std\(3));

-- Location: LCCOMB_X1_Y9_N16
\CLK_DIV1|count_std[4]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_DIV1|count_std[4]~32_combout\ = (\CLK_DIV1|count_std\(4) & (\CLK_DIV1|count_std[3]~31\ $ (GND))) # (!\CLK_DIV1|count_std\(4) & (!\CLK_DIV1|count_std[3]~31\ & VCC))
-- \CLK_DIV1|count_std[4]~33\ = CARRY((\CLK_DIV1|count_std\(4) & !\CLK_DIV1|count_std[3]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK_DIV1|count_std\(4),
	datad => VCC,
	cin => \CLK_DIV1|count_std[3]~31\,
	combout => \CLK_DIV1|count_std[4]~32_combout\,
	cout => \CLK_DIV1|count_std[4]~33\);

-- Location: FF_X1_Y9_N17
\CLK_DIV1|count_std[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CLK_DIV1|count_std[4]~32_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	sclr => \CLK_DIV1|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_DIV1|count_std\(4));

-- Location: LCCOMB_X1_Y9_N18
\CLK_DIV1|count_std[5]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_DIV1|count_std[5]~34_combout\ = (\CLK_DIV1|count_std\(5) & (!\CLK_DIV1|count_std[4]~33\)) # (!\CLK_DIV1|count_std\(5) & ((\CLK_DIV1|count_std[4]~33\) # (GND)))
-- \CLK_DIV1|count_std[5]~35\ = CARRY((!\CLK_DIV1|count_std[4]~33\) # (!\CLK_DIV1|count_std\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK_DIV1|count_std\(5),
	datad => VCC,
	cin => \CLK_DIV1|count_std[4]~33\,
	combout => \CLK_DIV1|count_std[5]~34_combout\,
	cout => \CLK_DIV1|count_std[5]~35\);

-- Location: FF_X1_Y9_N19
\CLK_DIV1|count_std[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CLK_DIV1|count_std[5]~34_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	sclr => \CLK_DIV1|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_DIV1|count_std\(5));

-- Location: LCCOMB_X1_Y9_N20
\CLK_DIV1|count_std[6]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_DIV1|count_std[6]~36_combout\ = (\CLK_DIV1|count_std\(6) & (\CLK_DIV1|count_std[5]~35\ $ (GND))) # (!\CLK_DIV1|count_std\(6) & (!\CLK_DIV1|count_std[5]~35\ & VCC))
-- \CLK_DIV1|count_std[6]~37\ = CARRY((\CLK_DIV1|count_std\(6) & !\CLK_DIV1|count_std[5]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK_DIV1|count_std\(6),
	datad => VCC,
	cin => \CLK_DIV1|count_std[5]~35\,
	combout => \CLK_DIV1|count_std[6]~36_combout\,
	cout => \CLK_DIV1|count_std[6]~37\);

-- Location: FF_X1_Y9_N21
\CLK_DIV1|count_std[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CLK_DIV1|count_std[6]~36_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	sclr => \CLK_DIV1|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_DIV1|count_std\(6));

-- Location: LCCOMB_X1_Y9_N22
\CLK_DIV1|count_std[7]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_DIV1|count_std[7]~38_combout\ = (\CLK_DIV1|count_std\(7) & (!\CLK_DIV1|count_std[6]~37\)) # (!\CLK_DIV1|count_std\(7) & ((\CLK_DIV1|count_std[6]~37\) # (GND)))
-- \CLK_DIV1|count_std[7]~39\ = CARRY((!\CLK_DIV1|count_std[6]~37\) # (!\CLK_DIV1|count_std\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLK_DIV1|count_std\(7),
	datad => VCC,
	cin => \CLK_DIV1|count_std[6]~37\,
	combout => \CLK_DIV1|count_std[7]~38_combout\,
	cout => \CLK_DIV1|count_std[7]~39\);

-- Location: FF_X1_Y9_N23
\CLK_DIV1|count_std[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CLK_DIV1|count_std[7]~38_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	sclr => \CLK_DIV1|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_DIV1|count_std\(7));

-- Location: LCCOMB_X1_Y9_N24
\CLK_DIV1|count_std[8]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_DIV1|count_std[8]~40_combout\ = (\CLK_DIV1|count_std\(8) & (\CLK_DIV1|count_std[7]~39\ $ (GND))) # (!\CLK_DIV1|count_std\(8) & (!\CLK_DIV1|count_std[7]~39\ & VCC))
-- \CLK_DIV1|count_std[8]~41\ = CARRY((\CLK_DIV1|count_std\(8) & !\CLK_DIV1|count_std[7]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK_DIV1|count_std\(8),
	datad => VCC,
	cin => \CLK_DIV1|count_std[7]~39\,
	combout => \CLK_DIV1|count_std[8]~40_combout\,
	cout => \CLK_DIV1|count_std[8]~41\);

-- Location: FF_X1_Y9_N25
\CLK_DIV1|count_std[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CLK_DIV1|count_std[8]~40_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	sclr => \CLK_DIV1|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_DIV1|count_std\(8));

-- Location: LCCOMB_X1_Y9_N26
\CLK_DIV1|count_std[9]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_DIV1|count_std[9]~42_combout\ = (\CLK_DIV1|count_std\(9) & (!\CLK_DIV1|count_std[8]~41\)) # (!\CLK_DIV1|count_std\(9) & ((\CLK_DIV1|count_std[8]~41\) # (GND)))
-- \CLK_DIV1|count_std[9]~43\ = CARRY((!\CLK_DIV1|count_std[8]~41\) # (!\CLK_DIV1|count_std\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLK_DIV1|count_std\(9),
	datad => VCC,
	cin => \CLK_DIV1|count_std[8]~41\,
	combout => \CLK_DIV1|count_std[9]~42_combout\,
	cout => \CLK_DIV1|count_std[9]~43\);

-- Location: FF_X1_Y9_N27
\CLK_DIV1|count_std[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CLK_DIV1|count_std[9]~42_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	sclr => \CLK_DIV1|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_DIV1|count_std\(9));

-- Location: LCCOMB_X1_Y9_N28
\CLK_DIV1|count_std[10]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_DIV1|count_std[10]~44_combout\ = (\CLK_DIV1|count_std\(10) & (\CLK_DIV1|count_std[9]~43\ $ (GND))) # (!\CLK_DIV1|count_std\(10) & (!\CLK_DIV1|count_std[9]~43\ & VCC))
-- \CLK_DIV1|count_std[10]~45\ = CARRY((\CLK_DIV1|count_std\(10) & !\CLK_DIV1|count_std[9]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK_DIV1|count_std\(10),
	datad => VCC,
	cin => \CLK_DIV1|count_std[9]~43\,
	combout => \CLK_DIV1|count_std[10]~44_combout\,
	cout => \CLK_DIV1|count_std[10]~45\);

-- Location: FF_X1_Y9_N29
\CLK_DIV1|count_std[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CLK_DIV1|count_std[10]~44_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	sclr => \CLK_DIV1|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_DIV1|count_std\(10));

-- Location: LCCOMB_X1_Y9_N30
\CLK_DIV1|count_std[11]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_DIV1|count_std[11]~46_combout\ = (\CLK_DIV1|count_std\(11) & (!\CLK_DIV1|count_std[10]~45\)) # (!\CLK_DIV1|count_std\(11) & ((\CLK_DIV1|count_std[10]~45\) # (GND)))
-- \CLK_DIV1|count_std[11]~47\ = CARRY((!\CLK_DIV1|count_std[10]~45\) # (!\CLK_DIV1|count_std\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLK_DIV1|count_std\(11),
	datad => VCC,
	cin => \CLK_DIV1|count_std[10]~45\,
	combout => \CLK_DIV1|count_std[11]~46_combout\,
	cout => \CLK_DIV1|count_std[11]~47\);

-- Location: FF_X1_Y9_N31
\CLK_DIV1|count_std[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CLK_DIV1|count_std[11]~46_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	sclr => \CLK_DIV1|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_DIV1|count_std\(11));

-- Location: LCCOMB_X1_Y8_N0
\CLK_DIV1|count_std[12]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_DIV1|count_std[12]~48_combout\ = (\CLK_DIV1|count_std\(12) & (\CLK_DIV1|count_std[11]~47\ $ (GND))) # (!\CLK_DIV1|count_std\(12) & (!\CLK_DIV1|count_std[11]~47\ & VCC))
-- \CLK_DIV1|count_std[12]~49\ = CARRY((\CLK_DIV1|count_std\(12) & !\CLK_DIV1|count_std[11]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK_DIV1|count_std\(12),
	datad => VCC,
	cin => \CLK_DIV1|count_std[11]~47\,
	combout => \CLK_DIV1|count_std[12]~48_combout\,
	cout => \CLK_DIV1|count_std[12]~49\);

-- Location: FF_X1_Y8_N1
\CLK_DIV1|count_std[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CLK_DIV1|count_std[12]~48_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	sclr => \CLK_DIV1|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_DIV1|count_std\(12));

-- Location: LCCOMB_X1_Y8_N2
\CLK_DIV1|count_std[13]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_DIV1|count_std[13]~50_combout\ = (\CLK_DIV1|count_std\(13) & (!\CLK_DIV1|count_std[12]~49\)) # (!\CLK_DIV1|count_std\(13) & ((\CLK_DIV1|count_std[12]~49\) # (GND)))
-- \CLK_DIV1|count_std[13]~51\ = CARRY((!\CLK_DIV1|count_std[12]~49\) # (!\CLK_DIV1|count_std\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK_DIV1|count_std\(13),
	datad => VCC,
	cin => \CLK_DIV1|count_std[12]~49\,
	combout => \CLK_DIV1|count_std[13]~50_combout\,
	cout => \CLK_DIV1|count_std[13]~51\);

-- Location: FF_X1_Y8_N3
\CLK_DIV1|count_std[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CLK_DIV1|count_std[13]~50_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	sclr => \CLK_DIV1|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_DIV1|count_std\(13));

-- Location: LCCOMB_X1_Y8_N4
\CLK_DIV1|count_std[14]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_DIV1|count_std[14]~52_combout\ = (\CLK_DIV1|count_std\(14) & (\CLK_DIV1|count_std[13]~51\ $ (GND))) # (!\CLK_DIV1|count_std\(14) & (!\CLK_DIV1|count_std[13]~51\ & VCC))
-- \CLK_DIV1|count_std[14]~53\ = CARRY((\CLK_DIV1|count_std\(14) & !\CLK_DIV1|count_std[13]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK_DIV1|count_std\(14),
	datad => VCC,
	cin => \CLK_DIV1|count_std[13]~51\,
	combout => \CLK_DIV1|count_std[14]~52_combout\,
	cout => \CLK_DIV1|count_std[14]~53\);

-- Location: FF_X1_Y8_N5
\CLK_DIV1|count_std[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CLK_DIV1|count_std[14]~52_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	sclr => \CLK_DIV1|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_DIV1|count_std\(14));

-- Location: LCCOMB_X1_Y8_N6
\CLK_DIV1|count_std[15]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_DIV1|count_std[15]~54_combout\ = (\CLK_DIV1|count_std\(15) & (!\CLK_DIV1|count_std[14]~53\)) # (!\CLK_DIV1|count_std\(15) & ((\CLK_DIV1|count_std[14]~53\) # (GND)))
-- \CLK_DIV1|count_std[15]~55\ = CARRY((!\CLK_DIV1|count_std[14]~53\) # (!\CLK_DIV1|count_std\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLK_DIV1|count_std\(15),
	datad => VCC,
	cin => \CLK_DIV1|count_std[14]~53\,
	combout => \CLK_DIV1|count_std[15]~54_combout\,
	cout => \CLK_DIV1|count_std[15]~55\);

-- Location: FF_X1_Y8_N7
\CLK_DIV1|count_std[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CLK_DIV1|count_std[15]~54_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	sclr => \CLK_DIV1|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_DIV1|count_std\(15));

-- Location: LCCOMB_X1_Y8_N8
\CLK_DIV1|count_std[16]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_DIV1|count_std[16]~56_combout\ = (\CLK_DIV1|count_std\(16) & (\CLK_DIV1|count_std[15]~55\ $ (GND))) # (!\CLK_DIV1|count_std\(16) & (!\CLK_DIV1|count_std[15]~55\ & VCC))
-- \CLK_DIV1|count_std[16]~57\ = CARRY((\CLK_DIV1|count_std\(16) & !\CLK_DIV1|count_std[15]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK_DIV1|count_std\(16),
	datad => VCC,
	cin => \CLK_DIV1|count_std[15]~55\,
	combout => \CLK_DIV1|count_std[16]~56_combout\,
	cout => \CLK_DIV1|count_std[16]~57\);

-- Location: FF_X1_Y8_N9
\CLK_DIV1|count_std[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CLK_DIV1|count_std[16]~56_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	sclr => \CLK_DIV1|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_DIV1|count_std\(16));

-- Location: LCCOMB_X1_Y8_N10
\CLK_DIV1|count_std[17]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_DIV1|count_std[17]~58_combout\ = (\CLK_DIV1|count_std\(17) & (!\CLK_DIV1|count_std[16]~57\)) # (!\CLK_DIV1|count_std\(17) & ((\CLK_DIV1|count_std[16]~57\) # (GND)))
-- \CLK_DIV1|count_std[17]~59\ = CARRY((!\CLK_DIV1|count_std[16]~57\) # (!\CLK_DIV1|count_std\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLK_DIV1|count_std\(17),
	datad => VCC,
	cin => \CLK_DIV1|count_std[16]~57\,
	combout => \CLK_DIV1|count_std[17]~58_combout\,
	cout => \CLK_DIV1|count_std[17]~59\);

-- Location: FF_X1_Y8_N11
\CLK_DIV1|count_std[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CLK_DIV1|count_std[17]~58_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	sclr => \CLK_DIV1|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_DIV1|count_std\(17));

-- Location: LCCOMB_X1_Y8_N12
\CLK_DIV1|count_std[18]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_DIV1|count_std[18]~60_combout\ = (\CLK_DIV1|count_std\(18) & (\CLK_DIV1|count_std[17]~59\ $ (GND))) # (!\CLK_DIV1|count_std\(18) & (!\CLK_DIV1|count_std[17]~59\ & VCC))
-- \CLK_DIV1|count_std[18]~61\ = CARRY((\CLK_DIV1|count_std\(18) & !\CLK_DIV1|count_std[17]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \CLK_DIV1|count_std\(18),
	datad => VCC,
	cin => \CLK_DIV1|count_std[17]~59\,
	combout => \CLK_DIV1|count_std[18]~60_combout\,
	cout => \CLK_DIV1|count_std[18]~61\);

-- Location: FF_X1_Y8_N13
\CLK_DIV1|count_std[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CLK_DIV1|count_std[18]~60_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	sclr => \CLK_DIV1|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_DIV1|count_std\(18));

-- Location: LCCOMB_X1_Y8_N14
\CLK_DIV1|count_std[19]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_DIV1|count_std[19]~62_combout\ = (\CLK_DIV1|count_std\(19) & (!\CLK_DIV1|count_std[18]~61\)) # (!\CLK_DIV1|count_std\(19) & ((\CLK_DIV1|count_std[18]~61\) # (GND)))
-- \CLK_DIV1|count_std[19]~63\ = CARRY((!\CLK_DIV1|count_std[18]~61\) # (!\CLK_DIV1|count_std\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK_DIV1|count_std\(19),
	datad => VCC,
	cin => \CLK_DIV1|count_std[18]~61\,
	combout => \CLK_DIV1|count_std[19]~62_combout\,
	cout => \CLK_DIV1|count_std[19]~63\);

-- Location: FF_X1_Y8_N15
\CLK_DIV1|count_std[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CLK_DIV1|count_std[19]~62_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	sclr => \CLK_DIV1|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_DIV1|count_std\(19));

-- Location: LCCOMB_X1_Y8_N16
\CLK_DIV1|count_std[20]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_DIV1|count_std[20]~64_combout\ = (\CLK_DIV1|count_std\(20) & (\CLK_DIV1|count_std[19]~63\ $ (GND))) # (!\CLK_DIV1|count_std\(20) & (!\CLK_DIV1|count_std[19]~63\ & VCC))
-- \CLK_DIV1|count_std[20]~65\ = CARRY((\CLK_DIV1|count_std\(20) & !\CLK_DIV1|count_std[19]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK_DIV1|count_std\(20),
	datad => VCC,
	cin => \CLK_DIV1|count_std[19]~63\,
	combout => \CLK_DIV1|count_std[20]~64_combout\,
	cout => \CLK_DIV1|count_std[20]~65\);

-- Location: FF_X1_Y8_N17
\CLK_DIV1|count_std[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CLK_DIV1|count_std[20]~64_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	sclr => \CLK_DIV1|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_DIV1|count_std\(20));

-- Location: LCCOMB_X1_Y8_N18
\CLK_DIV1|count_std[21]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_DIV1|count_std[21]~66_combout\ = (\CLK_DIV1|count_std\(21) & (!\CLK_DIV1|count_std[20]~65\)) # (!\CLK_DIV1|count_std\(21) & ((\CLK_DIV1|count_std[20]~65\) # (GND)))
-- \CLK_DIV1|count_std[21]~67\ = CARRY((!\CLK_DIV1|count_std[20]~65\) # (!\CLK_DIV1|count_std\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK_DIV1|count_std\(21),
	datad => VCC,
	cin => \CLK_DIV1|count_std[20]~65\,
	combout => \CLK_DIV1|count_std[21]~66_combout\,
	cout => \CLK_DIV1|count_std[21]~67\);

-- Location: FF_X1_Y8_N19
\CLK_DIV1|count_std[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CLK_DIV1|count_std[21]~66_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	sclr => \CLK_DIV1|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_DIV1|count_std\(21));

-- Location: LCCOMB_X1_Y8_N20
\CLK_DIV1|count_std[22]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_DIV1|count_std[22]~68_combout\ = (\CLK_DIV1|count_std\(22) & (\CLK_DIV1|count_std[21]~67\ $ (GND))) # (!\CLK_DIV1|count_std\(22) & (!\CLK_DIV1|count_std[21]~67\ & VCC))
-- \CLK_DIV1|count_std[22]~69\ = CARRY((\CLK_DIV1|count_std\(22) & !\CLK_DIV1|count_std[21]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \CLK_DIV1|count_std\(22),
	datad => VCC,
	cin => \CLK_DIV1|count_std[21]~67\,
	combout => \CLK_DIV1|count_std[22]~68_combout\,
	cout => \CLK_DIV1|count_std[22]~69\);

-- Location: FF_X1_Y8_N21
\CLK_DIV1|count_std[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CLK_DIV1|count_std[22]~68_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	sclr => \CLK_DIV1|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_DIV1|count_std\(22));

-- Location: LCCOMB_X1_Y8_N22
\CLK_DIV1|count_std[23]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \CLK_DIV1|count_std[23]~70_combout\ = \CLK_DIV1|count_std[22]~69\ $ (\CLK_DIV1|count_std\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \CLK_DIV1|count_std\(23),
	cin => \CLK_DIV1|count_std[22]~69\,
	combout => \CLK_DIV1|count_std[23]~70_combout\);

-- Location: FF_X1_Y8_N23
\CLK_DIV1|count_std[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \CLK_DIV1|count_std[23]~70_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	sclr => \CLK_DIV1|Equal0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CLK_DIV1|count_std\(23));

-- Location: CLKCTRL_G3
\CLK_DIV1|count_std[23]~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK_DIV1|count_std[23]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK_DIV1|count_std[23]~clkctrl_outclk\);

-- Location: LCCOMB_X36_Y33_N16
\COUNT1|count_int[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNT1|count_int[0]~3_combout\ = !\COUNT1|count_int\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COUNT1|count_int\(0),
	combout => \COUNT1|count_int[0]~3_combout\);

-- Location: FF_X36_Y33_N17
\COUNT1|count_int[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_DIV1|count_std[23]~clkctrl_outclk\,
	d => \COUNT1|count_int[0]~3_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNT1|count_int\(0));

-- Location: LCCOMB_X36_Y33_N6
\COUNT1|count_int[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNT1|count_int[1]~0_combout\ = \COUNT1|count_int\(1) $ (\COUNT1|count_int\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COUNT1|count_int\(1),
	datad => \COUNT1|count_int\(0),
	combout => \COUNT1|count_int[1]~0_combout\);

-- Location: FF_X36_Y33_N7
\COUNT1|count_int[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_DIV1|count_std[23]~clkctrl_outclk\,
	d => \COUNT1|count_int[1]~0_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNT1|count_int\(1));

-- Location: LCCOMB_X36_Y33_N12
\COUNT1|count_int[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNT1|count_int[2]~1_combout\ = \COUNT1|count_int\(2) $ (((\COUNT1|count_int\(0) & \COUNT1|count_int\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \COUNT1|count_int\(0),
	datac => \COUNT1|count_int\(2),
	datad => \COUNT1|count_int\(1),
	combout => \COUNT1|count_int[2]~1_combout\);

-- Location: FF_X36_Y33_N13
\COUNT1|count_int[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_DIV1|count_std[23]~clkctrl_outclk\,
	d => \COUNT1|count_int[2]~1_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNT1|count_int\(2));

-- Location: LCCOMB_X36_Y33_N30
\COUNT1|count_int[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \COUNT1|count_int[3]~2_combout\ = \COUNT1|count_int\(3) $ (((\COUNT1|count_int\(1) & (\COUNT1|count_int\(0) & \COUNT1|count_int\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \COUNT1|count_int\(1),
	datab => \COUNT1|count_int\(0),
	datac => \COUNT1|count_int\(3),
	datad => \COUNT1|count_int\(2),
	combout => \COUNT1|count_int[3]~2_combout\);

-- Location: FF_X36_Y33_N31
\COUNT1|count_int[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK_DIV1|count_std[23]~clkctrl_outclk\,
	d => \COUNT1|count_int[3]~2_combout\,
	clrn => \RST~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \COUNT1|count_int\(3));

-- Location: IOIBUF_X27_Y0_N8
\SW1[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW1(0),
	o => \SW1[0]~input_o\);

-- Location: IOIBUF_X27_Y0_N1
\SW1[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW1(1),
	o => \SW1[1]~input_o\);

-- Location: IOIBUF_X7_Y34_N8
\SW1[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW1(2),
	o => \SW1[2]~input_o\);

-- Location: IOIBUF_X45_Y0_N15
\SW1[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW1(3),
	o => \SW1[3]~input_o\);

-- Location: IOIBUF_X20_Y34_N8
\SW1[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW1(4),
	o => \SW1[4]~input_o\);

-- Location: IOIBUF_X14_Y0_N15
\SW1[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW1(5),
	o => \SW1[5]~input_o\);

-- Location: IOIBUF_X0_Y23_N22
\SW1[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW1(6),
	o => \SW1[6]~input_o\);

-- Location: IOIBUF_X11_Y0_N22
\SW1[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW1(7),
	o => \SW1[7]~input_o\);

-- Location: IOIBUF_X23_Y34_N15
\SW2[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW2(0),
	o => \SW2[0]~input_o\);

-- Location: IOIBUF_X16_Y0_N15
\SW2[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW2(1),
	o => \SW2[1]~input_o\);

-- Location: IOIBUF_X18_Y34_N1
\SW2[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW2(2),
	o => \SW2[2]~input_o\);

-- Location: IOIBUF_X16_Y34_N15
\SW2[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW2(3),
	o => \SW2[3]~input_o\);

-- Location: IOIBUF_X45_Y34_N1
\SW2[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW2(4),
	o => \SW2[4]~input_o\);

-- Location: IOIBUF_X53_Y20_N15
\SW2[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW2(5),
	o => \SW2[5]~input_o\);

-- Location: IOIBUF_X0_Y25_N8
\SW2[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW2(6),
	o => \SW2[6]~input_o\);

-- Location: IOIBUF_X1_Y0_N1
\SW2[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW2(7),
	o => \SW2[7]~input_o\);

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


