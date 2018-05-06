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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version"

-- DATE "02/16/2018 15:46:47"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	PmodKYPD IS
    PORT (
	clk : IN std_logic;
	Row : IN std_logic_vector(3 DOWNTO 0);
	Col : OUT std_logic_vector(3 DOWNTO 0);
	valeur : OUT std_logic_vector(3 DOWNTO 0)
	);
END PmodKYPD;

-- Design Ports Information
-- Col[0]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Col[1]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Col[2]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Col[3]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valeur[0]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valeur[1]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valeur[2]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- valeur[3]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Row[1]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Row[3]	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Row[0]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Row[2]	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF PmodKYPD IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_Row : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Col : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_valeur : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \C0|Add0~30_combout\ : std_logic;
SIGNAL \C0|Equal6~0_combout\ : std_logic;
SIGNAL \C0|DecodeOut[1]~15_combout\ : std_logic;
SIGNAL \C0|DecodeOut[1]~16_combout\ : std_logic;
SIGNAL \C0|DecodeOut[2]~21_combout\ : std_logic;
SIGNAL \C0|DecodeOut~28_combout\ : std_logic;
SIGNAL \Col[0]~output_o\ : std_logic;
SIGNAL \Col[1]~output_o\ : std_logic;
SIGNAL \Col[2]~output_o\ : std_logic;
SIGNAL \Col[3]~output_o\ : std_logic;
SIGNAL \valeur[0]~output_o\ : std_logic;
SIGNAL \valeur[1]~output_o\ : std_logic;
SIGNAL \valeur[2]~output_o\ : std_logic;
SIGNAL \valeur[3]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \C0|Add0~0_combout\ : std_logic;
SIGNAL \C0|Add0~13\ : std_logic;
SIGNAL \C0|Add0~15\ : std_logic;
SIGNAL \C0|Add0~16_combout\ : std_logic;
SIGNAL \C0|Add0~17\ : std_logic;
SIGNAL \C0|Add0~18_combout\ : std_logic;
SIGNAL \C0|sclk~7_combout\ : std_logic;
SIGNAL \C0|Add0~19\ : std_logic;
SIGNAL \C0|Add0~20_combout\ : std_logic;
SIGNAL \C0|Add0~21\ : std_logic;
SIGNAL \C0|Add0~22_combout\ : std_logic;
SIGNAL \C0|sclk~4_combout\ : std_logic;
SIGNAL \C0|Add0~23\ : std_logic;
SIGNAL \C0|Add0~24_combout\ : std_logic;
SIGNAL \C0|sclk~2_combout\ : std_logic;
SIGNAL \C0|Add0~25\ : std_logic;
SIGNAL \C0|Add0~26_combout\ : std_logic;
SIGNAL \C0|Add0~27\ : std_logic;
SIGNAL \C0|Add0~29\ : std_logic;
SIGNAL \C0|Add0~31\ : std_logic;
SIGNAL \C0|Add0~33\ : std_logic;
SIGNAL \C0|Add0~34_combout\ : std_logic;
SIGNAL \C0|sclk~5_combout\ : std_logic;
SIGNAL \C0|Add0~10_combout\ : std_logic;
SIGNAL \C0|Equal2~2_combout\ : std_logic;
SIGNAL \C0|Add0~14_combout\ : std_logic;
SIGNAL \C0|sclk~6_combout\ : std_logic;
SIGNAL \C0|Equal0~0_combout\ : std_logic;
SIGNAL \C0|Add0~35\ : std_logic;
SIGNAL \C0|Add0~37\ : std_logic;
SIGNAL \C0|Add0~38_combout\ : std_logic;
SIGNAL \C0|Add0~28_combout\ : std_logic;
SIGNAL \C0|Equal0~1_combout\ : std_logic;
SIGNAL \C0|Equal0~6_combout\ : std_logic;
SIGNAL \C0|Equal7~0_combout\ : std_logic;
SIGNAL \C0|sclk~1_combout\ : std_logic;
SIGNAL \C0|Add0~1\ : std_logic;
SIGNAL \C0|Add0~2_combout\ : std_logic;
SIGNAL \C0|Add0~3\ : std_logic;
SIGNAL \C0|Add0~4_combout\ : std_logic;
SIGNAL \C0|Add0~5\ : std_logic;
SIGNAL \C0|Add0~6_combout\ : std_logic;
SIGNAL \C0|sclk~0_combout\ : std_logic;
SIGNAL \C0|Add0~7\ : std_logic;
SIGNAL \C0|Add0~8_combout\ : std_logic;
SIGNAL \C0|sclk[4]~feeder_combout\ : std_logic;
SIGNAL \C0|Add0~9\ : std_logic;
SIGNAL \C0|Add0~11\ : std_logic;
SIGNAL \C0|Add0~12_combout\ : std_logic;
SIGNAL \C0|Equal2~0_combout\ : std_logic;
SIGNAL \C0|Add0~36_combout\ : std_logic;
SIGNAL \C0|sclk~3_combout\ : std_logic;
SIGNAL \C0|Add0~32_combout\ : std_logic;
SIGNAL \C0|Equal2~1_combout\ : std_logic;
SIGNAL \C0|Equal2~3_combout\ : std_logic;
SIGNAL \C0|Equal2~4_combout\ : std_logic;
SIGNAL \C0|Equal0~2_combout\ : std_logic;
SIGNAL \C0|Equal0~3_combout\ : std_logic;
SIGNAL \C0|Equal0~4_combout\ : std_logic;
SIGNAL \C0|Equal0~5_combout\ : std_logic;
SIGNAL \C0|Col[0]~0_combout\ : std_logic;
SIGNAL \C0|Equal4~0_combout\ : std_logic;
SIGNAL \C0|Equal6~1_combout\ : std_logic;
SIGNAL \C0|Equal6~2_combout\ : std_logic;
SIGNAL \C0|Equal2~5_combout\ : std_logic;
SIGNAL \C0|Col[0]~1_combout\ : std_logic;
SIGNAL \C0|Equal4~1_combout\ : std_logic;
SIGNAL \C0|Equal1~0_combout\ : std_logic;
SIGNAL \C0|DecodeOut[1]~3_combout\ : std_logic;
SIGNAL \C0|Equal5~0_combout\ : std_logic;
SIGNAL \C0|DecodeOut[0]~4_combout\ : std_logic;
SIGNAL \C0|DecodeOut[0]~5_combout\ : std_logic;
SIGNAL \C0|DecodeOut[0]~33_combout\ : std_logic;
SIGNAL \Row[2]~input_o\ : std_logic;
SIGNAL \Row[3]~input_o\ : std_logic;
SIGNAL \Row[0]~input_o\ : std_logic;
SIGNAL \C0|DecodeOut[0]~6_combout\ : std_logic;
SIGNAL \C0|DecodeOut[0]~34_combout\ : std_logic;
SIGNAL \C0|DecodeOut[0]~35_combout\ : std_logic;
SIGNAL \C0|DecodeOut[2]~7_combout\ : std_logic;
SIGNAL \C0|DecodeOut[1]~11_combout\ : std_logic;
SIGNAL \Row[1]~input_o\ : std_logic;
SIGNAL \C0|Equal11~0_combout\ : std_logic;
SIGNAL \C0|Equal10~0_combout\ : std_logic;
SIGNAL \C0|DecodeOut[1]~13_combout\ : std_logic;
SIGNAL \C0|DecodeOut[3]~8_combout\ : std_logic;
SIGNAL \C0|DecodeOut[1]~12_combout\ : std_logic;
SIGNAL \C0|DecodeOut[1]~14_combout\ : std_logic;
SIGNAL \C0|DecodeOut[3]~9_combout\ : std_logic;
SIGNAL \C0|DecodeOut[1]~10_combout\ : std_logic;
SIGNAL \C0|DecodeOut[3]~17_combout\ : std_logic;
SIGNAL \C0|DecodeOut[1]~18_combout\ : std_logic;
SIGNAL \C0|Equal8~0_combout\ : std_logic;
SIGNAL \C0|DecodeOut[2]~26_combout\ : std_logic;
SIGNAL \C0|DecodeOut~19_combout\ : std_logic;
SIGNAL \C0|DecodeOut~2_combout\ : std_logic;
SIGNAL \C0|DecodeOut~20_combout\ : std_logic;
SIGNAL \C0|DecodeOut[3]~22_combout\ : std_logic;
SIGNAL \C0|DecodeOut[2]~23_combout\ : std_logic;
SIGNAL \C0|DecodeOut[2]~24_combout\ : std_logic;
SIGNAL \C0|DecodeOut[2]~25_combout\ : std_logic;
SIGNAL \C0|DecodeOut[2]~27_combout\ : std_logic;
SIGNAL \C0|DecodeOut[3]~29_combout\ : std_logic;
SIGNAL \C0|DecodeOut[3]~30_combout\ : std_logic;
SIGNAL \C0|DecodeOut[3]~31_combout\ : std_logic;
SIGNAL \C0|DecodeOut[3]~32_combout\ : std_logic;
SIGNAL \C0|sclk\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \C0|DecodeOut\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \C0|Col\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_Row <= Row;
Col <= ww_Col;
valeur <= ww_valeur;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: LCCOMB_X29_Y12_N10
\C0|Add0~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C0|Add0~30_combout\ = (\C0|sclk\(15) & (!\C0|Add0~29\)) # (!\C0|sclk\(15) & ((\C0|Add0~29\) # (GND)))
-- \C0|Add0~31\ = CARRY((!\C0|Add0~29\) # (!\C0|sclk\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C0|sclk\(15),
	datad => VCC,
	cin => \C0|Add0~29\,
	combout => \C0|Add0~30_combout\,
	cout => \C0|Add0~31\);

-- Location: FF_X29_Y12_N11
\C0|sclk[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \C0|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C0|sclk\(15));

-- Location: LCCOMB_X29_Y13_N10
\C0|Equal6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C0|Equal6~0_combout\ = (!\C0|sclk\(6) & !\C0|sclk\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C0|sclk\(6),
	datad => \C0|sclk\(8),
	combout => \C0|Equal6~0_combout\);

-- Location: LCCOMB_X32_Y12_N26
\C0|DecodeOut[1]~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C0|DecodeOut[1]~15_combout\ = ((\Row[1]~input_o\ $ (!\Row[2]~input_o\)) # (!\Row[0]~input_o\)) # (!\Row[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Row[1]~input_o\,
	datab => \Row[2]~input_o\,
	datac => \Row[3]~input_o\,
	datad => \Row[0]~input_o\,
	combout => \C0|DecodeOut[1]~15_combout\);

-- Location: LCCOMB_X32_Y12_N4
\C0|DecodeOut[1]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C0|DecodeOut[1]~16_combout\ = (\C0|Equal8~0_combout\) # ((\C0|DecodeOut[1]~15_combout\ & ((\C0|Equal11~0_combout\) # (\C0|DecodeOut\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|DecodeOut[1]~15_combout\,
	datab => \C0|Equal8~0_combout\,
	datac => \C0|Equal11~0_combout\,
	datad => \C0|DecodeOut\(1),
	combout => \C0|DecodeOut[1]~16_combout\);

-- Location: LCCOMB_X32_Y12_N0
\C0|DecodeOut[2]~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C0|DecodeOut[2]~21_combout\ = (\C0|DecodeOut~2_combout\ & ((\C0|Equal11~0_combout\) # (\C0|DecodeOut\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C0|DecodeOut~2_combout\,
	datac => \C0|Equal11~0_combout\,
	datad => \C0|DecodeOut\(2),
	combout => \C0|DecodeOut[2]~21_combout\);

-- Location: LCCOMB_X32_Y12_N2
\C0|DecodeOut~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C0|DecodeOut~28_combout\ = (\C0|DecodeOut[3]~8_combout\ & ((\C0|DecodeOut\(3)) # (!\C0|DecodeOut[3]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|DecodeOut\(3),
	datac => \C0|DecodeOut[3]~22_combout\,
	datad => \C0|DecodeOut[3]~8_combout\,
	combout => \C0|DecodeOut~28_combout\);

-- Location: IOOBUF_X31_Y0_N2
\Col[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C0|Col\(0),
	devoe => ww_devoe,
	o => \Col[0]~output_o\);

-- Location: IOOBUF_X29_Y0_N2
\Col[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C0|Col\(1),
	devoe => ww_devoe,
	o => \Col[1]~output_o\);

-- Location: IOOBUF_X29_Y0_N9
\Col[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C0|Col\(2),
	devoe => ww_devoe,
	o => \Col[2]~output_o\);

-- Location: IOOBUF_X33_Y14_N9
\Col[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C0|Col\(3),
	devoe => ww_devoe,
	o => \Col[3]~output_o\);

-- Location: IOOBUF_X33_Y11_N9
\valeur[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C0|DecodeOut\(0),
	devoe => ww_devoe,
	o => \valeur[0]~output_o\);

-- Location: IOOBUF_X31_Y0_N9
\valeur[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C0|DecodeOut\(1),
	devoe => ww_devoe,
	o => \valeur[1]~output_o\);

-- Location: IOOBUF_X33_Y12_N2
\valeur[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C0|DecodeOut\(2),
	devoe => ww_devoe,
	o => \valeur[2]~output_o\);

-- Location: IOOBUF_X33_Y12_N9
\valeur[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C0|DecodeOut\(3),
	devoe => ww_devoe,
	o => \valeur[3]~output_o\);

-- Location: IOIBUF_X16_Y0_N15
\clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G17
\clk~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X29_Y13_N12
\C0|Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C0|Add0~0_combout\ = \C0|sclk\(0) $ (VCC)
-- \C0|Add0~1\ = CARRY(\C0|sclk\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C0|sclk\(0),
	datad => VCC,
	combout => \C0|Add0~0_combout\,
	cout => \C0|Add0~1\);

-- Location: LCCOMB_X29_Y13_N24
\C0|Add0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C0|Add0~12_combout\ = (\C0|sclk\(6) & (\C0|Add0~11\ $ (GND))) # (!\C0|sclk\(6) & (!\C0|Add0~11\ & VCC))
-- \C0|Add0~13\ = CARRY((\C0|sclk\(6) & !\C0|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C0|sclk\(6),
	datad => VCC,
	cin => \C0|Add0~11\,
	combout => \C0|Add0~12_combout\,
	cout => \C0|Add0~13\);

-- Location: LCCOMB_X29_Y13_N26
\C0|Add0~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C0|Add0~14_combout\ = (\C0|sclk\(7) & (!\C0|Add0~13\)) # (!\C0|sclk\(7) & ((\C0|Add0~13\) # (GND)))
-- \C0|Add0~15\ = CARRY((!\C0|Add0~13\) # (!\C0|sclk\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C0|sclk\(7),
	datad => VCC,
	cin => \C0|Add0~13\,
	combout => \C0|Add0~14_combout\,
	cout => \C0|Add0~15\);

-- Location: LCCOMB_X29_Y13_N28
\C0|Add0~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C0|Add0~16_combout\ = (\C0|sclk\(8) & (\C0|Add0~15\ $ (GND))) # (!\C0|sclk\(8) & (!\C0|Add0~15\ & VCC))
-- \C0|Add0~17\ = CARRY((\C0|sclk\(8) & !\C0|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C0|sclk\(8),
	datad => VCC,
	cin => \C0|Add0~15\,
	combout => \C0|Add0~16_combout\,
	cout => \C0|Add0~17\);

-- Location: FF_X29_Y13_N29
\C0|sclk[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \C0|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C0|sclk\(8));

-- Location: LCCOMB_X29_Y13_N30
\C0|Add0~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C0|Add0~18_combout\ = (\C0|sclk\(9) & (!\C0|Add0~17\)) # (!\C0|sclk\(9) & ((\C0|Add0~17\) # (GND)))
-- \C0|Add0~19\ = CARRY((!\C0|Add0~17\) # (!\C0|sclk\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C0|sclk\(9),
	datad => VCC,
	cin => \C0|Add0~17\,
	combout => \C0|Add0~18_combout\,
	cout => \C0|Add0~19\);

-- Location: LCCOMB_X30_Y13_N26
\C0|sclk~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C0|sclk~7_combout\ = (\C0|Add0~18_combout\ & !\C0|Equal7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C0|Add0~18_combout\,
	datad => \C0|Equal7~0_combout\,
	combout => \C0|sclk~7_combout\);

-- Location: FF_X30_Y13_N27
\C0|sclk[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \C0|sclk~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C0|sclk\(9));

-- Location: LCCOMB_X29_Y12_N0
\C0|Add0~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C0|Add0~20_combout\ = (\C0|sclk\(10) & (\C0|Add0~19\ $ (GND))) # (!\C0|sclk\(10) & (!\C0|Add0~19\ & VCC))
-- \C0|Add0~21\ = CARRY((\C0|sclk\(10) & !\C0|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C0|sclk\(10),
	datad => VCC,
	cin => \C0|Add0~19\,
	combout => \C0|Add0~20_combout\,
	cout => \C0|Add0~21\);

-- Location: FF_X29_Y12_N1
\C0|sclk[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \C0|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C0|sclk\(10));

-- Location: LCCOMB_X29_Y12_N2
\C0|Add0~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C0|Add0~22_combout\ = (\C0|sclk\(11) & (!\C0|Add0~21\)) # (!\C0|sclk\(11) & ((\C0|Add0~21\) # (GND)))
-- \C0|Add0~23\ = CARRY((!\C0|Add0~21\) # (!\C0|sclk\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C0|sclk\(11),
	datad => VCC,
	cin => \C0|Add0~21\,
	combout => \C0|Add0~22_combout\,
	cout => \C0|Add0~23\);

-- Location: LCCOMB_X29_Y12_N20
\C0|sclk~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C0|sclk~4_combout\ = (\C0|Add0~22_combout\ & !\C0|Equal7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C0|Add0~22_combout\,
	datad => \C0|Equal7~0_combout\,
	combout => \C0|sclk~4_combout\);

-- Location: FF_X29_Y12_N21
\C0|sclk[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \C0|sclk~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C0|sclk\(11));

-- Location: LCCOMB_X29_Y12_N4
\C0|Add0~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C0|Add0~24_combout\ = (\C0|sclk\(12) & (\C0|Add0~23\ $ (GND))) # (!\C0|sclk\(12) & (!\C0|Add0~23\ & VCC))
-- \C0|Add0~25\ = CARRY((\C0|sclk\(12) & !\C0|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C0|sclk\(12),
	datad => VCC,
	cin => \C0|Add0~23\,
	combout => \C0|Add0~24_combout\,
	cout => \C0|Add0~25\);

-- Location: LCCOMB_X30_Y12_N26
\C0|sclk~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C0|sclk~2_combout\ = (!\C0|Equal7~0_combout\ & \C0|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C0|Equal7~0_combout\,
	datac => \C0|Add0~24_combout\,
	combout => \C0|sclk~2_combout\);

-- Location: FF_X30_Y12_N27
\C0|sclk[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \C0|sclk~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C0|sclk\(12));

-- Location: LCCOMB_X29_Y12_N6
\C0|Add0~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C0|Add0~26_combout\ = (\C0|sclk\(13) & (!\C0|Add0~25\)) # (!\C0|sclk\(13) & ((\C0|Add0~25\) # (GND)))
-- \C0|Add0~27\ = CARRY((!\C0|Add0~25\) # (!\C0|sclk\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C0|sclk\(13),
	datad => VCC,
	cin => \C0|Add0~25\,
	combout => \C0|Add0~26_combout\,
	cout => \C0|Add0~27\);

-- Location: FF_X29_Y12_N7
\C0|sclk[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \C0|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C0|sclk\(13));

-- Location: LCCOMB_X29_Y12_N8
\C0|Add0~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C0|Add0~28_combout\ = (\C0|sclk\(14) & (\C0|Add0~27\ $ (GND))) # (!\C0|sclk\(14) & (!\C0|Add0~27\ & VCC))
-- \C0|Add0~29\ = CARRY((\C0|sclk\(14) & !\C0|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C0|sclk\(14),
	datad => VCC,
	cin => \C0|Add0~27\,
	combout => \C0|Add0~28_combout\,
	cout => \C0|Add0~29\);

-- Location: LCCOMB_X29_Y12_N12
\C0|Add0~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C0|Add0~32_combout\ = (\C0|sclk\(16) & (\C0|Add0~31\ $ (GND))) # (!\C0|sclk\(16) & (!\C0|Add0~31\ & VCC))
-- \C0|Add0~33\ = CARRY((\C0|sclk\(16) & !\C0|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C0|sclk\(16),
	datad => VCC,
	cin => \C0|Add0~31\,
	combout => \C0|Add0~32_combout\,
	cout => \C0|Add0~33\);

-- Location: LCCOMB_X29_Y12_N14
\C0|Add0~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C0|Add0~34_combout\ = (\C0|sclk\(17) & (!\C0|Add0~33\)) # (!\C0|sclk\(17) & ((\C0|Add0~33\) # (GND)))
-- \C0|Add0~35\ = CARRY((!\C0|Add0~33\) # (!\C0|sclk\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C0|sclk\(17),
	datad => VCC,
	cin => \C0|Add0~33\,
	combout => \C0|Add0~34_combout\,
	cout => \C0|Add0~35\);

-- Location: LCCOMB_X29_Y12_N26
\C0|sclk~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C0|sclk~5_combout\ = (\C0|Add0~34_combout\ & !\C0|Equal7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C0|Add0~34_combout\,
	datad => \C0|Equal7~0_combout\,
	combout => \C0|sclk~5_combout\);

-- Location: FF_X29_Y12_N27
\C0|sclk[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \C0|sclk~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C0|sclk\(17));

-- Location: LCCOMB_X29_Y13_N22
\C0|Add0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C0|Add0~10_combout\ = (\C0|sclk\(5) & (!\C0|Add0~9\)) # (!\C0|sclk\(5) & ((\C0|Add0~9\) # (GND)))
-- \C0|Add0~11\ = CARRY((!\C0|Add0~9\) # (!\C0|sclk\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C0|sclk\(5),
	datad => VCC,
	cin => \C0|Add0~9\,
	combout => \C0|Add0~10_combout\,
	cout => \C0|Add0~11\);

-- Location: FF_X29_Y13_N23
\C0|sclk[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \C0|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C0|sclk\(5));

-- Location: LCCOMB_X29_Y12_N24
\C0|Equal2~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C0|Equal2~2_combout\ = (!\C0|sclk\(15) & (\C0|sclk\(11) & (\C0|sclk\(17) & !\C0|sclk\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|sclk\(15),
	datab => \C0|sclk\(11),
	datac => \C0|sclk\(17),
	datad => \C0|sclk\(5),
	combout => \C0|Equal2~2_combout\);

-- Location: LCCOMB_X30_Y13_N24
\C0|sclk~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C0|sclk~6_combout\ = (\C0|Add0~14_combout\ & !\C0|Equal7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C0|Add0~14_combout\,
	datad => \C0|Equal7~0_combout\,
	combout => \C0|sclk~6_combout\);

-- Location: FF_X30_Y13_N25
\C0|sclk[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \C0|sclk~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C0|sclk\(7));

-- Location: LCCOMB_X30_Y13_N30
\C0|Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C0|Equal0~0_combout\ = (!\C0|sclk\(4) & (!\C0|sclk\(0) & (!\C0|sclk\(2) & !\C0|sclk\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|sclk\(4),
	datab => \C0|sclk\(0),
	datac => \C0|sclk\(2),
	datad => \C0|sclk\(1),
	combout => \C0|Equal0~0_combout\);

-- Location: LCCOMB_X29_Y12_N16
\C0|Add0~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C0|Add0~36_combout\ = (\C0|sclk\(18) & (\C0|Add0~35\ $ (GND))) # (!\C0|sclk\(18) & (!\C0|Add0~35\ & VCC))
-- \C0|Add0~37\ = CARRY((\C0|sclk\(18) & !\C0|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C0|sclk\(18),
	datad => VCC,
	cin => \C0|Add0~35\,
	combout => \C0|Add0~36_combout\,
	cout => \C0|Add0~37\);

-- Location: LCCOMB_X29_Y12_N18
\C0|Add0~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C0|Add0~38_combout\ = \C0|sclk\(19) $ (\C0|Add0~37\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C0|sclk\(19),
	cin => \C0|Add0~37\,
	combout => \C0|Add0~38_combout\);

-- Location: FF_X29_Y12_N19
\C0|sclk[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \C0|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C0|sclk\(19));

-- Location: FF_X29_Y12_N9
\C0|sclk[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \C0|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C0|sclk\(14));

-- Location: LCCOMB_X29_Y12_N28
\C0|Equal0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C0|Equal0~1_combout\ = (!\C0|sclk\(19) & (!\C0|sclk\(14) & !\C0|sclk\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C0|sclk\(19),
	datac => \C0|sclk\(14),
	datad => \C0|sclk\(13),
	combout => \C0|Equal0~1_combout\);

-- Location: LCCOMB_X30_Y13_N8
\C0|Equal0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C0|Equal0~6_combout\ = (\C0|sclk\(9) & (\C0|sclk\(7) & (\C0|Equal0~0_combout\ & \C0|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|sclk\(9),
	datab => \C0|sclk\(7),
	datac => \C0|Equal0~0_combout\,
	datad => \C0|Equal0~1_combout\,
	combout => \C0|Equal0~6_combout\);

-- Location: LCCOMB_X30_Y12_N2
\C0|Equal7~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C0|Equal7~0_combout\ = (\C0|Equal6~1_combout\ & (\C0|Equal2~2_combout\ & (\C0|sclk\(3) & \C0|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|Equal6~1_combout\,
	datab => \C0|Equal2~2_combout\,
	datac => \C0|sclk\(3),
	datad => \C0|Equal0~6_combout\,
	combout => \C0|Equal7~0_combout\);

-- Location: LCCOMB_X30_Y13_N14
\C0|sclk~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C0|sclk~1_combout\ = (\C0|Add0~0_combout\ & !\C0|Equal7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C0|Add0~0_combout\,
	datad => \C0|Equal7~0_combout\,
	combout => \C0|sclk~1_combout\);

-- Location: FF_X30_Y13_N15
\C0|sclk[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \C0|sclk~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C0|sclk\(0));

-- Location: LCCOMB_X29_Y13_N14
\C0|Add0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C0|Add0~2_combout\ = (\C0|sclk\(1) & (!\C0|Add0~1\)) # (!\C0|sclk\(1) & ((\C0|Add0~1\) # (GND)))
-- \C0|Add0~3\ = CARRY((!\C0|Add0~1\) # (!\C0|sclk\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C0|sclk\(1),
	datad => VCC,
	cin => \C0|Add0~1\,
	combout => \C0|Add0~2_combout\,
	cout => \C0|Add0~3\);

-- Location: FF_X29_Y13_N15
\C0|sclk[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \C0|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C0|sclk\(1));

-- Location: LCCOMB_X29_Y13_N16
\C0|Add0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C0|Add0~4_combout\ = (\C0|sclk\(2) & (\C0|Add0~3\ $ (GND))) # (!\C0|sclk\(2) & (!\C0|Add0~3\ & VCC))
-- \C0|Add0~5\ = CARRY((\C0|sclk\(2) & !\C0|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C0|sclk\(2),
	datad => VCC,
	cin => \C0|Add0~3\,
	combout => \C0|Add0~4_combout\,
	cout => \C0|Add0~5\);

-- Location: FF_X29_Y13_N17
\C0|sclk[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \C0|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C0|sclk\(2));

-- Location: LCCOMB_X29_Y13_N18
\C0|Add0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C0|Add0~6_combout\ = (\C0|sclk\(3) & (!\C0|Add0~5\)) # (!\C0|sclk\(3) & ((\C0|Add0~5\) # (GND)))
-- \C0|Add0~7\ = CARRY((!\C0|Add0~5\) # (!\C0|sclk\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C0|sclk\(3),
	datad => VCC,
	cin => \C0|Add0~5\,
	combout => \C0|Add0~6_combout\,
	cout => \C0|Add0~7\);

-- Location: LCCOMB_X30_Y13_N28
\C0|sclk~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C0|sclk~0_combout\ = (\C0|Add0~6_combout\ & !\C0|Equal7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C0|Add0~6_combout\,
	datad => \C0|Equal7~0_combout\,
	combout => \C0|sclk~0_combout\);

-- Location: FF_X30_Y13_N29
\C0|sclk[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \C0|sclk~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C0|sclk\(3));

-- Location: LCCOMB_X29_Y13_N20
\C0|Add0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C0|Add0~8_combout\ = (\C0|sclk\(4) & (\C0|Add0~7\ $ (GND))) # (!\C0|sclk\(4) & (!\C0|Add0~7\ & VCC))
-- \C0|Add0~9\ = CARRY((\C0|sclk\(4) & !\C0|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C0|sclk\(4),
	datad => VCC,
	cin => \C0|Add0~7\,
	combout => \C0|Add0~8_combout\,
	cout => \C0|Add0~9\);

-- Location: LCCOMB_X30_Y13_N12
\C0|sclk[4]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C0|sclk[4]~feeder_combout\ = \C0|Add0~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C0|Add0~8_combout\,
	combout => \C0|sclk[4]~feeder_combout\);

-- Location: FF_X30_Y13_N13
\C0|sclk[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \C0|sclk[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C0|sclk\(4));

-- Location: FF_X29_Y13_N25
\C0|sclk[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \C0|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C0|sclk\(6));

-- Location: LCCOMB_X29_Y13_N4
\C0|Equal2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C0|Equal2~0_combout\ = (\C0|sclk\(6) & \C0|sclk\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C0|sclk\(6),
	datad => \C0|sclk\(8),
	combout => \C0|Equal2~0_combout\);

-- Location: LCCOMB_X29_Y12_N30
\C0|sclk~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C0|sclk~3_combout\ = (!\C0|Equal7~0_combout\ & \C0|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|Equal7~0_combout\,
	datad => \C0|Add0~36_combout\,
	combout => \C0|sclk~3_combout\);

-- Location: FF_X29_Y12_N31
\C0|sclk[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \C0|sclk~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C0|sclk\(18));

-- Location: FF_X29_Y12_N13
\C0|sclk[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \C0|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C0|sclk\(16));

-- Location: LCCOMB_X30_Y12_N16
\C0|Equal2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C0|Equal2~1_combout\ = (!\C0|sclk\(12) & (!\C0|sclk\(18) & (\C0|sclk\(10) & \C0|sclk\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|sclk\(12),
	datab => \C0|sclk\(18),
	datac => \C0|sclk\(10),
	datad => \C0|sclk\(16),
	combout => \C0|Equal2~1_combout\);

-- Location: LCCOMB_X30_Y12_N10
\C0|Equal2~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C0|Equal2~3_combout\ = (\C0|Equal0~0_combout\ & (\C0|Equal2~1_combout\ & (\C0|Equal0~1_combout\ & \C0|Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|Equal0~0_combout\,
	datab => \C0|Equal2~1_combout\,
	datac => \C0|Equal0~1_combout\,
	datad => \C0|Equal2~2_combout\,
	combout => \C0|Equal2~3_combout\);

-- Location: LCCOMB_X30_Y12_N28
\C0|Equal2~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C0|Equal2~4_combout\ = (!\C0|sclk\(7) & (\C0|Equal2~0_combout\ & (!\C0|sclk\(9) & \C0|Equal2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|sclk\(7),
	datab => \C0|Equal2~0_combout\,
	datac => \C0|sclk\(9),
	datad => \C0|Equal2~3_combout\,
	combout => \C0|Equal2~4_combout\);

-- Location: LCCOMB_X30_Y13_N4
\C0|Equal0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C0|Equal0~2_combout\ = (\C0|sclk\(9) & \C0|sclk\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C0|sclk\(9),
	datad => \C0|sclk\(7),
	combout => \C0|Equal0~2_combout\);

-- Location: LCCOMB_X30_Y13_N18
\C0|Equal0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C0|Equal0~3_combout\ = (\C0|sclk\(15) & (\C0|sclk\(5) & (!\C0|sclk\(11) & !\C0|sclk\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|sclk\(15),
	datab => \C0|sclk\(5),
	datac => \C0|sclk\(11),
	datad => \C0|sclk\(17),
	combout => \C0|Equal0~3_combout\);

-- Location: LCCOMB_X30_Y13_N20
\C0|Equal0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C0|Equal0~4_combout\ = (\C0|Equal0~0_combout\ & (\C0|Equal0~2_combout\ & (\C0|Equal0~1_combout\ & \C0|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|Equal0~0_combout\,
	datab => \C0|Equal0~2_combout\,
	datac => \C0|Equal0~1_combout\,
	datad => \C0|Equal0~3_combout\,
	combout => \C0|Equal0~4_combout\);

-- Location: LCCOMB_X30_Y13_N10
\C0|Equal0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C0|Equal0~5_combout\ = ((\C0|sclk\(3)) # ((!\C0|Equal0~4_combout\) # (!\C0|Equal2~1_combout\))) # (!\C0|Equal6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|Equal6~0_combout\,
	datab => \C0|sclk\(3),
	datac => \C0|Equal2~1_combout\,
	datad => \C0|Equal0~4_combout\,
	combout => \C0|Equal0~5_combout\);

-- Location: LCCOMB_X31_Y12_N0
\C0|Col[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C0|Col[0]~0_combout\ = (((\C0|Equal2~4_combout\ & !\C0|sclk\(3))) # (!\C0|Equal0~5_combout\)) # (!\C0|Equal4~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|Equal4~1_combout\,
	datab => \C0|Equal2~4_combout\,
	datac => \C0|Equal0~5_combout\,
	datad => \C0|sclk\(3),
	combout => \C0|Col[0]~0_combout\);

-- Location: LCCOMB_X30_Y12_N30
\C0|Equal4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C0|Equal4~0_combout\ = (\C0|sclk\(12) & (\C0|sclk\(18) & (!\C0|sclk\(10) & !\C0|sclk\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|sclk\(12),
	datab => \C0|sclk\(18),
	datac => \C0|sclk\(10),
	datad => \C0|sclk\(16),
	combout => \C0|Equal4~0_combout\);

-- Location: LCCOMB_X30_Y12_N12
\C0|Equal6~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C0|Equal6~1_combout\ = (!\C0|sclk\(6) & (\C0|Equal4~0_combout\ & !\C0|sclk\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C0|sclk\(6),
	datac => \C0|Equal4~0_combout\,
	datad => \C0|sclk\(8),
	combout => \C0|Equal6~1_combout\);

-- Location: LCCOMB_X31_Y12_N24
\C0|Equal6~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C0|Equal6~2_combout\ = (!\C0|sclk\(3) & (\C0|Equal2~2_combout\ & (\C0|Equal0~6_combout\ & \C0|Equal6~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|sclk\(3),
	datab => \C0|Equal2~2_combout\,
	datac => \C0|Equal0~6_combout\,
	datad => \C0|Equal6~1_combout\,
	combout => \C0|Equal6~2_combout\);

-- Location: LCCOMB_X31_Y12_N20
\C0|Equal2~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C0|Equal2~5_combout\ = (\C0|sclk\(3)) # (!\C0|Equal2~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|sclk\(3),
	datad => \C0|Equal2~4_combout\,
	combout => \C0|Equal2~5_combout\);

-- Location: LCCOMB_X31_Y12_N22
\C0|Col[0]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C0|Col[0]~1_combout\ = ((\C0|Equal6~2_combout\) # ((!\C0|Equal2~5_combout\) # (!\C0|Equal0~5_combout\))) # (!\C0|Equal4~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|Equal4~1_combout\,
	datab => \C0|Equal6~2_combout\,
	datac => \C0|Equal0~5_combout\,
	datad => \C0|Equal2~5_combout\,
	combout => \C0|Col[0]~1_combout\);

-- Location: FF_X31_Y12_N1
\C0|Col[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \C0|Col[0]~0_combout\,
	ena => \C0|Col[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C0|Col\(0));

-- Location: LCCOMB_X31_Y12_N26
\C0|Equal4~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C0|Equal4~1_combout\ = (\C0|sclk\(3)) # (((!\C0|Equal0~4_combout\) # (!\C0|Equal2~0_combout\)) # (!\C0|Equal4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|sclk\(3),
	datab => \C0|Equal4~0_combout\,
	datac => \C0|Equal2~0_combout\,
	datad => \C0|Equal0~4_combout\,
	combout => \C0|Equal4~1_combout\);

-- Location: FF_X31_Y12_N27
\C0|Col[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \C0|Equal4~1_combout\,
	ena => \C0|Col[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C0|Col\(1));

-- Location: FF_X31_Y12_N21
\C0|Col[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \C0|Equal2~5_combout\,
	ena => \C0|Col[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C0|Col\(2));

-- Location: FF_X31_Y12_N23
\C0|Col[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \C0|Equal0~5_combout\,
	sload => VCC,
	ena => \C0|Col[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C0|Col\(3));

-- Location: LCCOMB_X30_Y12_N22
\C0|Equal1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C0|Equal1~0_combout\ = (\C0|Equal6~0_combout\ & (\C0|Equal2~1_combout\ & (\C0|sclk\(3) & \C0|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|Equal6~0_combout\,
	datab => \C0|Equal2~1_combout\,
	datac => \C0|sclk\(3),
	datad => \C0|Equal0~4_combout\,
	combout => \C0|Equal1~0_combout\);

-- Location: LCCOMB_X30_Y12_N8
\C0|DecodeOut[1]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C0|DecodeOut[1]~3_combout\ = (!\C0|Equal1~0_combout\ & ((\C0|sclk\(3)) # (!\C0|Equal2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C0|sclk\(3),
	datac => \C0|Equal1~0_combout\,
	datad => \C0|Equal2~4_combout\,
	combout => \C0|DecodeOut[1]~3_combout\);

-- Location: LCCOMB_X30_Y12_N14
\C0|Equal5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C0|Equal5~0_combout\ = (\C0|Equal4~0_combout\ & (\C0|Equal2~0_combout\ & (\C0|sclk\(3) & \C0|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|Equal4~0_combout\,
	datab => \C0|Equal2~0_combout\,
	datac => \C0|sclk\(3),
	datad => \C0|Equal0~4_combout\,
	combout => \C0|Equal5~0_combout\);

-- Location: LCCOMB_X30_Y12_N0
\C0|DecodeOut[0]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C0|DecodeOut[0]~4_combout\ = (\C0|Equal5~0_combout\) # (!\C0|Equal4~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C0|Equal5~0_combout\,
	datad => \C0|Equal4~1_combout\,
	combout => \C0|DecodeOut[0]~4_combout\);

-- Location: LCCOMB_X30_Y12_N24
\C0|DecodeOut[0]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C0|DecodeOut[0]~5_combout\ = (\C0|sclk\(3) & ((\C0|Equal2~4_combout\) # ((\C0|Equal7~0_combout\ & !\C0|DecodeOut[0]~4_combout\)))) # (!\C0|sclk\(3) & (\C0|Equal7~0_combout\ & ((!\C0|DecodeOut[0]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|sclk\(3),
	datab => \C0|Equal7~0_combout\,
	datac => \C0|Equal2~4_combout\,
	datad => \C0|DecodeOut[0]~4_combout\,
	combout => \C0|DecodeOut[0]~5_combout\);

-- Location: LCCOMB_X30_Y12_N20
\C0|DecodeOut[0]~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C0|DecodeOut[0]~33_combout\ = (\C0|DecodeOut[1]~3_combout\ & ((\C0|DecodeOut[0]~5_combout\) # ((!\C0|Equal5~0_combout\ & \C0|Equal4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|Equal5~0_combout\,
	datab => \C0|Equal4~1_combout\,
	datac => \C0|DecodeOut[1]~3_combout\,
	datad => \C0|DecodeOut[0]~5_combout\,
	combout => \C0|DecodeOut[0]~33_combout\);

-- Location: IOIBUF_X33_Y10_N8
\Row[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Row(2),
	o => \Row[2]~input_o\);

-- Location: IOIBUF_X33_Y10_N1
\Row[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Row(3),
	o => \Row[3]~input_o\);

-- Location: IOIBUF_X33_Y11_N1
\Row[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Row(0),
	o => \Row[0]~input_o\);

-- Location: LCCOMB_X32_Y12_N28
\C0|DecodeOut[0]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C0|DecodeOut[0]~6_combout\ = ((\Row[2]~input_o\ $ (!\Row[0]~input_o\)) # (!\Row[3]~input_o\)) # (!\Row[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Row[1]~input_o\,
	datab => \Row[2]~input_o\,
	datac => \Row[3]~input_o\,
	datad => \Row[0]~input_o\,
	combout => \C0|DecodeOut[0]~6_combout\);

-- Location: LCCOMB_X30_Y12_N18
\C0|DecodeOut[0]~34\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C0|DecodeOut[0]~34_combout\ = (\C0|DecodeOut[0]~33_combout\ & ((\C0|DecodeOut[0]~5_combout\ & ((\C0|DecodeOut~2_combout\) # (!\C0|DecodeOut[0]~6_combout\))) # (!\C0|DecodeOut[0]~5_combout\ & ((\C0|DecodeOut[0]~6_combout\))))) # 
-- (!\C0|DecodeOut[0]~33_combout\ & (!\C0|DecodeOut~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|DecodeOut~2_combout\,
	datab => \C0|DecodeOut[0]~5_combout\,
	datac => \C0|DecodeOut[0]~6_combout\,
	datad => \C0|DecodeOut[0]~33_combout\,
	combout => \C0|DecodeOut[0]~34_combout\);

-- Location: LCCOMB_X30_Y12_N4
\C0|DecodeOut[0]~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C0|DecodeOut[0]~35_combout\ = (\C0|DecodeOut\(0) & ((\C0|DecodeOut[0]~34_combout\) # (\C0|DecodeOut[0]~6_combout\ $ (\C0|DecodeOut[0]~33_combout\)))) # (!\C0|DecodeOut\(0) & (\C0|DecodeOut[0]~34_combout\ & ((!\C0|DecodeOut[0]~33_combout\) # 
-- (!\C0|DecodeOut[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|DecodeOut[0]~6_combout\,
	datab => \C0|DecodeOut[0]~33_combout\,
	datac => \C0|DecodeOut\(0),
	datad => \C0|DecodeOut[0]~34_combout\,
	combout => \C0|DecodeOut[0]~35_combout\);

-- Location: LCCOMB_X31_Y12_N6
\C0|DecodeOut[2]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C0|DecodeOut[2]~7_combout\ = (\C0|Equal0~5_combout\ & ((\C0|Equal1~0_combout\) # ((\C0|Equal4~1_combout\ & \C0|Equal2~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|Equal0~5_combout\,
	datab => \C0|Equal1~0_combout\,
	datac => \C0|Equal4~1_combout\,
	datad => \C0|Equal2~5_combout\,
	combout => \C0|DecodeOut[2]~7_combout\);

-- Location: FF_X30_Y12_N5
\C0|DecodeOut[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \C0|DecodeOut[0]~35_combout\,
	ena => \C0|DecodeOut[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C0|DecodeOut\(0));

-- Location: LCCOMB_X31_Y12_N16
\C0|DecodeOut[1]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C0|DecodeOut[1]~11_combout\ = (!\C0|Equal2~4_combout\ & (\C0|Equal4~1_combout\ & !\C0|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C0|Equal2~4_combout\,
	datac => \C0|Equal4~1_combout\,
	datad => \C0|Equal1~0_combout\,
	combout => \C0|DecodeOut[1]~11_combout\);

-- Location: IOIBUF_X33_Y14_N1
\Row[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Row(1),
	o => \Row[1]~input_o\);

-- Location: LCCOMB_X30_Y13_N6
\C0|Equal11~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C0|Equal11~0_combout\ = (!\Row[0]~input_o\ & (\Row[2]~input_o\ & (\Row[3]~input_o\ & \Row[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Row[0]~input_o\,
	datab => \Row[2]~input_o\,
	datac => \Row[3]~input_o\,
	datad => \Row[1]~input_o\,
	combout => \C0|Equal11~0_combout\);

-- Location: LCCOMB_X32_Y12_N8
\C0|Equal10~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C0|Equal10~0_combout\ = (!\Row[1]~input_o\ & (\Row[2]~input_o\ & (\Row[3]~input_o\ & \Row[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Row[1]~input_o\,
	datab => \Row[2]~input_o\,
	datac => \Row[3]~input_o\,
	datad => \Row[0]~input_o\,
	combout => \C0|Equal10~0_combout\);

-- Location: LCCOMB_X31_Y12_N4
\C0|DecodeOut[1]~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C0|DecodeOut[1]~13_combout\ = (!\C0|Equal10~0_combout\ & ((\C0|Equal11~0_combout\ & ((\C0|Equal5~0_combout\))) # (!\C0|Equal11~0_combout\ & (\C0|DecodeOut\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|DecodeOut\(1),
	datab => \C0|Equal11~0_combout\,
	datac => \C0|Equal10~0_combout\,
	datad => \C0|Equal5~0_combout\,
	combout => \C0|DecodeOut[1]~13_combout\);

-- Location: LCCOMB_X32_Y12_N6
\C0|DecodeOut[3]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C0|DecodeOut[3]~8_combout\ = ((\Row[2]~input_o\ $ (!\Row[3]~input_o\)) # (!\Row[0]~input_o\)) # (!\Row[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Row[1]~input_o\,
	datab => \Row[2]~input_o\,
	datac => \Row[3]~input_o\,
	datad => \Row[0]~input_o\,
	combout => \C0|DecodeOut[3]~8_combout\);

-- Location: LCCOMB_X31_Y12_N10
\C0|DecodeOut[1]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C0|DecodeOut[1]~12_combout\ = (\C0|Equal7~0_combout\ & (!\C0|DecodeOut[3]~8_combout\)) # (!\C0|Equal7~0_combout\ & ((\C0|Equal5~0_combout\ & (!\C0|DecodeOut[3]~8_combout\)) # (!\C0|Equal5~0_combout\ & ((\C0|DecodeOut\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|Equal7~0_combout\,
	datab => \C0|DecodeOut[3]~8_combout\,
	datac => \C0|DecodeOut\(1),
	datad => \C0|Equal5~0_combout\,
	combout => \C0|DecodeOut[1]~12_combout\);

-- Location: LCCOMB_X31_Y12_N14
\C0|DecodeOut[1]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C0|DecodeOut[1]~14_combout\ = (\C0|DecodeOut[1]~11_combout\ & ((\C0|DecodeOut[1]~13_combout\) # (\C0|DecodeOut[1]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C0|DecodeOut[1]~11_combout\,
	datac => \C0|DecodeOut[1]~13_combout\,
	datad => \C0|DecodeOut[1]~12_combout\,
	combout => \C0|DecodeOut[1]~14_combout\);

-- Location: LCCOMB_X31_Y12_N28
\C0|DecodeOut[3]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C0|DecodeOut[3]~9_combout\ = (\C0|DecodeOut[3]~8_combout\ & (((\C0|Equal1~0_combout\) # (!\C0|Equal2~5_combout\)) # (!\C0|Equal4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|Equal4~1_combout\,
	datab => \C0|Equal1~0_combout\,
	datac => \C0|DecodeOut[3]~8_combout\,
	datad => \C0|Equal2~5_combout\,
	combout => \C0|DecodeOut[3]~9_combout\);

-- Location: LCCOMB_X31_Y12_N30
\C0|DecodeOut[1]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C0|DecodeOut[1]~10_combout\ = (\C0|DecodeOut[3]~9_combout\ & ((\C0|Equal10~0_combout\) # ((\C0|DecodeOut\(1) & !\C0|Equal11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|DecodeOut\(1),
	datab => \C0|Equal11~0_combout\,
	datac => \C0|Equal10~0_combout\,
	datad => \C0|DecodeOut[3]~9_combout\,
	combout => \C0|DecodeOut[1]~10_combout\);

-- Location: LCCOMB_X32_Y12_N22
\C0|DecodeOut[3]~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C0|DecodeOut[3]~17_combout\ = (\C0|sclk\(3) & (\C0|Equal2~4_combout\ & !\C0|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C0|sclk\(3),
	datac => \C0|Equal2~4_combout\,
	datad => \C0|Equal1~0_combout\,
	combout => \C0|DecodeOut[3]~17_combout\);

-- Location: LCCOMB_X31_Y12_N12
\C0|DecodeOut[1]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C0|DecodeOut[1]~18_combout\ = (\C0|DecodeOut[1]~14_combout\) # ((\C0|DecodeOut[1]~10_combout\) # ((\C0|DecodeOut[1]~16_combout\ & \C0|DecodeOut[3]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|DecodeOut[1]~16_combout\,
	datab => \C0|DecodeOut[1]~14_combout\,
	datac => \C0|DecodeOut[1]~10_combout\,
	datad => \C0|DecodeOut[3]~17_combout\,
	combout => \C0|DecodeOut[1]~18_combout\);

-- Location: FF_X31_Y12_N13
\C0|DecodeOut[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \C0|DecodeOut[1]~18_combout\,
	ena => \C0|DecodeOut[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C0|DecodeOut\(1));

-- Location: LCCOMB_X30_Y13_N16
\C0|Equal8~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C0|Equal8~0_combout\ = (\Row[0]~input_o\ & (\Row[2]~input_o\ & (!\Row[3]~input_o\ & \Row[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Row[0]~input_o\,
	datab => \Row[2]~input_o\,
	datac => \Row[3]~input_o\,
	datad => \Row[1]~input_o\,
	combout => \C0|Equal8~0_combout\);

-- Location: LCCOMB_X32_Y12_N24
\C0|DecodeOut[2]~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C0|DecodeOut[2]~26_combout\ = ((!\C0|Equal8~0_combout\ & (!\C0|Equal11~0_combout\ & \C0|DecodeOut\(2)))) # (!\C0|DecodeOut[1]~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|DecodeOut[1]~15_combout\,
	datab => \C0|Equal8~0_combout\,
	datac => \C0|Equal11~0_combout\,
	datad => \C0|DecodeOut\(2),
	combout => \C0|DecodeOut[2]~26_combout\);

-- Location: LCCOMB_X32_Y12_N16
\C0|DecodeOut~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C0|DecodeOut~19_combout\ = (\Row[1]~input_o\ & (!\Row[2]~input_o\ & (\Row[3]~input_o\ & \Row[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Row[1]~input_o\,
	datab => \Row[2]~input_o\,
	datac => \Row[3]~input_o\,
	datad => \Row[0]~input_o\,
	combout => \C0|DecodeOut~19_combout\);

-- Location: LCCOMB_X32_Y12_N14
\C0|DecodeOut~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C0|DecodeOut~2_combout\ = ((\Row[1]~input_o\ $ (!\Row[3]~input_o\)) # (!\Row[0]~input_o\)) # (!\Row[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Row[1]~input_o\,
	datab => \Row[2]~input_o\,
	datac => \Row[3]~input_o\,
	datad => \Row[0]~input_o\,
	combout => \C0|DecodeOut~2_combout\);

-- Location: LCCOMB_X32_Y12_N30
\C0|DecodeOut~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C0|DecodeOut~20_combout\ = (\C0|DecodeOut~19_combout\) # ((\C0|DecodeOut~2_combout\ & ((\C0|Equal11~0_combout\) # (\C0|DecodeOut\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|Equal11~0_combout\,
	datab => \C0|DecodeOut~19_combout\,
	datac => \C0|DecodeOut~2_combout\,
	datad => \C0|DecodeOut\(2),
	combout => \C0|DecodeOut~20_combout\);

-- Location: LCCOMB_X30_Y13_N22
\C0|DecodeOut[3]~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C0|DecodeOut[3]~22_combout\ = ((\Row[0]~input_o\ $ (!\Row[1]~input_o\)) # (!\Row[3]~input_o\)) # (!\Row[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Row[0]~input_o\,
	datab => \Row[2]~input_o\,
	datac => \Row[3]~input_o\,
	datad => \Row[1]~input_o\,
	combout => \C0|DecodeOut[3]~22_combout\);

-- Location: LCCOMB_X32_Y12_N10
\C0|DecodeOut[2]~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C0|DecodeOut[2]~23_combout\ = (\C0|Equal7~0_combout\ & (\C0|DecodeOut[3]~8_combout\ & ((\C0|DecodeOut\(2)) # (!\C0|DecodeOut[3]~22_combout\)))) # (!\C0|Equal7~0_combout\ & (((\C0|DecodeOut\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|DecodeOut[3]~8_combout\,
	datab => \C0|DecodeOut\(2),
	datac => \C0|DecodeOut[3]~22_combout\,
	datad => \C0|Equal7~0_combout\,
	combout => \C0|DecodeOut[2]~23_combout\);

-- Location: LCCOMB_X32_Y12_N12
\C0|DecodeOut[2]~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C0|DecodeOut[2]~24_combout\ = (\C0|Equal5~0_combout\ & ((\C0|DecodeOut[2]~21_combout\) # ((\C0|DecodeOut~19_combout\)))) # (!\C0|Equal5~0_combout\ & (((\C0|DecodeOut[2]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|DecodeOut[2]~21_combout\,
	datab => \C0|DecodeOut~19_combout\,
	datac => \C0|Equal5~0_combout\,
	datad => \C0|DecodeOut[2]~23_combout\,
	combout => \C0|DecodeOut[2]~24_combout\);

-- Location: LCCOMB_X32_Y12_N18
\C0|DecodeOut[2]~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C0|DecodeOut[2]~25_combout\ = (\C0|DecodeOut[1]~11_combout\ & ((\C0|DecodeOut[2]~24_combout\) # ((\C0|DecodeOut~20_combout\ & \C0|DecodeOut[3]~17_combout\)))) # (!\C0|DecodeOut[1]~11_combout\ & (\C0|DecodeOut~20_combout\ & 
-- (\C0|DecodeOut[3]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|DecodeOut[1]~11_combout\,
	datab => \C0|DecodeOut~20_combout\,
	datac => \C0|DecodeOut[3]~17_combout\,
	datad => \C0|DecodeOut[2]~24_combout\,
	combout => \C0|DecodeOut[2]~25_combout\);

-- Location: LCCOMB_X32_Y12_N20
\C0|DecodeOut[2]~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C0|DecodeOut[2]~27_combout\ = (\C0|DecodeOut[2]~25_combout\) # ((\C0|DecodeOut[2]~26_combout\ & ((!\C0|DecodeOut[1]~3_combout\) # (!\C0|Equal4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|Equal4~1_combout\,
	datab => \C0|DecodeOut[2]~26_combout\,
	datac => \C0|DecodeOut[1]~3_combout\,
	datad => \C0|DecodeOut[2]~25_combout\,
	combout => \C0|DecodeOut[2]~27_combout\);

-- Location: FF_X32_Y12_N21
\C0|DecodeOut[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \C0|DecodeOut[2]~27_combout\,
	ena => \C0|DecodeOut[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C0|DecodeOut\(2));

-- Location: LCCOMB_X30_Y12_N6
\C0|DecodeOut[3]~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C0|DecodeOut[3]~29_combout\ = (!\C0|Equal5~0_combout\ & (\C0|Equal7~0_combout\ & ((!\C0|DecodeOut[3]~22_combout\) # (!\C0|DecodeOut[3]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|DecodeOut[3]~8_combout\,
	datab => \C0|DecodeOut[3]~22_combout\,
	datac => \C0|Equal5~0_combout\,
	datad => \C0|Equal7~0_combout\,
	combout => \C0|DecodeOut[3]~29_combout\);

-- Location: LCCOMB_X31_Y12_N8
\C0|DecodeOut[3]~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C0|DecodeOut[3]~30_combout\ = (\C0|DecodeOut[3]~29_combout\) # ((\C0|Equal5~0_combout\ & (\C0|DecodeOut~28_combout\)) # (!\C0|Equal5~0_combout\ & ((\C0|DecodeOut\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|DecodeOut~28_combout\,
	datab => \C0|DecodeOut\(3),
	datac => \C0|DecodeOut[3]~29_combout\,
	datad => \C0|Equal5~0_combout\,
	combout => \C0|DecodeOut[3]~30_combout\);

-- Location: LCCOMB_X31_Y12_N18
\C0|DecodeOut[3]~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C0|DecodeOut[3]~31_combout\ = (\C0|DecodeOut~28_combout\ & ((\C0|DecodeOut[3]~17_combout\) # ((\C0|DecodeOut[1]~11_combout\ & \C0|DecodeOut[3]~30_combout\)))) # (!\C0|DecodeOut~28_combout\ & (\C0|DecodeOut[1]~11_combout\ & 
-- (\C0|DecodeOut[3]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|DecodeOut~28_combout\,
	datab => \C0|DecodeOut[1]~11_combout\,
	datac => \C0|DecodeOut[3]~30_combout\,
	datad => \C0|DecodeOut[3]~17_combout\,
	combout => \C0|DecodeOut[3]~31_combout\);

-- Location: LCCOMB_X31_Y12_N2
\C0|DecodeOut[3]~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \C0|DecodeOut[3]~32_combout\ = (\C0|DecodeOut[3]~31_combout\) # ((\C0|DecodeOut[3]~22_combout\ & (\C0|DecodeOut[3]~9_combout\ & \C0|DecodeOut\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|DecodeOut[3]~22_combout\,
	datab => \C0|DecodeOut[3]~9_combout\,
	datac => \C0|DecodeOut\(3),
	datad => \C0|DecodeOut[3]~31_combout\,
	combout => \C0|DecodeOut[3]~32_combout\);

-- Location: FF_X31_Y12_N3
\C0|DecodeOut[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \C0|DecodeOut[3]~32_combout\,
	ena => \C0|DecodeOut[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C0|DecodeOut\(3));

ww_Col(0) <= \Col[0]~output_o\;

ww_Col(1) <= \Col[1]~output_o\;

ww_Col(2) <= \Col[2]~output_o\;

ww_Col(3) <= \Col[3]~output_o\;

ww_valeur(0) <= \valeur[0]~output_o\;

ww_valeur(1) <= \valeur[1]~output_o\;

ww_valeur(2) <= \valeur[2]~output_o\;

ww_valeur(3) <= \valeur[3]~output_o\;
END structure;


