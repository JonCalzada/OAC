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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "03/30/2023 21:58:09"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Practica4 IS
    PORT (
	edoPresente : OUT std_logic_vector(2 DOWNTO 0);
	CLK : IN std_logic;
	RESET : IN std_logic;
	AUX : IN std_logic;
	W : IN std_logic;
	X : IN std_logic;
	Y : IN std_logic;
	Z : IN std_logic;
	liga : OUT std_logic_vector(2 DOWNTO 0);
	prueba : OUT std_logic_vector(2 DOWNTO 0);
	Salida : OUT std_logic_vector(4 DOWNTO 0)
	);
END Practica4;

-- Design Ports Information
-- edoPresente[2]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- edoPresente[1]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- edoPresente[0]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- liga[2]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- liga[1]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- liga[0]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prueba[2]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prueba[1]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- prueba[0]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Salida[4]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Salida[3]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Salida[2]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Salida[1]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Salida[0]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AUX	=>  Location: PIN_K5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Z	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RESET	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Practica4 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_edoPresente : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_CLK : std_logic;
SIGNAL ww_RESET : std_logic;
SIGNAL ww_AUX : std_logic;
SIGNAL ww_W : std_logic;
SIGNAL ww_X : std_logic;
SIGNAL ww_Y : std_logic;
SIGNAL ww_Z : std_logic;
SIGNAL ww_liga : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_prueba : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Salida : std_logic_vector(4 DOWNTO 0);
SIGNAL \RESET~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \AUX~input_o\ : std_logic;
SIGNAL \Z~input_o\ : std_logic;
SIGNAL \edoPresente[2]~output_o\ : std_logic;
SIGNAL \edoPresente[1]~output_o\ : std_logic;
SIGNAL \edoPresente[0]~output_o\ : std_logic;
SIGNAL \liga[2]~output_o\ : std_logic;
SIGNAL \liga[1]~output_o\ : std_logic;
SIGNAL \liga[0]~output_o\ : std_logic;
SIGNAL \prueba[2]~output_o\ : std_logic;
SIGNAL \prueba[1]~output_o\ : std_logic;
SIGNAL \prueba[0]~output_o\ : std_logic;
SIGNAL \Salida[4]~output_o\ : std_logic;
SIGNAL \Salida[3]~output_o\ : std_logic;
SIGNAL \Salida[2]~output_o\ : std_logic;
SIGNAL \Salida[1]~output_o\ : std_logic;
SIGNAL \Salida[0]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \W~input_o\ : std_logic;
SIGNAL \inst3|Mux4~0_combout\ : std_logic;
SIGNAL \RESET~input_o\ : std_logic;
SIGNAL \RESET~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst3|Mux1~0_combout\ : std_logic;
SIGNAL \Y~input_o\ : std_logic;
SIGNAL \inst3|Mux16~0_combout\ : std_logic;
SIGNAL \X~input_o\ : std_logic;
SIGNAL \inst|entrada~0_combout\ : std_logic;
SIGNAL \inst|entrada~1_combout\ : std_logic;
SIGNAL \inst|entrada~2_combout\ : std_logic;
SIGNAL \inst1|liga[0]~1_combout\ : std_logic;
SIGNAL \inst1|liga[2]~0_combout\ : std_logic;
SIGNAL \inst3|Mux5~0_combout\ : std_logic;
SIGNAL \inst3|Mux9~0_combout\ : std_logic;
SIGNAL \inst2|salida[3]~0_combout\ : std_logic;
SIGNAL \inst3|Mux16~1_combout\ : std_logic;
SIGNAL \inst2|salida[1]~1_combout\ : std_logic;
SIGNAL \inst4|internal_value\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ALT_INV_RESET~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux9~0_combout\ : std_logic;

BEGIN

edoPresente <= ww_edoPresente;
ww_CLK <= CLK;
ww_RESET <= RESET;
ww_AUX <= AUX;
ww_W <= W;
ww_X <= X;
ww_Y <= Y;
ww_Z <= Z;
liga <= ww_liga;
prueba <= ww_prueba;
Salida <= ww_Salida;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\RESET~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \RESET~input_o\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\ALT_INV_RESET~inputclkctrl_outclk\ <= NOT \RESET~inputclkctrl_outclk\;
\inst3|ALT_INV_Mux9~0_combout\ <= NOT \inst3|Mux9~0_combout\;

-- Location: IOIBUF_X0_Y7_N8
\AUX~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_AUX,
	o => \AUX~input_o\);

-- Location: IOIBUF_X0_Y7_N1
\Z~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Z,
	o => \Z~input_o\);

-- Location: IOOBUF_X0_Y15_N9
\edoPresente[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|internal_value\(2),
	devoe => ww_devoe,
	o => \edoPresente[2]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\edoPresente[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|internal_value\(1),
	devoe => ww_devoe,
	o => \edoPresente[1]~output_o\);

-- Location: IOOBUF_X0_Y11_N9
\edoPresente[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|internal_value\(0),
	devoe => ww_devoe,
	o => \edoPresente[0]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\liga[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|liga[2]~0_combout\,
	devoe => ww_devoe,
	o => \liga[2]~output_o\);

-- Location: IOOBUF_X0_Y12_N9
\liga[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \liga[1]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\liga[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|liga[0]~1_combout\,
	devoe => ww_devoe,
	o => \liga[0]~output_o\);

-- Location: IOOBUF_X0_Y11_N2
\prueba[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \prueba[2]~output_o\);

-- Location: IOOBUF_X0_Y23_N23
\prueba[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \prueba[1]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\prueba[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux16~0_combout\,
	devoe => ww_devoe,
	o => \prueba[0]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\Salida[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|ALT_INV_Mux9~0_combout\,
	devoe => ww_devoe,
	o => \Salida[4]~output_o\);

-- Location: IOOBUF_X0_Y4_N16
\Salida[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|salida[3]~0_combout\,
	devoe => ww_devoe,
	o => \Salida[3]~output_o\);

-- Location: IOOBUF_X0_Y12_N2
\Salida[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux16~1_combout\,
	devoe => ww_devoe,
	o => \Salida[2]~output_o\);

-- Location: IOOBUF_X0_Y5_N23
\Salida[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|salida[1]~1_combout\,
	devoe => ww_devoe,
	o => \Salida[1]~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\Salida[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \Salida[0]~output_o\);

-- Location: IOIBUF_X0_Y16_N8
\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G2
\CLK~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: IOIBUF_X1_Y0_N8
\W~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_W,
	o => \W~input_o\);

-- Location: LCCOMB_X1_Y8_N22
\inst3|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux4~0_combout\ = (\inst4|internal_value\(0) & (\inst4|internal_value\(1) $ (((\inst4|internal_value\(2)) # (\inst|entrada~2_combout\))))) # (!\inst4|internal_value\(0) & ((\inst4|internal_value\(2) & ((!\inst|entrada~2_combout\))) # 
-- (!\inst4|internal_value\(2) & (\inst4|internal_value\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|internal_value\(1),
	datab => \inst4|internal_value\(0),
	datac => \inst4|internal_value\(2),
	datad => \inst|entrada~2_combout\,
	combout => \inst3|Mux4~0_combout\);

-- Location: IOIBUF_X0_Y16_N15
\RESET~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESET,
	o => \RESET~input_o\);

-- Location: CLKCTRL_G4
\RESET~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RESET~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RESET~inputclkctrl_outclk\);

-- Location: FF_X1_Y8_N15
\inst4|internal_value[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst3|Mux4~0_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|internal_value\(1));

-- Location: LCCOMB_X1_Y8_N16
\inst3|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux1~0_combout\ = (\inst4|internal_value\(2) & (\inst4|internal_value\(1) & !\inst4|internal_value\(0))) # (!\inst4|internal_value\(2) & (!\inst4|internal_value\(1) & \inst4|internal_value\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|internal_value\(2),
	datac => \inst4|internal_value\(1),
	datad => \inst4|internal_value\(0),
	combout => \inst3|Mux1~0_combout\);

-- Location: IOIBUF_X1_Y0_N1
\Y~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y,
	o => \Y~input_o\);

-- Location: LCCOMB_X1_Y8_N26
\inst3|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux16~0_combout\ = (!\inst4|internal_value\(2) & \inst4|internal_value\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|internal_value\(2),
	datad => \inst4|internal_value\(0),
	combout => \inst3|Mux16~0_combout\);

-- Location: IOIBUF_X0_Y10_N22
\X~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X,
	o => \X~input_o\);

-- Location: LCCOMB_X1_Y8_N10
\inst|entrada~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|entrada~0_combout\ = (\inst3|Mux16~0_combout\ & ((\inst3|Mux1~0_combout\ & (\Z~input_o\)) # (!\inst3|Mux1~0_combout\ & ((\X~input_o\))))) # (!\inst3|Mux16~0_combout\ & (((\inst3|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Z~input_o\,
	datab => \X~input_o\,
	datac => \inst3|Mux16~0_combout\,
	datad => \inst3|Mux1~0_combout\,
	combout => \inst|entrada~0_combout\);

-- Location: LCCOMB_X1_Y8_N12
\inst|entrada~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|entrada~1_combout\ = (\inst3|Mux16~0_combout\ & (((\inst|entrada~0_combout\)))) # (!\inst3|Mux16~0_combout\ & ((\inst|entrada~0_combout\ & ((\Y~input_o\))) # (!\inst|entrada~0_combout\ & (\AUX~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AUX~input_o\,
	datab => \Y~input_o\,
	datac => \inst3|Mux16~0_combout\,
	datad => \inst|entrada~0_combout\,
	combout => \inst|entrada~1_combout\);

-- Location: LCCOMB_X1_Y8_N18
\inst|entrada~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|entrada~2_combout\ = (\inst3|Mux16~0_combout\ & (((\inst|entrada~1_combout\)))) # (!\inst3|Mux16~0_combout\ & ((\inst3|Mux1~0_combout\ & ((\inst|entrada~1_combout\))) # (!\inst3|Mux1~0_combout\ & (\W~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Mux16~0_combout\,
	datab => \W~input_o\,
	datac => \inst3|Mux1~0_combout\,
	datad => \inst|entrada~1_combout\,
	combout => \inst|entrada~2_combout\);

-- Location: LCCOMB_X1_Y8_N8
\inst1|liga[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|liga[0]~1_combout\ = (\inst4|internal_value\(0) & ((\inst4|internal_value\(1) & (!\inst4|internal_value\(2) & \inst|entrada~2_combout\)) # (!\inst4|internal_value\(1) & (\inst4|internal_value\(2))))) # (!\inst4|internal_value\(0) & 
-- (((\inst|entrada~2_combout\) # (!\inst4|internal_value\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101101000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|internal_value\(1),
	datab => \inst4|internal_value\(0),
	datac => \inst4|internal_value\(2),
	datad => \inst|entrada~2_combout\,
	combout => \inst1|liga[0]~1_combout\);

-- Location: FF_X1_Y8_N29
\inst4|internal_value[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst1|liga[0]~1_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|internal_value\(0));

-- Location: LCCOMB_X1_Y8_N24
\inst1|liga[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|liga[2]~0_combout\ = (\inst|entrada~2_combout\ & (\inst4|internal_value\(1) & (\inst4|internal_value\(0) $ (\inst4|internal_value\(2))))) # (!\inst|entrada~2_combout\ & (((\inst4|internal_value\(0) & !\inst4|internal_value\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|internal_value\(1),
	datab => \inst4|internal_value\(0),
	datac => \inst4|internal_value\(2),
	datad => \inst|entrada~2_combout\,
	combout => \inst1|liga[2]~0_combout\);

-- Location: FF_X1_Y8_N5
\inst4|internal_value[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst1|liga[2]~0_combout\,
	clrn => \ALT_INV_RESET~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|internal_value\(2));

-- Location: LCCOMB_X1_Y8_N28
\inst3|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux5~0_combout\ = (\inst4|internal_value\(2) & (\inst4|internal_value\(0) & !\inst4|internal_value\(1))) # (!\inst4|internal_value\(2) & (!\inst4|internal_value\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|internal_value\(2),
	datac => \inst4|internal_value\(0),
	datad => \inst4|internal_value\(1),
	combout => \inst3|Mux5~0_combout\);

-- Location: LCCOMB_X1_Y8_N14
\inst3|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux9~0_combout\ = (\inst4|internal_value\(1) & (\inst4|internal_value\(0) & ((\inst4|internal_value\(2)) # (!\inst|entrada~2_combout\)))) # (!\inst4|internal_value\(1) & (\inst4|internal_value\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|internal_value\(2),
	datab => \inst4|internal_value\(0),
	datac => \inst4|internal_value\(1),
	datad => \inst|entrada~2_combout\,
	combout => \inst3|Mux9~0_combout\);

-- Location: LCCOMB_X1_Y8_N4
\inst2|salida[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|salida[3]~0_combout\ = (\inst4|internal_value\(1) & (!\inst4|internal_value\(0))) # (!\inst4|internal_value\(1) & ((\inst4|internal_value\(0) $ (!\inst4|internal_value\(2))) # (!\inst|entrada~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|internal_value\(1),
	datab => \inst4|internal_value\(0),
	datac => \inst4|internal_value\(2),
	datad => \inst|entrada~2_combout\,
	combout => \inst2|salida[3]~0_combout\);

-- Location: LCCOMB_X1_Y8_N30
\inst3|Mux16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux16~1_combout\ = (!\inst4|internal_value\(2) & (\inst4|internal_value\(1) & \inst4|internal_value\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|internal_value\(2),
	datab => \inst4|internal_value\(1),
	datad => \inst4|internal_value\(0),
	combout => \inst3|Mux16~1_combout\);

-- Location: LCCOMB_X1_Y8_N20
\inst2|salida[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|salida[1]~1_combout\ = (\inst4|internal_value\(2) & (!\inst4|internal_value\(0) & ((!\inst|entrada~1_combout\) # (!\inst4|internal_value\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|internal_value\(2),
	datab => \inst4|internal_value\(1),
	datac => \inst4|internal_value\(0),
	datad => \inst|entrada~1_combout\,
	combout => \inst2|salida[1]~1_combout\);

ww_edoPresente(2) <= \edoPresente[2]~output_o\;

ww_edoPresente(1) <= \edoPresente[1]~output_o\;

ww_edoPresente(0) <= \edoPresente[0]~output_o\;

ww_liga(2) <= \liga[2]~output_o\;

ww_liga(1) <= \liga[1]~output_o\;

ww_liga(0) <= \liga[0]~output_o\;

ww_prueba(2) <= \prueba[2]~output_o\;

ww_prueba(1) <= \prueba[1]~output_o\;

ww_prueba(0) <= \prueba[0]~output_o\;

ww_Salida(4) <= \Salida[4]~output_o\;

ww_Salida(3) <= \Salida[3]~output_o\;

ww_Salida(2) <= \Salida[2]~output_o\;

ww_Salida(1) <= \Salida[1]~output_o\;

ww_Salida(0) <= \Salida[0]~output_o\;
END structure;


