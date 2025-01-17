-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "01/16/2025 19:24:57"

-- 
-- Device: Altera 5CSXFC6D6F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ActivitySuggestions IS
    PORT (
	HG_out : OUT std_logic;
	M_W : IN std_logic;
	M_R : IN std_logic;
	PS_out : OUT std_logic;
	C_R : IN std_logic;
	C_T : IN std_logic;
	VB_out : OUT std_logic;
	C_W : IN std_logic;
	CY_out : OUT std_logic;
	BW_out : OUT std_logic;
	M_T : IN std_logic
	);
END ActivitySuggestions;

ARCHITECTURE structure OF ActivitySuggestions IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_HG_out : std_logic;
SIGNAL ww_M_W : std_logic;
SIGNAL ww_M_R : std_logic;
SIGNAL ww_PS_out : std_logic;
SIGNAL ww_C_R : std_logic;
SIGNAL ww_C_T : std_logic;
SIGNAL ww_VB_out : std_logic;
SIGNAL ww_C_W : std_logic;
SIGNAL ww_CY_out : std_logic;
SIGNAL ww_BW_out : std_logic;
SIGNAL ww_M_T : std_logic;
SIGNAL \M_T~input_o\ : std_logic;
SIGNAL \HG_out~output_o\ : std_logic;
SIGNAL \PS_out~output_o\ : std_logic;
SIGNAL \VB_out~output_o\ : std_logic;
SIGNAL \CY_out~output_o\ : std_logic;
SIGNAL \BW_out~output_o\ : std_logic;
SIGNAL \M_W~input_o\ : std_logic;
SIGNAL \M_R~input_o\ : std_logic;
SIGNAL \inst~combout\ : std_logic;
SIGNAL \C_R~input_o\ : std_logic;
SIGNAL \C_T~input_o\ : std_logic;
SIGNAL \inst5~0_combout\ : std_logic;
SIGNAL \C_W~input_o\ : std_logic;
SIGNAL \inst8~0_combout\ : std_logic;
SIGNAL \inst1~combout\ : std_logic;
SIGNAL \inst10~combout\ : std_logic;
SIGNAL \ALT_INV_M_W~input_o\ : std_logic;
SIGNAL \ALT_INV_C_R~input_o\ : std_logic;
SIGNAL \ALT_INV_M_R~input_o\ : std_logic;
SIGNAL \ALT_INV_C_T~input_o\ : std_logic;
SIGNAL \ALT_INV_C_W~input_o\ : std_logic;

BEGIN

HG_out <= ww_HG_out;
ww_M_W <= M_W;
ww_M_R <= M_R;
PS_out <= ww_PS_out;
ww_C_R <= C_R;
ww_C_T <= C_T;
VB_out <= ww_VB_out;
ww_C_W <= C_W;
CY_out <= ww_CY_out;
BW_out <= ww_BW_out;
ww_M_T <= M_T;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_M_W~input_o\ <= NOT \M_W~input_o\;
\ALT_INV_C_R~input_o\ <= NOT \C_R~input_o\;
\ALT_INV_M_R~input_o\ <= NOT \M_R~input_o\;
\ALT_INV_C_T~input_o\ <= NOT \C_T~input_o\;
\ALT_INV_C_W~input_o\ <= NOT \C_W~input_o\;

\HG_out~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst~combout\,
	devoe => ww_devoe,
	o => \HG_out~output_o\);

\PS_out~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5~0_combout\,
	devoe => ww_devoe,
	o => \PS_out~output_o\);

\VB_out~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8~0_combout\,
	devoe => ww_devoe,
	o => \VB_out~output_o\);

\CY_out~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1~combout\,
	devoe => ww_devoe,
	o => \CY_out~output_o\);

\BW_out~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10~combout\,
	devoe => ww_devoe,
	o => \BW_out~output_o\);

\M_W~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_M_W,
	o => \M_W~input_o\);

\M_R~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_M_R,
	o => \M_R~input_o\);

inst : cyclonev_lcell_comb
-- Equation(s):
-- \inst~combout\ = (\M_W~input_o\ & !\M_R~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_M_W~input_o\,
	datab => \ALT_INV_M_R~input_o\,
	combout => \inst~combout\);

\C_R~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C_R,
	o => \C_R~input_o\);

\C_T~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C_T,
	o => \C_T~input_o\);

\inst5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst5~0_combout\ = (!\C_R~input_o\ & (\C_T~input_o\ & ((!\M_W~input_o\) # (\M_R~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010110000000000001011000000000000101100000000000010110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_M_W~input_o\,
	datab => \ALT_INV_M_R~input_o\,
	datac => \ALT_INV_C_R~input_o\,
	datad => \ALT_INV_C_T~input_o\,
	combout => \inst5~0_combout\);

\C_W~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C_W,
	o => \C_W~input_o\);

\inst8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst8~0_combout\ = (!\C_R~input_o\ & (\C_T~input_o\ & !\C_W~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000000100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_C_R~input_o\,
	datab => \ALT_INV_C_T~input_o\,
	datac => \ALT_INV_C_W~input_o\,
	combout => \inst8~0_combout\);

inst1 : cyclonev_lcell_comb
-- Equation(s):
-- \inst1~combout\ = (!\M_R~input_o\) # (!\C_R~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101110111011101110111011101110111011101110111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_M_R~input_o\,
	datab => \ALT_INV_C_R~input_o\,
	combout => \inst1~combout\);

inst10 : cyclonev_lcell_comb
-- Equation(s):
-- \inst10~combout\ = (!\M_R~input_o\ & \C_R~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_M_R~input_o\,
	datab => \ALT_INV_C_R~input_o\,
	combout => \inst10~combout\);

\M_T~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_M_T,
	o => \M_T~input_o\);

ww_HG_out <= \HG_out~output_o\;

ww_PS_out <= \PS_out~output_o\;

ww_VB_out <= \VB_out~output_o\;

ww_CY_out <= \CY_out~output_o\;

ww_BW_out <= \BW_out~output_o\;
END structure;


