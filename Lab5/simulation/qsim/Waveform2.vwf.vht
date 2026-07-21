-- Copyright (C) 2018  Intel Corporation. All rights reserved.
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
-- Generated on "05/24/2024 12:32:02"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Lab5
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Lab5_vhd_vec_tst IS
END Lab5_vhd_vec_tst;
ARCHITECTURE Lab5_arch OF Lab5_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL KEY1 : STD_LOGIC;
SIGNAL S0 : STD_LOGIC;
SIGNAL S1 : STD_LOGIC;
SIGNAL S2 : STD_LOGIC;
SIGNAL S3 : STD_LOGIC;
COMPONENT Lab5
	PORT (
	KEY1 : IN STD_LOGIC;
	S0 : OUT STD_LOGIC;
	S1 : OUT STD_LOGIC;
	S2 : OUT STD_LOGIC;
	S3 : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Lab5
	PORT MAP (
-- list connections between master ports and signals
	KEY1 => KEY1,
	S0 => S0,
	S1 => S1,
	S2 => S2,
	S3 => S3
	);

-- KEY1
t_prcs_KEY1: PROCESS
BEGIN
	KEY1 <= '0';
WAIT;
END PROCESS t_prcs_KEY1;
END Lab5_arch;
