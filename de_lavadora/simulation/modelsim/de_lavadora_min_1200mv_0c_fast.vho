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

-- DATE "10/30/2024 20:27:43"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	de_lavadora IS
    PORT (
	encendido : IN std_logic;
	lleno : IN std_logic;
	cerrado : IN std_logic;
	clk : IN std_logic;
	llenado : OUT std_logic;
	vaciado : OUT std_logic;
	giro : OUT std_logic_vector(2 DOWNTO 0);
	velocidad : OUT std_logic_vector(2 DOWNTO 0);
	alarma : OUT std_logic
	);
END de_lavadora;

-- Design Ports Information
-- encendido	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lleno	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cerrado	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- llenado	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vaciado	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- giro[0]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- giro[1]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- giro[2]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- velocidad[0]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- velocidad[1]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- velocidad[2]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alarma	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF de_lavadora IS
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
SIGNAL ww_lleno : std_logic;
SIGNAL ww_cerrado : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_llenado : std_logic;
SIGNAL ww_vaciado : std_logic;
SIGNAL ww_giro : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_velocidad : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_alarma : std_logic;
SIGNAL \encendido~input_o\ : std_logic;
SIGNAL \lleno~input_o\ : std_logic;
SIGNAL \cerrado~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \llenado~output_o\ : std_logic;
SIGNAL \vaciado~output_o\ : std_logic;
SIGNAL \giro[0]~output_o\ : std_logic;
SIGNAL \giro[1]~output_o\ : std_logic;
SIGNAL \giro[2]~output_o\ : std_logic;
SIGNAL \velocidad[0]~output_o\ : std_logic;
SIGNAL \velocidad[1]~output_o\ : std_logic;
SIGNAL \velocidad[2]~output_o\ : std_logic;
SIGNAL \alarma~output_o\ : std_logic;

BEGIN

ww_encendido <= encendido;
ww_lleno <= lleno;
ww_cerrado <= cerrado;
ww_clk <= clk;
llenado <= ww_llenado;
vaciado <= ww_vaciado;
giro <= ww_giro;
velocidad <= ww_velocidad;
alarma <= ww_alarma;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X41_Y2_N2
\llenado~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \llenado~output_o\);

-- Location: IOOBUF_X9_Y29_N9
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

-- Location: IOOBUF_X28_Y0_N30
\giro[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \giro[0]~output_o\);

-- Location: IOOBUF_X0_Y13_N23
\giro[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \giro[1]~output_o\);

-- Location: IOOBUF_X0_Y4_N9
\giro[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \giro[2]~output_o\);

-- Location: IOOBUF_X30_Y29_N2
\velocidad[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \velocidad[0]~output_o\);

-- Location: IOOBUF_X0_Y27_N23
\velocidad[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \velocidad[1]~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\velocidad[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \velocidad[2]~output_o\);

-- Location: IOOBUF_X0_Y26_N2
\alarma~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \alarma~output_o\);

-- Location: IOIBUF_X41_Y18_N15
\encendido~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_encendido,
	o => \encendido~input_o\);

-- Location: IOIBUF_X39_Y29_N29
\lleno~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_lleno,
	o => \lleno~input_o\);

-- Location: IOIBUF_X32_Y29_N29
\cerrado~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cerrado,
	o => \cerrado~input_o\);

-- Location: IOIBUF_X0_Y24_N15
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

ww_llenado <= \llenado~output_o\;

ww_vaciado <= \vaciado~output_o\;

ww_giro(0) <= \giro[0]~output_o\;

ww_giro(1) <= \giro[1]~output_o\;

ww_giro(2) <= \giro[2]~output_o\;

ww_velocidad(0) <= \velocidad[0]~output_o\;

ww_velocidad(1) <= \velocidad[1]~output_o\;

ww_velocidad(2) <= \velocidad[2]~output_o\;

ww_alarma <= \alarma~output_o\;
END structure;


