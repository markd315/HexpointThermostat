-- megafunction wizard: %LPM_COMPARE%
-- GENERATION: STANDARD
-- VERSION: WM1.0
-- MODULE: LPM_COMPARE 

-- ============================================================
-- File Name: compare13bits.vhd
-- Megafunction Name(s):
-- 			LPM_COMPARE
--
-- Simulation Library Files(s):
-- 			lpm
-- ============================================================
-- ************************************************************
-- THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
--
-- 17.1.0 Build 590 10/25/2017 SJ Lite Edition
-- ************************************************************


--Copyright (C) 2017  Intel Corporation. All rights reserved.
--Your use of Intel Corporation's design tools, logic functions 
--and other software and tools, and its AMPP partner logic 
--functions, and any output files from any of the foregoing 
--(including device programming or simulation files), and any 
--associated documentation or information are expressly subject 
--to the terms and conditions of the Intel Program License 
--Subscription Agreement, the Intel Quartus Prime License Agreement,
--the Intel FPGA IP License Agreement, or other applicable license
--agreement, including, without limitation, that your use is for
--the sole purpose of programming logic devices manufactured by
--Intel and sold by Intel or its authorized distributors.  Please
--refer to the applicable agreement for further details.


LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY lpm;
USE lpm.all;

ENTITY compare13bits IS
	PORT
	(
		dataa		: IN STD_LOGIC_VECTOR (12 DOWNTO 0);
		datab		: IN STD_LOGIC_VECTOR (12 DOWNTO 0);
		agb		: OUT STD_LOGIC ;
		alb		: OUT STD_LOGIC 
	);
END compare13bits;


ARCHITECTURE SYN OF compare13bits IS

	SIGNAL sub_wire0	: STD_LOGIC ;
	SIGNAL sub_wire1	: STD_LOGIC ;



	COMPONENT lpm_compare
	GENERIC (
		lpm_representation		: STRING;
		lpm_type		: STRING;
		lpm_width		: NATURAL
	);
	PORT (
			dataa	: IN STD_LOGIC_VECTOR (12 DOWNTO 0);
			datab	: IN STD_LOGIC_VECTOR (12 DOWNTO 0);
			agb	: OUT STD_LOGIC ;
			alb	: OUT STD_LOGIC 
	);
	END COMPONENT;

BEGIN
	agb    <= sub_wire0;
	alb    <= sub_wire1;

	LPM_COMPARE_component : LPM_COMPARE
	GENERIC MAP (
		lpm_representation => "SIGNED",
		lpm_type => "LPM_COMPARE",
		lpm_width => 13
	)
	PORT MAP (
		dataa => dataa,
		datab => datab,
		agb => sub_wire0,
		alb => sub_wire1
	);



END SYN;

-- ============================================================
-- CNX file retrieval info
-- ============================================================
-- Retrieval info: PRIVATE: AeqB NUMERIC "0"
-- Retrieval info: PRIVATE: AgeB NUMERIC "0"
-- Retrieval info: PRIVATE: AgtB NUMERIC "1"
-- Retrieval info: PRIVATE: AleB NUMERIC "0"
-- Retrieval info: PRIVATE: AltB NUMERIC "1"
-- Retrieval info: PRIVATE: AneB NUMERIC "0"
-- Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "MAX V"
-- Retrieval info: PRIVATE: LPM_PIPELINE NUMERIC "0"
-- Retrieval info: PRIVATE: Latency NUMERIC "0"
-- Retrieval info: PRIVATE: PortBValue NUMERIC "0"
-- Retrieval info: PRIVATE: Radix NUMERIC "10"
-- Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "0"
-- Retrieval info: PRIVATE: SignedCompare NUMERIC "1"
-- Retrieval info: PRIVATE: aclr NUMERIC "0"
-- Retrieval info: PRIVATE: clken NUMERIC "0"
-- Retrieval info: PRIVATE: isPortBConstant NUMERIC "0"
-- Retrieval info: PRIVATE: nBit NUMERIC "13"
-- Retrieval info: PRIVATE: new_diagram STRING "1"
-- Retrieval info: LIBRARY: lpm lpm.lpm_components.all
-- Retrieval info: CONSTANT: LPM_REPRESENTATION STRING "SIGNED"
-- Retrieval info: CONSTANT: LPM_TYPE STRING "LPM_COMPARE"
-- Retrieval info: CONSTANT: LPM_WIDTH NUMERIC "13"
-- Retrieval info: USED_PORT: agb 0 0 0 0 OUTPUT NODEFVAL "agb"
-- Retrieval info: USED_PORT: alb 0 0 0 0 OUTPUT NODEFVAL "alb"
-- Retrieval info: USED_PORT: dataa 0 0 13 0 INPUT NODEFVAL "dataa[12..0]"
-- Retrieval info: USED_PORT: datab 0 0 13 0 INPUT NODEFVAL "datab[12..0]"
-- Retrieval info: CONNECT: @dataa 0 0 13 0 dataa 0 0 13 0
-- Retrieval info: CONNECT: @datab 0 0 13 0 datab 0 0 13 0
-- Retrieval info: CONNECT: agb 0 0 0 0 @agb 0 0 0 0
-- Retrieval info: CONNECT: alb 0 0 0 0 @alb 0 0 0 0
-- Retrieval info: GEN_FILE: TYPE_NORMAL compare13bits.vhd TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL compare13bits.inc FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL compare13bits.cmp TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL compare13bits.bsf TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL compare13bits_inst.vhd FALSE
-- Retrieval info: LIB_FILE: lpm