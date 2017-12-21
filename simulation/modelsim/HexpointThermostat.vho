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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "12/21/2017 18:04:18"

-- 
-- Device: Altera 5M570ZT100C5 Package TQFP100
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	HexpointThermostat IS
    PORT (
	Heat : OUT std_logic;
	passiveNOTactive19 : IN std_logic;
	NightNOTday18 : IN std_logic;
	CLK : IN std_logic;
	Inc : IN std_logic;
	Dec : IN std_logic;
	Initialize : IN std_logic;
	Cool : OUT std_logic;
	passiveNOTactive : IN std_logic;
	NightNOTday : IN std_logic;
	SCL : OUT std_logic;
	CS : OUT std_logic;
	fbc0 : OUT std_logic;
	fbctestclk : IN std_logic;
	fbctestrestart : IN std_logic;
	fbc1 : OUT std_logic;
	fbc3 : OUT std_logic;
	fbc4 : OUT std_logic;
	fbc2 : OUT std_logic;
	Mof32 : OUT std_logic;
	hiTrueSetDisp : IN std_logic;
	controlsActive : IN std_logic;
	Dout : IN std_logic
	);
END HexpointThermostat;

-- Design Ports Information


ARCHITECTURE structure OF HexpointThermostat IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Heat : std_logic;
SIGNAL ww_passiveNOTactive19 : std_logic;
SIGNAL ww_NightNOTday18 : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_Inc : std_logic;
SIGNAL ww_Dec : std_logic;
SIGNAL ww_Initialize : std_logic;
SIGNAL ww_Cool : std_logic;
SIGNAL ww_passiveNOTactive : std_logic;
SIGNAL ww_NightNOTday : std_logic;
SIGNAL ww_SCL : std_logic;
SIGNAL ww_CS : std_logic;
SIGNAL ww_fbc0 : std_logic;
SIGNAL ww_fbctestclk : std_logic;
SIGNAL ww_fbctestrestart : std_logic;
SIGNAL ww_fbc1 : std_logic;
SIGNAL ww_fbc3 : std_logic;
SIGNAL ww_fbc4 : std_logic;
SIGNAL ww_fbc2 : std_logic;
SIGNAL ww_Mof32 : std_logic;
SIGNAL ww_hiTrueSetDisp : std_logic;
SIGNAL ww_controlsActive : std_logic;
SIGNAL ww_Dout : std_logic;
SIGNAL \CLK~combout\ : std_logic;
SIGNAL \Inc~combout\ : std_logic;
SIGNAL \Dec~combout\ : std_logic;
SIGNAL \inst9|inst16~combout\ : std_logic;
SIGNAL \Initialize~combout\ : std_logic;
SIGNAL \inst9|inst13~regout\ : std_logic;
SIGNAL \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUT\ : std_logic;
SIGNAL \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUTCOUT1_1\ : std_logic;
SIGNAL \inst9|inst12~regout\ : std_logic;
SIGNAL \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUT\ : std_logic;
SIGNAL \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUTCOUT1_2\ : std_logic;
SIGNAL \inst9|inst11~regout\ : std_logic;
SIGNAL \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUT\ : std_logic;
SIGNAL \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUTCOUT1_3\ : std_logic;
SIGNAL \inst9|inst10~regout\ : std_logic;
SIGNAL \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUT\ : std_logic;
SIGNAL \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUTCOUT1_4\ : std_logic;
SIGNAL \inst9|inst9~regout\ : std_logic;
SIGNAL \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ : std_logic;
SIGNAL \inst9|inst8~regout\ : std_logic;
SIGNAL \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUT\ : std_logic;
SIGNAL \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUTCOUT1_5\ : std_logic;
SIGNAL \inst9|inst7~regout\ : std_logic;
SIGNAL \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUT\ : std_logic;
SIGNAL \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUTCOUT1_6\ : std_logic;
SIGNAL \inst9|inst6~regout\ : std_logic;
SIGNAL \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUT\ : std_logic;
SIGNAL \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUTCOUT1_7\ : std_logic;
SIGNAL \inst9|inst5~regout\ : std_logic;
SIGNAL \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUT\ : std_logic;
SIGNAL \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUTCOUT1_8\ : std_logic;
SIGNAL \inst9|inst4~regout\ : std_logic;
SIGNAL \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\ : std_logic;
SIGNAL \inst9|inst3~regout\ : std_logic;
SIGNAL \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUT\ : std_logic;
SIGNAL \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUTCOUT1_9\ : std_logic;
SIGNAL \inst9|inst2~regout\ : std_logic;
SIGNAL \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUT\ : std_logic;
SIGNAL \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUTCOUT1_10\ : std_logic;
SIGNAL \inst9|inst1~regout\ : std_logic;
SIGNAL \inst24|LPM_COMPARE_component|auto_generated|agb~11_combout\ : std_logic;
SIGNAL \inst24|LPM_COMPARE_component|auto_generated|agb~10_combout\ : std_logic;
SIGNAL \inst24|LPM_COMPARE_component|auto_generated|agb~9_combout\ : std_logic;
SIGNAL \inst24|LPM_COMPARE_component|auto_generated|agb~12_combout\ : std_logic;
SIGNAL \passiveNOTactive19~combout\ : std_logic;
SIGNAL \NightNOTday18~combout\ : std_logic;
SIGNAL \inst10|inst13~regout\ : std_logic;
SIGNAL \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUT\ : std_logic;
SIGNAL \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUTCOUT1_1\ : std_logic;
SIGNAL \inst10|inst12~regout\ : std_logic;
SIGNAL \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUT\ : std_logic;
SIGNAL \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUTCOUT1_2\ : std_logic;
SIGNAL \inst10|inst11~regout\ : std_logic;
SIGNAL \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUT\ : std_logic;
SIGNAL \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUTCOUT1_3\ : std_logic;
SIGNAL \inst10|inst10~regout\ : std_logic;
SIGNAL \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUT\ : std_logic;
SIGNAL \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUTCOUT1_4\ : std_logic;
SIGNAL \inst10|inst9~regout\ : std_logic;
SIGNAL \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ : std_logic;
SIGNAL \inst10|inst8~regout\ : std_logic;
SIGNAL \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUT\ : std_logic;
SIGNAL \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUTCOUT1_5\ : std_logic;
SIGNAL \inst10|inst7~regout\ : std_logic;
SIGNAL \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUT\ : std_logic;
SIGNAL \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUTCOUT1_6\ : std_logic;
SIGNAL \inst10|inst6~regout\ : std_logic;
SIGNAL \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUT\ : std_logic;
SIGNAL \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUTCOUT1_7\ : std_logic;
SIGNAL \inst10|inst5~regout\ : std_logic;
SIGNAL \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUT\ : std_logic;
SIGNAL \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUTCOUT1_8\ : std_logic;
SIGNAL \inst10|inst4~regout\ : std_logic;
SIGNAL \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\ : std_logic;
SIGNAL \inst10|inst3~regout\ : std_logic;
SIGNAL \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUT\ : std_logic;
SIGNAL \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUTCOUT1_9\ : std_logic;
SIGNAL \inst10|inst2~regout\ : std_logic;
SIGNAL \inst24|LPM_COMPARE_component|auto_generated|agb~4_combout\ : std_logic;
SIGNAL \inst24|LPM_COMPARE_component|auto_generated|agb~5_combout\ : std_logic;
SIGNAL \inst24|LPM_COMPARE_component|auto_generated|agb~6_combout\ : std_logic;
SIGNAL \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUT\ : std_logic;
SIGNAL \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUTCOUT1_10\ : std_logic;
SIGNAL \inst10|inst1~regout\ : std_logic;
SIGNAL \inst24|LPM_COMPARE_component|auto_generated|agb~7_combout\ : std_logic;
SIGNAL \inst11|inst13~regout\ : std_logic;
SIGNAL \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUT\ : std_logic;
SIGNAL \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUTCOUT1_1\ : std_logic;
SIGNAL \inst11|inst12~regout\ : std_logic;
SIGNAL \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUT\ : std_logic;
SIGNAL \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUTCOUT1_2\ : std_logic;
SIGNAL \inst11|inst11~regout\ : std_logic;
SIGNAL \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUT\ : std_logic;
SIGNAL \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUTCOUT1_3\ : std_logic;
SIGNAL \inst11|inst10~regout\ : std_logic;
SIGNAL \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUT\ : std_logic;
SIGNAL \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUTCOUT1_4\ : std_logic;
SIGNAL \inst11|inst9~regout\ : std_logic;
SIGNAL \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ : std_logic;
SIGNAL \inst11|inst8~regout\ : std_logic;
SIGNAL \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUT\ : std_logic;
SIGNAL \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUTCOUT1_5\ : std_logic;
SIGNAL \inst11|inst7~regout\ : std_logic;
SIGNAL \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUT\ : std_logic;
SIGNAL \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUTCOUT1_6\ : std_logic;
SIGNAL \inst11|inst6~regout\ : std_logic;
SIGNAL \inst24|LPM_COMPARE_component|auto_generated|agb~1_combout\ : std_logic;
SIGNAL \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUT\ : std_logic;
SIGNAL \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUTCOUT1_7\ : std_logic;
SIGNAL \inst11|inst5~regout\ : std_logic;
SIGNAL \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUT\ : std_logic;
SIGNAL \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUTCOUT1_8\ : std_logic;
SIGNAL \inst11|inst4~regout\ : std_logic;
SIGNAL \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\ : std_logic;
SIGNAL \inst11|inst3~regout\ : std_logic;
SIGNAL \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUT\ : std_logic;
SIGNAL \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUTCOUT1_9\ : std_logic;
SIGNAL \inst11|inst2~regout\ : std_logic;
SIGNAL \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUT\ : std_logic;
SIGNAL \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUTCOUT1_10\ : std_logic;
SIGNAL \inst11|inst1~regout\ : std_logic;
SIGNAL \inst24|LPM_COMPARE_component|auto_generated|agb~2_combout\ : std_logic;
SIGNAL \inst24|LPM_COMPARE_component|auto_generated|agb~0_combout\ : std_logic;
SIGNAL \inst24|LPM_COMPARE_component|auto_generated|agb~3_combout\ : std_logic;
SIGNAL \inst24|LPM_COMPARE_component|auto_generated|agb~8_combout\ : std_logic;
SIGNAL \inst24|LPM_COMPARE_component|auto_generated|agb~13_combout\ : std_logic;
SIGNAL \passiveNOTactive~combout\ : std_logic;
SIGNAL \inst14|inst13~regout\ : std_logic;
SIGNAL \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUT\ : std_logic;
SIGNAL \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUTCOUT1_1\ : std_logic;
SIGNAL \inst14|inst12~regout\ : std_logic;
SIGNAL \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUT\ : std_logic;
SIGNAL \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUTCOUT1_2\ : std_logic;
SIGNAL \inst14|inst11~regout\ : std_logic;
SIGNAL \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUT\ : std_logic;
SIGNAL \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUTCOUT1_3\ : std_logic;
SIGNAL \inst14|inst10~regout\ : std_logic;
SIGNAL \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUT\ : std_logic;
SIGNAL \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUTCOUT1_4\ : std_logic;
SIGNAL \inst14|inst9~regout\ : std_logic;
SIGNAL \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ : std_logic;
SIGNAL \inst14|inst8~regout\ : std_logic;
SIGNAL \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUT\ : std_logic;
SIGNAL \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUTCOUT1_5\ : std_logic;
SIGNAL \inst14|inst7~regout\ : std_logic;
SIGNAL \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUT\ : std_logic;
SIGNAL \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUTCOUT1_6\ : std_logic;
SIGNAL \inst14|inst6~regout\ : std_logic;
SIGNAL \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUT\ : std_logic;
SIGNAL \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUTCOUT1_7\ : std_logic;
SIGNAL \inst14|inst5~regout\ : std_logic;
SIGNAL \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUT\ : std_logic;
SIGNAL \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUTCOUT1_8\ : std_logic;
SIGNAL \inst14|inst4~regout\ : std_logic;
SIGNAL \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\ : std_logic;
SIGNAL \inst14|inst3~regout\ : std_logic;
SIGNAL \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUT\ : std_logic;
SIGNAL \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUTCOUT1_9\ : std_logic;
SIGNAL \inst14|inst2~regout\ : std_logic;
SIGNAL \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUT\ : std_logic;
SIGNAL \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUTCOUT1_10\ : std_logic;
SIGNAL \inst14|inst1~regout\ : std_logic;
SIGNAL \inst13|inst13~regout\ : std_logic;
SIGNAL \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUT\ : std_logic;
SIGNAL \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUTCOUT1_1\ : std_logic;
SIGNAL \inst13|inst12~regout\ : std_logic;
SIGNAL \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUT\ : std_logic;
SIGNAL \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUTCOUT1_2\ : std_logic;
SIGNAL \inst13|inst11~regout\ : std_logic;
SIGNAL \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUT\ : std_logic;
SIGNAL \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUTCOUT1_3\ : std_logic;
SIGNAL \inst13|inst10~regout\ : std_logic;
SIGNAL \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUT\ : std_logic;
SIGNAL \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUTCOUT1_4\ : std_logic;
SIGNAL \inst13|inst9~regout\ : std_logic;
SIGNAL \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ : std_logic;
SIGNAL \inst13|inst8~regout\ : std_logic;
SIGNAL \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUT\ : std_logic;
SIGNAL \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUTCOUT1_5\ : std_logic;
SIGNAL \inst13|inst7~regout\ : std_logic;
SIGNAL \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUT\ : std_logic;
SIGNAL \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUTCOUT1_6\ : std_logic;
SIGNAL \inst13|inst6~regout\ : std_logic;
SIGNAL \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUT\ : std_logic;
SIGNAL \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUTCOUT1_7\ : std_logic;
SIGNAL \inst13|inst5~regout\ : std_logic;
SIGNAL \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUT\ : std_logic;
SIGNAL \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUTCOUT1_8\ : std_logic;
SIGNAL \inst13|inst4~regout\ : std_logic;
SIGNAL \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\ : std_logic;
SIGNAL \inst13|inst3~regout\ : std_logic;
SIGNAL \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUT\ : std_logic;
SIGNAL \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUTCOUT1_9\ : std_logic;
SIGNAL \inst13|inst2~regout\ : std_logic;
SIGNAL \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUT\ : std_logic;
SIGNAL \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUTCOUT1_10\ : std_logic;
SIGNAL \inst13|inst1~regout\ : std_logic;
SIGNAL \NightNOTday~combout\ : std_logic;
SIGNAL \inst12|inst13~regout\ : std_logic;
SIGNAL \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUT\ : std_logic;
SIGNAL \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUTCOUT1_1\ : std_logic;
SIGNAL \inst12|inst12~regout\ : std_logic;
SIGNAL \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUT\ : std_logic;
SIGNAL \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUTCOUT1_2\ : std_logic;
SIGNAL \inst12|inst11~regout\ : std_logic;
SIGNAL \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUT\ : std_logic;
SIGNAL \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUTCOUT1_3\ : std_logic;
SIGNAL \inst12|inst10~regout\ : std_logic;
SIGNAL \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUT\ : std_logic;
SIGNAL \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUTCOUT1_4\ : std_logic;
SIGNAL \inst12|inst9~regout\ : std_logic;
SIGNAL \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ : std_logic;
SIGNAL \inst12|inst8~regout\ : std_logic;
SIGNAL \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUT\ : std_logic;
SIGNAL \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUTCOUT1_5\ : std_logic;
SIGNAL \inst12|inst7~regout\ : std_logic;
SIGNAL \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUT\ : std_logic;
SIGNAL \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUTCOUT1_6\ : std_logic;
SIGNAL \inst12|inst6~regout\ : std_logic;
SIGNAL \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUT\ : std_logic;
SIGNAL \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUTCOUT1_7\ : std_logic;
SIGNAL \inst12|inst5~regout\ : std_logic;
SIGNAL \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUT\ : std_logic;
SIGNAL \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUTCOUT1_8\ : std_logic;
SIGNAL \inst12|inst4~regout\ : std_logic;
SIGNAL \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\ : std_logic;
SIGNAL \inst12|inst3~regout\ : std_logic;
SIGNAL \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUT\ : std_logic;
SIGNAL \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUTCOUT1_9\ : std_logic;
SIGNAL \inst12|inst2~regout\ : std_logic;
SIGNAL \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUT\ : std_logic;
SIGNAL \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUTCOUT1_10\ : std_logic;
SIGNAL \inst12|inst1~regout\ : std_logic;
SIGNAL \inst2|$00000|auto_generated|result_node[12]~0_combout\ : std_logic;
SIGNAL \inst2|$00000|auto_generated|result_node[12]~1_combout\ : std_logic;
SIGNAL \fbctestclk~combout\ : std_logic;
SIGNAL \fbctestrestart~combout\ : std_logic;
SIGNAL \inst1|inst~regout\ : std_logic;
SIGNAL \inst1|inst1~regout\ : std_logic;
SIGNAL \inst1|inst2~regout\ : std_logic;
SIGNAL \inst1|inst3~regout\ : std_logic;
SIGNAL \inst1|inst4~regout\ : std_logic;
SIGNAL \inst15|inst~regout\ : std_logic;
SIGNAL \inst15|inst1~regout\ : std_logic;
SIGNAL \inst15|inst2~regout\ : std_logic;
SIGNAL \inst15|inst3~regout\ : std_logic;
SIGNAL \inst15|inst4~regout\ : std_logic;
SIGNAL \inst17~0_combout\ : std_logic;
SIGNAL \inst17~combout\ : std_logic;
SIGNAL \inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ALT_INV_inst17~combout\ : std_logic;
SIGNAL \inst24|LPM_COMPARE_component|auto_generated|ALT_INV_agb~13_combout\ : std_logic;

BEGIN

Heat <= ww_Heat;
ww_passiveNOTactive19 <= passiveNOTactive19;
ww_NightNOTday18 <= NightNOTday18;
ww_CLK <= CLK;
ww_Inc <= Inc;
ww_Dec <= Dec;
ww_Initialize <= Initialize;
Cool <= ww_Cool;
ww_passiveNOTactive <= passiveNOTactive;
ww_NightNOTday <= NightNOTday;
SCL <= ww_SCL;
CS <= ww_CS;
fbc0 <= ww_fbc0;
ww_fbctestclk <= fbctestclk;
ww_fbctestrestart <= fbctestrestart;
fbc1 <= ww_fbc1;
fbc3 <= ww_fbc3;
fbc4 <= ww_fbc4;
fbc2 <= ww_fbc2;
Mof32 <= ww_Mof32;
ww_hiTrueSetDisp <= hiTrueSetDisp;
ww_controlsActive <= controlsActive;
ww_Dout <= Dout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_inst17~combout\ <= NOT \inst17~combout\;
\inst24|LPM_COMPARE_component|auto_generated|ALT_INV_agb~13_combout\ <= NOT \inst24|LPM_COMPARE_component|auto_generated|agb~13_combout\;

-- Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLK~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_CLK,
	combout => \CLK~combout\);

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Inc~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Inc,
	combout => \Inc~combout\);

-- Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Dec~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Dec,
	combout => \Dec~combout\);

-- Location: LC_X12_Y4_N4
\inst9|inst16\ : maxv_lcell
-- Equation(s):
-- \inst9|inst16~combout\ = ((\Inc~combout\) # ((\Dec~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Inc~combout\,
	datad => \Dec~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst9|inst16~combout\);

-- Location: PIN_64,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Initialize~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Initialize,
	combout => \Initialize~combout\);

-- Location: LC_X8_Y5_N0
\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]\ : maxv_lcell
-- Equation(s):
-- \inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(0) = VCC $ \Inc~combout\ $ (\inst9|inst13~regout\ $ ((\Inc~combout\)))
-- \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUT\ = CARRY((VCC $ \Inc~combout\ & (\inst9|inst13~regout\ & !\Inc~combout\)) # (!VCC $ \Inc~combout\ & ((\inst9|inst13~regout\) # (!\Inc~combout\))))
-- \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUTCOUT1_1\ = CARRY((VCC $ \Inc~combout\ & (\inst9|inst13~regout\ & !\Inc~combout\)) # (!VCC $ \Inc~combout\ & ((\inst9|inst13~regout\) # (!\Inc~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "964d",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => VCC,
	datab => \inst9|inst13~regout\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(0),
	cout0 => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUT\,
	cout1 => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUTCOUT1_1\);

-- Location: LC_X7_Y5_N2
\inst9|inst13\ : maxv_lcell
-- Equation(s):
-- \inst9|inst13~regout\ = DFFEAS((\Initialize~combout\) # ((\inst9|inst16~combout\ & (\inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(0))) # (!\inst9|inst16~combout\ & ((\inst9|inst13~regout\)))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fbea",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Initialize~combout\,
	datab => \inst9|inst16~combout\,
	datac => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(0),
	datad => \inst9|inst13~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst13~regout\);

-- Location: LC_X8_Y5_N1
\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]\ : maxv_lcell
-- Equation(s):
-- \inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(1) = VCC $ \Inc~combout\ $ (\inst9|inst12~regout\ $ (((!\Inc~combout\ & \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUT\) # (\Inc~combout\ & 
-- \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUTCOUT1_1\))))
-- \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUT\ = CARRY((VCC $ \Inc~combout\ & (!\inst9|inst12~regout\ & !\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUT\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUT\) # (!\inst9|inst12~regout\))))
-- \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUTCOUT1_2\ = CARRY((VCC $ \Inc~combout\ & (!\inst9|inst12~regout\ & !\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUTCOUT1_1\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUTCOUT1_1\) # (!\inst9|inst12~regout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => VCC,
	datab => \inst9|inst12~regout\,
	cin0 => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUT\,
	cin1 => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUTCOUT1_1\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(1),
	cout0 => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUT\,
	cout1 => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUTCOUT1_2\);

-- Location: LC_X7_Y5_N3
\inst9|inst12\ : maxv_lcell
-- Equation(s):
-- \inst9|inst12~regout\ = DFFEAS((\Initialize~combout\) # ((\inst9|inst16~combout\ & ((\inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(1)))) # (!\inst9|inst16~combout\ & (\inst9|inst12~regout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "feba",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Initialize~combout\,
	datab => \inst9|inst16~combout\,
	datac => \inst9|inst12~regout\,
	datad => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst12~regout\);

-- Location: LC_X8_Y5_N2
\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]\ : maxv_lcell
-- Equation(s):
-- \inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(2) = VCC $ \Inc~combout\ $ (\inst9|inst11~regout\ $ ((!(!\Inc~combout\ & \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUT\) # (\Inc~combout\ & 
-- \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUTCOUT1_2\))))
-- \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUT\ = CARRY((VCC $ \Inc~combout\ & ((\inst9|inst11~regout\) # (!\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUT\))) # (!VCC $ \Inc~combout\ & (\inst9|inst11~regout\ & 
-- !\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUT\)))
-- \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUTCOUT1_3\ = CARRY((VCC $ \Inc~combout\ & ((\inst9|inst11~regout\) # (!\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUTCOUT1_2\))) # (!VCC $ \Inc~combout\ & 
-- (\inst9|inst11~regout\ & !\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUTCOUT1_2\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => VCC,
	datab => \inst9|inst11~regout\,
	cin0 => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUT\,
	cin1 => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUTCOUT1_2\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(2),
	cout0 => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUT\,
	cout1 => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUTCOUT1_3\);

-- Location: LC_X7_Y5_N1
\inst9|inst11\ : maxv_lcell
-- Equation(s):
-- \inst9|inst11~regout\ = DFFEAS((\Initialize~combout\) # ((\inst9|inst16~combout\ & ((\inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(2)))) # (!\inst9|inst16~combout\ & (\inst9|inst11~regout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "feba",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Initialize~combout\,
	datab => \inst9|inst16~combout\,
	datac => \inst9|inst11~regout\,
	datad => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(2),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst11~regout\);

-- Location: LC_X8_Y5_N3
\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]\ : maxv_lcell
-- Equation(s):
-- \inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(3) = VCC $ \Inc~combout\ $ (\inst9|inst10~regout\ $ (((!\Inc~combout\ & \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUT\) # (\Inc~combout\ & 
-- \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUTCOUT1_3\))))
-- \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUT\ = CARRY((VCC $ \Inc~combout\ & (!\inst9|inst10~regout\ & !\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUT\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUT\) # (!\inst9|inst10~regout\))))
-- \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUTCOUT1_4\ = CARRY((VCC $ \Inc~combout\ & (!\inst9|inst10~regout\ & !\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUTCOUT1_3\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUTCOUT1_3\) # (!\inst9|inst10~regout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => VCC,
	datab => \inst9|inst10~regout\,
	cin0 => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUT\,
	cin1 => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUTCOUT1_3\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(3),
	cout0 => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUT\,
	cout1 => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUTCOUT1_4\);

-- Location: LC_X7_Y5_N7
\inst9|inst10\ : maxv_lcell
-- Equation(s):
-- \inst9|inst10~regout\ = DFFEAS((\Initialize~combout\) # ((\inst9|inst16~combout\ & (\inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(3))) # (!\inst9|inst16~combout\ & ((\inst9|inst10~regout\)))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fbea",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Initialize~combout\,
	datab => \inst9|inst16~combout\,
	datac => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(3),
	datad => \inst9|inst10~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst10~regout\);

-- Location: LC_X8_Y5_N4
\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]\ : maxv_lcell
-- Equation(s):
-- \inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(4) = VCC $ \Inc~combout\ $ (\inst9|inst9~regout\ $ ((!(!\Inc~combout\ & \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUT\) # (\Inc~combout\ & 
-- \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUTCOUT1_4\))))
-- \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ = CARRY((VCC $ \Inc~combout\ & ((\inst9|inst9~regout\) # (!\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUTCOUT1_4\))) # (!VCC $ \Inc~combout\ & 
-- (\inst9|inst9~regout\ & !\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUTCOUT1_4\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => VCC,
	datab => \inst9|inst9~regout\,
	cin0 => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUT\,
	cin1 => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUTCOUT1_4\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(4),
	cout => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\);

-- Location: LC_X7_Y5_N6
\inst9|inst9\ : maxv_lcell
-- Equation(s):
-- \inst9|inst9~regout\ = DFFEAS((\Initialize~combout\) # ((\inst9|inst16~combout\ & ((\inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(4)))) # (!\inst9|inst16~combout\ & (\inst9|inst9~regout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "feba",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Initialize~combout\,
	datab => \inst9|inst16~combout\,
	datac => \inst9|inst9~regout\,
	datad => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(4),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst9~regout\);

-- Location: LC_X8_Y5_N5
\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]\ : maxv_lcell
-- Equation(s):
-- \inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(5) = VCC $ \Inc~combout\ $ (\inst9|inst8~regout\ $ ((\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\)))
-- \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUT\ = CARRY((VCC $ \Inc~combout\ & (!\inst9|inst8~regout\ & !\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\) # (!\inst9|inst8~regout\))))
-- \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUTCOUT1_5\ = CARRY((VCC $ \Inc~combout\ & (!\inst9|inst8~regout\ & !\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\) # (!\inst9|inst8~regout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => VCC,
	datab => \inst9|inst8~regout\,
	cin => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(5),
	cout0 => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUT\,
	cout1 => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUTCOUT1_5\);

-- Location: LC_X7_Y5_N4
\inst9|inst8\ : maxv_lcell
-- Equation(s):
-- \inst9|inst8~regout\ = DFFEAS((\Initialize~combout\) # ((\inst9|inst16~combout\ & ((\inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(5)))) # (!\inst9|inst16~combout\ & (\inst9|inst8~regout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "feba",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Initialize~combout\,
	datab => \inst9|inst16~combout\,
	datac => \inst9|inst8~regout\,
	datad => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(5),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst8~regout\);

-- Location: LC_X8_Y5_N6
\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]\ : maxv_lcell
-- Equation(s):
-- \inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(6) = VCC $ \Inc~combout\ $ (\inst9|inst7~regout\ $ ((!(!\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ & \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUT\) 
-- # (\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ & \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUTCOUT1_5\))))
-- \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUT\ = CARRY((VCC $ \Inc~combout\ & ((\inst9|inst7~regout\) # (!\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUT\))) # (!VCC $ \Inc~combout\ & (\inst9|inst7~regout\ & 
-- !\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUT\)))
-- \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUTCOUT1_6\ = CARRY((VCC $ \Inc~combout\ & ((\inst9|inst7~regout\) # (!\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUTCOUT1_5\))) # (!VCC $ \Inc~combout\ & 
-- (\inst9|inst7~regout\ & !\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUTCOUT1_5\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => VCC,
	datab => \inst9|inst7~regout\,
	cin => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\,
	cin0 => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUT\,
	cin1 => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUTCOUT1_5\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(6),
	cout0 => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUT\,
	cout1 => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUTCOUT1_6\);

-- Location: LC_X7_Y5_N0
\inst9|inst7\ : maxv_lcell
-- Equation(s):
-- \inst9|inst7~regout\ = DFFEAS((\Initialize~combout\) # ((\inst9|inst16~combout\ & (\inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(6))) # (!\inst9|inst16~combout\ & ((\inst9|inst7~regout\)))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fbea",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Initialize~combout\,
	datab => \inst9|inst16~combout\,
	datac => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(6),
	datad => \inst9|inst7~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst7~regout\);

-- Location: LC_X8_Y5_N7
\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]\ : maxv_lcell
-- Equation(s):
-- \inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(7) = VCC $ \Inc~combout\ $ (\inst9|inst6~regout\ $ (((!\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ & \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUT\) # 
-- (\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ & \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUTCOUT1_6\))))
-- \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUT\ = CARRY((VCC $ \Inc~combout\ & (!\inst9|inst6~regout\ & !\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUT\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUT\) # (!\inst9|inst6~regout\))))
-- \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUTCOUT1_7\ = CARRY((VCC $ \Inc~combout\ & (!\inst9|inst6~regout\ & !\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUTCOUT1_6\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUTCOUT1_6\) # (!\inst9|inst6~regout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => VCC,
	datab => \inst9|inst6~regout\,
	cin => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\,
	cin0 => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUT\,
	cin1 => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUTCOUT1_6\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(7),
	cout0 => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUT\,
	cout1 => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUTCOUT1_7\);

-- Location: LC_X7_Y5_N9
\inst9|inst6\ : maxv_lcell
-- Equation(s):
-- \inst9|inst6~regout\ = DFFEAS((\Initialize~combout\) # ((\inst9|inst16~combout\ & ((\inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(7)))) # (!\inst9|inst16~combout\ & (\inst9|inst6~regout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "feae",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Initialize~combout\,
	datab => \inst9|inst6~regout\,
	datac => \inst9|inst16~combout\,
	datad => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(7),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst6~regout\);

-- Location: LC_X8_Y5_N8
\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]\ : maxv_lcell
-- Equation(s):
-- \inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(8) = VCC $ \Inc~combout\ $ (\inst9|inst5~regout\ $ ((!(!\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ & \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUT\) 
-- # (\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ & \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUTCOUT1_7\))))
-- \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUT\ = CARRY((VCC $ \Inc~combout\ & ((\inst9|inst5~regout\) # (!\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUT\))) # (!VCC $ \Inc~combout\ & (\inst9|inst5~regout\ & 
-- !\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUT\)))
-- \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUTCOUT1_8\ = CARRY((VCC $ \Inc~combout\ & ((\inst9|inst5~regout\) # (!\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUTCOUT1_7\))) # (!VCC $ \Inc~combout\ & 
-- (\inst9|inst5~regout\ & !\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUTCOUT1_7\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => VCC,
	datab => \inst9|inst5~regout\,
	cin => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\,
	cin0 => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUT\,
	cin1 => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUTCOUT1_7\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(8),
	cout0 => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUT\,
	cout1 => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUTCOUT1_8\);

-- Location: LC_X7_Y5_N5
\inst9|inst5\ : maxv_lcell
-- Equation(s):
-- \inst9|inst5~regout\ = DFFEAS((\Initialize~combout\) # ((\inst9|inst16~combout\ & ((\inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(8)))) # (!\inst9|inst16~combout\ & (\inst9|inst5~regout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fef2",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \inst9|inst5~regout\,
	datab => \inst9|inst16~combout\,
	datac => \Initialize~combout\,
	datad => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(8),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst5~regout\);

-- Location: LC_X8_Y5_N9
\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]\ : maxv_lcell
-- Equation(s):
-- \inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(9) = VCC $ \Inc~combout\ $ (\inst9|inst4~regout\ $ (((!\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ & \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUT\) # 
-- (\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ & \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUTCOUT1_8\))))
-- \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\ = CARRY((VCC $ \Inc~combout\ & (!\inst9|inst4~regout\ & !\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUTCOUT1_8\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUTCOUT1_8\) # (!\inst9|inst4~regout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => VCC,
	datab => \inst9|inst4~regout\,
	cin => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\,
	cin0 => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUT\,
	cin1 => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUTCOUT1_8\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(9),
	cout => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\);

-- Location: LC_X7_Y5_N8
\inst9|inst4\ : maxv_lcell
-- Equation(s):
-- \inst9|inst4~regout\ = DFFEAS((\Initialize~combout\) # ((\inst9|inst16~combout\ & (\inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(9))) # (!\inst9|inst16~combout\ & ((\inst9|inst4~regout\)))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fbea",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Initialize~combout\,
	datab => \inst9|inst16~combout\,
	datac => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(9),
	datad => \inst9|inst4~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst4~regout\);

-- Location: LC_X9_Y5_N0
\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]\ : maxv_lcell
-- Equation(s):
-- \inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(10) = VCC $ \Inc~combout\ $ (\inst9|inst3~regout\ $ ((!\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\)))
-- \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUT\ = CARRY((VCC $ \Inc~combout\ & ((\inst9|inst3~regout\) # (!\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\))) # (!VCC $ \Inc~combout\ & (\inst9|inst3~regout\ & 
-- !\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\)))
-- \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUTCOUT1_9\ = CARRY((VCC $ \Inc~combout\ & ((\inst9|inst3~regout\) # (!\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\))) # (!VCC $ \Inc~combout\ & 
-- (\inst9|inst3~regout\ & !\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => VCC,
	datab => \inst9|inst3~regout\,
	cin => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(10),
	cout0 => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUT\,
	cout1 => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUTCOUT1_9\);

-- Location: LC_X10_Y5_N8
\inst9|inst3\ : maxv_lcell
-- Equation(s):
-- \inst9|inst3~regout\ = DFFEAS((\Initialize~combout\) # ((\inst9|inst16~combout\ & ((\inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(10)))) # (!\inst9|inst16~combout\ & (\inst9|inst3~regout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fef4",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \inst9|inst16~combout\,
	datab => \inst9|inst3~regout\,
	datac => \Initialize~combout\,
	datad => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(10),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst3~regout\);

-- Location: LC_X9_Y5_N1
\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]\ : maxv_lcell
-- Equation(s):
-- \inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(11) = VCC $ \Inc~combout\ $ (\inst9|inst2~regout\ $ (((!\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\ & \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUT\) 
-- # (\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\ & \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUTCOUT1_9\))))
-- \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUT\ = CARRY((VCC $ \Inc~combout\ & (!\inst9|inst2~regout\ & !\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUT\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUT\) # (!\inst9|inst2~regout\))))
-- \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUTCOUT1_10\ = CARRY((VCC $ \Inc~combout\ & (!\inst9|inst2~regout\ & !\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUTCOUT1_9\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUTCOUT1_9\) # (!\inst9|inst2~regout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => VCC,
	datab => \inst9|inst2~regout\,
	cin => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\,
	cin0 => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUT\,
	cin1 => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUTCOUT1_9\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(11),
	cout0 => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUT\,
	cout1 => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUTCOUT1_10\);

-- Location: LC_X10_Y5_N2
\inst9|inst2\ : maxv_lcell
-- Equation(s):
-- \inst9|inst2~regout\ = DFFEAS((\Initialize~combout\) # ((\inst9|inst16~combout\ & ((\inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(11)))) # (!\inst9|inst16~combout\ & (\inst9|inst2~regout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "feae",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Initialize~combout\,
	datab => \inst9|inst2~regout\,
	datac => \inst9|inst16~combout\,
	datad => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(11),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst2~regout\);

-- Location: LC_X9_Y5_N2
\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[12]\ : maxv_lcell
-- Equation(s):
-- \inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(12) = VCC $ \Inc~combout\ $ ((((!\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\ & \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUT\) # 
-- (\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\ & \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUTCOUT1_10\) $ (!\inst9|inst1~regout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5aa5",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => VCC,
	datad => \inst9|inst1~regout\,
	cin => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\,
	cin0 => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUT\,
	cin1 => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUTCOUT1_10\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(12));

-- Location: LC_X10_Y5_N4
\inst9|inst1\ : maxv_lcell
-- Equation(s):
-- \inst9|inst1~regout\ = DFFEAS((\Initialize~combout\) # ((\inst9|inst16~combout\ & ((\inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(12)))) # (!\inst9|inst16~combout\ & (\inst9|inst1~regout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fef4",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \inst9|inst16~combout\,
	datab => \inst9|inst1~regout\,
	datac => \Initialize~combout\,
	datad => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(12),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst1~regout\);

-- Location: LC_X11_Y5_N7
\inst24|LPM_COMPARE_component|auto_generated|agb~11\ : maxv_lcell
-- Equation(s):
-- \inst24|LPM_COMPARE_component|auto_generated|agb~11_combout\ = (!\inst9|inst11~regout\ & (!\inst9|inst10~regout\ & (!\inst9|inst13~regout\ & !\inst9|inst12~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst11~regout\,
	datab => \inst9|inst10~regout\,
	datac => \inst9|inst13~regout\,
	datad => \inst9|inst12~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst24|LPM_COMPARE_component|auto_generated|agb~11_combout\);

-- Location: LC_X10_Y5_N6
\inst24|LPM_COMPARE_component|auto_generated|agb~10\ : maxv_lcell
-- Equation(s):
-- \inst24|LPM_COMPARE_component|auto_generated|agb~10_combout\ = (!\inst9|inst6~regout\ & (!\inst9|inst9~regout\ & (!\inst9|inst7~regout\ & !\inst9|inst8~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst6~regout\,
	datab => \inst9|inst9~regout\,
	datac => \inst9|inst7~regout\,
	datad => \inst9|inst8~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst24|LPM_COMPARE_component|auto_generated|agb~10_combout\);

-- Location: LC_X10_Y5_N3
\inst24|LPM_COMPARE_component|auto_generated|agb~9\ : maxv_lcell
-- Equation(s):
-- \inst24|LPM_COMPARE_component|auto_generated|agb~9_combout\ = (!\inst9|inst3~regout\ & (!\inst9|inst5~regout\ & (!\inst9|inst4~regout\ & !\inst9|inst2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst3~regout\,
	datab => \inst9|inst5~regout\,
	datac => \inst9|inst4~regout\,
	datad => \inst9|inst2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst24|LPM_COMPARE_component|auto_generated|agb~9_combout\);

-- Location: LC_X10_Y5_N7
\inst24|LPM_COMPARE_component|auto_generated|agb~12\ : maxv_lcell
-- Equation(s):
-- \inst24|LPM_COMPARE_component|auto_generated|agb~12_combout\ = (\inst9|inst1~regout\) # ((\inst24|LPM_COMPARE_component|auto_generated|agb~11_combout\ & (\inst24|LPM_COMPARE_component|auto_generated|agb~10_combout\ & 
-- \inst24|LPM_COMPARE_component|auto_generated|agb~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eaaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst1~regout\,
	datab => \inst24|LPM_COMPARE_component|auto_generated|agb~11_combout\,
	datac => \inst24|LPM_COMPARE_component|auto_generated|agb~10_combout\,
	datad => \inst24|LPM_COMPARE_component|auto_generated|agb~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst24|LPM_COMPARE_component|auto_generated|agb~12_combout\);

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\passiveNOTactive19~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_passiveNOTactive19,
	combout => \passiveNOTactive19~combout\);

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\NightNOTday18~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_NightNOTday18,
	combout => \NightNOTday18~combout\);

-- Location: LC_X8_Y6_N0
\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]\ : maxv_lcell
-- Equation(s):
-- \inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(0) = VCC $ \Inc~combout\ $ (\inst10|inst13~regout\ $ ((\Inc~combout\)))
-- \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUT\ = CARRY((VCC $ \Inc~combout\ & (\inst10|inst13~regout\ & !\Inc~combout\)) # (!VCC $ \Inc~combout\ & ((\inst10|inst13~regout\) # (!\Inc~combout\))))
-- \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUTCOUT1_1\ = CARRY((VCC $ \Inc~combout\ & (\inst10|inst13~regout\ & !\Inc~combout\)) # (!VCC $ \Inc~combout\ & ((\inst10|inst13~regout\) # (!\Inc~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "964d",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => VCC,
	datab => \inst10|inst13~regout\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(0),
	cout0 => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUT\,
	cout1 => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUTCOUT1_1\);

-- Location: LC_X7_Y6_N2
\inst10|inst13\ : maxv_lcell
-- Equation(s):
-- \inst10|inst13~regout\ = DFFEAS((\Initialize~combout\) # ((\inst9|inst16~combout\ & (\inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(0))) # (!\inst9|inst16~combout\ & ((\inst10|inst13~regout\)))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fbea",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Initialize~combout\,
	datab => \inst9|inst16~combout\,
	datac => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(0),
	datad => \inst10|inst13~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|inst13~regout\);

-- Location: LC_X8_Y6_N1
\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]\ : maxv_lcell
-- Equation(s):
-- \inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(1) = VCC $ \Inc~combout\ $ (\inst10|inst12~regout\ $ (((!\Inc~combout\ & \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUT\) # (\Inc~combout\ & 
-- \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUTCOUT1_1\))))
-- \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUT\ = CARRY((VCC $ \Inc~combout\ & (!\inst10|inst12~regout\ & !\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUT\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUT\) # (!\inst10|inst12~regout\))))
-- \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUTCOUT1_2\ = CARRY((VCC $ \Inc~combout\ & (!\inst10|inst12~regout\ & !\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUTCOUT1_1\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUTCOUT1_1\) # (!\inst10|inst12~regout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => VCC,
	datab => \inst10|inst12~regout\,
	cin0 => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUT\,
	cin1 => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUTCOUT1_1\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(1),
	cout0 => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUT\,
	cout1 => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUTCOUT1_2\);

-- Location: LC_X7_Y6_N3
\inst10|inst12\ : maxv_lcell
-- Equation(s):
-- \inst10|inst12~regout\ = DFFEAS((\Initialize~combout\) # ((\inst9|inst16~combout\ & ((\inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(1)))) # (!\inst9|inst16~combout\ & (\inst10|inst12~regout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "feba",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Initialize~combout\,
	datab => \inst9|inst16~combout\,
	datac => \inst10|inst12~regout\,
	datad => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|inst12~regout\);

-- Location: LC_X8_Y6_N2
\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]\ : maxv_lcell
-- Equation(s):
-- \inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(2) = VCC $ \Inc~combout\ $ (\inst10|inst11~regout\ $ ((!(!\Inc~combout\ & \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUT\) # (\Inc~combout\ & 
-- \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUTCOUT1_2\))))
-- \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUT\ = CARRY((VCC $ \Inc~combout\ & ((\inst10|inst11~regout\) # (!\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUT\))) # (!VCC $ \Inc~combout\ & (\inst10|inst11~regout\ 
-- & !\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUT\)))
-- \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUTCOUT1_3\ = CARRY((VCC $ \Inc~combout\ & ((\inst10|inst11~regout\) # (!\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUTCOUT1_2\))) # (!VCC $ \Inc~combout\ & 
-- (\inst10|inst11~regout\ & !\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUTCOUT1_2\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => VCC,
	datab => \inst10|inst11~regout\,
	cin0 => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUT\,
	cin1 => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUTCOUT1_2\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(2),
	cout0 => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUT\,
	cout1 => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUTCOUT1_3\);

-- Location: LC_X7_Y6_N4
\inst10|inst11\ : maxv_lcell
-- Equation(s):
-- \inst10|inst11~regout\ = DFFEAS((\Initialize~combout\) # ((\inst9|inst16~combout\ & (\inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(2))) # (!\inst9|inst16~combout\ & ((\inst10|inst11~regout\)))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fbea",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Initialize~combout\,
	datab => \inst9|inst16~combout\,
	datac => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(2),
	datad => \inst10|inst11~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|inst11~regout\);

-- Location: LC_X8_Y6_N3
\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]\ : maxv_lcell
-- Equation(s):
-- \inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(3) = VCC $ \Inc~combout\ $ (\inst10|inst10~regout\ $ (((!\Inc~combout\ & \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUT\) # (\Inc~combout\ & 
-- \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUTCOUT1_3\))))
-- \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUT\ = CARRY((VCC $ \Inc~combout\ & (!\inst10|inst10~regout\ & !\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUT\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUT\) # (!\inst10|inst10~regout\))))
-- \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUTCOUT1_4\ = CARRY((VCC $ \Inc~combout\ & (!\inst10|inst10~regout\ & !\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUTCOUT1_3\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUTCOUT1_3\) # (!\inst10|inst10~regout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => VCC,
	datab => \inst10|inst10~regout\,
	cin0 => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUT\,
	cin1 => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUTCOUT1_3\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(3),
	cout0 => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUT\,
	cout1 => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUTCOUT1_4\);

-- Location: LC_X7_Y6_N1
\inst10|inst10\ : maxv_lcell
-- Equation(s):
-- \inst10|inst10~regout\ = DFFEAS((\Initialize~combout\) # ((\inst9|inst16~combout\ & (\inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(3))) # (!\inst9|inst16~combout\ & ((\inst10|inst10~regout\)))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fbea",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Initialize~combout\,
	datab => \inst9|inst16~combout\,
	datac => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(3),
	datad => \inst10|inst10~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|inst10~regout\);

-- Location: LC_X8_Y6_N4
\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]\ : maxv_lcell
-- Equation(s):
-- \inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(4) = VCC $ \Inc~combout\ $ (\inst10|inst9~regout\ $ ((!(!\Inc~combout\ & \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUT\) # (\Inc~combout\ & 
-- \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUTCOUT1_4\))))
-- \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ = CARRY((VCC $ \Inc~combout\ & ((\inst10|inst9~regout\) # (!\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUTCOUT1_4\))) # (!VCC $ \Inc~combout\ & 
-- (\inst10|inst9~regout\ & !\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUTCOUT1_4\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => VCC,
	datab => \inst10|inst9~regout\,
	cin0 => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUT\,
	cin1 => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUTCOUT1_4\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(4),
	cout => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\);

-- Location: LC_X7_Y6_N6
\inst10|inst9\ : maxv_lcell
-- Equation(s):
-- \inst10|inst9~regout\ = DFFEAS((\Initialize~combout\) # ((\inst9|inst16~combout\ & ((\inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(4)))) # (!\inst9|inst16~combout\ & (\inst10|inst9~regout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "feba",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Initialize~combout\,
	datab => \inst9|inst16~combout\,
	datac => \inst10|inst9~regout\,
	datad => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(4),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|inst9~regout\);

-- Location: LC_X8_Y6_N5
\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]\ : maxv_lcell
-- Equation(s):
-- \inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(5) = VCC $ \Inc~combout\ $ (\inst10|inst8~regout\ $ ((\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\)))
-- \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUT\ = CARRY((VCC $ \Inc~combout\ & (!\inst10|inst8~regout\ & !\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\) # (!\inst10|inst8~regout\))))
-- \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUTCOUT1_5\ = CARRY((VCC $ \Inc~combout\ & (!\inst10|inst8~regout\ & !\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\) # (!\inst10|inst8~regout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => VCC,
	datab => \inst10|inst8~regout\,
	cin => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(5),
	cout0 => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUT\,
	cout1 => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUTCOUT1_5\);

-- Location: LC_X7_Y6_N7
\inst10|inst8\ : maxv_lcell
-- Equation(s):
-- \inst10|inst8~regout\ = DFFEAS((\Initialize~combout\) # ((\inst9|inst16~combout\ & ((\inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(5)))) # (!\inst9|inst16~combout\ & (\inst10|inst8~regout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "feba",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Initialize~combout\,
	datab => \inst9|inst16~combout\,
	datac => \inst10|inst8~regout\,
	datad => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(5),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|inst8~regout\);

-- Location: LC_X8_Y6_N6
\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]\ : maxv_lcell
-- Equation(s):
-- \inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(6) = VCC $ \Inc~combout\ $ (\inst10|inst7~regout\ $ ((!(!\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ & 
-- \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUT\) # (\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ & \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUTCOUT1_5\))))
-- \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUT\ = CARRY((VCC $ \Inc~combout\ & ((\inst10|inst7~regout\) # (!\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUT\))) # (!VCC $ \Inc~combout\ & (\inst10|inst7~regout\ & 
-- !\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUT\)))
-- \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUTCOUT1_6\ = CARRY((VCC $ \Inc~combout\ & ((\inst10|inst7~regout\) # (!\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUTCOUT1_5\))) # (!VCC $ \Inc~combout\ & 
-- (\inst10|inst7~regout\ & !\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUTCOUT1_5\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => VCC,
	datab => \inst10|inst7~regout\,
	cin => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\,
	cin0 => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUT\,
	cin1 => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUTCOUT1_5\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(6),
	cout0 => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUT\,
	cout1 => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUTCOUT1_6\);

-- Location: LC_X7_Y6_N5
\inst10|inst7\ : maxv_lcell
-- Equation(s):
-- \inst10|inst7~regout\ = DFFEAS((\Initialize~combout\) # ((\inst9|inst16~combout\ & (\inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(6))) # (!\inst9|inst16~combout\ & ((\inst10|inst7~regout\)))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fbea",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Initialize~combout\,
	datab => \inst9|inst16~combout\,
	datac => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(6),
	datad => \inst10|inst7~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|inst7~regout\);

-- Location: LC_X8_Y6_N7
\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]\ : maxv_lcell
-- Equation(s):
-- \inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(7) = VCC $ \Inc~combout\ $ (\inst10|inst6~regout\ $ (((!\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ & 
-- \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUT\) # (\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ & \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUTCOUT1_6\))))
-- \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUT\ = CARRY((VCC $ \Inc~combout\ & (!\inst10|inst6~regout\ & !\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUT\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUT\) # (!\inst10|inst6~regout\))))
-- \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUTCOUT1_7\ = CARRY((VCC $ \Inc~combout\ & (!\inst10|inst6~regout\ & !\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUTCOUT1_6\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUTCOUT1_6\) # (!\inst10|inst6~regout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => VCC,
	datab => \inst10|inst6~regout\,
	cin => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\,
	cin0 => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUT\,
	cin1 => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUTCOUT1_6\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(7),
	cout0 => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUT\,
	cout1 => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUTCOUT1_7\);

-- Location: LC_X7_Y6_N9
\inst10|inst6\ : maxv_lcell
-- Equation(s):
-- \inst10|inst6~regout\ = DFFEAS((\Initialize~combout\) # ((\inst9|inst16~combout\ & ((\inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(7)))) # (!\inst9|inst16~combout\ & (\inst10|inst6~regout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "feae",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Initialize~combout\,
	datab => \inst10|inst6~regout\,
	datac => \inst9|inst16~combout\,
	datad => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(7),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|inst6~regout\);

-- Location: LC_X8_Y6_N8
\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]\ : maxv_lcell
-- Equation(s):
-- \inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(8) = VCC $ \Inc~combout\ $ (\inst10|inst5~regout\ $ ((!(!\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ & 
-- \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUT\) # (\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ & \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUTCOUT1_7\))))
-- \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUT\ = CARRY((VCC $ \Inc~combout\ & ((\inst10|inst5~regout\) # (!\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUT\))) # (!VCC $ \Inc~combout\ & (\inst10|inst5~regout\ & 
-- !\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUT\)))
-- \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUTCOUT1_8\ = CARRY((VCC $ \Inc~combout\ & ((\inst10|inst5~regout\) # (!\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUTCOUT1_7\))) # (!VCC $ \Inc~combout\ & 
-- (\inst10|inst5~regout\ & !\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUTCOUT1_7\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => VCC,
	datab => \inst10|inst5~regout\,
	cin => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\,
	cin0 => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUT\,
	cin1 => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUTCOUT1_7\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(8),
	cout0 => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUT\,
	cout1 => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUTCOUT1_8\);

-- Location: LC_X7_Y6_N0
\inst10|inst5\ : maxv_lcell
-- Equation(s):
-- \inst10|inst5~regout\ = DFFEAS((\Initialize~combout\) # ((\inst9|inst16~combout\ & ((\inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(8)))) # (!\inst9|inst16~combout\ & (\inst10|inst5~regout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fef2",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \inst10|inst5~regout\,
	datab => \inst9|inst16~combout\,
	datac => \Initialize~combout\,
	datad => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(8),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|inst5~regout\);

-- Location: LC_X8_Y6_N9
\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]\ : maxv_lcell
-- Equation(s):
-- \inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(9) = VCC $ \Inc~combout\ $ (\inst10|inst4~regout\ $ (((!\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ & 
-- \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUT\) # (\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ & \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUTCOUT1_8\))))
-- \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\ = CARRY((VCC $ \Inc~combout\ & (!\inst10|inst4~regout\ & !\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUTCOUT1_8\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUTCOUT1_8\) # (!\inst10|inst4~regout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => VCC,
	datab => \inst10|inst4~regout\,
	cin => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\,
	cin0 => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUT\,
	cin1 => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUTCOUT1_8\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(9),
	cout => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\);

-- Location: LC_X7_Y6_N8
\inst10|inst4\ : maxv_lcell
-- Equation(s):
-- \inst10|inst4~regout\ = DFFEAS((\Initialize~combout\) # ((\inst9|inst16~combout\ & (\inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(9))) # (!\inst9|inst16~combout\ & ((\inst10|inst4~regout\)))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fbea",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Initialize~combout\,
	datab => \inst9|inst16~combout\,
	datac => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(9),
	datad => \inst10|inst4~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|inst4~regout\);

-- Location: LC_X9_Y6_N0
\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]\ : maxv_lcell
-- Equation(s):
-- \inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(10) = VCC $ \Inc~combout\ $ (\inst10|inst3~regout\ $ ((!\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\)))
-- \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUT\ = CARRY((VCC $ \Inc~combout\ & ((\inst10|inst3~regout\) # (!\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\))) # (!VCC $ \Inc~combout\ & (\inst10|inst3~regout\ 
-- & !\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\)))
-- \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUTCOUT1_9\ = CARRY((VCC $ \Inc~combout\ & ((\inst10|inst3~regout\) # (!\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\))) # (!VCC $ \Inc~combout\ & 
-- (\inst10|inst3~regout\ & !\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => VCC,
	datab => \inst10|inst3~regout\,
	cin => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(10),
	cout0 => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUT\,
	cout1 => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUTCOUT1_9\);

-- Location: LC_X10_Y6_N5
\inst10|inst3\ : maxv_lcell
-- Equation(s):
-- \inst10|inst3~regout\ = DFFEAS((\Initialize~combout\) # ((\inst9|inst16~combout\ & ((\inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(10)))) # (!\inst9|inst16~combout\ & (\inst10|inst3~regout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fef4",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \inst9|inst16~combout\,
	datab => \inst10|inst3~regout\,
	datac => \Initialize~combout\,
	datad => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(10),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|inst3~regout\);

-- Location: LC_X9_Y6_N1
\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]\ : maxv_lcell
-- Equation(s):
-- \inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(11) = VCC $ \Inc~combout\ $ (\inst10|inst2~regout\ $ (((!\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\ & 
-- \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUT\) # (\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\ & \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUTCOUT1_9\))))
-- \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUT\ = CARRY((VCC $ \Inc~combout\ & (!\inst10|inst2~regout\ & !\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUT\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUT\) # (!\inst10|inst2~regout\))))
-- \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUTCOUT1_10\ = CARRY((VCC $ \Inc~combout\ & (!\inst10|inst2~regout\ & !\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUTCOUT1_9\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUTCOUT1_9\) # (!\inst10|inst2~regout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => VCC,
	datab => \inst10|inst2~regout\,
	cin => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\,
	cin0 => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUT\,
	cin1 => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUTCOUT1_9\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(11),
	cout0 => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUT\,
	cout1 => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUTCOUT1_10\);

-- Location: LC_X10_Y6_N8
\inst10|inst2\ : maxv_lcell
-- Equation(s):
-- \inst10|inst2~regout\ = DFFEAS((\Initialize~combout\) # ((\inst9|inst16~combout\ & (\inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(11))) # (!\inst9|inst16~combout\ & ((\inst10|inst2~regout\)))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fbea",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Initialize~combout\,
	datab => \inst9|inst16~combout\,
	datac => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(11),
	datad => \inst10|inst2~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|inst2~regout\);

-- Location: LC_X10_Y5_N5
\inst24|LPM_COMPARE_component|auto_generated|agb~4\ : maxv_lcell
-- Equation(s):
-- \inst24|LPM_COMPARE_component|auto_generated|agb~4_combout\ = (!\inst10|inst5~regout\ & (!\inst10|inst2~regout\ & (!\inst10|inst3~regout\ & !\inst10|inst4~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst5~regout\,
	datab => \inst10|inst2~regout\,
	datac => \inst10|inst3~regout\,
	datad => \inst10|inst4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst24|LPM_COMPARE_component|auto_generated|agb~4_combout\);

-- Location: LC_X8_Y4_N2
\inst24|LPM_COMPARE_component|auto_generated|agb~5\ : maxv_lcell
-- Equation(s):
-- \inst24|LPM_COMPARE_component|auto_generated|agb~5_combout\ = (!\inst10|inst8~regout\ & (!\inst10|inst6~regout\ & (!\inst10|inst9~regout\ & !\inst10|inst7~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst8~regout\,
	datab => \inst10|inst6~regout\,
	datac => \inst10|inst9~regout\,
	datad => \inst10|inst7~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst24|LPM_COMPARE_component|auto_generated|agb~5_combout\);

-- Location: LC_X8_Y4_N4
\inst24|LPM_COMPARE_component|auto_generated|agb~6\ : maxv_lcell
-- Equation(s):
-- \inst24|LPM_COMPARE_component|auto_generated|agb~6_combout\ = (!\inst10|inst11~regout\ & (!\inst10|inst10~regout\ & (!\inst10|inst12~regout\ & !\inst10|inst13~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst11~regout\,
	datab => \inst10|inst10~regout\,
	datac => \inst10|inst12~regout\,
	datad => \inst10|inst13~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst24|LPM_COMPARE_component|auto_generated|agb~6_combout\);

-- Location: LC_X9_Y6_N2
\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[12]\ : maxv_lcell
-- Equation(s):
-- \inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(12) = VCC $ \Inc~combout\ $ ((((!\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\ & \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUT\) # 
-- (\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\ & \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUTCOUT1_10\) $ (!\inst10|inst1~regout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5aa5",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => VCC,
	datad => \inst10|inst1~regout\,
	cin => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\,
	cin0 => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUT\,
	cin1 => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUTCOUT1_10\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(12));

-- Location: LC_X10_Y6_N1
\inst10|inst1\ : maxv_lcell
-- Equation(s):
-- \inst10|inst1~regout\ = DFFEAS((\Initialize~combout\) # ((\inst9|inst16~combout\ & ((\inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(12)))) # (!\inst9|inst16~combout\ & (\inst10|inst1~regout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fef4",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \inst9|inst16~combout\,
	datab => \inst10|inst1~regout\,
	datac => \Initialize~combout\,
	datad => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(12),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|inst1~regout\);

-- Location: LC_X8_Y4_N3
\inst24|LPM_COMPARE_component|auto_generated|agb~7\ : maxv_lcell
-- Equation(s):
-- \inst24|LPM_COMPARE_component|auto_generated|agb~7_combout\ = (\inst10|inst1~regout\) # ((\inst24|LPM_COMPARE_component|auto_generated|agb~4_combout\ & (\inst24|LPM_COMPARE_component|auto_generated|agb~5_combout\ & 
-- \inst24|LPM_COMPARE_component|auto_generated|agb~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|LPM_COMPARE_component|auto_generated|agb~4_combout\,
	datab => \inst24|LPM_COMPARE_component|auto_generated|agb~5_combout\,
	datac => \inst24|LPM_COMPARE_component|auto_generated|agb~6_combout\,
	datad => \inst10|inst1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst24|LPM_COMPARE_component|auto_generated|agb~7_combout\);

-- Location: LC_X8_Y7_N0
\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]\ : maxv_lcell
-- Equation(s):
-- \inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(0) = VCC $ \Inc~combout\ $ (\inst11|inst13~regout\ $ ((\Inc~combout\)))
-- \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUT\ = CARRY((VCC $ \Inc~combout\ & (\inst11|inst13~regout\ & !\Inc~combout\)) # (!VCC $ \Inc~combout\ & ((\inst11|inst13~regout\) # (!\Inc~combout\))))
-- \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUTCOUT1_1\ = CARRY((VCC $ \Inc~combout\ & (\inst11|inst13~regout\ & !\Inc~combout\)) # (!VCC $ \Inc~combout\ & ((\inst11|inst13~regout\) # (!\Inc~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "964d",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => VCC,
	datab => \inst11|inst13~regout\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(0),
	cout0 => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUT\,
	cout1 => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUTCOUT1_1\);

-- Location: LC_X7_Y7_N7
\inst11|inst13\ : maxv_lcell
-- Equation(s):
-- \inst11|inst13~regout\ = DFFEAS((\Initialize~combout\) # ((\inst9|inst16~combout\ & ((\inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(0)))) # (!\inst9|inst16~combout\ & (\inst11|inst13~regout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faee",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Initialize~combout\,
	datab => \inst11|inst13~regout\,
	datac => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(0),
	datad => \inst9|inst16~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|inst13~regout\);

-- Location: LC_X8_Y7_N1
\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]\ : maxv_lcell
-- Equation(s):
-- \inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(1) = VCC $ \Inc~combout\ $ (\inst11|inst12~regout\ $ (((!\Inc~combout\ & \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUT\) # (\Inc~combout\ & 
-- \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUTCOUT1_1\))))
-- \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUT\ = CARRY((VCC $ \Inc~combout\ & (!\inst11|inst12~regout\ & !\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUT\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUT\) # (!\inst11|inst12~regout\))))
-- \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUTCOUT1_2\ = CARRY((VCC $ \Inc~combout\ & (!\inst11|inst12~regout\ & !\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUTCOUT1_1\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUTCOUT1_1\) # (!\inst11|inst12~regout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => VCC,
	datab => \inst11|inst12~regout\,
	cin0 => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUT\,
	cin1 => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUTCOUT1_1\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(1),
	cout0 => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUT\,
	cout1 => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUTCOUT1_2\);

-- Location: LC_X7_Y7_N2
\inst11|inst12\ : maxv_lcell
-- Equation(s):
-- \inst11|inst12~regout\ = DFFEAS((\Initialize~combout\) # ((\inst9|inst16~combout\ & ((\inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(1)))) # (!\inst9|inst16~combout\ & (\inst11|inst12~regout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fef2",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \inst11|inst12~regout\,
	datab => \inst9|inst16~combout\,
	datac => \Initialize~combout\,
	datad => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|inst12~regout\);

-- Location: LC_X8_Y7_N2
\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]\ : maxv_lcell
-- Equation(s):
-- \inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(2) = VCC $ \Inc~combout\ $ (\inst11|inst11~regout\ $ ((!(!\Inc~combout\ & \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUT\) # (\Inc~combout\ & 
-- \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUTCOUT1_2\))))
-- \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUT\ = CARRY((VCC $ \Inc~combout\ & ((\inst11|inst11~regout\) # (!\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUT\))) # (!VCC $ \Inc~combout\ & (\inst11|inst11~regout\ 
-- & !\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUT\)))
-- \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUTCOUT1_3\ = CARRY((VCC $ \Inc~combout\ & ((\inst11|inst11~regout\) # (!\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUTCOUT1_2\))) # (!VCC $ \Inc~combout\ & 
-- (\inst11|inst11~regout\ & !\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUTCOUT1_2\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => VCC,
	datab => \inst11|inst11~regout\,
	cin0 => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUT\,
	cin1 => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUTCOUT1_2\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(2),
	cout0 => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUT\,
	cout1 => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUTCOUT1_3\);

-- Location: LC_X7_Y7_N6
\inst11|inst11\ : maxv_lcell
-- Equation(s):
-- \inst11|inst11~regout\ = DFFEAS((\Initialize~combout\) # ((\inst9|inst16~combout\ & ((\inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(2)))) # (!\inst9|inst16~combout\ & (\inst11|inst11~regout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faee",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Initialize~combout\,
	datab => \inst11|inst11~regout\,
	datac => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(2),
	datad => \inst9|inst16~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|inst11~regout\);

-- Location: LC_X8_Y7_N3
\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]\ : maxv_lcell
-- Equation(s):
-- \inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(3) = VCC $ \Inc~combout\ $ (\inst11|inst10~regout\ $ (((!\Inc~combout\ & \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUT\) # (\Inc~combout\ & 
-- \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUTCOUT1_3\))))
-- \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUT\ = CARRY((VCC $ \Inc~combout\ & (!\inst11|inst10~regout\ & !\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUT\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUT\) # (!\inst11|inst10~regout\))))
-- \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUTCOUT1_4\ = CARRY((VCC $ \Inc~combout\ & (!\inst11|inst10~regout\ & !\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUTCOUT1_3\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUTCOUT1_3\) # (!\inst11|inst10~regout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => VCC,
	datab => \inst11|inst10~regout\,
	cin0 => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUT\,
	cin1 => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUTCOUT1_3\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(3),
	cout0 => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUT\,
	cout1 => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUTCOUT1_4\);

-- Location: LC_X7_Y7_N1
\inst11|inst10\ : maxv_lcell
-- Equation(s):
-- \inst11|inst10~regout\ = DFFEAS((\Initialize~combout\) # ((\inst9|inst16~combout\ & ((\inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(3)))) # (!\inst9|inst16~combout\ & (\inst11|inst10~regout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faee",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Initialize~combout\,
	datab => \inst11|inst10~regout\,
	datac => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(3),
	datad => \inst9|inst16~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|inst10~regout\);

-- Location: LC_X8_Y7_N4
\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]\ : maxv_lcell
-- Equation(s):
-- \inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(4) = VCC $ \Inc~combout\ $ (\inst11|inst9~regout\ $ ((!(!\Inc~combout\ & \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUT\) # (\Inc~combout\ & 
-- \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUTCOUT1_4\))))
-- \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ = CARRY((VCC $ \Inc~combout\ & ((\inst11|inst9~regout\) # (!\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUTCOUT1_4\))) # (!VCC $ \Inc~combout\ & 
-- (\inst11|inst9~regout\ & !\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUTCOUT1_4\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => VCC,
	datab => \inst11|inst9~regout\,
	cin0 => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUT\,
	cin1 => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUTCOUT1_4\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(4),
	cout => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\);

-- Location: LC_X7_Y7_N5
\inst11|inst9\ : maxv_lcell
-- Equation(s):
-- \inst11|inst9~regout\ = DFFEAS((\Initialize~combout\) # ((\inst9|inst16~combout\ & ((\inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(4)))) # (!\inst9|inst16~combout\ & (\inst11|inst9~regout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fef2",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \inst11|inst9~regout\,
	datab => \inst9|inst16~combout\,
	datac => \Initialize~combout\,
	datad => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(4),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|inst9~regout\);

-- Location: LC_X8_Y7_N5
\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]\ : maxv_lcell
-- Equation(s):
-- \inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(5) = VCC $ \Inc~combout\ $ (\inst11|inst8~regout\ $ ((\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\)))
-- \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUT\ = CARRY((VCC $ \Inc~combout\ & (!\inst11|inst8~regout\ & !\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\) # (!\inst11|inst8~regout\))))
-- \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUTCOUT1_5\ = CARRY((VCC $ \Inc~combout\ & (!\inst11|inst8~regout\ & !\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\) # (!\inst11|inst8~regout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => VCC,
	datab => \inst11|inst8~regout\,
	cin => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(5),
	cout0 => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUT\,
	cout1 => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUTCOUT1_5\);

-- Location: LC_X7_Y7_N9
\inst11|inst8\ : maxv_lcell
-- Equation(s):
-- \inst11|inst8~regout\ = DFFEAS((\Initialize~combout\) # ((\inst9|inst16~combout\ & ((\inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(5)))) # (!\inst9|inst16~combout\ & (\inst11|inst8~regout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fef4",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \inst9|inst16~combout\,
	datab => \inst11|inst8~regout\,
	datac => \Initialize~combout\,
	datad => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(5),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|inst8~regout\);

-- Location: LC_X8_Y7_N6
\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]\ : maxv_lcell
-- Equation(s):
-- \inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(6) = VCC $ \Inc~combout\ $ (\inst11|inst7~regout\ $ ((!(!\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ & 
-- \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUT\) # (\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ & \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUTCOUT1_5\))))
-- \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUT\ = CARRY((VCC $ \Inc~combout\ & ((\inst11|inst7~regout\) # (!\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUT\))) # (!VCC $ \Inc~combout\ & (\inst11|inst7~regout\ & 
-- !\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUT\)))
-- \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUTCOUT1_6\ = CARRY((VCC $ \Inc~combout\ & ((\inst11|inst7~regout\) # (!\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUTCOUT1_5\))) # (!VCC $ \Inc~combout\ & 
-- (\inst11|inst7~regout\ & !\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUTCOUT1_5\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => VCC,
	datab => \inst11|inst7~regout\,
	cin => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\,
	cin0 => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUT\,
	cin1 => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUTCOUT1_5\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(6),
	cout0 => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUT\,
	cout1 => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUTCOUT1_6\);

-- Location: LC_X7_Y7_N3
\inst11|inst7\ : maxv_lcell
-- Equation(s):
-- \inst11|inst7~regout\ = DFFEAS((\Initialize~combout\) # ((\inst9|inst16~combout\ & (\inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(6))) # (!\inst9|inst16~combout\ & ((\inst11|inst7~regout\)))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fbea",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Initialize~combout\,
	datab => \inst9|inst16~combout\,
	datac => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(6),
	datad => \inst11|inst7~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|inst7~regout\);

-- Location: LC_X8_Y7_N7
\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]\ : maxv_lcell
-- Equation(s):
-- \inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(7) = VCC $ \Inc~combout\ $ (\inst11|inst6~regout\ $ (((!\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ & 
-- \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUT\) # (\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ & \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUTCOUT1_6\))))
-- \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUT\ = CARRY((VCC $ \Inc~combout\ & (!\inst11|inst6~regout\ & !\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUT\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUT\) # (!\inst11|inst6~regout\))))
-- \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUTCOUT1_7\ = CARRY((VCC $ \Inc~combout\ & (!\inst11|inst6~regout\ & !\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUTCOUT1_6\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUTCOUT1_6\) # (!\inst11|inst6~regout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => VCC,
	datab => \inst11|inst6~regout\,
	cin => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\,
	cin0 => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUT\,
	cin1 => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUTCOUT1_6\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(7),
	cout0 => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUT\,
	cout1 => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUTCOUT1_7\);

-- Location: LC_X7_Y7_N8
\inst11|inst6\ : maxv_lcell
-- Equation(s):
-- \inst11|inst6~regout\ = DFFEAS((\Initialize~combout\) # ((\inst9|inst16~combout\ & ((\inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(7)))) # (!\inst9|inst16~combout\ & (\inst11|inst6~regout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "feba",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Initialize~combout\,
	datab => \inst9|inst16~combout\,
	datac => \inst11|inst6~regout\,
	datad => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(7),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|inst6~regout\);

-- Location: LC_X10_Y7_N5
\inst24|LPM_COMPARE_component|auto_generated|agb~1\ : maxv_lcell
-- Equation(s):
-- \inst24|LPM_COMPARE_component|auto_generated|agb~1_combout\ = (!\inst11|inst7~regout\ & (!\inst11|inst9~regout\ & (!\inst11|inst8~regout\ & !\inst11|inst6~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|inst7~regout\,
	datab => \inst11|inst9~regout\,
	datac => \inst11|inst8~regout\,
	datad => \inst11|inst6~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst24|LPM_COMPARE_component|auto_generated|agb~1_combout\);

-- Location: LC_X8_Y7_N8
\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]\ : maxv_lcell
-- Equation(s):
-- \inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(8) = VCC $ \Inc~combout\ $ (\inst11|inst5~regout\ $ ((!(!\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ & 
-- \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUT\) # (\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ & \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUTCOUT1_7\))))
-- \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUT\ = CARRY((VCC $ \Inc~combout\ & ((\inst11|inst5~regout\) # (!\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUT\))) # (!VCC $ \Inc~combout\ & (\inst11|inst5~regout\ & 
-- !\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUT\)))
-- \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUTCOUT1_8\ = CARRY((VCC $ \Inc~combout\ & ((\inst11|inst5~regout\) # (!\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUTCOUT1_7\))) # (!VCC $ \Inc~combout\ & 
-- (\inst11|inst5~regout\ & !\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUTCOUT1_7\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => VCC,
	datab => \inst11|inst5~regout\,
	cin => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\,
	cin0 => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUT\,
	cin1 => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUTCOUT1_7\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(8),
	cout0 => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUT\,
	cout1 => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUTCOUT1_8\);

-- Location: LC_X7_Y7_N0
\inst11|inst5\ : maxv_lcell
-- Equation(s):
-- \inst11|inst5~regout\ = DFFEAS((\Initialize~combout\) # ((\inst9|inst16~combout\ & ((\inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(8)))) # (!\inst9|inst16~combout\ & (\inst11|inst5~regout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "feba",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Initialize~combout\,
	datab => \inst9|inst16~combout\,
	datac => \inst11|inst5~regout\,
	datad => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(8),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|inst5~regout\);

-- Location: LC_X8_Y7_N9
\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]\ : maxv_lcell
-- Equation(s):
-- \inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(9) = VCC $ \Inc~combout\ $ (\inst11|inst4~regout\ $ (((!\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ & 
-- \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUT\) # (\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ & \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUTCOUT1_8\))))
-- \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\ = CARRY((VCC $ \Inc~combout\ & (!\inst11|inst4~regout\ & !\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUTCOUT1_8\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUTCOUT1_8\) # (!\inst11|inst4~regout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => VCC,
	datab => \inst11|inst4~regout\,
	cin => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\,
	cin0 => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUT\,
	cin1 => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUTCOUT1_8\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(9),
	cout => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\);

-- Location: LC_X7_Y7_N4
\inst11|inst4\ : maxv_lcell
-- Equation(s):
-- \inst11|inst4~regout\ = DFFEAS((\Initialize~combout\) # ((\inst9|inst16~combout\ & ((\inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(9)))) # (!\inst9|inst16~combout\ & (\inst11|inst4~regout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faee",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Initialize~combout\,
	datab => \inst11|inst4~regout\,
	datac => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(9),
	datad => \inst9|inst16~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|inst4~regout\);

-- Location: LC_X9_Y7_N0
\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]\ : maxv_lcell
-- Equation(s):
-- \inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(10) = VCC $ \Inc~combout\ $ (\inst11|inst3~regout\ $ ((!\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\)))
-- \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUT\ = CARRY((VCC $ \Inc~combout\ & ((\inst11|inst3~regout\) # (!\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\))) # (!VCC $ \Inc~combout\ & (\inst11|inst3~regout\ 
-- & !\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\)))
-- \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUTCOUT1_9\ = CARRY((VCC $ \Inc~combout\ & ((\inst11|inst3~regout\) # (!\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\))) # (!VCC $ \Inc~combout\ & 
-- (\inst11|inst3~regout\ & !\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => VCC,
	datab => \inst11|inst3~regout\,
	cin => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(10),
	cout0 => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUT\,
	cout1 => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUTCOUT1_9\);

-- Location: LC_X10_Y7_N4
\inst11|inst3\ : maxv_lcell
-- Equation(s):
-- \inst11|inst3~regout\ = DFFEAS((\Initialize~combout\) # ((\inst9|inst16~combout\ & ((\inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(10)))) # (!\inst9|inst16~combout\ & (\inst11|inst3~regout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fef4",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \inst9|inst16~combout\,
	datab => \inst11|inst3~regout\,
	datac => \Initialize~combout\,
	datad => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(10),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|inst3~regout\);

-- Location: LC_X9_Y7_N1
\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]\ : maxv_lcell
-- Equation(s):
-- \inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(11) = VCC $ \Inc~combout\ $ (\inst11|inst2~regout\ $ (((!\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\ & 
-- \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUT\) # (\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\ & \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUTCOUT1_9\))))
-- \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUT\ = CARRY((VCC $ \Inc~combout\ & (!\inst11|inst2~regout\ & !\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUT\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUT\) # (!\inst11|inst2~regout\))))
-- \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUTCOUT1_10\ = CARRY((VCC $ \Inc~combout\ & (!\inst11|inst2~regout\ & !\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUTCOUT1_9\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUTCOUT1_9\) # (!\inst11|inst2~regout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => VCC,
	datab => \inst11|inst2~regout\,
	cin => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\,
	cin0 => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUT\,
	cin1 => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUTCOUT1_9\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(11),
	cout0 => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUT\,
	cout1 => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUTCOUT1_10\);

-- Location: LC_X10_Y7_N8
\inst11|inst2\ : maxv_lcell
-- Equation(s):
-- \inst11|inst2~regout\ = DFFEAS((\Initialize~combout\) # ((\inst9|inst16~combout\ & (\inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(11))) # (!\inst9|inst16~combout\ & ((\inst11|inst2~regout\)))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fbea",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Initialize~combout\,
	datab => \inst9|inst16~combout\,
	datac => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(11),
	datad => \inst11|inst2~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|inst2~regout\);

-- Location: LC_X9_Y7_N2
\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[12]\ : maxv_lcell
-- Equation(s):
-- \inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(12) = VCC $ \Inc~combout\ $ ((((!\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\ & \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUT\) # 
-- (\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\ & \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUTCOUT1_10\) $ (!\inst11|inst1~regout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5aa5",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => VCC,
	datad => \inst11|inst1~regout\,
	cin => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\,
	cin0 => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUT\,
	cin1 => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUTCOUT1_10\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(12));

-- Location: LC_X10_Y7_N1
\inst11|inst1\ : maxv_lcell
-- Equation(s):
-- \inst11|inst1~regout\ = DFFEAS((\Initialize~combout\) # ((\inst9|inst16~combout\ & ((\inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(12)))) # (!\inst9|inst16~combout\ & (\inst11|inst1~regout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fef4",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \inst9|inst16~combout\,
	datab => \inst11|inst1~regout\,
	datac => \Initialize~combout\,
	datad => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(12),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|inst1~regout\);

-- Location: LC_X10_Y7_N7
\inst24|LPM_COMPARE_component|auto_generated|agb~2\ : maxv_lcell
-- Equation(s):
-- \inst24|LPM_COMPARE_component|auto_generated|agb~2_combout\ = (!\inst11|inst13~regout\ & (!\inst11|inst11~regout\ & (!\inst11|inst12~regout\ & !\inst11|inst10~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|inst13~regout\,
	datab => \inst11|inst11~regout\,
	datac => \inst11|inst12~regout\,
	datad => \inst11|inst10~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst24|LPM_COMPARE_component|auto_generated|agb~2_combout\);

-- Location: LC_X10_Y7_N2
\inst24|LPM_COMPARE_component|auto_generated|agb~0\ : maxv_lcell
-- Equation(s):
-- \inst24|LPM_COMPARE_component|auto_generated|agb~0_combout\ = (!\inst11|inst2~regout\ & (!\inst11|inst4~regout\ & (!\inst11|inst3~regout\ & !\inst11|inst5~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|inst2~regout\,
	datab => \inst11|inst4~regout\,
	datac => \inst11|inst3~regout\,
	datad => \inst11|inst5~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst24|LPM_COMPARE_component|auto_generated|agb~0_combout\);

-- Location: LC_X10_Y7_N6
\inst24|LPM_COMPARE_component|auto_generated|agb~3\ : maxv_lcell
-- Equation(s):
-- \inst24|LPM_COMPARE_component|auto_generated|agb~3_combout\ = (\inst11|inst1~regout\) # ((\inst24|LPM_COMPARE_component|auto_generated|agb~1_combout\ & (\inst24|LPM_COMPARE_component|auto_generated|agb~2_combout\ & 
-- \inst24|LPM_COMPARE_component|auto_generated|agb~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eccc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|LPM_COMPARE_component|auto_generated|agb~1_combout\,
	datab => \inst11|inst1~regout\,
	datac => \inst24|LPM_COMPARE_component|auto_generated|agb~2_combout\,
	datad => \inst24|LPM_COMPARE_component|auto_generated|agb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst24|LPM_COMPARE_component|auto_generated|agb~3_combout\);

-- Location: LC_X7_Y4_N2
\inst24|LPM_COMPARE_component|auto_generated|agb~8\ : maxv_lcell
-- Equation(s):
-- \inst24|LPM_COMPARE_component|auto_generated|agb~8_combout\ = (\passiveNOTactive19~combout\ & (((\inst24|LPM_COMPARE_component|auto_generated|agb~3_combout\)))) # (!\passiveNOTactive19~combout\ & 
-- (\inst24|LPM_COMPARE_component|auto_generated|agb~7_combout\ & (\NightNOTday18~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ec20",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|LPM_COMPARE_component|auto_generated|agb~7_combout\,
	datab => \passiveNOTactive19~combout\,
	datac => \NightNOTday18~combout\,
	datad => \inst24|LPM_COMPARE_component|auto_generated|agb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst24|LPM_COMPARE_component|auto_generated|agb~8_combout\);

-- Location: LC_X7_Y4_N7
\inst24|LPM_COMPARE_component|auto_generated|agb~13\ : maxv_lcell
-- Equation(s):
-- \inst24|LPM_COMPARE_component|auto_generated|agb~13_combout\ = (\inst24|LPM_COMPARE_component|auto_generated|agb~8_combout\) # ((\inst24|LPM_COMPARE_component|auto_generated|agb~12_combout\ & (!\passiveNOTactive19~combout\ & !\NightNOTday18~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff02",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|LPM_COMPARE_component|auto_generated|agb~12_combout\,
	datab => \passiveNOTactive19~combout\,
	datac => \NightNOTday18~combout\,
	datad => \inst24|LPM_COMPARE_component|auto_generated|agb~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst24|LPM_COMPARE_component|auto_generated|agb~13_combout\);

-- Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\passiveNOTactive~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_passiveNOTactive,
	combout => \passiveNOTactive~combout\);

-- Location: LC_X10_Y3_N0
\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]\ : maxv_lcell
-- Equation(s):
-- \inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(0) = VCC $ \Inc~combout\ $ (\inst14|inst13~regout\ $ ((\Inc~combout\)))
-- \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUT\ = CARRY((VCC $ \Inc~combout\ & (\inst14|inst13~regout\ & !\Inc~combout\)) # (!VCC $ \Inc~combout\ & ((\inst14|inst13~regout\) # (!\Inc~combout\))))
-- \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUTCOUT1_1\ = CARRY((VCC $ \Inc~combout\ & (\inst14|inst13~regout\ & !\Inc~combout\)) # (!VCC $ \Inc~combout\ & ((\inst14|inst13~regout\) # (!\Inc~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "964d",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => VCC,
	datab => \inst14|inst13~regout\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(0),
	cout0 => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUT\,
	cout1 => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUTCOUT1_1\);

-- Location: LC_X11_Y5_N6
\inst14|inst13\ : maxv_lcell
-- Equation(s):
-- \inst14|inst13~regout\ = DFFEAS((\Initialize~combout\) # ((\inst9|inst16~combout\ & ((\inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(0)))) # (!\inst9|inst16~combout\ & (\inst14|inst13~regout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fef2",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \inst14|inst13~regout\,
	datab => \inst9|inst16~combout\,
	datac => \Initialize~combout\,
	datad => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|inst13~regout\);

-- Location: LC_X10_Y3_N1
\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]\ : maxv_lcell
-- Equation(s):
-- \inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(1) = VCC $ \Inc~combout\ $ (\inst14|inst12~regout\ $ (((!\Inc~combout\ & \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUT\) # (\Inc~combout\ & 
-- \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUTCOUT1_1\))))
-- \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUT\ = CARRY((VCC $ \Inc~combout\ & (!\inst14|inst12~regout\ & !\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUT\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUT\) # (!\inst14|inst12~regout\))))
-- \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUTCOUT1_2\ = CARRY((VCC $ \Inc~combout\ & (!\inst14|inst12~regout\ & !\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUTCOUT1_1\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUTCOUT1_1\) # (!\inst14|inst12~regout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => VCC,
	datab => \inst14|inst12~regout\,
	cin0 => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUT\,
	cin1 => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUTCOUT1_1\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(1),
	cout0 => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUT\,
	cout1 => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUTCOUT1_2\);

-- Location: LC_X11_Y5_N9
\inst14|inst12\ : maxv_lcell
-- Equation(s):
-- \inst14|inst12~regout\ = DFFEAS((\Initialize~combout\) # ((\inst9|inst16~combout\ & ((\inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(1)))) # (!\inst9|inst16~combout\ & (\inst14|inst12~regout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faee",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Initialize~combout\,
	datab => \inst14|inst12~regout\,
	datac => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(1),
	datad => \inst9|inst16~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|inst12~regout\);

-- Location: LC_X10_Y3_N2
\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]\ : maxv_lcell
-- Equation(s):
-- \inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(2) = VCC $ \Inc~combout\ $ (\inst14|inst11~regout\ $ ((!(!\Inc~combout\ & \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUT\) # (\Inc~combout\ & 
-- \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUTCOUT1_2\))))
-- \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUT\ = CARRY((VCC $ \Inc~combout\ & ((\inst14|inst11~regout\) # (!\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUT\))) # (!VCC $ \Inc~combout\ & (\inst14|inst11~regout\ 
-- & !\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUT\)))
-- \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUTCOUT1_3\ = CARRY((VCC $ \Inc~combout\ & ((\inst14|inst11~regout\) # (!\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUTCOUT1_2\))) # (!VCC $ \Inc~combout\ & 
-- (\inst14|inst11~regout\ & !\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUTCOUT1_2\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => VCC,
	datab => \inst14|inst11~regout\,
	cin0 => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUT\,
	cin1 => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUTCOUT1_2\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(2),
	cout0 => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUT\,
	cout1 => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUTCOUT1_3\);

-- Location: LC_X9_Y4_N7
\inst14|inst11\ : maxv_lcell
-- Equation(s):
-- \inst14|inst11~regout\ = DFFEAS((\Initialize~combout\) # ((\inst9|inst16~combout\ & ((\inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(2)))) # (!\inst9|inst16~combout\ & (\inst14|inst11~regout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "feba",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Initialize~combout\,
	datab => \inst9|inst16~combout\,
	datac => \inst14|inst11~regout\,
	datad => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(2),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|inst11~regout\);

-- Location: LC_X10_Y3_N3
\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]\ : maxv_lcell
-- Equation(s):
-- \inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(3) = VCC $ \Inc~combout\ $ (\inst14|inst10~regout\ $ (((!\Inc~combout\ & \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUT\) # (\Inc~combout\ & 
-- \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUTCOUT1_3\))))
-- \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUT\ = CARRY((VCC $ \Inc~combout\ & (!\inst14|inst10~regout\ & !\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUT\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUT\) # (!\inst14|inst10~regout\))))
-- \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUTCOUT1_4\ = CARRY((VCC $ \Inc~combout\ & (!\inst14|inst10~regout\ & !\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUTCOUT1_3\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUTCOUT1_3\) # (!\inst14|inst10~regout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => VCC,
	datab => \inst14|inst10~regout\,
	cin0 => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUT\,
	cin1 => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUTCOUT1_3\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(3),
	cout0 => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUT\,
	cout1 => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUTCOUT1_4\);

-- Location: LC_X12_Y3_N3
\inst14|inst10\ : maxv_lcell
-- Equation(s):
-- \inst14|inst10~regout\ = DFFEAS((\Initialize~combout\) # ((\inst9|inst16~combout\ & ((\inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(3)))) # (!\inst9|inst16~combout\ & (\inst14|inst10~regout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fef2",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \inst14|inst10~regout\,
	datab => \inst9|inst16~combout\,
	datac => \Initialize~combout\,
	datad => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(3),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|inst10~regout\);

-- Location: LC_X10_Y3_N4
\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]\ : maxv_lcell
-- Equation(s):
-- \inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(4) = VCC $ \Inc~combout\ $ (\inst14|inst9~regout\ $ ((!(!\Inc~combout\ & \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUT\) # (\Inc~combout\ & 
-- \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUTCOUT1_4\))))
-- \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ = CARRY((VCC $ \Inc~combout\ & ((\inst14|inst9~regout\) # (!\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUTCOUT1_4\))) # (!VCC $ \Inc~combout\ & 
-- (\inst14|inst9~regout\ & !\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUTCOUT1_4\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => VCC,
	datab => \inst14|inst9~regout\,
	cin0 => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUT\,
	cin1 => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUTCOUT1_4\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(4),
	cout => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\);

-- Location: LC_X11_Y5_N3
\inst14|inst9\ : maxv_lcell
-- Equation(s):
-- \inst14|inst9~regout\ = DFFEAS((\Initialize~combout\) # ((\inst9|inst16~combout\ & (\inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(4))) # (!\inst9|inst16~combout\ & ((\inst14|inst9~regout\)))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fbea",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Initialize~combout\,
	datab => \inst9|inst16~combout\,
	datac => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(4),
	datad => \inst14|inst9~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|inst9~regout\);

-- Location: LC_X10_Y3_N5
\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]\ : maxv_lcell
-- Equation(s):
-- \inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(5) = VCC $ \Inc~combout\ $ (\inst14|inst8~regout\ $ ((\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\)))
-- \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUT\ = CARRY((VCC $ \Inc~combout\ & (!\inst14|inst8~regout\ & !\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\) # (!\inst14|inst8~regout\))))
-- \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUTCOUT1_5\ = CARRY((VCC $ \Inc~combout\ & (!\inst14|inst8~regout\ & !\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\) # (!\inst14|inst8~regout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => VCC,
	datab => \inst14|inst8~regout\,
	cin => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(5),
	cout0 => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUT\,
	cout1 => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUTCOUT1_5\);

-- Location: LC_X12_Y3_N7
\inst14|inst8\ : maxv_lcell
-- Equation(s):
-- \inst14|inst8~regout\ = DFFEAS((\Initialize~combout\) # ((\inst9|inst16~combout\ & ((\inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(5)))) # (!\inst9|inst16~combout\ & (\inst14|inst8~regout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fef4",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \inst9|inst16~combout\,
	datab => \inst14|inst8~regout\,
	datac => \Initialize~combout\,
	datad => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(5),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|inst8~regout\);

-- Location: LC_X10_Y3_N6
\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]\ : maxv_lcell
-- Equation(s):
-- \inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(6) = VCC $ \Inc~combout\ $ (\inst14|inst7~regout\ $ ((!(!\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ & 
-- \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUT\) # (\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ & \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUTCOUT1_5\))))
-- \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUT\ = CARRY((VCC $ \Inc~combout\ & ((\inst14|inst7~regout\) # (!\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUT\))) # (!VCC $ \Inc~combout\ & (\inst14|inst7~regout\ & 
-- !\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUT\)))
-- \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUTCOUT1_6\ = CARRY((VCC $ \Inc~combout\ & ((\inst14|inst7~regout\) # (!\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUTCOUT1_5\))) # (!VCC $ \Inc~combout\ & 
-- (\inst14|inst7~regout\ & !\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUTCOUT1_5\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => VCC,
	datab => \inst14|inst7~regout\,
	cin => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\,
	cin0 => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUT\,
	cin1 => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUTCOUT1_5\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(6),
	cout0 => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUT\,
	cout1 => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUTCOUT1_6\);

-- Location: LC_X9_Y4_N5
\inst14|inst7\ : maxv_lcell
-- Equation(s):
-- \inst14|inst7~regout\ = DFFEAS((\Initialize~combout\) # ((\inst9|inst16~combout\ & ((\inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(6)))) # (!\inst9|inst16~combout\ & (\inst14|inst7~regout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "feba",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Initialize~combout\,
	datab => \inst9|inst16~combout\,
	datac => \inst14|inst7~regout\,
	datad => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(6),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|inst7~regout\);

-- Location: LC_X10_Y3_N7
\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]\ : maxv_lcell
-- Equation(s):
-- \inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(7) = VCC $ \Inc~combout\ $ (\inst14|inst6~regout\ $ (((!\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ & 
-- \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUT\) # (\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ & \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUTCOUT1_6\))))
-- \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUT\ = CARRY((VCC $ \Inc~combout\ & (!\inst14|inst6~regout\ & !\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUT\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUT\) # (!\inst14|inst6~regout\))))
-- \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUTCOUT1_7\ = CARRY((VCC $ \Inc~combout\ & (!\inst14|inst6~regout\ & !\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUTCOUT1_6\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUTCOUT1_6\) # (!\inst14|inst6~regout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => VCC,
	datab => \inst14|inst6~regout\,
	cin => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\,
	cin0 => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUT\,
	cin1 => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUTCOUT1_6\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(7),
	cout0 => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUT\,
	cout1 => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUTCOUT1_7\);

-- Location: LC_X12_Y3_N4
\inst14|inst6\ : maxv_lcell
-- Equation(s):
-- \inst14|inst6~regout\ = DFFEAS((\Initialize~combout\) # ((\inst9|inst16~combout\ & ((\inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(7)))) # (!\inst9|inst16~combout\ & (\inst14|inst6~regout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fef4",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \inst9|inst16~combout\,
	datab => \inst14|inst6~regout\,
	datac => \Initialize~combout\,
	datad => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(7),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|inst6~regout\);

-- Location: LC_X10_Y3_N8
\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]\ : maxv_lcell
-- Equation(s):
-- \inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(8) = VCC $ \Inc~combout\ $ (\inst14|inst5~regout\ $ ((!(!\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ & 
-- \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUT\) # (\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ & \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUTCOUT1_7\))))
-- \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUT\ = CARRY((VCC $ \Inc~combout\ & ((\inst14|inst5~regout\) # (!\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUT\))) # (!VCC $ \Inc~combout\ & (\inst14|inst5~regout\ & 
-- !\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUT\)))
-- \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUTCOUT1_8\ = CARRY((VCC $ \Inc~combout\ & ((\inst14|inst5~regout\) # (!\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUTCOUT1_7\))) # (!VCC $ \Inc~combout\ & 
-- (\inst14|inst5~regout\ & !\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUTCOUT1_7\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => VCC,
	datab => \inst14|inst5~regout\,
	cin => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\,
	cin0 => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUT\,
	cin1 => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUTCOUT1_7\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(8),
	cout0 => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUT\,
	cout1 => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUTCOUT1_8\);

-- Location: LC_X12_Y3_N9
\inst14|inst5\ : maxv_lcell
-- Equation(s):
-- \inst14|inst5~regout\ = DFFEAS((\Initialize~combout\) # ((\inst9|inst16~combout\ & ((\inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(8)))) # (!\inst9|inst16~combout\ & (\inst14|inst5~regout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fef4",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \inst9|inst16~combout\,
	datab => \inst14|inst5~regout\,
	datac => \Initialize~combout\,
	datad => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(8),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|inst5~regout\);

-- Location: LC_X10_Y3_N9
\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]\ : maxv_lcell
-- Equation(s):
-- \inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(9) = VCC $ \Inc~combout\ $ (\inst14|inst4~regout\ $ (((!\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ & 
-- \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUT\) # (\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ & \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUTCOUT1_8\))))
-- \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\ = CARRY((VCC $ \Inc~combout\ & (!\inst14|inst4~regout\ & !\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUTCOUT1_8\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUTCOUT1_8\) # (!\inst14|inst4~regout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => VCC,
	datab => \inst14|inst4~regout\,
	cin => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\,
	cin0 => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUT\,
	cin1 => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUTCOUT1_8\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(9),
	cout => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\);

-- Location: LC_X9_Y4_N0
\inst14|inst4\ : maxv_lcell
-- Equation(s):
-- \inst14|inst4~regout\ = DFFEAS((\Initialize~combout\) # ((\inst9|inst16~combout\ & ((\inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(9)))) # (!\inst9|inst16~combout\ & (\inst14|inst4~regout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "feba",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Initialize~combout\,
	datab => \inst9|inst16~combout\,
	datac => \inst14|inst4~regout\,
	datad => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(9),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|inst4~regout\);

-- Location: LC_X11_Y3_N0
\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]\ : maxv_lcell
-- Equation(s):
-- \inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(10) = VCC $ \Inc~combout\ $ (\inst14|inst3~regout\ $ ((!\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\)))
-- \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUT\ = CARRY((VCC $ \Inc~combout\ & ((\inst14|inst3~regout\) # (!\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\))) # (!VCC $ \Inc~combout\ & (\inst14|inst3~regout\ 
-- & !\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\)))
-- \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUTCOUT1_9\ = CARRY((VCC $ \Inc~combout\ & ((\inst14|inst3~regout\) # (!\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\))) # (!VCC $ \Inc~combout\ & 
-- (\inst14|inst3~regout\ & !\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => VCC,
	datab => \inst14|inst3~regout\,
	cin => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(10),
	cout0 => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUT\,
	cout1 => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUTCOUT1_9\);

-- Location: LC_X12_Y3_N2
\inst14|inst3\ : maxv_lcell
-- Equation(s):
-- \inst14|inst3~regout\ = DFFEAS((\Initialize~combout\) # ((\inst9|inst16~combout\ & ((\inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(10)))) # (!\inst9|inst16~combout\ & (\inst14|inst3~regout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fef4",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \inst9|inst16~combout\,
	datab => \inst14|inst3~regout\,
	datac => \Initialize~combout\,
	datad => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(10),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|inst3~regout\);

-- Location: LC_X11_Y3_N1
\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]\ : maxv_lcell
-- Equation(s):
-- \inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(11) = VCC $ \Inc~combout\ $ (\inst14|inst2~regout\ $ (((!\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\ & 
-- \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUT\) # (\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\ & \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUTCOUT1_9\))))
-- \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUT\ = CARRY((VCC $ \Inc~combout\ & (!\inst14|inst2~regout\ & !\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUT\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUT\) # (!\inst14|inst2~regout\))))
-- \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUTCOUT1_10\ = CARRY((VCC $ \Inc~combout\ & (!\inst14|inst2~regout\ & !\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUTCOUT1_9\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUTCOUT1_9\) # (!\inst14|inst2~regout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => VCC,
	datab => \inst14|inst2~regout\,
	cin => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\,
	cin0 => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUT\,
	cin1 => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUTCOUT1_9\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(11),
	cout0 => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUT\,
	cout1 => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUTCOUT1_10\);

-- Location: LC_X12_Y3_N8
\inst14|inst2\ : maxv_lcell
-- Equation(s):
-- \inst14|inst2~regout\ = DFFEAS((\Initialize~combout\) # ((\inst9|inst16~combout\ & (\inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(11))) # (!\inst9|inst16~combout\ & ((\inst14|inst2~regout\)))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fbea",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Initialize~combout\,
	datab => \inst9|inst16~combout\,
	datac => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(11),
	datad => \inst14|inst2~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|inst2~regout\);

-- Location: LC_X11_Y3_N2
\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[12]\ : maxv_lcell
-- Equation(s):
-- \inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(12) = VCC $ \Inc~combout\ $ ((((!\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\ & \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUT\) # 
-- (\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\ & \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUTCOUT1_10\) $ (!\inst14|inst1~regout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5aa5",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => VCC,
	datad => \inst14|inst1~regout\,
	cin => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\,
	cin0 => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUT\,
	cin1 => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUTCOUT1_10\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(12));

-- Location: LC_X12_Y3_N5
\inst14|inst1\ : maxv_lcell
-- Equation(s):
-- \inst14|inst1~regout\ = DFFEAS((\Initialize~combout\) # ((\inst9|inst16~combout\ & ((\inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(12)))) # (!\inst9|inst16~combout\ & (\inst14|inst1~regout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fef4",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \inst9|inst16~combout\,
	datab => \inst14|inst1~regout\,
	datac => \Initialize~combout\,
	datad => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(12),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|inst1~regout\);

-- Location: LC_X11_Y6_N0
\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]\ : maxv_lcell
-- Equation(s):
-- \inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(0) = VCC $ \Inc~combout\ $ (\inst13|inst13~regout\ $ ((\Inc~combout\)))
-- \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUT\ = CARRY((VCC $ \Inc~combout\ & (\inst13|inst13~regout\ & !\Inc~combout\)) # (!VCC $ \Inc~combout\ & ((\inst13|inst13~regout\) # (!\Inc~combout\))))
-- \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUTCOUT1_1\ = CARRY((VCC $ \Inc~combout\ & (\inst13|inst13~regout\ & !\Inc~combout\)) # (!VCC $ \Inc~combout\ & ((\inst13|inst13~regout\) # (!\Inc~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "964d",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => VCC,
	datab => \inst13|inst13~regout\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(0),
	cout0 => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUT\,
	cout1 => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUTCOUT1_1\);

-- Location: LC_X11_Y5_N8
\inst13|inst13\ : maxv_lcell
-- Equation(s):
-- \inst13|inst13~regout\ = DFFEAS((\Initialize~combout\) # ((\inst9|inst16~combout\ & (\inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(0))) # (!\inst9|inst16~combout\ & ((\inst13|inst13~regout\)))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fbea",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Initialize~combout\,
	datab => \inst9|inst16~combout\,
	datac => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(0),
	datad => \inst13|inst13~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|inst13~regout\);

-- Location: LC_X11_Y6_N1
\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]\ : maxv_lcell
-- Equation(s):
-- \inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(1) = VCC $ \Inc~combout\ $ (\inst13|inst12~regout\ $ (((!\Inc~combout\ & \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUT\) # (\Inc~combout\ & 
-- \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUTCOUT1_1\))))
-- \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUT\ = CARRY((VCC $ \Inc~combout\ & (!\inst13|inst12~regout\ & !\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUT\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUT\) # (!\inst13|inst12~regout\))))
-- \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUTCOUT1_2\ = CARRY((VCC $ \Inc~combout\ & (!\inst13|inst12~regout\ & !\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUTCOUT1_1\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUTCOUT1_1\) # (!\inst13|inst12~regout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => VCC,
	datab => \inst13|inst12~regout\,
	cin0 => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUT\,
	cin1 => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUTCOUT1_1\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(1),
	cout0 => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUT\,
	cout1 => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUTCOUT1_2\);

-- Location: LC_X11_Y5_N2
\inst13|inst12\ : maxv_lcell
-- Equation(s):
-- \inst13|inst12~regout\ = DFFEAS((\Initialize~combout\) # ((\inst9|inst16~combout\ & ((\inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(1)))) # (!\inst9|inst16~combout\ & (\inst13|inst12~regout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "feba",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Initialize~combout\,
	datab => \inst9|inst16~combout\,
	datac => \inst13|inst12~regout\,
	datad => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|inst12~regout\);

-- Location: LC_X11_Y6_N2
\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]\ : maxv_lcell
-- Equation(s):
-- \inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(2) = VCC $ \Inc~combout\ $ (\inst13|inst11~regout\ $ ((!(!\Inc~combout\ & \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUT\) # (\Inc~combout\ & 
-- \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUTCOUT1_2\))))
-- \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUT\ = CARRY((VCC $ \Inc~combout\ & ((\inst13|inst11~regout\) # (!\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUT\))) # (!VCC $ \Inc~combout\ & (\inst13|inst11~regout\ 
-- & !\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUT\)))
-- \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUTCOUT1_3\ = CARRY((VCC $ \Inc~combout\ & ((\inst13|inst11~regout\) # (!\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUTCOUT1_2\))) # (!VCC $ \Inc~combout\ & 
-- (\inst13|inst11~regout\ & !\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUTCOUT1_2\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => VCC,
	datab => \inst13|inst11~regout\,
	cin0 => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUT\,
	cin1 => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUTCOUT1_2\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(2),
	cout0 => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUT\,
	cout1 => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUTCOUT1_3\);

-- Location: LC_X10_Y6_N9
\inst13|inst11\ : maxv_lcell
-- Equation(s):
-- \inst13|inst11~regout\ = DFFEAS((\Initialize~combout\) # ((\inst9|inst16~combout\ & ((\inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(2)))) # (!\inst9|inst16~combout\ & (\inst13|inst11~regout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "feae",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Initialize~combout\,
	datab => \inst13|inst11~regout\,
	datac => \inst9|inst16~combout\,
	datad => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(2),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|inst11~regout\);

-- Location: LC_X11_Y6_N3
\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]\ : maxv_lcell
-- Equation(s):
-- \inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(3) = VCC $ \Inc~combout\ $ (\inst13|inst10~regout\ $ (((!\Inc~combout\ & \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUT\) # (\Inc~combout\ & 
-- \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUTCOUT1_3\))))
-- \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUT\ = CARRY((VCC $ \Inc~combout\ & (!\inst13|inst10~regout\ & !\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUT\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUT\) # (!\inst13|inst10~regout\))))
-- \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUTCOUT1_4\ = CARRY((VCC $ \Inc~combout\ & (!\inst13|inst10~regout\ & !\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUTCOUT1_3\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUTCOUT1_3\) # (!\inst13|inst10~regout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => VCC,
	datab => \inst13|inst10~regout\,
	cin0 => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUT\,
	cin1 => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUTCOUT1_3\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(3),
	cout0 => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUT\,
	cout1 => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUTCOUT1_4\);

-- Location: LC_X10_Y6_N3
\inst13|inst10\ : maxv_lcell
-- Equation(s):
-- \inst13|inst10~regout\ = DFFEAS((\Initialize~combout\) # ((\inst9|inst16~combout\ & (\inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(3))) # (!\inst9|inst16~combout\ & ((\inst13|inst10~regout\)))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fbea",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Initialize~combout\,
	datab => \inst9|inst16~combout\,
	datac => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(3),
	datad => \inst13|inst10~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|inst10~regout\);

-- Location: LC_X11_Y6_N4
\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]\ : maxv_lcell
-- Equation(s):
-- \inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(4) = VCC $ \Inc~combout\ $ (\inst13|inst9~regout\ $ ((!(!\Inc~combout\ & \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUT\) # (\Inc~combout\ & 
-- \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUTCOUT1_4\))))
-- \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ = CARRY((VCC $ \Inc~combout\ & ((\inst13|inst9~regout\) # (!\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUTCOUT1_4\))) # (!VCC $ \Inc~combout\ & 
-- (\inst13|inst9~regout\ & !\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUTCOUT1_4\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => VCC,
	datab => \inst13|inst9~regout\,
	cin0 => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUT\,
	cin1 => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUTCOUT1_4\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(4),
	cout => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\);

-- Location: LC_X11_Y5_N5
\inst13|inst9\ : maxv_lcell
-- Equation(s):
-- \inst13|inst9~regout\ = DFFEAS((\Initialize~combout\) # ((\inst9|inst16~combout\ & ((\inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(4)))) # (!\inst9|inst16~combout\ & (\inst13|inst9~regout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fef2",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \inst13|inst9~regout\,
	datab => \inst9|inst16~combout\,
	datac => \Initialize~combout\,
	datad => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(4),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|inst9~regout\);

-- Location: LC_X11_Y6_N5
\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]\ : maxv_lcell
-- Equation(s):
-- \inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(5) = VCC $ \Inc~combout\ $ (\inst13|inst8~regout\ $ ((\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\)))
-- \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUT\ = CARRY((VCC $ \Inc~combout\ & (!\inst13|inst8~regout\ & !\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\) # (!\inst13|inst8~regout\))))
-- \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUTCOUT1_5\ = CARRY((VCC $ \Inc~combout\ & (!\inst13|inst8~regout\ & !\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\) # (!\inst13|inst8~regout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => VCC,
	datab => \inst13|inst8~regout\,
	cin => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(5),
	cout0 => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUT\,
	cout1 => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUTCOUT1_5\);

-- Location: LC_X10_Y6_N0
\inst13|inst8\ : maxv_lcell
-- Equation(s):
-- \inst13|inst8~regout\ = DFFEAS((\Initialize~combout\) # ((\inst9|inst16~combout\ & ((\inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(5)))) # (!\inst9|inst16~combout\ & (\inst13|inst8~regout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fef4",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \inst9|inst16~combout\,
	datab => \inst13|inst8~regout\,
	datac => \Initialize~combout\,
	datad => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(5),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|inst8~regout\);

-- Location: LC_X11_Y6_N6
\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]\ : maxv_lcell
-- Equation(s):
-- \inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(6) = VCC $ \Inc~combout\ $ (\inst13|inst7~regout\ $ ((!(!\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ & 
-- \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUT\) # (\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ & \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUTCOUT1_5\))))
-- \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUT\ = CARRY((VCC $ \Inc~combout\ & ((\inst13|inst7~regout\) # (!\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUT\))) # (!VCC $ \Inc~combout\ & (\inst13|inst7~regout\ & 
-- !\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUT\)))
-- \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUTCOUT1_6\ = CARRY((VCC $ \Inc~combout\ & ((\inst13|inst7~regout\) # (!\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUTCOUT1_5\))) # (!VCC $ \Inc~combout\ & 
-- (\inst13|inst7~regout\ & !\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUTCOUT1_5\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => VCC,
	datab => \inst13|inst7~regout\,
	cin => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\,
	cin0 => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUT\,
	cin1 => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUTCOUT1_5\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(6),
	cout0 => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUT\,
	cout1 => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUTCOUT1_6\);

-- Location: LC_X10_Y6_N2
\inst13|inst7\ : maxv_lcell
-- Equation(s):
-- \inst13|inst7~regout\ = DFFEAS((\Initialize~combout\) # ((\inst9|inst16~combout\ & (\inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(6))) # (!\inst9|inst16~combout\ & ((\inst13|inst7~regout\)))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fbea",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Initialize~combout\,
	datab => \inst9|inst16~combout\,
	datac => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(6),
	datad => \inst13|inst7~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|inst7~regout\);

-- Location: LC_X11_Y6_N7
\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]\ : maxv_lcell
-- Equation(s):
-- \inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(7) = VCC $ \Inc~combout\ $ (\inst13|inst6~regout\ $ (((!\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ & 
-- \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUT\) # (\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ & \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUTCOUT1_6\))))
-- \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUT\ = CARRY((VCC $ \Inc~combout\ & (!\inst13|inst6~regout\ & !\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUT\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUT\) # (!\inst13|inst6~regout\))))
-- \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUTCOUT1_7\ = CARRY((VCC $ \Inc~combout\ & (!\inst13|inst6~regout\ & !\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUTCOUT1_6\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUTCOUT1_6\) # (!\inst13|inst6~regout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => VCC,
	datab => \inst13|inst6~regout\,
	cin => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\,
	cin0 => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUT\,
	cin1 => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUTCOUT1_6\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(7),
	cout0 => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUT\,
	cout1 => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUTCOUT1_7\);

-- Location: LC_X10_Y6_N7
\inst13|inst6\ : maxv_lcell
-- Equation(s):
-- \inst13|inst6~regout\ = DFFEAS((\Initialize~combout\) # ((\inst9|inst16~combout\ & ((\inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(7)))) # (!\inst9|inst16~combout\ & (\inst13|inst6~regout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fef4",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \inst9|inst16~combout\,
	datab => \inst13|inst6~regout\,
	datac => \Initialize~combout\,
	datad => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(7),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|inst6~regout\);

-- Location: LC_X11_Y6_N8
\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]\ : maxv_lcell
-- Equation(s):
-- \inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(8) = VCC $ \Inc~combout\ $ (\inst13|inst5~regout\ $ ((!(!\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ & 
-- \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUT\) # (\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ & \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUTCOUT1_7\))))
-- \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUT\ = CARRY((VCC $ \Inc~combout\ & ((\inst13|inst5~regout\) # (!\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUT\))) # (!VCC $ \Inc~combout\ & (\inst13|inst5~regout\ & 
-- !\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUT\)))
-- \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUTCOUT1_8\ = CARRY((VCC $ \Inc~combout\ & ((\inst13|inst5~regout\) # (!\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUTCOUT1_7\))) # (!VCC $ \Inc~combout\ & 
-- (\inst13|inst5~regout\ & !\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUTCOUT1_7\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => VCC,
	datab => \inst13|inst5~regout\,
	cin => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\,
	cin0 => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUT\,
	cin1 => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUTCOUT1_7\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(8),
	cout0 => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUT\,
	cout1 => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUTCOUT1_8\);

-- Location: LC_X10_Y6_N4
\inst13|inst5\ : maxv_lcell
-- Equation(s):
-- \inst13|inst5~regout\ = DFFEAS((\Initialize~combout\) # ((\inst9|inst16~combout\ & ((\inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(8)))) # (!\inst9|inst16~combout\ & (\inst13|inst5~regout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fef4",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \inst9|inst16~combout\,
	datab => \inst13|inst5~regout\,
	datac => \Initialize~combout\,
	datad => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(8),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|inst5~regout\);

-- Location: LC_X11_Y6_N9
\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]\ : maxv_lcell
-- Equation(s):
-- \inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(9) = VCC $ \Inc~combout\ $ (\inst13|inst4~regout\ $ (((!\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ & 
-- \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUT\) # (\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ & \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUTCOUT1_8\))))
-- \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\ = CARRY((VCC $ \Inc~combout\ & (!\inst13|inst4~regout\ & !\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUTCOUT1_8\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUTCOUT1_8\) # (!\inst13|inst4~regout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => VCC,
	datab => \inst13|inst4~regout\,
	cin => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\,
	cin0 => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUT\,
	cin1 => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUTCOUT1_8\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(9),
	cout => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\);

-- Location: LC_X10_Y6_N6
\inst13|inst4\ : maxv_lcell
-- Equation(s):
-- \inst13|inst4~regout\ = DFFEAS((\Initialize~combout\) # ((\inst9|inst16~combout\ & (\inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(9))) # (!\inst9|inst16~combout\ & ((\inst13|inst4~regout\)))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fbea",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Initialize~combout\,
	datab => \inst9|inst16~combout\,
	datac => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(9),
	datad => \inst13|inst4~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|inst4~regout\);

-- Location: LC_X12_Y6_N0
\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]\ : maxv_lcell
-- Equation(s):
-- \inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(10) = VCC $ \Inc~combout\ $ (\inst13|inst3~regout\ $ ((!\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\)))
-- \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUT\ = CARRY((VCC $ \Inc~combout\ & ((\inst13|inst3~regout\) # (!\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\))) # (!VCC $ \Inc~combout\ & (\inst13|inst3~regout\ 
-- & !\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\)))
-- \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUTCOUT1_9\ = CARRY((VCC $ \Inc~combout\ & ((\inst13|inst3~regout\) # (!\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\))) # (!VCC $ \Inc~combout\ & 
-- (\inst13|inst3~regout\ & !\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => VCC,
	datab => \inst13|inst3~regout\,
	cin => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(10),
	cout0 => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUT\,
	cout1 => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUTCOUT1_9\);

-- Location: LC_X12_Y5_N2
\inst13|inst3\ : maxv_lcell
-- Equation(s):
-- \inst13|inst3~regout\ = DFFEAS((\Initialize~combout\) # ((\inst9|inst16~combout\ & ((\inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(10)))) # (!\inst9|inst16~combout\ & (\inst13|inst3~regout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "feae",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Initialize~combout\,
	datab => \inst13|inst3~regout\,
	datac => \inst9|inst16~combout\,
	datad => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(10),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|inst3~regout\);

-- Location: LC_X12_Y6_N1
\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]\ : maxv_lcell
-- Equation(s):
-- \inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(11) = VCC $ \Inc~combout\ $ (\inst13|inst2~regout\ $ (((!\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\ & 
-- \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUT\) # (\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\ & \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUTCOUT1_9\))))
-- \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUT\ = CARRY((VCC $ \Inc~combout\ & (!\inst13|inst2~regout\ & !\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUT\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUT\) # (!\inst13|inst2~regout\))))
-- \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUTCOUT1_10\ = CARRY((VCC $ \Inc~combout\ & (!\inst13|inst2~regout\ & !\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUTCOUT1_9\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUTCOUT1_9\) # (!\inst13|inst2~regout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => VCC,
	datab => \inst13|inst2~regout\,
	cin => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\,
	cin0 => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUT\,
	cin1 => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUTCOUT1_9\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(11),
	cout0 => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUT\,
	cout1 => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUTCOUT1_10\);

-- Location: LC_X12_Y7_N3
\inst13|inst2\ : maxv_lcell
-- Equation(s):
-- \inst13|inst2~regout\ = DFFEAS((\Initialize~combout\) # ((\inst9|inst16~combout\ & ((\inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(11)))) # (!\inst9|inst16~combout\ & (\inst13|inst2~regout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fef2",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \inst13|inst2~regout\,
	datab => \inst9|inst16~combout\,
	datac => \Initialize~combout\,
	datad => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(11),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|inst2~regout\);

-- Location: LC_X12_Y6_N2
\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[12]\ : maxv_lcell
-- Equation(s):
-- \inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(12) = VCC $ \Inc~combout\ $ ((((!\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\ & \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUT\) # 
-- (\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\ & \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUTCOUT1_10\) $ (!\inst13|inst1~regout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5aa5",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => VCC,
	datad => \inst13|inst1~regout\,
	cin => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\,
	cin0 => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUT\,
	cin1 => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUTCOUT1_10\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(12));

-- Location: LC_X12_Y5_N0
\inst13|inst1\ : maxv_lcell
-- Equation(s):
-- \inst13|inst1~regout\ = DFFEAS((\Initialize~combout\) # ((\inst9|inst16~combout\ & ((\inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(12)))) # (!\inst9|inst16~combout\ & (\inst13|inst1~regout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fef4",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \inst9|inst16~combout\,
	datab => \inst13|inst1~regout\,
	datac => \Initialize~combout\,
	datad => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(12),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|inst1~regout\);

-- Location: PIN_66,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\NightNOTday~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_NightNOTday,
	combout => \NightNOTday~combout\);

-- Location: LC_X11_Y4_N0
\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]\ : maxv_lcell
-- Equation(s):
-- \inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(0) = VCC $ \Inc~combout\ $ (\inst12|inst13~regout\ $ ((\Inc~combout\)))
-- \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUT\ = CARRY((VCC $ \Inc~combout\ & (\inst12|inst13~regout\ & !\Inc~combout\)) # (!VCC $ \Inc~combout\ & ((\inst12|inst13~regout\) # (!\Inc~combout\))))
-- \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUTCOUT1_1\ = CARRY((VCC $ \Inc~combout\ & (\inst12|inst13~regout\ & !\Inc~combout\)) # (!VCC $ \Inc~combout\ & ((\inst12|inst13~regout\) # (!\Inc~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "964d",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => VCC,
	datab => \inst12|inst13~regout\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(0),
	cout0 => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUT\,
	cout1 => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUTCOUT1_1\);

-- Location: LC_X10_Y4_N4
\inst12|inst13\ : maxv_lcell
-- Equation(s):
-- \inst12|inst13~regout\ = DFFEAS((\Initialize~combout\) # ((\inst9|inst16~combout\ & ((\inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(0)))) # (!\inst9|inst16~combout\ & (\inst12|inst13~regout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "feba",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Initialize~combout\,
	datab => \inst9|inst16~combout\,
	datac => \inst12|inst13~regout\,
	datad => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|inst13~regout\);

-- Location: LC_X11_Y4_N1
\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]\ : maxv_lcell
-- Equation(s):
-- \inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(1) = VCC $ \Inc~combout\ $ (\inst12|inst12~regout\ $ (((!\Inc~combout\ & \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUT\) # (\Inc~combout\ & 
-- \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUTCOUT1_1\))))
-- \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUT\ = CARRY((VCC $ \Inc~combout\ & (!\inst12|inst12~regout\ & !\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUT\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUT\) # (!\inst12|inst12~regout\))))
-- \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUTCOUT1_2\ = CARRY((VCC $ \Inc~combout\ & (!\inst12|inst12~regout\ & !\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUTCOUT1_1\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUTCOUT1_1\) # (!\inst12|inst12~regout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => VCC,
	datab => \inst12|inst12~regout\,
	cin0 => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUT\,
	cin1 => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUTCOUT1_1\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(1),
	cout0 => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUT\,
	cout1 => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUTCOUT1_2\);

-- Location: LC_X10_Y4_N1
\inst12|inst12\ : maxv_lcell
-- Equation(s):
-- \inst12|inst12~regout\ = DFFEAS((\Initialize~combout\) # ((\inst9|inst16~combout\ & ((\inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(1)))) # (!\inst9|inst16~combout\ & (\inst12|inst12~regout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "feae",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Initialize~combout\,
	datab => \inst12|inst12~regout\,
	datac => \inst9|inst16~combout\,
	datad => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|inst12~regout\);

-- Location: LC_X11_Y4_N2
\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]\ : maxv_lcell
-- Equation(s):
-- \inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(2) = VCC $ \Inc~combout\ $ (\inst12|inst11~regout\ $ ((!(!\Inc~combout\ & \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUT\) # (\Inc~combout\ & 
-- \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUTCOUT1_2\))))
-- \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUT\ = CARRY((VCC $ \Inc~combout\ & ((\inst12|inst11~regout\) # (!\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUT\))) # (!VCC $ \Inc~combout\ & (\inst12|inst11~regout\ 
-- & !\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUT\)))
-- \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUTCOUT1_3\ = CARRY((VCC $ \Inc~combout\ & ((\inst12|inst11~regout\) # (!\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUTCOUT1_2\))) # (!VCC $ \Inc~combout\ & 
-- (\inst12|inst11~regout\ & !\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUTCOUT1_2\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => VCC,
	datab => \inst12|inst11~regout\,
	cin0 => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUT\,
	cin1 => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUTCOUT1_2\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(2),
	cout0 => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUT\,
	cout1 => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUTCOUT1_3\);

-- Location: LC_X10_Y4_N8
\inst12|inst11\ : maxv_lcell
-- Equation(s):
-- \inst12|inst11~regout\ = DFFEAS((\Initialize~combout\) # ((\inst9|inst16~combout\ & (\inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(2))) # (!\inst9|inst16~combout\ & ((\inst12|inst11~regout\)))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fbea",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Initialize~combout\,
	datab => \inst9|inst16~combout\,
	datac => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(2),
	datad => \inst12|inst11~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|inst11~regout\);

-- Location: LC_X11_Y4_N3
\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]\ : maxv_lcell
-- Equation(s):
-- \inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(3) = VCC $ \Inc~combout\ $ (\inst12|inst10~regout\ $ (((!\Inc~combout\ & \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUT\) # (\Inc~combout\ & 
-- \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUTCOUT1_3\))))
-- \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUT\ = CARRY((VCC $ \Inc~combout\ & (!\inst12|inst10~regout\ & !\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUT\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUT\) # (!\inst12|inst10~regout\))))
-- \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUTCOUT1_4\ = CARRY((VCC $ \Inc~combout\ & (!\inst12|inst10~regout\ & !\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUTCOUT1_3\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUTCOUT1_3\) # (!\inst12|inst10~regout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => VCC,
	datab => \inst12|inst10~regout\,
	cin0 => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUT\,
	cin1 => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUTCOUT1_3\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(3),
	cout0 => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUT\,
	cout1 => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUTCOUT1_4\);

-- Location: LC_X10_Y4_N7
\inst12|inst10\ : maxv_lcell
-- Equation(s):
-- \inst12|inst10~regout\ = DFFEAS((\Initialize~combout\) # ((\inst9|inst16~combout\ & (\inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(3))) # (!\inst9|inst16~combout\ & ((\inst12|inst10~regout\)))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fbea",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Initialize~combout\,
	datab => \inst9|inst16~combout\,
	datac => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(3),
	datad => \inst12|inst10~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|inst10~regout\);

-- Location: LC_X11_Y4_N4
\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]\ : maxv_lcell
-- Equation(s):
-- \inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(4) = VCC $ \Inc~combout\ $ (\inst12|inst9~regout\ $ ((!(!\Inc~combout\ & \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUT\) # (\Inc~combout\ & 
-- \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUTCOUT1_4\))))
-- \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ = CARRY((VCC $ \Inc~combout\ & ((\inst12|inst9~regout\) # (!\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUTCOUT1_4\))) # (!VCC $ \Inc~combout\ & 
-- (\inst12|inst9~regout\ & !\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUTCOUT1_4\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => VCC,
	datab => \inst12|inst9~regout\,
	cin0 => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUT\,
	cin1 => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUTCOUT1_4\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(4),
	cout => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\);

-- Location: LC_X10_Y4_N5
\inst12|inst9\ : maxv_lcell
-- Equation(s):
-- \inst12|inst9~regout\ = DFFEAS((\Initialize~combout\) # ((\inst9|inst16~combout\ & ((\inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(4)))) # (!\inst9|inst16~combout\ & (\inst12|inst9~regout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "feba",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Initialize~combout\,
	datab => \inst9|inst16~combout\,
	datac => \inst12|inst9~regout\,
	datad => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(4),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|inst9~regout\);

-- Location: LC_X11_Y4_N5
\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]\ : maxv_lcell
-- Equation(s):
-- \inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(5) = VCC $ \Inc~combout\ $ (\inst12|inst8~regout\ $ ((\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\)))
-- \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUT\ = CARRY((VCC $ \Inc~combout\ & (!\inst12|inst8~regout\ & !\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\) # (!\inst12|inst8~regout\))))
-- \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUTCOUT1_5\ = CARRY((VCC $ \Inc~combout\ & (!\inst12|inst8~regout\ & !\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\) # (!\inst12|inst8~regout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => VCC,
	datab => \inst12|inst8~regout\,
	cin => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(5),
	cout0 => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUT\,
	cout1 => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUTCOUT1_5\);

-- Location: LC_X10_Y4_N2
\inst12|inst8\ : maxv_lcell
-- Equation(s):
-- \inst12|inst8~regout\ = DFFEAS((\Initialize~combout\) # ((\inst9|inst16~combout\ & ((\inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(5)))) # (!\inst9|inst16~combout\ & (\inst12|inst8~regout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fef4",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \inst9|inst16~combout\,
	datab => \inst12|inst8~regout\,
	datac => \Initialize~combout\,
	datad => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(5),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|inst8~regout\);

-- Location: LC_X11_Y4_N6
\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]\ : maxv_lcell
-- Equation(s):
-- \inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(6) = VCC $ \Inc~combout\ $ (\inst12|inst7~regout\ $ ((!(!\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ & 
-- \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUT\) # (\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ & \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUTCOUT1_5\))))
-- \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUT\ = CARRY((VCC $ \Inc~combout\ & ((\inst12|inst7~regout\) # (!\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUT\))) # (!VCC $ \Inc~combout\ & (\inst12|inst7~regout\ & 
-- !\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUT\)))
-- \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUTCOUT1_6\ = CARRY((VCC $ \Inc~combout\ & ((\inst12|inst7~regout\) # (!\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUTCOUT1_5\))) # (!VCC $ \Inc~combout\ & 
-- (\inst12|inst7~regout\ & !\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUTCOUT1_5\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => VCC,
	datab => \inst12|inst7~regout\,
	cin => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\,
	cin0 => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUT\,
	cin1 => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUTCOUT1_5\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(6),
	cout0 => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUT\,
	cout1 => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUTCOUT1_6\);

-- Location: LC_X10_Y4_N3
\inst12|inst7\ : maxv_lcell
-- Equation(s):
-- \inst12|inst7~regout\ = DFFEAS((\Initialize~combout\) # ((\inst9|inst16~combout\ & (\inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(6))) # (!\inst9|inst16~combout\ & ((\inst12|inst7~regout\)))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fbea",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Initialize~combout\,
	datab => \inst9|inst16~combout\,
	datac => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(6),
	datad => \inst12|inst7~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|inst7~regout\);

-- Location: LC_X11_Y4_N7
\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]\ : maxv_lcell
-- Equation(s):
-- \inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(7) = VCC $ \Inc~combout\ $ (\inst12|inst6~regout\ $ (((!\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ & 
-- \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUT\) # (\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ & \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUTCOUT1_6\))))
-- \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUT\ = CARRY((VCC $ \Inc~combout\ & (!\inst12|inst6~regout\ & !\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUT\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUT\) # (!\inst12|inst6~regout\))))
-- \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUTCOUT1_7\ = CARRY((VCC $ \Inc~combout\ & (!\inst12|inst6~regout\ & !\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUTCOUT1_6\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUTCOUT1_6\) # (!\inst12|inst6~regout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => VCC,
	datab => \inst12|inst6~regout\,
	cin => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\,
	cin0 => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUT\,
	cin1 => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUTCOUT1_6\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(7),
	cout0 => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUT\,
	cout1 => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUTCOUT1_7\);

-- Location: LC_X10_Y4_N6
\inst12|inst6\ : maxv_lcell
-- Equation(s):
-- \inst12|inst6~regout\ = DFFEAS((\Initialize~combout\) # ((\inst9|inst16~combout\ & ((\inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(7)))) # (!\inst9|inst16~combout\ & (\inst12|inst6~regout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fef2",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \inst12|inst6~regout\,
	datab => \inst9|inst16~combout\,
	datac => \Initialize~combout\,
	datad => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(7),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|inst6~regout\);

-- Location: LC_X11_Y4_N8
\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]\ : maxv_lcell
-- Equation(s):
-- \inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(8) = VCC $ \Inc~combout\ $ (\inst12|inst5~regout\ $ ((!(!\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ & 
-- \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUT\) # (\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ & \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUTCOUT1_7\))))
-- \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUT\ = CARRY((VCC $ \Inc~combout\ & ((\inst12|inst5~regout\) # (!\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUT\))) # (!VCC $ \Inc~combout\ & (\inst12|inst5~regout\ & 
-- !\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUT\)))
-- \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUTCOUT1_8\ = CARRY((VCC $ \Inc~combout\ & ((\inst12|inst5~regout\) # (!\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUTCOUT1_7\))) # (!VCC $ \Inc~combout\ & 
-- (\inst12|inst5~regout\ & !\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUTCOUT1_7\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => VCC,
	datab => \inst12|inst5~regout\,
	cin => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\,
	cin0 => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUT\,
	cin1 => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUTCOUT1_7\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(8),
	cout0 => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUT\,
	cout1 => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUTCOUT1_8\);

-- Location: LC_X10_Y4_N0
\inst12|inst5\ : maxv_lcell
-- Equation(s):
-- \inst12|inst5~regout\ = DFFEAS((\Initialize~combout\) # ((\inst9|inst16~combout\ & ((\inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(8)))) # (!\inst9|inst16~combout\ & (\inst12|inst5~regout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fef4",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \inst9|inst16~combout\,
	datab => \inst12|inst5~regout\,
	datac => \Initialize~combout\,
	datad => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(8),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|inst5~regout\);

-- Location: LC_X11_Y4_N9
\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]\ : maxv_lcell
-- Equation(s):
-- \inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(9) = VCC $ \Inc~combout\ $ (\inst12|inst4~regout\ $ (((!\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ & 
-- \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUT\) # (\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ & \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUTCOUT1_8\))))
-- \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\ = CARRY((VCC $ \Inc~combout\ & (!\inst12|inst4~regout\ & !\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUTCOUT1_8\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUTCOUT1_8\) # (!\inst12|inst4~regout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => VCC,
	datab => \inst12|inst4~regout\,
	cin => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\,
	cin0 => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUT\,
	cin1 => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUTCOUT1_8\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(9),
	cout => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\);

-- Location: LC_X10_Y4_N9
\inst12|inst4\ : maxv_lcell
-- Equation(s):
-- \inst12|inst4~regout\ = DFFEAS((\Initialize~combout\) # ((\inst9|inst16~combout\ & (\inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(9))) # (!\inst9|inst16~combout\ & ((\inst12|inst4~regout\)))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fbea",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Initialize~combout\,
	datab => \inst9|inst16~combout\,
	datac => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(9),
	datad => \inst12|inst4~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|inst4~regout\);

-- Location: LC_X12_Y4_N0
\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]\ : maxv_lcell
-- Equation(s):
-- \inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(10) = VCC $ \Inc~combout\ $ (\inst12|inst3~regout\ $ ((!\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\)))
-- \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUT\ = CARRY((VCC $ \Inc~combout\ & ((\inst12|inst3~regout\) # (!\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\))) # (!VCC $ \Inc~combout\ & (\inst12|inst3~regout\ 
-- & !\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\)))
-- \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUTCOUT1_9\ = CARRY((VCC $ \Inc~combout\ & ((\inst12|inst3~regout\) # (!\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\))) # (!VCC $ \Inc~combout\ & 
-- (\inst12|inst3~regout\ & !\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "698e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => VCC,
	datab => \inst12|inst3~regout\,
	cin => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(10),
	cout0 => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUT\,
	cout1 => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUTCOUT1_9\);

-- Location: LC_X9_Y4_N6
\inst12|inst3\ : maxv_lcell
-- Equation(s):
-- \inst12|inst3~regout\ = DFFEAS((\Initialize~combout\) # ((\inst9|inst16~combout\ & ((\inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(10)))) # (!\inst9|inst16~combout\ & (\inst12|inst3~regout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "feba",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Initialize~combout\,
	datab => \inst9|inst16~combout\,
	datac => \inst12|inst3~regout\,
	datad => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(10),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|inst3~regout\);

-- Location: LC_X12_Y4_N1
\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]\ : maxv_lcell
-- Equation(s):
-- \inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(11) = VCC $ \Inc~combout\ $ (\inst12|inst2~regout\ $ (((!\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\ & 
-- \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUT\) # (\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\ & \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUTCOUT1_9\))))
-- \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUT\ = CARRY((VCC $ \Inc~combout\ & (!\inst12|inst2~regout\ & !\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUT\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUT\) # (!\inst12|inst2~regout\))))
-- \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUTCOUT1_10\ = CARRY((VCC $ \Inc~combout\ & (!\inst12|inst2~regout\ & !\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUTCOUT1_9\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUTCOUT1_9\) # (!\inst12|inst2~regout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "9617",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => VCC,
	datab => \inst12|inst2~regout\,
	cin => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\,
	cin0 => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUT\,
	cin1 => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUTCOUT1_9\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(11),
	cout0 => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUT\,
	cout1 => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUTCOUT1_10\);

-- Location: LC_X12_Y5_N5
\inst12|inst2\ : maxv_lcell
-- Equation(s):
-- \inst12|inst2~regout\ = DFFEAS((\Initialize~combout\) # ((\inst9|inst16~combout\ & ((\inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(11)))) # (!\inst9|inst16~combout\ & (\inst12|inst2~regout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fef4",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \inst9|inst16~combout\,
	datab => \inst12|inst2~regout\,
	datac => \Initialize~combout\,
	datad => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(11),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|inst2~regout\);

-- Location: LC_X12_Y4_N2
\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[12]\ : maxv_lcell
-- Equation(s):
-- \inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(12) = VCC $ \Inc~combout\ $ ((((!\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\ & \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUT\) # 
-- (\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\ & \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUTCOUT1_10\) $ (!\inst12|inst1~regout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5aa5",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => VCC,
	datad => \inst12|inst1~regout\,
	cin => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\,
	cin0 => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUT\,
	cin1 => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUTCOUT1_10\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(12));

-- Location: LC_X9_Y4_N4
\inst12|inst1\ : maxv_lcell
-- Equation(s):
-- \inst12|inst1~regout\ = DFFEAS((\Initialize~combout\) # ((\inst9|inst16~combout\ & ((\inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(12)))) # (!\inst9|inst16~combout\ & (\inst12|inst1~regout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "feba",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Initialize~combout\,
	datab => \inst9|inst16~combout\,
	datac => \inst12|inst1~regout\,
	datad => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(12),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|inst1~regout\);

-- Location: LC_X12_Y4_N3
\inst2|$00000|auto_generated|result_node[12]~0\ : maxv_lcell
-- Equation(s):
-- \inst2|$00000|auto_generated|result_node[12]~0_combout\ = ((\NightNOTday~combout\ & (\inst13|inst1~regout\)) # (!\NightNOTday~combout\ & ((\inst12|inst1~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst13|inst1~regout\,
	datac => \NightNOTday~combout\,
	datad => \inst12|inst1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|$00000|auto_generated|result_node[12]~0_combout\);

-- Location: LC_X12_Y4_N6
\inst2|$00000|auto_generated|result_node[12]~1\ : maxv_lcell
-- Equation(s):
-- \inst2|$00000|auto_generated|result_node[12]~1_combout\ = ((\passiveNOTactive~combout\ & (\inst14|inst1~regout\)) # (!\passiveNOTactive~combout\ & ((\inst2|$00000|auto_generated|result_node[12]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \passiveNOTactive~combout\,
	datac => \inst14|inst1~regout\,
	datad => \inst2|$00000|auto_generated|result_node[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|$00000|auto_generated|result_node[12]~1_combout\);

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\fbctestclk~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_fbctestclk,
	combout => \fbctestclk~combout\);

-- Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\fbctestrestart~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_fbctestrestart,
	combout => \fbctestrestart~combout\);

-- Location: LC_X1_Y7_N8
\inst1|inst\ : maxv_lcell
-- Equation(s):
-- \inst1|inst~regout\ = DFFEAS((((!\inst1|inst~regout\))), \fbctestclk~combout\, !GLOBAL(\fbctestrestart~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \fbctestclk~combout\,
	datad => \inst1|inst~regout\,
	aclr => \fbctestrestart~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst~regout\);

-- Location: LC_X1_Y7_N9
\inst1|inst1\ : maxv_lcell
-- Equation(s):
-- \inst1|inst1~regout\ = DFFEAS((((!\inst1|inst1~regout\))), \inst1|inst~regout\, !GLOBAL(\fbctestrestart~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst1|inst~regout\,
	datad => \inst1|inst1~regout\,
	aclr => \fbctestrestart~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst1~regout\);

-- Location: LC_X3_Y7_N2
\inst1|inst2\ : maxv_lcell
-- Equation(s):
-- \inst1|inst2~regout\ = DFFEAS((((!\inst1|inst2~regout\))), \inst1|inst1~regout\, !GLOBAL(\fbctestrestart~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst1|inst1~regout\,
	datad => \inst1|inst2~regout\,
	aclr => \fbctestrestart~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst2~regout\);

-- Location: LC_X2_Y7_N3
\inst1|inst3\ : maxv_lcell
-- Equation(s):
-- \inst1|inst3~regout\ = DFFEAS((((!\inst1|inst3~regout\))), \inst1|inst2~regout\, !GLOBAL(\fbctestrestart~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst1|inst2~regout\,
	datad => \inst1|inst3~regout\,
	aclr => \fbctestrestart~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst3~regout\);

-- Location: LC_X2_Y7_N2
\inst1|inst4\ : maxv_lcell
-- Equation(s):
-- \inst1|inst4~regout\ = DFFEAS((((!\inst1|inst4~regout\))), \inst1|inst3~regout\, !GLOBAL(\fbctestrestart~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst1|inst3~regout\,
	datad => \inst1|inst4~regout\,
	aclr => \fbctestrestart~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|inst4~regout\);

-- Location: LC_X4_Y6_N2
\inst15|inst\ : maxv_lcell
-- Equation(s):
-- \inst15|inst~regout\ = DFFEAS((((!\inst15|inst~regout\))), GLOBAL(\CLK~combout\), !GLOBAL(\Initialize~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datad => \inst15|inst~regout\,
	aclr => \Initialize~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst15|inst~regout\);

-- Location: LC_X5_Y6_N3
\inst15|inst1\ : maxv_lcell
-- Equation(s):
-- \inst15|inst1~regout\ = DFFEAS((((!\inst15|inst1~regout\))), \inst15|inst~regout\, !GLOBAL(\Initialize~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst15|inst~regout\,
	datad => \inst15|inst1~regout\,
	aclr => \Initialize~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst15|inst1~regout\);

-- Location: LC_X5_Y6_N2
\inst15|inst2\ : maxv_lcell
-- Equation(s):
-- \inst15|inst2~regout\ = DFFEAS((((!\inst15|inst2~regout\))), \inst15|inst1~regout\, !GLOBAL(\Initialize~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst15|inst1~regout\,
	datad => \inst15|inst2~regout\,
	aclr => \Initialize~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst15|inst2~regout\);

-- Location: LC_X6_Y6_N9
\inst15|inst3\ : maxv_lcell
-- Equation(s):
-- \inst15|inst3~regout\ = DFFEAS((((!\inst15|inst3~regout\))), \inst15|inst2~regout\, !GLOBAL(\Initialize~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst15|inst2~regout\,
	datad => \inst15|inst3~regout\,
	aclr => \Initialize~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst15|inst3~regout\);

-- Location: LC_X6_Y6_N2
\inst15|inst4\ : maxv_lcell
-- Equation(s):
-- \inst15|inst4~regout\ = DFFEAS((((!\inst15|inst4~regout\))), \inst15|inst3~regout\, !GLOBAL(\Initialize~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst15|inst3~regout\,
	datad => \inst15|inst4~regout\,
	aclr => \Initialize~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst15|inst4~regout\);

-- Location: LC_X6_Y6_N6
\inst17~0\ : maxv_lcell
-- Equation(s):
-- \inst17~0_combout\ = (((\inst15|inst4~regout\) # (\inst15|inst3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst15|inst4~regout\,
	datad => \inst15|inst3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst17~0_combout\);

-- Location: LC_X5_Y6_N5
inst17 : maxv_lcell
-- Equation(s):
-- \inst17~combout\ = (\inst15|inst1~regout\) # ((\inst15|inst~regout\) # ((\inst17~0_combout\) # (\inst15|inst2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|inst1~regout\,
	datab => \inst15|inst~regout\,
	datac => \inst17~0_combout\,
	datad => \inst15|inst2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst17~combout\);

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Heat~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst24|LPM_COMPARE_component|auto_generated|ALT_INV_agb~13_combout\,
	oe => VCC,
	padio => ww_Heat);

-- Location: PIN_68,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Cool~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst2|$00000|auto_generated|result_node[12]~1_combout\,
	oe => VCC,
	padio => ww_Cool);

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\SCL~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \CLK~combout\,
	oe => VCC,
	padio => ww_SCL);

-- Location: PIN_33,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\CS~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_CS);

-- Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\fbc0~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst1|inst~regout\,
	oe => VCC,
	padio => ww_fbc0);

-- Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\fbc1~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst1|inst1~regout\,
	oe => VCC,
	padio => ww_fbc1);

-- Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\fbc3~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst1|inst3~regout\,
	oe => VCC,
	padio => ww_fbc3);

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\fbc4~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst1|inst4~regout\,
	oe => VCC,
	padio => ww_fbc4);

-- Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\fbc2~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst1|inst2~regout\,
	oe => VCC,
	padio => ww_fbc2);

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Mof32~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_inst17~combout\,
	oe => VCC,
	padio => ww_Mof32);

-- Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\hiTrueSetDisp~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_hiTrueSetDisp);

-- Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\controlsActive~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_controlsActive);

-- Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Dout~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Dout);
END structure;


