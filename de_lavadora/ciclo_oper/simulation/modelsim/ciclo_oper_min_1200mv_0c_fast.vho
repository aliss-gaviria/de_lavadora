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

-- DATE "10/24/2024 17:37:12"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
LIBRARY STD;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE STD.STANDARD.ALL;

ENTITY 	ciclo_oper IS
    PORT (
	finalizado : IN std_logic;
	ciclo : OUT STD.STANDARD.integer range 0 TO 14
	);
END ciclo_oper;

-- Design Ports Information
-- ciclo[0]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ciclo[1]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ciclo[2]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ciclo[3]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- finalizado	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ciclo_oper IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_finalizado : std_logic;
SIGNAL ww_ciclo : std_logic_vector(3 DOWNTO 0);
SIGNAL \finalizado~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ciclo[0]~output_o\ : std_logic;
SIGNAL \ciclo[1]~output_o\ : std_logic;
SIGNAL \ciclo[2]~output_o\ : std_logic;
SIGNAL \ciclo[3]~output_o\ : std_logic;
SIGNAL \finalizado~input_o\ : std_logic;
SIGNAL \finalizado~inputclkctrl_outclk\ : std_logic;
SIGNAL \fin~3_combout\ : std_logic;
SIGNAL \fin~2_combout\ : std_logic;
SIGNAL \fin~1_combout\ : std_logic;
SIGNAL \fin~0_combout\ : std_logic;
SIGNAL fin : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_finalizado <= finalizado;
ciclo <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(UNSIGNED(ww_ciclo));
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\finalizado~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \finalizado~input_o\);

-- Location: IOOBUF_X0_Y2_N2
\ciclo[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => fin(0),
	devoe => ww_devoe,
	o => \ciclo[0]~output_o\);

-- Location: IOOBUF_X0_Y2_N16
\ciclo[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => fin(1),
	devoe => ww_devoe,
	o => \ciclo[1]~output_o\);

-- Location: IOOBUF_X0_Y2_N9
\ciclo[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => fin(2),
	devoe => ww_devoe,
	o => \ciclo[2]~output_o\);

-- Location: IOOBUF_X0_Y2_N23
\ciclo[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => fin(3),
	devoe => ww_devoe,
	o => \ciclo[3]~output_o\);

-- Location: IOIBUF_X0_Y14_N1
\finalizado~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_finalizado,
	o => \finalizado~input_o\);

-- Location: CLKCTRL_G4
\finalizado~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \finalizado~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \finalizado~inputclkctrl_outclk\);

-- Location: LCCOMB_X1_Y2_N2
\fin~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fin~3_combout\ = (fin(3)) # ((fin(0) & (fin(2) & fin(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fin(0),
	datab => fin(2),
	datac => fin(3),
	datad => fin(1),
	combout => \fin~3_combout\);

-- Location: FF_X1_Y2_N3
\fin[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \finalizado~inputclkctrl_outclk\,
	d => \fin~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fin(3));

-- Location: LCCOMB_X1_Y2_N28
\fin~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fin~2_combout\ = (fin(1) & ((fin(2) & ((fin(3)) # (!fin(0)))) # (!fin(2) & ((fin(0)))))) # (!fin(1) & (((fin(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fin(1),
	datab => fin(3),
	datac => fin(2),
	datad => fin(0),
	combout => \fin~2_combout\);

-- Location: FF_X1_Y2_N29
\fin[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \finalizado~inputclkctrl_outclk\,
	d => \fin~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fin(2));

-- Location: LCCOMB_X1_Y2_N6
\fin~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fin~1_combout\ = (fin(1) & (((fin(2) & fin(3))) # (!fin(0)))) # (!fin(1) & (((fin(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fin(2),
	datab => fin(3),
	datac => fin(1),
	datad => fin(0),
	combout => \fin~1_combout\);

-- Location: FF_X1_Y2_N7
\fin[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \finalizado~inputclkctrl_outclk\,
	d => \fin~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fin(1));

-- Location: LCCOMB_X1_Y2_N24
\fin~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \fin~0_combout\ = (!fin(0) & (((!fin(3)) # (!fin(2))) # (!fin(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fin(1),
	datab => fin(2),
	datac => fin(0),
	datad => fin(3),
	combout => \fin~0_combout\);

-- Location: FF_X1_Y2_N25
\fin[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \finalizado~inputclkctrl_outclk\,
	d => \fin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fin(0));

ww_ciclo(0) <= \ciclo[0]~output_o\;

ww_ciclo(1) <= \ciclo[1]~output_o\;

ww_ciclo(2) <= \ciclo[2]~output_o\;

ww_ciclo(3) <= \ciclo[3]~output_o\;
END structure;


