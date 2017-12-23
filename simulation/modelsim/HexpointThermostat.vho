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

-- DATE "12/23/2017 14:47:31"

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
	Mof32 : OUT std_logic;
	Dout : IN std_logic;
	Cool : OUT std_logic;
	passiveNOTactive : IN std_logic;
	NightNOTday : IN std_logic;
	SCL : OUT std_logic;
	CS : OUT std_logic;
	fbc0 : OUT std_logic;
	fbc1 : OUT std_logic;
	fbc3 : OUT std_logic;
	fbc4 : OUT std_logic;
	fbc2 : OUT std_logic;
	Din : OUT std_logic;
	FreezeReg : OUT std_logic;
	tempRead : OUT std_logic_vector(12 DOWNTO 0);
	hiTrueSetDisp : IN std_logic;
	controlsActive : IN std_logic;
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
SIGNAL ww_passiveNOTactive19 : std_logic;
SIGNAL ww_NightNOTday18 : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_Inc : std_logic;
SIGNAL ww_Dec : std_logic;
SIGNAL ww_Initialize : std_logic;
SIGNAL ww_Mof32 : std_logic;
SIGNAL ww_Dout : std_logic;
SIGNAL ww_Cool : std_logic;
SIGNAL ww_passiveNOTactive : std_logic;
SIGNAL ww_NightNOTday : std_logic;
SIGNAL ww_SCL : std_logic;
SIGNAL ww_CS : std_logic;
SIGNAL ww_fbc0 : std_logic;
SIGNAL ww_fbc1 : std_logic;
SIGNAL ww_fbc3 : std_logic;
SIGNAL ww_fbc4 : std_logic;
SIGNAL ww_fbc2 : std_logic;
SIGNAL ww_Din : std_logic;
SIGNAL ww_FreezeReg : std_logic;
SIGNAL ww_tempRead : std_logic_vector(12 DOWNTO 0);
SIGNAL ww_hiTrueSetDisp : std_logic;
SIGNAL ww_controlsActive : std_logic;
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
SIGNAL \CLK~combout\ : std_logic;
SIGNAL \passiveNOTactive19~combout\ : std_logic;
SIGNAL \Inc~combout\ : std_logic;
SIGNAL \Dec~combout\ : std_logic;
SIGNAL \Initialize~combout\ : std_logic;
SIGNAL \inst11|inst13~regout\ : std_logic;
SIGNAL \inst10|inst13~regout\ : std_logic;
SIGNAL \inst9|inst13~regout\ : std_logic;
SIGNAL \NightNOTday18~combout\ : std_logic;
SIGNAL \inst5|$00000|auto_generated|result_node[0]~24_combout\ : std_logic;
SIGNAL \inst5|$00000|auto_generated|result_node[0]~25_combout\ : std_logic;
SIGNAL \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUT\ : std_logic;
SIGNAL \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUTCOUT1_1\ : std_logic;
SIGNAL \inst11|inst12~regout\ : std_logic;
SIGNAL \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUT\ : std_logic;
SIGNAL \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUTCOUT1_2\ : std_logic;
SIGNAL \inst11|inst11~regout\ : std_logic;
SIGNAL \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUT\ : std_logic;
SIGNAL \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUTCOUT1_1\ : std_logic;
SIGNAL \inst10|inst12~regout\ : std_logic;
SIGNAL \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUT\ : std_logic;
SIGNAL \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUTCOUT1_2\ : std_logic;
SIGNAL \inst10|inst11~regout\ : std_logic;
SIGNAL \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUT\ : std_logic;
SIGNAL \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[0]~COUTCOUT1_1\ : std_logic;
SIGNAL \inst9|inst12~regout\ : std_logic;
SIGNAL \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUT\ : std_logic;
SIGNAL \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[1]~COUTCOUT1_2\ : std_logic;
SIGNAL \inst9|inst11~regout\ : std_logic;
SIGNAL \inst5|$00000|auto_generated|result_node[2]~22_combout\ : std_logic;
SIGNAL \inst5|$00000|auto_generated|result_node[2]~23_combout\ : std_logic;
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
SIGNAL \inst34|fstate.state5~regout\ : std_logic;
SIGNAL \inst34|fstate.state2~regout\ : std_logic;
SIGNAL \inst34|fstate.state3~regout\ : std_logic;
SIGNAL \inst34|fstate.state4~regout\ : std_logic;
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
SIGNAL \inst38|inst12~regout\ : std_logic;
SIGNAL \inst5|$00000|auto_generated|result_node[1]~20_combout\ : std_logic;
SIGNAL \inst5|$00000|auto_generated|result_node[1]~21_combout\ : std_logic;
SIGNAL \inst24|LPM_COMPARE_component|auto_generated|aeb_int~6\ : std_logic;
SIGNAL \inst9|inst16~combout\ : std_logic;
SIGNAL \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUT\ : std_logic;
SIGNAL \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUTCOUT1_3\ : std_logic;
SIGNAL \inst11|inst10~regout\ : std_logic;
SIGNAL \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUT\ : std_logic;
SIGNAL \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUTCOUT1_4\ : std_logic;
SIGNAL \inst11|inst9~regout\ : std_logic;
SIGNAL \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUT\ : std_logic;
SIGNAL \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUTCOUT1_3\ : std_logic;
SIGNAL \inst9|inst10~regout\ : std_logic;
SIGNAL \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUT\ : std_logic;
SIGNAL \inst9|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUTCOUT1_4\ : std_logic;
SIGNAL \inst9|inst9~regout\ : std_logic;
SIGNAL \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUT\ : std_logic;
SIGNAL \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[2]~COUTCOUT1_3\ : std_logic;
SIGNAL \inst10|inst10~regout\ : std_logic;
SIGNAL \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUT\ : std_logic;
SIGNAL \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[3]~COUTCOUT1_4\ : std_logic;
SIGNAL \inst10|inst9~regout\ : std_logic;
SIGNAL \inst5|$00000|auto_generated|result_node[4]~18_combout\ : std_logic;
SIGNAL \inst5|$00000|auto_generated|result_node[4]~19_combout\ : std_logic;
SIGNAL \inst38|inst10~regout\ : std_logic;
SIGNAL \inst5|$00000|auto_generated|result_node[3]~16_combout\ : std_logic;
SIGNAL \inst5|$00000|auto_generated|result_node[3]~17_combout\ : std_logic;
SIGNAL \inst24|LPM_COMPARE_component|auto_generated|aeb_int~5\ : std_logic;
SIGNAL \inst24|LPM_COMPARE_component|auto_generated|aeb_int~7\ : std_logic;
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
SIGNAL \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUT\ : std_logic;
SIGNAL \inst10|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[11]~COUTCOUT1_10\ : std_logic;
SIGNAL \inst10|inst1~regout\ : std_logic;
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
SIGNAL \inst5|$00000|auto_generated|result_node[12]~2_combout\ : std_logic;
SIGNAL \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[4]~COUT\ : std_logic;
SIGNAL \inst11|inst8~regout\ : std_logic;
SIGNAL \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUT\ : std_logic;
SIGNAL \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[5]~COUTCOUT1_5\ : std_logic;
SIGNAL \inst11|inst7~regout\ : std_logic;
SIGNAL \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUT\ : std_logic;
SIGNAL \inst11|inst|LPM_ADD_SUB_component|stratix_adder|add_sub_cell[6]~COUTCOUT1_6\ : std_logic;
SIGNAL \inst11|inst6~regout\ : std_logic;
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
SIGNAL \inst5|$00000|auto_generated|result_node[12]~3_combout\ : std_logic;
SIGNAL \inst5|$00000|auto_generated|result_node[11]~0_combout\ : std_logic;
SIGNAL \inst5|$00000|auto_generated|result_node[11]~1_combout\ : std_logic;
SIGNAL \inst38|inst2~regout\ : std_logic;
SIGNAL \inst38|inst1~regout\ : std_logic;
SIGNAL \inst5|$00000|auto_generated|result_node[10]~6_combout\ : std_logic;
SIGNAL \inst5|$00000|auto_generated|result_node[10]~7_combout\ : std_logic;
SIGNAL \inst5|$00000|auto_generated|result_node[9]~4_combout\ : std_logic;
SIGNAL \inst5|$00000|auto_generated|result_node[9]~5_combout\ : std_logic;
SIGNAL \inst38|inst4~regout\ : std_logic;
SIGNAL \inst38|inst3~regout\ : std_logic;
SIGNAL \inst38|inst8~regout\ : std_logic;
SIGNAL \inst5|$00000|auto_generated|result_node[5]~12_combout\ : std_logic;
SIGNAL \inst5|$00000|auto_generated|result_node[5]~13_combout\ : std_logic;
SIGNAL \inst38|inst13~regout\ : std_logic;
SIGNAL \inst24|LPM_COMPARE_component|auto_generated|op_1~62_cout\ : std_logic;
SIGNAL \inst38|inst9~regout\ : std_logic;
SIGNAL \inst38|inst11~regout\ : std_logic;
SIGNAL \inst24|LPM_COMPARE_component|auto_generated|op_1~57_cout0\ : std_logic;
SIGNAL \inst24|LPM_COMPARE_component|auto_generated|op_1~57COUT1_66\ : std_logic;
SIGNAL \inst24|LPM_COMPARE_component|auto_generated|op_1~52_cout0\ : std_logic;
SIGNAL \inst24|LPM_COMPARE_component|auto_generated|op_1~52COUT1_67\ : std_logic;
SIGNAL \inst24|LPM_COMPARE_component|auto_generated|op_1~47_cout0\ : std_logic;
SIGNAL \inst24|LPM_COMPARE_component|auto_generated|op_1~47COUT1_68\ : std_logic;
SIGNAL \inst24|LPM_COMPARE_component|auto_generated|op_1~42_cout0\ : std_logic;
SIGNAL \inst24|LPM_COMPARE_component|auto_generated|op_1~42COUT1_69\ : std_logic;
SIGNAL \inst24|LPM_COMPARE_component|auto_generated|op_1~37_cout\ : std_logic;
SIGNAL \inst5|$00000|auto_generated|result_node[8]~10_combout\ : std_logic;
SIGNAL \inst5|$00000|auto_generated|result_node[8]~11_combout\ : std_logic;
SIGNAL \inst38|inst6~regout\ : std_logic;
SIGNAL \inst5|$00000|auto_generated|result_node[7]~8_combout\ : std_logic;
SIGNAL \inst5|$00000|auto_generated|result_node[7]~9_combout\ : std_logic;
SIGNAL \inst38|inst5~regout\ : std_logic;
SIGNAL \inst5|$00000|auto_generated|result_node[6]~14_combout\ : std_logic;
SIGNAL \inst5|$00000|auto_generated|result_node[6]~15_combout\ : std_logic;
SIGNAL \inst38|inst7~regout\ : std_logic;
SIGNAL \inst24|LPM_COMPARE_component|auto_generated|op_1~32_cout0\ : std_logic;
SIGNAL \inst24|LPM_COMPARE_component|auto_generated|op_1~32COUT1_70\ : std_logic;
SIGNAL \inst24|LPM_COMPARE_component|auto_generated|op_1~27_cout0\ : std_logic;
SIGNAL \inst24|LPM_COMPARE_component|auto_generated|op_1~27COUT1_71\ : std_logic;
SIGNAL \inst24|LPM_COMPARE_component|auto_generated|op_1~22_cout0\ : std_logic;
SIGNAL \inst24|LPM_COMPARE_component|auto_generated|op_1~22COUT1_72\ : std_logic;
SIGNAL \inst24|LPM_COMPARE_component|auto_generated|op_1~17_cout0\ : std_logic;
SIGNAL \inst24|LPM_COMPARE_component|auto_generated|op_1~17COUT1_73\ : std_logic;
SIGNAL \inst24|LPM_COMPARE_component|auto_generated|op_1~12_cout\ : std_logic;
SIGNAL \inst24|LPM_COMPARE_component|auto_generated|op_1~7_cout0\ : std_logic;
SIGNAL \inst24|LPM_COMPARE_component|auto_generated|op_1~7COUT1_74\ : std_logic;
SIGNAL \inst24|LPM_COMPARE_component|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \inst24|LPM_COMPARE_component|auto_generated|aeb_int~1\ : std_logic;
SIGNAL \inst24|LPM_COMPARE_component|auto_generated|aeb_int~3\ : std_logic;
SIGNAL \inst24|LPM_COMPARE_component|auto_generated|aeb_int~2\ : std_logic;
SIGNAL \inst24|LPM_COMPARE_component|auto_generated|aeb_int~0\ : std_logic;
SIGNAL \inst24|LPM_COMPARE_component|auto_generated|aeb_int~4_combout\ : std_logic;
SIGNAL \inst24|LPM_COMPARE_component|auto_generated|agb~combout\ : std_logic;
SIGNAL \passiveNOTactive~combout\ : std_logic;
SIGNAL \NightNOTday~combout\ : std_logic;
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
SIGNAL \inst2|$00000|auto_generated|result_node[12]~1_combout\ : std_logic;
SIGNAL \inst2|$00000|auto_generated|result_node[10]~4_combout\ : std_logic;
SIGNAL \inst2|$00000|auto_generated|result_node[10]~5_combout\ : std_logic;
SIGNAL \inst2|$00000|auto_generated|result_node[5]~14_combout\ : std_logic;
SIGNAL \inst2|$00000|auto_generated|result_node[5]~15_combout\ : std_logic;
SIGNAL \inst2|$00000|auto_generated|result_node[0]~24_combout\ : std_logic;
SIGNAL \inst2|$00000|auto_generated|result_node[0]~25_combout\ : std_logic;
SIGNAL \inst23|LPM_COMPARE_component|auto_generated|op_1~62_cout\ : std_logic;
SIGNAL \inst2|$00000|auto_generated|result_node[4]~16_combout\ : std_logic;
SIGNAL \inst2|$00000|auto_generated|result_node[4]~17_combout\ : std_logic;
SIGNAL \inst2|$00000|auto_generated|result_node[3]~18_combout\ : std_logic;
SIGNAL \inst2|$00000|auto_generated|result_node[3]~19_combout\ : std_logic;
SIGNAL \inst2|$00000|auto_generated|result_node[2]~20_combout\ : std_logic;
SIGNAL \inst2|$00000|auto_generated|result_node[2]~21_combout\ : std_logic;
SIGNAL \inst2|$00000|auto_generated|result_node[1]~22_combout\ : std_logic;
SIGNAL \inst2|$00000|auto_generated|result_node[1]~23_combout\ : std_logic;
SIGNAL \inst23|LPM_COMPARE_component|auto_generated|op_1~57_cout0\ : std_logic;
SIGNAL \inst23|LPM_COMPARE_component|auto_generated|op_1~57COUT1_66\ : std_logic;
SIGNAL \inst23|LPM_COMPARE_component|auto_generated|op_1~52_cout0\ : std_logic;
SIGNAL \inst23|LPM_COMPARE_component|auto_generated|op_1~52COUT1_67\ : std_logic;
SIGNAL \inst23|LPM_COMPARE_component|auto_generated|op_1~47_cout0\ : std_logic;
SIGNAL \inst23|LPM_COMPARE_component|auto_generated|op_1~47COUT1_68\ : std_logic;
SIGNAL \inst23|LPM_COMPARE_component|auto_generated|op_1~42_cout0\ : std_logic;
SIGNAL \inst23|LPM_COMPARE_component|auto_generated|op_1~42COUT1_69\ : std_logic;
SIGNAL \inst23|LPM_COMPARE_component|auto_generated|op_1~37_cout\ : std_logic;
SIGNAL \inst2|$00000|auto_generated|result_node[9]~6_combout\ : std_logic;
SIGNAL \inst2|$00000|auto_generated|result_node[9]~7_combout\ : std_logic;
SIGNAL \inst2|$00000|auto_generated|result_node[8]~8_combout\ : std_logic;
SIGNAL \inst2|$00000|auto_generated|result_node[8]~9_combout\ : std_logic;
SIGNAL \inst2|$00000|auto_generated|result_node[7]~10_combout\ : std_logic;
SIGNAL \inst2|$00000|auto_generated|result_node[7]~11_combout\ : std_logic;
SIGNAL \inst2|$00000|auto_generated|result_node[6]~12_combout\ : std_logic;
SIGNAL \inst2|$00000|auto_generated|result_node[6]~13_combout\ : std_logic;
SIGNAL \inst23|LPM_COMPARE_component|auto_generated|op_1~32_cout0\ : std_logic;
SIGNAL \inst23|LPM_COMPARE_component|auto_generated|op_1~32COUT1_70\ : std_logic;
SIGNAL \inst23|LPM_COMPARE_component|auto_generated|op_1~27_cout0\ : std_logic;
SIGNAL \inst23|LPM_COMPARE_component|auto_generated|op_1~27COUT1_71\ : std_logic;
SIGNAL \inst23|LPM_COMPARE_component|auto_generated|op_1~22_cout0\ : std_logic;
SIGNAL \inst23|LPM_COMPARE_component|auto_generated|op_1~22COUT1_72\ : std_logic;
SIGNAL \inst23|LPM_COMPARE_component|auto_generated|op_1~17_cout0\ : std_logic;
SIGNAL \inst23|LPM_COMPARE_component|auto_generated|op_1~17COUT1_73\ : std_logic;
SIGNAL \inst23|LPM_COMPARE_component|auto_generated|op_1~12_cout\ : std_logic;
SIGNAL \inst2|$00000|auto_generated|result_node[11]~2_combout\ : std_logic;
SIGNAL \inst2|$00000|auto_generated|result_node[11]~3_combout\ : std_logic;
SIGNAL \inst23|LPM_COMPARE_component|auto_generated|op_1~7_cout0\ : std_logic;
SIGNAL \inst23|LPM_COMPARE_component|auto_generated|op_1~7COUT1_74\ : std_logic;
SIGNAL \inst23|LPM_COMPARE_component|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \inst34|WideOr0\ : std_logic;
SIGNAL \inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst6|LPM_SHIFTREG_component|dffs\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \inst34|ALT_INV_freezeParalell\ : std_logic;
SIGNAL \inst34|ALT_INV_WideOr0\ : std_logic;
SIGNAL \inst24|LPM_COMPARE_component|auto_generated|ALT_INV_agb~combout\ : std_logic;

BEGIN

Heat <= ww_Heat;
ww_passiveNOTactive19 <= passiveNOTactive19;
ww_NightNOTday18 <= NightNOTday18;
ww_CLK <= CLK;
ww_Inc <= Inc;
ww_Dec <= Dec;
ww_Initialize <= Initialize;
Mof32 <= ww_Mof32;
ww_Dout <= Dout;
Cool <= ww_Cool;
ww_passiveNOTactive <= passiveNOTactive;
ww_NightNOTday <= NightNOTday;
SCL <= ww_SCL;
CS <= ww_CS;
fbc0 <= ww_fbc0;
fbc1 <= ww_fbc1;
fbc3 <= ww_fbc3;
fbc4 <= ww_fbc4;
fbc2 <= ww_fbc2;
Din <= ww_Din;
FreezeReg <= ww_FreezeReg;
tempRead <= ww_tempRead;
ww_hiTrueSetDisp <= hiTrueSetDisp;
ww_controlsActive <= controlsActive;
ww_fbctestclk <= fbctestclk;
ww_fbctestrestart <= fbctestrestart;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst34|ALT_INV_freezeParalell\ <= NOT \inst34|freezeParalell\;
\inst34|ALT_INV_WideOr0\ <= NOT \inst34|WideOr0\;
\inst24|LPM_COMPARE_component|auto_generated|ALT_INV_agb~combout\ <= NOT \inst24|LPM_COMPARE_component|auto_generated|agb~combout\;

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

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\passiveNOTactive19~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_passiveNOTactive19,
	combout => \passiveNOTactive19~combout\);

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Inc~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Inc,
	combout => \Inc~combout\);

-- Location: LC_X7_Y6_N0
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

-- Location: PIN_83,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Dec~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Dec,
	combout => \Dec~combout\);

-- Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Initialize~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Initialize,
	combout => \Initialize~combout\);

-- Location: LC_X6_Y6_N3
\inst11|inst13\ : maxv_lcell
-- Equation(s):
-- \inst11|inst13~regout\ = DFFEAS((\Inc~combout\ & (((\inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(0))))) # (!\Inc~combout\ & ((\Dec~combout\ & ((\inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(0)))) # (!\Dec~combout\ & 
-- (\inst11|inst13~regout\)))), GLOBAL(\CLK~combout\), VCC, , , , , \Initialize~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0e2",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \inst11|inst13~regout\,
	datab => \Inc~combout\,
	datac => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(0),
	datad => \Dec~combout\,
	aclr => GND,
	sclr => \Initialize~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|inst13~regout\);

-- Location: LC_X9_Y4_N0
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

-- Location: LC_X9_Y6_N6
\inst10|inst13\ : maxv_lcell
-- Equation(s):
-- \inst10|inst13~regout\ = DFFEAS((\Inc~combout\ & (((\inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(0))))) # (!\Inc~combout\ & ((\Dec~combout\ & ((\inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(0)))) # (!\Dec~combout\ & 
-- (\inst10|inst13~regout\)))), GLOBAL(\CLK~combout\), VCC, , , , , \Initialize~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0e2",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \inst10|inst13~regout\,
	datab => \Inc~combout\,
	datac => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(0),
	datad => \Dec~combout\,
	aclr => GND,
	sclr => \Initialize~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|inst13~regout\);

-- Location: LC_X9_Y5_N0
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

-- Location: LC_X8_Y5_N3
\inst9|inst13\ : maxv_lcell
-- Equation(s):
-- \inst9|inst13~regout\ = DFFEAS((\Dec~combout\ & (((\inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(0))))) # (!\Dec~combout\ & ((\Inc~combout\ & ((\inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(0)))) # (!\Inc~combout\ & 
-- (\inst9|inst13~regout\)))), GLOBAL(\CLK~combout\), VCC, , , , , \Initialize~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0e2",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \inst9|inst13~regout\,
	datab => \Dec~combout\,
	datac => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(0),
	datad => \Inc~combout\,
	aclr => GND,
	sclr => \Initialize~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst13~regout\);

-- Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\NightNOTday18~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_NightNOTday18,
	combout => \NightNOTday18~combout\);

-- Location: LC_X9_Y6_N5
\inst5|$00000|auto_generated|result_node[0]~24\ : maxv_lcell
-- Equation(s):
-- \inst5|$00000|auto_generated|result_node[0]~24_combout\ = ((\NightNOTday18~combout\ & (\inst10|inst13~regout\)) # (!\NightNOTday18~combout\ & ((\inst9|inst13~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst13~regout\,
	datac => \inst9|inst13~regout\,
	datad => \NightNOTday18~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst5|$00000|auto_generated|result_node[0]~24_combout\);

-- Location: LC_X8_Y6_N4
\inst5|$00000|auto_generated|result_node[0]~25\ : maxv_lcell
-- Equation(s):
-- \inst5|$00000|auto_generated|result_node[0]~25_combout\ = ((\passiveNOTactive19~combout\ & (\inst11|inst13~regout\)) # (!\passiveNOTactive19~combout\ & ((\inst5|$00000|auto_generated|result_node[0]~24_combout\))))

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
	datab => \passiveNOTactive19~combout\,
	datac => \inst11|inst13~regout\,
	datad => \inst5|$00000|auto_generated|result_node[0]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst5|$00000|auto_generated|result_node[0]~25_combout\);

-- Location: LC_X7_Y6_N1
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

-- Location: LC_X9_Y6_N7
\inst11|inst12\ : maxv_lcell
-- Equation(s):
-- \inst11|inst12~regout\ = DFFEAS((\Dec~combout\ & (((\inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(1))))) # (!\Dec~combout\ & ((\Inc~combout\ & ((\inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(1)))) # (!\Inc~combout\ & 
-- (\inst11|inst12~regout\)))), GLOBAL(\CLK~combout\), VCC, , , , , \Initialize~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe10",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Dec~combout\,
	datab => \Inc~combout\,
	datac => \inst11|inst12~regout\,
	datad => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(1),
	aclr => GND,
	sclr => \Initialize~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|inst12~regout\);

-- Location: LC_X7_Y6_N2
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

-- Location: LC_X6_Y6_N7
\inst11|inst11\ : maxv_lcell
-- Equation(s):
-- \inst11|inst11~regout\ = DFFEAS((\Dec~combout\ & (((\inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(2))))) # (!\Dec~combout\ & ((\Inc~combout\ & ((\inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(2)))) # (!\Inc~combout\ & 
-- (\inst11|inst11~regout\)))), GLOBAL(\CLK~combout\), VCC, , , , , \Initialize~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe02",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \inst11|inst11~regout\,
	datab => \Dec~combout\,
	datac => \Inc~combout\,
	datad => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(2),
	aclr => GND,
	sclr => \Initialize~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|inst11~regout\);

-- Location: LC_X9_Y4_N1
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

-- Location: LC_X8_Y4_N3
\inst10|inst12\ : maxv_lcell
-- Equation(s):
-- \inst10|inst12~regout\ = DFFEAS((\Dec~combout\ & (((\inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(1))))) # (!\Dec~combout\ & ((\Inc~combout\ & ((\inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(1)))) # (!\Inc~combout\ & 
-- (\inst10|inst12~regout\)))), GLOBAL(\CLK~combout\), VCC, , , , , \Initialize~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe02",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \inst10|inst12~regout\,
	datab => \Dec~combout\,
	datac => \Inc~combout\,
	datad => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(1),
	aclr => GND,
	sclr => \Initialize~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|inst12~regout\);

-- Location: LC_X9_Y4_N2
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

-- Location: LC_X8_Y4_N1
\inst10|inst11\ : maxv_lcell
-- Equation(s):
-- \inst10|inst11~regout\ = DFFEAS((\Dec~combout\ & (((\inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(2))))) # (!\Dec~combout\ & ((\Inc~combout\ & (\inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(2))) # (!\Inc~combout\ & 
-- ((\inst10|inst11~regout\))))), GLOBAL(\CLK~combout\), VCC, , , , , \Initialize~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f1e0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Dec~combout\,
	datab => \Inc~combout\,
	datac => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(2),
	datad => \inst10|inst11~regout\,
	aclr => GND,
	sclr => \Initialize~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|inst11~regout\);

-- Location: LC_X9_Y5_N1
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

-- Location: LC_X8_Y5_N2
\inst9|inst12\ : maxv_lcell
-- Equation(s):
-- \inst9|inst12~regout\ = DFFEAS((\Inc~combout\ & (((\inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(1))))) # (!\Inc~combout\ & ((\Dec~combout\ & ((\inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(1)))) # (!\Dec~combout\ & 
-- (\inst9|inst12~regout\)))), GLOBAL(\CLK~combout\), VCC, , , , , \Initialize~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe10",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Inc~combout\,
	datab => \Dec~combout\,
	datac => \inst9|inst12~regout\,
	datad => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(1),
	aclr => GND,
	sclr => \Initialize~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst12~regout\);

-- Location: LC_X9_Y5_N2
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

-- Location: LC_X8_Y5_N4
\inst9|inst11\ : maxv_lcell
-- Equation(s):
-- \inst9|inst11~regout\ = DFFEAS((\Inc~combout\ & (((\inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(2))))) # (!\Inc~combout\ & ((\Dec~combout\ & (\inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(2))) # (!\Dec~combout\ & 
-- ((\inst9|inst11~regout\))))), GLOBAL(\CLK~combout\), VCC, , , , , \Initialize~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f1e0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Inc~combout\,
	datab => \Dec~combout\,
	datac => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(2),
	datad => \inst9|inst11~regout\,
	aclr => GND,
	sclr => \Initialize~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst11~regout\);

-- Location: LC_X7_Y5_N2
\inst5|$00000|auto_generated|result_node[2]~22\ : maxv_lcell
-- Equation(s):
-- \inst5|$00000|auto_generated|result_node[2]~22_combout\ = ((\NightNOTday18~combout\ & (\inst10|inst11~regout\)) # (!\NightNOTday18~combout\ & ((\inst9|inst11~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aacc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst11~regout\,
	datab => \inst9|inst11~regout\,
	datad => \NightNOTday18~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst5|$00000|auto_generated|result_node[2]~22_combout\);

-- Location: LC_X7_Y5_N4
\inst5|$00000|auto_generated|result_node[2]~23\ : maxv_lcell
-- Equation(s):
-- \inst5|$00000|auto_generated|result_node[2]~23_combout\ = ((\passiveNOTactive19~combout\ & (\inst11|inst11~regout\)) # (!\passiveNOTactive19~combout\ & ((\inst5|$00000|auto_generated|result_node[2]~22_combout\))))

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
	datab => \inst11|inst11~regout\,
	datac => \passiveNOTactive19~combout\,
	datad => \inst5|$00000|auto_generated|result_node[2]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst5|$00000|auto_generated|result_node[2]~23_combout\);

-- Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Dout~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Dout,
	combout => \Dout~combout\);

-- Location: LC_X12_Y3_N6
\inst15|inst\ : maxv_lcell
-- Equation(s):
-- \inst15|inst~regout\ = DFFEAS((((!\inst15|inst~regout\))), GLOBAL(\CLK~combout\), !GLOBAL(\Initialize~combout\), , , , , , )

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
	clk => \CLK~combout\,
	datac => \inst15|inst~regout\,
	aclr => \Initialize~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst15|inst~regout\);

-- Location: LC_X10_Y3_N5
\inst15|inst1\ : maxv_lcell
-- Equation(s):
-- \inst15|inst1~regout\ = DFFEAS((((!\inst15|inst1~regout\))), \inst15|inst~regout\, !GLOBAL(\Initialize~combout\), , , , , , )

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
	aclr => \Initialize~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst15|inst1~regout\);

-- Location: LC_X10_Y3_N8
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

-- Location: LC_X11_Y3_N7
\inst15|inst3\ : maxv_lcell
-- Equation(s):
-- \inst15|inst3~regout\ = DFFEAS((((!\inst15|inst3~regout\))), \inst15|inst2~regout\, !GLOBAL(\Initialize~combout\), , , , , , )

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
	clk => \inst15|inst2~regout\,
	datac => \inst15|inst3~regout\,
	aclr => \Initialize~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst15|inst3~regout\);

-- Location: LC_X11_Y3_N9
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

-- Location: LC_X11_Y3_N8
\inst17~0\ : maxv_lcell
-- Equation(s):
-- \inst17~0_combout\ = (((!\inst15|inst3~regout\ & !\inst15|inst4~regout\)))

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
	datac => \inst15|inst3~regout\,
	datad => \inst15|inst4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst17~0_combout\);

-- Location: LC_X10_Y3_N9
inst17 : maxv_lcell
-- Equation(s):
-- \inst17~combout\ = (!\inst15|inst~regout\ & (\inst17~0_combout\ & (!\inst15|inst1~regout\ & !\inst15|inst2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0004",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst15|inst~regout\,
	datab => \inst17~0_combout\,
	datac => \inst15|inst1~regout\,
	datad => \inst15|inst2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst17~combout\);

-- Location: LC_X11_Y2_N8
\inst34|fstate.Origin\ : maxv_lcell
-- Equation(s):
-- \inst34|fstate.Origin~regout\ = DFFEAS(VCC, GLOBAL(\CLK~combout\), !GLOBAL(\inst17~combout\), , , , , , )

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
	clk => \CLK~combout\,
	aclr => \inst17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst34|fstate.Origin~regout\);

-- Location: LC_X11_Y2_N9
\inst34|fstate.state1\ : maxv_lcell
-- Equation(s):
-- \inst34|fstate.state1~regout\ = DFFEAS((((!\inst34|fstate.Origin~regout\))), GLOBAL(\CLK~combout\), !GLOBAL(\inst17~combout\), , , , , , )

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
	datad => \inst34|fstate.Origin~regout\,
	aclr => \inst17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst34|fstate.state1~regout\);

-- Location: LC_X11_Y2_N3
\inst34|fstate.state5\ : maxv_lcell
-- Equation(s):
-- \inst34|fstate.state5~regout\ = DFFEAS(GND, GLOBAL(\CLK~combout\), !GLOBAL(\inst17~combout\), , , \inst34|fstate.state4~regout\, , , VCC)

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
	clk => \CLK~combout\,
	datac => \inst34|fstate.state4~regout\,
	aclr => \inst17~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst34|fstate.state5~regout\);

-- Location: LC_X11_Y2_N7
\inst34|fstate.state2\ : maxv_lcell
-- Equation(s):
-- \inst34|WideOr0~0\ = ((\inst34|fstate.state4~regout\) # ((G1_fstate.state2) # (\inst34|fstate.state5~regout\))) # (!\inst34|fstate.Origin~regout\)
-- \inst34|fstate.state2~regout\ = DFFEAS(\inst34|WideOr0~0\, GLOBAL(\CLK~combout\), !GLOBAL(\inst17~combout\), , , \inst34|fstate.state1~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffd",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \inst34|fstate.Origin~regout\,
	datab => \inst34|fstate.state4~regout\,
	datac => \inst34|fstate.state1~regout\,
	datad => \inst34|fstate.state5~regout\,
	aclr => \inst17~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst34|WideOr0~0\,
	regout => \inst34|fstate.state2~regout\);

-- Location: LC_X11_Y2_N4
\inst34|fstate.state3\ : maxv_lcell
-- Equation(s):
-- \inst34|fstate.state3~regout\ = DFFEAS(GND, GLOBAL(\CLK~combout\), !GLOBAL(\inst17~combout\), , , \inst34|fstate.state2~regout\, , , VCC)

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
	clk => \CLK~combout\,
	datac => \inst34|fstate.state2~regout\,
	aclr => \inst17~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst34|fstate.state3~regout\);

-- Location: LC_X11_Y2_N0
\inst34|fstate.state4\ : maxv_lcell
-- Equation(s):
-- \inst34|fstate.state4~regout\ = DFFEAS(GND, GLOBAL(\CLK~combout\), !GLOBAL(\inst17~combout\), , , \inst34|fstate.state3~regout\, , , VCC)

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
	clk => \CLK~combout\,
	datac => \inst34|fstate.state3~regout\,
	aclr => \inst17~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst34|fstate.state4~regout\);

-- Location: LC_X11_Y2_N1
\inst34|fstate.state6\ : maxv_lcell
-- Equation(s):
-- \inst34|WideOr0\ = (\inst34|WideOr0~0\) # ((\inst34|fstate.state7~regout\) # ((G1_fstate.state6)))
-- \inst34|fstate.state6~regout\ = DFFEAS(\inst34|WideOr0\, GLOBAL(\CLK~combout\), !GLOBAL(\inst17~combout\), , , \inst34|fstate.state5~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fefe",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \inst34|WideOr0~0\,
	datab => \inst34|fstate.state7~regout\,
	datac => \inst34|fstate.state5~regout\,
	aclr => \inst17~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst34|WideOr0\,
	regout => \inst34|fstate.state6~regout\);

-- Location: LC_X11_Y2_N2
\inst34|fstate.state7\ : maxv_lcell
-- Equation(s):
-- \inst34|fstate.state7~regout\ = DFFEAS((((\inst34|fstate.state6~regout\))), GLOBAL(\CLK~combout\), !GLOBAL(\inst17~combout\), , , , , , )

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
	clk => \CLK~combout\,
	datad => \inst34|fstate.state6~regout\,
	aclr => \inst17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst34|fstate.state7~regout\);

-- Location: LC_X11_Y2_N5
\inst34|fstate.state8\ : maxv_lcell
-- Equation(s):
-- \inst34|fstate.state8~regout\ = DFFEAS((((\inst34|fstate.state7~regout\))), GLOBAL(\CLK~combout\), !GLOBAL(\inst17~combout\), , , , , , )

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
	clk => \CLK~combout\,
	datad => \inst34|fstate.state7~regout\,
	aclr => \inst17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst34|fstate.state8~regout\);

-- Location: LC_X11_Y2_N6
\inst34|fstate.state9\ : maxv_lcell
-- Equation(s):
-- \inst34|fstate.state9~regout\ = DFFEAS(GND, GLOBAL(\CLK~combout\), !GLOBAL(\inst17~combout\), , , \inst34|fstate.state8~regout\, , , VCC)

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
	clk => \CLK~combout\,
	datac => \inst34|fstate.state8~regout\,
	aclr => \inst17~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst34|fstate.state9~regout\);

-- Location: LC_X11_Y4_N9
\inst34|fstate.state10\ : maxv_lcell
-- Equation(s):
-- \inst34|fstate.state10~regout\ = DFFEAS((((\inst34|fstate.state9~regout\))), GLOBAL(\CLK~combout\), !GLOBAL(\inst17~combout\), , , , , , )

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
	clk => \CLK~combout\,
	datad => \inst34|fstate.state9~regout\,
	aclr => \inst17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst34|fstate.state10~regout\);

-- Location: LC_X11_Y4_N6
\inst34|fstate.state11\ : maxv_lcell
-- Equation(s):
-- \inst34|fstate.state11~regout\ = DFFEAS((((\inst34|fstate.state10~regout\))), GLOBAL(\CLK~combout\), !GLOBAL(\inst17~combout\), , , , , , )

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
	clk => \CLK~combout\,
	datad => \inst34|fstate.state10~regout\,
	aclr => \inst17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst34|fstate.state11~regout\);

-- Location: LC_X11_Y4_N7
\inst34|fstate.state12\ : maxv_lcell
-- Equation(s):
-- \inst34|fstate.state12~regout\ = DFFEAS((((\inst34|fstate.state11~regout\))), GLOBAL(\CLK~combout\), !GLOBAL(\inst17~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datac => \inst34|fstate.state11~regout\,
	aclr => \inst17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst34|fstate.state12~regout\);

-- Location: LC_X11_Y4_N4
\inst34|fstate.state13\ : maxv_lcell
-- Equation(s):
-- \inst34|fstate.state13~regout\ = DFFEAS((((\inst34|fstate.state12~regout\))), GLOBAL(\CLK~combout\), !GLOBAL(\inst17~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	datac => \inst34|fstate.state12~regout\,
	aclr => \inst17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst34|fstate.state13~regout\);

-- Location: LC_X10_Y6_N5
\inst34|fstate.state14\ : maxv_lcell
-- Equation(s):
-- \inst34|fstate.state14~regout\ = DFFEAS(GND, GLOBAL(\CLK~combout\), !GLOBAL(\inst17~combout\), , , \inst34|fstate.state13~regout\, , , VCC)

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
	clk => \CLK~combout\,
	datac => \inst34|fstate.state13~regout\,
	aclr => \inst17~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst34|fstate.state14~regout\);

-- Location: LC_X10_Y6_N4
\inst34|fstate.state15\ : maxv_lcell
-- Equation(s):
-- \inst34|fstate.state15~regout\ = DFFEAS(GND, GLOBAL(\CLK~combout\), !GLOBAL(\inst17~combout\), , , \inst34|fstate.state14~regout\, , , VCC)

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
	clk => \CLK~combout\,
	datac => \inst34|fstate.state14~regout\,
	aclr => \inst17~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst34|fstate.state15~regout\);

-- Location: LC_X10_Y6_N6
\inst34|fstate.state16\ : maxv_lcell
-- Equation(s):
-- \inst34|fstate.state16~regout\ = DFFEAS(GND, GLOBAL(\CLK~combout\), !GLOBAL(\inst17~combout\), , , \inst34|fstate.state15~regout\, , , VCC)

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
	clk => \CLK~combout\,
	datac => \inst34|fstate.state15~regout\,
	aclr => \inst17~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst34|fstate.state16~regout\);

-- Location: LC_X10_Y6_N9
\inst34|fstate.state17\ : maxv_lcell
-- Equation(s):
-- \inst34|fstate.state17~regout\ = DFFEAS(GND, GLOBAL(\CLK~combout\), !GLOBAL(\inst17~combout\), , , \inst34|fstate.state16~regout\, , , VCC)

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
	clk => \CLK~combout\,
	datac => \inst34|fstate.state16~regout\,
	aclr => \inst17~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst34|fstate.state17~regout\);

-- Location: LC_X5_Y5_N5
\inst34|fstate.state18\ : maxv_lcell
-- Equation(s):
-- \inst34|fstate.state18~regout\ = DFFEAS(GND, GLOBAL(\CLK~combout\), !GLOBAL(\inst17~combout\), , , \inst34|fstate.state17~regout\, , , VCC)

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
	clk => \CLK~combout\,
	datac => \inst34|fstate.state17~regout\,
	aclr => \inst17~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst34|fstate.state18~regout\);

-- Location: LC_X5_Y5_N6
\inst34|fstate.state19\ : maxv_lcell
-- Equation(s):
-- \inst34|fstate.state19~regout\ = DFFEAS(GND, GLOBAL(\CLK~combout\), !GLOBAL(\inst17~combout\), , , \inst34|fstate.state18~regout\, , , VCC)

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
	clk => \CLK~combout\,
	datac => \inst34|fstate.state18~regout\,
	aclr => \inst17~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst34|fstate.state19~regout\);

-- Location: LC_X5_Y5_N7
\inst34|fstate.state20\ : maxv_lcell
-- Equation(s):
-- \inst34|fstate.state20~regout\ = DFFEAS(GND, GLOBAL(\CLK~combout\), !GLOBAL(\inst17~combout\), , , \inst34|fstate.state19~regout\, , , VCC)

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
	clk => \CLK~combout\,
	datac => \inst34|fstate.state19~regout\,
	aclr => \inst17~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst34|fstate.state20~regout\);

-- Location: LC_X6_Y5_N9
\inst34|fstate.state21\ : maxv_lcell
-- Equation(s):
-- \inst34|fstate.state21~regout\ = DFFEAS((((\inst34|fstate.state20~regout\))), GLOBAL(\CLK~combout\), !GLOBAL(\inst17~combout\), , , , , , )

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
	clk => \CLK~combout\,
	datad => \inst34|fstate.state20~regout\,
	aclr => \inst17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst34|fstate.state21~regout\);

-- Location: LC_X6_Y5_N4
\inst34|fstate.state22\ : maxv_lcell
-- Equation(s):
-- \inst34|fstate.state22~regout\ = DFFEAS((((\inst34|fstate.state21~regout\))), GLOBAL(\CLK~combout\), !GLOBAL(\inst17~combout\), , , , , , )

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
	clk => \CLK~combout\,
	datad => \inst34|fstate.state21~regout\,
	aclr => \inst17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst34|fstate.state22~regout\);

-- Location: LC_X4_Y6_N8
\inst34|fstate.state24\ : maxv_lcell
-- Equation(s):
-- \inst34|fstate.state24~regout\ = DFFEAS((((\inst34|freezeParalell\))), GLOBAL(\CLK~combout\), !GLOBAL(\inst17~combout\), , , , , , )

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
	clk => \CLK~combout\,
	datad => \inst34|freezeParalell\,
	aclr => \inst17~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst34|fstate.state24~regout\);

-- Location: LC_X4_Y6_N7
\inst34|fstate.state23\ : maxv_lcell
-- Equation(s):
-- \inst34|freezeParalell\ = (((G1_fstate.state23) # (\inst34|fstate.state24~regout\)))

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
	clk => \CLK~combout\,
	datac => \inst34|fstate.state22~regout\,
	datad => \inst34|fstate.state24~regout\,
	aclr => \inst17~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst34|freezeParalell\,
	regout => \inst34|fstate.state23~regout\);

-- Location: LC_X4_Y6_N1
\inst6|LPM_SHIFTREG_component|dffs[0]\ : maxv_lcell
-- Equation(s):
-- \inst6|LPM_SHIFTREG_component|dffs\(0) = DFFEAS(GND, GLOBAL(\CLK~combout\), VCC, , !\inst34|freezeParalell\, \Dout~combout\, , , VCC)

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
	clk => \CLK~combout\,
	datac => \Dout~combout\,
	aclr => GND,
	sload => VCC,
	ena => \inst34|ALT_INV_freezeParalell\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|LPM_SHIFTREG_component|dffs\(0));

-- Location: LC_X4_Y6_N3
\inst6|LPM_SHIFTREG_component|dffs[1]\ : maxv_lcell
-- Equation(s):
-- \inst6|LPM_SHIFTREG_component|dffs\(1) = DFFEAS((((\inst6|LPM_SHIFTREG_component|dffs\(0)))), GLOBAL(\CLK~combout\), VCC, , !\inst34|freezeParalell\, , , , )

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
	clk => \CLK~combout\,
	datad => \inst6|LPM_SHIFTREG_component|dffs\(0),
	aclr => GND,
	ena => \inst34|ALT_INV_freezeParalell\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|LPM_SHIFTREG_component|dffs\(1));

-- Location: LC_X4_Y6_N6
\inst6|LPM_SHIFTREG_component|dffs[2]\ : maxv_lcell
-- Equation(s):
-- \inst6|LPM_SHIFTREG_component|dffs\(2) = DFFEAS((((\inst6|LPM_SHIFTREG_component|dffs\(1)))), GLOBAL(\CLK~combout\), VCC, , !\inst34|freezeParalell\, , , , )

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
	clk => \CLK~combout\,
	datad => \inst6|LPM_SHIFTREG_component|dffs\(1),
	aclr => GND,
	ena => \inst34|ALT_INV_freezeParalell\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|LPM_SHIFTREG_component|dffs\(2));

-- Location: LC_X4_Y6_N5
\inst6|LPM_SHIFTREG_component|dffs[3]\ : maxv_lcell
-- Equation(s):
-- \inst6|LPM_SHIFTREG_component|dffs\(3) = DFFEAS(GND, GLOBAL(\CLK~combout\), VCC, , !\inst34|freezeParalell\, \inst6|LPM_SHIFTREG_component|dffs\(2), , , VCC)

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
	clk => \CLK~combout\,
	datac => \inst6|LPM_SHIFTREG_component|dffs\(2),
	aclr => GND,
	sload => VCC,
	ena => \inst34|ALT_INV_freezeParalell\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|LPM_SHIFTREG_component|dffs\(3));

-- Location: LC_X3_Y6_N4
\inst6|LPM_SHIFTREG_component|dffs[4]\ : maxv_lcell
-- Equation(s):
-- \inst6|LPM_SHIFTREG_component|dffs\(4) = DFFEAS((((\inst6|LPM_SHIFTREG_component|dffs\(3)))), GLOBAL(\CLK~combout\), VCC, , !\inst34|freezeParalell\, , , , )

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
	clk => \CLK~combout\,
	datad => \inst6|LPM_SHIFTREG_component|dffs\(3),
	aclr => GND,
	ena => \inst34|ALT_INV_freezeParalell\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|LPM_SHIFTREG_component|dffs\(4));

-- Location: LC_X3_Y6_N2
\inst38|inst12\ : maxv_lcell
-- Equation(s):
-- \inst38|inst12~regout\ = DFFEAS(GND, GLOBAL(\CLK~combout\), VCC, , \inst34|freezeParalell\, \inst6|LPM_SHIFTREG_component|dffs\(4), , , VCC)

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
	clk => \CLK~combout\,
	datac => \inst6|LPM_SHIFTREG_component|dffs\(4),
	aclr => GND,
	sload => VCC,
	ena => \inst34|freezeParalell\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst38|inst12~regout\);

-- Location: LC_X3_Y6_N3
\inst6|LPM_SHIFTREG_component|dffs[5]\ : maxv_lcell
-- Equation(s):
-- \inst6|LPM_SHIFTREG_component|dffs\(5) = DFFEAS(GND, GLOBAL(\CLK~combout\), VCC, , !\inst34|freezeParalell\, \inst6|LPM_SHIFTREG_component|dffs\(4), , , VCC)

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
	clk => \CLK~combout\,
	datac => \inst6|LPM_SHIFTREG_component|dffs\(4),
	aclr => GND,
	sload => VCC,
	ena => \inst34|ALT_INV_freezeParalell\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|LPM_SHIFTREG_component|dffs\(5));

-- Location: LC_X8_Y6_N9
\inst5|$00000|auto_generated|result_node[1]~20\ : maxv_lcell
-- Equation(s):
-- \inst5|$00000|auto_generated|result_node[1]~20_combout\ = ((\NightNOTday18~combout\ & ((\inst10|inst12~regout\))) # (!\NightNOTday18~combout\ & (\inst9|inst12~regout\)))

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
	datab => \inst9|inst12~regout\,
	datac => \inst10|inst12~regout\,
	datad => \NightNOTday18~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst5|$00000|auto_generated|result_node[1]~20_combout\);

-- Location: LC_X8_Y6_N8
\inst5|$00000|auto_generated|result_node[1]~21\ : maxv_lcell
-- Equation(s):
-- \inst5|$00000|auto_generated|result_node[1]~21_combout\ = ((\passiveNOTactive19~combout\ & (\inst11|inst12~regout\)) # (!\passiveNOTactive19~combout\ & ((\inst5|$00000|auto_generated|result_node[1]~20_combout\))))

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
	datab => \passiveNOTactive19~combout\,
	datac => \inst11|inst12~regout\,
	datad => \inst5|$00000|auto_generated|result_node[1]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst5|$00000|auto_generated|result_node[1]~21_combout\);

-- Location: LC_X3_Y6_N6
\inst38|inst11\ : maxv_lcell
-- Equation(s):
-- \inst24|LPM_COMPARE_component|auto_generated|aeb_int~6\ = (\inst5|$00000|auto_generated|result_node[2]~23_combout\ & (E4_inst11 & (\inst38|inst12~regout\ $ (!\inst5|$00000|auto_generated|result_node[1]~21_combout\)))) # 
-- (!\inst5|$00000|auto_generated|result_node[2]~23_combout\ & (!E4_inst11 & (\inst38|inst12~regout\ $ (!\inst5|$00000|auto_generated|result_node[1]~21_combout\))))
-- \inst38|inst11~regout\ = DFFEAS(\inst24|LPM_COMPARE_component|auto_generated|aeb_int~6\, GLOBAL(\CLK~combout\), VCC, , \inst34|freezeParalell\, \inst6|LPM_SHIFTREG_component|dffs\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8421",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \inst5|$00000|auto_generated|result_node[2]~23_combout\,
	datab => \inst38|inst12~regout\,
	datac => \inst6|LPM_SHIFTREG_component|dffs\(5),
	datad => \inst5|$00000|auto_generated|result_node[1]~21_combout\,
	aclr => GND,
	sload => VCC,
	ena => \inst34|freezeParalell\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst24|LPM_COMPARE_component|auto_generated|aeb_int~6\,
	regout => \inst38|inst11~regout\);

-- Location: LC_X3_Y7_N0
\inst9|inst16\ : maxv_lcell
-- Equation(s):
-- \inst9|inst16~combout\ = (((\Inc~combout\) # (\Dec~combout\)))

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
	combout => \inst9|inst16~combout\);

-- Location: LC_X7_Y6_N3
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

-- Location: LC_X6_Y6_N1
\inst11|inst10\ : maxv_lcell
-- Equation(s):
-- \inst11|inst10~regout\ = DFFEAS((\Initialize~combout\) # ((\inst9|inst16~combout\ & (\inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(3))) # (!\inst9|inst16~combout\ & ((\inst11|inst10~regout\)))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fdec",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \inst9|inst16~combout\,
	datab => \Initialize~combout\,
	datac => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(3),
	datad => \inst11|inst10~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|inst10~regout\);

-- Location: LC_X7_Y6_N4
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

-- Location: LC_X6_Y6_N6
\inst11|inst9\ : maxv_lcell
-- Equation(s):
-- \inst11|inst9~regout\ = DFFEAS((\Initialize~combout\) # ((\inst9|inst16~combout\ & ((\inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(4)))) # (!\inst9|inst16~combout\ & (\inst11|inst9~regout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fedc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \inst9|inst16~combout\,
	datab => \Initialize~combout\,
	datac => \inst11|inst9~regout\,
	datad => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(4),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|inst9~regout\);

-- Location: LC_X9_Y5_N3
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

-- Location: LC_X8_Y5_N5
\inst9|inst10\ : maxv_lcell
-- Equation(s):
-- \inst9|inst10~regout\ = DFFEAS((\Initialize~combout\) # ((\inst9|inst16~combout\ & ((\inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(3)))) # (!\inst9|inst16~combout\ & (\inst9|inst10~regout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

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
	datab => \inst9|inst10~regout\,
	datac => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(3),
	datad => \inst9|inst16~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst10~regout\);

-- Location: LC_X9_Y5_N4
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

-- Location: LC_X8_Y5_N6
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

-- Location: LC_X9_Y4_N3
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

-- Location: LC_X8_Y4_N5
\inst10|inst10\ : maxv_lcell
-- Equation(s):
-- \inst10|inst10~regout\ = DFFEAS((\Initialize~combout\) # ((\inst9|inst16~combout\ & ((\inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(3)))) # (!\inst9|inst16~combout\ & (\inst10|inst10~regout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffe2",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \inst10|inst10~regout\,
	datab => \inst9|inst16~combout\,
	datac => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(3),
	datad => \Initialize~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|inst10~regout\);

-- Location: LC_X9_Y4_N4
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

-- Location: LC_X8_Y4_N4
\inst10|inst9\ : maxv_lcell
-- Equation(s):
-- \inst10|inst9~regout\ = DFFEAS((\Initialize~combout\) # ((\inst9|inst16~combout\ & ((\inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(4)))) # (!\inst9|inst16~combout\ & (\inst10|inst9~regout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fece",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \inst10|inst9~regout\,
	datab => \Initialize~combout\,
	datac => \inst9|inst16~combout\,
	datad => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(4),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|inst9~regout\);

-- Location: LC_X8_Y4_N8
\inst5|$00000|auto_generated|result_node[4]~18\ : maxv_lcell
-- Equation(s):
-- \inst5|$00000|auto_generated|result_node[4]~18_combout\ = ((\NightNOTday18~combout\ & ((\inst10|inst9~regout\))) # (!\NightNOTday18~combout\ & (\inst9|inst9~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|inst9~regout\,
	datac => \inst10|inst9~regout\,
	datad => \NightNOTday18~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst5|$00000|auto_generated|result_node[4]~18_combout\);

-- Location: LC_X7_Y5_N6
\inst5|$00000|auto_generated|result_node[4]~19\ : maxv_lcell
-- Equation(s):
-- \inst5|$00000|auto_generated|result_node[4]~19_combout\ = (\passiveNOTactive19~combout\ & (((\inst11|inst9~regout\)))) # (!\passiveNOTactive19~combout\ & (((\inst5|$00000|auto_generated|result_node[4]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \passiveNOTactive19~combout\,
	datac => \inst11|inst9~regout\,
	datad => \inst5|$00000|auto_generated|result_node[4]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst5|$00000|auto_generated|result_node[4]~19_combout\);

-- Location: LC_X3_Y6_N1
\inst6|LPM_SHIFTREG_component|dffs[6]\ : maxv_lcell
-- Equation(s):
-- \inst6|LPM_SHIFTREG_component|dffs\(6) = DFFEAS((((\inst6|LPM_SHIFTREG_component|dffs\(5)))), GLOBAL(\CLK~combout\), VCC, , !\inst34|freezeParalell\, , , , )

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
	clk => \CLK~combout\,
	datad => \inst6|LPM_SHIFTREG_component|dffs\(5),
	aclr => GND,
	ena => \inst34|ALT_INV_freezeParalell\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|LPM_SHIFTREG_component|dffs\(6));

-- Location: LC_X3_Y6_N8
\inst38|inst10\ : maxv_lcell
-- Equation(s):
-- \inst38|inst10~regout\ = DFFEAS((((\inst6|LPM_SHIFTREG_component|dffs\(6)))), GLOBAL(\CLK~combout\), VCC, , \inst34|freezeParalell\, , , , )

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
	clk => \CLK~combout\,
	datad => \inst6|LPM_SHIFTREG_component|dffs\(6),
	aclr => GND,
	ena => \inst34|freezeParalell\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst38|inst10~regout\);

-- Location: LC_X3_Y6_N7
\inst6|LPM_SHIFTREG_component|dffs[7]\ : maxv_lcell
-- Equation(s):
-- \inst6|LPM_SHIFTREG_component|dffs\(7) = DFFEAS((((\inst6|LPM_SHIFTREG_component|dffs\(6)))), GLOBAL(\CLK~combout\), VCC, , !\inst34|freezeParalell\, , , , )

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
	clk => \CLK~combout\,
	datad => \inst6|LPM_SHIFTREG_component|dffs\(6),
	aclr => GND,
	ena => \inst34|ALT_INV_freezeParalell\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|LPM_SHIFTREG_component|dffs\(7));

-- Location: LC_X7_Y5_N9
\inst5|$00000|auto_generated|result_node[3]~16\ : maxv_lcell
-- Equation(s):
-- \inst5|$00000|auto_generated|result_node[3]~16_combout\ = ((\NightNOTday18~combout\ & (\inst10|inst10~regout\)) # (!\NightNOTday18~combout\ & ((\inst9|inst10~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aacc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst10~regout\,
	datab => \inst9|inst10~regout\,
	datad => \NightNOTday18~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst5|$00000|auto_generated|result_node[3]~16_combout\);

-- Location: LC_X7_Y5_N7
\inst5|$00000|auto_generated|result_node[3]~17\ : maxv_lcell
-- Equation(s):
-- \inst5|$00000|auto_generated|result_node[3]~17_combout\ = (\passiveNOTactive19~combout\ & (((\inst11|inst10~regout\)))) # (!\passiveNOTactive19~combout\ & (((\inst5|$00000|auto_generated|result_node[3]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \passiveNOTactive19~combout\,
	datac => \inst11|inst10~regout\,
	datad => \inst5|$00000|auto_generated|result_node[3]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst5|$00000|auto_generated|result_node[3]~17_combout\);

-- Location: LC_X3_Y6_N5
\inst38|inst9\ : maxv_lcell
-- Equation(s):
-- \inst24|LPM_COMPARE_component|auto_generated|aeb_int~5\ = (\inst5|$00000|auto_generated|result_node[4]~19_combout\ & (E4_inst9 & (\inst38|inst10~regout\ $ (!\inst5|$00000|auto_generated|result_node[3]~17_combout\)))) # 
-- (!\inst5|$00000|auto_generated|result_node[4]~19_combout\ & (!E4_inst9 & (\inst38|inst10~regout\ $ (!\inst5|$00000|auto_generated|result_node[3]~17_combout\))))
-- \inst38|inst9~regout\ = DFFEAS(\inst24|LPM_COMPARE_component|auto_generated|aeb_int~5\, GLOBAL(\CLK~combout\), VCC, , \inst34|freezeParalell\, \inst6|LPM_SHIFTREG_component|dffs\(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8421",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \inst5|$00000|auto_generated|result_node[4]~19_combout\,
	datab => \inst38|inst10~regout\,
	datac => \inst6|LPM_SHIFTREG_component|dffs\(7),
	datad => \inst5|$00000|auto_generated|result_node[3]~17_combout\,
	aclr => GND,
	sload => VCC,
	ena => \inst34|freezeParalell\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst24|LPM_COMPARE_component|auto_generated|aeb_int~5\,
	regout => \inst38|inst9~regout\);

-- Location: LC_X4_Y4_N3
\inst38|inst13\ : maxv_lcell
-- Equation(s):
-- \inst24|LPM_COMPARE_component|auto_generated|aeb_int~7\ = (\inst24|LPM_COMPARE_component|auto_generated|aeb_int~6\ & (\inst24|LPM_COMPARE_component|auto_generated|aeb_int~5\ & (\inst5|$00000|auto_generated|result_node[0]~25_combout\ $ (!E4_inst13))))
-- \inst38|inst13~regout\ = DFFEAS(\inst24|LPM_COMPARE_component|auto_generated|aeb_int~7\, GLOBAL(\CLK~combout\), VCC, , \inst34|freezeParalell\, \inst6|LPM_SHIFTREG_component|dffs\(3), , , VCC)

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
	clk => \CLK~combout\,
	dataa => \inst5|$00000|auto_generated|result_node[0]~25_combout\,
	datab => \inst24|LPM_COMPARE_component|auto_generated|aeb_int~6\,
	datac => \inst6|LPM_SHIFTREG_component|dffs\(3),
	datad => \inst24|LPM_COMPARE_component|auto_generated|aeb_int~5\,
	aclr => GND,
	sload => VCC,
	ena => \inst34|freezeParalell\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst24|LPM_COMPARE_component|auto_generated|aeb_int~7\,
	regout => \inst38|inst13~regout\);

-- Location: LC_X9_Y4_N5
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

-- Location: LC_X8_Y4_N7
\inst10|inst8\ : maxv_lcell
-- Equation(s):
-- \inst10|inst8~regout\ = DFFEAS((\Initialize~combout\) # ((\inst9|inst16~combout\ & ((\inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(5)))) # (!\inst9|inst16~combout\ & (\inst10|inst8~regout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fece",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \inst10|inst8~regout\,
	datab => \Initialize~combout\,
	datac => \inst9|inst16~combout\,
	datad => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(5),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|inst8~regout\);

-- Location: LC_X9_Y4_N6
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

-- Location: LC_X8_Y4_N6
\inst10|inst7\ : maxv_lcell
-- Equation(s):
-- \inst10|inst7~regout\ = DFFEAS((\Inc~combout\ & (((\inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(6))))) # (!\Inc~combout\ & ((\Dec~combout\ & ((\inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(6)))) # (!\Dec~combout\ & 
-- (\inst10|inst7~regout\)))), GLOBAL(\CLK~combout\), VCC, , , , , \Initialize~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0e2",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \inst10|inst7~regout\,
	datab => \Inc~combout\,
	datac => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(6),
	datad => \Dec~combout\,
	aclr => GND,
	sclr => \Initialize~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|inst7~regout\);

-- Location: LC_X9_Y4_N7
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

-- Location: LC_X8_Y4_N0
\inst10|inst6\ : maxv_lcell
-- Equation(s):
-- \inst10|inst6~regout\ = DFFEAS((\Inc~combout\ & (((\inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(7))))) # (!\Inc~combout\ & ((\Dec~combout\ & ((\inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(7)))) # (!\Dec~combout\ & 
-- (\inst10|inst6~regout\)))), GLOBAL(\CLK~combout\), VCC, , , , , \Initialize~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe10",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Inc~combout\,
	datab => \Dec~combout\,
	datac => \inst10|inst6~regout\,
	datad => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(7),
	aclr => GND,
	sclr => \Initialize~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|inst6~regout\);

-- Location: LC_X9_Y4_N8
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

-- Location: LC_X8_Y4_N9
\inst10|inst5\ : maxv_lcell
-- Equation(s):
-- \inst10|inst5~regout\ = DFFEAS((\Initialize~combout\) # ((\inst9|inst16~combout\ & ((\inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(8)))) # (!\inst9|inst16~combout\ & (\inst10|inst5~regout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fece",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \inst10|inst5~regout\,
	datab => \Initialize~combout\,
	datac => \inst9|inst16~combout\,
	datad => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(8),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|inst5~regout\);

-- Location: LC_X9_Y4_N9
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

-- Location: LC_X8_Y4_N2
\inst10|inst4\ : maxv_lcell
-- Equation(s):
-- \inst10|inst4~regout\ = DFFEAS((\Inc~combout\ & (((\inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(9))))) # (!\Inc~combout\ & ((\Dec~combout\ & ((\inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(9)))) # (!\Dec~combout\ & 
-- (\inst10|inst4~regout\)))), GLOBAL(\CLK~combout\), VCC, , , , , \Initialize~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0e2",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \inst10|inst4~regout\,
	datab => \Inc~combout\,
	datac => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(9),
	datad => \Dec~combout\,
	aclr => GND,
	sclr => \Initialize~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|inst4~regout\);

-- Location: LC_X10_Y4_N0
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

-- Location: LC_X11_Y4_N8
\inst10|inst3\ : maxv_lcell
-- Equation(s):
-- \inst10|inst3~regout\ = DFFEAS((\Inc~combout\ & (((\inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(10))))) # (!\Inc~combout\ & ((\Dec~combout\ & ((\inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(10)))) # (!\Dec~combout\ & 
-- (\inst10|inst3~regout\)))), GLOBAL(\CLK~combout\), VCC, , , , , \Initialize~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe02",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \inst10|inst3~regout\,
	datab => \Inc~combout\,
	datac => \Dec~combout\,
	datad => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(10),
	aclr => GND,
	sclr => \Initialize~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|inst3~regout\);

-- Location: LC_X10_Y4_N1
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

-- Location: LC_X11_Y4_N2
\inst10|inst2\ : maxv_lcell
-- Equation(s):
-- \inst10|inst2~regout\ = DFFEAS((\Dec~combout\ & (((\inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(11))))) # (!\Dec~combout\ & ((\Inc~combout\ & (\inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(11))) # (!\Inc~combout\ & 
-- ((\inst10|inst2~regout\))))), GLOBAL(\CLK~combout\), VCC, , , , , \Initialize~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f1e0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Dec~combout\,
	datab => \Inc~combout\,
	datac => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(11),
	datad => \inst10|inst2~regout\,
	aclr => GND,
	sclr => \Initialize~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|inst2~regout\);

-- Location: LC_X10_Y4_N2
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

-- Location: LC_X11_Y4_N5
\inst10|inst1\ : maxv_lcell
-- Equation(s):
-- \inst10|inst1~regout\ = DFFEAS((\Dec~combout\ & (((\inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(12))))) # (!\Dec~combout\ & ((\Inc~combout\ & ((\inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(12)))) # (!\Inc~combout\ & 
-- (\inst10|inst1~regout\)))), GLOBAL(\CLK~combout\), VCC, , , , , \Initialize~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe10",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Dec~combout\,
	datab => \Inc~combout\,
	datac => \inst10|inst1~regout\,
	datad => \inst10|inst|LPM_ADD_SUB_component|stratix_adder|result\(12),
	aclr => GND,
	sclr => \Initialize~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst10|inst1~regout\);

-- Location: LC_X9_Y5_N5
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

-- Location: LC_X8_Y5_N7
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

-- Location: LC_X9_Y5_N6
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

-- Location: LC_X8_Y5_N9
\inst9|inst7\ : maxv_lcell
-- Equation(s):
-- \inst9|inst7~regout\ = DFFEAS((\Inc~combout\ & (((\inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(6))))) # (!\Inc~combout\ & ((\Dec~combout\ & (\inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(6))) # (!\Dec~combout\ & 
-- ((\inst9|inst7~regout\))))), GLOBAL(\CLK~combout\), VCC, , , , , \Initialize~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f1e0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Inc~combout\,
	datab => \Dec~combout\,
	datac => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(6),
	datad => \inst9|inst7~regout\,
	aclr => GND,
	sclr => \Initialize~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst7~regout\);

-- Location: LC_X9_Y5_N7
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

-- Location: LC_X8_Y5_N8
\inst9|inst6\ : maxv_lcell
-- Equation(s):
-- \inst9|inst6~regout\ = DFFEAS((\Inc~combout\ & (((\inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(7))))) # (!\Inc~combout\ & ((\Dec~combout\ & ((\inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(7)))) # (!\Dec~combout\ & 
-- (\inst9|inst6~regout\)))), GLOBAL(\CLK~combout\), VCC, , , , , \Initialize~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe10",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Inc~combout\,
	datab => \Dec~combout\,
	datac => \inst9|inst6~regout\,
	datad => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(7),
	aclr => GND,
	sclr => \Initialize~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst6~regout\);

-- Location: LC_X9_Y5_N8
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

-- Location: LC_X8_Y5_N1
\inst9|inst5\ : maxv_lcell
-- Equation(s):
-- \inst9|inst5~regout\ = DFFEAS((\Initialize~combout\) # ((\inst9|inst16~combout\ & ((\inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(8)))) # (!\inst9|inst16~combout\ & (\inst9|inst5~regout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

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
	datac => \inst9|inst5~regout\,
	datad => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(8),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst5~regout\);

-- Location: LC_X9_Y5_N9
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

-- Location: LC_X8_Y5_N0
\inst9|inst4\ : maxv_lcell
-- Equation(s):
-- \inst9|inst4~regout\ = DFFEAS((\Inc~combout\ & (((\inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(9))))) # (!\Inc~combout\ & ((\Dec~combout\ & ((\inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(9)))) # (!\Dec~combout\ & 
-- (\inst9|inst4~regout\)))), GLOBAL(\CLK~combout\), VCC, , , , , \Initialize~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0e4",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Inc~combout\,
	datab => \inst9|inst4~regout\,
	datac => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(9),
	datad => \Dec~combout\,
	aclr => GND,
	sclr => \Initialize~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst4~regout\);

-- Location: LC_X10_Y5_N0
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

-- Location: LC_X11_Y5_N8
\inst9|inst3\ : maxv_lcell
-- Equation(s):
-- \inst9|inst3~regout\ = DFFEAS((\Inc~combout\ & (((\inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(10))))) # (!\Inc~combout\ & ((\Dec~combout\ & ((\inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(10)))) # (!\Dec~combout\ & 
-- (\inst9|inst3~regout\)))), GLOBAL(\CLK~combout\), VCC, , , , , \Initialize~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe02",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \inst9|inst3~regout\,
	datab => \Inc~combout\,
	datac => \Dec~combout\,
	datad => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(10),
	aclr => GND,
	sclr => \Initialize~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst3~regout\);

-- Location: LC_X10_Y5_N1
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

-- Location: LC_X11_Y5_N4
\inst9|inst2\ : maxv_lcell
-- Equation(s):
-- \inst9|inst2~regout\ = DFFEAS((\Inc~combout\ & (((\inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(11))))) # (!\Inc~combout\ & ((\Dec~combout\ & ((\inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(11)))) # (!\Dec~combout\ & 
-- (\inst9|inst2~regout\)))), GLOBAL(\CLK~combout\), VCC, , , , , \Initialize~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe02",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \inst9|inst2~regout\,
	datab => \Inc~combout\,
	datac => \Dec~combout\,
	datad => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(11),
	aclr => GND,
	sclr => \Initialize~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst2~regout\);

-- Location: LC_X10_Y5_N2
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

-- Location: LC_X11_Y5_N1
\inst9|inst1\ : maxv_lcell
-- Equation(s):
-- \inst9|inst1~regout\ = DFFEAS((\Inc~combout\ & (((\inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(12))))) # (!\Inc~combout\ & ((\Dec~combout\ & ((\inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(12)))) # (!\Dec~combout\ & 
-- (\inst9|inst1~regout\)))), GLOBAL(\CLK~combout\), VCC, , , , , \Initialize~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe10",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Inc~combout\,
	datab => \Dec~combout\,
	datac => \inst9|inst1~regout\,
	datad => \inst9|inst|LPM_ADD_SUB_component|stratix_adder|result\(12),
	aclr => GND,
	sclr => \Initialize~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst9|inst1~regout\);

-- Location: LC_X10_Y5_N9
\inst5|$00000|auto_generated|result_node[12]~2\ : maxv_lcell
-- Equation(s):
-- \inst5|$00000|auto_generated|result_node[12]~2_combout\ = ((\NightNOTday18~combout\ & (\inst10|inst1~regout\)) # (!\NightNOTday18~combout\ & ((\inst9|inst1~regout\))))

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
	datab => \inst10|inst1~regout\,
	datac => \NightNOTday18~combout\,
	datad => \inst9|inst1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst5|$00000|auto_generated|result_node[12]~2_combout\);

-- Location: LC_X7_Y6_N5
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

-- Location: LC_X6_Y6_N4
\inst11|inst8\ : maxv_lcell
-- Equation(s):
-- \inst11|inst8~regout\ = DFFEAS((\Initialize~combout\) # ((\inst9|inst16~combout\ & ((\inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(5)))) # (!\inst9|inst16~combout\ & (\inst11|inst8~regout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fedc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \inst9|inst16~combout\,
	datab => \Initialize~combout\,
	datac => \inst11|inst8~regout\,
	datad => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(5),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|inst8~regout\);

-- Location: LC_X7_Y6_N6
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

-- Location: LC_X6_Y6_N8
\inst11|inst7\ : maxv_lcell
-- Equation(s):
-- \inst11|inst7~regout\ = DFFEAS((\Inc~combout\ & (((\inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(6))))) # (!\Inc~combout\ & ((\Dec~combout\ & ((\inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(6)))) # (!\Dec~combout\ & 
-- (\inst11|inst7~regout\)))), GLOBAL(\CLK~combout\), VCC, , , , , \Initialize~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0e2",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \inst11|inst7~regout\,
	datab => \Inc~combout\,
	datac => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(6),
	datad => \Dec~combout\,
	aclr => GND,
	sclr => \Initialize~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|inst7~regout\);

-- Location: LC_X7_Y6_N7
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

-- Location: LC_X6_Y6_N9
\inst11|inst6\ : maxv_lcell
-- Equation(s):
-- \inst11|inst6~regout\ = DFFEAS((\Dec~combout\ & (((\inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(7))))) # (!\Dec~combout\ & ((\Inc~combout\ & ((\inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(7)))) # (!\Inc~combout\ & 
-- (\inst11|inst6~regout\)))), GLOBAL(\CLK~combout\), VCC, , , , , \Initialize~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe02",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \inst11|inst6~regout\,
	datab => \Dec~combout\,
	datac => \Inc~combout\,
	datad => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(7),
	aclr => GND,
	sclr => \Initialize~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|inst6~regout\);

-- Location: LC_X7_Y6_N8
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

-- Location: LC_X6_Y6_N0
\inst11|inst5\ : maxv_lcell
-- Equation(s):
-- \inst11|inst5~regout\ = DFFEAS((\Initialize~combout\) # ((\inst9|inst16~combout\ & ((\inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(8)))) # (!\inst9|inst16~combout\ & (\inst11|inst5~regout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fedc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \inst9|inst16~combout\,
	datab => \Initialize~combout\,
	datac => \inst11|inst5~regout\,
	datad => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(8),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|inst5~regout\);

-- Location: LC_X7_Y6_N9
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

-- Location: LC_X6_Y6_N2
\inst11|inst4\ : maxv_lcell
-- Equation(s):
-- \inst11|inst4~regout\ = DFFEAS((\Inc~combout\ & (((\inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(9))))) # (!\Inc~combout\ & ((\Dec~combout\ & ((\inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(9)))) # (!\Dec~combout\ & 
-- (\inst11|inst4~regout\)))), GLOBAL(\CLK~combout\), VCC, , , , , \Initialize~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0e2",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \inst11|inst4~regout\,
	datab => \Inc~combout\,
	datac => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(9),
	datad => \Dec~combout\,
	aclr => GND,
	sclr => \Initialize~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|inst4~regout\);

-- Location: LC_X8_Y6_N0
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

-- Location: LC_X9_Y6_N2
\inst11|inst3\ : maxv_lcell
-- Equation(s):
-- \inst11|inst3~regout\ = DFFEAS((\Dec~combout\ & (((\inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(10))))) # (!\Dec~combout\ & ((\Inc~combout\ & ((\inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(10)))) # (!\Inc~combout\ & 
-- (\inst11|inst3~regout\)))), GLOBAL(\CLK~combout\), VCC, , , , , \Initialize~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe10",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Dec~combout\,
	datab => \Inc~combout\,
	datac => \inst11|inst3~regout\,
	datad => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(10),
	aclr => GND,
	sclr => \Initialize~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|inst3~regout\);

-- Location: LC_X8_Y6_N1
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

-- Location: LC_X9_Y6_N8
\inst11|inst2\ : maxv_lcell
-- Equation(s):
-- \inst11|inst2~regout\ = DFFEAS((\Dec~combout\ & (((\inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(11))))) # (!\Dec~combout\ & ((\Inc~combout\ & (\inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(11))) # (!\Inc~combout\ & 
-- ((\inst11|inst2~regout\))))), GLOBAL(\CLK~combout\), VCC, , , , , \Initialize~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f1e0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Dec~combout\,
	datab => \Inc~combout\,
	datac => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(11),
	datad => \inst11|inst2~regout\,
	aclr => GND,
	sclr => \Initialize~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|inst2~regout\);

-- Location: LC_X8_Y6_N2
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

-- Location: LC_X9_Y6_N4
\inst11|inst1\ : maxv_lcell
-- Equation(s):
-- \inst11|inst1~regout\ = DFFEAS((\Dec~combout\ & (((\inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(12))))) # (!\Dec~combout\ & ((\Inc~combout\ & ((\inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(12)))) # (!\Inc~combout\ & 
-- (\inst11|inst1~regout\)))), GLOBAL(\CLK~combout\), VCC, , , , , \Initialize~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe10",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Dec~combout\,
	datab => \Inc~combout\,
	datac => \inst11|inst1~regout\,
	datad => \inst11|inst|LPM_ADD_SUB_component|stratix_adder|result\(12),
	aclr => GND,
	sclr => \Initialize~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst11|inst1~regout\);

-- Location: LC_X8_Y6_N6
\inst5|$00000|auto_generated|result_node[12]~3\ : maxv_lcell
-- Equation(s):
-- \inst5|$00000|auto_generated|result_node[12]~3_combout\ = ((\passiveNOTactive19~combout\ & ((\inst11|inst1~regout\))) # (!\passiveNOTactive19~combout\ & (\inst5|$00000|auto_generated|result_node[12]~2_combout\)))

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
	datab => \passiveNOTactive19~combout\,
	datac => \inst5|$00000|auto_generated|result_node[12]~2_combout\,
	datad => \inst11|inst1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst5|$00000|auto_generated|result_node[12]~3_combout\);

-- Location: LC_X10_Y5_N4
\inst5|$00000|auto_generated|result_node[11]~0\ : maxv_lcell
-- Equation(s):
-- \inst5|$00000|auto_generated|result_node[11]~0_combout\ = ((\NightNOTday18~combout\ & (\inst10|inst2~regout\)) # (!\NightNOTday18~combout\ & ((\inst9|inst2~regout\))))

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
	datab => \inst10|inst2~regout\,
	datac => \NightNOTday18~combout\,
	datad => \inst9|inst2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst5|$00000|auto_generated|result_node[11]~0_combout\);

-- Location: LC_X8_Y6_N3
\inst5|$00000|auto_generated|result_node[11]~1\ : maxv_lcell
-- Equation(s):
-- \inst5|$00000|auto_generated|result_node[11]~1_combout\ = ((\passiveNOTactive19~combout\ & ((\inst11|inst2~regout\))) # (!\passiveNOTactive19~combout\ & (\inst5|$00000|auto_generated|result_node[11]~0_combout\)))

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
	datab => \passiveNOTactive19~combout\,
	datac => \inst5|$00000|auto_generated|result_node[11]~0_combout\,
	datad => \inst11|inst2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst5|$00000|auto_generated|result_node[11]~1_combout\);

-- Location: LC_X3_Y6_N9
\inst6|LPM_SHIFTREG_component|dffs[8]\ : maxv_lcell
-- Equation(s):
-- \inst6|LPM_SHIFTREG_component|dffs\(8) = DFFEAS(GND, GLOBAL(\CLK~combout\), VCC, , !\inst34|freezeParalell\, \inst6|LPM_SHIFTREG_component|dffs\(7), , , VCC)

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
	clk => \CLK~combout\,
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
-- \inst6|LPM_SHIFTREG_component|dffs\(9) = DFFEAS(GND, GLOBAL(\CLK~combout\), VCC, , !\inst34|freezeParalell\, \inst6|LPM_SHIFTREG_component|dffs\(8), , , VCC)

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
	clk => \CLK~combout\,
	datac => \inst6|LPM_SHIFTREG_component|dffs\(8),
	aclr => GND,
	sload => VCC,
	ena => \inst34|ALT_INV_freezeParalell\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|LPM_SHIFTREG_component|dffs\(9));

-- Location: LC_X5_Y6_N4
\inst6|LPM_SHIFTREG_component|dffs[10]\ : maxv_lcell
-- Equation(s):
-- \inst6|LPM_SHIFTREG_component|dffs\(10) = DFFEAS(GND, GLOBAL(\CLK~combout\), VCC, , !\inst34|freezeParalell\, \inst6|LPM_SHIFTREG_component|dffs\(9), , , VCC)

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
	clk => \CLK~combout\,
	datac => \inst6|LPM_SHIFTREG_component|dffs\(9),
	aclr => GND,
	sload => VCC,
	ena => \inst34|ALT_INV_freezeParalell\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|LPM_SHIFTREG_component|dffs\(10));

-- Location: LC_X4_Y6_N0
\inst6|LPM_SHIFTREG_component|dffs[11]\ : maxv_lcell
-- Equation(s):
-- \inst6|LPM_SHIFTREG_component|dffs\(11) = DFFEAS((((\inst6|LPM_SHIFTREG_component|dffs\(10)))), GLOBAL(\CLK~combout\), VCC, , !\inst34|freezeParalell\, , , , )

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
	clk => \CLK~combout\,
	datad => \inst6|LPM_SHIFTREG_component|dffs\(10),
	aclr => GND,
	ena => \inst34|ALT_INV_freezeParalell\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|LPM_SHIFTREG_component|dffs\(11));

-- Location: LC_X4_Y6_N2
\inst6|LPM_SHIFTREG_component|dffs[12]\ : maxv_lcell
-- Equation(s):
-- \inst6|LPM_SHIFTREG_component|dffs\(12) = DFFEAS(GND, GLOBAL(\CLK~combout\), VCC, , !\inst34|freezeParalell\, \inst6|LPM_SHIFTREG_component|dffs\(11), , , VCC)

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
	clk => \CLK~combout\,
	datac => \inst6|LPM_SHIFTREG_component|dffs\(11),
	aclr => GND,
	sload => VCC,
	ena => \inst34|ALT_INV_freezeParalell\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|LPM_SHIFTREG_component|dffs\(12));

-- Location: LC_X4_Y6_N4
\inst6|LPM_SHIFTREG_component|dffs[13]\ : maxv_lcell
-- Equation(s):
-- \inst6|LPM_SHIFTREG_component|dffs\(13) = DFFEAS((((\inst6|LPM_SHIFTREG_component|dffs\(12)))), GLOBAL(\CLK~combout\), VCC, , !\inst34|freezeParalell\, , , , )

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
	clk => \CLK~combout\,
	datad => \inst6|LPM_SHIFTREG_component|dffs\(12),
	aclr => GND,
	ena => \inst34|ALT_INV_freezeParalell\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|LPM_SHIFTREG_component|dffs\(13));

-- Location: LC_X5_Y6_N6
\inst6|LPM_SHIFTREG_component|dffs[14]\ : maxv_lcell
-- Equation(s):
-- \inst6|LPM_SHIFTREG_component|dffs\(14) = DFFEAS((((\inst6|LPM_SHIFTREG_component|dffs\(13)))), GLOBAL(\CLK~combout\), VCC, , !\inst34|freezeParalell\, , , , )

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
	clk => \CLK~combout\,
	datad => \inst6|LPM_SHIFTREG_component|dffs\(13),
	aclr => GND,
	ena => \inst34|ALT_INV_freezeParalell\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|LPM_SHIFTREG_component|dffs\(14));

-- Location: LC_X5_Y6_N0
\inst6|LPM_SHIFTREG_component|dffs[15]\ : maxv_lcell
-- Equation(s):
-- \inst6|LPM_SHIFTREG_component|dffs\(15) = DFFEAS(GND, GLOBAL(\CLK~combout\), VCC, , !\inst34|freezeParalell\, \inst6|LPM_SHIFTREG_component|dffs\(14), , , VCC)

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
	clk => \CLK~combout\,
	datac => \inst6|LPM_SHIFTREG_component|dffs\(14),
	aclr => GND,
	sload => VCC,
	ena => \inst34|ALT_INV_freezeParalell\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|LPM_SHIFTREG_component|dffs\(15));

-- Location: LC_X5_Y6_N8
\inst38|inst2\ : maxv_lcell
-- Equation(s):
-- \inst38|inst2~regout\ = DFFEAS(GND, GLOBAL(\CLK~combout\), VCC, , \inst34|freezeParalell\, \inst6|LPM_SHIFTREG_component|dffs\(14), , , VCC)

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
	clk => \CLK~combout\,
	datac => \inst6|LPM_SHIFTREG_component|dffs\(14),
	aclr => GND,
	sload => VCC,
	ena => \inst34|freezeParalell\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst38|inst2~regout\);

-- Location: LC_X5_Y4_N8
\inst38|inst1\ : maxv_lcell
-- Equation(s):
-- \inst24|LPM_COMPARE_component|auto_generated|aeb_int~0\ = (\inst5|$00000|auto_generated|result_node[11]~1_combout\ & (\inst38|inst2~regout\ & (\inst5|$00000|auto_generated|result_node[12]~3_combout\ $ (!E4_inst1)))) # 
-- (!\inst5|$00000|auto_generated|result_node[11]~1_combout\ & (!\inst38|inst2~regout\ & (\inst5|$00000|auto_generated|result_node[12]~3_combout\ $ (!E4_inst1))))
-- \inst38|inst1~regout\ = DFFEAS(\inst24|LPM_COMPARE_component|auto_generated|aeb_int~0\, GLOBAL(\CLK~combout\), VCC, , \inst34|freezeParalell\, \inst6|LPM_SHIFTREG_component|dffs\(15), , , VCC)

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
	clk => \CLK~combout\,
	dataa => \inst5|$00000|auto_generated|result_node[11]~1_combout\,
	datab => \inst5|$00000|auto_generated|result_node[12]~3_combout\,
	datac => \inst6|LPM_SHIFTREG_component|dffs\(15),
	datad => \inst38|inst2~regout\,
	aclr => GND,
	sload => VCC,
	ena => \inst34|freezeParalell\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst24|LPM_COMPARE_component|auto_generated|aeb_int~0\,
	regout => \inst38|inst1~regout\);

-- Location: LC_X10_Y5_N8
\inst5|$00000|auto_generated|result_node[10]~6\ : maxv_lcell
-- Equation(s):
-- \inst5|$00000|auto_generated|result_node[10]~6_combout\ = ((\NightNOTday18~combout\ & ((\inst10|inst3~regout\))) # (!\NightNOTday18~combout\ & (\inst9|inst3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst9|inst3~regout\,
	datac => \NightNOTday18~combout\,
	datad => \inst10|inst3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst5|$00000|auto_generated|result_node[10]~6_combout\);

-- Location: LC_X8_Y6_N7
\inst5|$00000|auto_generated|result_node[10]~7\ : maxv_lcell
-- Equation(s):
-- \inst5|$00000|auto_generated|result_node[10]~7_combout\ = ((\passiveNOTactive19~combout\ & (\inst11|inst3~regout\)) # (!\passiveNOTactive19~combout\ & ((\inst5|$00000|auto_generated|result_node[10]~6_combout\))))

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
	datab => \passiveNOTactive19~combout\,
	datac => \inst11|inst3~regout\,
	datad => \inst5|$00000|auto_generated|result_node[10]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst5|$00000|auto_generated|result_node[10]~7_combout\);

-- Location: LC_X7_Y4_N8
\inst5|$00000|auto_generated|result_node[9]~4\ : maxv_lcell
-- Equation(s):
-- \inst5|$00000|auto_generated|result_node[9]~4_combout\ = ((\NightNOTday18~combout\ & (\inst10|inst4~regout\)) # (!\NightNOTday18~combout\ & ((\inst9|inst4~regout\))))

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
	datab => \inst10|inst4~regout\,
	datac => \inst9|inst4~regout\,
	datad => \NightNOTday18~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst5|$00000|auto_generated|result_node[9]~4_combout\);

-- Location: LC_X7_Y4_N4
\inst5|$00000|auto_generated|result_node[9]~5\ : maxv_lcell
-- Equation(s):
-- \inst5|$00000|auto_generated|result_node[9]~5_combout\ = (\passiveNOTactive19~combout\ & (((\inst11|inst4~regout\)))) # (!\passiveNOTactive19~combout\ & (((\inst5|$00000|auto_generated|result_node[9]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \passiveNOTactive19~combout\,
	datac => \inst11|inst4~regout\,
	datad => \inst5|$00000|auto_generated|result_node[9]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst5|$00000|auto_generated|result_node[9]~5_combout\);

-- Location: LC_X3_Y6_N0
\inst38|inst4\ : maxv_lcell
-- Equation(s):
-- \inst38|inst4~regout\ = DFFEAS(GND, GLOBAL(\CLK~combout\), VCC, , \inst34|freezeParalell\, \inst6|LPM_SHIFTREG_component|dffs\(12), , , VCC)

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
	clk => \CLK~combout\,
	datac => \inst6|LPM_SHIFTREG_component|dffs\(12),
	aclr => GND,
	sload => VCC,
	ena => \inst34|freezeParalell\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst38|inst4~regout\);

-- Location: LC_X5_Y6_N2
\inst38|inst3\ : maxv_lcell
-- Equation(s):
-- \inst24|LPM_COMPARE_component|auto_generated|aeb_int~1\ = (\inst5|$00000|auto_generated|result_node[9]~5_combout\ & (\inst38|inst4~regout\ & (\inst5|$00000|auto_generated|result_node[10]~7_combout\ $ (!E4_inst3)))) # 
-- (!\inst5|$00000|auto_generated|result_node[9]~5_combout\ & (!\inst38|inst4~regout\ & (\inst5|$00000|auto_generated|result_node[10]~7_combout\ $ (!E4_inst3))))
-- \inst38|inst3~regout\ = DFFEAS(\inst24|LPM_COMPARE_component|auto_generated|aeb_int~1\, GLOBAL(\CLK~combout\), VCC, , \inst34|freezeParalell\, \inst6|LPM_SHIFTREG_component|dffs\(13), , , VCC)

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
	clk => \CLK~combout\,
	dataa => \inst5|$00000|auto_generated|result_node[9]~5_combout\,
	datab => \inst5|$00000|auto_generated|result_node[10]~7_combout\,
	datac => \inst6|LPM_SHIFTREG_component|dffs\(13),
	datad => \inst38|inst4~regout\,
	aclr => GND,
	sload => VCC,
	ena => \inst34|freezeParalell\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst24|LPM_COMPARE_component|auto_generated|aeb_int~1\,
	regout => \inst38|inst3~regout\);

-- Location: LC_X5_Y6_N3
\inst38|inst8\ : maxv_lcell
-- Equation(s):
-- \inst38|inst8~regout\ = DFFEAS(GND, GLOBAL(\CLK~combout\), VCC, , \inst34|freezeParalell\, \inst6|LPM_SHIFTREG_component|dffs\(8), , , VCC)

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
	clk => \CLK~combout\,
	datac => \inst6|LPM_SHIFTREG_component|dffs\(8),
	aclr => GND,
	sload => VCC,
	ena => \inst34|freezeParalell\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst38|inst8~regout\);

-- Location: LC_X9_Y6_N1
\inst5|$00000|auto_generated|result_node[5]~12\ : maxv_lcell
-- Equation(s):
-- \inst5|$00000|auto_generated|result_node[5]~12_combout\ = ((\NightNOTday18~combout\ & (\inst10|inst8~regout\)) # (!\NightNOTday18~combout\ & ((\inst9|inst8~regout\))))

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
	datab => \inst10|inst8~regout\,
	datac => \inst9|inst8~regout\,
	datad => \NightNOTday18~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst5|$00000|auto_generated|result_node[5]~12_combout\);

-- Location: LC_X8_Y6_N5
\inst5|$00000|auto_generated|result_node[5]~13\ : maxv_lcell
-- Equation(s):
-- \inst5|$00000|auto_generated|result_node[5]~13_combout\ = ((\passiveNOTactive19~combout\ & (\inst11|inst8~regout\)) # (!\passiveNOTactive19~combout\ & ((\inst5|$00000|auto_generated|result_node[5]~12_combout\))))

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
	datab => \passiveNOTactive19~combout\,
	datac => \inst11|inst8~regout\,
	datad => \inst5|$00000|auto_generated|result_node[5]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst5|$00000|auto_generated|result_node[5]~13_combout\);

-- Location: LC_X4_Y4_N4
\inst24|LPM_COMPARE_component|auto_generated|op_1~62\ : maxv_lcell
-- Equation(s):
-- \inst24|LPM_COMPARE_component|auto_generated|op_1~62_cout\ = CARRY((!\inst5|$00000|auto_generated|result_node[0]~25_combout\ & (\inst38|inst13~regout\)))

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
	dataa => \inst5|$00000|auto_generated|result_node[0]~25_combout\,
	datab => \inst38|inst13~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst24|LPM_COMPARE_component|auto_generated|op_1~60\,
	cout => \inst24|LPM_COMPARE_component|auto_generated|op_1~62_cout\);

-- Location: LC_X4_Y4_N5
\inst24|LPM_COMPARE_component|auto_generated|op_1~57\ : maxv_lcell
-- Equation(s):
-- \inst24|LPM_COMPARE_component|auto_generated|op_1~57_cout0\ = CARRY((\inst38|inst12~regout\ & (\inst5|$00000|auto_generated|result_node[1]~21_combout\ & !\inst24|LPM_COMPARE_component|auto_generated|op_1~62_cout\)) # (!\inst38|inst12~regout\ & 
-- ((\inst5|$00000|auto_generated|result_node[1]~21_combout\) # (!\inst24|LPM_COMPARE_component|auto_generated|op_1~62_cout\))))
-- \inst24|LPM_COMPARE_component|auto_generated|op_1~57COUT1_66\ = CARRY((\inst38|inst12~regout\ & (\inst5|$00000|auto_generated|result_node[1]~21_combout\ & !\inst24|LPM_COMPARE_component|auto_generated|op_1~62_cout\)) # (!\inst38|inst12~regout\ & 
-- ((\inst5|$00000|auto_generated|result_node[1]~21_combout\) # (!\inst24|LPM_COMPARE_component|auto_generated|op_1~62_cout\))))

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
	datab => \inst5|$00000|auto_generated|result_node[1]~21_combout\,
	cin => \inst24|LPM_COMPARE_component|auto_generated|op_1~62_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst24|LPM_COMPARE_component|auto_generated|op_1~55\,
	cout0 => \inst24|LPM_COMPARE_component|auto_generated|op_1~57_cout0\,
	cout1 => \inst24|LPM_COMPARE_component|auto_generated|op_1~57COUT1_66\);

-- Location: LC_X4_Y4_N6
\inst24|LPM_COMPARE_component|auto_generated|op_1~52\ : maxv_lcell
-- Equation(s):
-- \inst24|LPM_COMPARE_component|auto_generated|op_1~52_cout0\ = CARRY((\inst5|$00000|auto_generated|result_node[2]~23_combout\ & (\inst38|inst11~regout\ & !\inst24|LPM_COMPARE_component|auto_generated|op_1~57_cout0\)) # 
-- (!\inst5|$00000|auto_generated|result_node[2]~23_combout\ & ((\inst38|inst11~regout\) # (!\inst24|LPM_COMPARE_component|auto_generated|op_1~57_cout0\))))
-- \inst24|LPM_COMPARE_component|auto_generated|op_1~52COUT1_67\ = CARRY((\inst5|$00000|auto_generated|result_node[2]~23_combout\ & (\inst38|inst11~regout\ & !\inst24|LPM_COMPARE_component|auto_generated|op_1~57COUT1_66\)) # 
-- (!\inst5|$00000|auto_generated|result_node[2]~23_combout\ & ((\inst38|inst11~regout\) # (!\inst24|LPM_COMPARE_component|auto_generated|op_1~57COUT1_66\))))

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
	dataa => \inst5|$00000|auto_generated|result_node[2]~23_combout\,
	datab => \inst38|inst11~regout\,
	cin => \inst24|LPM_COMPARE_component|auto_generated|op_1~62_cout\,
	cin0 => \inst24|LPM_COMPARE_component|auto_generated|op_1~57_cout0\,
	cin1 => \inst24|LPM_COMPARE_component|auto_generated|op_1~57COUT1_66\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst24|LPM_COMPARE_component|auto_generated|op_1~50\,
	cout0 => \inst24|LPM_COMPARE_component|auto_generated|op_1~52_cout0\,
	cout1 => \inst24|LPM_COMPARE_component|auto_generated|op_1~52COUT1_67\);

-- Location: LC_X4_Y4_N7
\inst24|LPM_COMPARE_component|auto_generated|op_1~47\ : maxv_lcell
-- Equation(s):
-- \inst24|LPM_COMPARE_component|auto_generated|op_1~47_cout0\ = CARRY((\inst38|inst10~regout\ & (\inst5|$00000|auto_generated|result_node[3]~17_combout\ & !\inst24|LPM_COMPARE_component|auto_generated|op_1~52_cout0\)) # (!\inst38|inst10~regout\ & 
-- ((\inst5|$00000|auto_generated|result_node[3]~17_combout\) # (!\inst24|LPM_COMPARE_component|auto_generated|op_1~52_cout0\))))
-- \inst24|LPM_COMPARE_component|auto_generated|op_1~47COUT1_68\ = CARRY((\inst38|inst10~regout\ & (\inst5|$00000|auto_generated|result_node[3]~17_combout\ & !\inst24|LPM_COMPARE_component|auto_generated|op_1~52COUT1_67\)) # (!\inst38|inst10~regout\ & 
-- ((\inst5|$00000|auto_generated|result_node[3]~17_combout\) # (!\inst24|LPM_COMPARE_component|auto_generated|op_1~52COUT1_67\))))

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
	datab => \inst5|$00000|auto_generated|result_node[3]~17_combout\,
	cin => \inst24|LPM_COMPARE_component|auto_generated|op_1~62_cout\,
	cin0 => \inst24|LPM_COMPARE_component|auto_generated|op_1~52_cout0\,
	cin1 => \inst24|LPM_COMPARE_component|auto_generated|op_1~52COUT1_67\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst24|LPM_COMPARE_component|auto_generated|op_1~45\,
	cout0 => \inst24|LPM_COMPARE_component|auto_generated|op_1~47_cout0\,
	cout1 => \inst24|LPM_COMPARE_component|auto_generated|op_1~47COUT1_68\);

-- Location: LC_X4_Y4_N8
\inst24|LPM_COMPARE_component|auto_generated|op_1~42\ : maxv_lcell
-- Equation(s):
-- \inst24|LPM_COMPARE_component|auto_generated|op_1~42_cout0\ = CARRY((\inst38|inst9~regout\ & ((!\inst24|LPM_COMPARE_component|auto_generated|op_1~47_cout0\) # (!\inst5|$00000|auto_generated|result_node[4]~19_combout\))) # (!\inst38|inst9~regout\ & 
-- (!\inst5|$00000|auto_generated|result_node[4]~19_combout\ & !\inst24|LPM_COMPARE_component|auto_generated|op_1~47_cout0\)))
-- \inst24|LPM_COMPARE_component|auto_generated|op_1~42COUT1_69\ = CARRY((\inst38|inst9~regout\ & ((!\inst24|LPM_COMPARE_component|auto_generated|op_1~47COUT1_68\) # (!\inst5|$00000|auto_generated|result_node[4]~19_combout\))) # (!\inst38|inst9~regout\ & 
-- (!\inst5|$00000|auto_generated|result_node[4]~19_combout\ & !\inst24|LPM_COMPARE_component|auto_generated|op_1~47COUT1_68\)))

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
	datab => \inst5|$00000|auto_generated|result_node[4]~19_combout\,
	cin => \inst24|LPM_COMPARE_component|auto_generated|op_1~62_cout\,
	cin0 => \inst24|LPM_COMPARE_component|auto_generated|op_1~47_cout0\,
	cin1 => \inst24|LPM_COMPARE_component|auto_generated|op_1~47COUT1_68\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst24|LPM_COMPARE_component|auto_generated|op_1~40\,
	cout0 => \inst24|LPM_COMPARE_component|auto_generated|op_1~42_cout0\,
	cout1 => \inst24|LPM_COMPARE_component|auto_generated|op_1~42COUT1_69\);

-- Location: LC_X4_Y4_N9
\inst24|LPM_COMPARE_component|auto_generated|op_1~37\ : maxv_lcell
-- Equation(s):
-- \inst24|LPM_COMPARE_component|auto_generated|op_1~37_cout\ = CARRY((\inst38|inst8~regout\ & (\inst5|$00000|auto_generated|result_node[5]~13_combout\ & !\inst24|LPM_COMPARE_component|auto_generated|op_1~42COUT1_69\)) # (!\inst38|inst8~regout\ & 
-- ((\inst5|$00000|auto_generated|result_node[5]~13_combout\) # (!\inst24|LPM_COMPARE_component|auto_generated|op_1~42COUT1_69\))))

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
	datab => \inst5|$00000|auto_generated|result_node[5]~13_combout\,
	cin => \inst24|LPM_COMPARE_component|auto_generated|op_1~62_cout\,
	cin0 => \inst24|LPM_COMPARE_component|auto_generated|op_1~42_cout0\,
	cin1 => \inst24|LPM_COMPARE_component|auto_generated|op_1~42COUT1_69\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst24|LPM_COMPARE_component|auto_generated|op_1~35\,
	cout => \inst24|LPM_COMPARE_component|auto_generated|op_1~37_cout\);

-- Location: LC_X7_Y4_N2
\inst5|$00000|auto_generated|result_node[8]~10\ : maxv_lcell
-- Equation(s):
-- \inst5|$00000|auto_generated|result_node[8]~10_combout\ = ((\NightNOTday18~combout\ & (\inst10|inst5~regout\)) # (!\NightNOTday18~combout\ & ((\inst9|inst5~regout\))))

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
	datab => \inst10|inst5~regout\,
	datac => \inst9|inst5~regout\,
	datad => \NightNOTday18~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst5|$00000|auto_generated|result_node[8]~10_combout\);

-- Location: LC_X7_Y4_N5
\inst5|$00000|auto_generated|result_node[8]~11\ : maxv_lcell
-- Equation(s):
-- \inst5|$00000|auto_generated|result_node[8]~11_combout\ = ((\passiveNOTactive19~combout\ & (\inst11|inst5~regout\)) # (!\passiveNOTactive19~combout\ & ((\inst5|$00000|auto_generated|result_node[8]~10_combout\))))

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
	datab => \inst11|inst5~regout\,
	datac => \passiveNOTactive19~combout\,
	datad => \inst5|$00000|auto_generated|result_node[8]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst5|$00000|auto_generated|result_node[8]~11_combout\);

-- Location: LC_X5_Y6_N9
\inst38|inst6\ : maxv_lcell
-- Equation(s):
-- \inst38|inst6~regout\ = DFFEAS(GND, GLOBAL(\CLK~combout\), VCC, , \inst34|freezeParalell\, \inst6|LPM_SHIFTREG_component|dffs\(10), , , VCC)

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
	clk => \CLK~combout\,
	datac => \inst6|LPM_SHIFTREG_component|dffs\(10),
	aclr => GND,
	sload => VCC,
	ena => \inst34|freezeParalell\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst38|inst6~regout\);

-- Location: LC_X7_Y4_N9
\inst5|$00000|auto_generated|result_node[7]~8\ : maxv_lcell
-- Equation(s):
-- \inst5|$00000|auto_generated|result_node[7]~8_combout\ = ((\NightNOTday18~combout\ & (\inst10|inst6~regout\)) # (!\NightNOTday18~combout\ & ((\inst9|inst6~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst6~regout\,
	datac => \inst9|inst6~regout\,
	datad => \NightNOTday18~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst5|$00000|auto_generated|result_node[7]~8_combout\);

-- Location: LC_X7_Y4_N6
\inst5|$00000|auto_generated|result_node[7]~9\ : maxv_lcell
-- Equation(s):
-- \inst5|$00000|auto_generated|result_node[7]~9_combout\ = (\passiveNOTactive19~combout\ & (\inst11|inst6~regout\)) # (!\passiveNOTactive19~combout\ & (((\inst5|$00000|auto_generated|result_node[7]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd88",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \passiveNOTactive19~combout\,
	datab => \inst11|inst6~regout\,
	datad => \inst5|$00000|auto_generated|result_node[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst5|$00000|auto_generated|result_node[7]~9_combout\);

-- Location: LC_X5_Y6_N5
\inst38|inst5\ : maxv_lcell
-- Equation(s):
-- \inst24|LPM_COMPARE_component|auto_generated|aeb_int~2\ = (\inst5|$00000|auto_generated|result_node[8]~11_combout\ & (E4_inst5 & (\inst38|inst6~regout\ $ (!\inst5|$00000|auto_generated|result_node[7]~9_combout\)))) # 
-- (!\inst5|$00000|auto_generated|result_node[8]~11_combout\ & (!E4_inst5 & (\inst38|inst6~regout\ $ (!\inst5|$00000|auto_generated|result_node[7]~9_combout\))))
-- \inst38|inst5~regout\ = DFFEAS(\inst24|LPM_COMPARE_component|auto_generated|aeb_int~2\, GLOBAL(\CLK~combout\), VCC, , \inst34|freezeParalell\, \inst6|LPM_SHIFTREG_component|dffs\(11), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8421",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \inst5|$00000|auto_generated|result_node[8]~11_combout\,
	datab => \inst38|inst6~regout\,
	datac => \inst6|LPM_SHIFTREG_component|dffs\(11),
	datad => \inst5|$00000|auto_generated|result_node[7]~9_combout\,
	aclr => GND,
	sload => VCC,
	ena => \inst34|freezeParalell\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst24|LPM_COMPARE_component|auto_generated|aeb_int~2\,
	regout => \inst38|inst5~regout\);

-- Location: LC_X7_Y5_N8
\inst5|$00000|auto_generated|result_node[6]~14\ : maxv_lcell
-- Equation(s):
-- \inst5|$00000|auto_generated|result_node[6]~14_combout\ = ((\NightNOTday18~combout\ & (\inst10|inst7~regout\)) # (!\NightNOTday18~combout\ & ((\inst9|inst7~regout\))))

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
	datab => \inst10|inst7~regout\,
	datac => \inst9|inst7~regout\,
	datad => \NightNOTday18~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst5|$00000|auto_generated|result_node[6]~14_combout\);

-- Location: LC_X7_Y5_N1
\inst5|$00000|auto_generated|result_node[6]~15\ : maxv_lcell
-- Equation(s):
-- \inst5|$00000|auto_generated|result_node[6]~15_combout\ = ((\passiveNOTactive19~combout\ & (\inst11|inst7~regout\)) # (!\passiveNOTactive19~combout\ & ((\inst5|$00000|auto_generated|result_node[6]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst11|inst7~regout\,
	datac => \passiveNOTactive19~combout\,
	datad => \inst5|$00000|auto_generated|result_node[6]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst5|$00000|auto_generated|result_node[6]~15_combout\);

-- Location: LC_X5_Y6_N1
\inst38|inst7\ : maxv_lcell
-- Equation(s):
-- \inst24|LPM_COMPARE_component|auto_generated|aeb_int~3\ = (\inst5|$00000|auto_generated|result_node[5]~13_combout\ & (\inst38|inst8~regout\ & (\inst5|$00000|auto_generated|result_node[6]~15_combout\ $ (!E4_inst7)))) # 
-- (!\inst5|$00000|auto_generated|result_node[5]~13_combout\ & (!\inst38|inst8~regout\ & (\inst5|$00000|auto_generated|result_node[6]~15_combout\ $ (!E4_inst7))))
-- \inst38|inst7~regout\ = DFFEAS(\inst24|LPM_COMPARE_component|auto_generated|aeb_int~3\, GLOBAL(\CLK~combout\), VCC, , \inst34|freezeParalell\, \inst6|LPM_SHIFTREG_component|dffs\(9), , , VCC)

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
	clk => \CLK~combout\,
	dataa => \inst5|$00000|auto_generated|result_node[5]~13_combout\,
	datab => \inst5|$00000|auto_generated|result_node[6]~15_combout\,
	datac => \inst6|LPM_SHIFTREG_component|dffs\(9),
	datad => \inst38|inst8~regout\,
	aclr => GND,
	sload => VCC,
	ena => \inst34|freezeParalell\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst24|LPM_COMPARE_component|auto_generated|aeb_int~3\,
	regout => \inst38|inst7~regout\);

-- Location: LC_X5_Y4_N0
\inst24|LPM_COMPARE_component|auto_generated|op_1~32\ : maxv_lcell
-- Equation(s):
-- \inst24|LPM_COMPARE_component|auto_generated|op_1~32_cout0\ = CARRY((\inst38|inst7~regout\ & ((!\inst24|LPM_COMPARE_component|auto_generated|op_1~37_cout\) # (!\inst5|$00000|auto_generated|result_node[6]~15_combout\))) # (!\inst38|inst7~regout\ & 
-- (!\inst5|$00000|auto_generated|result_node[6]~15_combout\ & !\inst24|LPM_COMPARE_component|auto_generated|op_1~37_cout\)))
-- \inst24|LPM_COMPARE_component|auto_generated|op_1~32COUT1_70\ = CARRY((\inst38|inst7~regout\ & ((!\inst24|LPM_COMPARE_component|auto_generated|op_1~37_cout\) # (!\inst5|$00000|auto_generated|result_node[6]~15_combout\))) # (!\inst38|inst7~regout\ & 
-- (!\inst5|$00000|auto_generated|result_node[6]~15_combout\ & !\inst24|LPM_COMPARE_component|auto_generated|op_1~37_cout\)))

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
	datab => \inst5|$00000|auto_generated|result_node[6]~15_combout\,
	cin => \inst24|LPM_COMPARE_component|auto_generated|op_1~37_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst24|LPM_COMPARE_component|auto_generated|op_1~30\,
	cout0 => \inst24|LPM_COMPARE_component|auto_generated|op_1~32_cout0\,
	cout1 => \inst24|LPM_COMPARE_component|auto_generated|op_1~32COUT1_70\);

-- Location: LC_X5_Y4_N1
\inst24|LPM_COMPARE_component|auto_generated|op_1~27\ : maxv_lcell
-- Equation(s):
-- \inst24|LPM_COMPARE_component|auto_generated|op_1~27_cout0\ = CARRY((\inst38|inst6~regout\ & (\inst5|$00000|auto_generated|result_node[7]~9_combout\ & !\inst24|LPM_COMPARE_component|auto_generated|op_1~32_cout0\)) # (!\inst38|inst6~regout\ & 
-- ((\inst5|$00000|auto_generated|result_node[7]~9_combout\) # (!\inst24|LPM_COMPARE_component|auto_generated|op_1~32_cout0\))))
-- \inst24|LPM_COMPARE_component|auto_generated|op_1~27COUT1_71\ = CARRY((\inst38|inst6~regout\ & (\inst5|$00000|auto_generated|result_node[7]~9_combout\ & !\inst24|LPM_COMPARE_component|auto_generated|op_1~32COUT1_70\)) # (!\inst38|inst6~regout\ & 
-- ((\inst5|$00000|auto_generated|result_node[7]~9_combout\) # (!\inst24|LPM_COMPARE_component|auto_generated|op_1~32COUT1_70\))))

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
	datab => \inst5|$00000|auto_generated|result_node[7]~9_combout\,
	cin => \inst24|LPM_COMPARE_component|auto_generated|op_1~37_cout\,
	cin0 => \inst24|LPM_COMPARE_component|auto_generated|op_1~32_cout0\,
	cin1 => \inst24|LPM_COMPARE_component|auto_generated|op_1~32COUT1_70\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst24|LPM_COMPARE_component|auto_generated|op_1~25\,
	cout0 => \inst24|LPM_COMPARE_component|auto_generated|op_1~27_cout0\,
	cout1 => \inst24|LPM_COMPARE_component|auto_generated|op_1~27COUT1_71\);

-- Location: LC_X5_Y4_N2
\inst24|LPM_COMPARE_component|auto_generated|op_1~22\ : maxv_lcell
-- Equation(s):
-- \inst24|LPM_COMPARE_component|auto_generated|op_1~22_cout0\ = CARRY((\inst5|$00000|auto_generated|result_node[8]~11_combout\ & (\inst38|inst5~regout\ & !\inst24|LPM_COMPARE_component|auto_generated|op_1~27_cout0\)) # 
-- (!\inst5|$00000|auto_generated|result_node[8]~11_combout\ & ((\inst38|inst5~regout\) # (!\inst24|LPM_COMPARE_component|auto_generated|op_1~27_cout0\))))
-- \inst24|LPM_COMPARE_component|auto_generated|op_1~22COUT1_72\ = CARRY((\inst5|$00000|auto_generated|result_node[8]~11_combout\ & (\inst38|inst5~regout\ & !\inst24|LPM_COMPARE_component|auto_generated|op_1~27COUT1_71\)) # 
-- (!\inst5|$00000|auto_generated|result_node[8]~11_combout\ & ((\inst38|inst5~regout\) # (!\inst24|LPM_COMPARE_component|auto_generated|op_1~27COUT1_71\))))

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
	dataa => \inst5|$00000|auto_generated|result_node[8]~11_combout\,
	datab => \inst38|inst5~regout\,
	cin => \inst24|LPM_COMPARE_component|auto_generated|op_1~37_cout\,
	cin0 => \inst24|LPM_COMPARE_component|auto_generated|op_1~27_cout0\,
	cin1 => \inst24|LPM_COMPARE_component|auto_generated|op_1~27COUT1_71\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst24|LPM_COMPARE_component|auto_generated|op_1~20\,
	cout0 => \inst24|LPM_COMPARE_component|auto_generated|op_1~22_cout0\,
	cout1 => \inst24|LPM_COMPARE_component|auto_generated|op_1~22COUT1_72\);

-- Location: LC_X5_Y4_N3
\inst24|LPM_COMPARE_component|auto_generated|op_1~17\ : maxv_lcell
-- Equation(s):
-- \inst24|LPM_COMPARE_component|auto_generated|op_1~17_cout0\ = CARRY((\inst38|inst4~regout\ & (\inst5|$00000|auto_generated|result_node[9]~5_combout\ & !\inst24|LPM_COMPARE_component|auto_generated|op_1~22_cout0\)) # (!\inst38|inst4~regout\ & 
-- ((\inst5|$00000|auto_generated|result_node[9]~5_combout\) # (!\inst24|LPM_COMPARE_component|auto_generated|op_1~22_cout0\))))
-- \inst24|LPM_COMPARE_component|auto_generated|op_1~17COUT1_73\ = CARRY((\inst38|inst4~regout\ & (\inst5|$00000|auto_generated|result_node[9]~5_combout\ & !\inst24|LPM_COMPARE_component|auto_generated|op_1~22COUT1_72\)) # (!\inst38|inst4~regout\ & 
-- ((\inst5|$00000|auto_generated|result_node[9]~5_combout\) # (!\inst24|LPM_COMPARE_component|auto_generated|op_1~22COUT1_72\))))

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
	datab => \inst5|$00000|auto_generated|result_node[9]~5_combout\,
	cin => \inst24|LPM_COMPARE_component|auto_generated|op_1~37_cout\,
	cin0 => \inst24|LPM_COMPARE_component|auto_generated|op_1~22_cout0\,
	cin1 => \inst24|LPM_COMPARE_component|auto_generated|op_1~22COUT1_72\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst24|LPM_COMPARE_component|auto_generated|op_1~15\,
	cout0 => \inst24|LPM_COMPARE_component|auto_generated|op_1~17_cout0\,
	cout1 => \inst24|LPM_COMPARE_component|auto_generated|op_1~17COUT1_73\);

-- Location: LC_X5_Y4_N4
\inst24|LPM_COMPARE_component|auto_generated|op_1~12\ : maxv_lcell
-- Equation(s):
-- \inst24|LPM_COMPARE_component|auto_generated|op_1~12_cout\ = CARRY((\inst5|$00000|auto_generated|result_node[10]~7_combout\ & (\inst38|inst3~regout\ & !\inst24|LPM_COMPARE_component|auto_generated|op_1~17COUT1_73\)) # 
-- (!\inst5|$00000|auto_generated|result_node[10]~7_combout\ & ((\inst38|inst3~regout\) # (!\inst24|LPM_COMPARE_component|auto_generated|op_1~17COUT1_73\))))

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
	dataa => \inst5|$00000|auto_generated|result_node[10]~7_combout\,
	datab => \inst38|inst3~regout\,
	cin => \inst24|LPM_COMPARE_component|auto_generated|op_1~37_cout\,
	cin0 => \inst24|LPM_COMPARE_component|auto_generated|op_1~17_cout0\,
	cin1 => \inst24|LPM_COMPARE_component|auto_generated|op_1~17COUT1_73\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst24|LPM_COMPARE_component|auto_generated|op_1~10\,
	cout => \inst24|LPM_COMPARE_component|auto_generated|op_1~12_cout\);

-- Location: LC_X5_Y4_N5
\inst24|LPM_COMPARE_component|auto_generated|op_1~7\ : maxv_lcell
-- Equation(s):
-- \inst24|LPM_COMPARE_component|auto_generated|op_1~7_cout0\ = CARRY((\inst5|$00000|auto_generated|result_node[11]~1_combout\ & ((!\inst24|LPM_COMPARE_component|auto_generated|op_1~12_cout\) # (!\inst38|inst2~regout\))) # 
-- (!\inst5|$00000|auto_generated|result_node[11]~1_combout\ & (!\inst38|inst2~regout\ & !\inst24|LPM_COMPARE_component|auto_generated|op_1~12_cout\)))
-- \inst24|LPM_COMPARE_component|auto_generated|op_1~7COUT1_74\ = CARRY((\inst5|$00000|auto_generated|result_node[11]~1_combout\ & ((!\inst24|LPM_COMPARE_component|auto_generated|op_1~12_cout\) # (!\inst38|inst2~regout\))) # 
-- (!\inst5|$00000|auto_generated|result_node[11]~1_combout\ & (!\inst38|inst2~regout\ & !\inst24|LPM_COMPARE_component|auto_generated|op_1~12_cout\)))

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
	dataa => \inst5|$00000|auto_generated|result_node[11]~1_combout\,
	datab => \inst38|inst2~regout\,
	cin => \inst24|LPM_COMPARE_component|auto_generated|op_1~12_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst24|LPM_COMPARE_component|auto_generated|op_1~5\,
	cout0 => \inst24|LPM_COMPARE_component|auto_generated|op_1~7_cout0\,
	cout1 => \inst24|LPM_COMPARE_component|auto_generated|op_1~7COUT1_74\);

-- Location: LC_X5_Y4_N6
\inst24|LPM_COMPARE_component|auto_generated|op_1~0\ : maxv_lcell
-- Equation(s):
-- \inst24|LPM_COMPARE_component|auto_generated|op_1~0_combout\ = ((\inst5|$00000|auto_generated|result_node[12]~3_combout\ & ((!\inst38|inst1~regout\) # (!(!\inst24|LPM_COMPARE_component|auto_generated|op_1~12_cout\ & 
-- \inst24|LPM_COMPARE_component|auto_generated|op_1~7_cout0\) # (\inst24|LPM_COMPARE_component|auto_generated|op_1~12_cout\ & \inst24|LPM_COMPARE_component|auto_generated|op_1~7COUT1_74\)))) # (!\inst5|$00000|auto_generated|result_node[12]~3_combout\ & 
-- (!(!\inst24|LPM_COMPARE_component|auto_generated|op_1~12_cout\ & \inst24|LPM_COMPARE_component|auto_generated|op_1~7_cout0\) # (\inst24|LPM_COMPARE_component|auto_generated|op_1~12_cout\ & \inst24|LPM_COMPARE_component|auto_generated|op_1~7COUT1_74\) & 
-- !\inst38|inst1~regout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0ccf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst5|$00000|auto_generated|result_node[12]~3_combout\,
	datad => \inst38|inst1~regout\,
	cin => \inst24|LPM_COMPARE_component|auto_generated|op_1~12_cout\,
	cin0 => \inst24|LPM_COMPARE_component|auto_generated|op_1~7_cout0\,
	cin1 => \inst24|LPM_COMPARE_component|auto_generated|op_1~7COUT1_74\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst24|LPM_COMPARE_component|auto_generated|op_1~0_combout\);

-- Location: LC_X5_Y4_N9
\inst24|LPM_COMPARE_component|auto_generated|aeb_int~4\ : maxv_lcell
-- Equation(s):
-- \inst24|LPM_COMPARE_component|auto_generated|aeb_int~4_combout\ = (\inst24|LPM_COMPARE_component|auto_generated|aeb_int~1\ & (\inst24|LPM_COMPARE_component|auto_generated|aeb_int~3\ & (\inst24|LPM_COMPARE_component|auto_generated|aeb_int~2\ & 
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
	dataa => \inst24|LPM_COMPARE_component|auto_generated|aeb_int~1\,
	datab => \inst24|LPM_COMPARE_component|auto_generated|aeb_int~3\,
	datac => \inst24|LPM_COMPARE_component|auto_generated|aeb_int~2\,
	datad => \inst24|LPM_COMPARE_component|auto_generated|aeb_int~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst24|LPM_COMPARE_component|auto_generated|aeb_int~4_combout\);

-- Location: LC_X5_Y4_N7
\inst24|LPM_COMPARE_component|auto_generated|agb\ : maxv_lcell
-- Equation(s):
-- \inst24|LPM_COMPARE_component|auto_generated|agb~combout\ = ((\inst24|LPM_COMPARE_component|auto_generated|op_1~0_combout\) # ((\inst24|LPM_COMPARE_component|auto_generated|aeb_int~7\ & \inst24|LPM_COMPARE_component|auto_generated|aeb_int~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \inst24|LPM_COMPARE_component|auto_generated|aeb_int~7\,
	datac => \inst24|LPM_COMPARE_component|auto_generated|op_1~0_combout\,
	datad => \inst24|LPM_COMPARE_component|auto_generated|aeb_int~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst24|LPM_COMPARE_component|auto_generated|agb~combout\);

-- Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\passiveNOTactive~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_passiveNOTactive,
	combout => \passiveNOTactive~combout\);

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\NightNOTday~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_NightNOTday,
	combout => \NightNOTday~combout\);

-- Location: LC_X7_Y7_N0
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

-- Location: LC_X9_Y7_N7
\inst13|inst13\ : maxv_lcell
-- Equation(s):
-- \inst13|inst13~regout\ = DFFEAS((\Dec~combout\ & (((\inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(0))))) # (!\Dec~combout\ & ((\Inc~combout\ & ((\inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(0)))) # (!\Inc~combout\ & 
-- (\inst13|inst13~regout\)))), GLOBAL(\CLK~combout\), VCC, , , , , \Initialize~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe10",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Dec~combout\,
	datab => \Inc~combout\,
	datac => \inst13|inst13~regout\,
	datad => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(0),
	aclr => GND,
	sclr => \Initialize~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|inst13~regout\);

-- Location: LC_X7_Y7_N1
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

-- Location: LC_X4_Y7_N1
\inst13|inst12\ : maxv_lcell
-- Equation(s):
-- \inst13|inst12~regout\ = DFFEAS((\Dec~combout\ & (((\inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(1))))) # (!\Dec~combout\ & ((\Inc~combout\ & ((\inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(1)))) # (!\Inc~combout\ & 
-- (\inst13|inst12~regout\)))), GLOBAL(\CLK~combout\), VCC, , , , , \Initialize~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe04",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Dec~combout\,
	datab => \inst13|inst12~regout\,
	datac => \Inc~combout\,
	datad => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(1),
	aclr => GND,
	sclr => \Initialize~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|inst12~regout\);

-- Location: LC_X7_Y7_N2
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

-- Location: LC_X3_Y7_N8
\inst13|inst11\ : maxv_lcell
-- Equation(s):
-- \inst13|inst11~regout\ = DFFEAS((\Dec~combout\ & (((\inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(2))))) # (!\Dec~combout\ & ((\Inc~combout\ & ((\inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(2)))) # (!\Inc~combout\ & 
-- (\inst13|inst11~regout\)))), GLOBAL(\CLK~combout\), VCC, , , , , \Initialize~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe02",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \inst13|inst11~regout\,
	datab => \Dec~combout\,
	datac => \Inc~combout\,
	datad => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(2),
	aclr => GND,
	sclr => \Initialize~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|inst11~regout\);

-- Location: LC_X7_Y7_N3
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

-- Location: LC_X2_Y7_N8
\inst13|inst10\ : maxv_lcell
-- Equation(s):
-- \inst13|inst10~regout\ = DFFEAS((\Initialize~combout\) # ((\inst9|inst16~combout\ & ((\inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(3)))) # (!\inst9|inst16~combout\ & (\inst13|inst10~regout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fece",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \inst13|inst10~regout\,
	datab => \Initialize~combout\,
	datac => \inst9|inst16~combout\,
	datad => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(3),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|inst10~regout\);

-- Location: LC_X7_Y7_N4
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

-- Location: LC_X9_Y7_N9
\inst13|inst9\ : maxv_lcell
-- Equation(s):
-- \inst13|inst9~regout\ = DFFEAS((\Initialize~combout\) # ((\inst9|inst16~combout\ & ((\inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(4)))) # (!\inst9|inst16~combout\ & (\inst13|inst9~regout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

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
	datab => \inst13|inst9~regout\,
	datac => \inst9|inst16~combout\,
	datad => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(4),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|inst9~regout\);

-- Location: LC_X7_Y7_N5
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

-- Location: LC_X9_Y7_N6
\inst13|inst8\ : maxv_lcell
-- Equation(s):
-- \inst13|inst8~regout\ = DFFEAS((\Initialize~combout\) # ((\inst9|inst16~combout\ & ((\inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(5)))) # (!\inst9|inst16~combout\ & (\inst13|inst8~regout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

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
	datab => \inst13|inst8~regout\,
	datac => \inst9|inst16~combout\,
	datad => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(5),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|inst8~regout\);

-- Location: LC_X7_Y7_N6
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

-- Location: LC_X3_Y7_N3
\inst13|inst7\ : maxv_lcell
-- Equation(s):
-- \inst13|inst7~regout\ = DFFEAS((\Dec~combout\ & (((\inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(6))))) # (!\Dec~combout\ & ((\Inc~combout\ & ((\inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(6)))) # (!\Inc~combout\ & 
-- (\inst13|inst7~regout\)))), GLOBAL(\CLK~combout\), VCC, , , , , \Initialize~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe02",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \inst13|inst7~regout\,
	datab => \Dec~combout\,
	datac => \Inc~combout\,
	datad => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(6),
	aclr => GND,
	sclr => \Initialize~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|inst7~regout\);

-- Location: LC_X7_Y7_N7
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

-- Location: LC_X3_Y7_N9
\inst13|inst6\ : maxv_lcell
-- Equation(s):
-- \inst13|inst6~regout\ = DFFEAS((\Inc~combout\ & (((\inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(7))))) # (!\Inc~combout\ & ((\Dec~combout\ & ((\inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(7)))) # (!\Dec~combout\ & 
-- (\inst13|inst6~regout\)))), GLOBAL(\CLK~combout\), VCC, , , , , \Initialize~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe10",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Inc~combout\,
	datab => \Dec~combout\,
	datac => \inst13|inst6~regout\,
	datad => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(7),
	aclr => GND,
	sclr => \Initialize~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|inst6~regout\);

-- Location: LC_X7_Y7_N8
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

-- Location: LC_X2_Y7_N6
\inst13|inst5\ : maxv_lcell
-- Equation(s):
-- \inst13|inst5~regout\ = DFFEAS((\Initialize~combout\) # ((\inst9|inst16~combout\ & ((\inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(8)))) # (!\inst9|inst16~combout\ & (\inst13|inst5~regout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fedc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \inst9|inst16~combout\,
	datab => \Initialize~combout\,
	datac => \inst13|inst5~regout\,
	datad => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(8),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|inst5~regout\);

-- Location: LC_X7_Y7_N9
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

-- Location: LC_X9_Y7_N3
\inst13|inst4\ : maxv_lcell
-- Equation(s):
-- \inst13|inst4~regout\ = DFFEAS((\Dec~combout\ & (((\inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(9))))) # (!\Dec~combout\ & ((\Inc~combout\ & ((\inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(9)))) # (!\Inc~combout\ & 
-- (\inst13|inst4~regout\)))), GLOBAL(\CLK~combout\), VCC, , , , , \Initialize~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe10",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Dec~combout\,
	datab => \Inc~combout\,
	datac => \inst13|inst4~regout\,
	datad => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(9),
	aclr => GND,
	sclr => \Initialize~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|inst4~regout\);

-- Location: LC_X8_Y7_N0
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

-- Location: LC_X9_Y7_N5
\inst13|inst3\ : maxv_lcell
-- Equation(s):
-- \inst13|inst3~regout\ = DFFEAS((\Dec~combout\ & (((\inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(10))))) # (!\Dec~combout\ & ((\Inc~combout\ & ((\inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(10)))) # (!\Inc~combout\ & 
-- (\inst13|inst3~regout\)))), GLOBAL(\CLK~combout\), VCC, , , , , \Initialize~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe10",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Dec~combout\,
	datab => \Inc~combout\,
	datac => \inst13|inst3~regout\,
	datad => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(10),
	aclr => GND,
	sclr => \Initialize~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|inst3~regout\);

-- Location: LC_X8_Y7_N1
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

-- Location: LC_X9_Y7_N8
\inst13|inst2\ : maxv_lcell
-- Equation(s):
-- \inst13|inst2~regout\ = DFFEAS((\Dec~combout\ & (((\inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(11))))) # (!\Dec~combout\ & ((\Inc~combout\ & (\inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(11))) # (!\Inc~combout\ & 
-- ((\inst13|inst2~regout\))))), GLOBAL(\CLK~combout\), VCC, , , , , \Initialize~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f1e0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Dec~combout\,
	datab => \Inc~combout\,
	datac => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(11),
	datad => \inst13|inst2~regout\,
	aclr => GND,
	sclr => \Initialize~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|inst2~regout\);

-- Location: LC_X8_Y7_N2
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

-- Location: LC_X9_Y7_N1
\inst13|inst1\ : maxv_lcell
-- Equation(s):
-- \inst13|inst1~regout\ = DFFEAS((\Dec~combout\ & (((\inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(12))))) # (!\Dec~combout\ & ((\Inc~combout\ & ((\inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(12)))) # (!\Inc~combout\ & 
-- (\inst13|inst1~regout\)))), GLOBAL(\CLK~combout\), VCC, , , , , \Initialize~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe04",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Dec~combout\,
	datab => \inst13|inst1~regout\,
	datac => \Inc~combout\,
	datad => \inst13|inst|LPM_ADD_SUB_component|stratix_adder|result\(12),
	aclr => GND,
	sclr => \Initialize~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst13|inst1~regout\);

-- Location: LC_X5_Y7_N0
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

-- Location: LC_X4_Y7_N7
\inst12|inst13\ : maxv_lcell
-- Equation(s):
-- \inst12|inst13~regout\ = DFFEAS((\Inc~combout\ & (((\inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(0))))) # (!\Inc~combout\ & ((\Dec~combout\ & ((\inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(0)))) # (!\Dec~combout\ & 
-- (\inst12|inst13~regout\)))), GLOBAL(\CLK~combout\), VCC, , , , , \Initialize~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0e4",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Inc~combout\,
	datab => \inst12|inst13~regout\,
	datac => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(0),
	datad => \Dec~combout\,
	aclr => GND,
	sclr => \Initialize~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|inst13~regout\);

-- Location: LC_X5_Y7_N1
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

-- Location: LC_X9_Y7_N4
\inst12|inst12\ : maxv_lcell
-- Equation(s):
-- \inst12|inst12~regout\ = DFFEAS((\Dec~combout\ & (((\inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(1))))) # (!\Dec~combout\ & ((\Inc~combout\ & (\inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(1))) # (!\Inc~combout\ & 
-- ((\inst12|inst12~regout\))))), GLOBAL(\CLK~combout\), VCC, , , , , \Initialize~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f1e0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Dec~combout\,
	datab => \Inc~combout\,
	datac => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(1),
	datad => \inst12|inst12~regout\,
	aclr => GND,
	sclr => \Initialize~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|inst12~regout\);

-- Location: LC_X5_Y7_N2
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

-- Location: LC_X4_Y7_N6
\inst12|inst11\ : maxv_lcell
-- Equation(s):
-- \inst12|inst11~regout\ = DFFEAS((\Inc~combout\ & (((\inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(2))))) # (!\Inc~combout\ & ((\Dec~combout\ & ((\inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(2)))) # (!\Dec~combout\ & 
-- (\inst12|inst11~regout\)))), GLOBAL(\CLK~combout\), VCC, , , , , \Initialize~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0e2",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \inst12|inst11~regout\,
	datab => \Inc~combout\,
	datac => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(2),
	datad => \Dec~combout\,
	aclr => GND,
	sclr => \Initialize~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|inst11~regout\);

-- Location: LC_X5_Y7_N3
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

-- Location: LC_X4_Y7_N9
\inst12|inst10\ : maxv_lcell
-- Equation(s):
-- \inst12|inst10~regout\ = DFFEAS((\Initialize~combout\) # ((\inst9|inst16~combout\ & ((\inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(3)))) # (!\inst9|inst16~combout\ & (\inst12|inst10~regout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

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
	datab => \inst12|inst10~regout\,
	datac => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(3),
	datad => \inst9|inst16~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|inst10~regout\);

-- Location: LC_X5_Y7_N4
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

-- Location: LC_X4_Y7_N5
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

-- Location: LC_X5_Y7_N5
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

-- Location: LC_X4_Y7_N2
\inst12|inst8\ : maxv_lcell
-- Equation(s):
-- \inst12|inst8~regout\ = DFFEAS((\Initialize~combout\) # ((\inst9|inst16~combout\ & ((\inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(5)))) # (!\inst9|inst16~combout\ & (\inst12|inst8~regout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

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
	datac => \inst12|inst8~regout\,
	datad => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(5),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|inst8~regout\);

-- Location: LC_X5_Y7_N6
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

-- Location: LC_X4_Y7_N8
\inst12|inst7\ : maxv_lcell
-- Equation(s):
-- \inst12|inst7~regout\ = DFFEAS((\Inc~combout\ & (((\inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(6))))) # (!\Inc~combout\ & ((\Dec~combout\ & ((\inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(6)))) # (!\Dec~combout\ & 
-- (\inst12|inst7~regout\)))), GLOBAL(\CLK~combout\), VCC, , , , , \Initialize~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0e2",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \inst12|inst7~regout\,
	datab => \Inc~combout\,
	datac => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(6),
	datad => \Dec~combout\,
	aclr => GND,
	sclr => \Initialize~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|inst7~regout\);

-- Location: LC_X5_Y7_N7
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

-- Location: LC_X4_Y7_N4
\inst12|inst6\ : maxv_lcell
-- Equation(s):
-- \inst12|inst6~regout\ = DFFEAS((\Dec~combout\ & (((\inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(7))))) # (!\Dec~combout\ & ((\Inc~combout\ & ((\inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(7)))) # (!\Inc~combout\ & 
-- (\inst12|inst6~regout\)))), GLOBAL(\CLK~combout\), VCC, , , , , \Initialize~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe02",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \inst12|inst6~regout\,
	datab => \Dec~combout\,
	datac => \Inc~combout\,
	datad => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(7),
	aclr => GND,
	sclr => \Initialize~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|inst6~regout\);

-- Location: LC_X5_Y7_N8
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

-- Location: LC_X4_Y7_N0
\inst12|inst5\ : maxv_lcell
-- Equation(s):
-- \inst12|inst5~regout\ = DFFEAS((\Initialize~combout\) # ((\inst9|inst16~combout\ & ((\inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(8)))) # (!\inst9|inst16~combout\ & (\inst12|inst5~regout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

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
	datac => \inst12|inst5~regout\,
	datad => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(8),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|inst5~regout\);

-- Location: LC_X5_Y7_N9
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

-- Location: LC_X4_Y7_N3
\inst12|inst4\ : maxv_lcell
-- Equation(s):
-- \inst12|inst4~regout\ = DFFEAS((\Inc~combout\ & (((\inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(9))))) # (!\Inc~combout\ & ((\Dec~combout\ & ((\inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(9)))) # (!\Dec~combout\ & 
-- (\inst12|inst4~regout\)))), GLOBAL(\CLK~combout\), VCC, , , , , \Initialize~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0e2",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \inst12|inst4~regout\,
	datab => \Inc~combout\,
	datac => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(9),
	datad => \Dec~combout\,
	aclr => GND,
	sclr => \Initialize~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|inst4~regout\);

-- Location: LC_X6_Y7_N0
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

-- Location: LC_X6_Y6_N5
\inst12|inst3\ : maxv_lcell
-- Equation(s):
-- \inst12|inst3~regout\ = DFFEAS((\Dec~combout\ & (((\inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(10))))) # (!\Dec~combout\ & ((\Inc~combout\ & ((\inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(10)))) # (!\Inc~combout\ & 
-- (\inst12|inst3~regout\)))), GLOBAL(\CLK~combout\), VCC, , , , , \Initialize~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe02",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \inst12|inst3~regout\,
	datab => \Dec~combout\,
	datac => \Inc~combout\,
	datad => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(10),
	aclr => GND,
	sclr => \Initialize~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|inst3~regout\);

-- Location: LC_X6_Y7_N1
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

-- Location: LC_X3_Y7_N6
\inst12|inst2\ : maxv_lcell
-- Equation(s):
-- \inst12|inst2~regout\ = DFFEAS((\Inc~combout\ & (((\inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(11))))) # (!\Inc~combout\ & ((\Dec~combout\ & ((\inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(11)))) # (!\Dec~combout\ & 
-- (\inst12|inst2~regout\)))), GLOBAL(\CLK~combout\), VCC, , , , , \Initialize~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe10",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Inc~combout\,
	datab => \Dec~combout\,
	datac => \inst12|inst2~regout\,
	datad => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(11),
	aclr => GND,
	sclr => \Initialize~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|inst2~regout\);

-- Location: LC_X6_Y7_N2
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

-- Location: LC_X9_Y7_N2
\inst12|inst1\ : maxv_lcell
-- Equation(s):
-- \inst12|inst1~regout\ = DFFEAS((\Dec~combout\ & (((\inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(12))))) # (!\Dec~combout\ & ((\Inc~combout\ & ((\inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(12)))) # (!\Inc~combout\ & 
-- (\inst12|inst1~regout\)))), GLOBAL(\CLK~combout\), VCC, , , , , \Initialize~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe04",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Dec~combout\,
	datab => \inst12|inst1~regout\,
	datac => \Inc~combout\,
	datad => \inst12|inst|LPM_ADD_SUB_component|stratix_adder|result\(12),
	aclr => GND,
	sclr => \Initialize~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst12|inst1~regout\);

-- Location: LC_X6_Y7_N5
\inst2|$00000|auto_generated|result_node[12]~0\ : maxv_lcell
-- Equation(s):
-- \inst2|$00000|auto_generated|result_node[12]~0_combout\ = ((\NightNOTday~combout\ & (\inst13|inst1~regout\)) # (!\NightNOTday~combout\ & ((\inst12|inst1~regout\))))

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
	datab => \NightNOTday~combout\,
	datac => \inst13|inst1~regout\,
	datad => \inst12|inst1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|$00000|auto_generated|result_node[12]~0_combout\);

-- Location: LC_X4_Y5_N0
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

-- Location: LC_X3_Y5_N2
\inst14|inst13\ : maxv_lcell
-- Equation(s):
-- \inst14|inst13~regout\ = DFFEAS((\Inc~combout\ & (((\inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(0))))) # (!\Inc~combout\ & ((\Dec~combout\ & (\inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(0))) # (!\Dec~combout\ & 
-- ((\inst14|inst13~regout\))))), GLOBAL(\CLK~combout\), VCC, , , , , \Initialize~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f1e0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Inc~combout\,
	datab => \Dec~combout\,
	datac => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(0),
	datad => \inst14|inst13~regout\,
	aclr => GND,
	sclr => \Initialize~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|inst13~regout\);

-- Location: LC_X4_Y5_N1
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

-- Location: LC_X3_Y5_N4
\inst14|inst12\ : maxv_lcell
-- Equation(s):
-- \inst14|inst12~regout\ = DFFEAS((\Inc~combout\ & (((\inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(1))))) # (!\Inc~combout\ & ((\Dec~combout\ & ((\inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(1)))) # (!\Dec~combout\ & 
-- (\inst14|inst12~regout\)))), GLOBAL(\CLK~combout\), VCC, , , , , \Initialize~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe10",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Inc~combout\,
	datab => \Dec~combout\,
	datac => \inst14|inst12~regout\,
	datad => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(1),
	aclr => GND,
	sclr => \Initialize~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|inst12~regout\);

-- Location: LC_X4_Y5_N2
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

-- Location: LC_X3_Y5_N9
\inst14|inst11\ : maxv_lcell
-- Equation(s):
-- \inst14|inst11~regout\ = DFFEAS((\Inc~combout\ & (((\inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(2))))) # (!\Inc~combout\ & ((\Dec~combout\ & (\inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(2))) # (!\Dec~combout\ & 
-- ((\inst14|inst11~regout\))))), GLOBAL(\CLK~combout\), VCC, , , , , \Initialize~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f1e0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Inc~combout\,
	datab => \Dec~combout\,
	datac => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(2),
	datad => \inst14|inst11~regout\,
	aclr => GND,
	sclr => \Initialize~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|inst11~regout\);

-- Location: LC_X4_Y5_N3
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

-- Location: LC_X3_Y5_N3
\inst14|inst10\ : maxv_lcell
-- Equation(s):
-- \inst14|inst10~regout\ = DFFEAS((\Initialize~combout\) # ((\inst9|inst16~combout\ & (\inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(3))) # (!\inst9|inst16~combout\ & ((\inst14|inst10~regout\)))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fdec",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \inst9|inst16~combout\,
	datab => \Initialize~combout\,
	datac => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(3),
	datad => \inst14|inst10~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|inst10~regout\);

-- Location: LC_X4_Y5_N4
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

-- Location: LC_X3_Y5_N7
\inst14|inst9\ : maxv_lcell
-- Equation(s):
-- \inst14|inst9~regout\ = DFFEAS((\Initialize~combout\) # ((\inst9|inst16~combout\ & ((\inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(4)))) # (!\inst9|inst16~combout\ & (\inst14|inst9~regout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fedc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \inst9|inst16~combout\,
	datab => \Initialize~combout\,
	datac => \inst14|inst9~regout\,
	datad => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(4),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|inst9~regout\);

-- Location: LC_X4_Y5_N5
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

-- Location: LC_X3_Y5_N1
\inst14|inst8\ : maxv_lcell
-- Equation(s):
-- \inst14|inst8~regout\ = DFFEAS((\Initialize~combout\) # ((\inst9|inst16~combout\ & ((\inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(5)))) # (!\inst9|inst16~combout\ & (\inst14|inst8~regout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fedc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \inst9|inst16~combout\,
	datab => \Initialize~combout\,
	datac => \inst14|inst8~regout\,
	datad => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(5),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|inst8~regout\);

-- Location: LC_X4_Y5_N6
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

-- Location: LC_X3_Y5_N8
\inst14|inst7\ : maxv_lcell
-- Equation(s):
-- \inst14|inst7~regout\ = DFFEAS((\Inc~combout\ & (((\inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(6))))) # (!\Inc~combout\ & ((\Dec~combout\ & (\inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(6))) # (!\Dec~combout\ & 
-- ((\inst14|inst7~regout\))))), GLOBAL(\CLK~combout\), VCC, , , , , \Initialize~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f1e0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Inc~combout\,
	datab => \Dec~combout\,
	datac => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(6),
	datad => \inst14|inst7~regout\,
	aclr => GND,
	sclr => \Initialize~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|inst7~regout\);

-- Location: LC_X4_Y5_N7
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

-- Location: LC_X6_Y5_N7
\inst14|inst6\ : maxv_lcell
-- Equation(s):
-- \inst14|inst6~regout\ = DFFEAS((\Inc~combout\ & (((\inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(7))))) # (!\Inc~combout\ & ((\Dec~combout\ & ((\inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(7)))) # (!\Dec~combout\ & 
-- (\inst14|inst6~regout\)))), GLOBAL(\CLK~combout\), VCC, , , , , \Initialize~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0e4",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Inc~combout\,
	datab => \inst14|inst6~regout\,
	datac => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(7),
	datad => \Dec~combout\,
	aclr => GND,
	sclr => \Initialize~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|inst6~regout\);

-- Location: LC_X4_Y5_N8
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

-- Location: LC_X3_Y5_N0
\inst14|inst5\ : maxv_lcell
-- Equation(s):
-- \inst14|inst5~regout\ = DFFEAS((\Initialize~combout\) # ((\inst9|inst16~combout\ & ((\inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(8)))) # (!\inst9|inst16~combout\ & (\inst14|inst5~regout\))), GLOBAL(\CLK~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fedc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \inst9|inst16~combout\,
	datab => \Initialize~combout\,
	datac => \inst14|inst5~regout\,
	datad => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(8),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|inst5~regout\);

-- Location: LC_X4_Y5_N9
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

-- Location: LC_X3_Y5_N6
\inst14|inst4\ : maxv_lcell
-- Equation(s):
-- \inst14|inst4~regout\ = DFFEAS((\Inc~combout\ & (((\inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(9))))) # (!\Inc~combout\ & ((\Dec~combout\ & (\inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(9))) # (!\Dec~combout\ & 
-- ((\inst14|inst4~regout\))))), GLOBAL(\CLK~combout\), VCC, , , , , \Initialize~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f1e0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Inc~combout\,
	datab => \Dec~combout\,
	datac => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(9),
	datad => \inst14|inst4~regout\,
	aclr => GND,
	sclr => \Initialize~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|inst4~regout\);

-- Location: LC_X5_Y5_N0
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

-- Location: LC_X6_Y5_N2
\inst14|inst3\ : maxv_lcell
-- Equation(s):
-- \inst14|inst3~regout\ = DFFEAS((\Dec~combout\ & (((\inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(10))))) # (!\Dec~combout\ & ((\Inc~combout\ & ((\inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(10)))) # (!\Inc~combout\ & 
-- (\inst14|inst3~regout\)))), GLOBAL(\CLK~combout\), VCC, , , , , \Initialize~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe02",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \inst14|inst3~regout\,
	datab => \Dec~combout\,
	datac => \Inc~combout\,
	datad => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(10),
	aclr => GND,
	sclr => \Initialize~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|inst3~regout\);

-- Location: LC_X5_Y5_N1
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

-- Location: LC_X6_Y5_N8
\inst14|inst2\ : maxv_lcell
-- Equation(s):
-- \inst14|inst2~regout\ = DFFEAS((\Inc~combout\ & (((\inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(11))))) # (!\Inc~combout\ & ((\Dec~combout\ & (\inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(11))) # (!\Dec~combout\ & 
-- ((\inst14|inst2~regout\))))), GLOBAL(\CLK~combout\), VCC, , , , , \Initialize~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f1e0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Inc~combout\,
	datab => \Dec~combout\,
	datac => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(11),
	datad => \inst14|inst2~regout\,
	aclr => GND,
	sclr => \Initialize~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|inst2~regout\);

-- Location: LC_X5_Y5_N2
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

-- Location: LC_X6_Y5_N1
\inst14|inst1\ : maxv_lcell
-- Equation(s):
-- \inst14|inst1~regout\ = DFFEAS((\Inc~combout\ & (((\inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(12))))) # (!\Inc~combout\ & ((\Dec~combout\ & ((\inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(12)))) # (!\Dec~combout\ & 
-- (\inst14|inst1~regout\)))), GLOBAL(\CLK~combout\), VCC, , , , , \Initialize~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe10",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \Inc~combout\,
	datab => \Dec~combout\,
	datac => \inst14|inst1~regout\,
	datad => \inst14|inst|LPM_ADD_SUB_component|stratix_adder|result\(12),
	aclr => GND,
	sclr => \Initialize~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst14|inst1~regout\);

-- Location: LC_X5_Y5_N3
\inst2|$00000|auto_generated|result_node[12]~1\ : maxv_lcell
-- Equation(s):
-- \inst2|$00000|auto_generated|result_node[12]~1_combout\ = ((\passiveNOTactive~combout\ & ((\inst14|inst1~regout\))) # (!\passiveNOTactive~combout\ & (\inst2|$00000|auto_generated|result_node[12]~0_combout\)))

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
	datab => \passiveNOTactive~combout\,
	datac => \inst2|$00000|auto_generated|result_node[12]~0_combout\,
	datad => \inst14|inst1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|$00000|auto_generated|result_node[12]~1_combout\);

-- Location: LC_X6_Y7_N3
\inst2|$00000|auto_generated|result_node[10]~4\ : maxv_lcell
-- Equation(s):
-- \inst2|$00000|auto_generated|result_node[10]~4_combout\ = ((\NightNOTday~combout\ & (\inst13|inst3~regout\)) # (!\NightNOTday~combout\ & ((\inst12|inst3~regout\))))

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
	datab => \NightNOTday~combout\,
	datac => \inst13|inst3~regout\,
	datad => \inst12|inst3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|$00000|auto_generated|result_node[10]~4_combout\);

-- Location: LC_X5_Y5_N9
\inst2|$00000|auto_generated|result_node[10]~5\ : maxv_lcell
-- Equation(s):
-- \inst2|$00000|auto_generated|result_node[10]~5_combout\ = ((\passiveNOTactive~combout\ & (\inst14|inst3~regout\)) # (!\passiveNOTactive~combout\ & ((\inst2|$00000|auto_generated|result_node[10]~4_combout\))))

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
	datab => \inst14|inst3~regout\,
	datac => \inst2|$00000|auto_generated|result_node[10]~4_combout\,
	datad => \passiveNOTactive~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|$00000|auto_generated|result_node[10]~5_combout\);

-- Location: LC_X6_Y7_N4
\inst2|$00000|auto_generated|result_node[5]~14\ : maxv_lcell
-- Equation(s):
-- \inst2|$00000|auto_generated|result_node[5]~14_combout\ = ((\NightNOTday~combout\ & (\inst13|inst8~regout\)) # (!\NightNOTday~combout\ & ((\inst12|inst8~regout\))))

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
	datab => \NightNOTday~combout\,
	datac => \inst13|inst8~regout\,
	datad => \inst12|inst8~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|$00000|auto_generated|result_node[5]~14_combout\);

-- Location: LC_X2_Y5_N6
\inst2|$00000|auto_generated|result_node[5]~15\ : maxv_lcell
-- Equation(s):
-- \inst2|$00000|auto_generated|result_node[5]~15_combout\ = ((\passiveNOTactive~combout\ & (\inst14|inst8~regout\)) # (!\passiveNOTactive~combout\ & ((\inst2|$00000|auto_generated|result_node[5]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aacc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst8~regout\,
	datab => \inst2|$00000|auto_generated|result_node[5]~14_combout\,
	datad => \passiveNOTactive~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|$00000|auto_generated|result_node[5]~15_combout\);

-- Location: LC_X4_Y6_N9
\inst2|$00000|auto_generated|result_node[0]~24\ : maxv_lcell
-- Equation(s):
-- \inst2|$00000|auto_generated|result_node[0]~24_combout\ = ((\NightNOTday~combout\ & ((\inst13|inst13~regout\))) # (!\NightNOTday~combout\ & (\inst12|inst13~regout\)))

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
	datab => \inst12|inst13~regout\,
	datac => \inst13|inst13~regout\,
	datad => \NightNOTday~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|$00000|auto_generated|result_node[0]~24_combout\);

-- Location: LC_X2_Y5_N5
\inst2|$00000|auto_generated|result_node[0]~25\ : maxv_lcell
-- Equation(s):
-- \inst2|$00000|auto_generated|result_node[0]~25_combout\ = ((\passiveNOTactive~combout\ & (\inst14|inst13~regout\)) # (!\passiveNOTactive~combout\ & ((\inst2|$00000|auto_generated|result_node[0]~24_combout\))))

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
	datab => \inst14|inst13~regout\,
	datac => \inst2|$00000|auto_generated|result_node[0]~24_combout\,
	datad => \passiveNOTactive~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|$00000|auto_generated|result_node[0]~25_combout\);

-- Location: LC_X2_Y4_N4
\inst23|LPM_COMPARE_component|auto_generated|op_1~62\ : maxv_lcell
-- Equation(s):
-- \inst23|LPM_COMPARE_component|auto_generated|op_1~62_cout\ = CARRY((\inst38|inst13~regout\ & (!\inst2|$00000|auto_generated|result_node[0]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff22",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst38|inst13~regout\,
	datab => \inst2|$00000|auto_generated|result_node[0]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst23|LPM_COMPARE_component|auto_generated|op_1~60\,
	cout => \inst23|LPM_COMPARE_component|auto_generated|op_1~62_cout\);

-- Location: LC_X6_Y7_N8
\inst2|$00000|auto_generated|result_node[4]~16\ : maxv_lcell
-- Equation(s):
-- \inst2|$00000|auto_generated|result_node[4]~16_combout\ = ((\NightNOTday~combout\ & ((\inst13|inst9~regout\))) # (!\NightNOTday~combout\ & (\inst12|inst9~regout\)))

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
	datab => \inst12|inst9~regout\,
	datac => \inst13|inst9~regout\,
	datad => \NightNOTday~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|$00000|auto_generated|result_node[4]~16_combout\);

-- Location: LC_X2_Y5_N2
\inst2|$00000|auto_generated|result_node[4]~17\ : maxv_lcell
-- Equation(s):
-- \inst2|$00000|auto_generated|result_node[4]~17_combout\ = ((\passiveNOTactive~combout\ & ((\inst14|inst9~regout\))) # (!\passiveNOTactive~combout\ & (\inst2|$00000|auto_generated|result_node[4]~16_combout\)))

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
	datab => \inst2|$00000|auto_generated|result_node[4]~16_combout\,
	datac => \inst14|inst9~regout\,
	datad => \passiveNOTactive~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|$00000|auto_generated|result_node[4]~17_combout\);

-- Location: LC_X2_Y7_N5
\inst2|$00000|auto_generated|result_node[3]~18\ : maxv_lcell
-- Equation(s):
-- \inst2|$00000|auto_generated|result_node[3]~18_combout\ = ((\NightNOTday~combout\ & (\inst13|inst10~regout\)) # (!\NightNOTday~combout\ & ((\inst12|inst10~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst10~regout\,
	datac => \NightNOTday~combout\,
	datad => \inst12|inst10~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|$00000|auto_generated|result_node[3]~18_combout\);

-- Location: LC_X2_Y5_N8
\inst2|$00000|auto_generated|result_node[3]~19\ : maxv_lcell
-- Equation(s):
-- \inst2|$00000|auto_generated|result_node[3]~19_combout\ = ((\passiveNOTactive~combout\ & ((\inst14|inst10~regout\))) # (!\passiveNOTactive~combout\ & (\inst2|$00000|auto_generated|result_node[3]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|$00000|auto_generated|result_node[3]~18_combout\,
	datac => \inst14|inst10~regout\,
	datad => \passiveNOTactive~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|$00000|auto_generated|result_node[3]~19_combout\);

-- Location: LC_X3_Y7_N7
\inst2|$00000|auto_generated|result_node[2]~20\ : maxv_lcell
-- Equation(s):
-- \inst2|$00000|auto_generated|result_node[2]~20_combout\ = ((\NightNOTday~combout\ & (\inst13|inst11~regout\)) # (!\NightNOTday~combout\ & ((\inst12|inst11~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst11~regout\,
	datac => \inst12|inst11~regout\,
	datad => \NightNOTday~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|$00000|auto_generated|result_node[2]~20_combout\);

-- Location: LC_X2_Y5_N0
\inst2|$00000|auto_generated|result_node[2]~21\ : maxv_lcell
-- Equation(s):
-- \inst2|$00000|auto_generated|result_node[2]~21_combout\ = ((\passiveNOTactive~combout\ & ((\inst14|inst11~regout\))) # (!\passiveNOTactive~combout\ & (\inst2|$00000|auto_generated|result_node[2]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|$00000|auto_generated|result_node[2]~20_combout\,
	datac => \inst14|inst11~regout\,
	datad => \passiveNOTactive~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|$00000|auto_generated|result_node[2]~21_combout\);

-- Location: LC_X6_Y7_N7
\inst2|$00000|auto_generated|result_node[1]~22\ : maxv_lcell
-- Equation(s):
-- \inst2|$00000|auto_generated|result_node[1]~22_combout\ = ((\NightNOTday~combout\ & (\inst13|inst12~regout\)) # (!\NightNOTday~combout\ & ((\inst12|inst12~regout\))))

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
	datab => \inst13|inst12~regout\,
	datac => \inst12|inst12~regout\,
	datad => \NightNOTday~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|$00000|auto_generated|result_node[1]~22_combout\);

-- Location: LC_X2_Y5_N3
\inst2|$00000|auto_generated|result_node[1]~23\ : maxv_lcell
-- Equation(s):
-- \inst2|$00000|auto_generated|result_node[1]~23_combout\ = ((\passiveNOTactive~combout\ & ((\inst14|inst12~regout\))) # (!\passiveNOTactive~combout\ & (\inst2|$00000|auto_generated|result_node[1]~22_combout\)))

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
	datab => \inst2|$00000|auto_generated|result_node[1]~22_combout\,
	datac => \inst14|inst12~regout\,
	datad => \passiveNOTactive~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|$00000|auto_generated|result_node[1]~23_combout\);

-- Location: LC_X2_Y4_N5
\inst23|LPM_COMPARE_component|auto_generated|op_1~57\ : maxv_lcell
-- Equation(s):
-- \inst23|LPM_COMPARE_component|auto_generated|op_1~57_cout0\ = CARRY((\inst2|$00000|auto_generated|result_node[1]~23_combout\ & ((!\inst23|LPM_COMPARE_component|auto_generated|op_1~62_cout\) # (!\inst38|inst12~regout\))) # 
-- (!\inst2|$00000|auto_generated|result_node[1]~23_combout\ & (!\inst38|inst12~regout\ & !\inst23|LPM_COMPARE_component|auto_generated|op_1~62_cout\)))
-- \inst23|LPM_COMPARE_component|auto_generated|op_1~57COUT1_66\ = CARRY((\inst2|$00000|auto_generated|result_node[1]~23_combout\ & ((!\inst23|LPM_COMPARE_component|auto_generated|op_1~62_cout\) # (!\inst38|inst12~regout\))) # 
-- (!\inst2|$00000|auto_generated|result_node[1]~23_combout\ & (!\inst38|inst12~regout\ & !\inst23|LPM_COMPARE_component|auto_generated|op_1~62_cout\)))

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
	dataa => \inst2|$00000|auto_generated|result_node[1]~23_combout\,
	datab => \inst38|inst12~regout\,
	cin => \inst23|LPM_COMPARE_component|auto_generated|op_1~62_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst23|LPM_COMPARE_component|auto_generated|op_1~55\,
	cout0 => \inst23|LPM_COMPARE_component|auto_generated|op_1~57_cout0\,
	cout1 => \inst23|LPM_COMPARE_component|auto_generated|op_1~57COUT1_66\);

-- Location: LC_X2_Y4_N6
\inst23|LPM_COMPARE_component|auto_generated|op_1~52\ : maxv_lcell
-- Equation(s):
-- \inst23|LPM_COMPARE_component|auto_generated|op_1~52_cout0\ = CARRY((\inst2|$00000|auto_generated|result_node[2]~21_combout\ & (\inst38|inst11~regout\ & !\inst23|LPM_COMPARE_component|auto_generated|op_1~57_cout0\)) # 
-- (!\inst2|$00000|auto_generated|result_node[2]~21_combout\ & ((\inst38|inst11~regout\) # (!\inst23|LPM_COMPARE_component|auto_generated|op_1~57_cout0\))))
-- \inst23|LPM_COMPARE_component|auto_generated|op_1~52COUT1_67\ = CARRY((\inst2|$00000|auto_generated|result_node[2]~21_combout\ & (\inst38|inst11~regout\ & !\inst23|LPM_COMPARE_component|auto_generated|op_1~57COUT1_66\)) # 
-- (!\inst2|$00000|auto_generated|result_node[2]~21_combout\ & ((\inst38|inst11~regout\) # (!\inst23|LPM_COMPARE_component|auto_generated|op_1~57COUT1_66\))))

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
	dataa => \inst2|$00000|auto_generated|result_node[2]~21_combout\,
	datab => \inst38|inst11~regout\,
	cin => \inst23|LPM_COMPARE_component|auto_generated|op_1~62_cout\,
	cin0 => \inst23|LPM_COMPARE_component|auto_generated|op_1~57_cout0\,
	cin1 => \inst23|LPM_COMPARE_component|auto_generated|op_1~57COUT1_66\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst23|LPM_COMPARE_component|auto_generated|op_1~50\,
	cout0 => \inst23|LPM_COMPARE_component|auto_generated|op_1~52_cout0\,
	cout1 => \inst23|LPM_COMPARE_component|auto_generated|op_1~52COUT1_67\);

-- Location: LC_X2_Y4_N7
\inst23|LPM_COMPARE_component|auto_generated|op_1~47\ : maxv_lcell
-- Equation(s):
-- \inst23|LPM_COMPARE_component|auto_generated|op_1~47_cout0\ = CARRY((\inst38|inst10~regout\ & (\inst2|$00000|auto_generated|result_node[3]~19_combout\ & !\inst23|LPM_COMPARE_component|auto_generated|op_1~52_cout0\)) # (!\inst38|inst10~regout\ & 
-- ((\inst2|$00000|auto_generated|result_node[3]~19_combout\) # (!\inst23|LPM_COMPARE_component|auto_generated|op_1~52_cout0\))))
-- \inst23|LPM_COMPARE_component|auto_generated|op_1~47COUT1_68\ = CARRY((\inst38|inst10~regout\ & (\inst2|$00000|auto_generated|result_node[3]~19_combout\ & !\inst23|LPM_COMPARE_component|auto_generated|op_1~52COUT1_67\)) # (!\inst38|inst10~regout\ & 
-- ((\inst2|$00000|auto_generated|result_node[3]~19_combout\) # (!\inst23|LPM_COMPARE_component|auto_generated|op_1~52COUT1_67\))))

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
	datab => \inst2|$00000|auto_generated|result_node[3]~19_combout\,
	cin => \inst23|LPM_COMPARE_component|auto_generated|op_1~62_cout\,
	cin0 => \inst23|LPM_COMPARE_component|auto_generated|op_1~52_cout0\,
	cin1 => \inst23|LPM_COMPARE_component|auto_generated|op_1~52COUT1_67\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst23|LPM_COMPARE_component|auto_generated|op_1~45\,
	cout0 => \inst23|LPM_COMPARE_component|auto_generated|op_1~47_cout0\,
	cout1 => \inst23|LPM_COMPARE_component|auto_generated|op_1~47COUT1_68\);

-- Location: LC_X2_Y4_N8
\inst23|LPM_COMPARE_component|auto_generated|op_1~42\ : maxv_lcell
-- Equation(s):
-- \inst23|LPM_COMPARE_component|auto_generated|op_1~42_cout0\ = CARRY((\inst38|inst9~regout\ & ((!\inst23|LPM_COMPARE_component|auto_generated|op_1~47_cout0\) # (!\inst2|$00000|auto_generated|result_node[4]~17_combout\))) # (!\inst38|inst9~regout\ & 
-- (!\inst2|$00000|auto_generated|result_node[4]~17_combout\ & !\inst23|LPM_COMPARE_component|auto_generated|op_1~47_cout0\)))
-- \inst23|LPM_COMPARE_component|auto_generated|op_1~42COUT1_69\ = CARRY((\inst38|inst9~regout\ & ((!\inst23|LPM_COMPARE_component|auto_generated|op_1~47COUT1_68\) # (!\inst2|$00000|auto_generated|result_node[4]~17_combout\))) # (!\inst38|inst9~regout\ & 
-- (!\inst2|$00000|auto_generated|result_node[4]~17_combout\ & !\inst23|LPM_COMPARE_component|auto_generated|op_1~47COUT1_68\)))

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
	datab => \inst2|$00000|auto_generated|result_node[4]~17_combout\,
	cin => \inst23|LPM_COMPARE_component|auto_generated|op_1~62_cout\,
	cin0 => \inst23|LPM_COMPARE_component|auto_generated|op_1~47_cout0\,
	cin1 => \inst23|LPM_COMPARE_component|auto_generated|op_1~47COUT1_68\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst23|LPM_COMPARE_component|auto_generated|op_1~40\,
	cout0 => \inst23|LPM_COMPARE_component|auto_generated|op_1~42_cout0\,
	cout1 => \inst23|LPM_COMPARE_component|auto_generated|op_1~42COUT1_69\);

-- Location: LC_X2_Y4_N9
\inst23|LPM_COMPARE_component|auto_generated|op_1~37\ : maxv_lcell
-- Equation(s):
-- \inst23|LPM_COMPARE_component|auto_generated|op_1~37_cout\ = CARRY((\inst2|$00000|auto_generated|result_node[5]~15_combout\ & ((!\inst23|LPM_COMPARE_component|auto_generated|op_1~42COUT1_69\) # (!\inst38|inst8~regout\))) # 
-- (!\inst2|$00000|auto_generated|result_node[5]~15_combout\ & (!\inst38|inst8~regout\ & !\inst23|LPM_COMPARE_component|auto_generated|op_1~42COUT1_69\)))

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
	dataa => \inst2|$00000|auto_generated|result_node[5]~15_combout\,
	datab => \inst38|inst8~regout\,
	cin => \inst23|LPM_COMPARE_component|auto_generated|op_1~62_cout\,
	cin0 => \inst23|LPM_COMPARE_component|auto_generated|op_1~42_cout0\,
	cin1 => \inst23|LPM_COMPARE_component|auto_generated|op_1~42COUT1_69\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst23|LPM_COMPARE_component|auto_generated|op_1~35\,
	cout => \inst23|LPM_COMPARE_component|auto_generated|op_1~37_cout\);

-- Location: LC_X6_Y7_N6
\inst2|$00000|auto_generated|result_node[9]~6\ : maxv_lcell
-- Equation(s):
-- \inst2|$00000|auto_generated|result_node[9]~6_combout\ = ((\NightNOTday~combout\ & ((\inst13|inst4~regout\))) # (!\NightNOTday~combout\ & (\inst12|inst4~regout\)))

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
	datab => \inst12|inst4~regout\,
	datac => \inst13|inst4~regout\,
	datad => \NightNOTday~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|$00000|auto_generated|result_node[9]~6_combout\);

-- Location: LC_X5_Y5_N4
\inst2|$00000|auto_generated|result_node[9]~7\ : maxv_lcell
-- Equation(s):
-- \inst2|$00000|auto_generated|result_node[9]~7_combout\ = ((\passiveNOTactive~combout\ & ((\inst14|inst4~regout\))) # (!\passiveNOTactive~combout\ & (\inst2|$00000|auto_generated|result_node[9]~6_combout\)))

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
	datab => \inst2|$00000|auto_generated|result_node[9]~6_combout\,
	datac => \inst14|inst4~regout\,
	datad => \passiveNOTactive~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|$00000|auto_generated|result_node[9]~7_combout\);

-- Location: LC_X2_Y7_N2
\inst2|$00000|auto_generated|result_node[8]~8\ : maxv_lcell
-- Equation(s):
-- \inst2|$00000|auto_generated|result_node[8]~8_combout\ = (\NightNOTday~combout\ & (((\inst13|inst5~regout\)))) # (!\NightNOTday~combout\ & (((\inst12|inst5~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \NightNOTday~combout\,
	datac => \inst13|inst5~regout\,
	datad => \inst12|inst5~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|$00000|auto_generated|result_node[8]~8_combout\);

-- Location: LC_X3_Y5_N5
\inst2|$00000|auto_generated|result_node[8]~9\ : maxv_lcell
-- Equation(s):
-- \inst2|$00000|auto_generated|result_node[8]~9_combout\ = (\passiveNOTactive~combout\ & (\inst14|inst5~regout\)) # (!\passiveNOTactive~combout\ & (((\inst2|$00000|auto_generated|result_node[8]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "acac",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst14|inst5~regout\,
	datab => \inst2|$00000|auto_generated|result_node[8]~8_combout\,
	datac => \passiveNOTactive~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|$00000|auto_generated|result_node[8]~9_combout\);

-- Location: LC_X3_Y7_N1
\inst2|$00000|auto_generated|result_node[7]~10\ : maxv_lcell
-- Equation(s):
-- \inst2|$00000|auto_generated|result_node[7]~10_combout\ = ((\NightNOTday~combout\ & (\inst13|inst6~regout\)) # (!\NightNOTday~combout\ & ((\inst12|inst6~regout\))))

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
	datab => \inst13|inst6~regout\,
	datac => \inst12|inst6~regout\,
	datad => \NightNOTday~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|$00000|auto_generated|result_node[7]~10_combout\);

-- Location: LC_X3_Y7_N2
\inst2|$00000|auto_generated|result_node[7]~11\ : maxv_lcell
-- Equation(s):
-- \inst2|$00000|auto_generated|result_node[7]~11_combout\ = (\passiveNOTactive~combout\ & (((\inst14|inst6~regout\)))) # (!\passiveNOTactive~combout\ & (((\inst2|$00000|auto_generated|result_node[7]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \passiveNOTactive~combout\,
	datac => \inst14|inst6~regout\,
	datad => \inst2|$00000|auto_generated|result_node[7]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|$00000|auto_generated|result_node[7]~11_combout\);

-- Location: LC_X3_Y7_N4
\inst2|$00000|auto_generated|result_node[6]~12\ : maxv_lcell
-- Equation(s):
-- \inst2|$00000|auto_generated|result_node[6]~12_combout\ = (\NightNOTday~combout\ & (\inst13|inst7~regout\)) # (!\NightNOTday~combout\ & (((\inst12|inst7~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bb88",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \inst13|inst7~regout\,
	datab => \NightNOTday~combout\,
	datad => \inst12|inst7~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|$00000|auto_generated|result_node[6]~12_combout\);

-- Location: LC_X3_Y7_N5
\inst2|$00000|auto_generated|result_node[6]~13\ : maxv_lcell
-- Equation(s):
-- \inst2|$00000|auto_generated|result_node[6]~13_combout\ = (\passiveNOTactive~combout\ & (((\inst14|inst7~regout\)))) # (!\passiveNOTactive~combout\ & (((\inst2|$00000|auto_generated|result_node[6]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \passiveNOTactive~combout\,
	datac => \inst14|inst7~regout\,
	datad => \inst2|$00000|auto_generated|result_node[6]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|$00000|auto_generated|result_node[6]~13_combout\);

-- Location: LC_X3_Y4_N0
\inst23|LPM_COMPARE_component|auto_generated|op_1~32\ : maxv_lcell
-- Equation(s):
-- \inst23|LPM_COMPARE_component|auto_generated|op_1~32_cout0\ = CARRY((\inst2|$00000|auto_generated|result_node[6]~13_combout\ & (\inst38|inst7~regout\ & !\inst23|LPM_COMPARE_component|auto_generated|op_1~37_cout\)) # 
-- (!\inst2|$00000|auto_generated|result_node[6]~13_combout\ & ((\inst38|inst7~regout\) # (!\inst23|LPM_COMPARE_component|auto_generated|op_1~37_cout\))))
-- \inst23|LPM_COMPARE_component|auto_generated|op_1~32COUT1_70\ = CARRY((\inst2|$00000|auto_generated|result_node[6]~13_combout\ & (\inst38|inst7~regout\ & !\inst23|LPM_COMPARE_component|auto_generated|op_1~37_cout\)) # 
-- (!\inst2|$00000|auto_generated|result_node[6]~13_combout\ & ((\inst38|inst7~regout\) # (!\inst23|LPM_COMPARE_component|auto_generated|op_1~37_cout\))))

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
	dataa => \inst2|$00000|auto_generated|result_node[6]~13_combout\,
	datab => \inst38|inst7~regout\,
	cin => \inst23|LPM_COMPARE_component|auto_generated|op_1~37_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst23|LPM_COMPARE_component|auto_generated|op_1~30\,
	cout0 => \inst23|LPM_COMPARE_component|auto_generated|op_1~32_cout0\,
	cout1 => \inst23|LPM_COMPARE_component|auto_generated|op_1~32COUT1_70\);

-- Location: LC_X3_Y4_N1
\inst23|LPM_COMPARE_component|auto_generated|op_1~27\ : maxv_lcell
-- Equation(s):
-- \inst23|LPM_COMPARE_component|auto_generated|op_1~27_cout0\ = CARRY((\inst2|$00000|auto_generated|result_node[7]~11_combout\ & ((!\inst23|LPM_COMPARE_component|auto_generated|op_1~32_cout0\) # (!\inst38|inst6~regout\))) # 
-- (!\inst2|$00000|auto_generated|result_node[7]~11_combout\ & (!\inst38|inst6~regout\ & !\inst23|LPM_COMPARE_component|auto_generated|op_1~32_cout0\)))
-- \inst23|LPM_COMPARE_component|auto_generated|op_1~27COUT1_71\ = CARRY((\inst2|$00000|auto_generated|result_node[7]~11_combout\ & ((!\inst23|LPM_COMPARE_component|auto_generated|op_1~32COUT1_70\) # (!\inst38|inst6~regout\))) # 
-- (!\inst2|$00000|auto_generated|result_node[7]~11_combout\ & (!\inst38|inst6~regout\ & !\inst23|LPM_COMPARE_component|auto_generated|op_1~32COUT1_70\)))

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
	dataa => \inst2|$00000|auto_generated|result_node[7]~11_combout\,
	datab => \inst38|inst6~regout\,
	cin => \inst23|LPM_COMPARE_component|auto_generated|op_1~37_cout\,
	cin0 => \inst23|LPM_COMPARE_component|auto_generated|op_1~32_cout0\,
	cin1 => \inst23|LPM_COMPARE_component|auto_generated|op_1~32COUT1_70\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst23|LPM_COMPARE_component|auto_generated|op_1~25\,
	cout0 => \inst23|LPM_COMPARE_component|auto_generated|op_1~27_cout0\,
	cout1 => \inst23|LPM_COMPARE_component|auto_generated|op_1~27COUT1_71\);

-- Location: LC_X3_Y4_N2
\inst23|LPM_COMPARE_component|auto_generated|op_1~22\ : maxv_lcell
-- Equation(s):
-- \inst23|LPM_COMPARE_component|auto_generated|op_1~22_cout0\ = CARRY((\inst2|$00000|auto_generated|result_node[8]~9_combout\ & (\inst38|inst5~regout\ & !\inst23|LPM_COMPARE_component|auto_generated|op_1~27_cout0\)) # 
-- (!\inst2|$00000|auto_generated|result_node[8]~9_combout\ & ((\inst38|inst5~regout\) # (!\inst23|LPM_COMPARE_component|auto_generated|op_1~27_cout0\))))
-- \inst23|LPM_COMPARE_component|auto_generated|op_1~22COUT1_72\ = CARRY((\inst2|$00000|auto_generated|result_node[8]~9_combout\ & (\inst38|inst5~regout\ & !\inst23|LPM_COMPARE_component|auto_generated|op_1~27COUT1_71\)) # 
-- (!\inst2|$00000|auto_generated|result_node[8]~9_combout\ & ((\inst38|inst5~regout\) # (!\inst23|LPM_COMPARE_component|auto_generated|op_1~27COUT1_71\))))

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
	dataa => \inst2|$00000|auto_generated|result_node[8]~9_combout\,
	datab => \inst38|inst5~regout\,
	cin => \inst23|LPM_COMPARE_component|auto_generated|op_1~37_cout\,
	cin0 => \inst23|LPM_COMPARE_component|auto_generated|op_1~27_cout0\,
	cin1 => \inst23|LPM_COMPARE_component|auto_generated|op_1~27COUT1_71\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst23|LPM_COMPARE_component|auto_generated|op_1~20\,
	cout0 => \inst23|LPM_COMPARE_component|auto_generated|op_1~22_cout0\,
	cout1 => \inst23|LPM_COMPARE_component|auto_generated|op_1~22COUT1_72\);

-- Location: LC_X3_Y4_N3
\inst23|LPM_COMPARE_component|auto_generated|op_1~17\ : maxv_lcell
-- Equation(s):
-- \inst23|LPM_COMPARE_component|auto_generated|op_1~17_cout0\ = CARRY((\inst38|inst4~regout\ & (\inst2|$00000|auto_generated|result_node[9]~7_combout\ & !\inst23|LPM_COMPARE_component|auto_generated|op_1~22_cout0\)) # (!\inst38|inst4~regout\ & 
-- ((\inst2|$00000|auto_generated|result_node[9]~7_combout\) # (!\inst23|LPM_COMPARE_component|auto_generated|op_1~22_cout0\))))
-- \inst23|LPM_COMPARE_component|auto_generated|op_1~17COUT1_73\ = CARRY((\inst38|inst4~regout\ & (\inst2|$00000|auto_generated|result_node[9]~7_combout\ & !\inst23|LPM_COMPARE_component|auto_generated|op_1~22COUT1_72\)) # (!\inst38|inst4~regout\ & 
-- ((\inst2|$00000|auto_generated|result_node[9]~7_combout\) # (!\inst23|LPM_COMPARE_component|auto_generated|op_1~22COUT1_72\))))

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
	datab => \inst2|$00000|auto_generated|result_node[9]~7_combout\,
	cin => \inst23|LPM_COMPARE_component|auto_generated|op_1~37_cout\,
	cin0 => \inst23|LPM_COMPARE_component|auto_generated|op_1~22_cout0\,
	cin1 => \inst23|LPM_COMPARE_component|auto_generated|op_1~22COUT1_72\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst23|LPM_COMPARE_component|auto_generated|op_1~15\,
	cout0 => \inst23|LPM_COMPARE_component|auto_generated|op_1~17_cout0\,
	cout1 => \inst23|LPM_COMPARE_component|auto_generated|op_1~17COUT1_73\);

-- Location: LC_X3_Y4_N4
\inst23|LPM_COMPARE_component|auto_generated|op_1~12\ : maxv_lcell
-- Equation(s):
-- \inst23|LPM_COMPARE_component|auto_generated|op_1~12_cout\ = CARRY((\inst2|$00000|auto_generated|result_node[10]~5_combout\ & (\inst38|inst3~regout\ & !\inst23|LPM_COMPARE_component|auto_generated|op_1~17COUT1_73\)) # 
-- (!\inst2|$00000|auto_generated|result_node[10]~5_combout\ & ((\inst38|inst3~regout\) # (!\inst23|LPM_COMPARE_component|auto_generated|op_1~17COUT1_73\))))

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
	dataa => \inst2|$00000|auto_generated|result_node[10]~5_combout\,
	datab => \inst38|inst3~regout\,
	cin => \inst23|LPM_COMPARE_component|auto_generated|op_1~37_cout\,
	cin0 => \inst23|LPM_COMPARE_component|auto_generated|op_1~17_cout0\,
	cin1 => \inst23|LPM_COMPARE_component|auto_generated|op_1~17COUT1_73\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst23|LPM_COMPARE_component|auto_generated|op_1~10\,
	cout => \inst23|LPM_COMPARE_component|auto_generated|op_1~12_cout\);

-- Location: LC_X6_Y7_N9
\inst2|$00000|auto_generated|result_node[11]~2\ : maxv_lcell
-- Equation(s):
-- \inst2|$00000|auto_generated|result_node[11]~2_combout\ = ((\NightNOTday~combout\ & ((\inst13|inst2~regout\))) # (!\NightNOTday~combout\ & (\inst12|inst2~regout\)))

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
	datab => \NightNOTday~combout\,
	datac => \inst12|inst2~regout\,
	datad => \inst13|inst2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|$00000|auto_generated|result_node[11]~2_combout\);

-- Location: LC_X5_Y5_N8
\inst2|$00000|auto_generated|result_node[11]~3\ : maxv_lcell
-- Equation(s):
-- \inst2|$00000|auto_generated|result_node[11]~3_combout\ = ((\passiveNOTactive~combout\ & (\inst14|inst2~regout\)) # (!\passiveNOTactive~combout\ & ((\inst2|$00000|auto_generated|result_node[11]~2_combout\))))

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
	datab => \inst14|inst2~regout\,
	datac => \inst2|$00000|auto_generated|result_node[11]~2_combout\,
	datad => \passiveNOTactive~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|$00000|auto_generated|result_node[11]~3_combout\);

-- Location: LC_X3_Y4_N5
\inst23|LPM_COMPARE_component|auto_generated|op_1~7\ : maxv_lcell
-- Equation(s):
-- \inst23|LPM_COMPARE_component|auto_generated|op_1~7_cout0\ = CARRY((\inst2|$00000|auto_generated|result_node[11]~3_combout\ & ((!\inst23|LPM_COMPARE_component|auto_generated|op_1~12_cout\) # (!\inst38|inst2~regout\))) # 
-- (!\inst2|$00000|auto_generated|result_node[11]~3_combout\ & (!\inst38|inst2~regout\ & !\inst23|LPM_COMPARE_component|auto_generated|op_1~12_cout\)))
-- \inst23|LPM_COMPARE_component|auto_generated|op_1~7COUT1_74\ = CARRY((\inst2|$00000|auto_generated|result_node[11]~3_combout\ & ((!\inst23|LPM_COMPARE_component|auto_generated|op_1~12_cout\) # (!\inst38|inst2~regout\))) # 
-- (!\inst2|$00000|auto_generated|result_node[11]~3_combout\ & (!\inst38|inst2~regout\ & !\inst23|LPM_COMPARE_component|auto_generated|op_1~12_cout\)))

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
	dataa => \inst2|$00000|auto_generated|result_node[11]~3_combout\,
	datab => \inst38|inst2~regout\,
	cin => \inst23|LPM_COMPARE_component|auto_generated|op_1~12_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst23|LPM_COMPARE_component|auto_generated|op_1~5\,
	cout0 => \inst23|LPM_COMPARE_component|auto_generated|op_1~7_cout0\,
	cout1 => \inst23|LPM_COMPARE_component|auto_generated|op_1~7COUT1_74\);

-- Location: LC_X3_Y4_N6
\inst23|LPM_COMPARE_component|auto_generated|op_1~0\ : maxv_lcell
-- Equation(s):
-- \inst23|LPM_COMPARE_component|auto_generated|op_1~0_combout\ = ((\inst38|inst1~regout\ & (!(!\inst23|LPM_COMPARE_component|auto_generated|op_1~12_cout\ & \inst23|LPM_COMPARE_component|auto_generated|op_1~7_cout0\) # 
-- (\inst23|LPM_COMPARE_component|auto_generated|op_1~12_cout\ & \inst23|LPM_COMPARE_component|auto_generated|op_1~7COUT1_74\) & \inst2|$00000|auto_generated|result_node[12]~1_combout\)) # (!\inst38|inst1~regout\ & 
-- ((\inst2|$00000|auto_generated|result_node[12]~1_combout\) # (!(!\inst23|LPM_COMPARE_component|auto_generated|op_1~12_cout\ & \inst23|LPM_COMPARE_component|auto_generated|op_1~7_cout0\) # (\inst23|LPM_COMPARE_component|auto_generated|op_1~12_cout\ & 
-- \inst23|LPM_COMPARE_component|auto_generated|op_1~7COUT1_74\)))))

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
	datad => \inst2|$00000|auto_generated|result_node[12]~1_combout\,
	cin => \inst23|LPM_COMPARE_component|auto_generated|op_1~12_cout\,
	cin0 => \inst23|LPM_COMPARE_component|auto_generated|op_1~7_cout0\,
	cin1 => \inst23|LPM_COMPARE_component|auto_generated|op_1~7COUT1_74\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst23|LPM_COMPARE_component|auto_generated|op_1~0_combout\);

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Heat~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst24|LPM_COMPARE_component|auto_generated|ALT_INV_agb~combout\,
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

-- Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Cool~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst23|LPM_COMPARE_component|auto_generated|op_1~0_combout\,
	oe => VCC,
	padio => ww_Cool);

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\SCL~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \CLK~combout\,
	oe => VCC,
	padio => ww_SCL);

-- Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\CS~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst34|fstate.state24~regout\,
	oe => VCC,
	padio => ww_CS);

-- Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\fbc0~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_fbc0);

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\fbc1~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_fbc1);

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\fbc3~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_fbc3);

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\fbc4~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_fbc4);

-- Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\fbc2~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_fbc2);

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Din~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst34|ALT_INV_WideOr0\,
	oe => VCC,
	padio => ww_Din);

-- Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\FreezeReg~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst34|freezeParalell\,
	oe => VCC,
	padio => ww_FreezeReg);

-- Location: PIN_35,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\tempRead[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst38|inst1~regout\,
	oe => VCC,
	padio => ww_tempRead(12));

-- Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\tempRead[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst38|inst2~regout\,
	oe => VCC,
	padio => ww_tempRead(11));

-- Location: PIN_36,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\tempRead[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst38|inst3~regout\,
	oe => VCC,
	padio => ww_tempRead(10));

-- Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\tempRead[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst38|inst4~regout\,
	oe => VCC,
	padio => ww_tempRead(9));

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\tempRead[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst38|inst5~regout\,
	oe => VCC,
	padio => ww_tempRead(8));

-- Location: PIN_33,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\tempRead[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst38|inst6~regout\,
	oe => VCC,
	padio => ww_tempRead(7));

-- Location: PIN_34,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\tempRead[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst38|inst7~regout\,
	oe => VCC,
	padio => ww_tempRead(6));

-- Location: PIN_29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\tempRead[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst38|inst8~regout\,
	oe => VCC,
	padio => ww_tempRead(5));

-- Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\tempRead[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst38|inst9~regout\,
	oe => VCC,
	padio => ww_tempRead(4));

-- Location: PIN_19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\tempRead[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst38|inst10~regout\,
	oe => VCC,
	padio => ww_tempRead(3));

-- Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\tempRead[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst38|inst11~regout\,
	oe => VCC,
	padio => ww_tempRead(2));

-- Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\tempRead[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst38|inst12~regout\,
	oe => VCC,
	padio => ww_tempRead(1));

-- Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\tempRead[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst38|inst13~regout\,
	oe => VCC,
	padio => ww_tempRead(0));

-- Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\hiTrueSetDisp~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_hiTrueSetDisp);

-- Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\controlsActive~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_controlsActive);

-- Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\fbctestclk~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_fbctestclk);

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\fbctestrestart~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_fbctestrestart);
END structure;


