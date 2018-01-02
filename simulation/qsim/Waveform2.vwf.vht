-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "01/02/2018 16:17:45"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          HexpointThermostat
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY HexpointThermostat_vhd_vec_tst IS
END HexpointThermostat_vhd_vec_tst;
ARCHITECTURE HexpointThermostat_arch OF HexpointThermostat_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Cool : STD_LOGIC;
SIGNAL CS : STD_LOGIC;
SIGNAL Day : STD_LOGIC;
SIGNAL Dec : STD_LOGIC;
SIGNAL Din : STD_LOGIC;
SIGNAL Dout : STD_LOGIC;
SIGNAL externalTemp : STD_LOGIC_VECTOR(12 DOWNTO 0);
SIGNAL fbc0 : STD_LOGIC;
SIGNAL fbc1 : STD_LOGIC;
SIGNAL fbc2 : STD_LOGIC;
SIGNAL fbc3 : STD_LOGIC;
SIGNAL fbc4 : STD_LOGIC;
SIGNAL fbctestclk : STD_LOGIC;
SIGNAL fbctestrestart : STD_LOGIC;
SIGNAL five : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL frac : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL FreezeReg : STD_LOGIC;
SIGNAL Heat : STD_LOGIC;
SIGNAL Hiset : STD_LOGIC;
SIGNAL hiTrueSetDisp : STD_LOGIC;
SIGNAL Inc : STD_LOGIC;
SIGNAL LS : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL Mof32 : STD_LOGIC;
SIGNAL MS : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL Night : STD_LOGIC;
SIGNAL Passive : STD_LOGIC;
SIGNAL RTC : STD_LOGIC;
SIGNAL SCL : STD_LOGIC;
SIGNAL sevsegSign : STD_LOGIC;
COMPONENT HexpointThermostat
	PORT (
	Cool : OUT STD_LOGIC;
	CS : OUT STD_LOGIC;
	Day : IN STD_LOGIC;
	Dec : IN STD_LOGIC;
	Din : OUT STD_LOGIC;
	Dout : IN STD_LOGIC;
	externalTemp : OUT STD_LOGIC_VECTOR(12 DOWNTO 0);
	fbc0 : OUT STD_LOGIC;
	fbc1 : OUT STD_LOGIC;
	fbc2 : OUT STD_LOGIC;
	fbc3 : OUT STD_LOGIC;
	fbc4 : OUT STD_LOGIC;
	fbctestclk : IN STD_LOGIC;
	fbctestrestart : IN STD_LOGIC;
	five : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	frac : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	FreezeReg : OUT STD_LOGIC;
	Heat : OUT STD_LOGIC;
	Hiset : IN STD_LOGIC;
	hiTrueSetDisp : IN STD_LOGIC;
	Inc : IN STD_LOGIC;
	LS : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	Mof32 : OUT STD_LOGIC;
	MS : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	Night : IN STD_LOGIC;
	Passive : IN STD_LOGIC;
	RTC : IN STD_LOGIC;
	SCL : OUT STD_LOGIC;
	sevsegSign : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : HexpointThermostat
	PORT MAP (
-- list connections between master ports and signals
	Cool => Cool,
	CS => CS,
	Day => Day,
	Dec => Dec,
	Din => Din,
	Dout => Dout,
	externalTemp => externalTemp,
	fbc0 => fbc0,
	fbc1 => fbc1,
	fbc2 => fbc2,
	fbc3 => fbc3,
	fbc4 => fbc4,
	fbctestclk => fbctestclk,
	fbctestrestart => fbctestrestart,
	five => five,
	frac => frac,
	FreezeReg => FreezeReg,
	Heat => Heat,
	Hiset => Hiset,
	hiTrueSetDisp => hiTrueSetDisp,
	Inc => Inc,
	LS => LS,
	Mof32 => Mof32,
	MS => MS,
	Night => Night,
	Passive => Passive,
	RTC => RTC,
	SCL => SCL,
	sevsegSign => sevsegSign
	);

-- RTC
t_prcs_RTC: PROCESS
BEGIN
LOOP
	RTC <= '0';
	WAIT FOR 50000 ps;
	RTC <= '1';
	WAIT FOR 50000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_RTC;
END HexpointThermostat_arch;
