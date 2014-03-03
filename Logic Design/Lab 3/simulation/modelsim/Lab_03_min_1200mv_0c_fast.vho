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
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Full Version"

-- DATE "01/29/2014 17:31:47"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Lab_03 IS
    PORT (
	SW1 : IN STD.STANDARD.bit_vector(7 DOWNTO 0);
	SW2 : IN STD.STANDARD.bit_vector(7 DOWNTO 0);
	LED_Red : OUT STD.STANDARD.bit_vector(7 DOWNTO 0);
	LED_Blue : OUT STD.STANDARD.bit_vector(7 DOWNTO 0);
	LED17 : OUT STD.STANDARD.bit_vector(7 DOWNTO 0);
	LED18 : OUT STD.STANDARD.bit_vector(7 DOWNTO 0);
	LED19 : OUT STD.STANDARD.bit_vector(7 DOWNTO 0);
	LED20 : OUT STD.STANDARD.bit_vector(7 DOWNTO 0)
	);
END Lab_03;

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
-- SW1[0]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW1[1]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW1[2]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW1[3]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW1[4]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW1[5]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW1[6]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW1[7]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW2[0]	=>  Location: PIN_D3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW2[1]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW2[2]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW2[3]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW2[4]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW2[5]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW2[6]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW2[7]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Lab_03 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_SW2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_LED_Red : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_LED_Blue : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_LED17 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_LED18 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_LED19 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_LED20 : std_logic_vector(7 DOWNTO 0);
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
SIGNAL \LED17Driver|LED[1]~0_combout\ : std_logic;
SIGNAL \LED17Driver|LED[2]~1_combout\ : std_logic;
SIGNAL \LED17Driver|LED[3]~2_combout\ : std_logic;
SIGNAL \LED17Driver|LED[4]~3_combout\ : std_logic;
SIGNAL \LED17Driver|LED[5]~4_combout\ : std_logic;
SIGNAL \LED17Driver|LED[6]~5_combout\ : std_logic;
SIGNAL \LED17Driver|LED[7]~6_combout\ : std_logic;
SIGNAL \LED18Driver|LED[1]~0_combout\ : std_logic;
SIGNAL \LED18Driver|LED[2]~1_combout\ : std_logic;
SIGNAL \LED18Driver|LED[3]~2_combout\ : std_logic;
SIGNAL \LED18Driver|LED[4]~3_combout\ : std_logic;
SIGNAL \LED18Driver|LED[5]~4_combout\ : std_logic;
SIGNAL \LED18Driver|LED[6]~5_combout\ : std_logic;
SIGNAL \LED18Driver|LED[7]~6_combout\ : std_logic;
SIGNAL \LED19Driver|Mux6~0_combout\ : std_logic;
SIGNAL \LED19Driver|Mux5~0_combout\ : std_logic;
SIGNAL \LED19Driver|Mux4~0_combout\ : std_logic;
SIGNAL \LED19Driver|Mux3~0_combout\ : std_logic;
SIGNAL \LED19Driver|Mux2~0_combout\ : std_logic;
SIGNAL \LED19Driver|Mux1~0_combout\ : std_logic;
SIGNAL \LED19Driver|Mux0~0_combout\ : std_logic;
SIGNAL \LED20Driver|Mux6~0_combout\ : std_logic;
SIGNAL \LED20Driver|Mux5~0_combout\ : std_logic;
SIGNAL \LED20Driver|Mux4~0_combout\ : std_logic;
SIGNAL \LED20Driver|Mux3~0_combout\ : std_logic;
SIGNAL \LED20Driver|Mux2~0_combout\ : std_logic;
SIGNAL \LED20Driver|Mux1~0_combout\ : std_logic;
SIGNAL \LED20Driver|Mux0~0_combout\ : std_logic;
SIGNAL \LED20Driver|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \LED20Driver|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \LED20Driver|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \LED20Driver|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \LED20Driver|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \LED20Driver|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \LED19Driver|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \LED19Driver|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \LED19Driver|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \LED19Driver|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \LED19Driver|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \LED19Driver|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \LED18Driver|ALT_INV_LED[4]~3_combout\ : std_logic;
SIGNAL \LED18Driver|ALT_INV_LED[3]~2_combout\ : std_logic;
SIGNAL \LED17Driver|ALT_INV_LED[4]~3_combout\ : std_logic;
SIGNAL \LED17Driver|ALT_INV_LED[3]~2_combout\ : std_logic;

BEGIN

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
\LED20Driver|ALT_INV_Mux0~0_combout\ <= NOT \LED20Driver|Mux0~0_combout\;
\LED20Driver|ALT_INV_Mux1~0_combout\ <= NOT \LED20Driver|Mux1~0_combout\;
\LED20Driver|ALT_INV_Mux2~0_combout\ <= NOT \LED20Driver|Mux2~0_combout\;
\LED20Driver|ALT_INV_Mux3~0_combout\ <= NOT \LED20Driver|Mux3~0_combout\;
\LED20Driver|ALT_INV_Mux4~0_combout\ <= NOT \LED20Driver|Mux4~0_combout\;
\LED20Driver|ALT_INV_Mux5~0_combout\ <= NOT \LED20Driver|Mux5~0_combout\;
\LED19Driver|ALT_INV_Mux0~0_combout\ <= NOT \LED19Driver|Mux0~0_combout\;
\LED19Driver|ALT_INV_Mux1~0_combout\ <= NOT \LED19Driver|Mux1~0_combout\;
\LED19Driver|ALT_INV_Mux2~0_combout\ <= NOT \LED19Driver|Mux2~0_combout\;
\LED19Driver|ALT_INV_Mux3~0_combout\ <= NOT \LED19Driver|Mux3~0_combout\;
\LED19Driver|ALT_INV_Mux4~0_combout\ <= NOT \LED19Driver|Mux4~0_combout\;
\LED19Driver|ALT_INV_Mux5~0_combout\ <= NOT \LED19Driver|Mux5~0_combout\;
\LED18Driver|ALT_INV_LED[4]~3_combout\ <= NOT \LED18Driver|LED[4]~3_combout\;
\LED18Driver|ALT_INV_LED[3]~2_combout\ <= NOT \LED18Driver|LED[3]~2_combout\;
\LED17Driver|ALT_INV_LED[4]~3_combout\ <= NOT \LED17Driver|LED[4]~3_combout\;
\LED17Driver|ALT_INV_LED[3]~2_combout\ <= NOT \LED17Driver|LED[3]~2_combout\;

-- Location: IOOBUF_X31_Y34_N9
\LED_Red[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW1[0]~input_o\,
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
	i => \SW1[1]~input_o\,
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
	i => \SW1[2]~input_o\,
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
	i => \SW1[3]~input_o\,
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
	i => \SW1[4]~input_o\,
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
	i => \SW1[5]~input_o\,
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
	i => \SW1[6]~input_o\,
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
	i => \SW1[7]~input_o\,
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
	i => \SW2[0]~input_o\,
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
	i => \SW2[1]~input_o\,
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
	i => \SW2[2]~input_o\,
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
	i => \SW2[3]~input_o\,
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
	i => \SW2[4]~input_o\,
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
	i => \SW2[5]~input_o\,
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
	i => \SW2[6]~input_o\,
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
	i => \SW2[7]~input_o\,
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
	i => \LED17Driver|LED[1]~0_combout\,
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
	i => \LED17Driver|LED[2]~1_combout\,
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
	i => \LED17Driver|ALT_INV_LED[3]~2_combout\,
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
	i => \LED17Driver|ALT_INV_LED[4]~3_combout\,
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
	i => \LED17Driver|LED[5]~4_combout\,
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
	i => \LED17Driver|LED[6]~5_combout\,
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
	i => \LED17Driver|LED[7]~6_combout\,
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
	i => \LED18Driver|LED[1]~0_combout\,
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
	i => \LED18Driver|LED[2]~1_combout\,
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
	i => \LED18Driver|ALT_INV_LED[3]~2_combout\,
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
	i => \LED18Driver|ALT_INV_LED[4]~3_combout\,
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
	i => \LED18Driver|LED[5]~4_combout\,
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
	i => \LED18Driver|LED[6]~5_combout\,
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
	i => \LED18Driver|LED[7]~6_combout\,
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
	i => \LED19Driver|Mux6~0_combout\,
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
	i => \LED19Driver|ALT_INV_Mux5~0_combout\,
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
	i => \LED19Driver|ALT_INV_Mux4~0_combout\,
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
	i => \LED19Driver|ALT_INV_Mux3~0_combout\,
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
	i => \LED19Driver|ALT_INV_Mux2~0_combout\,
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
	i => \LED19Driver|ALT_INV_Mux1~0_combout\,
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
	i => \LED19Driver|ALT_INV_Mux0~0_combout\,
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
	i => \LED20Driver|Mux6~0_combout\,
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
	i => \LED20Driver|ALT_INV_Mux5~0_combout\,
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
	i => \LED20Driver|ALT_INV_Mux4~0_combout\,
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
	i => \LED20Driver|ALT_INV_Mux3~0_combout\,
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
	i => \LED20Driver|ALT_INV_Mux2~0_combout\,
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
	i => \LED20Driver|ALT_INV_Mux1~0_combout\,
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
	i => \LED20Driver|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \LED20[7]~output_o\);

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

-- Location: LCCOMB_X52_Y14_N8
\LED17Driver|LED[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LED17Driver|LED[1]~0_combout\ = (\SW2[3]~input_o\) # ((\SW2[1]~input_o\ & ((!\SW2[0]~input_o\) # (!\SW2[2]~input_o\))) # (!\SW2[1]~input_o\ & (\SW2[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW2[1]~input_o\,
	datab => \SW2[2]~input_o\,
	datac => \SW2[0]~input_o\,
	datad => \SW2[3]~input_o\,
	combout => \LED17Driver|LED[1]~0_combout\);

-- Location: LCCOMB_X52_Y14_N10
\LED17Driver|LED[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LED17Driver|LED[2]~1_combout\ = (\SW2[1]~input_o\ & ((\SW2[3]~input_o\) # ((\SW2[2]~input_o\ & !\SW2[0]~input_o\)))) # (!\SW2[1]~input_o\ & ((\SW2[2]~input_o\ & ((!\SW2[3]~input_o\))) # (!\SW2[2]~input_o\ & ((\SW2[3]~input_o\) # (!\SW2[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW2[1]~input_o\,
	datab => \SW2[2]~input_o\,
	datac => \SW2[0]~input_o\,
	datad => \SW2[3]~input_o\,
	combout => \LED17Driver|LED[2]~1_combout\);

-- Location: LCCOMB_X52_Y14_N20
\LED17Driver|LED[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LED17Driver|LED[3]~2_combout\ = (\SW2[1]~input_o\ & (((\SW2[0]~input_o\ & !\SW2[3]~input_o\)))) # (!\SW2[1]~input_o\ & ((\SW2[2]~input_o\ & ((!\SW2[3]~input_o\))) # (!\SW2[2]~input_o\ & (\SW2[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW2[1]~input_o\,
	datab => \SW2[2]~input_o\,
	datac => \SW2[0]~input_o\,
	datad => \SW2[3]~input_o\,
	combout => \LED17Driver|LED[3]~2_combout\);

-- Location: LCCOMB_X52_Y14_N6
\LED17Driver|LED[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LED17Driver|LED[4]~3_combout\ = (\SW2[1]~input_o\ & ((\SW2[2]~input_o\ & (\SW2[0]~input_o\)) # (!\SW2[2]~input_o\ & (!\SW2[0]~input_o\ & \SW2[3]~input_o\)))) # (!\SW2[1]~input_o\ & (!\SW2[3]~input_o\ & (\SW2[2]~input_o\ $ (\SW2[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW2[1]~input_o\,
	datab => \SW2[2]~input_o\,
	datac => \SW2[0]~input_o\,
	datad => \SW2[3]~input_o\,
	combout => \LED17Driver|LED[4]~3_combout\);

-- Location: LCCOMB_X52_Y14_N16
\LED17Driver|LED[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LED17Driver|LED[5]~4_combout\ = (\SW2[2]~input_o\ & (((!\SW2[1]~input_o\ & \SW2[0]~input_o\)) # (!\SW2[3]~input_o\))) # (!\SW2[2]~input_o\ & (((\SW2[0]~input_o\) # (\SW2[3]~input_o\)) # (!\SW2[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW2[1]~input_o\,
	datab => \SW2[2]~input_o\,
	datac => \SW2[0]~input_o\,
	datad => \SW2[3]~input_o\,
	combout => \LED17Driver|LED[5]~4_combout\);

-- Location: LCCOMB_X52_Y14_N18
\LED17Driver|LED[6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LED17Driver|LED[6]~5_combout\ = (\SW2[1]~input_o\ & ((\SW2[0]~input_o\ & ((!\SW2[3]~input_o\))) # (!\SW2[0]~input_o\ & (!\SW2[2]~input_o\)))) # (!\SW2[1]~input_o\ & ((\SW2[0]~input_o\ $ (!\SW2[3]~input_o\)) # (!\SW2[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW2[1]~input_o\,
	datab => \SW2[2]~input_o\,
	datac => \SW2[0]~input_o\,
	datad => \SW2[3]~input_o\,
	combout => \LED17Driver|LED[6]~5_combout\);

-- Location: LCCOMB_X52_Y14_N12
\LED17Driver|LED[7]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LED17Driver|LED[7]~6_combout\ = (\SW2[1]~input_o\ & ((\SW2[2]~input_o\) # ((!\SW2[3]~input_o\) # (!\SW2[0]~input_o\)))) # (!\SW2[1]~input_o\ & (\SW2[2]~input_o\ $ (((\SW2[3]~input_o\) # (!\SW2[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101111101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW2[1]~input_o\,
	datab => \SW2[2]~input_o\,
	datac => \SW2[0]~input_o\,
	datad => \SW2[3]~input_o\,
	combout => \LED17Driver|LED[7]~6_combout\);

-- Location: LCCOMB_X49_Y11_N24
\LED18Driver|LED[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LED18Driver|LED[1]~0_combout\ = (\SW2[7]~input_o\) # ((\SW2[6]~input_o\ & ((!\SW2[5]~input_o\) # (!\SW2[4]~input_o\))) # (!\SW2[6]~input_o\ & ((\SW2[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW2[6]~input_o\,
	datab => \SW2[4]~input_o\,
	datac => \SW2[5]~input_o\,
	datad => \SW2[7]~input_o\,
	combout => \LED18Driver|LED[1]~0_combout\);

-- Location: LCCOMB_X49_Y11_N10
\LED18Driver|LED[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LED18Driver|LED[2]~1_combout\ = (\SW2[6]~input_o\ & ((\SW2[5]~input_o\ & ((\SW2[7]~input_o\) # (!\SW2[4]~input_o\))) # (!\SW2[5]~input_o\ & ((!\SW2[7]~input_o\))))) # (!\SW2[6]~input_o\ & ((\SW2[7]~input_o\) # ((!\SW2[4]~input_o\ & !\SW2[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW2[6]~input_o\,
	datab => \SW2[4]~input_o\,
	datac => \SW2[5]~input_o\,
	datad => \SW2[7]~input_o\,
	combout => \LED18Driver|LED[2]~1_combout\);

-- Location: LCCOMB_X49_Y11_N4
\LED18Driver|LED[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LED18Driver|LED[3]~2_combout\ = (\SW2[5]~input_o\ & (((\SW2[4]~input_o\ & !\SW2[7]~input_o\)))) # (!\SW2[5]~input_o\ & ((\SW2[6]~input_o\ & ((!\SW2[7]~input_o\))) # (!\SW2[6]~input_o\ & (\SW2[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW2[6]~input_o\,
	datab => \SW2[4]~input_o\,
	datac => \SW2[5]~input_o\,
	datad => \SW2[7]~input_o\,
	combout => \LED18Driver|LED[3]~2_combout\);

-- Location: LCCOMB_X49_Y11_N30
\LED18Driver|LED[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LED18Driver|LED[4]~3_combout\ = (\SW2[5]~input_o\ & ((\SW2[6]~input_o\ & (\SW2[4]~input_o\)) # (!\SW2[6]~input_o\ & (!\SW2[4]~input_o\ & \SW2[7]~input_o\)))) # (!\SW2[5]~input_o\ & (!\SW2[7]~input_o\ & (\SW2[6]~input_o\ $ (\SW2[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW2[6]~input_o\,
	datab => \SW2[4]~input_o\,
	datac => \SW2[5]~input_o\,
	datad => \SW2[7]~input_o\,
	combout => \LED18Driver|LED[4]~3_combout\);

-- Location: LCCOMB_X49_Y11_N8
\LED18Driver|LED[5]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LED18Driver|LED[5]~4_combout\ = (\SW2[6]~input_o\ & (((\SW2[4]~input_o\ & !\SW2[5]~input_o\)) # (!\SW2[7]~input_o\))) # (!\SW2[6]~input_o\ & ((\SW2[4]~input_o\) # ((\SW2[7]~input_o\) # (!\SW2[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW2[6]~input_o\,
	datab => \SW2[4]~input_o\,
	datac => \SW2[5]~input_o\,
	datad => \SW2[7]~input_o\,
	combout => \LED18Driver|LED[5]~4_combout\);

-- Location: LCCOMB_X49_Y11_N26
\LED18Driver|LED[6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LED18Driver|LED[6]~5_combout\ = (\SW2[5]~input_o\ & ((\SW2[4]~input_o\ & ((!\SW2[7]~input_o\))) # (!\SW2[4]~input_o\ & (!\SW2[6]~input_o\)))) # (!\SW2[5]~input_o\ & ((\SW2[4]~input_o\ $ (!\SW2[7]~input_o\)) # (!\SW2[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110111010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW2[6]~input_o\,
	datab => \SW2[4]~input_o\,
	datac => \SW2[5]~input_o\,
	datad => \SW2[7]~input_o\,
	combout => \LED18Driver|LED[6]~5_combout\);

-- Location: LCCOMB_X49_Y11_N28
\LED18Driver|LED[7]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LED18Driver|LED[7]~6_combout\ = (\SW2[6]~input_o\ & ((\SW2[5]~input_o\) # ((\SW2[4]~input_o\ & !\SW2[7]~input_o\)))) # (!\SW2[6]~input_o\ & ((\SW2[5]~input_o\ $ (\SW2[7]~input_o\)) # (!\SW2[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010111111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW2[6]~input_o\,
	datab => \SW2[4]~input_o\,
	datac => \SW2[5]~input_o\,
	datad => \SW2[7]~input_o\,
	combout => \LED18Driver|LED[7]~6_combout\);

-- Location: LCCOMB_X35_Y4_N8
\LED19Driver|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LED19Driver|Mux6~0_combout\ = (\SW1[3]~input_o\) # ((\SW1[1]~input_o\ & ((!\SW1[0]~input_o\) # (!\SW1[2]~input_o\))) # (!\SW1[1]~input_o\ & (\SW1[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW1[1]~input_o\,
	datab => \SW1[3]~input_o\,
	datac => \SW1[2]~input_o\,
	datad => \SW1[0]~input_o\,
	combout => \LED19Driver|Mux6~0_combout\);

-- Location: LCCOMB_X35_Y4_N10
\LED19Driver|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LED19Driver|Mux5~0_combout\ = (\SW1[1]~input_o\ & (!\SW1[3]~input_o\ & ((\SW1[0]~input_o\) # (!\SW1[2]~input_o\)))) # (!\SW1[1]~input_o\ & ((\SW1[3]~input_o\ & (\SW1[2]~input_o\)) # (!\SW1[3]~input_o\ & (!\SW1[2]~input_o\ & \SW1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW1[1]~input_o\,
	datab => \SW1[3]~input_o\,
	datac => \SW1[2]~input_o\,
	datad => \SW1[0]~input_o\,
	combout => \LED19Driver|Mux5~0_combout\);

-- Location: LCCOMB_X35_Y4_N28
\LED19Driver|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LED19Driver|Mux4~0_combout\ = (\SW1[1]~input_o\ & (!\SW1[3]~input_o\ & ((\SW1[0]~input_o\)))) # (!\SW1[1]~input_o\ & ((\SW1[2]~input_o\ & (!\SW1[3]~input_o\)) # (!\SW1[2]~input_o\ & ((\SW1[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW1[1]~input_o\,
	datab => \SW1[3]~input_o\,
	datac => \SW1[2]~input_o\,
	datad => \SW1[0]~input_o\,
	combout => \LED19Driver|Mux4~0_combout\);

-- Location: LCCOMB_X35_Y4_N14
\LED19Driver|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LED19Driver|Mux3~0_combout\ = (\SW1[1]~input_o\ & ((\SW1[2]~input_o\ & ((\SW1[0]~input_o\))) # (!\SW1[2]~input_o\ & (\SW1[3]~input_o\ & !\SW1[0]~input_o\)))) # (!\SW1[1]~input_o\ & (!\SW1[3]~input_o\ & (\SW1[2]~input_o\ $ (\SW1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW1[1]~input_o\,
	datab => \SW1[3]~input_o\,
	datac => \SW1[2]~input_o\,
	datad => \SW1[0]~input_o\,
	combout => \LED19Driver|Mux3~0_combout\);

-- Location: LCCOMB_X35_Y4_N24
\LED19Driver|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LED19Driver|Mux2~0_combout\ = (\SW1[3]~input_o\ & (\SW1[2]~input_o\ & ((\SW1[1]~input_o\) # (!\SW1[0]~input_o\)))) # (!\SW1[3]~input_o\ & (\SW1[1]~input_o\ & (!\SW1[2]~input_o\ & !\SW1[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW1[1]~input_o\,
	datab => \SW1[3]~input_o\,
	datac => \SW1[2]~input_o\,
	datad => \SW1[0]~input_o\,
	combout => \LED19Driver|Mux2~0_combout\);

-- Location: LCCOMB_X35_Y4_N26
\LED19Driver|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LED19Driver|Mux1~0_combout\ = (\SW1[1]~input_o\ & ((\SW1[0]~input_o\ & (\SW1[3]~input_o\)) # (!\SW1[0]~input_o\ & ((\SW1[2]~input_o\))))) # (!\SW1[1]~input_o\ & (\SW1[2]~input_o\ & (\SW1[3]~input_o\ $ (\SW1[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW1[1]~input_o\,
	datab => \SW1[3]~input_o\,
	datac => \SW1[2]~input_o\,
	datad => \SW1[0]~input_o\,
	combout => \LED19Driver|Mux1~0_combout\);

-- Location: LCCOMB_X35_Y4_N20
\LED19Driver|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LED19Driver|Mux0~0_combout\ = (\SW1[1]~input_o\ & (\SW1[3]~input_o\ & (!\SW1[2]~input_o\ & \SW1[0]~input_o\))) # (!\SW1[1]~input_o\ & (\SW1[2]~input_o\ $ (((!\SW1[3]~input_o\ & \SW1[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW1[1]~input_o\,
	datab => \SW1[3]~input_o\,
	datac => \SW1[2]~input_o\,
	datad => \SW1[0]~input_o\,
	combout => \LED19Driver|Mux0~0_combout\);

-- Location: LCCOMB_X37_Y4_N8
\LED20Driver|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LED20Driver|Mux6~0_combout\ = (\SW1[7]~input_o\) # ((\SW1[5]~input_o\ & ((!\SW1[6]~input_o\) # (!\SW1[4]~input_o\))) # (!\SW1[5]~input_o\ & ((\SW1[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW1[4]~input_o\,
	datab => \SW1[5]~input_o\,
	datac => \SW1[7]~input_o\,
	datad => \SW1[6]~input_o\,
	combout => \LED20Driver|Mux6~0_combout\);

-- Location: LCCOMB_X37_Y4_N26
\LED20Driver|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LED20Driver|Mux5~0_combout\ = (\SW1[5]~input_o\ & (!\SW1[7]~input_o\ & ((\SW1[4]~input_o\) # (!\SW1[6]~input_o\)))) # (!\SW1[5]~input_o\ & ((\SW1[7]~input_o\ & ((\SW1[6]~input_o\))) # (!\SW1[7]~input_o\ & (\SW1[4]~input_o\ & !\SW1[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW1[4]~input_o\,
	datab => \SW1[5]~input_o\,
	datac => \SW1[7]~input_o\,
	datad => \SW1[6]~input_o\,
	combout => \LED20Driver|Mux5~0_combout\);

-- Location: LCCOMB_X37_Y4_N12
\LED20Driver|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LED20Driver|Mux4~0_combout\ = (\SW1[5]~input_o\ & (\SW1[4]~input_o\ & (!\SW1[7]~input_o\))) # (!\SW1[5]~input_o\ & ((\SW1[6]~input_o\ & ((!\SW1[7]~input_o\))) # (!\SW1[6]~input_o\ & (\SW1[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW1[4]~input_o\,
	datab => \SW1[5]~input_o\,
	datac => \SW1[7]~input_o\,
	datad => \SW1[6]~input_o\,
	combout => \LED20Driver|Mux4~0_combout\);

-- Location: LCCOMB_X37_Y4_N30
\LED20Driver|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LED20Driver|Mux3~0_combout\ = (\SW1[5]~input_o\ & ((\SW1[4]~input_o\ & ((\SW1[6]~input_o\))) # (!\SW1[4]~input_o\ & (\SW1[7]~input_o\ & !\SW1[6]~input_o\)))) # (!\SW1[5]~input_o\ & (!\SW1[7]~input_o\ & (\SW1[4]~input_o\ $ (\SW1[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW1[4]~input_o\,
	datab => \SW1[5]~input_o\,
	datac => \SW1[7]~input_o\,
	datad => \SW1[6]~input_o\,
	combout => \LED20Driver|Mux3~0_combout\);

-- Location: LCCOMB_X37_Y4_N24
\LED20Driver|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LED20Driver|Mux2~0_combout\ = (\SW1[7]~input_o\ & (\SW1[6]~input_o\ & ((\SW1[5]~input_o\) # (!\SW1[4]~input_o\)))) # (!\SW1[7]~input_o\ & (!\SW1[4]~input_o\ & (\SW1[5]~input_o\ & !\SW1[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW1[4]~input_o\,
	datab => \SW1[5]~input_o\,
	datac => \SW1[7]~input_o\,
	datad => \SW1[6]~input_o\,
	combout => \LED20Driver|Mux2~0_combout\);

-- Location: LCCOMB_X37_Y4_N10
\LED20Driver|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LED20Driver|Mux1~0_combout\ = (\SW1[5]~input_o\ & ((\SW1[4]~input_o\ & (\SW1[7]~input_o\)) # (!\SW1[4]~input_o\ & ((\SW1[6]~input_o\))))) # (!\SW1[5]~input_o\ & (\SW1[6]~input_o\ & (\SW1[4]~input_o\ $ (\SW1[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW1[4]~input_o\,
	datab => \SW1[5]~input_o\,
	datac => \SW1[7]~input_o\,
	datad => \SW1[6]~input_o\,
	combout => \LED20Driver|Mux1~0_combout\);

-- Location: LCCOMB_X37_Y4_N28
\LED20Driver|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LED20Driver|Mux0~0_combout\ = (\SW1[5]~input_o\ & (\SW1[4]~input_o\ & (\SW1[7]~input_o\ & !\SW1[6]~input_o\))) # (!\SW1[5]~input_o\ & (\SW1[6]~input_o\ $ (((\SW1[4]~input_o\ & !\SW1[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW1[4]~input_o\,
	datab => \SW1[5]~input_o\,
	datac => \SW1[7]~input_o\,
	datad => \SW1[6]~input_o\,
	combout => \LED20Driver|Mux0~0_combout\);

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


