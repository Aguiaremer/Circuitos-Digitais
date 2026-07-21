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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "05/24/2024 12:35:02"

-- 
-- Device: Altera 10M50DAF484C7G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Lab5 IS
    PORT (
	S3 : OUT std_logic;
	KEY1 : IN std_logic;
	S2 : OUT std_logic;
	S1 : OUT std_logic;
	S0 : OUT std_logic
	);
END Lab5;

-- Design Ports Information
-- S3	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S2	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S1	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S0	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY1	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Lab5 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_S3 : std_logic;
SIGNAL ww_KEY1 : std_logic;
SIGNAL ww_S2 : std_logic;
SIGNAL ww_S1 : std_logic;
SIGNAL ww_S0 : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \S3~output_o\ : std_logic;
SIGNAL \S2~output_o\ : std_logic;
SIGNAL \S1~output_o\ : std_logic;
SIGNAL \S0~output_o\ : std_logic;
SIGNAL \KEY1~input_o\ : std_logic;
SIGNAL \inst|estado.E13~q\ : std_logic;
SIGNAL \inst|estado.E6~feeder_combout\ : std_logic;
SIGNAL \inst|estado.E6~q\ : std_logic;
SIGNAL \inst|estado.E12~q\ : std_logic;
SIGNAL \inst|estado.E9~feeder_combout\ : std_logic;
SIGNAL \inst|estado.E9~q\ : std_logic;
SIGNAL \inst|estado.E11~q\ : std_logic;
SIGNAL \inst|estado.E7~q\ : std_logic;
SIGNAL \inst|estado.E10~q\ : std_logic;
SIGNAL \inst|estado.E0~0_combout\ : std_logic;
SIGNAL \inst|estado.E0~q\ : std_logic;
SIGNAL \inst|estado.E1~0_combout\ : std_logic;
SIGNAL \inst|estado.E1~q\ : std_logic;
SIGNAL \inst|estado.E3~q\ : std_logic;
SIGNAL \inst|estado.E5~feeder_combout\ : std_logic;
SIGNAL \inst|estado.E5~q\ : std_logic;
SIGNAL \inst|estado.E8~q\ : std_logic;
SIGNAL \inst|estado.E15~feeder_combout\ : std_logic;
SIGNAL \inst|estado.E15~q\ : std_logic;
SIGNAL \inst|estado.E2~feeder_combout\ : std_logic;
SIGNAL \inst|estado.E2~q\ : std_logic;
SIGNAL \inst|estado.E14~q\ : std_logic;
SIGNAL \inst|estado.E4~feeder_combout\ : std_logic;
SIGNAL \inst|estado.E4~q\ : std_logic;
SIGNAL \inst|WideOr0~0_combout\ : std_logic;
SIGNAL \inst|WideOr0~1_combout\ : std_logic;
SIGNAL \inst|WideOr0~combout\ : std_logic;
SIGNAL \inst|WideOr1~0_combout\ : std_logic;
SIGNAL \inst|WideOr1~combout\ : std_logic;
SIGNAL \inst|WideOr2~1_combout\ : std_logic;
SIGNAL \inst|WideOr2~0_combout\ : std_logic;
SIGNAL \inst|WideOr2~combout\ : std_logic;
SIGNAL \inst|WideOr3~0_combout\ : std_logic;
SIGNAL \inst|WideOr3~combout\ : std_logic;
SIGNAL \ALT_INV_KEY1~input_o\ : std_logic;
SIGNAL \inst|ALT_INV_WideOr3~combout\ : std_logic;
SIGNAL \inst|ALT_INV_WideOr2~combout\ : std_logic;
SIGNAL \inst|ALT_INV_WideOr1~combout\ : std_logic;
SIGNAL \inst|ALT_INV_WideOr0~combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

S3 <= ww_S3;
ww_KEY1 <= KEY1;
S2 <= ww_S2;
S1 <= ww_S1;
S0 <= ww_S0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);
\ALT_INV_KEY1~input_o\ <= NOT \KEY1~input_o\;
\inst|ALT_INV_WideOr3~combout\ <= NOT \inst|WideOr3~combout\;
\inst|ALT_INV_WideOr2~combout\ <= NOT \inst|WideOr2~combout\;
\inst|ALT_INV_WideOr1~combout\ <= NOT \inst|WideOr1~combout\;
\inst|ALT_INV_WideOr0~combout\ <= NOT \inst|WideOr0~combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y48_N20
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X51_Y54_N30
\S3~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_WideOr0~combout\,
	devoe => ww_devoe,
	o => \S3~output_o\);

-- Location: IOOBUF_X51_Y54_N23
\S2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_WideOr1~combout\,
	devoe => ww_devoe,
	o => \S2~output_o\);

-- Location: IOOBUF_X49_Y54_N23
\S1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_WideOr2~combout\,
	devoe => ww_devoe,
	o => \S1~output_o\);

-- Location: IOOBUF_X49_Y54_N16
\S0~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_WideOr3~combout\,
	devoe => ww_devoe,
	o => \S0~output_o\);

-- Location: IOIBUF_X49_Y54_N29
\KEY1~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY1,
	o => \KEY1~input_o\);

-- Location: FF_X50_Y53_N11
\inst|estado.E13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY1~input_o\,
	asdata => \inst|estado.E4~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|estado.E13~q\);

-- Location: LCCOMB_X50_Y53_N4
\inst|estado.E6~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|estado.E6~feeder_combout\ = \inst|estado.E13~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|estado.E13~q\,
	combout => \inst|estado.E6~feeder_combout\);

-- Location: FF_X50_Y53_N5
\inst|estado.E6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY1~input_o\,
	d => \inst|estado.E6~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|estado.E6~q\);

-- Location: FF_X50_Y53_N25
\inst|estado.E12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY1~input_o\,
	asdata => \inst|estado.E6~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|estado.E12~q\);

-- Location: LCCOMB_X50_Y53_N6
\inst|estado.E9~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|estado.E9~feeder_combout\ = \inst|estado.E12~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|estado.E12~q\,
	combout => \inst|estado.E9~feeder_combout\);

-- Location: FF_X50_Y53_N7
\inst|estado.E9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY1~input_o\,
	d => \inst|estado.E9~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|estado.E9~q\);

-- Location: FF_X50_Y53_N23
\inst|estado.E11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY1~input_o\,
	asdata => \inst|estado.E9~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|estado.E11~q\);

-- Location: FF_X50_Y53_N31
\inst|estado.E7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY1~input_o\,
	asdata => \inst|estado.E11~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|estado.E7~q\);

-- Location: FF_X50_Y53_N29
\inst|estado.E10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY1~input_o\,
	asdata => \inst|estado.E7~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|estado.E10~q\);

-- Location: LCCOMB_X50_Y53_N16
\inst|estado.E0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|estado.E0~0_combout\ = !\inst|estado.E10~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|estado.E10~q\,
	combout => \inst|estado.E0~0_combout\);

-- Location: FF_X50_Y53_N17
\inst|estado.E0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY1~input_o\,
	d => \inst|estado.E0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|estado.E0~q\);

-- Location: LCCOMB_X50_Y53_N2
\inst|estado.E1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|estado.E1~0_combout\ = !\inst|estado.E0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|estado.E0~q\,
	combout => \inst|estado.E1~0_combout\);

-- Location: FF_X50_Y53_N3
\inst|estado.E1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY1~input_o\,
	d => \inst|estado.E1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|estado.E1~q\);

-- Location: FF_X50_Y53_N21
\inst|estado.E3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY1~input_o\,
	asdata => \inst|estado.E1~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|estado.E3~q\);

-- Location: LCCOMB_X50_Y53_N26
\inst|estado.E5~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|estado.E5~feeder_combout\ = \inst|estado.E3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|estado.E3~q\,
	combout => \inst|estado.E5~feeder_combout\);

-- Location: FF_X50_Y53_N27
\inst|estado.E5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY1~input_o\,
	d => \inst|estado.E5~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|estado.E5~q\);

-- Location: FF_X50_Y53_N1
\inst|estado.E8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY1~input_o\,
	asdata => \inst|estado.E5~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|estado.E8~q\);

-- Location: LCCOMB_X50_Y53_N12
\inst|estado.E15~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|estado.E15~feeder_combout\ = \inst|estado.E8~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|estado.E8~q\,
	combout => \inst|estado.E15~feeder_combout\);

-- Location: FF_X50_Y53_N13
\inst|estado.E15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY1~input_o\,
	d => \inst|estado.E15~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|estado.E15~q\);

-- Location: LCCOMB_X50_Y53_N8
\inst|estado.E2~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|estado.E2~feeder_combout\ = \inst|estado.E15~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|estado.E15~q\,
	combout => \inst|estado.E2~feeder_combout\);

-- Location: FF_X50_Y53_N9
\inst|estado.E2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY1~input_o\,
	d => \inst|estado.E2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|estado.E2~q\);

-- Location: FF_X50_Y53_N19
\inst|estado.E14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY1~input_o\,
	asdata => \inst|estado.E2~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|estado.E14~q\);

-- Location: LCCOMB_X50_Y53_N14
\inst|estado.E4~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|estado.E4~feeder_combout\ = \inst|estado.E14~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|estado.E14~q\,
	combout => \inst|estado.E4~feeder_combout\);

-- Location: FF_X50_Y53_N15
\inst|estado.E4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY1~input_o\,
	d => \inst|estado.E4~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|estado.E4~q\);

-- Location: LCCOMB_X50_Y53_N30
\inst|WideOr0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr0~0_combout\ = (\inst|estado.E4~q\) # ((\inst|estado.E5~q\) # ((\inst|estado.E7~q\) # (\inst|estado.E6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|estado.E4~q\,
	datab => \inst|estado.E5~q\,
	datac => \inst|estado.E7~q\,
	datad => \inst|estado.E6~q\,
	combout => \inst|WideOr0~0_combout\);

-- Location: LCCOMB_X50_Y53_N20
\inst|WideOr0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr0~1_combout\ = (!\inst|estado.E2~q\ & (!\inst|estado.E1~q\ & (!\inst|estado.E3~q\ & \inst|estado.E0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|estado.E2~q\,
	datab => \inst|estado.E1~q\,
	datac => \inst|estado.E3~q\,
	datad => \inst|estado.E0~q\,
	combout => \inst|WideOr0~1_combout\);

-- Location: LCCOMB_X51_Y53_N24
\inst|WideOr0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr0~combout\ = (\inst|WideOr0~0_combout\) # (!\inst|WideOr0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|WideOr0~0_combout\,
	datad => \inst|WideOr0~1_combout\,
	combout => \inst|WideOr0~combout\);

-- Location: LCCOMB_X50_Y53_N22
\inst|WideOr1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr1~0_combout\ = (\inst|estado.E9~q\) # ((\inst|estado.E8~q\) # ((\inst|estado.E11~q\) # (\inst|estado.E10~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|estado.E9~q\,
	datab => \inst|estado.E8~q\,
	datac => \inst|estado.E11~q\,
	datad => \inst|estado.E10~q\,
	combout => \inst|WideOr1~0_combout\);

-- Location: LCCOMB_X51_Y53_N26
\inst|WideOr1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr1~combout\ = (\inst|WideOr1~0_combout\) # (!\inst|WideOr0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|WideOr1~0_combout\,
	datad => \inst|WideOr0~1_combout\,
	combout => \inst|WideOr1~combout\);

-- Location: LCCOMB_X50_Y53_N24
\inst|WideOr2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr2~1_combout\ = (!\inst|estado.E4~q\ & (!\inst|estado.E8~q\ & (!\inst|estado.E12~q\ & \inst|estado.E0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|estado.E4~q\,
	datab => \inst|estado.E8~q\,
	datac => \inst|estado.E12~q\,
	datad => \inst|estado.E0~q\,
	combout => \inst|WideOr2~1_combout\);

-- Location: LCCOMB_X50_Y53_N10
\inst|WideOr2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr2~0_combout\ = (\inst|estado.E9~q\) # ((\inst|estado.E1~q\) # ((\inst|estado.E13~q\) # (\inst|estado.E5~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|estado.E9~q\,
	datab => \inst|estado.E1~q\,
	datac => \inst|estado.E13~q\,
	datad => \inst|estado.E5~q\,
	combout => \inst|WideOr2~0_combout\);

-- Location: LCCOMB_X50_Y53_N0
\inst|WideOr2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr2~combout\ = (\inst|WideOr2~0_combout\) # (!\inst|WideOr2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr2~1_combout\,
	datab => \inst|WideOr2~0_combout\,
	combout => \inst|WideOr2~combout\);

-- Location: LCCOMB_X50_Y53_N18
\inst|WideOr3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr3~0_combout\ = (\inst|estado.E6~q\) # ((\inst|estado.E2~q\) # ((\inst|estado.E14~q\) # (\inst|estado.E10~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|estado.E6~q\,
	datab => \inst|estado.E2~q\,
	datac => \inst|estado.E14~q\,
	datad => \inst|estado.E10~q\,
	combout => \inst|WideOr3~0_combout\);

-- Location: LCCOMB_X50_Y53_N28
\inst|WideOr3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|WideOr3~combout\ = (\inst|WideOr3~0_combout\) # (!\inst|WideOr2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr2~1_combout\,
	datad => \inst|WideOr3~0_combout\,
	combout => \inst|WideOr3~combout\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_S3 <= \S3~output_o\;

ww_S2 <= \S2~output_o\;

ww_S1 <= \S1~output_o\;

ww_S0 <= \S0~output_o\;
END structure;


