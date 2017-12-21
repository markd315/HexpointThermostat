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
-- Generated on "12/21/2017 17:54:38"
                                                             
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
SIGNAL CLK : STD_LOGIC;
SIGNAL controlsActive : STD_LOGIC;
SIGNAL Cool : STD_LOGIC;
SIGNAL CS : STD_LOGIC;
SIGNAL Dec : STD_LOGIC;
SIGNAL Dout : STD_LOGIC;
SIGNAL fbc0 : STD_LOGIC;
SIGNAL fbc1 : STD_LOGIC;
SIGNAL fbc2 : STD_LOGIC;
SIGNAL fbc3 : STD_LOGIC;
SIGNAL fbc4 : STD_LOGIC;
SIGNAL fbctestclk : STD_LOGIC;
SIGNAL fbctestrestart : STD_LOGIC;
SIGNAL Heat : STD_LOGIC;
SIGNAL hiTrueSetDisp : STD_LOGIC;
SIGNAL Inc : STD_LOGIC;
SIGNAL Initialize : STD_LOGIC;
SIGNAL NightNOTday : STD_LOGIC;
SIGNAL NightNOTday18 : STD_LOGIC;
SIGNAL passiveNOTactive : STD_LOGIC;
SIGNAL passiveNOTactive19 : STD_LOGIC;
SIGNAL SCL : STD_LOGIC;
COMPONENT HexpointThermostat
	PORT (
	CLK : IN STD_LOGIC;
	controlsActive : IN STD_LOGIC;
	Cool : OUT STD_LOGIC;
	CS : OUT STD_LOGIC;
	Dec : IN STD_LOGIC;
	Dout : IN STD_LOGIC;
	fbc0 : OUT STD_LOGIC;
	fbc1 : OUT STD_LOGIC;
	fbc2 : OUT STD_LOGIC;
	fbc3 : OUT STD_LOGIC;
	fbc4 : OUT STD_LOGIC;
	fbctestclk : IN STD_LOGIC;
	fbctestrestart : IN STD_LOGIC;
	Heat : OUT STD_LOGIC;
	hiTrueSetDisp : IN STD_LOGIC;
	Inc : IN STD_LOGIC;
	Initialize : IN STD_LOGIC;
	NightNOTday : IN STD_LOGIC;
	NightNOTday18 : IN STD_LOGIC;
	passiveNOTactive : IN STD_LOGIC;
	passiveNOTactive19 : IN STD_LOGIC;
	SCL : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : HexpointThermostat
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	controlsActive => controlsActive,
	Cool => Cool,
	CS => CS,
	Dec => Dec,
	Dout => Dout,
	fbc0 => fbc0,
	fbc1 => fbc1,
	fbc2 => fbc2,
	fbc3 => fbc3,
	fbc4 => fbc4,
	fbctestclk => fbctestclk,
	fbctestrestart => fbctestrestart,
	Heat => Heat,
	hiTrueSetDisp => hiTrueSetDisp,
	Inc => Inc,
	Initialize => Initialize,
	NightNOTday => NightNOTday,
	NightNOTday18 => NightNOTday18,
	passiveNOTactive => passiveNOTactive,
	passiveNOTactive19 => passiveNOTactive19,
	SCL => SCL
	);

-- fbctestclk
t_prcs_fbctestclk: PROCESS
BEGIN
LOOP
	fbctestclk <= '0';
	WAIT FOR 5000 ps;
	fbctestclk <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_fbctestclk;

-- fbctestrestart
t_prcs_fbctestrestart: PROCESS
BEGIN
	fbctestrestart <= '0';
WAIT;
END PROCESS t_prcs_fbctestrestart;
END HexpointThermostat_arch;
