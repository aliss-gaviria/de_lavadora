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
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "10/23/2024 21:03:10"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
LIBRARY STD;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE STD.STANDARD.ALL;

ENTITY 	ciclo IS
    PORT (
	encendido : IN std_logic;
	ciclo_oper : IN STD.STANDARD.integer range 0 TO 14;
	llenado : OUT std_logic;
	vaciado : OUT std_logic;
	giro : OUT std_logic_vector(2 DOWNTO 0);
	velocidad : OUT std_logic_vector(2 DOWNTO 0);
	carga : OUT std_logic;
	alarma : OUT std_logic;
	cout : OUT STD.STANDARD.integer range 0 TO 99
	);
END ciclo;

-- Design Ports Information
-- llenado	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vaciado	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- giro[0]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- giro[1]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- giro[2]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- velocidad[0]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- velocidad[1]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- velocidad[2]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- carga	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alarma	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cout[0]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cout[1]	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cout[2]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cout[3]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cout[4]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cout[5]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cout[6]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ciclo_oper[0]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ciclo_oper[1]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ciclo_oper[2]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ciclo_oper[3]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- encendido	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ciclo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_encendido : std_logic;
SIGNAL ww_ciclo_oper : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_llenado : std_logic;
SIGNAL ww_vaciado : std_logic;
SIGNAL ww_giro : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_velocidad : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_carga : std_logic;
SIGNAL ww_alarma : std_logic;
SIGNAL ww_cout : std_logic_vector(6 DOWNTO 0);
SIGNAL \encendido~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \llenado~output_o\ : std_logic;
SIGNAL \vaciado~output_o\ : std_logic;
SIGNAL \giro[0]~output_o\ : std_logic;
SIGNAL \giro[1]~output_o\ : std_logic;
SIGNAL \giro[2]~output_o\ : std_logic;
SIGNAL \velocidad[0]~output_o\ : std_logic;
SIGNAL \velocidad[1]~output_o\ : std_logic;
SIGNAL \velocidad[2]~output_o\ : std_logic;
SIGNAL \carga~output_o\ : std_logic;
SIGNAL \alarma~output_o\ : std_logic;
SIGNAL \cout[0]~output_o\ : std_logic;
SIGNAL \cout[1]~output_o\ : std_logic;
SIGNAL \cout[2]~output_o\ : std_logic;
SIGNAL \cout[3]~output_o\ : std_logic;
SIGNAL \cout[4]~output_o\ : std_logic;
SIGNAL \cout[5]~output_o\ : std_logic;
SIGNAL \cout[6]~output_o\ : std_logic;
SIGNAL \ciclo_oper[2]~input_o\ : std_logic;
SIGNAL \ciclo_oper[3]~input_o\ : std_logic;
SIGNAL \ciclo_oper[1]~input_o\ : std_logic;
SIGNAL \ciclo_oper[0]~input_o\ : std_logic;
SIGNAL \llenado~1_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \encendido~input_o\ : std_logic;
SIGNAL \estado.S_APAGADO~2_combout\ : std_logic;
SIGNAL \llenado~2_combout\ : std_logic;
SIGNAL \encendido~inputclkctrl_outclk\ : std_logic;
SIGNAL \llenado$latch~combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \estado.S_LAVA~0_combout\ : std_logic;
SIGNAL \giro[0]$latch~combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \carga$latch~combout\ : std_logic;
SIGNAL \estado.S_ALARMA~0_combout\ : std_logic;
SIGNAL \alarma$latch~combout\ : std_logic;
SIGNAL \cout[0]$latch~combout\ : std_logic;

BEGIN

ww_encendido <= encendido;
ww_ciclo_oper <= IEEE.STD_LOGIC_ARITH.CONV_STD_LOGIC_VECTOR(ciclo_oper, 4);
llenado <= ww_llenado;
vaciado <= ww_vaciado;
giro <= ww_giro;
velocidad <= ww_velocidad;
carga <= ww_carga;
alarma <= ww_alarma;
cout <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(UNSIGNED(ww_cout));
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\encendido~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \encendido~input_o\);

-- Location: IOOBUF_X0_Y11_N2
\llenado~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \llenado$latch~combout\,
	devoe => ww_devoe,
	o => \llenado~output_o\);

-- Location: IOOBUF_X7_Y29_N30
\vaciado~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \vaciado~output_o\);

-- Location: IOOBUF_X0_Y10_N2
\giro[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \giro[0]$latch~combout\,
	devoe => ww_devoe,
	o => \giro[0]~output_o\);

-- Location: IOOBUF_X0_Y11_N9
\giro[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \giro[0]$latch~combout\,
	devoe => ww_devoe,
	o => \giro[1]~output_o\);

-- Location: IOOBUF_X0_Y11_N16
\giro[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \giro[0]$latch~combout\,
	devoe => ww_devoe,
	o => \giro[2]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\velocidad[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \velocidad[0]~output_o\);

-- Location: IOOBUF_X30_Y0_N2
\velocidad[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \velocidad[1]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\velocidad[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \giro[0]$latch~combout\,
	devoe => ww_devoe,
	o => \velocidad[2]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\carga~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \carga$latch~combout\,
	devoe => ww_devoe,
	o => \carga~output_o\);

-- Location: IOOBUF_X0_Y13_N9
\alarma~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alarma$latch~combout\,
	devoe => ww_devoe,
	o => \alarma~output_o\);

-- Location: IOOBUF_X0_Y12_N23
\cout[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cout[0]$latch~combout\,
	devoe => ww_devoe,
	o => \cout[0]~output_o\);

-- Location: IOOBUF_X0_Y21_N9
\cout[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \carga$latch~combout\,
	devoe => ww_devoe,
	o => \cout[1]~output_o\);

-- Location: IOOBUF_X0_Y12_N2
\cout[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \llenado$latch~combout\,
	devoe => ww_devoe,
	o => \cout[2]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\cout[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \carga$latch~combout\,
	devoe => ww_devoe,
	o => \cout[3]~output_o\);

-- Location: IOOBUF_X0_Y11_N23
\cout[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \llenado$latch~combout\,
	devoe => ww_devoe,
	o => \cout[4]~output_o\);

-- Location: IOOBUF_X32_Y29_N30
\cout[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \cout[5]~output_o\);

-- Location: IOOBUF_X0_Y12_N9
\cout[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \cout[0]$latch~combout\,
	devoe => ww_devoe,
	o => \cout[6]~output_o\);

-- Location: IOIBUF_X0_Y13_N1
\ciclo_oper[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ciclo_oper(2),
	o => \ciclo_oper[2]~input_o\);

-- Location: IOIBUF_X0_Y13_N22
\ciclo_oper[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ciclo_oper(3),
	o => \ciclo_oper[3]~input_o\);

-- Location: IOIBUF_X0_Y12_N15
\ciclo_oper[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ciclo_oper(1),
	o => \ciclo_oper[1]~input_o\);

-- Location: IOIBUF_X0_Y13_N15
\ciclo_oper[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ciclo_oper(0),
	o => \ciclo_oper[0]~input_o\);

-- Location: LCCOMB_X1_Y14_N20
\llenado~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \llenado~1_combout\ = (!\ciclo_oper[2]~input_o\ & (!\ciclo_oper[3]~input_o\ & (!\ciclo_oper[1]~input_o\ & !\ciclo_oper[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ciclo_oper[2]~input_o\,
	datab => \ciclo_oper[3]~input_o\,
	datac => \ciclo_oper[1]~input_o\,
	datad => \ciclo_oper[0]~input_o\,
	combout => \llenado~1_combout\);

-- Location: LCCOMB_X1_Y14_N22
\Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\ciclo_oper[0]~input_o\) # ((\ciclo_oper[1]~input_o\ & (\ciclo_oper[2]~input_o\ $ (!\ciclo_oper[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ciclo_oper[2]~input_o\,
	datab => \ciclo_oper[3]~input_o\,
	datac => \ciclo_oper[1]~input_o\,
	datad => \ciclo_oper[0]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: IOIBUF_X0_Y14_N1
\encendido~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_encendido,
	o => \encendido~input_o\);

-- Location: LCCOMB_X1_Y14_N6
\estado.S_APAGADO~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \estado.S_APAGADO~2_combout\ = (\estado.S_APAGADO~2_combout\) # (!\encendido~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estado.S_APAGADO~2_combout\,
	datad => \encendido~input_o\,
	combout => \estado.S_APAGADO~2_combout\);

-- Location: LCCOMB_X1_Y14_N24
\llenado~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \llenado~2_combout\ = (\llenado~1_combout\ & (!\Mux1~0_combout\ & \estado.S_APAGADO~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \llenado~1_combout\,
	datac => \Mux1~0_combout\,
	datad => \estado.S_APAGADO~2_combout\,
	combout => \llenado~2_combout\);

-- Location: CLKCTRL_G4
\encendido~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \encendido~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \encendido~inputclkctrl_outclk\);

-- Location: LCCOMB_X1_Y14_N28
\llenado$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \llenado$latch~combout\ = (GLOBAL(\encendido~inputclkctrl_outclk\) & (\llenado~2_combout\)) # (!GLOBAL(\encendido~inputclkctrl_outclk\) & ((\llenado$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \llenado~2_combout\,
	datab => \llenado$latch~combout\,
	datad => \encendido~inputclkctrl_outclk\,
	combout => \llenado$latch~combout\);

-- Location: LCCOMB_X1_Y14_N30
\Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (!\ciclo_oper[2]~input_o\ & ((\ciclo_oper[3]~input_o\ & (!\ciclo_oper[1]~input_o\ & \ciclo_oper[0]~input_o\)) # (!\ciclo_oper[3]~input_o\ & (\ciclo_oper[1]~input_o\ & !\ciclo_oper[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ciclo_oper[2]~input_o\,
	datab => \ciclo_oper[3]~input_o\,
	datac => \ciclo_oper[1]~input_o\,
	datad => \ciclo_oper[0]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X1_Y14_N16
\estado.S_LAVA~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \estado.S_LAVA~0_combout\ = (\Mux2~0_combout\ & \estado.S_APAGADO~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux2~0_combout\,
	datad => \estado.S_APAGADO~2_combout\,
	combout => \estado.S_LAVA~0_combout\);

-- Location: LCCOMB_X1_Y14_N26
\giro[0]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \giro[0]$latch~combout\ = (GLOBAL(\encendido~inputclkctrl_outclk\) & ((!\estado.S_LAVA~0_combout\))) # (!GLOBAL(\encendido~inputclkctrl_outclk\) & (\giro[0]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \giro[0]$latch~combout\,
	datac => \estado.S_LAVA~0_combout\,
	datad => \encendido~inputclkctrl_outclk\,
	combout => \giro[0]$latch~combout\);

-- Location: LCCOMB_X1_Y14_N10
\Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\estado.S_APAGADO~2_combout\ & ((\Mux2~0_combout\) # ((!\Mux1~0_combout\ & \llenado~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~0_combout\,
	datab => \llenado~1_combout\,
	datac => \Mux2~0_combout\,
	datad => \estado.S_APAGADO~2_combout\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X1_Y14_N8
\carga$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \carga$latch~combout\ = (GLOBAL(\encendido~inputclkctrl_outclk\) & (\Selector0~0_combout\)) # (!GLOBAL(\encendido~inputclkctrl_outclk\) & ((\carga$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector0~0_combout\,
	datac => \carga$latch~combout\,
	datad => \encendido~inputclkctrl_outclk\,
	combout => \carga$latch~combout\);

-- Location: LCCOMB_X1_Y14_N12
\estado.S_ALARMA~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \estado.S_ALARMA~0_combout\ = (\ciclo_oper[2]~input_o\ & (\ciclo_oper[3]~input_o\ & (\ciclo_oper[1]~input_o\ & \estado.S_APAGADO~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ciclo_oper[2]~input_o\,
	datab => \ciclo_oper[3]~input_o\,
	datac => \ciclo_oper[1]~input_o\,
	datad => \estado.S_APAGADO~2_combout\,
	combout => \estado.S_ALARMA~0_combout\);

-- Location: LCCOMB_X1_Y14_N14
\alarma$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \alarma$latch~combout\ = (GLOBAL(\encendido~inputclkctrl_outclk\) & (\estado.S_ALARMA~0_combout\)) # (!GLOBAL(\encendido~inputclkctrl_outclk\) & ((\alarma$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado.S_ALARMA~0_combout\,
	datac => \alarma$latch~combout\,
	datad => \encendido~inputclkctrl_outclk\,
	combout => \alarma$latch~combout\);

-- Location: LCCOMB_X1_Y14_N4
\cout[0]$latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \cout[0]$latch~combout\ = (GLOBAL(\encendido~inputclkctrl_outclk\) & (\estado.S_LAVA~0_combout\)) # (!GLOBAL(\encendido~inputclkctrl_outclk\) & ((\cout[0]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.S_LAVA~0_combout\,
	datac => \cout[0]$latch~combout\,
	datad => \encendido~inputclkctrl_outclk\,
	combout => \cout[0]$latch~combout\);

ww_llenado <= \llenado~output_o\;

ww_vaciado <= \vaciado~output_o\;

ww_giro(0) <= \giro[0]~output_o\;

ww_giro(1) <= \giro[1]~output_o\;

ww_giro(2) <= \giro[2]~output_o\;

ww_velocidad(0) <= \velocidad[0]~output_o\;

ww_velocidad(1) <= \velocidad[1]~output_o\;

ww_velocidad(2) <= \velocidad[2]~output_o\;

ww_carga <= \carga~output_o\;

ww_alarma <= \alarma~output_o\;

ww_cout(0) <= \cout[0]~output_o\;

ww_cout(1) <= \cout[1]~output_o\;

ww_cout(2) <= \cout[2]~output_o\;

ww_cout(3) <= \cout[3]~output_o\;

ww_cout(4) <= \cout[4]~output_o\;

ww_cout(5) <= \cout[5]~output_o\;

ww_cout(6) <= \cout[6]~output_o\;
END structure;


