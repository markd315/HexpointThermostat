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

-- DATE "01/02/2018 16:19:16"

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
	RTC : IN std_logic;
	Passive : IN std_logic;
	Night : IN std_logic;
	Day : IN std_logic;
	Hiset : IN std_logic;
	Inc : IN std_logic;
	Dec : IN std_logic;
	Mof32 : OUT std_logic;
	Dout : IN std_logic;
	SCL : OUT std_logic;
	CS : OUT std_logic;
	fbc0 : OUT std_logic;
	fbc1 : OUT std_logic;
	fbc3 : OUT std_logic;
	fbc4 : OUT std_logic;
	fbc2 : OUT std_logic;
	Din : OUT std_logic;
	FreezeReg : OUT std_logic;
	Cool : OUT std_logic;
	sevsegSign : OUT std_logic;
	hiTrueSetDisp : IN std_logic;
	externalTemp : OUT std_logic_vector(12 DOWNTO 0);
	frac : OUT std_logic_vector(6 DOWNTO 0);
	LS : OUT std_logic_vector(6 DOWNTO 0);
	MS : OUT std_logic_vector(6 DOWNTO 0);
	fbctestclk : IN std_logic;
	fbctestrestart : IN std_logic
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
SIGNAL ww_RTC : std_logic;
SIGNAL ww_Passive : std_logic;
SIGNAL ww_Night : std_logic;
SIGNAL ww_Day : std_logic;
SIGNAL ww_Hiset : std_logic;
SIGNAL ww_Inc : std_logic;
SIGNAL ww_Dec : std_logic;
SIGNAL ww_Mof32 : std_logic;
SIGNAL ww_Dout : std_logic;
SIGNAL ww_SCL : std_logic;
SIGNAL ww_CS : std_logic;
SIGNAL ww_fbc0 : std_logic;
SIGNAL ww_fbc1 : std_logic;
SIGNAL ww_fbc3 : std_logic;
SIGNAL ww_fbc4 : std_logic;
SIGNAL ww_fbc2 : std_logic;
SIGNAL ww_Din : std_logic;
SIGNAL ww_FreezeReg : std_logic;
SIGNAL ww_Cool : std_logic;
SIGNAL ww_sevsegSign : std_logic;
SIGNAL ww_hiTrueSetDisp : std_logic;
SIGNAL ww_externalTemp : std_logic_vector(12 DOWNTO 0);
SIGNAL ww_frac : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LS : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_MS : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_fbctestclk : std_logic;
SIGNAL ww_fbctestrestart : std_logic;
SIGNAL \inst34|fstate.state23~regout\ : std_logic;
SIGNAL \inst24|LPM_COMPARE_component|auto_generated|op_1~5\ : std_logic;
SIGNAL \inst23|LPM_COMPARE_component|auto_generated|op_1~5\ : std_logic;
SIGNAL \inst24|LPM_COMPARE_component|auto_generated|op_1~10\ : std_logic;
SIGNAL \inst23|LPM_COMPARE_component|auto_generated|op_1~10\ : std_logic;
SIGNAL \inst24|LPM_COMPARE_component|auto_generated|op_1~15\ : std_logic;
SIGNAL \inst23|LPM_COMPARE_component|auto_generated|op_1~15\ : std_logic;
SIGNAL \inst24|LPM_COMPARE_component|auto_generated|op_1~20\ : std_logic;
SIGNAL \inst23|LPM_COMPARE_component|auto_generated|op_1~20\ : std_logic;
SIGNAL \inst24|LPM_COMPARE_component|auto_generated|op_1~25\ : std_logic;
SIGNAL \inst23|LPM_COMPARE_component|auto_generated|op_1~25\ : std_logic;
SIGNAL \inst24|LPM_COMPARE_component|auto_generated|op_1~30\ : std_logic;
SIGNAL \inst23|LPM_COMPARE_component|auto_generated|op_1~30\ : std_logic;
SIGNAL \inst24|LPM_COMPARE_component|auto_generated|op_1~35\ : std_logic;
SIGNAL \inst23|LPM_COMPARE_component|auto_generated|op_1~35\ : std_logic;
SIGNAL \inst24|LPM_COMPARE_component|auto_generated|op_1~40\ : std_logic;
SIGNAL \inst23|LPM_COMPARE_component|auto_generated|op_1~40\ : std_logic;
SIGNAL \inst24|LPM_COMPARE_component|auto_generated|op_1~45\ : std_logic;
SIGNAL \inst23|LPM_COMPARE_component|auto_generated|op_1~45\ : std_logic;
SIGNAL \inst24|LPM_COMPARE_component|auto_generated|op_1~50\ : std_logic;
SIGNAL \inst23|LPM_COMPARE_component|auto_generated|op_1~50\ : std_logic;
SIGNAL \inst24|LPM_COMPARE_component|auto_generated|op_1~55\ : std_logic;
SIGNAL \inst23|LPM_COMPARE_component|auto_generated|op_1~55\ : std_logic;
SIGNAL \inst24|LPM_COMPARE_component|auto_generated|op_1~60\ : std_logic;
SIGNAL \inst23|LPM_COMPARE_component|auto_generated|op_1~60\ : std_logic;
SIGNAL \RTC~combout\ : std_logic;
SIGNAL \inst22|inst~regout\ : std_logic;
SIGNAL \inst22|inst1~regout\ : std_logic;
SIGNAL \inst22|inst2~regout\ : std_logic;
SIGNAL \inst22|inst3~regout\ : std_logic;
SIGNAL \inst22|inst4~regout\ : std_logic;
SIGNAL \inst22|inst7~regout\ : std_logic;
SIGNAL \inst36~0_combout\ : std_logic;
SIGNAL \inst22|inst8~regout\ : std_logic;
SIGNAL \inst36~combout\ : std_logic;
SIGNAL \Passive~combout\ : std_logic;
SIGNAL \Day~combout\ : std_logic;
SIGNAL \Night~combout\ : std_logic;
SIGNAL \inst55~0_combout\ : std_logic;
SIGNAL \inst47~regout\ : std_logic;
SIGNAL \inst49~regout\ : std_logic;
SIGNAL \Inc~combout\ : std_logic;
SIGNAL \Hiset~combout\ : std_logic;
SIGNAL \Dec~combout\ : std_logic;
SIGNAL \inst11|inst16~combout\ : std_logic;
SIGNAL \inst9|inst1~0_combout\ : std_logic;
SIGNAL \inst9|inst13~regout\ : std_logic;
SIGNAL \inst10|inst1~0_combout\ : std_logic;
SIGNAL \inst10|inst13~regout\ : std_logic;
SIGNAL \inst5|$00000|auto_generated|result_node[0]~24\ : std_logic;
SIGNAL \inst11|inst1~0_combout\ : std_logic;
SIGNAL \inst11|inst13~regout\ : std_logic;
SIGNAL \inst5|$00000|auto_generated|result_node[0]~25\ : std_logic;
SIGNAL \inst55~combout\ : std_logic;
SIGNAL \inst54~regout\ : std_logic;
SIGNAL \inst53~regout\ : std_logic;
SIGNAL \inst52~regout\ : std_logic;
SIGNAL \inst51~regout\ : std_logic;
SIGNAL \inst50~regout\ : std_logic;
SIGNAL \Dout~combout\ : std_logic;
SIGNAL \inst15|inst~regout\ : std_logic;
SIGNAL \inst15|inst1~regout\ : std_logic;
SIGNAL \inst15|inst2~regout\ : std_logic;
SIGNAL \inst15|inst3~regout\ : std_logic;
SIGNAL \inst15|inst4~regout\ : std_logic;
SIGNAL \inst17~0_combout\ : std_logic;
SIGNAL \inst17~combout\ : std_logic;
SIGNAL \inst34|fstate.Origin~regout\ : std_logic;
SIGNAL \inst34|fstate.state1~regout\ : std_logic;
SIGNAL \inst34|fstate.state2~regout\ : std_logic;
SIGNAL \inst34|fstate.state3~regout\ : std_logic;
SIGNAL \inst34|fstate.state4~regout\ : std_logic;
SIGNAL \inst34|fstate.state5~regout\ : std_logic;
SIGNAL \inst34|WideOr0~0\ : std_logic;
SIGNAL \inst34|fstate.state6~regout\ : std_logic;
SIGNAL \inst34|fstate.state7~regout\ : std_logic;
SIGNAL \inst34|fstate.state8~regout\ : std_logic;
SIGNAL \inst34|fstate.state9~regout\ : std_logic;
SIGNAL \inst34|fstate.state10~regout\ : std_logic;
SIGNAL \inst34|fstate.state11~regout\ : std_logic;
SIGNAL \inst34|fstate.state12~regout\ : std_logic;
SIGNAL \inst34|fstate.state13~regout\ : std_logic;
SIGNAL \inst34|fstate.state14~regout\ : std_logic;
SIGNAL \inst34|fstate.state15~regout\ : std_logic;
SIGNAL \inst34|fstate.state16~regout\ : std_logic;
SIGNAL \inst34|fstate.state17~regout\ : std_logic;
SIGNAL \inst34|fstate.state18~regout\ : std_logic;
SIGNAL \inst34|fstate.state19~regout\ : std_logic;
SIGNAL \inst34|fstate.state20~regout\ : std_logic;
SIGNAL \inst34|fstate.state21~regout\ : std_logic;
SIGNAL \inst34|fstate.state22~regout\ : std_logic;
SIGNAL \inst34|fstate.state24~regout\ : std_logic;
SIGNAL \inst34|freezeParalell\ : std_logic;
SIGNAL \hiTrueSetDisp~combout\ : std_logic;
SIGNAL \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUT\ : std_logic;
SIGNAL \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUTCOUT1_12\ : std_logic;
SIGNAL \inst9|inst12~regout\ : std_logic;
SIGNAL \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUT\ : std_logic;
SIGNAL \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUTCOUT1_14\ : std_logic;
SIGNAL \inst9|inst11~regout\ : std_logic;
SIGNAL \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUT\ : std_logic;
SIGNAL \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUTCOUT1_16\ : std_logic;
SIGNAL \inst9|inst10~regout\ : std_logic;
SIGNAL \inst10|inst10~regout\ : std_logic;
SIGNAL \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUT\ : std_logic;
SIGNAL \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUTCOUT1_12\ : std_logic;
SIGNAL \inst10|inst12~regout\ : std_logic;
SIGNAL \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUT\ : std_logic;
SIGNAL \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUTCOUT1_14\ : std_logic;
SIGNAL \inst10|inst11~regout\ : std_logic;
SIGNAL \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUT\ : std_logic;
SIGNAL \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUTCOUT1_16\ : std_logic;
SIGNAL \inst5|$00000|auto_generated|result_node[3]~16\ : std_logic;
SIGNAL \inst11|inst10~regout\ : std_logic;
SIGNAL \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUT\ : std_logic;
SIGNAL \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUTCOUT1_12\ : std_logic;
SIGNAL \inst5|$00000|auto_generated|result_node[1]~20\ : std_logic;
SIGNAL \inst11|inst12~regout\ : std_logic;
SIGNAL \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUT\ : std_logic;
SIGNAL \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUTCOUT1_14\ : std_logic;
SIGNAL \inst5|$00000|auto_generated|result_node[2]~22\ : std_logic;
SIGNAL \inst11|inst11~regout\ : std_logic;
SIGNAL \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUT\ : std_logic;
SIGNAL \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUTCOUT1_16\ : std_logic;
SIGNAL \inst5|$00000|auto_generated|result_node[3]~17\ : std_logic;
SIGNAL \inst12|inst1~0_combout\ : std_logic;
SIGNAL \inst12|inst13~regout\ : std_logic;
SIGNAL \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUT\ : std_logic;
SIGNAL \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUTCOUT1_12\ : std_logic;
SIGNAL \inst12|inst12~regout\ : std_logic;
SIGNAL \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUT\ : std_logic;
SIGNAL \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUTCOUT1_14\ : std_logic;
SIGNAL \inst12|inst11~regout\ : std_logic;
SIGNAL \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUT\ : std_logic;
SIGNAL \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUTCOUT1_16\ : std_logic;
SIGNAL \inst12|inst10~regout\ : std_logic;
SIGNAL \inst13|inst1~0_combout\ : std_logic;
SIGNAL \inst13|inst10~regout\ : std_logic;
SIGNAL \inst13|inst13~regout\ : std_logic;
SIGNAL \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUT\ : std_logic;
SIGNAL \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUTCOUT1_12\ : std_logic;
SIGNAL \inst13|inst12~regout\ : std_logic;
SIGNAL \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUT\ : std_logic;
SIGNAL \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUTCOUT1_14\ : std_logic;
SIGNAL \inst13|inst11~regout\ : std_logic;
SIGNAL \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUT\ : std_logic;
SIGNAL \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUTCOUT1_16\ : std_logic;
SIGNAL \inst2|$00000|auto_generated|result_node[3]~4\ : std_logic;
SIGNAL \inst14|inst1~0_combout\ : std_logic;
SIGNAL \inst14|inst10~regout\ : std_logic;
SIGNAL \inst2|$00000|auto_generated|result_node[0]~24\ : std_logic;
SIGNAL \inst14|inst13~regout\ : std_logic;
SIGNAL \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUT\ : std_logic;
SIGNAL \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUTCOUT1_12\ : std_logic;
SIGNAL \inst2|$00000|auto_generated|result_node[1]~22\ : std_logic;
SIGNAL \inst14|inst12~regout\ : std_logic;
SIGNAL \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUT\ : std_logic;
SIGNAL \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUTCOUT1_14\ : std_logic;
SIGNAL \inst2|$00000|auto_generated|result_node[2]~2\ : std_logic;
SIGNAL \inst14|inst11~regout\ : std_logic;
SIGNAL \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUT\ : std_logic;
SIGNAL \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUTCOUT1_16\ : std_logic;
SIGNAL \inst2|$00000|auto_generated|result_node[3]~5\ : std_logic;
SIGNAL \inst3|$00000|auto_generated|result_node[3]~18_combout\ : std_logic;
SIGNAL \inst38|inst10~regout\ : std_logic;
SIGNAL \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUT\ : std_logic;
SIGNAL \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUTCOUT1_18\ : std_logic;
SIGNAL \inst9|inst9~regout\ : std_logic;
SIGNAL \inst10|inst9~regout\ : std_logic;
SIGNAL \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUT\ : std_logic;
SIGNAL \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUTCOUT1_18\ : std_logic;
SIGNAL \inst5|$00000|auto_generated|result_node[4]~18\ : std_logic;
SIGNAL \inst11|inst9~regout\ : std_logic;
SIGNAL \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUT\ : std_logic;
SIGNAL \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUTCOUT1_18\ : std_logic;
SIGNAL \inst5|$00000|auto_generated|result_node[4]~19\ : std_logic;
SIGNAL \inst24|LPM_COMPARE_component|auto_generated|aeb_int~5\ : std_logic;
SIGNAL \inst5|$00000|auto_generated|result_node[1]~21\ : std_logic;
SIGNAL \inst2|$00000|auto_generated|result_node[1]~23\ : std_logic;
SIGNAL \inst3|$00000|auto_generated|result_node[1]~37_combout\ : std_logic;
SIGNAL \inst38|inst12~regout\ : std_logic;
SIGNAL \inst5|$00000|auto_generated|result_node[2]~23\ : std_logic;
SIGNAL \inst24|LPM_COMPARE_component|auto_generated|aeb_int~6\ : std_logic;
SIGNAL \inst24|LPM_COMPARE_component|auto_generated|aeb_int~7\ : std_logic;
SIGNAL \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ : std_logic;
SIGNAL \inst9|inst8~regout\ : std_logic;
SIGNAL \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUT\ : std_logic;
SIGNAL \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUTCOUT1_20\ : std_logic;
SIGNAL \inst9|inst7~regout\ : std_logic;
SIGNAL \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUT\ : std_logic;
SIGNAL \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUTCOUT1_22\ : std_logic;
SIGNAL \inst9|inst6~regout\ : std_logic;
SIGNAL \inst10|inst6~regout\ : std_logic;
SIGNAL \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ : std_logic;
SIGNAL \inst10|inst8~regout\ : std_logic;
SIGNAL \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUT\ : std_logic;
SIGNAL \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUTCOUT1_20\ : std_logic;
SIGNAL \inst10|inst7~regout\ : std_logic;
SIGNAL \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUT\ : std_logic;
SIGNAL \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUTCOUT1_22\ : std_logic;
SIGNAL \inst5|$00000|auto_generated|result_node[7]~8\ : std_logic;
SIGNAL \inst11|inst6~regout\ : std_logic;
SIGNAL \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ : std_logic;
SIGNAL \inst5|$00000|auto_generated|result_node[5]~12\ : std_logic;
SIGNAL \inst11|inst8~regout\ : std_logic;
SIGNAL \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUT\ : std_logic;
SIGNAL \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUTCOUT1_20\ : std_logic;
SIGNAL \inst5|$00000|auto_generated|result_node[6]~14\ : std_logic;
SIGNAL \inst11|inst7~regout\ : std_logic;
SIGNAL \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUT\ : std_logic;
SIGNAL \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUTCOUT1_22\ : std_logic;
SIGNAL \inst5|$00000|auto_generated|result_node[7]~9\ : std_logic;
SIGNAL \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUT\ : std_logic;
SIGNAL \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUTCOUT1_18\ : std_logic;
SIGNAL \inst12|inst9~regout\ : std_logic;
SIGNAL \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ : std_logic;
SIGNAL \inst12|inst8~regout\ : std_logic;
SIGNAL \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUT\ : std_logic;
SIGNAL \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUTCOUT1_20\ : std_logic;
SIGNAL \inst12|inst7~regout\ : std_logic;
SIGNAL \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUT\ : std_logic;
SIGNAL \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUTCOUT1_22\ : std_logic;
SIGNAL \inst12|inst6~regout\ : std_logic;
SIGNAL \inst13|inst6~regout\ : std_logic;
SIGNAL \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUT\ : std_logic;
SIGNAL \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUTCOUT1_18\ : std_logic;
SIGNAL \inst13|inst9~regout\ : std_logic;
SIGNAL \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ : std_logic;
SIGNAL \inst13|inst8~regout\ : std_logic;
SIGNAL \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUT\ : std_logic;
SIGNAL \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUTCOUT1_20\ : std_logic;
SIGNAL \inst13|inst7~regout\ : std_logic;
SIGNAL \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUT\ : std_logic;
SIGNAL \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUTCOUT1_22\ : std_logic;
SIGNAL \inst2|$00000|auto_generated|result_node[7]~18\ : std_logic;
SIGNAL \inst14|inst6~regout\ : std_logic;
SIGNAL \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUT\ : std_logic;
SIGNAL \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUTCOUT1_18\ : std_logic;
SIGNAL \inst2|$00000|auto_generated|result_node[4]~6\ : std_logic;
SIGNAL \inst14|inst9~regout\ : std_logic;
SIGNAL \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ : std_logic;
SIGNAL \inst2|$00000|auto_generated|result_node[5]~8\ : std_logic;
SIGNAL \inst14|inst8~regout\ : std_logic;
SIGNAL \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUT\ : std_logic;
SIGNAL \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUTCOUT1_20\ : std_logic;
SIGNAL \inst2|$00000|auto_generated|result_node[6]~20\ : std_logic;
SIGNAL \inst14|inst7~regout\ : std_logic;
SIGNAL \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUT\ : std_logic;
SIGNAL \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUTCOUT1_22\ : std_logic;
SIGNAL \inst2|$00000|auto_generated|result_node[7]~19\ : std_logic;
SIGNAL \inst3|$00000|auto_generated|result_node[7]~32_combout\ : std_logic;
SIGNAL \inst38|inst6~regout\ : std_logic;
SIGNAL \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUT\ : std_logic;
SIGNAL \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUTCOUT1_24\ : std_logic;
SIGNAL \inst9|inst5~regout\ : std_logic;
SIGNAL \inst10|inst5~regout\ : std_logic;
SIGNAL \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUT\ : std_logic;
SIGNAL \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUTCOUT1_24\ : std_logic;
SIGNAL \inst5|$00000|auto_generated|result_node[8]~10\ : std_logic;
SIGNAL \inst11|inst5~regout\ : std_logic;
SIGNAL \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUT\ : std_logic;
SIGNAL \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUTCOUT1_24\ : std_logic;
SIGNAL \inst5|$00000|auto_generated|result_node[8]~11\ : std_logic;
SIGNAL \inst24|LPM_COMPARE_component|auto_generated|aeb_int~2\ : std_logic;
SIGNAL \inst5|$00000|auto_generated|result_node[5]~13\ : std_logic;
SIGNAL \inst2|$00000|auto_generated|result_node[5]~9\ : std_logic;
SIGNAL \inst3|$00000|auto_generated|result_node[5]~22_combout\ : std_logic;
SIGNAL \inst38|inst8~regout\ : std_logic;
SIGNAL \inst5|$00000|auto_generated|result_node[6]~15\ : std_logic;
SIGNAL \inst24|LPM_COMPARE_component|auto_generated|aeb_int~3\ : std_logic;
SIGNAL \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUT\ : std_logic;
SIGNAL \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUTCOUT1_26\ : std_logic;
SIGNAL \inst9|inst4~regout\ : std_logic;
SIGNAL \inst10|inst4~regout\ : std_logic;
SIGNAL \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUT\ : std_logic;
SIGNAL \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUTCOUT1_26\ : std_logic;
SIGNAL \inst5|$00000|auto_generated|result_node[9]~4\ : std_logic;
SIGNAL \inst11|inst4~regout\ : std_logic;
SIGNAL \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUT\ : std_logic;
SIGNAL \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUTCOUT1_26\ : std_logic;
SIGNAL \inst5|$00000|auto_generated|result_node[9]~5\ : std_logic;
SIGNAL \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUT\ : std_logic;
SIGNAL \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUTCOUT1_24\ : std_logic;
SIGNAL \inst12|inst5~regout\ : std_logic;
SIGNAL \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUT\ : std_logic;
SIGNAL \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUTCOUT1_26\ : std_logic;
SIGNAL \inst12|inst4~regout\ : std_logic;
SIGNAL \inst13|inst4~regout\ : std_logic;
SIGNAL \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUT\ : std_logic;
SIGNAL \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUTCOUT1_24\ : std_logic;
SIGNAL \inst13|inst5~regout\ : std_logic;
SIGNAL \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUT\ : std_logic;
SIGNAL \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUTCOUT1_26\ : std_logic;
SIGNAL \inst2|$00000|auto_generated|result_node[9]~14\ : std_logic;
SIGNAL \inst14|inst4~regout\ : std_logic;
SIGNAL \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUT\ : std_logic;
SIGNAL \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUTCOUT1_24\ : std_logic;
SIGNAL \inst2|$00000|auto_generated|result_node[8]~16\ : std_logic;
SIGNAL \inst14|inst5~regout\ : std_logic;
SIGNAL \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUT\ : std_logic;
SIGNAL \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUTCOUT1_26\ : std_logic;
SIGNAL \inst2|$00000|auto_generated|result_node[9]~15\ : std_logic;
SIGNAL \inst3|$00000|auto_generated|result_node[9]~28_combout\ : std_logic;
SIGNAL \inst38|inst4~regout\ : std_logic;
SIGNAL \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\ : std_logic;
SIGNAL \inst9|inst3~regout\ : std_logic;
SIGNAL \inst10|inst3~regout\ : std_logic;
SIGNAL \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\ : std_logic;
SIGNAL \inst5|$00000|auto_generated|result_node[10]~6\ : std_logic;
SIGNAL \inst11|inst3~regout\ : std_logic;
SIGNAL \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\ : std_logic;
SIGNAL \inst5|$00000|auto_generated|result_node[10]~7\ : std_logic;
SIGNAL \inst24|LPM_COMPARE_component|auto_generated|aeb_int~1\ : std_logic;
SIGNAL \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\ : std_logic;
SIGNAL \inst12|inst3~regout\ : std_logic;
SIGNAL \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUT\ : std_logic;
SIGNAL \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUTCOUT1_28\ : std_logic;
SIGNAL \inst12|inst2~regout\ : std_logic;
SIGNAL \inst13|inst2~regout\ : std_logic;
SIGNAL \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\ : std_logic;
SIGNAL \inst13|inst3~regout\ : std_logic;
SIGNAL \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUT\ : std_logic;
SIGNAL \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUTCOUT1_28\ : std_logic;
SIGNAL \inst2|$00000|auto_generated|result_node[11]~10\ : std_logic;
SIGNAL \inst14|inst2~regout\ : std_logic;
SIGNAL \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\ : std_logic;
SIGNAL \inst2|$00000|auto_generated|result_node[10]~12\ : std_logic;
SIGNAL \inst14|inst3~regout\ : std_logic;
SIGNAL \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUT\ : std_logic;
SIGNAL \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUTCOUT1_28\ : std_logic;
SIGNAL \inst2|$00000|auto_generated|result_node[11]~11\ : std_logic;
SIGNAL \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUT\ : std_logic;
SIGNAL \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUTCOUT1_28\ : std_logic;
SIGNAL \inst9|inst2~regout\ : std_logic;
SIGNAL \inst10|inst2~regout\ : std_logic;
SIGNAL \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUT\ : std_logic;
SIGNAL \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUTCOUT1_28\ : std_logic;
SIGNAL \inst5|$00000|auto_generated|result_node[11]~0\ : std_logic;
SIGNAL \inst11|inst2~regout\ : std_logic;
SIGNAL \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUT\ : std_logic;
SIGNAL \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUTCOUT1_28\ : std_logic;
SIGNAL \inst5|$00000|auto_generated|result_node[11]~1\ : std_logic;
SIGNAL \inst3|$00000|auto_generated|result_node[11]~24_combout\ : std_logic;
SIGNAL \inst38|inst2~regout\ : std_logic;
SIGNAL \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUT\ : std_logic;
SIGNAL \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUTCOUT1_30\ : std_logic;
SIGNAL \inst9|inst1~regout\ : std_logic;
SIGNAL \inst10|inst1~regout\ : std_logic;
SIGNAL \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUT\ : std_logic;
SIGNAL \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUTCOUT1_30\ : std_logic;
SIGNAL \inst5|$00000|auto_generated|result_node[12]~2\ : std_logic;
SIGNAL \inst11|inst1~regout\ : std_logic;
SIGNAL \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUT\ : std_logic;
SIGNAL \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUTCOUT1_30\ : std_logic;
SIGNAL \inst5|$00000|auto_generated|result_node[12]~3\ : std_logic;
SIGNAL \inst24|LPM_COMPARE_component|auto_generated|aeb_int~0\ : std_logic;
SIGNAL \inst24|LPM_COMPARE_component|auto_generated|aeb_int~4_combout\ : std_logic;
SIGNAL \inst38|inst1~regout\ : std_logic;
SIGNAL \inst38|inst3~regout\ : std_logic;
SIGNAL \inst38|inst13~regout\ : std_logic;
SIGNAL \inst24|LPM_COMPARE_component|auto_generated|op_1~62_cout\ : std_logic;
SIGNAL \inst38|inst9~regout\ : std_logic;
SIGNAL \inst38|inst11~regout\ : std_logic;
SIGNAL \inst24|LPM_COMPARE_component|auto_generated|op_1~57_cout0\ : std_logic;
SIGNAL \inst24|LPM_COMPARE_component|auto_generated|op_1~57COUT1_76\ : std_logic;
SIGNAL \inst24|LPM_COMPARE_component|auto_generated|op_1~52_cout0\ : std_logic;
SIGNAL \inst24|LPM_COMPARE_component|auto_generated|op_1~52COUT1_78\ : std_logic;
SIGNAL \inst24|LPM_COMPARE_component|auto_generated|op_1~47_cout0\ : std_logic;
SIGNAL \inst24|LPM_COMPARE_component|auto_generated|op_1~47COUT1_80\ : std_logic;
SIGNAL \inst24|LPM_COMPARE_component|auto_generated|op_1~42_cout0\ : std_logic;
SIGNAL \inst24|LPM_COMPARE_component|auto_generated|op_1~42COUT1_82\ : std_logic;
SIGNAL \inst24|LPM_COMPARE_component|auto_generated|op_1~37_cout\ : std_logic;
SIGNAL \inst38|inst5~regout\ : std_logic;
SIGNAL \inst38|inst7~regout\ : std_logic;
SIGNAL \inst24|LPM_COMPARE_component|auto_generated|op_1~32_cout0\ : std_logic;
SIGNAL \inst24|LPM_COMPARE_component|auto_generated|op_1~32COUT1_84\ : std_logic;
SIGNAL \inst24|LPM_COMPARE_component|auto_generated|op_1~27_cout0\ : std_logic;
SIGNAL \inst24|LPM_COMPARE_component|auto_generated|op_1~27COUT1_86\ : std_logic;
SIGNAL \inst24|LPM_COMPARE_component|auto_generated|op_1~22_cout0\ : std_logic;
SIGNAL \inst24|LPM_COMPARE_component|auto_generated|op_1~22COUT1_88\ : std_logic;
SIGNAL \inst24|LPM_COMPARE_component|auto_generated|op_1~17_cout0\ : std_logic;
SIGNAL \inst24|LPM_COMPARE_component|auto_generated|op_1~17COUT1_90\ : std_logic;
SIGNAL \inst24|LPM_COMPARE_component|auto_generated|op_1~12_cout\ : std_logic;
SIGNAL \inst24|LPM_COMPARE_component|auto_generated|op_1~7_cout0\ : std_logic;
SIGNAL \inst24|LPM_COMPARE_component|auto_generated|op_1~7COUT1_92\ : std_logic;
SIGNAL \inst24|LPM_COMPARE_component|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \inst44~regout\ : std_logic;
SIGNAL \inst34|WideOr0\ : std_logic;
SIGNAL \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUT\ : std_logic;
SIGNAL \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUTCOUT1_30\ : std_logic;
SIGNAL \inst12|inst1~regout\ : std_logic;
SIGNAL \inst13|inst1~regout\ : std_logic;
SIGNAL \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUT\ : std_logic;
SIGNAL \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUTCOUT1_30\ : std_logic;
SIGNAL \inst2|$00000|auto_generated|result_node[12]~0\ : std_logic;
SIGNAL \inst14|inst1~regout\ : std_logic;
SIGNAL \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUT\ : std_logic;
SIGNAL \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUTCOUT1_30\ : std_logic;
SIGNAL \inst2|$00000|auto_generated|result_node[12]~1\ : std_logic;
SIGNAL \inst2|$00000|auto_generated|result_node[10]~13\ : std_logic;
SIGNAL \inst2|$00000|auto_generated|result_node[0]~25\ : std_logic;
SIGNAL \inst23|LPM_COMPARE_component|auto_generated|op_1~62_cout\ : std_logic;
SIGNAL \inst2|$00000|auto_generated|result_node[4]~7\ : std_logic;
SIGNAL \inst2|$00000|auto_generated|result_node[2]~3\ : std_logic;
SIGNAL \inst23|LPM_COMPARE_component|auto_generated|op_1~57_cout0\ : std_logic;
SIGNAL \inst23|LPM_COMPARE_component|auto_generated|op_1~57COUT1_76\ : std_logic;
SIGNAL \inst23|LPM_COMPARE_component|auto_generated|op_1~52_cout0\ : std_logic;
SIGNAL \inst23|LPM_COMPARE_component|auto_generated|op_1~52COUT1_78\ : std_logic;
SIGNAL \inst23|LPM_COMPARE_component|auto_generated|op_1~47_cout0\ : std_logic;
SIGNAL \inst23|LPM_COMPARE_component|auto_generated|op_1~47COUT1_80\ : std_logic;
SIGNAL \inst23|LPM_COMPARE_component|auto_generated|op_1~42_cout0\ : std_logic;
SIGNAL \inst23|LPM_COMPARE_component|auto_generated|op_1~42COUT1_82\ : std_logic;
SIGNAL \inst23|LPM_COMPARE_component|auto_generated|op_1~37_cout\ : std_logic;
SIGNAL \inst2|$00000|auto_generated|result_node[8]~17\ : std_logic;
SIGNAL \inst2|$00000|auto_generated|result_node[6]~21\ : std_logic;
SIGNAL \inst23|LPM_COMPARE_component|auto_generated|op_1~32_cout0\ : std_logic;
SIGNAL \inst23|LPM_COMPARE_component|auto_generated|op_1~32COUT1_84\ : std_logic;
SIGNAL \inst23|LPM_COMPARE_component|auto_generated|op_1~27_cout0\ : std_logic;
SIGNAL \inst23|LPM_COMPARE_component|auto_generated|op_1~27COUT1_86\ : std_logic;
SIGNAL \inst23|LPM_COMPARE_component|auto_generated|op_1~22_cout0\ : std_logic;
SIGNAL \inst23|LPM_COMPARE_component|auto_generated|op_1~22COUT1_88\ : std_logic;
SIGNAL \inst23|LPM_COMPARE_component|auto_generated|op_1~17_cout0\ : std_logic;
SIGNAL \inst23|LPM_COMPARE_component|auto_generated|op_1~17COUT1_90\ : std_logic;
SIGNAL \inst23|LPM_COMPARE_component|auto_generated|op_1~12_cout\ : std_logic;
SIGNAL \inst23|LPM_COMPARE_component|auto_generated|op_1~7_cout0\ : std_logic;
SIGNAL \inst23|LPM_COMPARE_component|auto_generated|op_1~7COUT1_92\ : std_logic;
SIGNAL \inst45~regout\ : std_logic;
SIGNAL \inst3|$00000|auto_generated|result_node[12]~13_combout\ : std_logic;
SIGNAL \inst3|$00000|auto_generated|result_node[12]~14_combout\ : std_logic;
SIGNAL \inst57|adder|adder|cin_node~0_combout\ : std_logic;
SIGNAL \inst3|$00000|auto_generated|result_node[2]~16_combout\ : std_logic;
SIGNAL \inst3|$00000|auto_generated|result_node[2]~17_combout\ : std_logic;
SIGNAL \inst57|adder|adder|cin_node\ : std_logic;
SIGNAL \inst3|$00000|auto_generated|result_node[1]~38\ : std_logic;
SIGNAL \inst3|$00000|auto_generated|result_node[0]~39_combout\ : std_logic;
SIGNAL \inst3|$00000|auto_generated|result_node[0]~40_combout\ : std_logic;
SIGNAL \inst57|adder|adder|result_node|cout[0]~COUT1_11\ : std_logic;
SIGNAL \inst57|adder|adder|result_node|cout[1]~COUT1_13\ : std_logic;
SIGNAL \inst3|$00000|auto_generated|result_node[3]~19\ : std_logic;
SIGNAL \inst57|adder|adder|result_node|cout[2]~COUT1_15\ : std_logic;
SIGNAL \inst83v4|Mux1~0_combout\ : std_logic;
SIGNAL \inst83v4|Mux2~0_combout\ : std_logic;
SIGNAL \inst83v4|Mux3~0_combout\ : std_logic;
SIGNAL \inst83v4|Mux6~0_combout\ : std_logic;
SIGNAL \inst3|$00000|auto_generated|result_node[7]~33\ : std_logic;
SIGNAL \inst3|$00000|auto_generated|result_node[4]~20_combout\ : std_logic;
SIGNAL \inst3|$00000|auto_generated|result_node[4]~21_combout\ : std_logic;
SIGNAL \inst57|adder|adder|result_node|cout[3]~COUT1_17\ : std_logic;
SIGNAL \inst3|$00000|auto_generated|result_node[6]~34_combout\ : std_logic;
SIGNAL \inst3|$00000|auto_generated|result_node[6]~35_combout\ : std_logic;
SIGNAL \inst3|$00000|auto_generated|result_node[5]~23\ : std_logic;
SIGNAL \inst57|adder|adder|result_node|cout[5]~COUT1_19\ : std_logic;
SIGNAL \inst57|adder|adder|result_node|cout[6]~COUT1_21\ : std_logic;
SIGNAL \inst3|$00000|auto_generated|result_node[8]~30_combout\ : std_logic;
SIGNAL \inst3|$00000|auto_generated|result_node[8]~31_combout\ : std_logic;
SIGNAL \inst57|adder|adder|result_node|cout[7]~COUT1_23\ : std_logic;
SIGNAL \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~COUT\ : std_logic;
SIGNAL \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~COUTCOUT1_10\ : std_logic;
SIGNAL \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~4\ : std_logic;
SIGNAL \inst3|$00000|auto_generated|result_node[10]~26_combout\ : std_logic;
SIGNAL \inst3|$00000|auto_generated|result_node[10]~27_combout\ : std_logic;
SIGNAL \inst3|$00000|auto_generated|result_node[9]~29\ : std_logic;
SIGNAL \inst57|adder|adder|result_node|cout[8]~COUT1_25\ : std_logic;
SIGNAL \inst3|$00000|auto_generated|result_node[11]~25\ : std_logic;
SIGNAL \inst57|adder|adder|result_node|cout[10]~COUT1_27\ : std_logic;
SIGNAL \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~COUT\ : std_logic;
SIGNAL \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~COUTCOUT1_10\ : std_logic;
SIGNAL \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~4\ : std_logic;
SIGNAL \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[18]~0_combout\ : std_logic;
SIGNAL \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[17]~2_combout\ : std_logic;
SIGNAL \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~0_combout\ : std_logic;
SIGNAL \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[16]~1_combout\ : std_logic;
SIGNAL \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[22]~4_combout\ : std_logic;
SIGNAL \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\ : std_logic;
SIGNAL \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5|add_sub_cella[1]~COUT\ : std_logic;
SIGNAL \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5|add_sub_cella[1]~COUTCOUT1_11\ : std_logic;
SIGNAL \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5|add_sub_cella[1]~5\ : std_logic;
SIGNAL \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\ : std_logic;
SIGNAL \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[21]~3_combout\ : std_logic;
SIGNAL \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~1_combout\ : std_logic;
SIGNAL \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[26]~5_combout\ : std_logic;
SIGNAL \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0_combout\ : std_logic;
SIGNAL \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[27]~6_combout\ : std_logic;
SIGNAL \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6|add_sub_cella[1]~COUT\ : std_logic;
SIGNAL \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6|add_sub_cella[1]~COUTCOUT1_11\ : std_logic;
SIGNAL \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6|add_sub_cella[1]~5\ : std_logic;
SIGNAL \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~0_combout\ : std_logic;
SIGNAL \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7|add_sub_cella[1]~COUT\ : std_logic;
SIGNAL \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7|add_sub_cella[1]~COUTCOUT1_11\ : std_logic;
SIGNAL \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7|add_sub_cella[1]~5\ : std_logic;
SIGNAL \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[32]~7_combout\ : std_logic;
SIGNAL \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~1_combout\ : std_logic;
SIGNAL \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[31]~8_combout\ : std_logic;
SIGNAL \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[37]~10_combout\ : std_logic;
SIGNAL \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~1_combout\ : std_logic;
SIGNAL \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[36]~9_combout\ : std_logic;
SIGNAL \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[38]~11_combout\ : std_logic;
SIGNAL \inst82ds|Mux0~0_combout\ : std_logic;
SIGNAL \inst82ds|Mux1~0_combout\ : std_logic;
SIGNAL \inst82ds|Mux2~0_combout\ : std_logic;
SIGNAL \inst82ds|Mux3~0_combout\ : std_logic;
SIGNAL \inst82ds|Mux4~0_combout\ : std_logic;
SIGNAL \inst82ds|Mux5~0_combout\ : std_logic;
SIGNAL \inst82ds|Mux6~0_combout\ : std_logic;
SIGNAL \inst80sa|Mux0~0_combout\ : std_logic;
SIGNAL \inst80sa|Mux1~0_combout\ : std_logic;
SIGNAL \inst80sa|Mux2~0_combout\ : std_logic;
SIGNAL \inst80sa|Mux3~0_combout\ : std_logic;
SIGNAL \inst80sa|Mux4~0_combout\ : std_logic;
SIGNAL \inst80sa|Mux5~0_combout\ : std_logic;
SIGNAL \inst80sa|Mux6~0_combout\ : std_logic;
SIGNAL \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5|add_sub_cella\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst57|adder|adder|result_node|cout\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst57|adder|adder|result_node|cs_buffer\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7|add_sub_cella\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3|add_sub_cella\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4|add_sub_cella\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6|add_sub_cella\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst6|LPM_SHIFTREG_component|dffs\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \ALT_INV_inst51~regout\ : std_logic;
SIGNAL \ALT_INV_Passive~combout\ : std_logic;
SIGNAL \ALT_INV_Night~combout\ : std_logic;
SIGNAL \ALT_INV_Day~combout\ : std_logic;
SIGNAL \inst80sa|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \inst80sa|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \inst80sa|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \inst80sa|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \inst80sa|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \inst80sa|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst82ds|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \inst82ds|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \inst82ds|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \inst82ds|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \inst82ds|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \inst82ds|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst57|adder|adder|result_node|ALT_INV_cs_buffer\ : std_logic_vector(3 DOWNTO 2);
SIGNAL \inst34|ALT_INV_freezeParalell\ : std_logic;
SIGNAL \inst34|ALT_INV_WideOr0\ : std_logic;

BEGIN

Heat <= ww_Heat;
ww_RTC <= RTC;
ww_Passive <= Passive;
ww_Night <= Night;
ww_Day <= Day;
ww_Hiset <= Hiset;
ww_Inc <= Inc;
ww_Dec <= Dec;
Mof32 <= ww_Mof32;
ww_Dout <= Dout;
SCL <= ww_SCL;
CS <= ww_CS;
fbc0 <= ww_fbc0;
fbc1 <= ww_fbc1;
fbc3 <= ww_fbc3;
fbc4 <= ww_fbc4;
fbc2 <= ww_fbc2;
Din <= ww_Din;
FreezeReg <= ww_FreezeReg;
Cool <= ww_Cool;
sevsegSign <= ww_sevsegSign;
ww_hiTrueSetDisp <= hiTrueSetDisp;
externalTemp <= ww_externalTemp;
frac <= ww_frac;
LS <= ww_LS;
MS <= ww_MS;
ww_fbctestclk <= fbctestclk;
ww_fbctestrestart <= fbctestrestart;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_inst51~regout\ <= NOT \inst51~regout\;
\ALT_INV_Passive~combout\ <= NOT \Passive~combout\;
\ALT_INV_Night~combout\ <= NOT \Night~combout\;
\ALT_INV_Day~combout\ <= NOT \Day~combout\;
\inst80sa|ALT_INV_Mux5~0_combout\ <= NOT \inst80sa|Mux5~0_combout\;
\inst80sa|ALT_INV_Mux4~0_combout\ <= NOT \inst80sa|Mux4~0_combout\;
\inst80sa|ALT_INV_Mux3~0_combout\ <= NOT \inst80sa|Mux3~0_combout\;
\inst80sa|ALT_INV_Mux2~0_combout\ <= NOT \inst80sa|Mux2~0_combout\;
\inst80sa|ALT_INV_Mux1~0_combout\ <= NOT \inst80sa|Mux1~0_combout\;
\inst80sa|ALT_INV_Mux0~0_combout\ <= NOT \inst80sa|Mux0~0_combout\;
\inst82ds|ALT_INV_Mux5~0_combout\ <= NOT \inst82ds|Mux5~0_combout\;
\inst82ds|ALT_INV_Mux4~0_combout\ <= NOT \inst82ds|Mux4~0_combout\;
\inst82ds|ALT_INV_Mux3~0_combout\ <= NOT \inst82ds|Mux3~0_combout\;
\inst82ds|ALT_INV_Mux2~0_combout\ <= NOT \inst82ds|Mux2~0_combout\;
\inst82ds|ALT_INV_Mux1~0_combout\ <= NOT \inst82ds|Mux1~0_combout\;
\inst82ds|ALT_INV_Mux0~0_combout\ <= NOT \inst82ds|Mux0~0_combout\;
\inst57|adder|adder|result_node|ALT_INV_cs_buffer\(3) <= NOT \inst57|adder|adder|result_node|cs_buffer\(3);
\inst57|adder|adder|result_node|ALT_INV_cs_buffer\(2) <= NOT \inst57|adder|adder|result_node|cs_buffer\(2);
\inst34|ALT_INV_freezeParalell\ <= NOT \inst34|freezeParalell\;
\inst34|ALT_INV_WideOr0\ <= NOT \inst34|WideOr0\;

-- Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RTC~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_RTC,
	combout => \RTC~combout\);

-- Location: LC_X12_Y7_N4
\inst22|inst\ : maxv_lcell
-- Equation(s):
-- \inst22|inst~regout\ = DFFEAS((((!\inst22|inst~regout\))), GLOBAL(\RTC~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datac => \inst22|inst~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst22|inst~regout\);

-- Location: LC_X11_Y7_N8
\inst22|inst1\ : maxv_lcell
-- Equation(s):
-- \inst22|inst1~regout\ = DFFEAS((((!\inst22|inst1~regout\))), \inst22|inst~regout\, VCC, , , , , , )

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
	clk => \inst22|inst~regout\,
	datad => \inst22|inst1~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst22|inst1~regout\);

-- Location: LC_X11_Y7_N9
\inst22|inst2\ : maxv_lcell
-- Equation(s):
-- \inst22|inst2~regout\ = DFFEAS((((!\inst22|inst2~regout\))), \inst22|inst1~regout\, VCC, , , , , , )

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
	clk => \inst22|inst1~regout\,
	datad => \inst22|inst2~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst22|inst2~regout\);

-- Location: LC_X10_Y7_N6
\inst22|inst3\ : maxv_lcell
-- Equation(s):
-- \inst22|inst3~regout\ = DFFEAS((((!\inst22|inst3~regout\))), \inst22|inst2~regout\, VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst22|inst2~regout\,
	datac => \inst22|inst3~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst22|inst3~regout\);

-- Location: LC_X10_Y7_N5
\inst22|inst4\ : maxv_lcell
-- Equation(s):
-- \inst22|inst4~regout\ = DFFEAS((((!\inst22|inst4~regout\))), \inst22|inst3~regout\, VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst22|inst3~regout\,
	datac => \inst22|inst4~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst22|inst4~regout\);

-- Location: LC_X9_Y7_N7
\inst22|inst7\ : maxv_lcell
-- Equation(s):
-- \inst22|inst7~regout\ = DFFEAS((((!\inst22|inst7~regout\))), \inst22|inst4~regout\, VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst22|inst4~regout\,
	datac => \inst22|inst7~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst22|inst7~regout\);

-- Location: LC_X10_Y7_N8
\inst36~0\ : maxv_lcell
-- Equation(s):
-- \inst36~0_combout\ = (\inst22|inst3~regout\) # ((\inst22|inst2~regout\) # ((\inst22|inst4~regout\) # (\inst22|inst1~regout\)))

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
	dataa => \inst22|inst3~regout\,
	datab => \inst22|inst2~regout\,
	datac => \inst22|inst4~regout\,
	datad => \inst22|inst1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst36~0_combout\);

-- Location: LC_X9_Y7_N4
\inst22|inst8\ : maxv_lcell
-- Equation(s):
-- \inst22|inst8~regout\ = DFFEAS((((!\inst22|inst8~regout\))), \inst22|inst7~regout\, VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst22|inst7~regout\,
	datac => \inst22|inst8~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst22|inst8~regout\);

-- Location: LC_X9_Y7_N9
inst36 : maxv_lcell
-- Equation(s):
-- \inst36~combout\ = LCELL((!\inst22|inst7~regout\ & (!\inst36~0_combout\ & (!\inst22|inst8~regout\ & !\inst22|inst~regout\))))

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
	dataa => \inst22|inst7~regout\,
	datab => \inst36~0_combout\,
	datac => \inst22|inst8~regout\,
	datad => \inst22|inst~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst36~combout\);

-- Location: PIN_35,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Passive~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Passive,
	combout => \Passive~combout\);

-- Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Day~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Day,
	combout => \Day~combout\);

-- Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Night~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Night,
	combout => \Night~combout\);

-- Location: LC_X5_Y5_N5
\inst55~0\ : maxv_lcell
-- Equation(s):
-- \inst55~0_combout\ = ((!\Day~combout\ & (!\Night~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0303",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Day~combout\,
	datac => \Night~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst55~0_combout\);

-- Location: LC_X5_Y7_N3
inst47 : maxv_lcell
-- Equation(s):
-- \inst47~regout\ = DFFEAS((((\inst47~regout\))), GLOBAL(\RTC~combout\), \Passive~combout\, , , VCC, \inst55~0_combout\, , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datac => VCC,
	datad => \inst47~regout\,
	aclr => \ALT_INV_Passive~combout\,
	aload => \inst55~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst47~regout\);

-- Location: LC_X4_Y5_N6
inst49 : maxv_lcell
-- Equation(s):
-- \inst49~regout\ = DFFEAS((((\inst49~regout\))), GLOBAL(\RTC~combout\), \Day~combout\, , , VCC, !\Night~combout\, , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datac => VCC,
	datad => \inst49~regout\,
	aclr => \ALT_INV_Day~combout\,
	aload => \ALT_INV_Night~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst49~regout\);

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Inc~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Inc,
	combout => \Inc~combout\);

-- Location: LC_X2_Y7_N0
\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]\ : maxv_lcell
-- Equation(s):
-- \inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(0) = VCC $ \Inc~combout\ $ (\inst9|inst13~regout\ $ ((!\Inc~combout\)))
-- \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUT\ = CARRY((VCC $ \Inc~combout\ & ((\inst9|inst13~regout\) # (!\Inc~combout\))) # (!VCC $ \Inc~combout\ & (\inst9|inst13~regout\ & !\Inc~combout\)))
-- \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUTCOUT1_12\ = CARRY((VCC $ \Inc~combout\ & ((\inst9|inst13~regout\) # (!\Inc~combout\))) # (!VCC $ \Inc~combout\ & (\inst9|inst13~regout\ & !\Inc~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "698e",
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
	cout1 => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUTCOUT1_12\);

-- Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Hiset~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Hiset,
	combout => \Hiset~combout\);

-- Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Dec~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Dec,
	combout => \Dec~combout\);

-- Location: LC_X7_Y7_N3
\inst11|inst16\ : maxv_lcell
-- Equation(s):
-- \inst11|inst16~combout\ = (((\Inc~combout\) # (\Dec~combout\)))

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
	datac => \Inc~combout\,
	datad => \Dec~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst11|inst16~combout\);

-- Location: LC_X4_Y7_N7
\inst9|inst1~0\ : maxv_lcell
-- Equation(s):
-- \inst9|inst1~0_combout\ = (!\Hiset~combout\ & (\inst11|inst16~combout\ & (\inst47~regout\ & !\inst49~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0040",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Hiset~combout\,
	datab => \inst11|inst16~combout\,
	datac => \inst47~regout\,
	datad => \inst49~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst9|inst1~0_combout\);

-- Location: LC_X3_Y7_N9
\inst9|inst13\ : maxv_lcell
-- Equation(s):
-- \inst9|inst13~regout\ = DFFEAS((((\inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(0)))), GLOBAL(\RTC~combout\), VCC, , \inst9|inst1~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datad => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(0),
	aclr => GND,
	ena => \inst9|inst1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst13~regout\);

-- Location: LC_X4_Y7_N3
\inst10|inst1~0\ : maxv_lcell
-- Equation(s):
-- \inst10|inst1~0_combout\ = (!\Hiset~combout\ & (\inst11|inst16~combout\ & (\inst47~regout\ & \inst49~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Hiset~combout\,
	datab => \inst11|inst16~combout\,
	datac => \inst47~regout\,
	datad => \inst49~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst10|inst1~0_combout\);

-- Location: LC_X3_Y6_N2
\inst10|inst13\ : maxv_lcell
-- Equation(s):
-- \inst5|$00000|auto_generated|result_node[0]~24\ = ((\inst49~regout\ & (E2_inst13)) # (!\inst49~regout\ & ((\inst9|inst13~regout\))))
-- \inst10|inst13~regout\ = DFFEAS(\inst5|$00000|auto_generated|result_node[0]~24\, GLOBAL(\RTC~combout\), VCC, , \inst10|inst1~0_combout\, \inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datab => \inst49~regout\,
	datac => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(0),
	datad => \inst9|inst13~regout\,
	aclr => GND,
	sload => VCC,
	ena => \inst10|inst1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst5|$00000|auto_generated|result_node[0]~24\,
	regout => \inst10|inst13~regout\);

-- Location: LC_X3_Y4_N0
\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]\ : maxv_lcell
-- Equation(s):
-- \inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(0) = VCC $ \Inc~combout\ $ (\inst10|inst13~regout\ $ ((!\Inc~combout\)))
-- \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUT\ = CARRY((VCC $ \Inc~combout\ & ((\inst10|inst13~regout\) # (!\Inc~combout\))) # (!VCC $ \Inc~combout\ & (\inst10|inst13~regout\ & !\Inc~combout\)))
-- \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUTCOUT1_12\ = CARRY((VCC $ \Inc~combout\ & ((\inst10|inst13~regout\) # (!\Inc~combout\))) # (!VCC $ \Inc~combout\ & (\inst10|inst13~regout\ & !\Inc~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "698e",
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
	cout1 => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUTCOUT1_12\);

-- Location: LC_X4_Y7_N6
\inst11|inst1~0\ : maxv_lcell
-- Equation(s):
-- \inst11|inst1~0_combout\ = (!\Hiset~combout\ & (!\inst47~regout\ & ((\Inc~combout\) # (\Dec~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0054",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Hiset~combout\,
	datab => \Inc~combout\,
	datac => \Dec~combout\,
	datad => \inst47~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst11|inst1~0_combout\);

-- Location: LC_X3_Y6_N3
\inst11|inst13\ : maxv_lcell
-- Equation(s):
-- \inst5|$00000|auto_generated|result_node[0]~25\ = ((\inst47~regout\ & ((\inst5|$00000|auto_generated|result_node[0]~24\))) # (!\inst47~regout\ & (E3_inst13)))
-- \inst11|inst13~regout\ = DFFEAS(\inst5|$00000|auto_generated|result_node[0]~25\, GLOBAL(\RTC~combout\), VCC, , \inst11|inst1~0_combout\, \inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datab => \inst47~regout\,
	datac => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(0),
	datad => \inst5|$00000|auto_generated|result_node[0]~24\,
	aclr => GND,
	sload => VCC,
	ena => \inst11|inst1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst5|$00000|auto_generated|result_node[0]~25\,
	regout => \inst11|inst13~regout\);

-- Location: LC_X3_Y5_N0
\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]\ : maxv_lcell
-- Equation(s):
-- \inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(0) = VCC $ \Inc~combout\ $ (\inst11|inst13~regout\ $ ((!\Inc~combout\)))
-- \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUT\ = CARRY((VCC $ \Inc~combout\ & ((\inst11|inst13~regout\) # (!\Inc~combout\))) # (!VCC $ \Inc~combout\ & (\inst11|inst13~regout\ & !\Inc~combout\)))
-- \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUTCOUT1_12\ = CARRY((VCC $ \Inc~combout\ & ((\inst11|inst13~regout\) # (!\Inc~combout\))) # (!VCC $ \Inc~combout\ & (\inst11|inst13~regout\ & !\Inc~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "698e",
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
	cout1 => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUTCOUT1_12\);

-- Location: LC_X5_Y5_N0
inst55 : maxv_lcell
-- Equation(s):
-- \inst55~combout\ = ((!\Day~combout\ & (!\Night~combout\ & !\Passive~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0003",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Day~combout\,
	datac => \Night~combout\,
	datad => \Passive~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst55~combout\);

-- Location: LC_X8_Y7_N4
inst54 : maxv_lcell
-- Equation(s):
-- \inst54~regout\ = DFFEAS((((!\inst55~combout\))), GLOBAL(\RTC~combout\), VCC, , , , , , )

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
	clk => \RTC~combout\,
	datad => \inst55~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst54~regout\);

-- Location: LC_X8_Y7_N2
inst53 : maxv_lcell
-- Equation(s):
-- \inst53~regout\ = DFFEAS(GND, GLOBAL(\RTC~combout\), !GLOBAL(\inst55~combout\), , , \inst54~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datac => \inst54~regout\,
	aclr => \inst55~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst53~regout\);

-- Location: LC_X7_Y7_N7
inst52 : maxv_lcell
-- Equation(s):
-- \inst52~regout\ = DFFEAS(GND, GLOBAL(\RTC~combout\), !GLOBAL(\inst55~combout\), , , \inst53~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datac => \inst53~regout\,
	aclr => \inst55~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst52~regout\);

-- Location: LC_X7_Y7_N6
inst51 : maxv_lcell
-- Equation(s):
-- \inst51~regout\ = DFFEAS(GND, GLOBAL(\RTC~combout\), !GLOBAL(\inst55~combout\), , , \inst52~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datac => \inst52~regout\,
	aclr => \inst55~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst51~regout\);

-- Location: LC_X7_Y7_N8
inst50 : maxv_lcell
-- Equation(s):
-- \inst50~regout\ = DFFEAS((((\inst50~regout\))), GLOBAL(\RTC~combout\), \inst51~regout\, , , VCC, GLOBAL(\inst55~combout\), , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datac => VCC,
	datad => \inst50~regout\,
	aclr => \ALT_INV_inst51~regout\,
	aload => \inst55~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst50~regout\);

-- Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Dout~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Dout,
	combout => \Dout~combout\);

-- Location: LC_X12_Y3_N3
\inst15|inst\ : maxv_lcell
-- Equation(s):
-- \inst15|inst~regout\ = DFFEAS((((!\inst15|inst~regout\))), GLOBAL(\RTC~combout\), VCC, , , , , , )

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
	clk => \RTC~combout\,
	datad => \inst15|inst~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst15|inst~regout\);

-- Location: LC_X10_Y3_N4
\inst15|inst1\ : maxv_lcell
-- Equation(s):
-- \inst15|inst1~regout\ = DFFEAS((((!\inst15|inst1~regout\))), \inst15|inst~regout\, VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst15|inst~regout\,
	datac => \inst15|inst1~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst15|inst1~regout\);

-- Location: LC_X10_Y3_N9
\inst15|inst2\ : maxv_lcell
-- Equation(s):
-- \inst15|inst2~regout\ = DFFEAS((((!\inst15|inst2~regout\))), \inst15|inst1~regout\, VCC, , , , , , )

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
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst15|inst2~regout\);

-- Location: LC_X11_Y3_N8
\inst15|inst3\ : maxv_lcell
-- Equation(s):
-- \inst15|inst3~regout\ = DFFEAS((((!\inst15|inst3~regout\))), \inst15|inst2~regout\, VCC, , , , , , )

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
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst15|inst3~regout\);

-- Location: LC_X11_Y3_N6
\inst15|inst4\ : maxv_lcell
-- Equation(s):
-- \inst15|inst4~regout\ = DFFEAS((((!\inst15|inst4~regout\))), \inst15|inst3~regout\, VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst15|inst3~regout\,
	datac => \inst15|inst4~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst15|inst4~regout\);

-- Location: LC_X11_Y3_N9
\inst17~0\ : maxv_lcell
-- Equation(s):
-- \inst17~0_combout\ = (((!\inst15|inst4~regout\ & !\inst15|inst3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
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

-- Location: LC_X10_Y3_N5
inst17 : maxv_lcell
-- Equation(s):
-- \inst17~combout\ = (!\inst15|inst1~regout\ & (!\inst15|inst2~regout\ & (\inst17~0_combout\ & !\inst15|inst~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|inst1~regout\,
	datab => \inst15|inst2~regout\,
	datac => \inst17~0_combout\,
	datad => \inst15|inst~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst17~combout\);

-- Location: LC_X12_Y4_N9
\inst34|fstate.Origin\ : maxv_lcell
-- Equation(s):
-- \inst34|fstate.Origin~regout\ = DFFEAS(VCC, GLOBAL(\RTC~combout\), !GLOBAL(\inst17~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	aclr => \inst17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst34|fstate.Origin~regout\);

-- Location: LC_X12_Y4_N7
\inst34|fstate.state1\ : maxv_lcell
-- Equation(s):
-- \inst34|fstate.state1~regout\ = DFFEAS((((!\inst34|fstate.Origin~regout\))), GLOBAL(\RTC~combout\), !GLOBAL(\inst17~combout\), , , , , , )

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
	clk => \RTC~combout\,
	datad => \inst34|fstate.Origin~regout\,
	aclr => \inst17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst34|fstate.state1~regout\);

-- Location: LC_X12_Y4_N3
\inst34|fstate.state2\ : maxv_lcell
-- Equation(s):
-- \inst34|WideOr0~0\ = (\inst34|fstate.state5~regout\) # ((\inst34|fstate.state4~regout\) # ((H1_fstate.state2) # (!\inst34|fstate.Origin~regout\)))
-- \inst34|fstate.state2~regout\ = DFFEAS(\inst34|WideOr0~0\, GLOBAL(\RTC~combout\), !GLOBAL(\inst17~combout\), , , \inst34|fstate.state1~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "feff",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	dataa => \inst34|fstate.state5~regout\,
	datab => \inst34|fstate.state4~regout\,
	datac => \inst34|fstate.state1~regout\,
	datad => \inst34|fstate.Origin~regout\,
	aclr => \inst17~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst34|WideOr0~0\,
	regout => \inst34|fstate.state2~regout\);

-- Location: LC_X12_Y4_N5
\inst34|fstate.state3\ : maxv_lcell
-- Equation(s):
-- \inst34|fstate.state3~regout\ = DFFEAS((((\inst34|fstate.state2~regout\))), GLOBAL(\RTC~combout\), !GLOBAL(\inst17~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datad => \inst34|fstate.state2~regout\,
	aclr => \inst17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst34|fstate.state3~regout\);

-- Location: LC_X12_Y4_N0
\inst34|fstate.state4\ : maxv_lcell
-- Equation(s):
-- \inst34|fstate.state4~regout\ = DFFEAS(GND, GLOBAL(\RTC~combout\), !GLOBAL(\inst17~combout\), , , \inst34|fstate.state3~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datac => \inst34|fstate.state3~regout\,
	aclr => \inst17~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst34|fstate.state4~regout\);

-- Location: LC_X12_Y4_N8
\inst34|fstate.state5\ : maxv_lcell
-- Equation(s):
-- \inst34|fstate.state5~regout\ = DFFEAS(GND, GLOBAL(\RTC~combout\), !GLOBAL(\inst17~combout\), , , \inst34|fstate.state4~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datac => \inst34|fstate.state4~regout\,
	aclr => \inst17~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst34|fstate.state5~regout\);

-- Location: LC_X12_Y4_N1
\inst34|fstate.state6\ : maxv_lcell
-- Equation(s):
-- \inst34|WideOr0\ = (\inst34|fstate.state7~regout\) # (((H1_fstate.state6) # (\inst34|WideOr0~0\)))
-- \inst34|fstate.state6~regout\ = DFFEAS(\inst34|WideOr0\, GLOBAL(\RTC~combout\), !GLOBAL(\inst17~combout\), , , \inst34|fstate.state5~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffa",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	dataa => \inst34|fstate.state7~regout\,
	datac => \inst34|fstate.state5~regout\,
	datad => \inst34|WideOr0~0\,
	aclr => \inst17~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst34|WideOr0\,
	regout => \inst34|fstate.state6~regout\);

-- Location: LC_X12_Y4_N4
\inst34|fstate.state7\ : maxv_lcell
-- Equation(s):
-- \inst34|fstate.state7~regout\ = DFFEAS((((\inst34|fstate.state6~regout\))), GLOBAL(\RTC~combout\), !GLOBAL(\inst17~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datad => \inst34|fstate.state6~regout\,
	aclr => \inst17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst34|fstate.state7~regout\);

-- Location: LC_X12_Y4_N2
\inst34|fstate.state8\ : maxv_lcell
-- Equation(s):
-- \inst34|fstate.state8~regout\ = DFFEAS(GND, GLOBAL(\RTC~combout\), !GLOBAL(\inst17~combout\), , , \inst34|fstate.state7~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datac => \inst34|fstate.state7~regout\,
	aclr => \inst17~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst34|fstate.state8~regout\);

-- Location: LC_X12_Y4_N6
\inst34|fstate.state9\ : maxv_lcell
-- Equation(s):
-- \inst34|fstate.state9~regout\ = DFFEAS((((\inst34|fstate.state8~regout\))), GLOBAL(\RTC~combout\), !GLOBAL(\inst17~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datad => \inst34|fstate.state8~regout\,
	aclr => \inst17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst34|fstate.state9~regout\);

-- Location: LC_X12_Y2_N5
\inst34|fstate.state10\ : maxv_lcell
-- Equation(s):
-- \inst34|fstate.state10~regout\ = DFFEAS(GND, GLOBAL(\RTC~combout\), !GLOBAL(\inst17~combout\), , , \inst34|fstate.state9~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datac => \inst34|fstate.state9~regout\,
	aclr => \inst17~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst34|fstate.state10~regout\);

-- Location: LC_X12_Y2_N6
\inst34|fstate.state11\ : maxv_lcell
-- Equation(s):
-- \inst34|fstate.state11~regout\ = DFFEAS(GND, GLOBAL(\RTC~combout\), !GLOBAL(\inst17~combout\), , , \inst34|fstate.state10~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datac => \inst34|fstate.state10~regout\,
	aclr => \inst17~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst34|fstate.state11~regout\);

-- Location: LC_X12_Y2_N4
\inst34|fstate.state12\ : maxv_lcell
-- Equation(s):
-- \inst34|fstate.state12~regout\ = DFFEAS(GND, GLOBAL(\RTC~combout\), !GLOBAL(\inst17~combout\), , , \inst34|fstate.state11~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datac => \inst34|fstate.state11~regout\,
	aclr => \inst17~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst34|fstate.state12~regout\);

-- Location: LC_X12_Y2_N8
\inst34|fstate.state13\ : maxv_lcell
-- Equation(s):
-- \inst34|fstate.state13~regout\ = DFFEAS(GND, GLOBAL(\RTC~combout\), !GLOBAL(\inst17~combout\), , , \inst34|fstate.state12~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datac => \inst34|fstate.state12~regout\,
	aclr => \inst17~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst34|fstate.state13~regout\);

-- Location: LC_X12_Y2_N9
\inst34|fstate.state14\ : maxv_lcell
-- Equation(s):
-- \inst34|fstate.state14~regout\ = DFFEAS((((\inst34|fstate.state13~regout\))), GLOBAL(\RTC~combout\), !GLOBAL(\inst17~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datad => \inst34|fstate.state13~regout\,
	aclr => \inst17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst34|fstate.state14~regout\);

-- Location: LC_X12_Y2_N2
\inst34|fstate.state15\ : maxv_lcell
-- Equation(s):
-- \inst34|fstate.state15~regout\ = DFFEAS((((\inst34|fstate.state14~regout\))), GLOBAL(\RTC~combout\), !GLOBAL(\inst17~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datad => \inst34|fstate.state14~regout\,
	aclr => \inst17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst34|fstate.state15~regout\);

-- Location: LC_X12_Y5_N6
\inst34|fstate.state16\ : maxv_lcell
-- Equation(s):
-- \inst34|fstate.state16~regout\ = DFFEAS(GND, GLOBAL(\RTC~combout\), !GLOBAL(\inst17~combout\), , , \inst34|fstate.state15~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datac => \inst34|fstate.state15~regout\,
	aclr => \inst17~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst34|fstate.state16~regout\);

-- Location: LC_X12_Y5_N4
\inst34|fstate.state17\ : maxv_lcell
-- Equation(s):
-- \inst34|fstate.state17~regout\ = DFFEAS(GND, GLOBAL(\RTC~combout\), !GLOBAL(\inst17~combout\), , , \inst34|fstate.state16~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datac => \inst34|fstate.state16~regout\,
	aclr => \inst17~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst34|fstate.state17~regout\);

-- Location: LC_X12_Y5_N8
\inst34|fstate.state18\ : maxv_lcell
-- Equation(s):
-- \inst34|fstate.state18~regout\ = DFFEAS(GND, GLOBAL(\RTC~combout\), !GLOBAL(\inst17~combout\), , , \inst34|fstate.state17~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datac => \inst34|fstate.state17~regout\,
	aclr => \inst17~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst34|fstate.state18~regout\);

-- Location: LC_X12_Y5_N9
\inst34|fstate.state19\ : maxv_lcell
-- Equation(s):
-- \inst34|fstate.state19~regout\ = DFFEAS((((\inst34|fstate.state18~regout\))), GLOBAL(\RTC~combout\), !GLOBAL(\inst17~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datad => \inst34|fstate.state18~regout\,
	aclr => \inst17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst34|fstate.state19~regout\);

-- Location: LC_X12_Y5_N5
\inst34|fstate.state20\ : maxv_lcell
-- Equation(s):
-- \inst34|fstate.state20~regout\ = DFFEAS((((\inst34|fstate.state19~regout\))), GLOBAL(\RTC~combout\), !GLOBAL(\inst17~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datad => \inst34|fstate.state19~regout\,
	aclr => \inst17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst34|fstate.state20~regout\);

-- Location: LC_X12_Y5_N2
\inst34|fstate.state21\ : maxv_lcell
-- Equation(s):
-- \inst34|fstate.state21~regout\ = DFFEAS(GND, GLOBAL(\RTC~combout\), !GLOBAL(\inst17~combout\), , , \inst34|fstate.state20~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datac => \inst34|fstate.state20~regout\,
	aclr => \inst17~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst34|fstate.state21~regout\);

-- Location: LC_X10_Y6_N4
\inst34|fstate.state22\ : maxv_lcell
-- Equation(s):
-- \inst34|fstate.state22~regout\ = DFFEAS(GND, GLOBAL(\RTC~combout\), !GLOBAL(\inst17~combout\), , , \inst34|fstate.state21~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datac => \inst34|fstate.state21~regout\,
	aclr => \inst17~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst34|fstate.state22~regout\);

-- Location: LC_X1_Y6_N2
\inst34|fstate.state24\ : maxv_lcell
-- Equation(s):
-- \inst34|fstate.state24~regout\ = DFFEAS((((\inst34|freezeParalell\))), GLOBAL(\RTC~combout\), !GLOBAL(\inst17~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datad => \inst34|freezeParalell\,
	aclr => \inst17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst34|fstate.state24~regout\);

-- Location: LC_X1_Y6_N1
\inst34|fstate.state23\ : maxv_lcell
-- Equation(s):
-- \inst34|freezeParalell\ = (((H1_fstate.state23) # (\inst34|fstate.state24~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datac => \inst34|fstate.state22~regout\,
	datad => \inst34|fstate.state24~regout\,
	aclr => \inst17~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst34|freezeParalell\,
	regout => \inst34|fstate.state23~regout\);

-- Location: LC_X1_Y6_N9
\inst6|LPM_SHIFTREG_component|dffs[0]\ : maxv_lcell
-- Equation(s):
-- \inst6|LPM_SHIFTREG_component|dffs\(0) = DFFEAS(GND, GLOBAL(\RTC~combout\), VCC, , !\inst34|freezeParalell\, \Dout~combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datac => \Dout~combout\,
	aclr => GND,
	sload => VCC,
	ena => \inst34|ALT_INV_freezeParalell\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|LPM_SHIFTREG_component|dffs\(0));

-- Location: LC_X1_Y6_N0
\inst6|LPM_SHIFTREG_component|dffs[1]\ : maxv_lcell
-- Equation(s):
-- \inst6|LPM_SHIFTREG_component|dffs\(1) = DFFEAS((((\inst6|LPM_SHIFTREG_component|dffs\(0)))), GLOBAL(\RTC~combout\), VCC, , !\inst34|freezeParalell\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datad => \inst6|LPM_SHIFTREG_component|dffs\(0),
	aclr => GND,
	ena => \inst34|ALT_INV_freezeParalell\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|LPM_SHIFTREG_component|dffs\(1));

-- Location: LC_X1_Y6_N4
\inst6|LPM_SHIFTREG_component|dffs[2]\ : maxv_lcell
-- Equation(s):
-- \inst6|LPM_SHIFTREG_component|dffs\(2) = DFFEAS(GND, GLOBAL(\RTC~combout\), VCC, , !\inst34|freezeParalell\, \inst6|LPM_SHIFTREG_component|dffs\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datac => \inst6|LPM_SHIFTREG_component|dffs\(1),
	aclr => GND,
	sload => VCC,
	ena => \inst34|ALT_INV_freezeParalell\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|LPM_SHIFTREG_component|dffs\(2));

-- Location: LC_X1_Y6_N6
\inst6|LPM_SHIFTREG_component|dffs[3]\ : maxv_lcell
-- Equation(s):
-- \inst6|LPM_SHIFTREG_component|dffs\(3) = DFFEAS(GND, GLOBAL(\RTC~combout\), VCC, , !\inst34|freezeParalell\, \inst6|LPM_SHIFTREG_component|dffs\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datac => \inst6|LPM_SHIFTREG_component|dffs\(2),
	aclr => GND,
	sload => VCC,
	ena => \inst34|ALT_INV_freezeParalell\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|LPM_SHIFTREG_component|dffs\(3));

-- Location: LC_X1_Y6_N8
\inst6|LPM_SHIFTREG_component|dffs[4]\ : maxv_lcell
-- Equation(s):
-- \inst6|LPM_SHIFTREG_component|dffs\(4) = DFFEAS(GND, GLOBAL(\RTC~combout\), VCC, , !\inst34|freezeParalell\, \inst6|LPM_SHIFTREG_component|dffs\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datac => \inst6|LPM_SHIFTREG_component|dffs\(3),
	aclr => GND,
	sload => VCC,
	ena => \inst34|ALT_INV_freezeParalell\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|LPM_SHIFTREG_component|dffs\(4));

-- Location: LC_X1_Y6_N3
\inst6|LPM_SHIFTREG_component|dffs[5]\ : maxv_lcell
-- Equation(s):
-- \inst6|LPM_SHIFTREG_component|dffs\(5) = DFFEAS((((\inst6|LPM_SHIFTREG_component|dffs\(4)))), GLOBAL(\RTC~combout\), VCC, , !\inst34|freezeParalell\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datad => \inst6|LPM_SHIFTREG_component|dffs\(4),
	aclr => GND,
	ena => \inst34|ALT_INV_freezeParalell\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|LPM_SHIFTREG_component|dffs\(5));

-- Location: LC_X5_Y6_N4
\inst6|LPM_SHIFTREG_component|dffs[6]\ : maxv_lcell
-- Equation(s):
-- \inst6|LPM_SHIFTREG_component|dffs\(6) = DFFEAS(GND, GLOBAL(\RTC~combout\), VCC, , !\inst34|freezeParalell\, \inst6|LPM_SHIFTREG_component|dffs\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datac => \inst6|LPM_SHIFTREG_component|dffs\(5),
	aclr => GND,
	sload => VCC,
	ena => \inst34|ALT_INV_freezeParalell\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|LPM_SHIFTREG_component|dffs\(6));

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\hiTrueSetDisp~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_hiTrueSetDisp,
	combout => \hiTrueSetDisp~combout\);

-- Location: LC_X2_Y7_N1
\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]\ : maxv_lcell
-- Equation(s):
-- \inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(1) = VCC $ \Inc~combout\ $ (\inst9|inst12~regout\ $ (((!\Inc~combout\ & \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUT\) # (\Inc~combout\ & 
-- \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUTCOUT1_12\))))
-- \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUT\ = CARRY((VCC $ \Inc~combout\ & (!\inst9|inst12~regout\ & !\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUT\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUT\) # (!\inst9|inst12~regout\))))
-- \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUTCOUT1_14\ = CARRY((VCC $ \Inc~combout\ & (!\inst9|inst12~regout\ & !\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUTCOUT1_12\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUTCOUT1_12\) # (!\inst9|inst12~regout\))))

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
	cin1 => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUTCOUT1_12\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(1),
	cout0 => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUT\,
	cout1 => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUTCOUT1_14\);

-- Location: LC_X1_Y7_N4
\inst9|inst12\ : maxv_lcell
-- Equation(s):
-- \inst9|inst12~regout\ = DFFEAS((((\inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(1)))), GLOBAL(\RTC~combout\), VCC, , \inst9|inst1~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datad => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(1),
	aclr => GND,
	ena => \inst9|inst1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst12~regout\);

-- Location: LC_X2_Y7_N2
\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]\ : maxv_lcell
-- Equation(s):
-- \inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(2) = VCC $ \Inc~combout\ $ (\inst9|inst11~regout\ $ (((!\Inc~combout\ & \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUT\) # (\Inc~combout\ & 
-- \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUTCOUT1_14\))))
-- \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUT\ = CARRY((VCC $ \Inc~combout\ & (\inst9|inst11~regout\ & !\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUT\)) # (!VCC $ \Inc~combout\ & ((\inst9|inst11~regout\) # 
-- (!\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUT\))))
-- \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUTCOUT1_16\ = CARRY((VCC $ \Inc~combout\ & (\inst9|inst11~regout\ & !\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUTCOUT1_14\)) # (!VCC $ \Inc~combout\ & 
-- ((\inst9|inst11~regout\) # (!\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUTCOUT1_14\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "964d",
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
	cin1 => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUTCOUT1_14\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(2),
	cout0 => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUT\,
	cout1 => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUTCOUT1_16\);

-- Location: LC_X1_Y7_N6
\inst9|inst11\ : maxv_lcell
-- Equation(s):
-- \inst9|inst11~regout\ = DFFEAS(GND, GLOBAL(\RTC~combout\), VCC, , \inst9|inst1~0_combout\, \inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datac => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(2),
	aclr => GND,
	sload => VCC,
	ena => \inst9|inst1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst11~regout\);

-- Location: LC_X2_Y7_N3
\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]\ : maxv_lcell
-- Equation(s):
-- \inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(3) = VCC $ \Inc~combout\ $ (\inst9|inst10~regout\ $ (((!\Inc~combout\ & \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUT\) # (\Inc~combout\ & 
-- \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUTCOUT1_16\))))
-- \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUT\ = CARRY((VCC $ \Inc~combout\ & (!\inst9|inst10~regout\ & !\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUT\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUT\) # (!\inst9|inst10~regout\))))
-- \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUTCOUT1_18\ = CARRY((VCC $ \Inc~combout\ & (!\inst9|inst10~regout\ & !\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUTCOUT1_16\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUTCOUT1_16\) # (!\inst9|inst10~regout\))))

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
	cin1 => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUTCOUT1_16\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(3),
	cout0 => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUT\,
	cout1 => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUTCOUT1_18\);

-- Location: LC_X3_Y7_N4
\inst9|inst10\ : maxv_lcell
-- Equation(s):
-- \inst9|inst10~regout\ = DFFEAS((((\inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(3)))), GLOBAL(\RTC~combout\), VCC, , \inst9|inst1~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datad => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(3),
	aclr => GND,
	ena => \inst9|inst1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst10~regout\);

-- Location: LC_X4_Y7_N1
\inst10|inst10\ : maxv_lcell
-- Equation(s):
-- \inst5|$00000|auto_generated|result_node[3]~16\ = ((\inst49~regout\ & ((E2_inst10))) # (!\inst49~regout\ & (\inst9|inst10~regout\)))
-- \inst10|inst10~regout\ = DFFEAS(\inst5|$00000|auto_generated|result_node[3]~16\, GLOBAL(\RTC~combout\), VCC, , \inst10|inst1~0_combout\, \inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datab => \inst9|inst10~regout\,
	datac => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(3),
	datad => \inst49~regout\,
	aclr => GND,
	sload => VCC,
	ena => \inst10|inst1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst5|$00000|auto_generated|result_node[3]~16\,
	regout => \inst10|inst10~regout\);

-- Location: LC_X3_Y4_N1
\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]\ : maxv_lcell
-- Equation(s):
-- \inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(1) = VCC $ \Inc~combout\ $ (\inst10|inst12~regout\ $ (((!\Inc~combout\ & \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUT\) # (\Inc~combout\ & 
-- \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUTCOUT1_12\))))
-- \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUT\ = CARRY((VCC $ \Inc~combout\ & (!\inst10|inst12~regout\ & !\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUT\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUT\) # (!\inst10|inst12~regout\))))
-- \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUTCOUT1_14\ = CARRY((VCC $ \Inc~combout\ & (!\inst10|inst12~regout\ & !\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUTCOUT1_12\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUTCOUT1_12\) # (!\inst10|inst12~regout\))))

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
	cin1 => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUTCOUT1_12\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(1),
	cout0 => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUT\,
	cout1 => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUTCOUT1_14\);

-- Location: LC_X3_Y6_N1
\inst10|inst12\ : maxv_lcell
-- Equation(s):
-- \inst5|$00000|auto_generated|result_node[1]~20\ = ((\inst49~regout\ & (E2_inst12)) # (!\inst49~regout\ & ((\inst9|inst12~regout\))))
-- \inst10|inst12~regout\ = DFFEAS(\inst5|$00000|auto_generated|result_node[1]~20\, GLOBAL(\RTC~combout\), VCC, , \inst10|inst1~0_combout\, \inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datab => \inst49~regout\,
	datac => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(1),
	datad => \inst9|inst12~regout\,
	aclr => GND,
	sload => VCC,
	ena => \inst10|inst1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst5|$00000|auto_generated|result_node[1]~20\,
	regout => \inst10|inst12~regout\);

-- Location: LC_X3_Y4_N2
\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]\ : maxv_lcell
-- Equation(s):
-- \inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(2) = VCC $ \Inc~combout\ $ (\inst10|inst11~regout\ $ (((!\Inc~combout\ & \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUT\) # (\Inc~combout\ & 
-- \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUTCOUT1_14\))))
-- \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUT\ = CARRY((VCC $ \Inc~combout\ & (\inst10|inst11~regout\ & !\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUT\)) # (!VCC $ \Inc~combout\ & ((\inst10|inst11~regout\) # 
-- (!\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUT\))))
-- \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUTCOUT1_16\ = CARRY((VCC $ \Inc~combout\ & (\inst10|inst11~regout\ & !\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUTCOUT1_14\)) # (!VCC $ \Inc~combout\ & 
-- ((\inst10|inst11~regout\) # (!\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUTCOUT1_14\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "964d",
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
	cin1 => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUTCOUT1_14\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(2),
	cout0 => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUT\,
	cout1 => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUTCOUT1_16\);

-- Location: LC_X1_Y5_N8
\inst10|inst11\ : maxv_lcell
-- Equation(s):
-- \inst5|$00000|auto_generated|result_node[2]~22\ = ((\inst49~regout\ & ((E2_inst11))) # (!\inst49~regout\ & (\inst9|inst11~regout\)))
-- \inst10|inst11~regout\ = DFFEAS(\inst5|$00000|auto_generated|result_node[2]~22\, GLOBAL(\RTC~combout\), VCC, , \inst10|inst1~0_combout\, \inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datab => \inst9|inst11~regout\,
	datac => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(2),
	datad => \inst49~regout\,
	aclr => GND,
	sload => VCC,
	ena => \inst10|inst1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst5|$00000|auto_generated|result_node[2]~22\,
	regout => \inst10|inst11~regout\);

-- Location: LC_X3_Y4_N3
\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]\ : maxv_lcell
-- Equation(s):
-- \inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(3) = VCC $ \Inc~combout\ $ (\inst10|inst10~regout\ $ (((!\Inc~combout\ & \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUT\) # (\Inc~combout\ & 
-- \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUTCOUT1_16\))))
-- \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUT\ = CARRY((VCC $ \Inc~combout\ & (!\inst10|inst10~regout\ & !\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUT\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUT\) # (!\inst10|inst10~regout\))))
-- \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUTCOUT1_18\ = CARRY((VCC $ \Inc~combout\ & (!\inst10|inst10~regout\ & !\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUTCOUT1_16\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUTCOUT1_16\) # (!\inst10|inst10~regout\))))

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
	cin1 => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUTCOUT1_16\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(3),
	cout0 => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUT\,
	cout1 => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUTCOUT1_18\);

-- Location: LC_X4_Y7_N2
\inst11|inst10\ : maxv_lcell
-- Equation(s):
-- \inst5|$00000|auto_generated|result_node[3]~17\ = (\inst47~regout\ & (((\inst5|$00000|auto_generated|result_node[3]~16\)))) # (!\inst47~regout\ & (((E3_inst10))))
-- \inst11|inst10~regout\ = DFFEAS(\inst5|$00000|auto_generated|result_node[3]~17\, GLOBAL(\RTC~combout\), VCC, , \inst11|inst1~0_combout\, \inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	dataa => \inst47~regout\,
	datac => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(3),
	datad => \inst5|$00000|auto_generated|result_node[3]~16\,
	aclr => GND,
	sload => VCC,
	ena => \inst11|inst1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst5|$00000|auto_generated|result_node[3]~17\,
	regout => \inst11|inst10~regout\);

-- Location: LC_X3_Y5_N1
\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]\ : maxv_lcell
-- Equation(s):
-- \inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(1) = VCC $ \Inc~combout\ $ (\inst11|inst12~regout\ $ (((!\Inc~combout\ & \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUT\) # (\Inc~combout\ & 
-- \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUTCOUT1_12\))))
-- \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUT\ = CARRY((VCC $ \Inc~combout\ & (!\inst11|inst12~regout\ & !\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUT\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUT\) # (!\inst11|inst12~regout\))))
-- \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUTCOUT1_14\ = CARRY((VCC $ \Inc~combout\ & (!\inst11|inst12~regout\ & !\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUTCOUT1_12\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUTCOUT1_12\) # (!\inst11|inst12~regout\))))

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
	cin1 => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUTCOUT1_12\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(1),
	cout0 => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUT\,
	cout1 => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUTCOUT1_14\);

-- Location: LC_X3_Y6_N0
\inst11|inst12\ : maxv_lcell
-- Equation(s):
-- \inst5|$00000|auto_generated|result_node[1]~21\ = ((\inst47~regout\ & ((\inst5|$00000|auto_generated|result_node[1]~20\))) # (!\inst47~regout\ & (E3_inst12)))
-- \inst11|inst12~regout\ = DFFEAS(\inst5|$00000|auto_generated|result_node[1]~21\, GLOBAL(\RTC~combout\), VCC, , \inst11|inst1~0_combout\, \inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datab => \inst47~regout\,
	datac => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(1),
	datad => \inst5|$00000|auto_generated|result_node[1]~20\,
	aclr => GND,
	sload => VCC,
	ena => \inst11|inst1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst5|$00000|auto_generated|result_node[1]~21\,
	regout => \inst11|inst12~regout\);

-- Location: LC_X3_Y5_N2
\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]\ : maxv_lcell
-- Equation(s):
-- \inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(2) = VCC $ \Inc~combout\ $ (\inst11|inst11~regout\ $ (((!\Inc~combout\ & \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUT\) # (\Inc~combout\ & 
-- \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUTCOUT1_14\))))
-- \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUT\ = CARRY((VCC $ \Inc~combout\ & (\inst11|inst11~regout\ & !\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUT\)) # (!VCC $ \Inc~combout\ & ((\inst11|inst11~regout\) # 
-- (!\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUT\))))
-- \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUTCOUT1_16\ = CARRY((VCC $ \Inc~combout\ & (\inst11|inst11~regout\ & !\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUTCOUT1_14\)) # (!VCC $ \Inc~combout\ & 
-- ((\inst11|inst11~regout\) # (!\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUTCOUT1_14\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "964d",
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
	cin1 => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUTCOUT1_14\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(2),
	cout0 => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUT\,
	cout1 => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUTCOUT1_16\);

-- Location: LC_X1_Y5_N9
\inst11|inst11\ : maxv_lcell
-- Equation(s):
-- \inst5|$00000|auto_generated|result_node[2]~23\ = ((\inst47~regout\ & ((\inst5|$00000|auto_generated|result_node[2]~22\))) # (!\inst47~regout\ & (E3_inst11)))
-- \inst11|inst11~regout\ = DFFEAS(\inst5|$00000|auto_generated|result_node[2]~23\, GLOBAL(\RTC~combout\), VCC, , \inst11|inst1~0_combout\, \inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datab => \inst47~regout\,
	datac => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(2),
	datad => \inst5|$00000|auto_generated|result_node[2]~22\,
	aclr => GND,
	sload => VCC,
	ena => \inst11|inst1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst5|$00000|auto_generated|result_node[2]~23\,
	regout => \inst11|inst11~regout\);

-- Location: LC_X3_Y5_N3
\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]\ : maxv_lcell
-- Equation(s):
-- \inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(3) = VCC $ \Inc~combout\ $ (\inst11|inst10~regout\ $ (((!\Inc~combout\ & \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUT\) # (\Inc~combout\ & 
-- \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUTCOUT1_16\))))
-- \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUT\ = CARRY((VCC $ \Inc~combout\ & (!\inst11|inst10~regout\ & !\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUT\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUT\) # (!\inst11|inst10~regout\))))
-- \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUTCOUT1_18\ = CARRY((VCC $ \Inc~combout\ & (!\inst11|inst10~regout\ & !\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUTCOUT1_16\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUTCOUT1_16\) # (!\inst11|inst10~regout\))))

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
	cin1 => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUTCOUT1_16\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(3),
	cout0 => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUT\,
	cout1 => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUTCOUT1_18\);

-- Location: LC_X9_Y5_N0
\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]\ : maxv_lcell
-- Equation(s):
-- \inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(0) = VCC $ \Inc~combout\ $ (\inst12|inst13~regout\ $ ((!\Inc~combout\)))
-- \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUT\ = CARRY((VCC $ \Inc~combout\ & ((\inst12|inst13~regout\) # (!\Inc~combout\))) # (!VCC $ \Inc~combout\ & (\inst12|inst13~regout\ & !\Inc~combout\)))
-- \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUTCOUT1_12\ = CARRY((VCC $ \Inc~combout\ & ((\inst12|inst13~regout\) # (!\Inc~combout\))) # (!VCC $ \Inc~combout\ & (\inst12|inst13~regout\ & !\Inc~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "698e",
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
	cout1 => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUTCOUT1_12\);

-- Location: LC_X4_Y7_N4
\inst12|inst1~0\ : maxv_lcell
-- Equation(s):
-- \inst12|inst1~0_combout\ = (\Hiset~combout\ & (\inst11|inst16~combout\ & (\inst47~regout\ & !\inst49~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Hiset~combout\,
	datab => \inst11|inst16~combout\,
	datac => \inst47~regout\,
	datad => \inst49~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst12|inst1~0_combout\);

-- Location: LC_X8_Y5_N6
\inst12|inst13\ : maxv_lcell
-- Equation(s):
-- \inst12|inst13~regout\ = DFFEAS(GND, GLOBAL(\RTC~combout\), VCC, , \inst12|inst1~0_combout\, \inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datac => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(0),
	aclr => GND,
	sload => VCC,
	ena => \inst12|inst1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|inst13~regout\);

-- Location: LC_X9_Y5_N1
\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]\ : maxv_lcell
-- Equation(s):
-- \inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(1) = VCC $ \Inc~combout\ $ (\inst12|inst12~regout\ $ (((!\Inc~combout\ & \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUT\) # (\Inc~combout\ & 
-- \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUTCOUT1_12\))))
-- \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUT\ = CARRY((VCC $ \Inc~combout\ & (!\inst12|inst12~regout\ & !\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUT\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUT\) # (!\inst12|inst12~regout\))))
-- \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUTCOUT1_14\ = CARRY((VCC $ \Inc~combout\ & (!\inst12|inst12~regout\ & !\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUTCOUT1_12\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUTCOUT1_12\) # (!\inst12|inst12~regout\))))

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
	cin1 => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUTCOUT1_12\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(1),
	cout0 => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUT\,
	cout1 => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUTCOUT1_14\);

-- Location: LC_X8_Y5_N7
\inst12|inst12\ : maxv_lcell
-- Equation(s):
-- \inst12|inst12~regout\ = DFFEAS((((\inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(1)))), GLOBAL(\RTC~combout\), VCC, , \inst12|inst1~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datad => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(1),
	aclr => GND,
	ena => \inst12|inst1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|inst12~regout\);

-- Location: LC_X9_Y5_N2
\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]\ : maxv_lcell
-- Equation(s):
-- \inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(2) = VCC $ \Inc~combout\ $ (\inst12|inst11~regout\ $ (((!\Inc~combout\ & \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUT\) # (\Inc~combout\ & 
-- \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUTCOUT1_14\))))
-- \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUT\ = CARRY((VCC $ \Inc~combout\ & (\inst12|inst11~regout\ & !\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUT\)) # (!VCC $ \Inc~combout\ & ((\inst12|inst11~regout\) # 
-- (!\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUT\))))
-- \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUTCOUT1_16\ = CARRY((VCC $ \Inc~combout\ & (\inst12|inst11~regout\ & !\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUTCOUT1_14\)) # (!VCC $ \Inc~combout\ & 
-- ((\inst12|inst11~regout\) # (!\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUTCOUT1_14\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "964d",
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
	cin1 => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUTCOUT1_14\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(2),
	cout0 => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUT\,
	cout1 => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUTCOUT1_16\);

-- Location: LC_X8_Y5_N3
\inst12|inst11\ : maxv_lcell
-- Equation(s):
-- \inst12|inst11~regout\ = DFFEAS(GND, GLOBAL(\RTC~combout\), VCC, , \inst12|inst1~0_combout\, \inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datac => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(2),
	aclr => GND,
	sload => VCC,
	ena => \inst12|inst1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|inst11~regout\);

-- Location: LC_X9_Y5_N3
\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]\ : maxv_lcell
-- Equation(s):
-- \inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(3) = VCC $ \Inc~combout\ $ (\inst12|inst10~regout\ $ (((!\Inc~combout\ & \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUT\) # (\Inc~combout\ & 
-- \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUTCOUT1_16\))))
-- \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUT\ = CARRY((VCC $ \Inc~combout\ & (!\inst12|inst10~regout\ & !\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUT\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUT\) # (!\inst12|inst10~regout\))))
-- \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUTCOUT1_18\ = CARRY((VCC $ \Inc~combout\ & (!\inst12|inst10~regout\ & !\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUTCOUT1_16\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUTCOUT1_16\) # (!\inst12|inst10~regout\))))

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
	cin1 => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUTCOUT1_16\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(3),
	cout0 => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUT\,
	cout1 => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUTCOUT1_18\);

-- Location: LC_X8_Y5_N0
\inst12|inst10\ : maxv_lcell
-- Equation(s):
-- \inst12|inst10~regout\ = DFFEAS(GND, GLOBAL(\RTC~combout\), VCC, , \inst12|inst1~0_combout\, \inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datac => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(3),
	aclr => GND,
	sload => VCC,
	ena => \inst12|inst1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|inst10~regout\);

-- Location: LC_X4_Y7_N0
\inst13|inst1~0\ : maxv_lcell
-- Equation(s):
-- \inst13|inst1~0_combout\ = (\Hiset~combout\ & (\inst11|inst16~combout\ & (\inst47~regout\ & \inst49~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Hiset~combout\,
	datab => \inst11|inst16~combout\,
	datac => \inst47~regout\,
	datad => \inst49~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst13|inst1~0_combout\);

-- Location: LC_X5_Y5_N2
\inst13|inst10\ : maxv_lcell
-- Equation(s):
-- \inst2|$00000|auto_generated|result_node[3]~4\ = ((\inst49~regout\ & (E6_inst10)) # (!\inst49~regout\ & ((\inst12|inst10~regout\))))
-- \inst13|inst10~regout\ = DFFEAS(\inst2|$00000|auto_generated|result_node[3]~4\, GLOBAL(\RTC~combout\), VCC, , \inst13|inst1~0_combout\, \inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datab => \inst49~regout\,
	datac => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(3),
	datad => \inst12|inst10~regout\,
	aclr => GND,
	sload => VCC,
	ena => \inst13|inst1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|$00000|auto_generated|result_node[3]~4\,
	regout => \inst13|inst10~regout\);

-- Location: LC_X6_Y5_N0
\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]\ : maxv_lcell
-- Equation(s):
-- \inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(0) = VCC $ \Inc~combout\ $ (\inst13|inst13~regout\ $ ((!\Inc~combout\)))
-- \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUT\ = CARRY((VCC $ \Inc~combout\ & ((\inst13|inst13~regout\) # (!\Inc~combout\))) # (!VCC $ \Inc~combout\ & (\inst13|inst13~regout\ & !\Inc~combout\)))
-- \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUTCOUT1_12\ = CARRY((VCC $ \Inc~combout\ & ((\inst13|inst13~regout\) # (!\Inc~combout\))) # (!VCC $ \Inc~combout\ & (\inst13|inst13~regout\ & !\Inc~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "698e",
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
	cout1 => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUTCOUT1_12\);

-- Location: LC_X5_Y4_N1
\inst13|inst13\ : maxv_lcell
-- Equation(s):
-- \inst2|$00000|auto_generated|result_node[0]~24\ = ((\inst49~regout\ & (E6_inst13)) # (!\inst49~regout\ & ((\inst12|inst13~regout\))))
-- \inst13|inst13~regout\ = DFFEAS(\inst2|$00000|auto_generated|result_node[0]~24\, GLOBAL(\RTC~combout\), VCC, , \inst13|inst1~0_combout\, \inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datab => \inst49~regout\,
	datac => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(0),
	datad => \inst12|inst13~regout\,
	aclr => GND,
	sload => VCC,
	ena => \inst13|inst1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|$00000|auto_generated|result_node[0]~24\,
	regout => \inst13|inst13~regout\);

-- Location: LC_X6_Y5_N1
\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]\ : maxv_lcell
-- Equation(s):
-- \inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(1) = VCC $ \Inc~combout\ $ (\inst13|inst12~regout\ $ (((!\Inc~combout\ & \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUT\) # (\Inc~combout\ & 
-- \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUTCOUT1_12\))))
-- \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUT\ = CARRY((VCC $ \Inc~combout\ & (!\inst13|inst12~regout\ & !\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUT\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUT\) # (!\inst13|inst12~regout\))))
-- \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUTCOUT1_14\ = CARRY((VCC $ \Inc~combout\ & (!\inst13|inst12~regout\ & !\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUTCOUT1_12\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUTCOUT1_12\) # (!\inst13|inst12~regout\))))

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
	cin1 => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUTCOUT1_12\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(1),
	cout0 => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUT\,
	cout1 => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUTCOUT1_14\);

-- Location: LC_X5_Y4_N3
\inst13|inst12\ : maxv_lcell
-- Equation(s):
-- \inst2|$00000|auto_generated|result_node[1]~22\ = ((\inst49~regout\ & (E6_inst12)) # (!\inst49~regout\ & ((\inst12|inst12~regout\))))
-- \inst13|inst12~regout\ = DFFEAS(\inst2|$00000|auto_generated|result_node[1]~22\, GLOBAL(\RTC~combout\), VCC, , \inst13|inst1~0_combout\, \inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datab => \inst49~regout\,
	datac => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(1),
	datad => \inst12|inst12~regout\,
	aclr => GND,
	sload => VCC,
	ena => \inst13|inst1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|$00000|auto_generated|result_node[1]~22\,
	regout => \inst13|inst12~regout\);

-- Location: LC_X6_Y5_N2
\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]\ : maxv_lcell
-- Equation(s):
-- \inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(2) = VCC $ \Inc~combout\ $ (\inst13|inst11~regout\ $ (((!\Inc~combout\ & \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUT\) # (\Inc~combout\ & 
-- \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUTCOUT1_14\))))
-- \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUT\ = CARRY((VCC $ \Inc~combout\ & (\inst13|inst11~regout\ & !\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUT\)) # (!VCC $ \Inc~combout\ & ((\inst13|inst11~regout\) # 
-- (!\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUT\))))
-- \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUTCOUT1_16\ = CARRY((VCC $ \Inc~combout\ & (\inst13|inst11~regout\ & !\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUTCOUT1_14\)) # (!VCC $ \Inc~combout\ & 
-- ((\inst13|inst11~regout\) # (!\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUTCOUT1_14\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "964d",
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
	cin1 => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUTCOUT1_14\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(2),
	cout0 => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUT\,
	cout1 => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUTCOUT1_16\);

-- Location: LC_X5_Y5_N8
\inst13|inst11\ : maxv_lcell
-- Equation(s):
-- \inst2|$00000|auto_generated|result_node[2]~2\ = ((\inst49~regout\ & (E6_inst11)) # (!\inst49~regout\ & ((\inst12|inst11~regout\))))
-- \inst13|inst11~regout\ = DFFEAS(\inst2|$00000|auto_generated|result_node[2]~2\, GLOBAL(\RTC~combout\), VCC, , \inst13|inst1~0_combout\, \inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datab => \inst49~regout\,
	datac => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(2),
	datad => \inst12|inst11~regout\,
	aclr => GND,
	sload => VCC,
	ena => \inst13|inst1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|$00000|auto_generated|result_node[2]~2\,
	regout => \inst13|inst11~regout\);

-- Location: LC_X6_Y5_N3
\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]\ : maxv_lcell
-- Equation(s):
-- \inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(3) = VCC $ \Inc~combout\ $ (\inst13|inst10~regout\ $ (((!\Inc~combout\ & \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUT\) # (\Inc~combout\ & 
-- \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUTCOUT1_16\))))
-- \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUT\ = CARRY((VCC $ \Inc~combout\ & (!\inst13|inst10~regout\ & !\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUT\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUT\) # (!\inst13|inst10~regout\))))
-- \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUTCOUT1_18\ = CARRY((VCC $ \Inc~combout\ & (!\inst13|inst10~regout\ & !\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUTCOUT1_16\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUTCOUT1_16\) # (!\inst13|inst10~regout\))))

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
	cin1 => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUTCOUT1_16\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(3),
	cout0 => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUT\,
	cout1 => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUTCOUT1_18\);

-- Location: LC_X4_Y7_N5
\inst14|inst1~0\ : maxv_lcell
-- Equation(s):
-- \inst14|inst1~0_combout\ = (\Hiset~combout\ & (!\inst47~regout\ & ((\Inc~combout\) # (\Dec~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Hiset~combout\,
	datab => \Inc~combout\,
	datac => \Dec~combout\,
	datad => \inst47~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst14|inst1~0_combout\);

-- Location: LC_X5_Y7_N0
\inst14|inst10\ : maxv_lcell
-- Equation(s):
-- \inst2|$00000|auto_generated|result_node[3]~5\ = (\inst47~regout\ & (((\inst2|$00000|auto_generated|result_node[3]~4\)))) # (!\inst47~regout\ & (((E7_inst10))))
-- \inst14|inst10~regout\ = DFFEAS(\inst2|$00000|auto_generated|result_node[3]~5\, GLOBAL(\RTC~combout\), VCC, , \inst14|inst1~0_combout\, \inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	dataa => \inst47~regout\,
	datac => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(3),
	datad => \inst2|$00000|auto_generated|result_node[3]~4\,
	aclr => GND,
	sload => VCC,
	ena => \inst14|inst1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|$00000|auto_generated|result_node[3]~5\,
	regout => \inst14|inst10~regout\);

-- Location: LC_X6_Y4_N0
\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]\ : maxv_lcell
-- Equation(s):
-- \inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(0) = VCC $ \Inc~combout\ $ (\inst14|inst13~regout\ $ ((!\Inc~combout\)))
-- \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUT\ = CARRY((VCC $ \Inc~combout\ & ((\inst14|inst13~regout\) # (!\Inc~combout\))) # (!VCC $ \Inc~combout\ & (\inst14|inst13~regout\ & !\Inc~combout\)))
-- \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUTCOUT1_12\ = CARRY((VCC $ \Inc~combout\ & ((\inst14|inst13~regout\) # (!\Inc~combout\))) # (!VCC $ \Inc~combout\ & (\inst14|inst13~regout\ & !\Inc~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "698e",
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
	cout1 => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUTCOUT1_12\);

-- Location: LC_X5_Y4_N2
\inst14|inst13\ : maxv_lcell
-- Equation(s):
-- \inst2|$00000|auto_generated|result_node[0]~25\ = ((\inst47~regout\ & ((\inst2|$00000|auto_generated|result_node[0]~24\))) # (!\inst47~regout\ & (E7_inst13)))
-- \inst14|inst13~regout\ = DFFEAS(\inst2|$00000|auto_generated|result_node[0]~25\, GLOBAL(\RTC~combout\), VCC, , \inst14|inst1~0_combout\, \inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datab => \inst47~regout\,
	datac => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(0),
	datad => \inst2|$00000|auto_generated|result_node[0]~24\,
	aclr => GND,
	sload => VCC,
	ena => \inst14|inst1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|$00000|auto_generated|result_node[0]~25\,
	regout => \inst14|inst13~regout\);

-- Location: LC_X6_Y4_N1
\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]\ : maxv_lcell
-- Equation(s):
-- \inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(1) = VCC $ \Inc~combout\ $ (\inst14|inst12~regout\ $ (((!\Inc~combout\ & \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUT\) # (\Inc~combout\ & 
-- \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUTCOUT1_12\))))
-- \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUT\ = CARRY((VCC $ \Inc~combout\ & (!\inst14|inst12~regout\ & !\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUT\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUT\) # (!\inst14|inst12~regout\))))
-- \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUTCOUT1_14\ = CARRY((VCC $ \Inc~combout\ & (!\inst14|inst12~regout\ & !\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUTCOUT1_12\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUTCOUT1_12\) # (!\inst14|inst12~regout\))))

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
	cin1 => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUTCOUT1_12\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(1),
	cout0 => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUT\,
	cout1 => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUTCOUT1_14\);

-- Location: LC_X5_Y4_N6
\inst14|inst12\ : maxv_lcell
-- Equation(s):
-- \inst2|$00000|auto_generated|result_node[1]~23\ = ((\inst47~regout\ & ((\inst2|$00000|auto_generated|result_node[1]~22\))) # (!\inst47~regout\ & (E7_inst12)))
-- \inst14|inst12~regout\ = DFFEAS(\inst2|$00000|auto_generated|result_node[1]~23\, GLOBAL(\RTC~combout\), VCC, , \inst14|inst1~0_combout\, \inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datab => \inst47~regout\,
	datac => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(1),
	datad => \inst2|$00000|auto_generated|result_node[1]~22\,
	aclr => GND,
	sload => VCC,
	ena => \inst14|inst1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|$00000|auto_generated|result_node[1]~23\,
	regout => \inst14|inst12~regout\);

-- Location: LC_X6_Y4_N2
\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]\ : maxv_lcell
-- Equation(s):
-- \inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(2) = VCC $ \Inc~combout\ $ (\inst14|inst11~regout\ $ (((!\Inc~combout\ & \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUT\) # (\Inc~combout\ & 
-- \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUTCOUT1_14\))))
-- \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUT\ = CARRY((VCC $ \Inc~combout\ & (\inst14|inst11~regout\ & !\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUT\)) # (!VCC $ \Inc~combout\ & ((\inst14|inst11~regout\) # 
-- (!\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUT\))))
-- \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUTCOUT1_16\ = CARRY((VCC $ \Inc~combout\ & (\inst14|inst11~regout\ & !\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUTCOUT1_14\)) # (!VCC $ \Inc~combout\ & 
-- ((\inst14|inst11~regout\) # (!\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUTCOUT1_14\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "964d",
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
	cin1 => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUTCOUT1_14\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(2),
	cout0 => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUT\,
	cout1 => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUTCOUT1_16\);

-- Location: LC_X5_Y7_N1
\inst14|inst11\ : maxv_lcell
-- Equation(s):
-- \inst2|$00000|auto_generated|result_node[2]~3\ = (\inst47~regout\ & (((\inst2|$00000|auto_generated|result_node[2]~2\)))) # (!\inst47~regout\ & (((E7_inst11))))
-- \inst14|inst11~regout\ = DFFEAS(\inst2|$00000|auto_generated|result_node[2]~3\, GLOBAL(\RTC~combout\), VCC, , \inst14|inst1~0_combout\, \inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	dataa => \inst47~regout\,
	datac => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(2),
	datad => \inst2|$00000|auto_generated|result_node[2]~2\,
	aclr => GND,
	sload => VCC,
	ena => \inst14|inst1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|$00000|auto_generated|result_node[2]~3\,
	regout => \inst14|inst11~regout\);

-- Location: LC_X6_Y4_N3
\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]\ : maxv_lcell
-- Equation(s):
-- \inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(3) = VCC $ \Inc~combout\ $ (\inst14|inst10~regout\ $ (((!\Inc~combout\ & \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUT\) # (\Inc~combout\ & 
-- \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUTCOUT1_16\))))
-- \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUT\ = CARRY((VCC $ \Inc~combout\ & (!\inst14|inst10~regout\ & !\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUT\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUT\) # (!\inst14|inst10~regout\))))
-- \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUTCOUT1_18\ = CARRY((VCC $ \Inc~combout\ & (!\inst14|inst10~regout\ & !\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUTCOUT1_16\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUTCOUT1_16\) # (!\inst14|inst10~regout\))))

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
	cin1 => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUTCOUT1_16\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(3),
	cout0 => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUT\,
	cout1 => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUTCOUT1_18\);

-- Location: LC_X5_Y6_N1
\inst3|$00000|auto_generated|result_node[3]~18\ : maxv_lcell
-- Equation(s):
-- \inst3|$00000|auto_generated|result_node[3]~18_combout\ = (\hiTrueSetDisp~combout\ & (((\inst2|$00000|auto_generated|result_node[3]~5\)))) # (!\hiTrueSetDisp~combout\ & (\inst5|$00000|auto_generated|result_node[3]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \hiTrueSetDisp~combout\,
	datab => \inst5|$00000|auto_generated|result_node[3]~17\,
	datad => \inst2|$00000|auto_generated|result_node[3]~5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst3|$00000|auto_generated|result_node[3]~18_combout\);

-- Location: LC_X5_Y6_N3
\inst38|inst10\ : maxv_lcell
-- Equation(s):
-- \inst3|$00000|auto_generated|result_node[3]~19\ = (\inst50~regout\ & (((\inst3|$00000|auto_generated|result_node[3]~18_combout\)))) # (!\inst50~regout\ & (((E4_inst10))))
-- \inst38|inst10~regout\ = DFFEAS(\inst3|$00000|auto_generated|result_node[3]~19\, GLOBAL(\RTC~combout\), VCC, , \inst34|freezeParalell\, \inst6|LPM_SHIFTREG_component|dffs\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	dataa => \inst50~regout\,
	datac => \inst6|LPM_SHIFTREG_component|dffs\(6),
	datad => \inst3|$00000|auto_generated|result_node[3]~18_combout\,
	aclr => GND,
	sload => VCC,
	ena => \inst34|freezeParalell\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst3|$00000|auto_generated|result_node[3]~19\,
	regout => \inst38|inst10~regout\);

-- Location: LC_X5_Y6_N5
\inst6|LPM_SHIFTREG_component|dffs[7]\ : maxv_lcell
-- Equation(s):
-- \inst6|LPM_SHIFTREG_component|dffs\(7) = DFFEAS(GND, GLOBAL(\RTC~combout\), VCC, , !\inst34|freezeParalell\, \inst6|LPM_SHIFTREG_component|dffs\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datac => \inst6|LPM_SHIFTREG_component|dffs\(6),
	aclr => GND,
	sload => VCC,
	ena => \inst34|ALT_INV_freezeParalell\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|LPM_SHIFTREG_component|dffs\(7));

-- Location: LC_X2_Y7_N4
\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]\ : maxv_lcell
-- Equation(s):
-- \inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(4) = VCC $ \Inc~combout\ $ (\inst9|inst9~regout\ $ ((!(!\Inc~combout\ & \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUT\) # (\Inc~combout\ & 
-- \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUTCOUT1_18\))))
-- \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ = CARRY((VCC $ \Inc~combout\ & ((\inst9|inst9~regout\) # (!\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUTCOUT1_18\))) # (!VCC $ \Inc~combout\ & 
-- (\inst9|inst9~regout\ & !\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUTCOUT1_18\)))

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
	cin1 => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUTCOUT1_18\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(4),
	cout => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\);

-- Location: LC_X3_Y7_N6
\inst9|inst9\ : maxv_lcell
-- Equation(s):
-- \inst9|inst9~regout\ = DFFEAS(GND, GLOBAL(\RTC~combout\), VCC, , \inst9|inst1~0_combout\, \inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datac => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(4),
	aclr => GND,
	sload => VCC,
	ena => \inst9|inst1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst9~regout\);

-- Location: LC_X4_Y7_N8
\inst10|inst9\ : maxv_lcell
-- Equation(s):
-- \inst5|$00000|auto_generated|result_node[4]~18\ = ((\inst49~regout\ & ((E2_inst9))) # (!\inst49~regout\ & (\inst9|inst9~regout\)))
-- \inst10|inst9~regout\ = DFFEAS(\inst5|$00000|auto_generated|result_node[4]~18\, GLOBAL(\RTC~combout\), VCC, , \inst10|inst1~0_combout\, \inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datab => \inst9|inst9~regout\,
	datac => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(4),
	datad => \inst49~regout\,
	aclr => GND,
	sload => VCC,
	ena => \inst10|inst1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst5|$00000|auto_generated|result_node[4]~18\,
	regout => \inst10|inst9~regout\);

-- Location: LC_X3_Y4_N4
\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]\ : maxv_lcell
-- Equation(s):
-- \inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(4) = VCC $ \Inc~combout\ $ (\inst10|inst9~regout\ $ ((!(!\Inc~combout\ & \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUT\) # (\Inc~combout\ & 
-- \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUTCOUT1_18\))))
-- \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ = CARRY((VCC $ \Inc~combout\ & ((\inst10|inst9~regout\) # (!\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUTCOUT1_18\))) # (!VCC $ \Inc~combout\ & 
-- (\inst10|inst9~regout\ & !\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUTCOUT1_18\)))

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
	cin1 => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUTCOUT1_18\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(4),
	cout => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\);

-- Location: LC_X4_Y7_N9
\inst11|inst9\ : maxv_lcell
-- Equation(s):
-- \inst5|$00000|auto_generated|result_node[4]~19\ = (\inst47~regout\ & (((\inst5|$00000|auto_generated|result_node[4]~18\)))) # (!\inst47~regout\ & (((E3_inst9))))
-- \inst11|inst9~regout\ = DFFEAS(\inst5|$00000|auto_generated|result_node[4]~19\, GLOBAL(\RTC~combout\), VCC, , \inst11|inst1~0_combout\, \inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	dataa => \inst47~regout\,
	datac => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(4),
	datad => \inst5|$00000|auto_generated|result_node[4]~18\,
	aclr => GND,
	sload => VCC,
	ena => \inst11|inst1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst5|$00000|auto_generated|result_node[4]~19\,
	regout => \inst11|inst9~regout\);

-- Location: LC_X3_Y5_N4
\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]\ : maxv_lcell
-- Equation(s):
-- \inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(4) = VCC $ \Inc~combout\ $ (\inst11|inst9~regout\ $ ((!(!\Inc~combout\ & \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUT\) # (\Inc~combout\ & 
-- \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUTCOUT1_18\))))
-- \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ = CARRY((VCC $ \Inc~combout\ & ((\inst11|inst9~regout\) # (!\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUTCOUT1_18\))) # (!VCC $ \Inc~combout\ & 
-- (\inst11|inst9~regout\ & !\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUTCOUT1_18\)))

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
	cin1 => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUTCOUT1_18\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(4),
	cout => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\);

-- Location: LC_X5_Y6_N8
\inst38|inst9\ : maxv_lcell
-- Equation(s):
-- \inst24|LPM_COMPARE_component|auto_generated|aeb_int~5\ = (\inst38|inst10~regout\ & (\inst5|$00000|auto_generated|result_node[3]~17\ & (E4_inst9 $ (!\inst5|$00000|auto_generated|result_node[4]~19\)))) # (!\inst38|inst10~regout\ & 
-- (!\inst5|$00000|auto_generated|result_node[3]~17\ & (E4_inst9 $ (!\inst5|$00000|auto_generated|result_node[4]~19\))))
-- \inst38|inst9~regout\ = DFFEAS(\inst24|LPM_COMPARE_component|auto_generated|aeb_int~5\, GLOBAL(\RTC~combout\), VCC, , \inst34|freezeParalell\, \inst6|LPM_SHIFTREG_component|dffs\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9009",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	dataa => \inst38|inst10~regout\,
	datab => \inst5|$00000|auto_generated|result_node[3]~17\,
	datac => \inst6|LPM_SHIFTREG_component|dffs\(7),
	datad => \inst5|$00000|auto_generated|result_node[4]~19\,
	aclr => GND,
	sload => VCC,
	ena => \inst34|freezeParalell\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst24|LPM_COMPARE_component|auto_generated|aeb_int~5\,
	regout => \inst38|inst9~regout\);

-- Location: LC_X6_Y6_N2
\inst3|$00000|auto_generated|result_node[1]~37\ : maxv_lcell
-- Equation(s):
-- \inst3|$00000|auto_generated|result_node[1]~37_combout\ = ((\hiTrueSetDisp~combout\ & ((\inst2|$00000|auto_generated|result_node[1]~23\))) # (!\hiTrueSetDisp~combout\ & (\inst5|$00000|auto_generated|result_node[1]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \hiTrueSetDisp~combout\,
	datac => \inst5|$00000|auto_generated|result_node[1]~21\,
	datad => \inst2|$00000|auto_generated|result_node[1]~23\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst3|$00000|auto_generated|result_node[1]~37_combout\);

-- Location: LC_X6_Y6_N7
\inst38|inst12\ : maxv_lcell
-- Equation(s):
-- \inst3|$00000|auto_generated|result_node[1]~38\ = (\inst50~regout\ & (((\inst3|$00000|auto_generated|result_node[1]~37_combout\)))) # (!\inst50~regout\ & (((E4_inst12))))
-- \inst38|inst12~regout\ = DFFEAS(\inst3|$00000|auto_generated|result_node[1]~38\, GLOBAL(\RTC~combout\), VCC, , \inst34|freezeParalell\, \inst6|LPM_SHIFTREG_component|dffs\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	dataa => \inst50~regout\,
	datac => \inst6|LPM_SHIFTREG_component|dffs\(4),
	datad => \inst3|$00000|auto_generated|result_node[1]~37_combout\,
	aclr => GND,
	sload => VCC,
	ena => \inst34|freezeParalell\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst3|$00000|auto_generated|result_node[1]~38\,
	regout => \inst38|inst12~regout\);

-- Location: LC_X4_Y6_N8
\inst38|inst11\ : maxv_lcell
-- Equation(s):
-- \inst24|LPM_COMPARE_component|auto_generated|aeb_int~6\ = (\inst5|$00000|auto_generated|result_node[1]~21\ & (\inst38|inst12~regout\ & (E4_inst11 $ (!\inst5|$00000|auto_generated|result_node[2]~23\)))) # (!\inst5|$00000|auto_generated|result_node[1]~21\ & 
-- (!\inst38|inst12~regout\ & (E4_inst11 $ (!\inst5|$00000|auto_generated|result_node[2]~23\))))
-- \inst38|inst11~regout\ = DFFEAS(\inst24|LPM_COMPARE_component|auto_generated|aeb_int~6\, GLOBAL(\RTC~combout\), VCC, , \inst34|freezeParalell\, \inst6|LPM_SHIFTREG_component|dffs\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9009",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	dataa => \inst5|$00000|auto_generated|result_node[1]~21\,
	datab => \inst38|inst12~regout\,
	datac => \inst6|LPM_SHIFTREG_component|dffs\(5),
	datad => \inst5|$00000|auto_generated|result_node[2]~23\,
	aclr => GND,
	sload => VCC,
	ena => \inst34|freezeParalell\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst24|LPM_COMPARE_component|auto_generated|aeb_int~6\,
	regout => \inst38|inst11~regout\);

-- Location: LC_X4_Y6_N9
\inst38|inst13\ : maxv_lcell
-- Equation(s):
-- \inst24|LPM_COMPARE_component|auto_generated|aeb_int~7\ = (\inst24|LPM_COMPARE_component|auto_generated|aeb_int~5\ & (\inst24|LPM_COMPARE_component|auto_generated|aeb_int~6\ & (\inst5|$00000|auto_generated|result_node[0]~25\ $ (!E4_inst13))))
-- \inst38|inst13~regout\ = DFFEAS(\inst24|LPM_COMPARE_component|auto_generated|aeb_int~7\, GLOBAL(\RTC~combout\), VCC, , \inst34|freezeParalell\, \inst6|LPM_SHIFTREG_component|dffs\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8400",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	dataa => \inst5|$00000|auto_generated|result_node[0]~25\,
	datab => \inst24|LPM_COMPARE_component|auto_generated|aeb_int~5\,
	datac => \inst6|LPM_SHIFTREG_component|dffs\(3),
	datad => \inst24|LPM_COMPARE_component|auto_generated|aeb_int~6\,
	aclr => GND,
	sload => VCC,
	ena => \inst34|freezeParalell\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst24|LPM_COMPARE_component|auto_generated|aeb_int~7\,
	regout => \inst38|inst13~regout\);

-- Location: LC_X5_Y6_N9
\inst6|LPM_SHIFTREG_component|dffs[8]\ : maxv_lcell
-- Equation(s):
-- \inst6|LPM_SHIFTREG_component|dffs\(8) = DFFEAS(GND, GLOBAL(\RTC~combout\), VCC, , !\inst34|freezeParalell\, \inst6|LPM_SHIFTREG_component|dffs\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datac => \inst6|LPM_SHIFTREG_component|dffs\(7),
	aclr => GND,
	sload => VCC,
	ena => \inst34|ALT_INV_freezeParalell\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|LPM_SHIFTREG_component|dffs\(8));

-- Location: LC_X5_Y6_N7
\inst6|LPM_SHIFTREG_component|dffs[9]\ : maxv_lcell
-- Equation(s):
-- \inst6|LPM_SHIFTREG_component|dffs\(9) = DFFEAS((((\inst6|LPM_SHIFTREG_component|dffs\(8)))), GLOBAL(\RTC~combout\), VCC, , !\inst34|freezeParalell\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datad => \inst6|LPM_SHIFTREG_component|dffs\(8),
	aclr => GND,
	ena => \inst34|ALT_INV_freezeParalell\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|LPM_SHIFTREG_component|dffs\(9));

-- Location: LC_X5_Y6_N6
\inst6|LPM_SHIFTREG_component|dffs[10]\ : maxv_lcell
-- Equation(s):
-- \inst6|LPM_SHIFTREG_component|dffs\(10) = DFFEAS(GND, GLOBAL(\RTC~combout\), VCC, , !\inst34|freezeParalell\, \inst6|LPM_SHIFTREG_component|dffs\(9), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datac => \inst6|LPM_SHIFTREG_component|dffs\(9),
	aclr => GND,
	sload => VCC,
	ena => \inst34|ALT_INV_freezeParalell\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|LPM_SHIFTREG_component|dffs\(10));

-- Location: LC_X2_Y7_N5
\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]\ : maxv_lcell
-- Equation(s):
-- \inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(5) = VCC $ \Inc~combout\ $ (\inst9|inst8~regout\ $ ((\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\)))
-- \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUT\ = CARRY((VCC $ \Inc~combout\ & (!\inst9|inst8~regout\ & !\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\) # (!\inst9|inst8~regout\))))
-- \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUTCOUT1_20\ = CARRY((VCC $ \Inc~combout\ & (!\inst9|inst8~regout\ & !\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\)) # (!VCC $ \Inc~combout\ & 
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
	cout1 => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUTCOUT1_20\);

-- Location: LC_X1_Y7_N7
\inst9|inst8\ : maxv_lcell
-- Equation(s):
-- \inst9|inst8~regout\ = DFFEAS((((\inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(5)))), GLOBAL(\RTC~combout\), VCC, , \inst9|inst1~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datad => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(5),
	aclr => GND,
	ena => \inst9|inst1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst8~regout\);

-- Location: LC_X2_Y7_N6
\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]\ : maxv_lcell
-- Equation(s):
-- \inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(6) = VCC $ \Inc~combout\ $ (\inst9|inst7~regout\ $ ((!(!\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ & \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUT\) 
-- # (\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ & \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUTCOUT1_20\))))
-- \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUT\ = CARRY((VCC $ \Inc~combout\ & ((\inst9|inst7~regout\) # (!\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUT\))) # (!VCC $ \Inc~combout\ & (\inst9|inst7~regout\ & 
-- !\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUT\)))
-- \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUTCOUT1_22\ = CARRY((VCC $ \Inc~combout\ & ((\inst9|inst7~regout\) # (!\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUTCOUT1_20\))) # (!VCC $ \Inc~combout\ & 
-- (\inst9|inst7~regout\ & !\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUTCOUT1_20\)))

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
	cin1 => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUTCOUT1_20\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(6),
	cout0 => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUT\,
	cout1 => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUTCOUT1_22\);

-- Location: LC_X1_Y7_N8
\inst9|inst7\ : maxv_lcell
-- Equation(s):
-- \inst9|inst7~regout\ = DFFEAS(GND, GLOBAL(\RTC~combout\), VCC, , \inst9|inst1~0_combout\, \inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datac => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(6),
	aclr => GND,
	sload => VCC,
	ena => \inst9|inst1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst7~regout\);

-- Location: LC_X2_Y7_N7
\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]\ : maxv_lcell
-- Equation(s):
-- \inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(7) = VCC $ \Inc~combout\ $ (\inst9|inst6~regout\ $ (((!\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ & \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUT\) # 
-- (\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ & \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUTCOUT1_22\))))
-- \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUT\ = CARRY((VCC $ \Inc~combout\ & (!\inst9|inst6~regout\ & !\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUT\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUT\) # (!\inst9|inst6~regout\))))
-- \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUTCOUT1_24\ = CARRY((VCC $ \Inc~combout\ & (!\inst9|inst6~regout\ & !\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUTCOUT1_22\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUTCOUT1_22\) # (!\inst9|inst6~regout\))))

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
	cin1 => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUTCOUT1_22\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(7),
	cout0 => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUT\,
	cout1 => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUTCOUT1_24\);

-- Location: LC_X1_Y7_N0
\inst9|inst6\ : maxv_lcell
-- Equation(s):
-- \inst9|inst6~regout\ = DFFEAS((((\inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(7)))), GLOBAL(\RTC~combout\), VCC, , \inst9|inst1~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datad => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(7),
	aclr => GND,
	ena => \inst9|inst1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst6~regout\);

-- Location: LC_X2_Y5_N6
\inst10|inst6\ : maxv_lcell
-- Equation(s):
-- \inst5|$00000|auto_generated|result_node[7]~8\ = ((\inst49~regout\ & (E2_inst6)) # (!\inst49~regout\ & ((\inst9|inst6~regout\))))
-- \inst10|inst6~regout\ = DFFEAS(\inst5|$00000|auto_generated|result_node[7]~8\, GLOBAL(\RTC~combout\), VCC, , \inst10|inst1~0_combout\, \inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datab => \inst49~regout\,
	datac => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(7),
	datad => \inst9|inst6~regout\,
	aclr => GND,
	sload => VCC,
	ena => \inst10|inst1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst5|$00000|auto_generated|result_node[7]~8\,
	regout => \inst10|inst6~regout\);

-- Location: LC_X3_Y4_N5
\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]\ : maxv_lcell
-- Equation(s):
-- \inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(5) = VCC $ \Inc~combout\ $ (\inst10|inst8~regout\ $ ((\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\)))
-- \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUT\ = CARRY((VCC $ \Inc~combout\ & (!\inst10|inst8~regout\ & !\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\) # (!\inst10|inst8~regout\))))
-- \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUTCOUT1_20\ = CARRY((VCC $ \Inc~combout\ & (!\inst10|inst8~regout\ & !\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\)) # (!VCC $ \Inc~combout\ & 
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
	cout1 => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUTCOUT1_20\);

-- Location: LC_X1_Y7_N2
\inst10|inst8\ : maxv_lcell
-- Equation(s):
-- \inst5|$00000|auto_generated|result_node[5]~12\ = ((\inst49~regout\ & ((E2_inst8))) # (!\inst49~regout\ & (\inst9|inst8~regout\)))
-- \inst10|inst8~regout\ = DFFEAS(\inst5|$00000|auto_generated|result_node[5]~12\, GLOBAL(\RTC~combout\), VCC, , \inst10|inst1~0_combout\, \inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datab => \inst9|inst8~regout\,
	datac => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(5),
	datad => \inst49~regout\,
	aclr => GND,
	sload => VCC,
	ena => \inst10|inst1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst5|$00000|auto_generated|result_node[5]~12\,
	regout => \inst10|inst8~regout\);

-- Location: LC_X3_Y4_N6
\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]\ : maxv_lcell
-- Equation(s):
-- \inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(6) = VCC $ \Inc~combout\ $ (\inst10|inst7~regout\ $ ((!(!\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ & 
-- \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUT\) # (\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ & \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUTCOUT1_20\))))
-- \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUT\ = CARRY((VCC $ \Inc~combout\ & ((\inst10|inst7~regout\) # (!\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUT\))) # (!VCC $ \Inc~combout\ & (\inst10|inst7~regout\ & 
-- !\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUT\)))
-- \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUTCOUT1_22\ = CARRY((VCC $ \Inc~combout\ & ((\inst10|inst7~regout\) # (!\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUTCOUT1_20\))) # (!VCC $ \Inc~combout\ & 
-- (\inst10|inst7~regout\ & !\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUTCOUT1_20\)))

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
	cin1 => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUTCOUT1_20\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(6),
	cout0 => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUT\,
	cout1 => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUTCOUT1_22\);

-- Location: LC_X2_Y5_N2
\inst10|inst7\ : maxv_lcell
-- Equation(s):
-- \inst5|$00000|auto_generated|result_node[6]~14\ = ((\inst49~regout\ & (E2_inst7)) # (!\inst49~regout\ & ((\inst9|inst7~regout\))))
-- \inst10|inst7~regout\ = DFFEAS(\inst5|$00000|auto_generated|result_node[6]~14\, GLOBAL(\RTC~combout\), VCC, , \inst10|inst1~0_combout\, \inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datab => \inst49~regout\,
	datac => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(6),
	datad => \inst9|inst7~regout\,
	aclr => GND,
	sload => VCC,
	ena => \inst10|inst1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst5|$00000|auto_generated|result_node[6]~14\,
	regout => \inst10|inst7~regout\);

-- Location: LC_X3_Y4_N7
\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]\ : maxv_lcell
-- Equation(s):
-- \inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(7) = VCC $ \Inc~combout\ $ (\inst10|inst6~regout\ $ (((!\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ & 
-- \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUT\) # (\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ & \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUTCOUT1_22\))))
-- \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUT\ = CARRY((VCC $ \Inc~combout\ & (!\inst10|inst6~regout\ & !\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUT\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUT\) # (!\inst10|inst6~regout\))))
-- \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUTCOUT1_24\ = CARRY((VCC $ \Inc~combout\ & (!\inst10|inst6~regout\ & !\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUTCOUT1_22\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUTCOUT1_22\) # (!\inst10|inst6~regout\))))

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
	cin1 => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUTCOUT1_22\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(7),
	cout0 => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUT\,
	cout1 => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUTCOUT1_24\);

-- Location: LC_X2_Y5_N7
\inst11|inst6\ : maxv_lcell
-- Equation(s):
-- \inst5|$00000|auto_generated|result_node[7]~9\ = ((\inst47~regout\ & ((\inst5|$00000|auto_generated|result_node[7]~8\))) # (!\inst47~regout\ & (E3_inst6)))
-- \inst11|inst6~regout\ = DFFEAS(\inst5|$00000|auto_generated|result_node[7]~9\, GLOBAL(\RTC~combout\), VCC, , \inst11|inst1~0_combout\, \inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datab => \inst47~regout\,
	datac => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(7),
	datad => \inst5|$00000|auto_generated|result_node[7]~8\,
	aclr => GND,
	sload => VCC,
	ena => \inst11|inst1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst5|$00000|auto_generated|result_node[7]~9\,
	regout => \inst11|inst6~regout\);

-- Location: LC_X3_Y5_N5
\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]\ : maxv_lcell
-- Equation(s):
-- \inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(5) = VCC $ \Inc~combout\ $ (\inst11|inst8~regout\ $ ((\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\)))
-- \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUT\ = CARRY((VCC $ \Inc~combout\ & (!\inst11|inst8~regout\ & !\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\) # (!\inst11|inst8~regout\))))
-- \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUTCOUT1_20\ = CARRY((VCC $ \Inc~combout\ & (!\inst11|inst8~regout\ & !\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\)) # (!VCC $ \Inc~combout\ & 
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
	cout1 => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUTCOUT1_20\);

-- Location: LC_X2_Y5_N5
\inst11|inst8\ : maxv_lcell
-- Equation(s):
-- \inst5|$00000|auto_generated|result_node[5]~13\ = ((\inst47~regout\ & ((\inst5|$00000|auto_generated|result_node[5]~12\))) # (!\inst47~regout\ & (E3_inst8)))
-- \inst11|inst8~regout\ = DFFEAS(\inst5|$00000|auto_generated|result_node[5]~13\, GLOBAL(\RTC~combout\), VCC, , \inst11|inst1~0_combout\, \inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datab => \inst47~regout\,
	datac => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(5),
	datad => \inst5|$00000|auto_generated|result_node[5]~12\,
	aclr => GND,
	sload => VCC,
	ena => \inst11|inst1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst5|$00000|auto_generated|result_node[5]~13\,
	regout => \inst11|inst8~regout\);

-- Location: LC_X3_Y5_N6
\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]\ : maxv_lcell
-- Equation(s):
-- \inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(6) = VCC $ \Inc~combout\ $ (\inst11|inst7~regout\ $ ((!(!\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ & 
-- \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUT\) # (\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ & \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUTCOUT1_20\))))
-- \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUT\ = CARRY((VCC $ \Inc~combout\ & ((\inst11|inst7~regout\) # (!\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUT\))) # (!VCC $ \Inc~combout\ & (\inst11|inst7~regout\ & 
-- !\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUT\)))
-- \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUTCOUT1_22\ = CARRY((VCC $ \Inc~combout\ & ((\inst11|inst7~regout\) # (!\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUTCOUT1_20\))) # (!VCC $ \Inc~combout\ & 
-- (\inst11|inst7~regout\ & !\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUTCOUT1_20\)))

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
	cin1 => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUTCOUT1_20\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(6),
	cout0 => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUT\,
	cout1 => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUTCOUT1_22\);

-- Location: LC_X2_Y5_N3
\inst11|inst7\ : maxv_lcell
-- Equation(s):
-- \inst5|$00000|auto_generated|result_node[6]~15\ = ((\inst47~regout\ & ((\inst5|$00000|auto_generated|result_node[6]~14\))) # (!\inst47~regout\ & (E3_inst7)))
-- \inst11|inst7~regout\ = DFFEAS(\inst5|$00000|auto_generated|result_node[6]~15\, GLOBAL(\RTC~combout\), VCC, , \inst11|inst1~0_combout\, \inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datab => \inst47~regout\,
	datac => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(6),
	datad => \inst5|$00000|auto_generated|result_node[6]~14\,
	aclr => GND,
	sload => VCC,
	ena => \inst11|inst1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst5|$00000|auto_generated|result_node[6]~15\,
	regout => \inst11|inst7~regout\);

-- Location: LC_X3_Y5_N7
\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]\ : maxv_lcell
-- Equation(s):
-- \inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(7) = VCC $ \Inc~combout\ $ (\inst11|inst6~regout\ $ (((!\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ & 
-- \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUT\) # (\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ & \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUTCOUT1_22\))))
-- \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUT\ = CARRY((VCC $ \Inc~combout\ & (!\inst11|inst6~regout\ & !\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUT\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUT\) # (!\inst11|inst6~regout\))))
-- \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUTCOUT1_24\ = CARRY((VCC $ \Inc~combout\ & (!\inst11|inst6~regout\ & !\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUTCOUT1_22\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUTCOUT1_22\) # (!\inst11|inst6~regout\))))

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
	cin1 => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUTCOUT1_22\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(7),
	cout0 => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUT\,
	cout1 => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUTCOUT1_24\);

-- Location: LC_X9_Y5_N4
\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]\ : maxv_lcell
-- Equation(s):
-- \inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(4) = VCC $ \Inc~combout\ $ (\inst12|inst9~regout\ $ ((!(!\Inc~combout\ & \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUT\) # (\Inc~combout\ & 
-- \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUTCOUT1_18\))))
-- \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ = CARRY((VCC $ \Inc~combout\ & ((\inst12|inst9~regout\) # (!\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUTCOUT1_18\))) # (!VCC $ \Inc~combout\ & 
-- (\inst12|inst9~regout\ & !\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUTCOUT1_18\)))

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
	cin1 => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUTCOUT1_18\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(4),
	cout => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\);

-- Location: LC_X8_Y5_N1
\inst12|inst9\ : maxv_lcell
-- Equation(s):
-- \inst12|inst9~regout\ = DFFEAS((((\inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(4)))), GLOBAL(\RTC~combout\), VCC, , \inst12|inst1~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datad => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(4),
	aclr => GND,
	ena => \inst12|inst1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|inst9~regout\);

-- Location: LC_X9_Y5_N5
\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]\ : maxv_lcell
-- Equation(s):
-- \inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(5) = VCC $ \Inc~combout\ $ (\inst12|inst8~regout\ $ ((\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\)))
-- \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUT\ = CARRY((VCC $ \Inc~combout\ & (!\inst12|inst8~regout\ & !\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\) # (!\inst12|inst8~regout\))))
-- \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUTCOUT1_20\ = CARRY((VCC $ \Inc~combout\ & (!\inst12|inst8~regout\ & !\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\)) # (!VCC $ \Inc~combout\ & 
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
	cout1 => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUTCOUT1_20\);

-- Location: LC_X8_Y5_N9
\inst12|inst8\ : maxv_lcell
-- Equation(s):
-- \inst12|inst8~regout\ = DFFEAS((((\inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(5)))), GLOBAL(\RTC~combout\), VCC, , \inst12|inst1~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datad => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(5),
	aclr => GND,
	ena => \inst12|inst1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|inst8~regout\);

-- Location: LC_X9_Y5_N6
\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]\ : maxv_lcell
-- Equation(s):
-- \inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(6) = VCC $ \Inc~combout\ $ (\inst12|inst7~regout\ $ ((!(!\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ & 
-- \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUT\) # (\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ & \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUTCOUT1_20\))))
-- \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUT\ = CARRY((VCC $ \Inc~combout\ & ((\inst12|inst7~regout\) # (!\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUT\))) # (!VCC $ \Inc~combout\ & (\inst12|inst7~regout\ & 
-- !\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUT\)))
-- \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUTCOUT1_22\ = CARRY((VCC $ \Inc~combout\ & ((\inst12|inst7~regout\) # (!\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUTCOUT1_20\))) # (!VCC $ \Inc~combout\ & 
-- (\inst12|inst7~regout\ & !\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUTCOUT1_20\)))

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
	cin1 => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUTCOUT1_20\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(6),
	cout0 => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUT\,
	cout1 => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUTCOUT1_22\);

-- Location: LC_X8_Y5_N5
\inst12|inst7\ : maxv_lcell
-- Equation(s):
-- \inst12|inst7~regout\ = DFFEAS(GND, GLOBAL(\RTC~combout\), VCC, , \inst12|inst1~0_combout\, \inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datac => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(6),
	aclr => GND,
	sload => VCC,
	ena => \inst12|inst1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|inst7~regout\);

-- Location: LC_X9_Y5_N7
\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]\ : maxv_lcell
-- Equation(s):
-- \inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(7) = VCC $ \Inc~combout\ $ (\inst12|inst6~regout\ $ (((!\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ & 
-- \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUT\) # (\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ & \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUTCOUT1_22\))))
-- \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUT\ = CARRY((VCC $ \Inc~combout\ & (!\inst12|inst6~regout\ & !\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUT\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUT\) # (!\inst12|inst6~regout\))))
-- \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUTCOUT1_24\ = CARRY((VCC $ \Inc~combout\ & (!\inst12|inst6~regout\ & !\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUTCOUT1_22\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUTCOUT1_22\) # (!\inst12|inst6~regout\))))

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
	cin1 => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUTCOUT1_22\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(7),
	cout0 => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUT\,
	cout1 => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUTCOUT1_24\);

-- Location: LC_X8_Y5_N8
\inst12|inst6\ : maxv_lcell
-- Equation(s):
-- \inst12|inst6~regout\ = DFFEAS((((\inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(7)))), GLOBAL(\RTC~combout\), VCC, , \inst12|inst1~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datad => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(7),
	aclr => GND,
	ena => \inst12|inst1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|inst6~regout\);

-- Location: LC_X7_Y5_N7
\inst13|inst6\ : maxv_lcell
-- Equation(s):
-- \inst2|$00000|auto_generated|result_node[7]~18\ = ((\inst49~regout\ & ((E6_inst6))) # (!\inst49~regout\ & (\inst12|inst6~regout\)))
-- \inst13|inst6~regout\ = DFFEAS(\inst2|$00000|auto_generated|result_node[7]~18\, GLOBAL(\RTC~combout\), VCC, , \inst13|inst1~0_combout\, \inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datab => \inst12|inst6~regout\,
	datac => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(7),
	datad => \inst49~regout\,
	aclr => GND,
	sload => VCC,
	ena => \inst13|inst1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|$00000|auto_generated|result_node[7]~18\,
	regout => \inst13|inst6~regout\);

-- Location: LC_X6_Y5_N4
\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]\ : maxv_lcell
-- Equation(s):
-- \inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(4) = VCC $ \Inc~combout\ $ (\inst13|inst9~regout\ $ ((!(!\Inc~combout\ & \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUT\) # (\Inc~combout\ & 
-- \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUTCOUT1_18\))))
-- \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ = CARRY((VCC $ \Inc~combout\ & ((\inst13|inst9~regout\) # (!\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUTCOUT1_18\))) # (!VCC $ \Inc~combout\ & 
-- (\inst13|inst9~regout\ & !\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUTCOUT1_18\)))

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
	cin1 => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUTCOUT1_18\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(4),
	cout => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\);

-- Location: LC_X5_Y5_N6
\inst13|inst9\ : maxv_lcell
-- Equation(s):
-- \inst2|$00000|auto_generated|result_node[4]~6\ = ((\inst49~regout\ & (E6_inst9)) # (!\inst49~regout\ & ((\inst12|inst9~regout\))))
-- \inst13|inst9~regout\ = DFFEAS(\inst2|$00000|auto_generated|result_node[4]~6\, GLOBAL(\RTC~combout\), VCC, , \inst13|inst1~0_combout\, \inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datab => \inst49~regout\,
	datac => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(4),
	datad => \inst12|inst9~regout\,
	aclr => GND,
	sload => VCC,
	ena => \inst13|inst1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|$00000|auto_generated|result_node[4]~6\,
	regout => \inst13|inst9~regout\);

-- Location: LC_X6_Y5_N5
\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]\ : maxv_lcell
-- Equation(s):
-- \inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(5) = VCC $ \Inc~combout\ $ (\inst13|inst8~regout\ $ ((\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\)))
-- \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUT\ = CARRY((VCC $ \Inc~combout\ & (!\inst13|inst8~regout\ & !\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\) # (!\inst13|inst8~regout\))))
-- \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUTCOUT1_20\ = CARRY((VCC $ \Inc~combout\ & (!\inst13|inst8~regout\ & !\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\)) # (!VCC $ \Inc~combout\ & 
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
	cout1 => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUTCOUT1_20\);

-- Location: LC_X5_Y4_N9
\inst13|inst8\ : maxv_lcell
-- Equation(s):
-- \inst2|$00000|auto_generated|result_node[5]~8\ = ((\inst49~regout\ & (E6_inst8)) # (!\inst49~regout\ & ((\inst12|inst8~regout\))))
-- \inst13|inst8~regout\ = DFFEAS(\inst2|$00000|auto_generated|result_node[5]~8\, GLOBAL(\RTC~combout\), VCC, , \inst13|inst1~0_combout\, \inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datab => \inst49~regout\,
	datac => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(5),
	datad => \inst12|inst8~regout\,
	aclr => GND,
	sload => VCC,
	ena => \inst13|inst1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|$00000|auto_generated|result_node[5]~8\,
	regout => \inst13|inst8~regout\);

-- Location: LC_X6_Y5_N6
\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]\ : maxv_lcell
-- Equation(s):
-- \inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(6) = VCC $ \Inc~combout\ $ (\inst13|inst7~regout\ $ ((!(!\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ & 
-- \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUT\) # (\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ & \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUTCOUT1_20\))))
-- \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUT\ = CARRY((VCC $ \Inc~combout\ & ((\inst13|inst7~regout\) # (!\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUT\))) # (!VCC $ \Inc~combout\ & (\inst13|inst7~regout\ & 
-- !\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUT\)))
-- \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUTCOUT1_22\ = CARRY((VCC $ \Inc~combout\ & ((\inst13|inst7~regout\) # (!\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUTCOUT1_20\))) # (!VCC $ \Inc~combout\ & 
-- (\inst13|inst7~regout\ & !\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUTCOUT1_20\)))

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
	cin1 => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUTCOUT1_20\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(6),
	cout0 => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUT\,
	cout1 => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUTCOUT1_22\);

-- Location: LC_X7_Y5_N8
\inst13|inst7\ : maxv_lcell
-- Equation(s):
-- \inst2|$00000|auto_generated|result_node[6]~20\ = ((\inst49~regout\ & ((E6_inst7))) # (!\inst49~regout\ & (\inst12|inst7~regout\)))
-- \inst13|inst7~regout\ = DFFEAS(\inst2|$00000|auto_generated|result_node[6]~20\, GLOBAL(\RTC~combout\), VCC, , \inst13|inst1~0_combout\, \inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datab => \inst12|inst7~regout\,
	datac => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(6),
	datad => \inst49~regout\,
	aclr => GND,
	sload => VCC,
	ena => \inst13|inst1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|$00000|auto_generated|result_node[6]~20\,
	regout => \inst13|inst7~regout\);

-- Location: LC_X6_Y5_N7
\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]\ : maxv_lcell
-- Equation(s):
-- \inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(7) = VCC $ \Inc~combout\ $ (\inst13|inst6~regout\ $ (((!\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ & 
-- \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUT\) # (\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ & \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUTCOUT1_22\))))
-- \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUT\ = CARRY((VCC $ \Inc~combout\ & (!\inst13|inst6~regout\ & !\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUT\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUT\) # (!\inst13|inst6~regout\))))
-- \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUTCOUT1_24\ = CARRY((VCC $ \Inc~combout\ & (!\inst13|inst6~regout\ & !\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUTCOUT1_22\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUTCOUT1_22\) # (!\inst13|inst6~regout\))))

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
	cin1 => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUTCOUT1_22\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(7),
	cout0 => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUT\,
	cout1 => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUTCOUT1_24\);

-- Location: LC_X6_Y7_N9
\inst14|inst6\ : maxv_lcell
-- Equation(s):
-- \inst2|$00000|auto_generated|result_node[7]~19\ = ((\inst47~regout\ & ((\inst2|$00000|auto_generated|result_node[7]~18\))) # (!\inst47~regout\ & (E7_inst6)))
-- \inst14|inst6~regout\ = DFFEAS(\inst2|$00000|auto_generated|result_node[7]~19\, GLOBAL(\RTC~combout\), VCC, , \inst14|inst1~0_combout\, \inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datab => \inst47~regout\,
	datac => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(7),
	datad => \inst2|$00000|auto_generated|result_node[7]~18\,
	aclr => GND,
	sload => VCC,
	ena => \inst14|inst1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|$00000|auto_generated|result_node[7]~19\,
	regout => \inst14|inst6~regout\);

-- Location: LC_X6_Y4_N4
\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]\ : maxv_lcell
-- Equation(s):
-- \inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(4) = VCC $ \Inc~combout\ $ (\inst14|inst9~regout\ $ ((!(!\Inc~combout\ & \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUT\) # (\Inc~combout\ & 
-- \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUTCOUT1_18\))))
-- \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ = CARRY((VCC $ \Inc~combout\ & ((\inst14|inst9~regout\) # (!\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUTCOUT1_18\))) # (!VCC $ \Inc~combout\ & 
-- (\inst14|inst9~regout\ & !\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUTCOUT1_18\)))

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
	cin1 => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUTCOUT1_18\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(4),
	cout => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\);

-- Location: LC_X5_Y7_N2
\inst14|inst9\ : maxv_lcell
-- Equation(s):
-- \inst2|$00000|auto_generated|result_node[4]~7\ = (\inst47~regout\ & (((\inst2|$00000|auto_generated|result_node[4]~6\)))) # (!\inst47~regout\ & (((E7_inst9))))
-- \inst14|inst9~regout\ = DFFEAS(\inst2|$00000|auto_generated|result_node[4]~7\, GLOBAL(\RTC~combout\), VCC, , \inst14|inst1~0_combout\, \inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	dataa => \inst47~regout\,
	datac => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(4),
	datad => \inst2|$00000|auto_generated|result_node[4]~6\,
	aclr => GND,
	sload => VCC,
	ena => \inst14|inst1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|$00000|auto_generated|result_node[4]~7\,
	regout => \inst14|inst9~regout\);

-- Location: LC_X6_Y4_N5
\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]\ : maxv_lcell
-- Equation(s):
-- \inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(5) = VCC $ \Inc~combout\ $ (\inst14|inst8~regout\ $ ((\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\)))
-- \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUT\ = CARRY((VCC $ \Inc~combout\ & (!\inst14|inst8~regout\ & !\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\) # (!\inst14|inst8~regout\))))
-- \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUTCOUT1_20\ = CARRY((VCC $ \Inc~combout\ & (!\inst14|inst8~regout\ & !\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\)) # (!VCC $ \Inc~combout\ & 
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
	cout1 => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUTCOUT1_20\);

-- Location: LC_X5_Y4_N5
\inst14|inst8\ : maxv_lcell
-- Equation(s):
-- \inst2|$00000|auto_generated|result_node[5]~9\ = ((\inst47~regout\ & ((\inst2|$00000|auto_generated|result_node[5]~8\))) # (!\inst47~regout\ & (E7_inst8)))
-- \inst14|inst8~regout\ = DFFEAS(\inst2|$00000|auto_generated|result_node[5]~9\, GLOBAL(\RTC~combout\), VCC, , \inst14|inst1~0_combout\, \inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datab => \inst47~regout\,
	datac => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(5),
	datad => \inst2|$00000|auto_generated|result_node[5]~8\,
	aclr => GND,
	sload => VCC,
	ena => \inst14|inst1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|$00000|auto_generated|result_node[5]~9\,
	regout => \inst14|inst8~regout\);

-- Location: LC_X6_Y4_N6
\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]\ : maxv_lcell
-- Equation(s):
-- \inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(6) = VCC $ \Inc~combout\ $ (\inst14|inst7~regout\ $ ((!(!\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ & 
-- \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUT\) # (\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ & \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUTCOUT1_20\))))
-- \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUT\ = CARRY((VCC $ \Inc~combout\ & ((\inst14|inst7~regout\) # (!\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUT\))) # (!VCC $ \Inc~combout\ & (\inst14|inst7~regout\ & 
-- !\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUT\)))
-- \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUTCOUT1_22\ = CARRY((VCC $ \Inc~combout\ & ((\inst14|inst7~regout\) # (!\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUTCOUT1_20\))) # (!VCC $ \Inc~combout\ & 
-- (\inst14|inst7~regout\ & !\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUTCOUT1_20\)))

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
	cin1 => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUTCOUT1_20\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(6),
	cout0 => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUT\,
	cout1 => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUTCOUT1_22\);

-- Location: LC_X6_Y7_N7
\inst14|inst7\ : maxv_lcell
-- Equation(s):
-- \inst2|$00000|auto_generated|result_node[6]~21\ = ((\inst47~regout\ & ((\inst2|$00000|auto_generated|result_node[6]~20\))) # (!\inst47~regout\ & (E7_inst7)))
-- \inst14|inst7~regout\ = DFFEAS(\inst2|$00000|auto_generated|result_node[6]~21\, GLOBAL(\RTC~combout\), VCC, , \inst14|inst1~0_combout\, \inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datab => \inst47~regout\,
	datac => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(6),
	datad => \inst2|$00000|auto_generated|result_node[6]~20\,
	aclr => GND,
	sload => VCC,
	ena => \inst14|inst1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|$00000|auto_generated|result_node[6]~21\,
	regout => \inst14|inst7~regout\);

-- Location: LC_X6_Y4_N7
\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]\ : maxv_lcell
-- Equation(s):
-- \inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(7) = VCC $ \Inc~combout\ $ (\inst14|inst6~regout\ $ (((!\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ & 
-- \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUT\) # (\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ & \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUTCOUT1_22\))))
-- \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUT\ = CARRY((VCC $ \Inc~combout\ & (!\inst14|inst6~regout\ & !\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUT\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUT\) # (!\inst14|inst6~regout\))))
-- \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUTCOUT1_24\ = CARRY((VCC $ \Inc~combout\ & (!\inst14|inst6~regout\ & !\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUTCOUT1_22\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUTCOUT1_22\) # (!\inst14|inst6~regout\))))

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
	cin1 => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUTCOUT1_22\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(7),
	cout0 => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUT\,
	cout1 => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUTCOUT1_24\);

-- Location: LC_X6_Y6_N1
\inst3|$00000|auto_generated|result_node[7]~32\ : maxv_lcell
-- Equation(s):
-- \inst3|$00000|auto_generated|result_node[7]~32_combout\ = ((\hiTrueSetDisp~combout\ & ((\inst2|$00000|auto_generated|result_node[7]~19\))) # (!\hiTrueSetDisp~combout\ & (\inst5|$00000|auto_generated|result_node[7]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \hiTrueSetDisp~combout\,
	datac => \inst5|$00000|auto_generated|result_node[7]~9\,
	datad => \inst2|$00000|auto_generated|result_node[7]~19\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst3|$00000|auto_generated|result_node[7]~32_combout\);

-- Location: LC_X6_Y6_N0
\inst38|inst6\ : maxv_lcell
-- Equation(s):
-- \inst3|$00000|auto_generated|result_node[7]~33\ = (\inst50~regout\ & (((\inst3|$00000|auto_generated|result_node[7]~32_combout\)))) # (!\inst50~regout\ & (((E4_inst6))))
-- \inst38|inst6~regout\ = DFFEAS(\inst3|$00000|auto_generated|result_node[7]~33\, GLOBAL(\RTC~combout\), VCC, , \inst34|freezeParalell\, \inst6|LPM_SHIFTREG_component|dffs\(10), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	dataa => \inst50~regout\,
	datac => \inst6|LPM_SHIFTREG_component|dffs\(10),
	datad => \inst3|$00000|auto_generated|result_node[7]~32_combout\,
	aclr => GND,
	sload => VCC,
	ena => \inst34|freezeParalell\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst3|$00000|auto_generated|result_node[7]~33\,
	regout => \inst38|inst6~regout\);

-- Location: LC_X1_Y6_N5
\inst6|LPM_SHIFTREG_component|dffs[11]\ : maxv_lcell
-- Equation(s):
-- \inst6|LPM_SHIFTREG_component|dffs\(11) = DFFEAS(GND, GLOBAL(\RTC~combout\), VCC, , !\inst34|freezeParalell\, \inst6|LPM_SHIFTREG_component|dffs\(10), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datac => \inst6|LPM_SHIFTREG_component|dffs\(10),
	aclr => GND,
	sload => VCC,
	ena => \inst34|ALT_INV_freezeParalell\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|LPM_SHIFTREG_component|dffs\(11));

-- Location: LC_X2_Y7_N8
\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]\ : maxv_lcell
-- Equation(s):
-- \inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(8) = VCC $ \Inc~combout\ $ (\inst9|inst5~regout\ $ ((!(!\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ & \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUT\) 
-- # (\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ & \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUTCOUT1_24\))))
-- \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUT\ = CARRY((VCC $ \Inc~combout\ & ((\inst9|inst5~regout\) # (!\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUT\))) # (!VCC $ \Inc~combout\ & (\inst9|inst5~regout\ & 
-- !\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUT\)))
-- \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUTCOUT1_26\ = CARRY((VCC $ \Inc~combout\ & ((\inst9|inst5~regout\) # (!\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUTCOUT1_24\))) # (!VCC $ \Inc~combout\ & 
-- (\inst9|inst5~regout\ & !\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUTCOUT1_24\)))

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
	cin1 => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUTCOUT1_24\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(8),
	cout0 => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUT\,
	cout1 => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUTCOUT1_26\);

-- Location: LC_X1_Y7_N5
\inst9|inst5\ : maxv_lcell
-- Equation(s):
-- \inst9|inst5~regout\ = DFFEAS((((\inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(8)))), GLOBAL(\RTC~combout\), VCC, , \inst9|inst1~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datad => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(8),
	aclr => GND,
	ena => \inst9|inst1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst5~regout\);

-- Location: LC_X2_Y5_N4
\inst10|inst5\ : maxv_lcell
-- Equation(s):
-- \inst5|$00000|auto_generated|result_node[8]~10\ = ((\inst49~regout\ & (E2_inst5)) # (!\inst49~regout\ & ((\inst9|inst5~regout\))))
-- \inst10|inst5~regout\ = DFFEAS(\inst5|$00000|auto_generated|result_node[8]~10\, GLOBAL(\RTC~combout\), VCC, , \inst10|inst1~0_combout\, \inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(8), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datab => \inst49~regout\,
	datac => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(8),
	datad => \inst9|inst5~regout\,
	aclr => GND,
	sload => VCC,
	ena => \inst10|inst1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst5|$00000|auto_generated|result_node[8]~10\,
	regout => \inst10|inst5~regout\);

-- Location: LC_X3_Y4_N8
\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]\ : maxv_lcell
-- Equation(s):
-- \inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(8) = VCC $ \Inc~combout\ $ (\inst10|inst5~regout\ $ ((!(!\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ & 
-- \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUT\) # (\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ & \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUTCOUT1_24\))))
-- \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUT\ = CARRY((VCC $ \Inc~combout\ & ((\inst10|inst5~regout\) # (!\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUT\))) # (!VCC $ \Inc~combout\ & (\inst10|inst5~regout\ & 
-- !\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUT\)))
-- \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUTCOUT1_26\ = CARRY((VCC $ \Inc~combout\ & ((\inst10|inst5~regout\) # (!\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUTCOUT1_24\))) # (!VCC $ \Inc~combout\ & 
-- (\inst10|inst5~regout\ & !\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUTCOUT1_24\)))

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
	cin1 => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUTCOUT1_24\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(8),
	cout0 => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUT\,
	cout1 => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUTCOUT1_26\);

-- Location: LC_X1_Y5_N3
\inst11|inst5\ : maxv_lcell
-- Equation(s):
-- \inst5|$00000|auto_generated|result_node[8]~11\ = ((\inst47~regout\ & ((\inst5|$00000|auto_generated|result_node[8]~10\))) # (!\inst47~regout\ & (E3_inst5)))
-- \inst11|inst5~regout\ = DFFEAS(\inst5|$00000|auto_generated|result_node[8]~11\, GLOBAL(\RTC~combout\), VCC, , \inst11|inst1~0_combout\, \inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(8), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datab => \inst47~regout\,
	datac => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(8),
	datad => \inst5|$00000|auto_generated|result_node[8]~10\,
	aclr => GND,
	sload => VCC,
	ena => \inst11|inst1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst5|$00000|auto_generated|result_node[8]~11\,
	regout => \inst11|inst5~regout\);

-- Location: LC_X3_Y5_N8
\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]\ : maxv_lcell
-- Equation(s):
-- \inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(8) = VCC $ \Inc~combout\ $ (\inst11|inst5~regout\ $ ((!(!\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ & 
-- \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUT\) # (\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ & \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUTCOUT1_24\))))
-- \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUT\ = CARRY((VCC $ \Inc~combout\ & ((\inst11|inst5~regout\) # (!\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUT\))) # (!VCC $ \Inc~combout\ & (\inst11|inst5~regout\ & 
-- !\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUT\)))
-- \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUTCOUT1_26\ = CARRY((VCC $ \Inc~combout\ & ((\inst11|inst5~regout\) # (!\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUTCOUT1_24\))) # (!VCC $ \Inc~combout\ & 
-- (\inst11|inst5~regout\ & !\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUTCOUT1_24\)))

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
	cin1 => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUTCOUT1_24\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(8),
	cout0 => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUT\,
	cout1 => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUTCOUT1_26\);

-- Location: LC_X2_Y6_N6
\inst38|inst5\ : maxv_lcell
-- Equation(s):
-- \inst24|LPM_COMPARE_component|auto_generated|aeb_int~2\ = (\inst38|inst6~regout\ & (\inst5|$00000|auto_generated|result_node[7]~9\ & (E4_inst5 $ (!\inst5|$00000|auto_generated|result_node[8]~11\)))) # (!\inst38|inst6~regout\ & 
-- (!\inst5|$00000|auto_generated|result_node[7]~9\ & (E4_inst5 $ (!\inst5|$00000|auto_generated|result_node[8]~11\))))
-- \inst38|inst5~regout\ = DFFEAS(\inst24|LPM_COMPARE_component|auto_generated|aeb_int~2\, GLOBAL(\RTC~combout\), VCC, , \inst34|freezeParalell\, \inst6|LPM_SHIFTREG_component|dffs\(11), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9009",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	dataa => \inst38|inst6~regout\,
	datab => \inst5|$00000|auto_generated|result_node[7]~9\,
	datac => \inst6|LPM_SHIFTREG_component|dffs\(11),
	datad => \inst5|$00000|auto_generated|result_node[8]~11\,
	aclr => GND,
	sload => VCC,
	ena => \inst34|freezeParalell\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst24|LPM_COMPARE_component|auto_generated|aeb_int~2\,
	regout => \inst38|inst5~regout\);

-- Location: LC_X5_Y6_N2
\inst3|$00000|auto_generated|result_node[5]~22\ : maxv_lcell
-- Equation(s):
-- \inst3|$00000|auto_generated|result_node[5]~22_combout\ = ((\hiTrueSetDisp~combout\ & ((\inst2|$00000|auto_generated|result_node[5]~9\))) # (!\hiTrueSetDisp~combout\ & (\inst5|$00000|auto_generated|result_node[5]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst5|$00000|auto_generated|result_node[5]~13\,
	datac => \inst2|$00000|auto_generated|result_node[5]~9\,
	datad => \hiTrueSetDisp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst3|$00000|auto_generated|result_node[5]~22_combout\);

-- Location: LC_X5_Y6_N0
\inst38|inst8\ : maxv_lcell
-- Equation(s):
-- \inst3|$00000|auto_generated|result_node[5]~23\ = (\inst50~regout\ & (((\inst3|$00000|auto_generated|result_node[5]~22_combout\)))) # (!\inst50~regout\ & (((E4_inst8))))
-- \inst38|inst8~regout\ = DFFEAS(\inst3|$00000|auto_generated|result_node[5]~23\, GLOBAL(\RTC~combout\), VCC, , \inst34|freezeParalell\, \inst6|LPM_SHIFTREG_component|dffs\(8), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	dataa => \inst50~regout\,
	datac => \inst6|LPM_SHIFTREG_component|dffs\(8),
	datad => \inst3|$00000|auto_generated|result_node[5]~22_combout\,
	aclr => GND,
	sload => VCC,
	ena => \inst34|freezeParalell\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst3|$00000|auto_generated|result_node[5]~23\,
	regout => \inst38|inst8~regout\);

-- Location: LC_X2_Y6_N2
\inst38|inst7\ : maxv_lcell
-- Equation(s):
-- \inst24|LPM_COMPARE_component|auto_generated|aeb_int~3\ = (\inst38|inst8~regout\ & (\inst5|$00000|auto_generated|result_node[5]~13\ & (\inst5|$00000|auto_generated|result_node[6]~15\ $ (!E4_inst7)))) # (!\inst38|inst8~regout\ & 
-- (!\inst5|$00000|auto_generated|result_node[5]~13\ & (\inst5|$00000|auto_generated|result_node[6]~15\ $ (!E4_inst7))))
-- \inst38|inst7~regout\ = DFFEAS(\inst24|LPM_COMPARE_component|auto_generated|aeb_int~3\, GLOBAL(\RTC~combout\), VCC, , \inst34|freezeParalell\, \inst6|LPM_SHIFTREG_component|dffs\(9), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8241",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	dataa => \inst38|inst8~regout\,
	datab => \inst5|$00000|auto_generated|result_node[6]~15\,
	datac => \inst6|LPM_SHIFTREG_component|dffs\(9),
	datad => \inst5|$00000|auto_generated|result_node[5]~13\,
	aclr => GND,
	sload => VCC,
	ena => \inst34|freezeParalell\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst24|LPM_COMPARE_component|auto_generated|aeb_int~3\,
	regout => \inst38|inst7~regout\);

-- Location: LC_X2_Y7_N9
\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]\ : maxv_lcell
-- Equation(s):
-- \inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(9) = VCC $ \Inc~combout\ $ (\inst9|inst4~regout\ $ (((!\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ & \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUT\) # 
-- (\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ & \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUTCOUT1_26\))))
-- \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\ = CARRY((VCC $ \Inc~combout\ & (!\inst9|inst4~regout\ & !\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUTCOUT1_26\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUTCOUT1_26\) # (!\inst9|inst4~regout\))))

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
	cin1 => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUTCOUT1_26\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(9),
	cout => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\);

-- Location: LC_X3_Y7_N8
\inst9|inst4\ : maxv_lcell
-- Equation(s):
-- \inst9|inst4~regout\ = DFFEAS(GND, GLOBAL(\RTC~combout\), VCC, , \inst9|inst1~0_combout\, \inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(9), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datac => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(9),
	aclr => GND,
	sload => VCC,
	ena => \inst9|inst1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst4~regout\);

-- Location: LC_X4_Y4_N9
\inst10|inst4\ : maxv_lcell
-- Equation(s):
-- \inst5|$00000|auto_generated|result_node[9]~4\ = ((\inst49~regout\ & (E2_inst4)) # (!\inst49~regout\ & ((\inst9|inst4~regout\))))
-- \inst10|inst4~regout\ = DFFEAS(\inst5|$00000|auto_generated|result_node[9]~4\, GLOBAL(\RTC~combout\), VCC, , \inst10|inst1~0_combout\, \inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(9), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datab => \inst49~regout\,
	datac => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(9),
	datad => \inst9|inst4~regout\,
	aclr => GND,
	sload => VCC,
	ena => \inst10|inst1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst5|$00000|auto_generated|result_node[9]~4\,
	regout => \inst10|inst4~regout\);

-- Location: LC_X3_Y4_N9
\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]\ : maxv_lcell
-- Equation(s):
-- \inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(9) = VCC $ \Inc~combout\ $ (\inst10|inst4~regout\ $ (((!\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ & 
-- \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUT\) # (\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ & \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUTCOUT1_26\))))
-- \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\ = CARRY((VCC $ \Inc~combout\ & (!\inst10|inst4~regout\ & !\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUTCOUT1_26\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUTCOUT1_26\) # (!\inst10|inst4~regout\))))

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
	cin1 => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUTCOUT1_26\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(9),
	cout => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\);

-- Location: LC_X4_Y4_N5
\inst11|inst4\ : maxv_lcell
-- Equation(s):
-- \inst5|$00000|auto_generated|result_node[9]~5\ = ((\inst47~regout\ & ((\inst5|$00000|auto_generated|result_node[9]~4\))) # (!\inst47~regout\ & (E3_inst4)))
-- \inst11|inst4~regout\ = DFFEAS(\inst5|$00000|auto_generated|result_node[9]~5\, GLOBAL(\RTC~combout\), VCC, , \inst11|inst1~0_combout\, \inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(9), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datab => \inst47~regout\,
	datac => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(9),
	datad => \inst5|$00000|auto_generated|result_node[9]~4\,
	aclr => GND,
	sload => VCC,
	ena => \inst11|inst1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst5|$00000|auto_generated|result_node[9]~5\,
	regout => \inst11|inst4~regout\);

-- Location: LC_X3_Y5_N9
\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]\ : maxv_lcell
-- Equation(s):
-- \inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(9) = VCC $ \Inc~combout\ $ (\inst11|inst4~regout\ $ (((!\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ & 
-- \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUT\) # (\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ & \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUTCOUT1_26\))))
-- \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\ = CARRY((VCC $ \Inc~combout\ & (!\inst11|inst4~regout\ & !\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUTCOUT1_26\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUTCOUT1_26\) # (!\inst11|inst4~regout\))))

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
	cin1 => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUTCOUT1_26\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(9),
	cout => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\);

-- Location: LC_X9_Y5_N8
\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]\ : maxv_lcell
-- Equation(s):
-- \inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(8) = VCC $ \Inc~combout\ $ (\inst12|inst5~regout\ $ ((!(!\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ & 
-- \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUT\) # (\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ & \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUTCOUT1_24\))))
-- \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUT\ = CARRY((VCC $ \Inc~combout\ & ((\inst12|inst5~regout\) # (!\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUT\))) # (!VCC $ \Inc~combout\ & (\inst12|inst5~regout\ & 
-- !\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUT\)))
-- \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUTCOUT1_26\ = CARRY((VCC $ \Inc~combout\ & ((\inst12|inst5~regout\) # (!\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUTCOUT1_24\))) # (!VCC $ \Inc~combout\ & 
-- (\inst12|inst5~regout\ & !\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUTCOUT1_24\)))

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
	cin1 => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUTCOUT1_24\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(8),
	cout0 => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUT\,
	cout1 => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUTCOUT1_26\);

-- Location: LC_X8_Y5_N4
\inst12|inst5\ : maxv_lcell
-- Equation(s):
-- \inst12|inst5~regout\ = DFFEAS((((\inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(8)))), GLOBAL(\RTC~combout\), VCC, , \inst12|inst1~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datad => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(8),
	aclr => GND,
	ena => \inst12|inst1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|inst5~regout\);

-- Location: LC_X9_Y5_N9
\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]\ : maxv_lcell
-- Equation(s):
-- \inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(9) = VCC $ \Inc~combout\ $ (\inst12|inst4~regout\ $ (((!\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ & 
-- \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUT\) # (\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ & \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUTCOUT1_26\))))
-- \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\ = CARRY((VCC $ \Inc~combout\ & (!\inst12|inst4~regout\ & !\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUTCOUT1_26\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUTCOUT1_26\) # (!\inst12|inst4~regout\))))

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
	cin1 => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUTCOUT1_26\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(9),
	cout => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\);

-- Location: LC_X8_Y5_N2
\inst12|inst4\ : maxv_lcell
-- Equation(s):
-- \inst12|inst4~regout\ = DFFEAS(GND, GLOBAL(\RTC~combout\), VCC, , \inst12|inst1~0_combout\, \inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(9), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datac => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(9),
	aclr => GND,
	sload => VCC,
	ena => \inst12|inst1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|inst4~regout\);

-- Location: LC_X5_Y5_N3
\inst13|inst4\ : maxv_lcell
-- Equation(s):
-- \inst2|$00000|auto_generated|result_node[9]~14\ = ((\inst49~regout\ & (E6_inst4)) # (!\inst49~regout\ & ((\inst12|inst4~regout\))))
-- \inst13|inst4~regout\ = DFFEAS(\inst2|$00000|auto_generated|result_node[9]~14\, GLOBAL(\RTC~combout\), VCC, , \inst13|inst1~0_combout\, \inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(9), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datab => \inst49~regout\,
	datac => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(9),
	datad => \inst12|inst4~regout\,
	aclr => GND,
	sload => VCC,
	ena => \inst13|inst1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|$00000|auto_generated|result_node[9]~14\,
	regout => \inst13|inst4~regout\);

-- Location: LC_X6_Y5_N8
\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]\ : maxv_lcell
-- Equation(s):
-- \inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(8) = VCC $ \Inc~combout\ $ (\inst13|inst5~regout\ $ ((!(!\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ & 
-- \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUT\) # (\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ & \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUTCOUT1_24\))))
-- \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUT\ = CARRY((VCC $ \Inc~combout\ & ((\inst13|inst5~regout\) # (!\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUT\))) # (!VCC $ \Inc~combout\ & (\inst13|inst5~regout\ & 
-- !\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUT\)))
-- \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUTCOUT1_26\ = CARRY((VCC $ \Inc~combout\ & ((\inst13|inst5~regout\) # (!\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUTCOUT1_24\))) # (!VCC $ \Inc~combout\ & 
-- (\inst13|inst5~regout\ & !\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUTCOUT1_24\)))

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
	cin1 => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUTCOUT1_24\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(8),
	cout0 => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUT\,
	cout1 => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUTCOUT1_26\);

-- Location: LC_X7_Y5_N5
\inst13|inst5\ : maxv_lcell
-- Equation(s):
-- \inst2|$00000|auto_generated|result_node[8]~16\ = ((\inst49~regout\ & ((E6_inst5))) # (!\inst49~regout\ & (\inst12|inst5~regout\)))
-- \inst13|inst5~regout\ = DFFEAS(\inst2|$00000|auto_generated|result_node[8]~16\, GLOBAL(\RTC~combout\), VCC, , \inst13|inst1~0_combout\, \inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(8), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datab => \inst12|inst5~regout\,
	datac => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(8),
	datad => \inst49~regout\,
	aclr => GND,
	sload => VCC,
	ena => \inst13|inst1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|$00000|auto_generated|result_node[8]~16\,
	regout => \inst13|inst5~regout\);

-- Location: LC_X6_Y5_N9
\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]\ : maxv_lcell
-- Equation(s):
-- \inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(9) = VCC $ \Inc~combout\ $ (\inst13|inst4~regout\ $ (((!\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ & 
-- \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUT\) # (\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ & \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUTCOUT1_26\))))
-- \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\ = CARRY((VCC $ \Inc~combout\ & (!\inst13|inst4~regout\ & !\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUTCOUT1_26\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUTCOUT1_26\) # (!\inst13|inst4~regout\))))

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
	cin1 => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUTCOUT1_26\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(9),
	cout => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\);

-- Location: LC_X5_Y4_N7
\inst14|inst4\ : maxv_lcell
-- Equation(s):
-- \inst2|$00000|auto_generated|result_node[9]~15\ = ((\inst47~regout\ & ((\inst2|$00000|auto_generated|result_node[9]~14\))) # (!\inst47~regout\ & (E7_inst4)))
-- \inst14|inst4~regout\ = DFFEAS(\inst2|$00000|auto_generated|result_node[9]~15\, GLOBAL(\RTC~combout\), VCC, , \inst14|inst1~0_combout\, \inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(9), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datab => \inst47~regout\,
	datac => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(9),
	datad => \inst2|$00000|auto_generated|result_node[9]~14\,
	aclr => GND,
	sload => VCC,
	ena => \inst14|inst1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|$00000|auto_generated|result_node[9]~15\,
	regout => \inst14|inst4~regout\);

-- Location: LC_X6_Y4_N8
\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]\ : maxv_lcell
-- Equation(s):
-- \inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(8) = VCC $ \Inc~combout\ $ (\inst14|inst5~regout\ $ ((!(!\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ & 
-- \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUT\) # (\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ & \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUTCOUT1_24\))))
-- \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUT\ = CARRY((VCC $ \Inc~combout\ & ((\inst14|inst5~regout\) # (!\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUT\))) # (!VCC $ \Inc~combout\ & (\inst14|inst5~regout\ & 
-- !\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUT\)))
-- \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUTCOUT1_26\ = CARRY((VCC $ \Inc~combout\ & ((\inst14|inst5~regout\) # (!\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUTCOUT1_24\))) # (!VCC $ \Inc~combout\ & 
-- (\inst14|inst5~regout\ & !\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUTCOUT1_24\)))

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
	cin1 => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[7]~COUTCOUT1_24\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(8),
	cout0 => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUT\,
	cout1 => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUTCOUT1_26\);

-- Location: LC_X6_Y7_N8
\inst14|inst5\ : maxv_lcell
-- Equation(s):
-- \inst2|$00000|auto_generated|result_node[8]~17\ = ((\inst47~regout\ & ((\inst2|$00000|auto_generated|result_node[8]~16\))) # (!\inst47~regout\ & (E7_inst5)))
-- \inst14|inst5~regout\ = DFFEAS(\inst2|$00000|auto_generated|result_node[8]~17\, GLOBAL(\RTC~combout\), VCC, , \inst14|inst1~0_combout\, \inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(8), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datab => \inst47~regout\,
	datac => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(8),
	datad => \inst2|$00000|auto_generated|result_node[8]~16\,
	aclr => GND,
	sload => VCC,
	ena => \inst14|inst1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|$00000|auto_generated|result_node[8]~17\,
	regout => \inst14|inst5~regout\);

-- Location: LC_X6_Y4_N9
\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]\ : maxv_lcell
-- Equation(s):
-- \inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(9) = VCC $ \Inc~combout\ $ (\inst14|inst4~regout\ $ (((!\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ & 
-- \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUT\) # (\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ & \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUTCOUT1_26\))))
-- \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\ = CARRY((VCC $ \Inc~combout\ & (!\inst14|inst4~regout\ & !\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUTCOUT1_26\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUTCOUT1_26\) # (!\inst14|inst4~regout\))))

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
	cin1 => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[8]~COUTCOUT1_26\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(9),
	cout => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\);

-- Location: LC_X4_Y5_N4
\inst3|$00000|auto_generated|result_node[9]~28\ : maxv_lcell
-- Equation(s):
-- \inst3|$00000|auto_generated|result_node[9]~28_combout\ = ((\hiTrueSetDisp~combout\ & ((\inst2|$00000|auto_generated|result_node[9]~15\))) # (!\hiTrueSetDisp~combout\ & (\inst5|$00000|auto_generated|result_node[9]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst5|$00000|auto_generated|result_node[9]~5\,
	datac => \inst2|$00000|auto_generated|result_node[9]~15\,
	datad => \hiTrueSetDisp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst3|$00000|auto_generated|result_node[9]~28_combout\);

-- Location: LC_X1_Y6_N7
\inst6|LPM_SHIFTREG_component|dffs[12]\ : maxv_lcell
-- Equation(s):
-- \inst6|LPM_SHIFTREG_component|dffs\(12) = DFFEAS(GND, GLOBAL(\RTC~combout\), VCC, , !\inst34|freezeParalell\, \inst6|LPM_SHIFTREG_component|dffs\(11), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datac => \inst6|LPM_SHIFTREG_component|dffs\(11),
	aclr => GND,
	sload => VCC,
	ena => \inst34|ALT_INV_freezeParalell\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|LPM_SHIFTREG_component|dffs\(12));

-- Location: LC_X2_Y6_N8
\inst38|inst4\ : maxv_lcell
-- Equation(s):
-- \inst3|$00000|auto_generated|result_node[9]~29\ = ((\inst50~regout\ & (\inst3|$00000|auto_generated|result_node[9]~28_combout\)) # (!\inst50~regout\ & ((E4_inst4))))
-- \inst38|inst4~regout\ = DFFEAS(\inst3|$00000|auto_generated|result_node[9]~29\, GLOBAL(\RTC~combout\), VCC, , \inst34|freezeParalell\, \inst6|LPM_SHIFTREG_component|dffs\(12), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccf0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datab => \inst3|$00000|auto_generated|result_node[9]~28_combout\,
	datac => \inst6|LPM_SHIFTREG_component|dffs\(12),
	datad => \inst50~regout\,
	aclr => GND,
	sload => VCC,
	ena => \inst34|freezeParalell\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst3|$00000|auto_generated|result_node[9]~29\,
	regout => \inst38|inst4~regout\);

-- Location: LC_X3_Y7_N0
\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]\ : maxv_lcell
-- Equation(s):
-- \inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(10) = VCC $ \Inc~combout\ $ (\inst9|inst3~regout\ $ ((!\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\)))
-- \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUT\ = CARRY((VCC $ \Inc~combout\ & ((\inst9|inst3~regout\) # (!\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\))) # (!VCC $ \Inc~combout\ & (\inst9|inst3~regout\ & 
-- !\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\)))
-- \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUTCOUT1_28\ = CARRY((VCC $ \Inc~combout\ & ((\inst9|inst3~regout\) # (!\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\))) # (!VCC $ \Inc~combout\ & 
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
	cout1 => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUTCOUT1_28\);

-- Location: LC_X3_Y7_N5
\inst9|inst3\ : maxv_lcell
-- Equation(s):
-- \inst9|inst3~regout\ = DFFEAS(GND, GLOBAL(\RTC~combout\), VCC, , \inst9|inst1~0_combout\, \inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(10), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datac => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(10),
	aclr => GND,
	sload => VCC,
	ena => \inst9|inst1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst3~regout\);

-- Location: LC_X4_Y4_N6
\inst10|inst3\ : maxv_lcell
-- Equation(s):
-- \inst5|$00000|auto_generated|result_node[10]~6\ = ((\inst49~regout\ & (E2_inst3)) # (!\inst49~regout\ & ((\inst9|inst3~regout\))))
-- \inst10|inst3~regout\ = DFFEAS(\inst5|$00000|auto_generated|result_node[10]~6\, GLOBAL(\RTC~combout\), VCC, , \inst10|inst1~0_combout\, \inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(10), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datab => \inst49~regout\,
	datac => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(10),
	datad => \inst9|inst3~regout\,
	aclr => GND,
	sload => VCC,
	ena => \inst10|inst1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst5|$00000|auto_generated|result_node[10]~6\,
	regout => \inst10|inst3~regout\);

-- Location: LC_X4_Y4_N0
\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]\ : maxv_lcell
-- Equation(s):
-- \inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(10) = VCC $ \Inc~combout\ $ (\inst10|inst3~regout\ $ ((!\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\)))
-- \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUT\ = CARRY((VCC $ \Inc~combout\ & ((\inst10|inst3~regout\) # (!\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\))) # (!VCC $ \Inc~combout\ & (\inst10|inst3~regout\ 
-- & !\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\)))
-- \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUTCOUT1_28\ = CARRY((VCC $ \Inc~combout\ & ((\inst10|inst3~regout\) # (!\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\))) # (!VCC $ \Inc~combout\ & 
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
	cout1 => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUTCOUT1_28\);

-- Location: LC_X4_Y4_N7
\inst11|inst3\ : maxv_lcell
-- Equation(s):
-- \inst5|$00000|auto_generated|result_node[10]~7\ = ((\inst47~regout\ & ((\inst5|$00000|auto_generated|result_node[10]~6\))) # (!\inst47~regout\ & (E3_inst3)))
-- \inst11|inst3~regout\ = DFFEAS(\inst5|$00000|auto_generated|result_node[10]~7\, GLOBAL(\RTC~combout\), VCC, , \inst11|inst1~0_combout\, \inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(10), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datab => \inst47~regout\,
	datac => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(10),
	datad => \inst5|$00000|auto_generated|result_node[10]~6\,
	aclr => GND,
	sload => VCC,
	ena => \inst11|inst1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst5|$00000|auto_generated|result_node[10]~7\,
	regout => \inst11|inst3~regout\);

-- Location: LC_X4_Y5_N0
\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]\ : maxv_lcell
-- Equation(s):
-- \inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(10) = VCC $ \Inc~combout\ $ (\inst11|inst3~regout\ $ ((!\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\)))
-- \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUT\ = CARRY((VCC $ \Inc~combout\ & ((\inst11|inst3~regout\) # (!\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\))) # (!VCC $ \Inc~combout\ & (\inst11|inst3~regout\ 
-- & !\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\)))
-- \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUTCOUT1_28\ = CARRY((VCC $ \Inc~combout\ & ((\inst11|inst3~regout\) # (!\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\))) # (!VCC $ \Inc~combout\ & 
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
	cout1 => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUTCOUT1_28\);

-- Location: LC_X2_Y6_N5
\inst6|LPM_SHIFTREG_component|dffs[13]\ : maxv_lcell
-- Equation(s):
-- \inst6|LPM_SHIFTREG_component|dffs\(13) = DFFEAS(GND, GLOBAL(\RTC~combout\), VCC, , !\inst34|freezeParalell\, \inst6|LPM_SHIFTREG_component|dffs\(12), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datac => \inst6|LPM_SHIFTREG_component|dffs\(12),
	aclr => GND,
	sload => VCC,
	ena => \inst34|ALT_INV_freezeParalell\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|LPM_SHIFTREG_component|dffs\(13));

-- Location: LC_X2_Y6_N7
\inst38|inst3\ : maxv_lcell
-- Equation(s):
-- \inst24|LPM_COMPARE_component|auto_generated|aeb_int~1\ = (\inst38|inst4~regout\ & (\inst5|$00000|auto_generated|result_node[9]~5\ & (\inst5|$00000|auto_generated|result_node[10]~7\ $ (!E4_inst3)))) # (!\inst38|inst4~regout\ & 
-- (!\inst5|$00000|auto_generated|result_node[9]~5\ & (\inst5|$00000|auto_generated|result_node[10]~7\ $ (!E4_inst3))))
-- \inst38|inst3~regout\ = DFFEAS(\inst24|LPM_COMPARE_component|auto_generated|aeb_int~1\, GLOBAL(\RTC~combout\), VCC, , \inst34|freezeParalell\, \inst6|LPM_SHIFTREG_component|dffs\(13), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8241",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	dataa => \inst38|inst4~regout\,
	datab => \inst5|$00000|auto_generated|result_node[10]~7\,
	datac => \inst6|LPM_SHIFTREG_component|dffs\(13),
	datad => \inst5|$00000|auto_generated|result_node[9]~5\,
	aclr => GND,
	sload => VCC,
	ena => \inst34|freezeParalell\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst24|LPM_COMPARE_component|auto_generated|aeb_int~1\,
	regout => \inst38|inst3~regout\);

-- Location: LC_X10_Y5_N0
\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]\ : maxv_lcell
-- Equation(s):
-- \inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(10) = VCC $ \Inc~combout\ $ (\inst12|inst3~regout\ $ ((!\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\)))
-- \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUT\ = CARRY((VCC $ \Inc~combout\ & ((\inst12|inst3~regout\) # (!\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\))) # (!VCC $ \Inc~combout\ & (\inst12|inst3~regout\ 
-- & !\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\)))
-- \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUTCOUT1_28\ = CARRY((VCC $ \Inc~combout\ & ((\inst12|inst3~regout\) # (!\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\))) # (!VCC $ \Inc~combout\ & 
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
	cout1 => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUTCOUT1_28\);

-- Location: LC_X10_Y5_N8
\inst12|inst3\ : maxv_lcell
-- Equation(s):
-- \inst12|inst3~regout\ = DFFEAS(GND, GLOBAL(\RTC~combout\), VCC, , \inst12|inst1~0_combout\, \inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(10), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datac => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(10),
	aclr => GND,
	sload => VCC,
	ena => \inst12|inst1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|inst3~regout\);

-- Location: LC_X10_Y5_N1
\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]\ : maxv_lcell
-- Equation(s):
-- \inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(11) = VCC $ \Inc~combout\ $ (\inst12|inst2~regout\ $ (((!\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\ & 
-- \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUT\) # (\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\ & \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUTCOUT1_28\))))
-- \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUT\ = CARRY((VCC $ \Inc~combout\ & (!\inst12|inst2~regout\ & !\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUT\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUT\) # (!\inst12|inst2~regout\))))
-- \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUTCOUT1_30\ = CARRY((VCC $ \Inc~combout\ & (!\inst12|inst2~regout\ & !\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUTCOUT1_28\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUTCOUT1_28\) # (!\inst12|inst2~regout\))))

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
	cin1 => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUTCOUT1_28\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(11),
	cout0 => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUT\,
	cout1 => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUTCOUT1_30\);

-- Location: LC_X10_Y5_N6
\inst12|inst2\ : maxv_lcell
-- Equation(s):
-- \inst12|inst2~regout\ = DFFEAS((((\inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(11)))), GLOBAL(\RTC~combout\), VCC, , \inst12|inst1~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datad => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(11),
	aclr => GND,
	ena => \inst12|inst1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|inst2~regout\);

-- Location: LC_X7_Y5_N9
\inst13|inst2\ : maxv_lcell
-- Equation(s):
-- \inst2|$00000|auto_generated|result_node[11]~10\ = ((\inst49~regout\ & (E6_inst2)) # (!\inst49~regout\ & ((\inst12|inst2~regout\))))
-- \inst13|inst2~regout\ = DFFEAS(\inst2|$00000|auto_generated|result_node[11]~10\, GLOBAL(\RTC~combout\), VCC, , \inst13|inst1~0_combout\, \inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(11), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datab => \inst49~regout\,
	datac => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(11),
	datad => \inst12|inst2~regout\,
	aclr => GND,
	sload => VCC,
	ena => \inst13|inst1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|$00000|auto_generated|result_node[11]~10\,
	regout => \inst13|inst2~regout\);

-- Location: LC_X7_Y5_N0
\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]\ : maxv_lcell
-- Equation(s):
-- \inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(10) = VCC $ \Inc~combout\ $ (\inst13|inst3~regout\ $ ((!\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\)))
-- \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUT\ = CARRY((VCC $ \Inc~combout\ & ((\inst13|inst3~regout\) # (!\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\))) # (!VCC $ \Inc~combout\ & (\inst13|inst3~regout\ 
-- & !\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\)))
-- \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUTCOUT1_28\ = CARRY((VCC $ \Inc~combout\ & ((\inst13|inst3~regout\) # (!\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\))) # (!VCC $ \Inc~combout\ & 
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
	cout1 => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUTCOUT1_28\);

-- Location: LC_X7_Y5_N6
\inst13|inst3\ : maxv_lcell
-- Equation(s):
-- \inst2|$00000|auto_generated|result_node[10]~12\ = ((\inst49~regout\ & ((E6_inst3))) # (!\inst49~regout\ & (\inst12|inst3~regout\)))
-- \inst13|inst3~regout\ = DFFEAS(\inst2|$00000|auto_generated|result_node[10]~12\, GLOBAL(\RTC~combout\), VCC, , \inst13|inst1~0_combout\, \inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(10), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datab => \inst12|inst3~regout\,
	datac => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(10),
	datad => \inst49~regout\,
	aclr => GND,
	sload => VCC,
	ena => \inst13|inst1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|$00000|auto_generated|result_node[10]~12\,
	regout => \inst13|inst3~regout\);

-- Location: LC_X7_Y5_N1
\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]\ : maxv_lcell
-- Equation(s):
-- \inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(11) = VCC $ \Inc~combout\ $ (\inst13|inst2~regout\ $ (((!\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\ & 
-- \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUT\) # (\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\ & \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUTCOUT1_28\))))
-- \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUT\ = CARRY((VCC $ \Inc~combout\ & (!\inst13|inst2~regout\ & !\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUT\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUT\) # (!\inst13|inst2~regout\))))
-- \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUTCOUT1_30\ = CARRY((VCC $ \Inc~combout\ & (!\inst13|inst2~regout\ & !\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUTCOUT1_28\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUTCOUT1_28\) # (!\inst13|inst2~regout\))))

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
	cin1 => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUTCOUT1_28\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(11),
	cout0 => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUT\,
	cout1 => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUTCOUT1_30\);

-- Location: LC_X7_Y4_N3
\inst14|inst2\ : maxv_lcell
-- Equation(s):
-- \inst2|$00000|auto_generated|result_node[11]~11\ = ((\inst47~regout\ & ((\inst2|$00000|auto_generated|result_node[11]~10\))) # (!\inst47~regout\ & (E7_inst2)))
-- \inst14|inst2~regout\ = DFFEAS(\inst2|$00000|auto_generated|result_node[11]~11\, GLOBAL(\RTC~combout\), VCC, , \inst14|inst1~0_combout\, \inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(11), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datab => \inst47~regout\,
	datac => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(11),
	datad => \inst2|$00000|auto_generated|result_node[11]~10\,
	aclr => GND,
	sload => VCC,
	ena => \inst14|inst1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|$00000|auto_generated|result_node[11]~11\,
	regout => \inst14|inst2~regout\);

-- Location: LC_X7_Y4_N0
\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]\ : maxv_lcell
-- Equation(s):
-- \inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(10) = VCC $ \Inc~combout\ $ (\inst14|inst3~regout\ $ ((!\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\)))
-- \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUT\ = CARRY((VCC $ \Inc~combout\ & ((\inst14|inst3~regout\) # (!\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\))) # (!VCC $ \Inc~combout\ & (\inst14|inst3~regout\ 
-- & !\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\)))
-- \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUTCOUT1_28\ = CARRY((VCC $ \Inc~combout\ & ((\inst14|inst3~regout\) # (!\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\))) # (!VCC $ \Inc~combout\ & 
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
	cout1 => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUTCOUT1_28\);

-- Location: LC_X7_Y4_N4
\inst14|inst3\ : maxv_lcell
-- Equation(s):
-- \inst2|$00000|auto_generated|result_node[10]~13\ = ((\inst47~regout\ & ((\inst2|$00000|auto_generated|result_node[10]~12\))) # (!\inst47~regout\ & (E7_inst3)))
-- \inst14|inst3~regout\ = DFFEAS(\inst2|$00000|auto_generated|result_node[10]~13\, GLOBAL(\RTC~combout\), VCC, , \inst14|inst1~0_combout\, \inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(10), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datab => \inst47~regout\,
	datac => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(10),
	datad => \inst2|$00000|auto_generated|result_node[10]~12\,
	aclr => GND,
	sload => VCC,
	ena => \inst14|inst1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|$00000|auto_generated|result_node[10]~13\,
	regout => \inst14|inst3~regout\);

-- Location: LC_X7_Y4_N1
\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]\ : maxv_lcell
-- Equation(s):
-- \inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(11) = VCC $ \Inc~combout\ $ (\inst14|inst2~regout\ $ (((!\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\ & 
-- \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUT\) # (\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\ & \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUTCOUT1_28\))))
-- \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUT\ = CARRY((VCC $ \Inc~combout\ & (!\inst14|inst2~regout\ & !\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUT\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUT\) # (!\inst14|inst2~regout\))))
-- \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUTCOUT1_30\ = CARRY((VCC $ \Inc~combout\ & (!\inst14|inst2~regout\ & !\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUTCOUT1_28\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUTCOUT1_28\) # (!\inst14|inst2~regout\))))

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
	cin1 => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUTCOUT1_28\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(11),
	cout0 => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUT\,
	cout1 => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUTCOUT1_30\);

-- Location: LC_X3_Y7_N1
\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]\ : maxv_lcell
-- Equation(s):
-- \inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(11) = VCC $ \Inc~combout\ $ (\inst9|inst2~regout\ $ (((!\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\ & \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUT\) 
-- # (\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\ & \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUTCOUT1_28\))))
-- \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUT\ = CARRY((VCC $ \Inc~combout\ & (!\inst9|inst2~regout\ & !\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUT\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUT\) # (!\inst9|inst2~regout\))))
-- \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUTCOUT1_30\ = CARRY((VCC $ \Inc~combout\ & (!\inst9|inst2~regout\ & !\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUTCOUT1_28\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUTCOUT1_28\) # (!\inst9|inst2~regout\))))

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
	cin1 => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUTCOUT1_28\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(11),
	cout0 => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUT\,
	cout1 => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUTCOUT1_30\);

-- Location: LC_X3_Y7_N3
\inst9|inst2\ : maxv_lcell
-- Equation(s):
-- \inst9|inst2~regout\ = DFFEAS((((\inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(11)))), GLOBAL(\RTC~combout\), VCC, , \inst9|inst1~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datad => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(11),
	aclr => GND,
	ena => \inst9|inst1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst2~regout\);

-- Location: LC_X4_Y4_N8
\inst10|inst2\ : maxv_lcell
-- Equation(s):
-- \inst5|$00000|auto_generated|result_node[11]~0\ = ((\inst49~regout\ & (E2_inst2)) # (!\inst49~regout\ & ((\inst9|inst2~regout\))))
-- \inst10|inst2~regout\ = DFFEAS(\inst5|$00000|auto_generated|result_node[11]~0\, GLOBAL(\RTC~combout\), VCC, , \inst10|inst1~0_combout\, \inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(11), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datab => \inst49~regout\,
	datac => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(11),
	datad => \inst9|inst2~regout\,
	aclr => GND,
	sload => VCC,
	ena => \inst10|inst1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst5|$00000|auto_generated|result_node[11]~0\,
	regout => \inst10|inst2~regout\);

-- Location: LC_X4_Y4_N1
\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]\ : maxv_lcell
-- Equation(s):
-- \inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(11) = VCC $ \Inc~combout\ $ (\inst10|inst2~regout\ $ (((!\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\ & 
-- \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUT\) # (\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\ & \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUTCOUT1_28\))))
-- \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUT\ = CARRY((VCC $ \Inc~combout\ & (!\inst10|inst2~regout\ & !\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUT\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUT\) # (!\inst10|inst2~regout\))))
-- \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUTCOUT1_30\ = CARRY((VCC $ \Inc~combout\ & (!\inst10|inst2~regout\ & !\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUTCOUT1_28\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUTCOUT1_28\) # (!\inst10|inst2~regout\))))

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
	cin1 => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUTCOUT1_28\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(11),
	cout0 => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUT\,
	cout1 => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUTCOUT1_30\);

-- Location: LC_X4_Y4_N4
\inst11|inst2\ : maxv_lcell
-- Equation(s):
-- \inst5|$00000|auto_generated|result_node[11]~1\ = ((\inst47~regout\ & ((\inst5|$00000|auto_generated|result_node[11]~0\))) # (!\inst47~regout\ & (E3_inst2)))
-- \inst11|inst2~regout\ = DFFEAS(\inst5|$00000|auto_generated|result_node[11]~1\, GLOBAL(\RTC~combout\), VCC, , \inst11|inst1~0_combout\, \inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(11), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datab => \inst47~regout\,
	datac => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(11),
	datad => \inst5|$00000|auto_generated|result_node[11]~0\,
	aclr => GND,
	sload => VCC,
	ena => \inst11|inst1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst5|$00000|auto_generated|result_node[11]~1\,
	regout => \inst11|inst2~regout\);

-- Location: LC_X4_Y5_N1
\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]\ : maxv_lcell
-- Equation(s):
-- \inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(11) = VCC $ \Inc~combout\ $ (\inst11|inst2~regout\ $ (((!\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\ & 
-- \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUT\) # (\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\ & \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUTCOUT1_28\))))
-- \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUT\ = CARRY((VCC $ \Inc~combout\ & (!\inst11|inst2~regout\ & !\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUT\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUT\) # (!\inst11|inst2~regout\))))
-- \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUTCOUT1_30\ = CARRY((VCC $ \Inc~combout\ & (!\inst11|inst2~regout\ & !\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUTCOUT1_28\)) # (!VCC $ \Inc~combout\ & 
-- ((!\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUTCOUT1_28\) # (!\inst11|inst2~regout\))))

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
	cin1 => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[10]~COUTCOUT1_28\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(11),
	cout0 => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUT\,
	cout1 => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUTCOUT1_30\);

-- Location: LC_X4_Y5_N9
\inst3|$00000|auto_generated|result_node[11]~24\ : maxv_lcell
-- Equation(s):
-- \inst3|$00000|auto_generated|result_node[11]~24_combout\ = ((\hiTrueSetDisp~combout\ & (\inst2|$00000|auto_generated|result_node[11]~11\)) # (!\hiTrueSetDisp~combout\ & ((\inst5|$00000|auto_generated|result_node[11]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|$00000|auto_generated|result_node[11]~11\,
	datac => \inst5|$00000|auto_generated|result_node[11]~1\,
	datad => \hiTrueSetDisp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst3|$00000|auto_generated|result_node[11]~24_combout\);

-- Location: LC_X2_Y6_N0
\inst6|LPM_SHIFTREG_component|dffs[14]\ : maxv_lcell
-- Equation(s):
-- \inst6|LPM_SHIFTREG_component|dffs\(14) = DFFEAS(GND, GLOBAL(\RTC~combout\), VCC, , !\inst34|freezeParalell\, \inst6|LPM_SHIFTREG_component|dffs\(13), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datac => \inst6|LPM_SHIFTREG_component|dffs\(13),
	aclr => GND,
	sload => VCC,
	ena => \inst34|ALT_INV_freezeParalell\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|LPM_SHIFTREG_component|dffs\(14));

-- Location: LC_X2_Y6_N9
\inst38|inst2\ : maxv_lcell
-- Equation(s):
-- \inst3|$00000|auto_generated|result_node[11]~25\ = (\inst50~regout\ & (\inst3|$00000|auto_generated|result_node[11]~24_combout\)) # (!\inst50~regout\ & (((E4_inst2))))
-- \inst38|inst2~regout\ = DFFEAS(\inst3|$00000|auto_generated|result_node[11]~25\, GLOBAL(\RTC~combout\), VCC, , \inst34|freezeParalell\, \inst6|LPM_SHIFTREG_component|dffs\(14), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8b8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	dataa => \inst3|$00000|auto_generated|result_node[11]~24_combout\,
	datab => \inst50~regout\,
	datac => \inst6|LPM_SHIFTREG_component|dffs\(14),
	aclr => GND,
	sload => VCC,
	ena => \inst34|freezeParalell\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst3|$00000|auto_generated|result_node[11]~25\,
	regout => \inst38|inst2~regout\);

-- Location: LC_X2_Y6_N3
\inst6|LPM_SHIFTREG_component|dffs[15]\ : maxv_lcell
-- Equation(s):
-- \inst6|LPM_SHIFTREG_component|dffs\(15) = DFFEAS(GND, GLOBAL(\RTC~combout\), VCC, , !\inst34|freezeParalell\, \inst6|LPM_SHIFTREG_component|dffs\(14), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datac => \inst6|LPM_SHIFTREG_component|dffs\(14),
	aclr => GND,
	sload => VCC,
	ena => \inst34|ALT_INV_freezeParalell\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|LPM_SHIFTREG_component|dffs\(15));

-- Location: LC_X3_Y7_N2
\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[12]\ : maxv_lcell
-- Equation(s):
-- \inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(12) = VCC $ \Inc~combout\ $ (\inst9|inst1~regout\ $ ((!(!\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\ & 
-- \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUT\) # (\inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\ & \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUTCOUT1_30\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "6969",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => VCC,
	datab => \inst9|inst1~regout\,
	cin => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\,
	cin0 => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUT\,
	cin1 => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUTCOUT1_30\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(12));

-- Location: LC_X3_Y7_N7
\inst9|inst1\ : maxv_lcell
-- Equation(s):
-- \inst9|inst1~regout\ = DFFEAS((((\inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(12)))), GLOBAL(\RTC~combout\), VCC, , \inst9|inst1~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datad => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(12),
	aclr => GND,
	ena => \inst9|inst1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst1~regout\);

-- Location: LC_X4_Y4_N3
\inst10|inst1\ : maxv_lcell
-- Equation(s):
-- \inst5|$00000|auto_generated|result_node[12]~2\ = ((\inst49~regout\ & (E2_inst1)) # (!\inst49~regout\ & ((\inst9|inst1~regout\))))
-- \inst10|inst1~regout\ = DFFEAS(\inst5|$00000|auto_generated|result_node[12]~2\, GLOBAL(\RTC~combout\), VCC, , \inst10|inst1~0_combout\, \inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(12), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datab => \inst49~regout\,
	datac => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(12),
	datad => \inst9|inst1~regout\,
	aclr => GND,
	sload => VCC,
	ena => \inst10|inst1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst5|$00000|auto_generated|result_node[12]~2\,
	regout => \inst10|inst1~regout\);

-- Location: LC_X4_Y4_N2
\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[12]\ : maxv_lcell
-- Equation(s):
-- \inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(12) = VCC $ \Inc~combout\ $ ((((!\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\ & \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUT\) # 
-- (\inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\ & \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUTCOUT1_30\) $ (!\inst10|inst1~regout\))))

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
	cin1 => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUTCOUT1_30\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(12));

-- Location: LC_X4_Y5_N8
\inst11|inst1\ : maxv_lcell
-- Equation(s):
-- \inst5|$00000|auto_generated|result_node[12]~3\ = ((\inst47~regout\ & ((\inst5|$00000|auto_generated|result_node[12]~2\))) # (!\inst47~regout\ & (E3_inst1)))
-- \inst11|inst1~regout\ = DFFEAS(\inst5|$00000|auto_generated|result_node[12]~3\, GLOBAL(\RTC~combout\), VCC, , \inst11|inst1~0_combout\, \inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(12), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datab => \inst47~regout\,
	datac => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(12),
	datad => \inst5|$00000|auto_generated|result_node[12]~2\,
	aclr => GND,
	sload => VCC,
	ena => \inst11|inst1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst5|$00000|auto_generated|result_node[12]~3\,
	regout => \inst11|inst1~regout\);

-- Location: LC_X4_Y5_N2
\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[12]\ : maxv_lcell
-- Equation(s):
-- \inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(12) = VCC $ \Inc~combout\ $ ((((!\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\ & \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUT\) # 
-- (\inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\ & \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUTCOUT1_30\) $ (!\inst11|inst1~regout\))))

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
	cin1 => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUTCOUT1_30\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(12));

-- Location: LC_X2_Y6_N1
\inst38|inst1\ : maxv_lcell
-- Equation(s):
-- \inst24|LPM_COMPARE_component|auto_generated|aeb_int~0\ = (\inst38|inst2~regout\ & (\inst5|$00000|auto_generated|result_node[11]~1\ & (E4_inst1 $ (!\inst5|$00000|auto_generated|result_node[12]~3\)))) # (!\inst38|inst2~regout\ & 
-- (!\inst5|$00000|auto_generated|result_node[11]~1\ & (E4_inst1 $ (!\inst5|$00000|auto_generated|result_node[12]~3\))))
-- \inst38|inst1~regout\ = DFFEAS(\inst24|LPM_COMPARE_component|auto_generated|aeb_int~0\, GLOBAL(\RTC~combout\), VCC, , \inst34|freezeParalell\, \inst6|LPM_SHIFTREG_component|dffs\(15), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9009",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	dataa => \inst38|inst2~regout\,
	datab => \inst5|$00000|auto_generated|result_node[11]~1\,
	datac => \inst6|LPM_SHIFTREG_component|dffs\(15),
	datad => \inst5|$00000|auto_generated|result_node[12]~3\,
	aclr => GND,
	sload => VCC,
	ena => \inst34|freezeParalell\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst24|LPM_COMPARE_component|auto_generated|aeb_int~0\,
	regout => \inst38|inst1~regout\);

-- Location: LC_X2_Y6_N4
\inst24|LPM_COMPARE_component|auto_generated|aeb_int~4\ : maxv_lcell
-- Equation(s):
-- \inst24|LPM_COMPARE_component|auto_generated|aeb_int~4_combout\ = (\inst24|LPM_COMPARE_component|auto_generated|aeb_int~2\ & (\inst24|LPM_COMPARE_component|auto_generated|aeb_int~3\ & (\inst24|LPM_COMPARE_component|auto_generated|aeb_int~1\ & 
-- \inst24|LPM_COMPARE_component|auto_generated|aeb_int~0\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst24|LPM_COMPARE_component|auto_generated|aeb_int~2\,
	datab => \inst24|LPM_COMPARE_component|auto_generated|aeb_int~3\,
	datac => \inst24|LPM_COMPARE_component|auto_generated|aeb_int~1\,
	datad => \inst24|LPM_COMPARE_component|auto_generated|aeb_int~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst24|LPM_COMPARE_component|auto_generated|aeb_int~4_combout\);

-- Location: LC_X3_Y6_N4
\inst24|LPM_COMPARE_component|auto_generated|op_1~62\ : maxv_lcell
-- Equation(s):
-- \inst24|LPM_COMPARE_component|auto_generated|op_1~62_cout\ = CARRY((!\inst5|$00000|auto_generated|result_node[0]~25\ & (\inst38|inst13~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff44",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|$00000|auto_generated|result_node[0]~25\,
	datab => \inst38|inst13~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst24|LPM_COMPARE_component|auto_generated|op_1~60\,
	cout => \inst24|LPM_COMPARE_component|auto_generated|op_1~62_cout\);

-- Location: LC_X3_Y6_N5
\inst24|LPM_COMPARE_component|auto_generated|op_1~57\ : maxv_lcell
-- Equation(s):
-- \inst24|LPM_COMPARE_component|auto_generated|op_1~57_cout0\ = CARRY((\inst38|inst12~regout\ & (\inst5|$00000|auto_generated|result_node[1]~21\ & !\inst24|LPM_COMPARE_component|auto_generated|op_1~62_cout\)) # (!\inst38|inst12~regout\ & 
-- ((\inst5|$00000|auto_generated|result_node[1]~21\) # (!\inst24|LPM_COMPARE_component|auto_generated|op_1~62_cout\))))
-- \inst24|LPM_COMPARE_component|auto_generated|op_1~57COUT1_76\ = CARRY((\inst38|inst12~regout\ & (\inst5|$00000|auto_generated|result_node[1]~21\ & !\inst24|LPM_COMPARE_component|auto_generated|op_1~62_cout\)) # (!\inst38|inst12~regout\ & 
-- ((\inst5|$00000|auto_generated|result_node[1]~21\) # (!\inst24|LPM_COMPARE_component|auto_generated|op_1~62_cout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst38|inst12~regout\,
	datab => \inst5|$00000|auto_generated|result_node[1]~21\,
	cin => \inst24|LPM_COMPARE_component|auto_generated|op_1~62_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst24|LPM_COMPARE_component|auto_generated|op_1~55\,
	cout0 => \inst24|LPM_COMPARE_component|auto_generated|op_1~57_cout0\,
	cout1 => \inst24|LPM_COMPARE_component|auto_generated|op_1~57COUT1_76\);

-- Location: LC_X3_Y6_N6
\inst24|LPM_COMPARE_component|auto_generated|op_1~52\ : maxv_lcell
-- Equation(s):
-- \inst24|LPM_COMPARE_component|auto_generated|op_1~52_cout0\ = CARRY((\inst38|inst11~regout\ & ((!\inst24|LPM_COMPARE_component|auto_generated|op_1~57_cout0\) # (!\inst5|$00000|auto_generated|result_node[2]~23\))) # (!\inst38|inst11~regout\ & 
-- (!\inst5|$00000|auto_generated|result_node[2]~23\ & !\inst24|LPM_COMPARE_component|auto_generated|op_1~57_cout0\)))
-- \inst24|LPM_COMPARE_component|auto_generated|op_1~52COUT1_78\ = CARRY((\inst38|inst11~regout\ & ((!\inst24|LPM_COMPARE_component|auto_generated|op_1~57COUT1_76\) # (!\inst5|$00000|auto_generated|result_node[2]~23\))) # (!\inst38|inst11~regout\ & 
-- (!\inst5|$00000|auto_generated|result_node[2]~23\ & !\inst24|LPM_COMPARE_component|auto_generated|op_1~57COUT1_76\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst38|inst11~regout\,
	datab => \inst5|$00000|auto_generated|result_node[2]~23\,
	cin => \inst24|LPM_COMPARE_component|auto_generated|op_1~62_cout\,
	cin0 => \inst24|LPM_COMPARE_component|auto_generated|op_1~57_cout0\,
	cin1 => \inst24|LPM_COMPARE_component|auto_generated|op_1~57COUT1_76\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst24|LPM_COMPARE_component|auto_generated|op_1~50\,
	cout0 => \inst24|LPM_COMPARE_component|auto_generated|op_1~52_cout0\,
	cout1 => \inst24|LPM_COMPARE_component|auto_generated|op_1~52COUT1_78\);

-- Location: LC_X3_Y6_N7
\inst24|LPM_COMPARE_component|auto_generated|op_1~47\ : maxv_lcell
-- Equation(s):
-- \inst24|LPM_COMPARE_component|auto_generated|op_1~47_cout0\ = CARRY((\inst38|inst10~regout\ & (\inst5|$00000|auto_generated|result_node[3]~17\ & !\inst24|LPM_COMPARE_component|auto_generated|op_1~52_cout0\)) # (!\inst38|inst10~regout\ & 
-- ((\inst5|$00000|auto_generated|result_node[3]~17\) # (!\inst24|LPM_COMPARE_component|auto_generated|op_1~52_cout0\))))
-- \inst24|LPM_COMPARE_component|auto_generated|op_1~47COUT1_80\ = CARRY((\inst38|inst10~regout\ & (\inst5|$00000|auto_generated|result_node[3]~17\ & !\inst24|LPM_COMPARE_component|auto_generated|op_1~52COUT1_78\)) # (!\inst38|inst10~regout\ & 
-- ((\inst5|$00000|auto_generated|result_node[3]~17\) # (!\inst24|LPM_COMPARE_component|auto_generated|op_1~52COUT1_78\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst38|inst10~regout\,
	datab => \inst5|$00000|auto_generated|result_node[3]~17\,
	cin => \inst24|LPM_COMPARE_component|auto_generated|op_1~62_cout\,
	cin0 => \inst24|LPM_COMPARE_component|auto_generated|op_1~52_cout0\,
	cin1 => \inst24|LPM_COMPARE_component|auto_generated|op_1~52COUT1_78\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst24|LPM_COMPARE_component|auto_generated|op_1~45\,
	cout0 => \inst24|LPM_COMPARE_component|auto_generated|op_1~47_cout0\,
	cout1 => \inst24|LPM_COMPARE_component|auto_generated|op_1~47COUT1_80\);

-- Location: LC_X3_Y6_N8
\inst24|LPM_COMPARE_component|auto_generated|op_1~42\ : maxv_lcell
-- Equation(s):
-- \inst24|LPM_COMPARE_component|auto_generated|op_1~42_cout0\ = CARRY((\inst5|$00000|auto_generated|result_node[4]~19\ & (\inst38|inst9~regout\ & !\inst24|LPM_COMPARE_component|auto_generated|op_1~47_cout0\)) # 
-- (!\inst5|$00000|auto_generated|result_node[4]~19\ & ((\inst38|inst9~regout\) # (!\inst24|LPM_COMPARE_component|auto_generated|op_1~47_cout0\))))
-- \inst24|LPM_COMPARE_component|auto_generated|op_1~42COUT1_82\ = CARRY((\inst5|$00000|auto_generated|result_node[4]~19\ & (\inst38|inst9~regout\ & !\inst24|LPM_COMPARE_component|auto_generated|op_1~47COUT1_80\)) # 
-- (!\inst5|$00000|auto_generated|result_node[4]~19\ & ((\inst38|inst9~regout\) # (!\inst24|LPM_COMPARE_component|auto_generated|op_1~47COUT1_80\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|$00000|auto_generated|result_node[4]~19\,
	datab => \inst38|inst9~regout\,
	cin => \inst24|LPM_COMPARE_component|auto_generated|op_1~62_cout\,
	cin0 => \inst24|LPM_COMPARE_component|auto_generated|op_1~47_cout0\,
	cin1 => \inst24|LPM_COMPARE_component|auto_generated|op_1~47COUT1_80\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst24|LPM_COMPARE_component|auto_generated|op_1~40\,
	cout0 => \inst24|LPM_COMPARE_component|auto_generated|op_1~42_cout0\,
	cout1 => \inst24|LPM_COMPARE_component|auto_generated|op_1~42COUT1_82\);

-- Location: LC_X3_Y6_N9
\inst24|LPM_COMPARE_component|auto_generated|op_1~37\ : maxv_lcell
-- Equation(s):
-- \inst24|LPM_COMPARE_component|auto_generated|op_1~37_cout\ = CARRY((\inst38|inst8~regout\ & (\inst5|$00000|auto_generated|result_node[5]~13\ & !\inst24|LPM_COMPARE_component|auto_generated|op_1~42COUT1_82\)) # (!\inst38|inst8~regout\ & 
-- ((\inst5|$00000|auto_generated|result_node[5]~13\) # (!\inst24|LPM_COMPARE_component|auto_generated|op_1~42COUT1_82\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst38|inst8~regout\,
	datab => \inst5|$00000|auto_generated|result_node[5]~13\,
	cin => \inst24|LPM_COMPARE_component|auto_generated|op_1~62_cout\,
	cin0 => \inst24|LPM_COMPARE_component|auto_generated|op_1~42_cout0\,
	cin1 => \inst24|LPM_COMPARE_component|auto_generated|op_1~42COUT1_82\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst24|LPM_COMPARE_component|auto_generated|op_1~35\,
	cout => \inst24|LPM_COMPARE_component|auto_generated|op_1~37_cout\);

-- Location: LC_X4_Y6_N0
\inst24|LPM_COMPARE_component|auto_generated|op_1~32\ : maxv_lcell
-- Equation(s):
-- \inst24|LPM_COMPARE_component|auto_generated|op_1~32_cout0\ = CARRY((\inst38|inst7~regout\ & ((!\inst24|LPM_COMPARE_component|auto_generated|op_1~37_cout\) # (!\inst5|$00000|auto_generated|result_node[6]~15\))) # (!\inst38|inst7~regout\ & 
-- (!\inst5|$00000|auto_generated|result_node[6]~15\ & !\inst24|LPM_COMPARE_component|auto_generated|op_1~37_cout\)))
-- \inst24|LPM_COMPARE_component|auto_generated|op_1~32COUT1_84\ = CARRY((\inst38|inst7~regout\ & ((!\inst24|LPM_COMPARE_component|auto_generated|op_1~37_cout\) # (!\inst5|$00000|auto_generated|result_node[6]~15\))) # (!\inst38|inst7~regout\ & 
-- (!\inst5|$00000|auto_generated|result_node[6]~15\ & !\inst24|LPM_COMPARE_component|auto_generated|op_1~37_cout\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst38|inst7~regout\,
	datab => \inst5|$00000|auto_generated|result_node[6]~15\,
	cin => \inst24|LPM_COMPARE_component|auto_generated|op_1~37_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst24|LPM_COMPARE_component|auto_generated|op_1~30\,
	cout0 => \inst24|LPM_COMPARE_component|auto_generated|op_1~32_cout0\,
	cout1 => \inst24|LPM_COMPARE_component|auto_generated|op_1~32COUT1_84\);

-- Location: LC_X4_Y6_N1
\inst24|LPM_COMPARE_component|auto_generated|op_1~27\ : maxv_lcell
-- Equation(s):
-- \inst24|LPM_COMPARE_component|auto_generated|op_1~27_cout0\ = CARRY((\inst38|inst6~regout\ & (\inst5|$00000|auto_generated|result_node[7]~9\ & !\inst24|LPM_COMPARE_component|auto_generated|op_1~32_cout0\)) # (!\inst38|inst6~regout\ & 
-- ((\inst5|$00000|auto_generated|result_node[7]~9\) # (!\inst24|LPM_COMPARE_component|auto_generated|op_1~32_cout0\))))
-- \inst24|LPM_COMPARE_component|auto_generated|op_1~27COUT1_86\ = CARRY((\inst38|inst6~regout\ & (\inst5|$00000|auto_generated|result_node[7]~9\ & !\inst24|LPM_COMPARE_component|auto_generated|op_1~32COUT1_84\)) # (!\inst38|inst6~regout\ & 
-- ((\inst5|$00000|auto_generated|result_node[7]~9\) # (!\inst24|LPM_COMPARE_component|auto_generated|op_1~32COUT1_84\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst38|inst6~regout\,
	datab => \inst5|$00000|auto_generated|result_node[7]~9\,
	cin => \inst24|LPM_COMPARE_component|auto_generated|op_1~37_cout\,
	cin0 => \inst24|LPM_COMPARE_component|auto_generated|op_1~32_cout0\,
	cin1 => \inst24|LPM_COMPARE_component|auto_generated|op_1~32COUT1_84\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst24|LPM_COMPARE_component|auto_generated|op_1~25\,
	cout0 => \inst24|LPM_COMPARE_component|auto_generated|op_1~27_cout0\,
	cout1 => \inst24|LPM_COMPARE_component|auto_generated|op_1~27COUT1_86\);

-- Location: LC_X4_Y6_N2
\inst24|LPM_COMPARE_component|auto_generated|op_1~22\ : maxv_lcell
-- Equation(s):
-- \inst24|LPM_COMPARE_component|auto_generated|op_1~22_cout0\ = CARRY((\inst38|inst5~regout\ & ((!\inst24|LPM_COMPARE_component|auto_generated|op_1~27_cout0\) # (!\inst5|$00000|auto_generated|result_node[8]~11\))) # (!\inst38|inst5~regout\ & 
-- (!\inst5|$00000|auto_generated|result_node[8]~11\ & !\inst24|LPM_COMPARE_component|auto_generated|op_1~27_cout0\)))
-- \inst24|LPM_COMPARE_component|auto_generated|op_1~22COUT1_88\ = CARRY((\inst38|inst5~regout\ & ((!\inst24|LPM_COMPARE_component|auto_generated|op_1~27COUT1_86\) # (!\inst5|$00000|auto_generated|result_node[8]~11\))) # (!\inst38|inst5~regout\ & 
-- (!\inst5|$00000|auto_generated|result_node[8]~11\ & !\inst24|LPM_COMPARE_component|auto_generated|op_1~27COUT1_86\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst38|inst5~regout\,
	datab => \inst5|$00000|auto_generated|result_node[8]~11\,
	cin => \inst24|LPM_COMPARE_component|auto_generated|op_1~37_cout\,
	cin0 => \inst24|LPM_COMPARE_component|auto_generated|op_1~27_cout0\,
	cin1 => \inst24|LPM_COMPARE_component|auto_generated|op_1~27COUT1_86\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst24|LPM_COMPARE_component|auto_generated|op_1~20\,
	cout0 => \inst24|LPM_COMPARE_component|auto_generated|op_1~22_cout0\,
	cout1 => \inst24|LPM_COMPARE_component|auto_generated|op_1~22COUT1_88\);

-- Location: LC_X4_Y6_N3
\inst24|LPM_COMPARE_component|auto_generated|op_1~17\ : maxv_lcell
-- Equation(s):
-- \inst24|LPM_COMPARE_component|auto_generated|op_1~17_cout0\ = CARRY((\inst5|$00000|auto_generated|result_node[9]~5\ & ((!\inst24|LPM_COMPARE_component|auto_generated|op_1~22_cout0\) # (!\inst38|inst4~regout\))) # 
-- (!\inst5|$00000|auto_generated|result_node[9]~5\ & (!\inst38|inst4~regout\ & !\inst24|LPM_COMPARE_component|auto_generated|op_1~22_cout0\)))
-- \inst24|LPM_COMPARE_component|auto_generated|op_1~17COUT1_90\ = CARRY((\inst5|$00000|auto_generated|result_node[9]~5\ & ((!\inst24|LPM_COMPARE_component|auto_generated|op_1~22COUT1_88\) # (!\inst38|inst4~regout\))) # 
-- (!\inst5|$00000|auto_generated|result_node[9]~5\ & (!\inst38|inst4~regout\ & !\inst24|LPM_COMPARE_component|auto_generated|op_1~22COUT1_88\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|$00000|auto_generated|result_node[9]~5\,
	datab => \inst38|inst4~regout\,
	cin => \inst24|LPM_COMPARE_component|auto_generated|op_1~37_cout\,
	cin0 => \inst24|LPM_COMPARE_component|auto_generated|op_1~22_cout0\,
	cin1 => \inst24|LPM_COMPARE_component|auto_generated|op_1~22COUT1_88\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst24|LPM_COMPARE_component|auto_generated|op_1~15\,
	cout0 => \inst24|LPM_COMPARE_component|auto_generated|op_1~17_cout0\,
	cout1 => \inst24|LPM_COMPARE_component|auto_generated|op_1~17COUT1_90\);

-- Location: LC_X4_Y6_N4
\inst24|LPM_COMPARE_component|auto_generated|op_1~12\ : maxv_lcell
-- Equation(s):
-- \inst24|LPM_COMPARE_component|auto_generated|op_1~12_cout\ = CARRY((\inst38|inst3~regout\ & ((!\inst24|LPM_COMPARE_component|auto_generated|op_1~17COUT1_90\) # (!\inst5|$00000|auto_generated|result_node[10]~7\))) # (!\inst38|inst3~regout\ & 
-- (!\inst5|$00000|auto_generated|result_node[10]~7\ & !\inst24|LPM_COMPARE_component|auto_generated|op_1~17COUT1_90\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst38|inst3~regout\,
	datab => \inst5|$00000|auto_generated|result_node[10]~7\,
	cin => \inst24|LPM_COMPARE_component|auto_generated|op_1~37_cout\,
	cin0 => \inst24|LPM_COMPARE_component|auto_generated|op_1~17_cout0\,
	cin1 => \inst24|LPM_COMPARE_component|auto_generated|op_1~17COUT1_90\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst24|LPM_COMPARE_component|auto_generated|op_1~10\,
	cout => \inst24|LPM_COMPARE_component|auto_generated|op_1~12_cout\);

-- Location: LC_X4_Y6_N5
\inst24|LPM_COMPARE_component|auto_generated|op_1~7\ : maxv_lcell
-- Equation(s):
-- \inst24|LPM_COMPARE_component|auto_generated|op_1~7_cout0\ = CARRY((\inst38|inst2~regout\ & (\inst5|$00000|auto_generated|result_node[11]~1\ & !\inst24|LPM_COMPARE_component|auto_generated|op_1~12_cout\)) # (!\inst38|inst2~regout\ & 
-- ((\inst5|$00000|auto_generated|result_node[11]~1\) # (!\inst24|LPM_COMPARE_component|auto_generated|op_1~12_cout\))))
-- \inst24|LPM_COMPARE_component|auto_generated|op_1~7COUT1_92\ = CARRY((\inst38|inst2~regout\ & (\inst5|$00000|auto_generated|result_node[11]~1\ & !\inst24|LPM_COMPARE_component|auto_generated|op_1~12_cout\)) # (!\inst38|inst2~regout\ & 
-- ((\inst5|$00000|auto_generated|result_node[11]~1\) # (!\inst24|LPM_COMPARE_component|auto_generated|op_1~12_cout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst38|inst2~regout\,
	datab => \inst5|$00000|auto_generated|result_node[11]~1\,
	cin => \inst24|LPM_COMPARE_component|auto_generated|op_1~12_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst24|LPM_COMPARE_component|auto_generated|op_1~5\,
	cout0 => \inst24|LPM_COMPARE_component|auto_generated|op_1~7_cout0\,
	cout1 => \inst24|LPM_COMPARE_component|auto_generated|op_1~7COUT1_92\);

-- Location: LC_X4_Y6_N6
\inst24|LPM_COMPARE_component|auto_generated|op_1~0\ : maxv_lcell
-- Equation(s):
-- \inst24|LPM_COMPARE_component|auto_generated|op_1~0_combout\ = ((\inst38|inst1~regout\ & (!(!\inst24|LPM_COMPARE_component|auto_generated|op_1~12_cout\ & \inst24|LPM_COMPARE_component|auto_generated|op_1~7_cout0\) # 
-- (\inst24|LPM_COMPARE_component|auto_generated|op_1~12_cout\ & \inst24|LPM_COMPARE_component|auto_generated|op_1~7COUT1_92\) & \inst5|$00000|auto_generated|result_node[12]~3\)) # (!\inst38|inst1~regout\ & ((\inst5|$00000|auto_generated|result_node[12]~3\) 
-- # (!(!\inst24|LPM_COMPARE_component|auto_generated|op_1~12_cout\ & \inst24|LPM_COMPARE_component|auto_generated|op_1~7_cout0\) # (\inst24|LPM_COMPARE_component|auto_generated|op_1~12_cout\ & 
-- \inst24|LPM_COMPARE_component|auto_generated|op_1~7COUT1_92\)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3f03",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst38|inst1~regout\,
	datad => \inst5|$00000|auto_generated|result_node[12]~3\,
	cin => \inst24|LPM_COMPARE_component|auto_generated|op_1~12_cout\,
	cin0 => \inst24|LPM_COMPARE_component|auto_generated|op_1~7_cout0\,
	cin1 => \inst24|LPM_COMPARE_component|auto_generated|op_1~7COUT1_92\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst24|LPM_COMPARE_component|auto_generated|op_1~0_combout\);

-- Location: LC_X4_Y6_N7
inst44 : maxv_lcell
-- Equation(s):
-- \inst44~regout\ = DFFEAS(((!\inst24|LPM_COMPARE_component|auto_generated|op_1~0_combout\ & ((!\inst24|LPM_COMPARE_component|auto_generated|aeb_int~4_combout\) # (!\inst24|LPM_COMPARE_component|auto_generated|aeb_int~7\)))), GLOBAL(\inst36~combout\), VCC, 
-- , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "003f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst36~combout\,
	datab => \inst24|LPM_COMPARE_component|auto_generated|aeb_int~7\,
	datac => \inst24|LPM_COMPARE_component|auto_generated|aeb_int~4_combout\,
	datad => \inst24|LPM_COMPARE_component|auto_generated|op_1~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst44~regout\);

-- Location: LC_X10_Y5_N2
\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[12]\ : maxv_lcell
-- Equation(s):
-- \inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(12) = VCC $ \Inc~combout\ $ ((((!\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\ & \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUT\) # 
-- (\inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\ & \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUTCOUT1_30\) $ (!\inst12|inst1~regout\))))

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
	cin1 => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUTCOUT1_30\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(12));

-- Location: LC_X10_Y5_N9
\inst12|inst1\ : maxv_lcell
-- Equation(s):
-- \inst12|inst1~regout\ = DFFEAS((((\inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(12)))), GLOBAL(\RTC~combout\), VCC, , \inst12|inst1~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datad => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(12),
	aclr => GND,
	ena => \inst12|inst1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|inst1~regout\);

-- Location: LC_X7_Y5_N3
\inst13|inst1\ : maxv_lcell
-- Equation(s):
-- \inst2|$00000|auto_generated|result_node[12]~0\ = ((\inst49~regout\ & ((E6_inst1))) # (!\inst49~regout\ & (\inst12|inst1~regout\)))
-- \inst13|inst1~regout\ = DFFEAS(\inst2|$00000|auto_generated|result_node[12]~0\, GLOBAL(\RTC~combout\), VCC, , \inst13|inst1~0_combout\, \inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(12), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datab => \inst12|inst1~regout\,
	datac => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(12),
	datad => \inst49~regout\,
	aclr => GND,
	sload => VCC,
	ena => \inst13|inst1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|$00000|auto_generated|result_node[12]~0\,
	regout => \inst13|inst1~regout\);

-- Location: LC_X7_Y5_N2
\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[12]\ : maxv_lcell
-- Equation(s):
-- \inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(12) = VCC $ \Inc~combout\ $ ((((!\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\ & \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUT\) # 
-- (\inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\ & \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUTCOUT1_30\) $ (!\inst13|inst1~regout\))))

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
	cin1 => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUTCOUT1_30\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(12));

-- Location: LC_X7_Y4_N7
\inst14|inst1\ : maxv_lcell
-- Equation(s):
-- \inst2|$00000|auto_generated|result_node[12]~1\ = ((\inst47~regout\ & ((\inst2|$00000|auto_generated|result_node[12]~0\))) # (!\inst47~regout\ & (E7_inst1)))
-- \inst14|inst1~regout\ = DFFEAS(\inst2|$00000|auto_generated|result_node[12]~1\, GLOBAL(\RTC~combout\), VCC, , \inst14|inst1~0_combout\, \inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(12), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \RTC~combout\,
	datab => \inst47~regout\,
	datac => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(12),
	datad => \inst2|$00000|auto_generated|result_node[12]~0\,
	aclr => GND,
	sload => VCC,
	ena => \inst14|inst1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|$00000|auto_generated|result_node[12]~1\,
	regout => \inst14|inst1~regout\);

-- Location: LC_X7_Y4_N2
\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[12]\ : maxv_lcell
-- Equation(s):
-- \inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(12) = VCC $ \Inc~combout\ $ (\inst14|inst1~regout\ $ ((!(!\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\ & 
-- \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUT\) # (\inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\ & \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUTCOUT1_30\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "6969",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => VCC,
	datab => \inst14|inst1~regout\,
	cin => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[9]~COUT\,
	cin0 => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUT\,
	cin1 => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUTCOUT1_30\,
	inverta => \Inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(12));

-- Location: LC_X5_Y7_N4
\inst23|LPM_COMPARE_component|auto_generated|op_1~62\ : maxv_lcell
-- Equation(s):
-- \inst23|LPM_COMPARE_component|auto_generated|op_1~62_cout\ = CARRY((!\inst2|$00000|auto_generated|result_node[0]~25\ & (\inst38|inst13~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff44",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|$00000|auto_generated|result_node[0]~25\,
	datab => \inst38|inst13~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst23|LPM_COMPARE_component|auto_generated|op_1~60\,
	cout => \inst23|LPM_COMPARE_component|auto_generated|op_1~62_cout\);

-- Location: LC_X5_Y7_N5
\inst23|LPM_COMPARE_component|auto_generated|op_1~57\ : maxv_lcell
-- Equation(s):
-- \inst23|LPM_COMPARE_component|auto_generated|op_1~57_cout0\ = CARRY((\inst38|inst12~regout\ & (\inst2|$00000|auto_generated|result_node[1]~23\ & !\inst23|LPM_COMPARE_component|auto_generated|op_1~62_cout\)) # (!\inst38|inst12~regout\ & 
-- ((\inst2|$00000|auto_generated|result_node[1]~23\) # (!\inst23|LPM_COMPARE_component|auto_generated|op_1~62_cout\))))
-- \inst23|LPM_COMPARE_component|auto_generated|op_1~57COUT1_76\ = CARRY((\inst38|inst12~regout\ & (\inst2|$00000|auto_generated|result_node[1]~23\ & !\inst23|LPM_COMPARE_component|auto_generated|op_1~62_cout\)) # (!\inst38|inst12~regout\ & 
-- ((\inst2|$00000|auto_generated|result_node[1]~23\) # (!\inst23|LPM_COMPARE_component|auto_generated|op_1~62_cout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst38|inst12~regout\,
	datab => \inst2|$00000|auto_generated|result_node[1]~23\,
	cin => \inst23|LPM_COMPARE_component|auto_generated|op_1~62_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst23|LPM_COMPARE_component|auto_generated|op_1~55\,
	cout0 => \inst23|LPM_COMPARE_component|auto_generated|op_1~57_cout0\,
	cout1 => \inst23|LPM_COMPARE_component|auto_generated|op_1~57COUT1_76\);

-- Location: LC_X5_Y7_N6
\inst23|LPM_COMPARE_component|auto_generated|op_1~52\ : maxv_lcell
-- Equation(s):
-- \inst23|LPM_COMPARE_component|auto_generated|op_1~52_cout0\ = CARRY((\inst38|inst11~regout\ & ((!\inst23|LPM_COMPARE_component|auto_generated|op_1~57_cout0\) # (!\inst2|$00000|auto_generated|result_node[2]~3\))) # (!\inst38|inst11~regout\ & 
-- (!\inst2|$00000|auto_generated|result_node[2]~3\ & !\inst23|LPM_COMPARE_component|auto_generated|op_1~57_cout0\)))
-- \inst23|LPM_COMPARE_component|auto_generated|op_1~52COUT1_78\ = CARRY((\inst38|inst11~regout\ & ((!\inst23|LPM_COMPARE_component|auto_generated|op_1~57COUT1_76\) # (!\inst2|$00000|auto_generated|result_node[2]~3\))) # (!\inst38|inst11~regout\ & 
-- (!\inst2|$00000|auto_generated|result_node[2]~3\ & !\inst23|LPM_COMPARE_component|auto_generated|op_1~57COUT1_76\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst38|inst11~regout\,
	datab => \inst2|$00000|auto_generated|result_node[2]~3\,
	cin => \inst23|LPM_COMPARE_component|auto_generated|op_1~62_cout\,
	cin0 => \inst23|LPM_COMPARE_component|auto_generated|op_1~57_cout0\,
	cin1 => \inst23|LPM_COMPARE_component|auto_generated|op_1~57COUT1_76\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst23|LPM_COMPARE_component|auto_generated|op_1~50\,
	cout0 => \inst23|LPM_COMPARE_component|auto_generated|op_1~52_cout0\,
	cout1 => \inst23|LPM_COMPARE_component|auto_generated|op_1~52COUT1_78\);

-- Location: LC_X5_Y7_N7
\inst23|LPM_COMPARE_component|auto_generated|op_1~47\ : maxv_lcell
-- Equation(s):
-- \inst23|LPM_COMPARE_component|auto_generated|op_1~47_cout0\ = CARRY((\inst38|inst10~regout\ & (\inst2|$00000|auto_generated|result_node[3]~5\ & !\inst23|LPM_COMPARE_component|auto_generated|op_1~52_cout0\)) # (!\inst38|inst10~regout\ & 
-- ((\inst2|$00000|auto_generated|result_node[3]~5\) # (!\inst23|LPM_COMPARE_component|auto_generated|op_1~52_cout0\))))
-- \inst23|LPM_COMPARE_component|auto_generated|op_1~47COUT1_80\ = CARRY((\inst38|inst10~regout\ & (\inst2|$00000|auto_generated|result_node[3]~5\ & !\inst23|LPM_COMPARE_component|auto_generated|op_1~52COUT1_78\)) # (!\inst38|inst10~regout\ & 
-- ((\inst2|$00000|auto_generated|result_node[3]~5\) # (!\inst23|LPM_COMPARE_component|auto_generated|op_1~52COUT1_78\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst38|inst10~regout\,
	datab => \inst2|$00000|auto_generated|result_node[3]~5\,
	cin => \inst23|LPM_COMPARE_component|auto_generated|op_1~62_cout\,
	cin0 => \inst23|LPM_COMPARE_component|auto_generated|op_1~52_cout0\,
	cin1 => \inst23|LPM_COMPARE_component|auto_generated|op_1~52COUT1_78\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst23|LPM_COMPARE_component|auto_generated|op_1~45\,
	cout0 => \inst23|LPM_COMPARE_component|auto_generated|op_1~47_cout0\,
	cout1 => \inst23|LPM_COMPARE_component|auto_generated|op_1~47COUT1_80\);

-- Location: LC_X5_Y7_N8
\inst23|LPM_COMPARE_component|auto_generated|op_1~42\ : maxv_lcell
-- Equation(s):
-- \inst23|LPM_COMPARE_component|auto_generated|op_1~42_cout0\ = CARRY((\inst38|inst9~regout\ & ((!\inst23|LPM_COMPARE_component|auto_generated|op_1~47_cout0\) # (!\inst2|$00000|auto_generated|result_node[4]~7\))) # (!\inst38|inst9~regout\ & 
-- (!\inst2|$00000|auto_generated|result_node[4]~7\ & !\inst23|LPM_COMPARE_component|auto_generated|op_1~47_cout0\)))
-- \inst23|LPM_COMPARE_component|auto_generated|op_1~42COUT1_82\ = CARRY((\inst38|inst9~regout\ & ((!\inst23|LPM_COMPARE_component|auto_generated|op_1~47COUT1_80\) # (!\inst2|$00000|auto_generated|result_node[4]~7\))) # (!\inst38|inst9~regout\ & 
-- (!\inst2|$00000|auto_generated|result_node[4]~7\ & !\inst23|LPM_COMPARE_component|auto_generated|op_1~47COUT1_80\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst38|inst9~regout\,
	datab => \inst2|$00000|auto_generated|result_node[4]~7\,
	cin => \inst23|LPM_COMPARE_component|auto_generated|op_1~62_cout\,
	cin0 => \inst23|LPM_COMPARE_component|auto_generated|op_1~47_cout0\,
	cin1 => \inst23|LPM_COMPARE_component|auto_generated|op_1~47COUT1_80\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst23|LPM_COMPARE_component|auto_generated|op_1~40\,
	cout0 => \inst23|LPM_COMPARE_component|auto_generated|op_1~42_cout0\,
	cout1 => \inst23|LPM_COMPARE_component|auto_generated|op_1~42COUT1_82\);

-- Location: LC_X5_Y7_N9
\inst23|LPM_COMPARE_component|auto_generated|op_1~37\ : maxv_lcell
-- Equation(s):
-- \inst23|LPM_COMPARE_component|auto_generated|op_1~37_cout\ = CARRY((\inst38|inst8~regout\ & (\inst2|$00000|auto_generated|result_node[5]~9\ & !\inst23|LPM_COMPARE_component|auto_generated|op_1~42COUT1_82\)) # (!\inst38|inst8~regout\ & 
-- ((\inst2|$00000|auto_generated|result_node[5]~9\) # (!\inst23|LPM_COMPARE_component|auto_generated|op_1~42COUT1_82\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst38|inst8~regout\,
	datab => \inst2|$00000|auto_generated|result_node[5]~9\,
	cin => \inst23|LPM_COMPARE_component|auto_generated|op_1~62_cout\,
	cin0 => \inst23|LPM_COMPARE_component|auto_generated|op_1~42_cout0\,
	cin1 => \inst23|LPM_COMPARE_component|auto_generated|op_1~42COUT1_82\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst23|LPM_COMPARE_component|auto_generated|op_1~35\,
	cout => \inst23|LPM_COMPARE_component|auto_generated|op_1~37_cout\);

-- Location: LC_X6_Y7_N0
\inst23|LPM_COMPARE_component|auto_generated|op_1~32\ : maxv_lcell
-- Equation(s):
-- \inst23|LPM_COMPARE_component|auto_generated|op_1~32_cout0\ = CARRY((\inst38|inst7~regout\ & ((!\inst23|LPM_COMPARE_component|auto_generated|op_1~37_cout\) # (!\inst2|$00000|auto_generated|result_node[6]~21\))) # (!\inst38|inst7~regout\ & 
-- (!\inst2|$00000|auto_generated|result_node[6]~21\ & !\inst23|LPM_COMPARE_component|auto_generated|op_1~37_cout\)))
-- \inst23|LPM_COMPARE_component|auto_generated|op_1~32COUT1_84\ = CARRY((\inst38|inst7~regout\ & ((!\inst23|LPM_COMPARE_component|auto_generated|op_1~37_cout\) # (!\inst2|$00000|auto_generated|result_node[6]~21\))) # (!\inst38|inst7~regout\ & 
-- (!\inst2|$00000|auto_generated|result_node[6]~21\ & !\inst23|LPM_COMPARE_component|auto_generated|op_1~37_cout\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst38|inst7~regout\,
	datab => \inst2|$00000|auto_generated|result_node[6]~21\,
	cin => \inst23|LPM_COMPARE_component|auto_generated|op_1~37_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst23|LPM_COMPARE_component|auto_generated|op_1~30\,
	cout0 => \inst23|LPM_COMPARE_component|auto_generated|op_1~32_cout0\,
	cout1 => \inst23|LPM_COMPARE_component|auto_generated|op_1~32COUT1_84\);

-- Location: LC_X6_Y7_N1
\inst23|LPM_COMPARE_component|auto_generated|op_1~27\ : maxv_lcell
-- Equation(s):
-- \inst23|LPM_COMPARE_component|auto_generated|op_1~27_cout0\ = CARRY((\inst38|inst6~regout\ & (\inst2|$00000|auto_generated|result_node[7]~19\ & !\inst23|LPM_COMPARE_component|auto_generated|op_1~32_cout0\)) # (!\inst38|inst6~regout\ & 
-- ((\inst2|$00000|auto_generated|result_node[7]~19\) # (!\inst23|LPM_COMPARE_component|auto_generated|op_1~32_cout0\))))
-- \inst23|LPM_COMPARE_component|auto_generated|op_1~27COUT1_86\ = CARRY((\inst38|inst6~regout\ & (\inst2|$00000|auto_generated|result_node[7]~19\ & !\inst23|LPM_COMPARE_component|auto_generated|op_1~32COUT1_84\)) # (!\inst38|inst6~regout\ & 
-- ((\inst2|$00000|auto_generated|result_node[7]~19\) # (!\inst23|LPM_COMPARE_component|auto_generated|op_1~32COUT1_84\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst38|inst6~regout\,
	datab => \inst2|$00000|auto_generated|result_node[7]~19\,
	cin => \inst23|LPM_COMPARE_component|auto_generated|op_1~37_cout\,
	cin0 => \inst23|LPM_COMPARE_component|auto_generated|op_1~32_cout0\,
	cin1 => \inst23|LPM_COMPARE_component|auto_generated|op_1~32COUT1_84\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst23|LPM_COMPARE_component|auto_generated|op_1~25\,
	cout0 => \inst23|LPM_COMPARE_component|auto_generated|op_1~27_cout0\,
	cout1 => \inst23|LPM_COMPARE_component|auto_generated|op_1~27COUT1_86\);

-- Location: LC_X6_Y7_N2
\inst23|LPM_COMPARE_component|auto_generated|op_1~22\ : maxv_lcell
-- Equation(s):
-- \inst23|LPM_COMPARE_component|auto_generated|op_1~22_cout0\ = CARRY((\inst2|$00000|auto_generated|result_node[8]~17\ & (\inst38|inst5~regout\ & !\inst23|LPM_COMPARE_component|auto_generated|op_1~27_cout0\)) # 
-- (!\inst2|$00000|auto_generated|result_node[8]~17\ & ((\inst38|inst5~regout\) # (!\inst23|LPM_COMPARE_component|auto_generated|op_1~27_cout0\))))
-- \inst23|LPM_COMPARE_component|auto_generated|op_1~22COUT1_88\ = CARRY((\inst2|$00000|auto_generated|result_node[8]~17\ & (\inst38|inst5~regout\ & !\inst23|LPM_COMPARE_component|auto_generated|op_1~27COUT1_86\)) # 
-- (!\inst2|$00000|auto_generated|result_node[8]~17\ & ((\inst38|inst5~regout\) # (!\inst23|LPM_COMPARE_component|auto_generated|op_1~27COUT1_86\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|$00000|auto_generated|result_node[8]~17\,
	datab => \inst38|inst5~regout\,
	cin => \inst23|LPM_COMPARE_component|auto_generated|op_1~37_cout\,
	cin0 => \inst23|LPM_COMPARE_component|auto_generated|op_1~27_cout0\,
	cin1 => \inst23|LPM_COMPARE_component|auto_generated|op_1~27COUT1_86\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst23|LPM_COMPARE_component|auto_generated|op_1~20\,
	cout0 => \inst23|LPM_COMPARE_component|auto_generated|op_1~22_cout0\,
	cout1 => \inst23|LPM_COMPARE_component|auto_generated|op_1~22COUT1_88\);

-- Location: LC_X6_Y7_N3
\inst23|LPM_COMPARE_component|auto_generated|op_1~17\ : maxv_lcell
-- Equation(s):
-- \inst23|LPM_COMPARE_component|auto_generated|op_1~17_cout0\ = CARRY((\inst38|inst4~regout\ & (\inst2|$00000|auto_generated|result_node[9]~15\ & !\inst23|LPM_COMPARE_component|auto_generated|op_1~22_cout0\)) # (!\inst38|inst4~regout\ & 
-- ((\inst2|$00000|auto_generated|result_node[9]~15\) # (!\inst23|LPM_COMPARE_component|auto_generated|op_1~22_cout0\))))
-- \inst23|LPM_COMPARE_component|auto_generated|op_1~17COUT1_90\ = CARRY((\inst38|inst4~regout\ & (\inst2|$00000|auto_generated|result_node[9]~15\ & !\inst23|LPM_COMPARE_component|auto_generated|op_1~22COUT1_88\)) # (!\inst38|inst4~regout\ & 
-- ((\inst2|$00000|auto_generated|result_node[9]~15\) # (!\inst23|LPM_COMPARE_component|auto_generated|op_1~22COUT1_88\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst38|inst4~regout\,
	datab => \inst2|$00000|auto_generated|result_node[9]~15\,
	cin => \inst23|LPM_COMPARE_component|auto_generated|op_1~37_cout\,
	cin0 => \inst23|LPM_COMPARE_component|auto_generated|op_1~22_cout0\,
	cin1 => \inst23|LPM_COMPARE_component|auto_generated|op_1~22COUT1_88\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst23|LPM_COMPARE_component|auto_generated|op_1~15\,
	cout0 => \inst23|LPM_COMPARE_component|auto_generated|op_1~17_cout0\,
	cout1 => \inst23|LPM_COMPARE_component|auto_generated|op_1~17COUT1_90\);

-- Location: LC_X6_Y7_N4
\inst23|LPM_COMPARE_component|auto_generated|op_1~12\ : maxv_lcell
-- Equation(s):
-- \inst23|LPM_COMPARE_component|auto_generated|op_1~12_cout\ = CARRY((\inst38|inst3~regout\ & ((!\inst23|LPM_COMPARE_component|auto_generated|op_1~17COUT1_90\) # (!\inst2|$00000|auto_generated|result_node[10]~13\))) # (!\inst38|inst3~regout\ & 
-- (!\inst2|$00000|auto_generated|result_node[10]~13\ & !\inst23|LPM_COMPARE_component|auto_generated|op_1~17COUT1_90\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst38|inst3~regout\,
	datab => \inst2|$00000|auto_generated|result_node[10]~13\,
	cin => \inst23|LPM_COMPARE_component|auto_generated|op_1~37_cout\,
	cin0 => \inst23|LPM_COMPARE_component|auto_generated|op_1~17_cout0\,
	cin1 => \inst23|LPM_COMPARE_component|auto_generated|op_1~17COUT1_90\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst23|LPM_COMPARE_component|auto_generated|op_1~10\,
	cout => \inst23|LPM_COMPARE_component|auto_generated|op_1~12_cout\);

-- Location: LC_X6_Y7_N5
\inst23|LPM_COMPARE_component|auto_generated|op_1~7\ : maxv_lcell
-- Equation(s):
-- \inst23|LPM_COMPARE_component|auto_generated|op_1~7_cout0\ = CARRY((\inst38|inst2~regout\ & (\inst2|$00000|auto_generated|result_node[11]~11\ & !\inst23|LPM_COMPARE_component|auto_generated|op_1~12_cout\)) # (!\inst38|inst2~regout\ & 
-- ((\inst2|$00000|auto_generated|result_node[11]~11\) # (!\inst23|LPM_COMPARE_component|auto_generated|op_1~12_cout\))))
-- \inst23|LPM_COMPARE_component|auto_generated|op_1~7COUT1_92\ = CARRY((\inst38|inst2~regout\ & (\inst2|$00000|auto_generated|result_node[11]~11\ & !\inst23|LPM_COMPARE_component|auto_generated|op_1~12_cout\)) # (!\inst38|inst2~regout\ & 
-- ((\inst2|$00000|auto_generated|result_node[11]~11\) # (!\inst23|LPM_COMPARE_component|auto_generated|op_1~12_cout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst38|inst2~regout\,
	datab => \inst2|$00000|auto_generated|result_node[11]~11\,
	cin => \inst23|LPM_COMPARE_component|auto_generated|op_1~12_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst23|LPM_COMPARE_component|auto_generated|op_1~5\,
	cout0 => \inst23|LPM_COMPARE_component|auto_generated|op_1~7_cout0\,
	cout1 => \inst23|LPM_COMPARE_component|auto_generated|op_1~7COUT1_92\);

-- Location: LC_X6_Y7_N6
inst45 : maxv_lcell
-- Equation(s):
-- \inst45~regout\ = DFFEAS(((\inst38|inst1~regout\ & (!(!\inst23|LPM_COMPARE_component|auto_generated|op_1~12_cout\ & \inst23|LPM_COMPARE_component|auto_generated|op_1~7_cout0\) # (\inst23|LPM_COMPARE_component|auto_generated|op_1~12_cout\ & 
-- \inst23|LPM_COMPARE_component|auto_generated|op_1~7COUT1_92\) & \inst2|$00000|auto_generated|result_node[12]~1\)) # (!\inst38|inst1~regout\ & ((\inst2|$00000|auto_generated|result_node[12]~1\) # 
-- (!(!\inst23|LPM_COMPARE_component|auto_generated|op_1~12_cout\ & \inst23|LPM_COMPARE_component|auto_generated|op_1~7_cout0\) # (\inst23|LPM_COMPARE_component|auto_generated|op_1~12_cout\ & \inst23|LPM_COMPARE_component|auto_generated|op_1~7COUT1_92\))))), 
-- GLOBAL(\inst36~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3f03",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \inst36~combout\,
	datab => \inst38|inst1~regout\,
	datad => \inst2|$00000|auto_generated|result_node[12]~1\,
	aclr => GND,
	cin => \inst23|LPM_COMPARE_component|auto_generated|op_1~12_cout\,
	cin0 => \inst23|LPM_COMPARE_component|auto_generated|op_1~7_cout0\,
	cin1 => \inst23|LPM_COMPARE_component|auto_generated|op_1~7COUT1_92\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst45~regout\);

-- Location: LC_X7_Y6_N3
\inst3|$00000|auto_generated|result_node[12]~13\ : maxv_lcell
-- Equation(s):
-- \inst3|$00000|auto_generated|result_node[12]~13_combout\ = (!\hiTrueSetDisp~combout\ & (\inst50~regout\ & ((\inst5|$00000|auto_generated|result_node[12]~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4400",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \hiTrueSetDisp~combout\,
	datab => \inst50~regout\,
	datad => \inst5|$00000|auto_generated|result_node[12]~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst3|$00000|auto_generated|result_node[12]~13_combout\);

-- Location: LC_X7_Y6_N1
\inst3|$00000|auto_generated|result_node[12]~14\ : maxv_lcell
-- Equation(s):
-- \inst3|$00000|auto_generated|result_node[12]~14_combout\ = (\inst50~regout\ & (\inst2|$00000|auto_generated|result_node[12]~1\ & (\hiTrueSetDisp~combout\))) # (!\inst50~regout\ & (((\inst38|inst1~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b380",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|$00000|auto_generated|result_node[12]~1\,
	datab => \inst50~regout\,
	datac => \hiTrueSetDisp~combout\,
	datad => \inst38|inst1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst3|$00000|auto_generated|result_node[12]~14_combout\);

-- Location: LC_X7_Y6_N4
\inst57|adder|adder|cin_node~0\ : maxv_lcell
-- Equation(s):
-- \inst57|adder|adder|cin_node~0_combout\ = (\inst3|$00000|auto_generated|result_node[12]~13_combout\) # ((\inst3|$00000|auto_generated|result_node[12]~14_combout\))
-- \inst57|adder|adder|cin_node\ = CARRY((\inst3|$00000|auto_generated|result_node[12]~13_combout\) # ((\inst3|$00000|auto_generated|result_node[12]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eeee",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|$00000|auto_generated|result_node[12]~13_combout\,
	datab => \inst3|$00000|auto_generated|result_node[12]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst57|adder|adder|cin_node~0_combout\,
	cout => \inst57|adder|adder|cin_node\);

-- Location: LC_X6_Y6_N8
\inst3|$00000|auto_generated|result_node[2]~16\ : maxv_lcell
-- Equation(s):
-- \inst3|$00000|auto_generated|result_node[2]~16_combout\ = ((\hiTrueSetDisp~combout\ & (\inst2|$00000|auto_generated|result_node[2]~3\)) # (!\hiTrueSetDisp~combout\ & ((\inst5|$00000|auto_generated|result_node[2]~23\))))

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
	datab => \hiTrueSetDisp~combout\,
	datac => \inst2|$00000|auto_generated|result_node[2]~3\,
	datad => \inst5|$00000|auto_generated|result_node[2]~23\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst3|$00000|auto_generated|result_node[2]~16_combout\);

-- Location: LC_X6_Y6_N6
\inst3|$00000|auto_generated|result_node[2]~17\ : maxv_lcell
-- Equation(s):
-- \inst3|$00000|auto_generated|result_node[2]~17_combout\ = (\inst50~regout\ & (((\inst3|$00000|auto_generated|result_node[2]~16_combout\)))) # (!\inst50~regout\ & (((\inst38|inst11~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst50~regout\,
	datac => \inst38|inst11~regout\,
	datad => \inst3|$00000|auto_generated|result_node[2]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst3|$00000|auto_generated|result_node[2]~17_combout\);

-- Location: LC_X6_Y6_N9
\inst3|$00000|auto_generated|result_node[0]~39\ : maxv_lcell
-- Equation(s):
-- \inst3|$00000|auto_generated|result_node[0]~39_combout\ = ((\hiTrueSetDisp~combout\ & (\inst2|$00000|auto_generated|result_node[0]~25\)) # (!\hiTrueSetDisp~combout\ & ((\inst5|$00000|auto_generated|result_node[0]~25\))))

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
	datab => \hiTrueSetDisp~combout\,
	datac => \inst2|$00000|auto_generated|result_node[0]~25\,
	datad => \inst5|$00000|auto_generated|result_node[0]~25\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst3|$00000|auto_generated|result_node[0]~39_combout\);

-- Location: LC_X6_Y6_N3
\inst3|$00000|auto_generated|result_node[0]~40\ : maxv_lcell
-- Equation(s):
-- \inst3|$00000|auto_generated|result_node[0]~40_combout\ = (\inst50~regout\ & (((\inst3|$00000|auto_generated|result_node[0]~39_combout\)))) # (!\inst50~regout\ & (((\inst38|inst13~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst50~regout\,
	datac => \inst38|inst13~regout\,
	datad => \inst3|$00000|auto_generated|result_node[0]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst3|$00000|auto_generated|result_node[0]~40_combout\);

-- Location: LC_X7_Y6_N5
\inst57|adder|adder|result_node|cs_buffer[0]\ : maxv_lcell
-- Equation(s):
-- \inst57|adder|adder|result_node|cout\(0) = CARRY((\inst57|adder|adder|cin_node~0_combout\ $ (!\inst3|$00000|auto_generated|result_node[0]~40_combout\)) # (!\inst57|adder|adder|cin_node\))
-- \inst57|adder|adder|result_node|cout[0]~COUT1_11\ = CARRY((\inst57|adder|adder|cin_node~0_combout\ $ (!\inst3|$00000|auto_generated|result_node[0]~40_combout\)) # (!\inst57|adder|adder|cin_node\))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "969f",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst57|adder|adder|cin_node~0_combout\,
	datab => \inst3|$00000|auto_generated|result_node[0]~40_combout\,
	cin => \inst57|adder|adder|cin_node\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst57|adder|adder|result_node|cs_buffer\(0),
	cout0 => \inst57|adder|adder|result_node|cout\(0),
	cout1 => \inst57|adder|adder|result_node|cout[0]~COUT1_11\);

-- Location: LC_X7_Y6_N6
\inst57|adder|adder|result_node|cs_buffer[1]\ : maxv_lcell
-- Equation(s):
-- \inst57|adder|adder|result_node|cout\(1) = CARRY((!\inst57|adder|adder|result_node|cout\(0) & (\inst57|adder|adder|cin_node~0_combout\ $ (\inst3|$00000|auto_generated|result_node[1]~38\))))
-- \inst57|adder|adder|result_node|cout[1]~COUT1_13\ = CARRY((!\inst57|adder|adder|result_node|cout[0]~COUT1_11\ & (\inst57|adder|adder|cin_node~0_combout\ $ (\inst3|$00000|auto_generated|result_node[1]~38\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "6906",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst57|adder|adder|cin_node~0_combout\,
	datab => \inst3|$00000|auto_generated|result_node[1]~38\,
	cin => \inst57|adder|adder|cin_node\,
	cin0 => \inst57|adder|adder|result_node|cout\(0),
	cin1 => \inst57|adder|adder|result_node|cout[0]~COUT1_11\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst57|adder|adder|result_node|cs_buffer\(1),
	cout0 => \inst57|adder|adder|result_node|cout\(1),
	cout1 => \inst57|adder|adder|result_node|cout[1]~COUT1_13\);

-- Location: LC_X7_Y6_N7
\inst57|adder|adder|result_node|cs_buffer[2]\ : maxv_lcell
-- Equation(s):
-- \inst57|adder|adder|result_node|cs_buffer\(2) = \inst57|adder|adder|cin_node~0_combout\ $ (\inst3|$00000|auto_generated|result_node[2]~17_combout\ $ (((!\inst57|adder|adder|cin_node\ & \inst57|adder|adder|result_node|cout\(1)) # 
-- (\inst57|adder|adder|cin_node\ & \inst57|adder|adder|result_node|cout[1]~COUT1_13\))))
-- \inst57|adder|adder|result_node|cout\(2) = CARRY((\inst57|adder|adder|cin_node~0_combout\ $ (!\inst3|$00000|auto_generated|result_node[2]~17_combout\)) # (!\inst57|adder|adder|result_node|cout\(1)))
-- \inst57|adder|adder|result_node|cout[2]~COUT1_15\ = CARRY((\inst57|adder|adder|cin_node~0_combout\ $ (!\inst3|$00000|auto_generated|result_node[2]~17_combout\)) # (!\inst57|adder|adder|result_node|cout[1]~COUT1_13\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "969f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst57|adder|adder|cin_node~0_combout\,
	datab => \inst3|$00000|auto_generated|result_node[2]~17_combout\,
	cin => \inst57|adder|adder|cin_node\,
	cin0 => \inst57|adder|adder|result_node|cout\(1),
	cin1 => \inst57|adder|adder|result_node|cout[1]~COUT1_13\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst57|adder|adder|result_node|cs_buffer\(2),
	cout0 => \inst57|adder|adder|result_node|cout\(2),
	cout1 => \inst57|adder|adder|result_node|cout[2]~COUT1_15\);

-- Location: LC_X7_Y6_N8
\inst57|adder|adder|result_node|cs_buffer[3]\ : maxv_lcell
-- Equation(s):
-- \inst57|adder|adder|result_node|cs_buffer\(3) = \inst57|adder|adder|cin_node~0_combout\ $ (\inst3|$00000|auto_generated|result_node[3]~19\ $ ((!(!\inst57|adder|adder|cin_node\ & \inst57|adder|adder|result_node|cout\(2)) # (\inst57|adder|adder|cin_node\ & 
-- \inst57|adder|adder|result_node|cout[2]~COUT1_15\))))
-- \inst57|adder|adder|result_node|cout\(3) = CARRY((!\inst57|adder|adder|result_node|cout\(2) & (\inst57|adder|adder|cin_node~0_combout\ $ (\inst3|$00000|auto_generated|result_node[3]~19\))))
-- \inst57|adder|adder|result_node|cout[3]~COUT1_17\ = CARRY((!\inst57|adder|adder|result_node|cout[2]~COUT1_15\ & (\inst57|adder|adder|cin_node~0_combout\ $ (\inst3|$00000|auto_generated|result_node[3]~19\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "6906",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst57|adder|adder|cin_node~0_combout\,
	datab => \inst3|$00000|auto_generated|result_node[3]~19\,
	cin => \inst57|adder|adder|cin_node\,
	cin0 => \inst57|adder|adder|result_node|cout\(2),
	cin1 => \inst57|adder|adder|result_node|cout[2]~COUT1_15\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst57|adder|adder|result_node|cs_buffer\(3),
	cout0 => \inst57|adder|adder|result_node|cout\(3),
	cout1 => \inst57|adder|adder|result_node|cout[3]~COUT1_17\);

-- Location: LC_X12_Y6_N6
\inst83v4|Mux1~0\ : maxv_lcell
-- Equation(s):
-- \inst83v4|Mux1~0_combout\ = (((\inst57|adder|adder|result_node|cs_buffer\(2)) # (!\inst57|adder|adder|result_node|cs_buffer\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst57|adder|adder|result_node|cs_buffer\(2),
	datad => \inst57|adder|adder|result_node|cs_buffer\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst83v4|Mux1~0_combout\);

-- Location: LC_X12_Y6_N2
\inst83v4|Mux2~0\ : maxv_lcell
-- Equation(s):
-- \inst83v4|Mux2~0_combout\ = (((\inst57|adder|adder|result_node|cs_buffer\(3)) # (!\inst57|adder|adder|result_node|cs_buffer\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst57|adder|adder|result_node|cs_buffer\(2),
	datad => \inst57|adder|adder|result_node|cs_buffer\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst83v4|Mux2~0_combout\);

-- Location: LC_X12_Y6_N3
\inst83v4|Mux3~0\ : maxv_lcell
-- Equation(s):
-- \inst83v4|Mux3~0_combout\ = (((!\inst57|adder|adder|result_node|cs_buffer\(3)) # (!\inst57|adder|adder|result_node|cs_buffer\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0fff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst57|adder|adder|result_node|cs_buffer\(2),
	datad => \inst57|adder|adder|result_node|cs_buffer\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst83v4|Mux3~0_combout\);

-- Location: LC_X12_Y6_N5
\inst83v4|Mux6~0\ : maxv_lcell
-- Equation(s):
-- \inst83v4|Mux6~0_combout\ = ((\inst57|adder|adder|result_node|cs_buffer\(2) $ (\inst57|adder|adder|result_node|cs_buffer\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst57|adder|adder|result_node|cs_buffer\(2),
	datad => \inst57|adder|adder|result_node|cs_buffer\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst83v4|Mux6~0_combout\);

-- Location: LC_X7_Y6_N2
\inst3|$00000|auto_generated|result_node[4]~20\ : maxv_lcell
-- Equation(s):
-- \inst3|$00000|auto_generated|result_node[4]~20_combout\ = (\hiTrueSetDisp~combout\ & (((\inst2|$00000|auto_generated|result_node[4]~7\)))) # (!\hiTrueSetDisp~combout\ & (((\inst5|$00000|auto_generated|result_node[4]~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \hiTrueSetDisp~combout\,
	datac => \inst5|$00000|auto_generated|result_node[4]~19\,
	datad => \inst2|$00000|auto_generated|result_node[4]~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst3|$00000|auto_generated|result_node[4]~20_combout\);

-- Location: LC_X7_Y6_N0
\inst3|$00000|auto_generated|result_node[4]~21\ : maxv_lcell
-- Equation(s):
-- \inst3|$00000|auto_generated|result_node[4]~21_combout\ = ((\inst50~regout\ & ((\inst3|$00000|auto_generated|result_node[4]~20_combout\))) # (!\inst50~regout\ & (\inst38|inst9~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst50~regout\,
	datac => \inst38|inst9~regout\,
	datad => \inst3|$00000|auto_generated|result_node[4]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst3|$00000|auto_generated|result_node[4]~21_combout\);

-- Location: LC_X7_Y6_N9
\inst57|adder|adder|result_node|cs_buffer[4]\ : maxv_lcell
-- Equation(s):
-- \inst57|adder|adder|result_node|cs_buffer\(4) = \inst57|adder|adder|cin_node~0_combout\ $ (\inst3|$00000|auto_generated|result_node[4]~21_combout\ $ (((!\inst57|adder|adder|cin_node\ & \inst57|adder|adder|result_node|cout\(3)) # 
-- (\inst57|adder|adder|cin_node\ & \inst57|adder|adder|result_node|cout[3]~COUT1_17\))))
-- \inst57|adder|adder|result_node|cout\(4) = CARRY((\inst57|adder|adder|cin_node~0_combout\ $ (!\inst3|$00000|auto_generated|result_node[4]~21_combout\)) # (!\inst57|adder|adder|result_node|cout[3]~COUT1_17\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "969f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst57|adder|adder|cin_node~0_combout\,
	datab => \inst3|$00000|auto_generated|result_node[4]~21_combout\,
	cin => \inst57|adder|adder|cin_node\,
	cin0 => \inst57|adder|adder|result_node|cout\(3),
	cin1 => \inst57|adder|adder|result_node|cout[3]~COUT1_17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst57|adder|adder|result_node|cs_buffer\(4),
	cout => \inst57|adder|adder|result_node|cout\(4));

-- Location: LC_X7_Y7_N1
\inst3|$00000|auto_generated|result_node[6]~34\ : maxv_lcell
-- Equation(s):
-- \inst3|$00000|auto_generated|result_node[6]~34_combout\ = ((\hiTrueSetDisp~combout\ & ((\inst2|$00000|auto_generated|result_node[6]~21\))) # (!\hiTrueSetDisp~combout\ & (\inst5|$00000|auto_generated|result_node[6]~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \hiTrueSetDisp~combout\,
	datac => \inst5|$00000|auto_generated|result_node[6]~15\,
	datad => \inst2|$00000|auto_generated|result_node[6]~21\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst3|$00000|auto_generated|result_node[6]~34_combout\);

-- Location: LC_X7_Y7_N2
\inst3|$00000|auto_generated|result_node[6]~35\ : maxv_lcell
-- Equation(s):
-- \inst3|$00000|auto_generated|result_node[6]~35_combout\ = ((\inst50~regout\ & ((\inst3|$00000|auto_generated|result_node[6]~34_combout\))) # (!\inst50~regout\ & (\inst38|inst7~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst50~regout\,
	datac => \inst38|inst7~regout\,
	datad => \inst3|$00000|auto_generated|result_node[6]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst3|$00000|auto_generated|result_node[6]~35_combout\);

-- Location: LC_X8_Y6_N0
\inst57|adder|adder|result_node|cs_buffer[5]\ : maxv_lcell
-- Equation(s):
-- \inst57|adder|adder|result_node|cs_buffer\(5) = \inst3|$00000|auto_generated|result_node[5]~23\ $ (\inst57|adder|adder|cin_node~0_combout\ $ ((!\inst57|adder|adder|result_node|cout\(4))))
-- \inst57|adder|adder|result_node|cout\(5) = CARRY((!\inst57|adder|adder|result_node|cout\(4) & (\inst3|$00000|auto_generated|result_node[5]~23\ $ (\inst57|adder|adder|cin_node~0_combout\))))
-- \inst57|adder|adder|result_node|cout[5]~COUT1_19\ = CARRY((!\inst57|adder|adder|result_node|cout\(4) & (\inst3|$00000|auto_generated|result_node[5]~23\ $ (\inst57|adder|adder|cin_node~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "6906",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|$00000|auto_generated|result_node[5]~23\,
	datab => \inst57|adder|adder|cin_node~0_combout\,
	cin => \inst57|adder|adder|result_node|cout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst57|adder|adder|result_node|cs_buffer\(5),
	cout0 => \inst57|adder|adder|result_node|cout\(5),
	cout1 => \inst57|adder|adder|result_node|cout[5]~COUT1_19\);

-- Location: LC_X8_Y6_N1
\inst57|adder|adder|result_node|cs_buffer[6]\ : maxv_lcell
-- Equation(s):
-- \inst57|adder|adder|result_node|cs_buffer\(6) = \inst3|$00000|auto_generated|result_node[6]~35_combout\ $ (\inst57|adder|adder|cin_node~0_combout\ $ (((!\inst57|adder|adder|result_node|cout\(4) & \inst57|adder|adder|result_node|cout\(5)) # 
-- (\inst57|adder|adder|result_node|cout\(4) & \inst57|adder|adder|result_node|cout[5]~COUT1_19\))))
-- \inst57|adder|adder|result_node|cout\(6) = CARRY((\inst3|$00000|auto_generated|result_node[6]~35_combout\ $ (!\inst57|adder|adder|cin_node~0_combout\)) # (!\inst57|adder|adder|result_node|cout\(5)))
-- \inst57|adder|adder|result_node|cout[6]~COUT1_21\ = CARRY((\inst3|$00000|auto_generated|result_node[6]~35_combout\ $ (!\inst57|adder|adder|cin_node~0_combout\)) # (!\inst57|adder|adder|result_node|cout[5]~COUT1_19\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "969f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|$00000|auto_generated|result_node[6]~35_combout\,
	datab => \inst57|adder|adder|cin_node~0_combout\,
	cin => \inst57|adder|adder|result_node|cout\(4),
	cin0 => \inst57|adder|adder|result_node|cout\(5),
	cin1 => \inst57|adder|adder|result_node|cout[5]~COUT1_19\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst57|adder|adder|result_node|cs_buffer\(6),
	cout0 => \inst57|adder|adder|result_node|cout\(6),
	cout1 => \inst57|adder|adder|result_node|cout[6]~COUT1_21\);

-- Location: LC_X8_Y6_N2
\inst57|adder|adder|result_node|cs_buffer[7]\ : maxv_lcell
-- Equation(s):
-- \inst57|adder|adder|result_node|cs_buffer\(7) = \inst3|$00000|auto_generated|result_node[7]~33\ $ (\inst57|adder|adder|cin_node~0_combout\ $ ((!(!\inst57|adder|adder|result_node|cout\(4) & \inst57|adder|adder|result_node|cout\(6)) # 
-- (\inst57|adder|adder|result_node|cout\(4) & \inst57|adder|adder|result_node|cout[6]~COUT1_21\))))
-- \inst57|adder|adder|result_node|cout\(7) = CARRY((!\inst57|adder|adder|result_node|cout\(6) & (\inst3|$00000|auto_generated|result_node[7]~33\ $ (\inst57|adder|adder|cin_node~0_combout\))))
-- \inst57|adder|adder|result_node|cout[7]~COUT1_23\ = CARRY((!\inst57|adder|adder|result_node|cout[6]~COUT1_21\ & (\inst3|$00000|auto_generated|result_node[7]~33\ $ (\inst57|adder|adder|cin_node~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "6906",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|$00000|auto_generated|result_node[7]~33\,
	datab => \inst57|adder|adder|cin_node~0_combout\,
	cin => \inst57|adder|adder|result_node|cout\(4),
	cin0 => \inst57|adder|adder|result_node|cout\(6),
	cin1 => \inst57|adder|adder|result_node|cout[6]~COUT1_21\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst57|adder|adder|result_node|cs_buffer\(7),
	cout0 => \inst57|adder|adder|result_node|cout\(7),
	cout1 => \inst57|adder|adder|result_node|cout[7]~COUT1_23\);

-- Location: LC_X10_Y4_N6
\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5|add_sub_cella[1]\ : maxv_lcell
-- Equation(s):
-- \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5|add_sub_cella\(1) = ((\inst57|adder|adder|result_node|cs_buffer\(7)))
-- \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5|add_sub_cella[1]~COUT\ = CARRY(((\inst57|adder|adder|result_node|cs_buffer\(7))))
-- \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5|add_sub_cella[1]~COUTCOUT1_11\ = CARRY(((\inst57|adder|adder|result_node|cs_buffer\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cccc",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst57|adder|adder|result_node|cs_buffer\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5|add_sub_cella\(1),
	cout0 => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5|add_sub_cella[1]~COUT\,
	cout1 => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5|add_sub_cella[1]~COUTCOUT1_11\);

-- Location: LC_X7_Y7_N9
\inst3|$00000|auto_generated|result_node[8]~30\ : maxv_lcell
-- Equation(s):
-- \inst3|$00000|auto_generated|result_node[8]~30_combout\ = ((\hiTrueSetDisp~combout\ & (\inst2|$00000|auto_generated|result_node[8]~17\)) # (!\hiTrueSetDisp~combout\ & ((\inst5|$00000|auto_generated|result_node[8]~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst2|$00000|auto_generated|result_node[8]~17\,
	datac => \inst5|$00000|auto_generated|result_node[8]~11\,
	datad => \hiTrueSetDisp~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst3|$00000|auto_generated|result_node[8]~30_combout\);

-- Location: LC_X7_Y7_N5
\inst3|$00000|auto_generated|result_node[8]~31\ : maxv_lcell
-- Equation(s):
-- \inst3|$00000|auto_generated|result_node[8]~31_combout\ = ((\inst50~regout\ & ((\inst3|$00000|auto_generated|result_node[8]~30_combout\))) # (!\inst50~regout\ & (\inst38|inst5~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst38|inst5~regout\,
	datac => \inst50~regout\,
	datad => \inst3|$00000|auto_generated|result_node[8]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst3|$00000|auto_generated|result_node[8]~31_combout\);

-- Location: LC_X8_Y6_N3
\inst57|adder|adder|result_node|cs_buffer[8]\ : maxv_lcell
-- Equation(s):
-- \inst57|adder|adder|result_node|cs_buffer\(8) = \inst57|adder|adder|cin_node~0_combout\ $ (\inst3|$00000|auto_generated|result_node[8]~31_combout\ $ (((!\inst57|adder|adder|result_node|cout\(4) & \inst57|adder|adder|result_node|cout\(7)) # 
-- (\inst57|adder|adder|result_node|cout\(4) & \inst57|adder|adder|result_node|cout[7]~COUT1_23\))))
-- \inst57|adder|adder|result_node|cout\(8) = CARRY((\inst57|adder|adder|cin_node~0_combout\ $ (!\inst3|$00000|auto_generated|result_node[8]~31_combout\)) # (!\inst57|adder|adder|result_node|cout\(7)))
-- \inst57|adder|adder|result_node|cout[8]~COUT1_25\ = CARRY((\inst57|adder|adder|cin_node~0_combout\ $ (!\inst3|$00000|auto_generated|result_node[8]~31_combout\)) # (!\inst57|adder|adder|result_node|cout[7]~COUT1_23\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "969f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst57|adder|adder|cin_node~0_combout\,
	datab => \inst3|$00000|auto_generated|result_node[8]~31_combout\,
	cin => \inst57|adder|adder|result_node|cout\(4),
	cin0 => \inst57|adder|adder|result_node|cout\(7),
	cin1 => \inst57|adder|adder|result_node|cout[7]~COUT1_23\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst57|adder|adder|result_node|cs_buffer\(8),
	cout0 => \inst57|adder|adder|result_node|cout\(8),
	cout1 => \inst57|adder|adder|result_node|cout[8]~COUT1_25\);

-- Location: LC_X10_Y6_N0
\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]\ : maxv_lcell
-- Equation(s):
-- \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4|add_sub_cella\(1) = (\inst57|adder|adder|result_node|cs_buffer\(8))
-- \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~COUT\ = CARRY((\inst57|adder|adder|result_node|cs_buffer\(8)))
-- \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~COUTCOUT1_10\ = CARRY((\inst57|adder|adder|result_node|cs_buffer\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaaa",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst57|adder|adder|result_node|cs_buffer\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4|add_sub_cella\(1),
	cout0 => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~COUT\,
	cout1 => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~COUTCOUT1_10\);

-- Location: LC_X10_Y6_N1
\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~3\ : maxv_lcell
-- Equation(s):
-- \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~4\ = (((\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~COUT\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~COUT\,
	cin1 => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~COUTCOUT1_10\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~4\);

-- Location: LC_X6_Y6_N4
\inst3|$00000|auto_generated|result_node[10]~26\ : maxv_lcell
-- Equation(s):
-- \inst3|$00000|auto_generated|result_node[10]~26_combout\ = (\inst50~regout\ & (\inst2|$00000|auto_generated|result_node[10]~13\ & (\hiTrueSetDisp~combout\))) # (!\inst50~regout\ & (((\inst38|inst3~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b380",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|$00000|auto_generated|result_node[10]~13\,
	datab => \inst50~regout\,
	datac => \hiTrueSetDisp~combout\,
	datad => \inst38|inst3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst3|$00000|auto_generated|result_node[10]~26_combout\);

-- Location: LC_X6_Y6_N5
\inst3|$00000|auto_generated|result_node[10]~27\ : maxv_lcell
-- Equation(s):
-- \inst3|$00000|auto_generated|result_node[10]~27_combout\ = (\inst3|$00000|auto_generated|result_node[10]~26_combout\) # ((\inst50~regout\ & (\inst5|$00000|auto_generated|result_node[10]~7\ & !\hiTrueSetDisp~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff08",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst50~regout\,
	datab => \inst5|$00000|auto_generated|result_node[10]~7\,
	datac => \hiTrueSetDisp~combout\,
	datad => \inst3|$00000|auto_generated|result_node[10]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst3|$00000|auto_generated|result_node[10]~27_combout\);

-- Location: LC_X8_Y6_N4
\inst57|adder|adder|result_node|cs_buffer[9]\ : maxv_lcell
-- Equation(s):
-- \inst57|adder|adder|result_node|cs_buffer\(9) = \inst57|adder|adder|cin_node~0_combout\ $ (\inst3|$00000|auto_generated|result_node[9]~29\ $ ((!(!\inst57|adder|adder|result_node|cout\(4) & \inst57|adder|adder|result_node|cout\(8)) # 
-- (\inst57|adder|adder|result_node|cout\(4) & \inst57|adder|adder|result_node|cout[8]~COUT1_25\))))
-- \inst57|adder|adder|result_node|cout\(9) = CARRY((!\inst57|adder|adder|result_node|cout[8]~COUT1_25\ & (\inst57|adder|adder|cin_node~0_combout\ $ (\inst3|$00000|auto_generated|result_node[9]~29\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "6906",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst57|adder|adder|cin_node~0_combout\,
	datab => \inst3|$00000|auto_generated|result_node[9]~29\,
	cin => \inst57|adder|adder|result_node|cout\(4),
	cin0 => \inst57|adder|adder|result_node|cout\(8),
	cin1 => \inst57|adder|adder|result_node|cout[8]~COUT1_25\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst57|adder|adder|result_node|cs_buffer\(9),
	cout => \inst57|adder|adder|result_node|cout\(9));

-- Location: LC_X8_Y6_N5
\inst57|adder|adder|result_node|cs_buffer[10]\ : maxv_lcell
-- Equation(s):
-- \inst57|adder|adder|result_node|cs_buffer\(10) = \inst3|$00000|auto_generated|result_node[10]~27_combout\ $ (\inst57|adder|adder|cin_node~0_combout\ $ ((\inst57|adder|adder|result_node|cout\(9))))
-- \inst57|adder|adder|result_node|cout\(10) = CARRY((\inst3|$00000|auto_generated|result_node[10]~27_combout\ $ (!\inst57|adder|adder|cin_node~0_combout\)) # (!\inst57|adder|adder|result_node|cout\(9)))
-- \inst57|adder|adder|result_node|cout[10]~COUT1_27\ = CARRY((\inst3|$00000|auto_generated|result_node[10]~27_combout\ $ (!\inst57|adder|adder|cin_node~0_combout\)) # (!\inst57|adder|adder|result_node|cout\(9)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "969f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|$00000|auto_generated|result_node[10]~27_combout\,
	datab => \inst57|adder|adder|cin_node~0_combout\,
	cin => \inst57|adder|adder|result_node|cout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst57|adder|adder|result_node|cs_buffer\(10),
	cout0 => \inst57|adder|adder|result_node|cout\(10),
	cout1 => \inst57|adder|adder|result_node|cout[10]~COUT1_27\);

-- Location: LC_X8_Y6_N6
\inst57|adder|adder|result_node|cs_buffer[11]\ : maxv_lcell
-- Equation(s):
-- \inst57|adder|adder|result_node|cs_buffer\(11) = (\inst3|$00000|auto_generated|result_node[11]~25\ $ ((!\inst57|adder|adder|result_node|cout\(9) & \inst57|adder|adder|result_node|cout\(10)) # (\inst57|adder|adder|result_node|cout\(9) & 
-- \inst57|adder|adder|result_node|cout[10]~COUT1_27\) $ (!\inst57|adder|adder|cin_node~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3cc3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst3|$00000|auto_generated|result_node[11]~25\,
	datad => \inst57|adder|adder|cin_node~0_combout\,
	cin => \inst57|adder|adder|result_node|cout\(9),
	cin0 => \inst57|adder|adder|result_node|cout\(10),
	cin1 => \inst57|adder|adder|result_node|cout[10]~COUT1_27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst57|adder|adder|result_node|cs_buffer\(11));

-- Location: LC_X9_Y6_N3
\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]\ : maxv_lcell
-- Equation(s):
-- \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3|add_sub_cella\(1) = ((\inst57|adder|adder|result_node|cs_buffer\(9)))
-- \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~COUT\ = CARRY(((\inst57|adder|adder|result_node|cs_buffer\(9))))
-- \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~COUTCOUT1_10\ = CARRY(((\inst57|adder|adder|result_node|cs_buffer\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cccc",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst57|adder|adder|result_node|cs_buffer\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3|add_sub_cella\(1),
	cout0 => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~COUT\,
	cout1 => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~COUTCOUT1_10\);

-- Location: LC_X9_Y6_N4
\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~3\ : maxv_lcell
-- Equation(s):
-- \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~4\ = (((\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~COUT\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~COUT\,
	cin1 => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~COUTCOUT1_10\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~4\);

-- Location: LC_X9_Y6_N2
\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[18]~0\ : maxv_lcell
-- Equation(s):
-- \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[18]~0_combout\ = (!\inst57|adder|adder|result_node|cs_buffer\(10) & (\inst57|adder|adder|result_node|cs_buffer\(11) & 
-- (!\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0404",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst57|adder|adder|result_node|cs_buffer\(10),
	datab => \inst57|adder|adder|result_node|cs_buffer\(11),
	datac => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~4\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[18]~0_combout\);

-- Location: LC_X9_Y6_N6
\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[17]~2\ : maxv_lcell
-- Equation(s):
-- \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[17]~2_combout\ = (\inst57|adder|adder|result_node|cs_buffer\(10) & (((\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~4\)) # 
-- (!\inst57|adder|adder|result_node|cs_buffer\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a2a2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst57|adder|adder|result_node|cs_buffer\(10),
	datab => \inst57|adder|adder|result_node|cs_buffer\(11),
	datac => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~4\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[17]~2_combout\);

-- Location: LC_X9_Y6_N8
\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~0\ : maxv_lcell
-- Equation(s):
-- \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~0_combout\ = (\inst57|adder|adder|result_node|cs_buffer\(10)) # (((\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fafa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst57|adder|adder|result_node|cs_buffer\(10),
	datac => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3|add_sub_cella[1]~4\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~0_combout\);

-- Location: LC_X9_Y6_N9
\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[16]~1\ : maxv_lcell
-- Equation(s):
-- \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[16]~1_combout\ = (\inst57|adder|adder|result_node|cs_buffer\(11) & ((\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~0_combout\ & 
-- (!\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3|add_sub_cella\(1))) # (!\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~0_combout\ & ((\inst57|adder|adder|result_node|cs_buffer\(9)))))) # 
-- (!\inst57|adder|adder|result_node|cs_buffer\(11) & (((\inst57|adder|adder|result_node|cs_buffer\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5ccc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3|add_sub_cella\(1),
	datab => \inst57|adder|adder|result_node|cs_buffer\(9),
	datac => \inst57|adder|adder|result_node|cs_buffer\(11),
	datad => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_3|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[16]~1_combout\);

-- Location: LC_X9_Y6_N1
\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[22]~4\ : maxv_lcell
-- Equation(s):
-- \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[22]~4_combout\ = (\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~4\ & 
-- (((\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[16]~1_combout\)))) # (!\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~4\ & 
-- ((\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[18]~0_combout\ & ((!\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[16]~1_combout\))) # 
-- (!\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[18]~0_combout\ & (!\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[17]~2_combout\ & 
-- \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[16]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ab44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~4\,
	datab => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[18]~0_combout\,
	datac => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[17]~2_combout\,
	datad => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[22]~4_combout\);

-- Location: LC_X9_Y6_N7
\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0\ : maxv_lcell
-- Equation(s):
-- \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\ = (\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[17]~2_combout\ & 
-- (!\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~4\ & (!\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[16]~1_combout\))) # 
-- (!\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[17]~2_combout\ & (\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[18]~0_combout\ & 
-- ((\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~4\) # (\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[16]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1e10",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~4\,
	datab => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[16]~1_combout\,
	datac => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[17]~2_combout\,
	datad => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[18]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\);

-- Location: LC_X10_Y4_N7
\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5|add_sub_cella[1]~4\ : maxv_lcell
-- Equation(s):
-- \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5|add_sub_cella[1]~5\ = (((\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5|add_sub_cella[1]~COUT\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5|add_sub_cella[1]~COUT\,
	cin1 => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5|add_sub_cella[1]~COUTCOUT1_11\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5|add_sub_cella[1]~5\);

-- Location: LC_X9_Y6_N5
\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0\ : maxv_lcell
-- Equation(s):
-- \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\ = (\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[18]~0_combout\) # 
-- ((\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[17]~2_combout\ & ((\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~4\) # 
-- (\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[16]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffe0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4|add_sub_cella[1]~4\,
	datab => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[16]~1_combout\,
	datac => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[17]~2_combout\,
	datad => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[18]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\);

-- Location: LC_X10_Y6_N5
\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[21]~3\ : maxv_lcell
-- Equation(s):
-- \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[21]~3_combout\ = (\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\ & 
-- (!\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4|add_sub_cella\(1))) # (!\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\ & (((\inst57|adder|adder|result_node|cs_buffer\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7272",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\,
	datab => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4|add_sub_cella\(1),
	datac => \inst57|adder|adder|result_node|cs_buffer\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[21]~3_combout\);

-- Location: LC_X10_Y4_N4
\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~1\ : maxv_lcell
-- Equation(s):
-- \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~1_combout\ = (\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\) # 
-- ((\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[22]~4_combout\ & ((\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5|add_sub_cella[1]~5\) # 
-- (\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[21]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eeec",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[22]~4_combout\,
	datab => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\,
	datac => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5|add_sub_cella[1]~5\,
	datad => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[21]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~1_combout\);

-- Location: LC_X10_Y4_N1
\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[26]~5\ : maxv_lcell
-- Equation(s):
-- \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[26]~5_combout\ = (\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~1_combout\ & 
-- (!\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5|add_sub_cella\(1))) # (!\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~1_combout\ & (((\inst57|adder|adder|result_node|cs_buffer\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5c5c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5|add_sub_cella\(1),
	datab => \inst57|adder|adder|result_node|cs_buffer\(7),
	datac => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[26]~5_combout\);

-- Location: LC_X10_Y4_N8
\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0\ : maxv_lcell
-- Equation(s):
-- \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0_combout\ = (\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[22]~4_combout\ & 
-- (((!\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5|add_sub_cella[1]~5\ & !\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[21]~3_combout\)))) # 
-- (!\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[22]~4_combout\ & (\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\ & 
-- ((\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5|add_sub_cella[1]~5\) # (\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[21]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "444a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[22]~4_combout\,
	datab => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\,
	datac => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5|add_sub_cella[1]~5\,
	datad => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[21]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0_combout\);

-- Location: LC_X10_Y4_N2
\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[27]~6\ : maxv_lcell
-- Equation(s):
-- \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[27]~6_combout\ = (\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\ & 
-- ((\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5|add_sub_cella[1]~5\ $ (!\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[21]~3_combout\)))) # 
-- (!\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\ & (\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[21]~3_combout\ & 
-- ((\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5|add_sub_cella[1]~5\) # (!\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[22]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f10c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[22]~4_combout\,
	datab => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~0_combout\,
	datac => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5|add_sub_cella[1]~5\,
	datad => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[21]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[27]~6_combout\);

-- Location: LC_X9_Y4_N1
\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6|add_sub_cella[1]\ : maxv_lcell
-- Equation(s):
-- \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6|add_sub_cella\(1) = (\inst57|adder|adder|result_node|cs_buffer\(6))
-- \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6|add_sub_cella[1]~COUT\ = CARRY((\inst57|adder|adder|result_node|cs_buffer\(6)))
-- \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6|add_sub_cella[1]~COUTCOUT1_11\ = CARRY((\inst57|adder|adder|result_node|cs_buffer\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaaa",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst57|adder|adder|result_node|cs_buffer\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6|add_sub_cella\(1),
	cout0 => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6|add_sub_cella[1]~COUT\,
	cout1 => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6|add_sub_cella[1]~COUTCOUT1_11\);

-- Location: LC_X9_Y4_N2
\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6|add_sub_cella[1]~4\ : maxv_lcell
-- Equation(s):
-- \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6|add_sub_cella[1]~5\ = (((\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6|add_sub_cella[1]~COUT\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6|add_sub_cella[1]~COUT\,
	cin1 => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6|add_sub_cella[1]~COUTCOUT1_11\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6|add_sub_cella[1]~5\);

-- Location: LC_X9_Y4_N3
\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~0\ : maxv_lcell
-- Equation(s):
-- \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~0_combout\ = (\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[27]~6_combout\ & 
-- (!\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[26]~5_combout\ & ((!\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6|add_sub_cella[1]~5\)))) # 
-- (!\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[27]~6_combout\ & (\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0_combout\ & 
-- ((\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[26]~5_combout\) # (\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6|add_sub_cella[1]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c58",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[26]~5_combout\,
	datab => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0_combout\,
	datac => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[27]~6_combout\,
	datad => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6|add_sub_cella[1]~5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~0_combout\);

-- Location: LC_X2_Y4_N0
\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7|add_sub_cella[1]\ : maxv_lcell
-- Equation(s):
-- \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7|add_sub_cella\(1) = ((\inst57|adder|adder|result_node|cs_buffer\(5)))
-- \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7|add_sub_cella[1]~COUT\ = CARRY(((\inst57|adder|adder|result_node|cs_buffer\(5))))
-- \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7|add_sub_cella[1]~COUTCOUT1_11\ = CARRY(((\inst57|adder|adder|result_node|cs_buffer\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cccc",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst57|adder|adder|result_node|cs_buffer\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7|add_sub_cella\(1),
	cout0 => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7|add_sub_cella[1]~COUT\,
	cout1 => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7|add_sub_cella[1]~COUTCOUT1_11\);

-- Location: LC_X2_Y4_N1
\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7|add_sub_cella[1]~4\ : maxv_lcell
-- Equation(s):
-- \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7|add_sub_cella[1]~5\ = (((\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7|add_sub_cella[1]~COUT\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin0 => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7|add_sub_cella[1]~COUT\,
	cin1 => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7|add_sub_cella[1]~COUTCOUT1_11\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7|add_sub_cella[1]~5\);

-- Location: LC_X9_Y4_N7
\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[32]~7\ : maxv_lcell
-- Equation(s):
-- \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[32]~7_combout\ = (\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[26]~5_combout\ & 
-- ((\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6|add_sub_cella[1]~5\) # ((!\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0_combout\ & 
-- !\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[27]~6_combout\)))) # (!\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[26]~5_combout\ & 
-- (\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0_combout\ & ((!\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6|add_sub_cella[1]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa46",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[26]~5_combout\,
	datab => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0_combout\,
	datac => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[27]~6_combout\,
	datad => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6|add_sub_cella[1]~5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[32]~7_combout\);

-- Location: LC_X9_Y4_N5
\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~1\ : maxv_lcell
-- Equation(s):
-- \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~1_combout\ = (\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0_combout\) # 
-- ((\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[27]~6_combout\ & ((\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[26]~5_combout\) # 
-- (\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6|add_sub_cella[1]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffe0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[26]~5_combout\,
	datab => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6|add_sub_cella[1]~5\,
	datac => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[27]~6_combout\,
	datad => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~1_combout\);

-- Location: LC_X9_Y4_N9
\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[31]~8\ : maxv_lcell
-- Equation(s):
-- \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[31]~8_combout\ = (\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~1_combout\ & 
-- (((!\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6|add_sub_cella\(1))))) # (!\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~1_combout\ & (((\inst57|adder|adder|result_node|cs_buffer\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "50fa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~1_combout\,
	datac => \inst57|adder|adder|result_node|cs_buffer\(6),
	datad => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6|add_sub_cella\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[31]~8_combout\);

-- Location: LC_X9_Y4_N8
\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[37]~10\ : maxv_lcell
-- Equation(s):
-- \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[37]~10_combout\ = (\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~0_combout\ & 
-- (\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7|add_sub_cella[1]~5\ $ (((!\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[31]~8_combout\))))) # 
-- (!\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~0_combout\ & (\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[31]~8_combout\ & 
-- ((\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7|add_sub_cella[1]~5\) # (!\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[32]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cd22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~0_combout\,
	datab => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7|add_sub_cella[1]~5\,
	datac => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[32]~7_combout\,
	datad => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[31]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[37]~10_combout\);

-- Location: LC_X9_Y4_N4
\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~1\ : maxv_lcell
-- Equation(s):
-- \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~1_combout\ = (\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~0_combout\) # 
-- ((\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[32]~7_combout\ & ((\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7|add_sub_cella[1]~5\) # 
-- (\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[31]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffe0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7|add_sub_cella[1]~5\,
	datab => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[31]~8_combout\,
	datac => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[32]~7_combout\,
	datad => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~1_combout\);

-- Location: LC_X2_Y4_N2
\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[36]~9\ : maxv_lcell
-- Equation(s):
-- \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[36]~9_combout\ = ((\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~1_combout\ & 
-- ((!\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7|add_sub_cella\(1)))) # (!\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~1_combout\ & (\inst57|adder|adder|result_node|cs_buffer\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0fcc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst57|adder|adder|result_node|cs_buffer\(5),
	datac => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7|add_sub_cella\(1),
	datad => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[36]~9_combout\);

-- Location: LC_X9_Y4_N6
\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[38]~11\ : maxv_lcell
-- Equation(s):
-- \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[38]~11_combout\ = (\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[32]~7_combout\ & 
-- (!\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7|add_sub_cella[1]~5\ & (!\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[31]~8_combout\))) # 
-- (!\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[32]~7_combout\ & (\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~0_combout\ & 
-- ((\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7|add_sub_cella[1]~5\) # (\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[31]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1e10",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7|add_sub_cella[1]~5\,
	datab => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[31]~8_combout\,
	datac => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[32]~7_combout\,
	datad => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[38]~11_combout\);

-- Location: LC_X1_Y4_N2
\inst82ds|Mux0~0\ : maxv_lcell
-- Equation(s):
-- \inst82ds|Mux0~0_combout\ = (\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[37]~10_combout\ & (!\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[36]~9_combout\ & (\inst57|adder|adder|result_node|cs_buffer\(4) $ 
-- (!\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[38]~11_combout\)))) # (!\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[37]~10_combout\ & (\inst57|adder|adder|result_node|cs_buffer\(4) & 
-- (\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[36]~9_combout\ $ (!\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[38]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4806",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[37]~10_combout\,
	datab => \inst57|adder|adder|result_node|cs_buffer\(4),
	datac => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[36]~9_combout\,
	datad => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[38]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst82ds|Mux0~0_combout\);

-- Location: LC_X1_Y4_N1
\inst82ds|Mux1~0\ : maxv_lcell
-- Equation(s):
-- \inst82ds|Mux1~0_combout\ = (\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[36]~9_combout\ & ((\inst57|adder|adder|result_node|cs_buffer\(4) & ((\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[38]~11_combout\))) 
-- # (!\inst57|adder|adder|result_node|cs_buffer\(4) & (\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[37]~10_combout\)))) # (!\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[36]~9_combout\ & 
-- (\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[37]~10_combout\ & (\inst57|adder|adder|result_node|cs_buffer\(4) $ (\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[38]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e228",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[37]~10_combout\,
	datab => \inst57|adder|adder|result_node|cs_buffer\(4),
	datac => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[36]~9_combout\,
	datad => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[38]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst82ds|Mux1~0_combout\);

-- Location: LC_X1_Y4_N9
\inst82ds|Mux2~0\ : maxv_lcell
-- Equation(s):
-- \inst82ds|Mux2~0_combout\ = (\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[37]~10_combout\ & (\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[38]~11_combout\ & 
-- ((\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[36]~9_combout\) # (!\inst57|adder|adder|result_node|cs_buffer\(4))))) # (!\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[37]~10_combout\ & 
-- (!\inst57|adder|adder|result_node|cs_buffer\(4) & (\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[36]~9_combout\ & !\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[38]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a210",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[37]~10_combout\,
	datab => \inst57|adder|adder|result_node|cs_buffer\(4),
	datac => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[36]~9_combout\,
	datad => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[38]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst82ds|Mux2~0_combout\);

-- Location: LC_X1_Y4_N4
\inst82ds|Mux3~0\ : maxv_lcell
-- Equation(s):
-- \inst82ds|Mux3~0_combout\ = (\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[36]~9_combout\ & (\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[37]~10_combout\ & (\inst57|adder|adder|result_node|cs_buffer\(4)))) # 
-- (!\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[36]~9_combout\ & (!\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[38]~11_combout\ & 
-- (\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[37]~10_combout\ $ (\inst57|adder|adder|result_node|cs_buffer\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8086",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[37]~10_combout\,
	datab => \inst57|adder|adder|result_node|cs_buffer\(4),
	datac => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[36]~9_combout\,
	datad => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[38]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst82ds|Mux3~0_combout\);

-- Location: LC_X1_Y4_N7
\inst82ds|Mux4~0\ : maxv_lcell
-- Equation(s):
-- \inst82ds|Mux4~0_combout\ = (\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[36]~9_combout\ & (((\inst57|adder|adder|result_node|cs_buffer\(4) & !\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[38]~11_combout\)))) 
-- # (!\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[36]~9_combout\ & ((\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[37]~10_combout\ & 
-- ((!\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[38]~11_combout\))) # (!\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[37]~10_combout\ & (\inst57|adder|adder|result_node|cs_buffer\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "04ce",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[37]~10_combout\,
	datab => \inst57|adder|adder|result_node|cs_buffer\(4),
	datac => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[36]~9_combout\,
	datad => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[38]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst82ds|Mux4~0_combout\);

-- Location: LC_X1_Y4_N8
\inst82ds|Mux5~0\ : maxv_lcell
-- Equation(s):
-- \inst82ds|Mux5~0_combout\ = (\inst57|adder|adder|result_node|cs_buffer\(4) & (\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[38]~11_combout\ $ (((\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[36]~9_combout\) # 
-- (!\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[37]~10_combout\))))) # (!\inst57|adder|adder|result_node|cs_buffer\(4) & (!\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[37]~10_combout\ & 
-- (\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[36]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "18d4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[37]~10_combout\,
	datab => \inst57|adder|adder|result_node|cs_buffer\(4),
	datac => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[36]~9_combout\,
	datad => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[38]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst82ds|Mux5~0_combout\);

-- Location: LC_X1_Y4_N6
\inst82ds|Mux6~0\ : maxv_lcell
-- Equation(s):
-- \inst82ds|Mux6~0_combout\ = (\inst57|adder|adder|result_node|cs_buffer\(4) & ((\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[38]~11_combout\) # (\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[37]~10_combout\ $ 
-- (\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[36]~9_combout\)))) # (!\inst57|adder|adder|result_node|cs_buffer\(4) & ((\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[36]~9_combout\) # 
-- (\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[37]~10_combout\ $ (\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[38]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fd7a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[37]~10_combout\,
	datab => \inst57|adder|adder|result_node|cs_buffer\(4),
	datac => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[36]~9_combout\,
	datad => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|StageOut[38]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst82ds|Mux6~0_combout\);

-- Location: LC_X11_Y4_N8
\inst80sa|Mux0~0\ : maxv_lcell
-- Equation(s):
-- \inst80sa|Mux0~0_combout\ = (\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\ & (\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~1_combout\ & 
-- (\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~1_combout\ $ (\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~1_combout\)))) # 
-- (!\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\ & (!\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~1_combout\ & 
-- (\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~1_combout\ $ (\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2190",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\,
	datab => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~1_combout\,
	datac => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~1_combout\,
	datad => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst80sa|Mux0~0_combout\);

-- Location: LC_X11_Y4_N7
\inst80sa|Mux1~0\ : maxv_lcell
-- Equation(s):
-- \inst80sa|Mux1~0_combout\ = (\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\ & ((\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~1_combout\ & 
-- (\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~1_combout\)) # (!\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~1_combout\ & 
-- ((\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~1_combout\))))) # (!\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\ & 
-- (\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~1_combout\ & (\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~1_combout\ $ 
-- (\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9e80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\,
	datab => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~1_combout\,
	datac => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~1_combout\,
	datad => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst80sa|Mux1~0_combout\);

-- Location: LC_X11_Y4_N2
\inst80sa|Mux2~0\ : maxv_lcell
-- Equation(s):
-- \inst80sa|Mux2~0_combout\ = (\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\ & (\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~1_combout\ & 
-- ((\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~1_combout\) # (!\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~1_combout\)))) # 
-- (!\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\ & (\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~1_combout\ & 
-- (!\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~1_combout\ & !\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8a04",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\,
	datab => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~1_combout\,
	datac => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~1_combout\,
	datad => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst80sa|Mux2~0_combout\);

-- Location: LC_X11_Y4_N9
\inst80sa|Mux3~0\ : maxv_lcell
-- Equation(s):
-- \inst80sa|Mux3~0_combout\ = (\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~1_combout\ & (((\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~1_combout\ & 
-- \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~1_combout\)))) # (!\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~1_combout\ & 
-- (!\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\ & (\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~1_combout\ $ 
-- (\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c110",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\,
	datab => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~1_combout\,
	datac => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~1_combout\,
	datad => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst80sa|Mux3~0_combout\);

-- Location: LC_X11_Y4_N4
\inst80sa|Mux4~0\ : maxv_lcell
-- Equation(s):
-- \inst80sa|Mux4~0_combout\ = (\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~1_combout\ & (!\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\ & 
-- (\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~1_combout\))) # (!\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~1_combout\ & 
-- ((\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~1_combout\ & (!\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\)) # 
-- (!\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~1_combout\ & ((\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5170",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\,
	datab => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~1_combout\,
	datac => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~1_combout\,
	datad => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst80sa|Mux4~0_combout\);

-- Location: LC_X11_Y4_N6
\inst80sa|Mux5~0\ : maxv_lcell
-- Equation(s):
-- \inst80sa|Mux5~0_combout\ = (\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~1_combout\ & (\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\ $ 
-- (((\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~1_combout\) # (!\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~1_combout\))))) # 
-- (!\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~1_combout\ & (((\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~1_combout\ & 
-- !\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "605c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\,
	datab => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~1_combout\,
	datac => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~1_combout\,
	datad => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst80sa|Mux5~0_combout\);

-- Location: LC_X11_Y4_N5
\inst80sa|Mux6~0\ : maxv_lcell
-- Equation(s):
-- \inst80sa|Mux6~0_combout\ = (\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~1_combout\ & ((\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\) # 
-- (\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~1_combout\ $ (\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~1_combout\)))) # 
-- (!\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~1_combout\ & ((\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~1_combout\) # 
-- (\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\ $ (\inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bdee",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_4|add_sub_cella[2]~0_combout\,
	datab => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_6|add_sub_cella[2]~1_combout\,
	datac => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_7|add_sub_cella[2]~1_combout\,
	datad => \inst58|LPM_DIVIDE_component|auto_generated|divider|divider|add_sub_5|add_sub_cella[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst80sa|Mux6~0_combout\);

-- Location: PIN_29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Heat~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst44~regout\,
	oe => VCC,
	padio => ww_Heat);

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Mof32~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst17~combout\,
	oe => VCC,
	padio => ww_Mof32);

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\SCL~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RTC~combout\,
	oe => VCC,
	padio => ww_SCL);

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\CS~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst34|fstate.state24~regout\,
	oe => VCC,
	padio => ww_CS);

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\fbc0~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_fbc0);

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\fbc1~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_fbc1);

-- Location: PIN_33,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\fbc3~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_fbc3);

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\fbc4~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_fbc4);

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\fbc2~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_fbc2);

-- Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Din~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst34|ALT_INV_WideOr0\,
	oe => VCC,
	padio => ww_Din);

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\FreezeReg~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst34|freezeParalell\,
	oe => VCC,
	padio => ww_FreezeReg);

-- Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Cool~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst45~regout\,
	oe => VCC,
	padio => ww_Cool);

-- Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\sevsegSign~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst57|adder|adder|cin_node~0_combout\,
	oe => VCC,
	padio => ww_sevsegSign);

-- Location: PIN_83,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\externalTemp[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst38|inst1~regout\,
	oe => VCC,
	padio => ww_externalTemp(12));

-- Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\externalTemp[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst38|inst2~regout\,
	oe => VCC,
	padio => ww_externalTemp(11));

-- Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\externalTemp[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst38|inst3~regout\,
	oe => VCC,
	padio => ww_externalTemp(10));

-- Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\externalTemp[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst38|inst4~regout\,
	oe => VCC,
	padio => ww_externalTemp(9));

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\externalTemp[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst38|inst5~regout\,
	oe => VCC,
	padio => ww_externalTemp(8));

-- Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\externalTemp[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst38|inst6~regout\,
	oe => VCC,
	padio => ww_externalTemp(7));

-- Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\externalTemp[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst38|inst7~regout\,
	oe => VCC,
	padio => ww_externalTemp(6));

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\externalTemp[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst38|inst8~regout\,
	oe => VCC,
	padio => ww_externalTemp(5));

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\externalTemp[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst38|inst9~regout\,
	oe => VCC,
	padio => ww_externalTemp(4));

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\externalTemp[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst38|inst10~regout\,
	oe => VCC,
	padio => ww_externalTemp(3));

-- Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\externalTemp[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst38|inst11~regout\,
	oe => VCC,
	padio => ww_externalTemp(2));

-- Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\externalTemp[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst38|inst12~regout\,
	oe => VCC,
	padio => ww_externalTemp(1));

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\externalTemp[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst38|inst13~regout\,
	oe => VCC,
	padio => ww_externalTemp(0));

-- Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\frac[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_frac(6));

-- Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\frac[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst83v4|Mux1~0_combout\,
	oe => VCC,
	padio => ww_frac(5));

-- Location: PIN_73,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\frac[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst83v4|Mux2~0_combout\,
	oe => VCC,
	padio => ww_frac(4));

-- Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\frac[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst83v4|Mux3~0_combout\,
	oe => VCC,
	padio => ww_frac(3));

-- Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\frac[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst57|adder|adder|result_node|ALT_INV_cs_buffer\(3),
	oe => VCC,
	padio => ww_frac(2));

-- Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\frac[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst57|adder|adder|result_node|ALT_INV_cs_buffer\(2),
	oe => VCC,
	padio => ww_frac(1));

-- Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\frac[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst83v4|Mux6~0_combout\,
	oe => VCC,
	padio => ww_frac(0));

-- Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\LS[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst82ds|ALT_INV_Mux0~0_combout\,
	oe => VCC,
	padio => ww_LS(6));

-- Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\LS[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst82ds|ALT_INV_Mux1~0_combout\,
	oe => VCC,
	padio => ww_LS(5));

-- Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\LS[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst82ds|ALT_INV_Mux2~0_combout\,
	oe => VCC,
	padio => ww_LS(4));

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\LS[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst82ds|ALT_INV_Mux3~0_combout\,
	oe => VCC,
	padio => ww_LS(3));

-- Location: PIN_19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\LS[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst82ds|ALT_INV_Mux4~0_combout\,
	oe => VCC,
	padio => ww_LS(2));

-- Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\LS[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst82ds|ALT_INV_Mux5~0_combout\,
	oe => VCC,
	padio => ww_LS(1));

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\LS[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst82ds|Mux6~0_combout\,
	oe => VCC,
	padio => ww_LS(0));

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\MS[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst80sa|ALT_INV_Mux0~0_combout\,
	oe => VCC,
	padio => ww_MS(6));

-- Location: PIN_66,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\MS[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst80sa|ALT_INV_Mux1~0_combout\,
	oe => VCC,
	padio => ww_MS(5));

-- Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\MS[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst80sa|ALT_INV_Mux2~0_combout\,
	oe => VCC,
	padio => ww_MS(4));

-- Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\MS[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst80sa|ALT_INV_Mux3~0_combout\,
	oe => VCC,
	padio => ww_MS(3));

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\MS[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst80sa|ALT_INV_Mux4~0_combout\,
	oe => VCC,
	padio => ww_MS(2));

-- Location: PIN_64,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\MS[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst80sa|ALT_INV_Mux5~0_combout\,
	oe => VCC,
	padio => ww_MS(1));

-- Location: PIN_68,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\MS[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst80sa|Mux6~0_combout\,
	oe => VCC,
	padio => ww_MS(0));

-- Location: PIN_56,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\fbctestclk~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_fbctestclk);

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\fbctestrestart~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_fbctestrestart);
END structure;


