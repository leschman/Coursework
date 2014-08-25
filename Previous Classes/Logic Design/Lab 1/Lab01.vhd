------------------------------------------------------------------------------------------------------------
-- File name   : Lab01.vhd
--
-- Project     : EELE367 - Logic Design
--               DE0-Nano IO Breakout Test
--
-- Description : 	Passes the DIP switch input to the seven-Segment LEDs.  
--					Runs a counter on the LEDs.
--					
--               
--
-- Author(s)   : 	Samuel Harkness
--               	Montana State University
--					samuel.harkness@gmail.com
--
-- Note(s)     : This file contains the Entity and Architecture
--               
--
------------------------------------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity Lab01 is
	Port
	( 
		CLK 		: in 	STD_LOGIC;	-- clock
		RST 		: in 	STD_LOGIC;	-- reset
		SW1		: in	STD_LOGIC_VECTOR(7 downto 0);	--DIP Switch 1 input
		SW2		: in	STD_LOGIC_VECTOR(7 downto 0);	--DIP Switch 2 input
		LED_Red	: out	STD_LOGIC_VECTOR(7 downto 0);	--Red LEDs
		LED_Blue	: out	STD_LOGIC_VECTOR(7 downto 0);	--Blue LEDs
		LED17		: out	STD_LOGIC_VECTOR(7 downto 0);	--Seven Segment LEDs + Decimal
		LED18		: out	STD_LOGIC_VECTOR(7 downto 0);	--Seven Segment LEDs + Decimal
		LED19		: out	STD_LOGIC_VECTOR(7 downto 0);	--Seven Segment LEDs + Decimal
		LED20		: out	STD_LOGIC_VECTOR(7 downto 0)	--Seven Segment LEDs + Decimal
	);	
end Lab01;



architecture Behavioral of Lab01 is
--
------------------------------------------------------------------------------------
--Component Declaration

	component clock_div is
		Port
		(
			Clock_In     : in   STD_LOGIC;
			Reset        : in   STD_LOGIC;
			Clock_Out    : out  STD_LOGIC
		);
	end component;

	component counter is
		Port 
		( 
			Clock     : in  STD_LOGIC;
			Reset     : in  STD_LOGIC;
			Direction : in  STD_LOGIC;
			Count_Out : out STD_LOGIC_VECTOR(3 downto 0)
		);
	end component;

--Component Declaration
------------------------------------------------------------------------------------
--Signal Declaration

	signal Clock_Slow	: STD_LOGIC;					--Output from the Clock Divider, Input to the Counter
	signal Count		: STD_LOGIC_VECTOR(3 downto 0);	--Output from the Counter
	
--Signal Declaration
------------------------------------------------------------------------------------
--
begin
--
------------------------------------------------------------------------------------
--Component Instantiation

	CLK_DIV1	: clock_div
	port map
	(
		Clock_In	=> CLK,
		Reset		=> RST,
		Clock_Out	=> Clock_Slow
	);
	
	COUNT1		: counter
	port map
	(
		Clock		=> Clock_Slow,
		Reset		=> RST,
		Direction	=> '0',	--Always count up
		Count_Out	=> Count
	);

--Component Instantiation
------------------------------------------------------------------------------------
--

--
------------------------------------------------------------------------------------
--Processes

--Processes
------------------------------------------------------------------------------------
--

--
------------------------------------------------------------------------------------
--Signal Assignments

	LED17	<= SW1;
	LED18	<= SW1;
	LED19	<= SW2;
	LED20	<= SW2;
	
	LED_Red(7 downto 4)		<= Count;
	LED_Red(3 downto 0)		<= Count;	
	LED_Blue(7 downto 4)	<= Count;
	LED_Blue(3 downto 0)	<= Count;

--Signal Assignments
------------------------------------------------------------------------------------
--
	
end Behavioral;