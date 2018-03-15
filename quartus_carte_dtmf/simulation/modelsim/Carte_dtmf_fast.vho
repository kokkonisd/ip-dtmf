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

-- DATE "03/15/2018 10:21:56"

-- 
-- Device: Altera EP2C20F484C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	PS2_Ctrl IS
    PORT (
	Clk : IN std_logic;
	Reset : IN std_logic;
	PS2_Clk : IN std_logic;
	PS2_Data : IN std_logic;
	DoRead : IN std_logic;
	Scan_Err : OUT std_logic;
	Scan_DAV : OUT std_logic;
	Scan_Code : OUT std_logic_vector(7 DOWNTO 0)
	);
END PS2_Ctrl;

-- Design Ports Information
-- Scan_Err	=>  Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Scan_DAV	=>  Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Scan_Code[0]	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Scan_Code[1]	=>  Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Scan_Code[2]	=>  Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Scan_Code[3]	=>  Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Scan_Code[4]	=>  Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Scan_Code[5]	=>  Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Scan_Code[6]	=>  Location: PIN_D4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Scan_Code[7]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Clk	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Reset	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DoRead	=>  Location: PIN_B3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PS2_Data	=>  Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PS2_Clk	=>  Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF PS2_Ctrl IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clk : std_logic;
SIGNAL ww_Reset : std_logic;
SIGNAL ww_PS2_Clk : std_logic;
SIGNAL ww_PS2_Data : std_logic;
SIGNAL ww_DoRead : std_logic;
SIGNAL ww_Scan_Err : std_logic;
SIGNAL ww_Scan_DAV : std_logic;
SIGNAL ww_Scan_Code : std_logic_vector(7 DOWNTO 0);
SIGNAL \Reset~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Bit_Cnt[0]~4_combout\ : std_logic;
SIGNAL \Parity~regout\ : std_logic;
SIGNAL \Parity~0_combout\ : std_logic;
SIGNAL \Parity~1_combout\ : std_logic;
SIGNAL \Clk~combout\ : std_logic;
SIGNAL \Clk~clkctrl_outclk\ : std_logic;
SIGNAL \PS2_Clk~combout\ : std_logic;
SIGNAL \Filter[7]~feeder_combout\ : std_logic;
SIGNAL \Reset~combout\ : std_logic;
SIGNAL \Reset~clkctrl_outclk\ : std_logic;
SIGNAL \Filter[6]~feeder_combout\ : std_logic;
SIGNAL \Filter[4]~feeder_combout\ : std_logic;
SIGNAL \Filter[3]~feeder_combout\ : std_logic;
SIGNAL \Filter[2]~feeder_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \PS2_Clk_f~0_combout\ : std_logic;
SIGNAL \PS2_Clk_f~1_combout\ : std_logic;
SIGNAL \PS2_Clk_f~regout\ : std_logic;
SIGNAL \Fall_Clk~0_combout\ : std_logic;
SIGNAL \Fall_Clk~regout\ : std_logic;
SIGNAL \Bit_Cnt[0]~5\ : std_logic;
SIGNAL \Bit_Cnt[1]~6_combout\ : std_logic;
SIGNAL \PS2_Data~combout\ : std_logic;
SIGNAL \PS2_Datr~feeder_combout\ : std_logic;
SIGNAL \PS2_Datr~regout\ : std_logic;
SIGNAL \State~0_combout\ : std_logic;
SIGNAL \State~regout\ : std_logic;
SIGNAL \Scan_DAVi~3_combout\ : std_logic;
SIGNAL \Bit_Cnt[1]~7\ : std_logic;
SIGNAL \Bit_Cnt[2]~8_combout\ : std_logic;
SIGNAL \Bit_Cnt[2]~9\ : std_logic;
SIGNAL \Bit_Cnt[3]~10_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \DoRead~combout\ : std_logic;
SIGNAL \Scan_DAVi~0_combout\ : std_logic;
SIGNAL \Scan_DAVi~1_combout\ : std_logic;
SIGNAL \Scan_DAVi~regout\ : std_logic;
SIGNAL \Scan_Err~0_combout\ : std_logic;
SIGNAL \Scan_Err~1_combout\ : std_logic;
SIGNAL \Scan_Err~2_combout\ : std_logic;
SIGNAL \Scan_Err~reg0_regout\ : std_logic;
SIGNAL \S_Reg[0]~0_combout\ : std_logic;
SIGNAL \S_Reg[7]~feeder_combout\ : std_logic;
SIGNAL \S_Reg[6]~feeder_combout\ : std_logic;
SIGNAL \S_Reg[4]~feeder_combout\ : std_logic;
SIGNAL \S_Reg[2]~feeder_combout\ : std_logic;
SIGNAL \S_Reg[0]~feeder_combout\ : std_logic;
SIGNAL \Scan_DAVi~2_combout\ : std_logic;
SIGNAL \Scan_Code[0]~reg0_regout\ : std_logic;
SIGNAL \Scan_Code[1]~reg0feeder_combout\ : std_logic;
SIGNAL \Scan_Code[1]~reg0_regout\ : std_logic;
SIGNAL \Scan_Code[2]~reg0_regout\ : std_logic;
SIGNAL \Scan_Code[3]~reg0feeder_combout\ : std_logic;
SIGNAL \Scan_Code[3]~reg0_regout\ : std_logic;
SIGNAL \Scan_Code[4]~reg0_regout\ : std_logic;
SIGNAL \Scan_Code[5]~reg0feeder_combout\ : std_logic;
SIGNAL \Scan_Code[5]~reg0_regout\ : std_logic;
SIGNAL \Scan_Code[6]~reg0_regout\ : std_logic;
SIGNAL \Scan_Code[7]~reg0feeder_combout\ : std_logic;
SIGNAL \Scan_Code[7]~reg0_regout\ : std_logic;
SIGNAL Bit_Cnt : std_logic_vector(3 DOWNTO 0);
SIGNAL S_Reg : std_logic_vector(8 DOWNTO 0);
SIGNAL Filter : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_State~regout\ : std_logic;

BEGIN

ww_Clk <= Clk;
ww_Reset <= Reset;
ww_PS2_Clk <= PS2_Clk;
ww_PS2_Data <= PS2_Data;
ww_DoRead <= DoRead;
Scan_Err <= ww_Scan_Err;
Scan_DAV <= ww_Scan_DAV;
Scan_Code <= ww_Scan_Code;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Reset~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Reset~combout\);

\Clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Clk~combout\);
\ALT_INV_State~regout\ <= NOT \State~regout\;

-- Location: LCFF_X2_Y24_N7
\Bit_Cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Bit_Cnt[0]~4_combout\,
	aclr => \Reset~clkctrl_outclk\,
	sclr => \ALT_INV_State~regout\,
	ena => \Scan_DAVi~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Bit_Cnt(0));

-- Location: LCCOMB_X2_Y24_N6
\Bit_Cnt[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Bit_Cnt[0]~4_combout\ = (Bit_Cnt(0) & (\Fall_Clk~regout\ $ (VCC))) # (!Bit_Cnt(0) & (\Fall_Clk~regout\ & VCC))
-- \Bit_Cnt[0]~5\ = CARRY((Bit_Cnt(0) & \Fall_Clk~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Bit_Cnt(0),
	datab => \Fall_Clk~regout\,
	datad => VCC,
	combout => \Bit_Cnt[0]~4_combout\,
	cout => \Bit_Cnt[0]~5\);

-- Location: LCFF_X2_Y24_N19
Parity : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Parity~1_combout\,
	aclr => \Reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Parity~regout\);

-- Location: LCCOMB_X3_Y24_N30
\Parity~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Parity~0_combout\ = (!\Fall_Clk~regout\) # (!\PS2_Datr~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \PS2_Datr~regout\,
	datad => \Fall_Clk~regout\,
	combout => \Parity~0_combout\);

-- Location: LCCOMB_X2_Y24_N18
\Parity~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Parity~1_combout\ = (\State~regout\ & (\Parity~regout\ $ (((!\LessThan0~0_combout\ & !\Parity~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State~regout\,
	datab => \LessThan0~0_combout\,
	datac => \Parity~regout\,
	datad => \Parity~0_combout\,
	combout => \Parity~1_combout\);

-- Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Clk,
	combout => \Clk~combout\);

-- Location: CLKCTRL_G2
\Clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clk~clkctrl_outclk\);

-- Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PS2_Clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_PS2_Clk,
	combout => \PS2_Clk~combout\);

-- Location: LCCOMB_X1_Y25_N6
\Filter[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Filter[7]~feeder_combout\ = \PS2_Clk~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PS2_Clk~combout\,
	combout => \Filter[7]~feeder_combout\);

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Reset~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Reset,
	combout => \Reset~combout\);

-- Location: CLKCTRL_G1
\Reset~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Reset~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Reset~clkctrl_outclk\);

-- Location: LCFF_X1_Y25_N7
\Filter[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Filter[7]~feeder_combout\,
	aclr => \Reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Filter(7));

-- Location: LCCOMB_X1_Y25_N24
\Filter[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Filter[6]~feeder_combout\ = Filter(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => Filter(7),
	combout => \Filter[6]~feeder_combout\);

-- Location: LCFF_X1_Y25_N25
\Filter[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Filter[6]~feeder_combout\,
	aclr => \Reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Filter(6));

-- Location: LCFF_X1_Y25_N27
\Filter[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => Filter(6),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Filter(5));

-- Location: LCCOMB_X1_Y25_N0
\Filter[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Filter[4]~feeder_combout\ = Filter(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => Filter(5),
	combout => \Filter[4]~feeder_combout\);

-- Location: LCFF_X1_Y25_N1
\Filter[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Filter[4]~feeder_combout\,
	aclr => \Reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Filter(4));

-- Location: LCCOMB_X1_Y25_N12
\Filter[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Filter[3]~feeder_combout\ = Filter(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => Filter(4),
	combout => \Filter[3]~feeder_combout\);

-- Location: LCFF_X1_Y25_N13
\Filter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Filter[3]~feeder_combout\,
	aclr => \Reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Filter(3));

-- Location: LCCOMB_X1_Y25_N14
\Filter[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Filter[2]~feeder_combout\ = Filter(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => Filter(3),
	combout => \Filter[2]~feeder_combout\);

-- Location: LCFF_X1_Y25_N15
\Filter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Filter[2]~feeder_combout\,
	aclr => \Reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Filter(2));

-- Location: LCFF_X1_Y25_N5
\Filter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => Filter(2),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Filter(1));

-- Location: LCFF_X1_Y25_N3
\Filter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => Filter(1),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Filter(0));

-- Location: LCCOMB_X1_Y25_N18
\Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (Filter(3) & (Filter(2) & (Filter(1) & Filter(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Filter(3),
	datab => Filter(2),
	datac => Filter(1),
	datad => Filter(0),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X1_Y25_N8
\Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (Filter(7) & (Filter(5) & (Filter(6) & Filter(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Filter(7),
	datab => Filter(5),
	datac => Filter(6),
	datad => Filter(4),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X1_Y25_N20
\Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (!Filter(3) & (!Filter(2) & (!Filter(1) & !Filter(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Filter(3),
	datab => Filter(2),
	datac => Filter(1),
	datad => Filter(0),
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X1_Y25_N10
\Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!Filter(7) & (!Filter(4) & (!Filter(6) & !Filter(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Filter(7),
	datab => Filter(4),
	datac => Filter(6),
	datad => Filter(5),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X1_Y25_N22
\PS2_Clk_f~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \PS2_Clk_f~0_combout\ = (\PS2_Clk_f~regout\ & ((!\Equal1~0_combout\) # (!\Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PS2_Clk_f~regout\,
	datac => \Equal1~1_combout\,
	datad => \Equal1~0_combout\,
	combout => \PS2_Clk_f~0_combout\);

-- Location: LCCOMB_X1_Y25_N16
\PS2_Clk_f~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \PS2_Clk_f~1_combout\ = (\PS2_Clk_f~0_combout\) # ((\Equal0~1_combout\ & \Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~1_combout\,
	datac => \Equal0~0_combout\,
	datad => \PS2_Clk_f~0_combout\,
	combout => \PS2_Clk_f~1_combout\);

-- Location: LCFF_X1_Y25_N17
PS2_Clk_f : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \PS2_Clk_f~1_combout\,
	aclr => \Reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PS2_Clk_f~regout\);

-- Location: LCCOMB_X2_Y24_N26
\Fall_Clk~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Fall_Clk~0_combout\ = (\PS2_Clk_f~regout\ & (\Equal1~1_combout\ & \Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PS2_Clk_f~regout\,
	datac => \Equal1~1_combout\,
	datad => \Equal1~0_combout\,
	combout => \Fall_Clk~0_combout\);

-- Location: LCFF_X2_Y24_N27
Fall_Clk : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Fall_Clk~0_combout\,
	aclr => \Reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Fall_Clk~regout\);

-- Location: LCCOMB_X2_Y24_N8
\Bit_Cnt[1]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Bit_Cnt[1]~6_combout\ = (Bit_Cnt(1) & (!\Bit_Cnt[0]~5\)) # (!Bit_Cnt(1) & ((\Bit_Cnt[0]~5\) # (GND)))
-- \Bit_Cnt[1]~7\ = CARRY((!\Bit_Cnt[0]~5\) # (!Bit_Cnt(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Bit_Cnt(1),
	datad => VCC,
	cin => \Bit_Cnt[0]~5\,
	combout => \Bit_Cnt[1]~6_combout\,
	cout => \Bit_Cnt[1]~7\);

-- Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PS2_Data~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_PS2_Data,
	combout => \PS2_Data~combout\);

-- Location: LCCOMB_X3_Y24_N24
\PS2_Datr~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \PS2_Datr~feeder_combout\ = \PS2_Data~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PS2_Data~combout\,
	combout => \PS2_Datr~feeder_combout\);

-- Location: LCFF_X3_Y24_N25
PS2_Datr : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \PS2_Datr~feeder_combout\,
	aclr => \Reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PS2_Datr~regout\);

-- Location: LCCOMB_X2_Y24_N16
\State~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \State~0_combout\ = (\Fall_Clk~regout\ & ((\State~regout\ & ((!\LessThan0~0_combout\))) # (!\State~regout\ & (!\PS2_Datr~regout\)))) # (!\Fall_Clk~regout\ & (((\State~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Fall_Clk~regout\,
	datab => \PS2_Datr~regout\,
	datac => \State~regout\,
	datad => \LessThan0~0_combout\,
	combout => \State~0_combout\);

-- Location: LCFF_X2_Y24_N17
State : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \State~0_combout\,
	aclr => \Reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \State~regout\);

-- Location: LCCOMB_X2_Y24_N20
\Scan_DAVi~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Scan_DAVi~3_combout\ = (!\LessThan0~0_combout\) # (!\State~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \State~regout\,
	datad => \LessThan0~0_combout\,
	combout => \Scan_DAVi~3_combout\);

-- Location: LCFF_X2_Y24_N9
\Bit_Cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Bit_Cnt[1]~6_combout\,
	aclr => \Reset~clkctrl_outclk\,
	sclr => \ALT_INV_State~regout\,
	ena => \Scan_DAVi~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Bit_Cnt(1));

-- Location: LCCOMB_X2_Y24_N10
\Bit_Cnt[2]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Bit_Cnt[2]~8_combout\ = (Bit_Cnt(2) & (\Bit_Cnt[1]~7\ $ (GND))) # (!Bit_Cnt(2) & (!\Bit_Cnt[1]~7\ & VCC))
-- \Bit_Cnt[2]~9\ = CARRY((Bit_Cnt(2) & !\Bit_Cnt[1]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => Bit_Cnt(2),
	datad => VCC,
	cin => \Bit_Cnt[1]~7\,
	combout => \Bit_Cnt[2]~8_combout\,
	cout => \Bit_Cnt[2]~9\);

-- Location: LCFF_X2_Y24_N11
\Bit_Cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Bit_Cnt[2]~8_combout\,
	aclr => \Reset~clkctrl_outclk\,
	sclr => \ALT_INV_State~regout\,
	ena => \Scan_DAVi~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Bit_Cnt(2));

-- Location: LCCOMB_X2_Y24_N12
\Bit_Cnt[3]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Bit_Cnt[3]~10_combout\ = \Bit_Cnt[2]~9\ $ (Bit_Cnt(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => Bit_Cnt(3),
	cin => \Bit_Cnt[2]~9\,
	combout => \Bit_Cnt[3]~10_combout\);

-- Location: LCFF_X2_Y24_N13
\Bit_Cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Bit_Cnt[3]~10_combout\,
	aclr => \Reset~clkctrl_outclk\,
	sclr => \ALT_INV_State~regout\,
	ena => \Scan_DAVi~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Bit_Cnt(3));

-- Location: LCCOMB_X2_Y24_N0
\LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (Bit_Cnt(3) & ((Bit_Cnt(0)) # ((Bit_Cnt(1)) # (Bit_Cnt(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Bit_Cnt(0),
	datab => Bit_Cnt(1),
	datac => Bit_Cnt(3),
	datad => Bit_Cnt(2),
	combout => \LessThan0~0_combout\);

-- Location: PIN_B3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DoRead~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_DoRead,
	combout => \DoRead~combout\);

-- Location: LCCOMB_X2_Y24_N28
\Scan_DAVi~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Scan_DAVi~0_combout\ = (!\DoRead~combout\ & \Scan_DAVi~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DoRead~combout\,
	datad => \Scan_DAVi~regout\,
	combout => \Scan_DAVi~0_combout\);

-- Location: LCCOMB_X2_Y24_N2
\Scan_DAVi~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Scan_DAVi~1_combout\ = (\Scan_DAVi~0_combout\) # ((\State~regout\ & (\Fall_Clk~regout\ & \LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State~regout\,
	datab => \Fall_Clk~regout\,
	datac => \LessThan0~0_combout\,
	datad => \Scan_DAVi~0_combout\,
	combout => \Scan_DAVi~1_combout\);

-- Location: LCFF_X2_Y24_N3
Scan_DAVi : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Scan_DAVi~1_combout\,
	aclr => \Reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Scan_DAVi~regout\);

-- Location: LCCOMB_X2_Y24_N4
\Scan_Err~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Scan_Err~0_combout\ = (\State~regout\ & (((\Scan_DAVi~regout\) # (!\PS2_Datr~regout\)) # (!\Parity~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Parity~regout\,
	datab => \Scan_DAVi~regout\,
	datac => \State~regout\,
	datad => \PS2_Datr~regout\,
	combout => \Scan_Err~0_combout\);

-- Location: LCCOMB_X2_Y24_N22
\Scan_Err~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Scan_Err~1_combout\ = (\Fall_Clk~regout\ & ((\State~regout\ & ((\LessThan0~0_combout\))) # (!\State~regout\ & (!\PS2_Datr~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \State~regout\,
	datab => \PS2_Datr~regout\,
	datac => \Fall_Clk~regout\,
	datad => \LessThan0~0_combout\,
	combout => \Scan_Err~1_combout\);

-- Location: LCCOMB_X2_Y24_N24
\Scan_Err~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Scan_Err~2_combout\ = (\Scan_Err~1_combout\ & (\Scan_Err~0_combout\)) # (!\Scan_Err~1_combout\ & ((\Scan_Err~reg0_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Scan_Err~0_combout\,
	datac => \Scan_Err~reg0_regout\,
	datad => \Scan_Err~1_combout\,
	combout => \Scan_Err~2_combout\);

-- Location: LCFF_X2_Y24_N25
\Scan_Err~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Scan_Err~2_combout\,
	aclr => \Reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Scan_Err~reg0_regout\);

-- Location: LCCOMB_X2_Y24_N30
\S_Reg[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \S_Reg[0]~0_combout\ = (\Fall_Clk~regout\ & (\State~regout\ & !\LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Fall_Clk~regout\,
	datac => \State~regout\,
	datad => \LessThan0~0_combout\,
	combout => \S_Reg[0]~0_combout\);

-- Location: LCFF_X3_Y24_N31
\S_Reg[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => \PS2_Datr~regout\,
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \S_Reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S_Reg(8));

-- Location: LCCOMB_X1_Y24_N18
\S_Reg[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \S_Reg[7]~feeder_combout\ = S_Reg(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => S_Reg(8),
	combout => \S_Reg[7]~feeder_combout\);

-- Location: LCFF_X1_Y24_N19
\S_Reg[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \S_Reg[7]~feeder_combout\,
	aclr => \Reset~clkctrl_outclk\,
	ena => \S_Reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S_Reg(7));

-- Location: LCCOMB_X1_Y24_N8
\S_Reg[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \S_Reg[6]~feeder_combout\ = S_Reg(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => S_Reg(7),
	combout => \S_Reg[6]~feeder_combout\);

-- Location: LCFF_X1_Y24_N9
\S_Reg[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \S_Reg[6]~feeder_combout\,
	aclr => \Reset~clkctrl_outclk\,
	ena => \S_Reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S_Reg(6));

-- Location: LCFF_X1_Y24_N7
\S_Reg[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => S_Reg(6),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \S_Reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S_Reg(5));

-- Location: LCCOMB_X1_Y24_N4
\S_Reg[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \S_Reg[4]~feeder_combout\ = S_Reg(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => S_Reg(5),
	combout => \S_Reg[4]~feeder_combout\);

-- Location: LCFF_X1_Y24_N5
\S_Reg[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \S_Reg[4]~feeder_combout\,
	aclr => \Reset~clkctrl_outclk\,
	ena => \S_Reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S_Reg(4));

-- Location: LCFF_X1_Y24_N31
\S_Reg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => S_Reg(4),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \S_Reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S_Reg(3));

-- Location: LCCOMB_X1_Y24_N20
\S_Reg[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \S_Reg[2]~feeder_combout\ = S_Reg(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => S_Reg(3),
	combout => \S_Reg[2]~feeder_combout\);

-- Location: LCFF_X1_Y24_N21
\S_Reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \S_Reg[2]~feeder_combout\,
	aclr => \Reset~clkctrl_outclk\,
	ena => \S_Reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S_Reg(2));

-- Location: LCFF_X1_Y24_N3
\S_Reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => S_Reg(2),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \S_Reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S_Reg(1));

-- Location: LCCOMB_X1_Y24_N24
\S_Reg[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \S_Reg[0]~feeder_combout\ = S_Reg(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => S_Reg(1),
	combout => \S_Reg[0]~feeder_combout\);

-- Location: LCFF_X1_Y24_N25
\S_Reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \S_Reg[0]~feeder_combout\,
	aclr => \Reset~clkctrl_outclk\,
	ena => \S_Reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S_Reg(0));

-- Location: LCCOMB_X2_Y24_N14
\Scan_DAVi~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Scan_DAVi~2_combout\ = (\Fall_Clk~regout\ & (\State~regout\ & \LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Fall_Clk~regout\,
	datac => \State~regout\,
	datad => \LessThan0~0_combout\,
	combout => \Scan_DAVi~2_combout\);

-- Location: LCFF_X1_Y24_N13
\Scan_Code[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => S_Reg(0),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Scan_DAVi~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Scan_Code[0]~reg0_regout\);

-- Location: LCCOMB_X1_Y24_N10
\Scan_Code[1]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Scan_Code[1]~reg0feeder_combout\ = S_Reg(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => S_Reg(1),
	combout => \Scan_Code[1]~reg0feeder_combout\);

-- Location: LCFF_X1_Y24_N11
\Scan_Code[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Scan_Code[1]~reg0feeder_combout\,
	aclr => \Reset~clkctrl_outclk\,
	ena => \Scan_DAVi~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Scan_Code[1]~reg0_regout\);

-- Location: LCFF_X1_Y24_N17
\Scan_Code[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => S_Reg(2),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Scan_DAVi~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Scan_Code[2]~reg0_regout\);

-- Location: LCCOMB_X1_Y24_N14
\Scan_Code[3]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Scan_Code[3]~reg0feeder_combout\ = S_Reg(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => S_Reg(3),
	combout => \Scan_Code[3]~reg0feeder_combout\);

-- Location: LCFF_X1_Y24_N15
\Scan_Code[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Scan_Code[3]~reg0feeder_combout\,
	aclr => \Reset~clkctrl_outclk\,
	ena => \Scan_DAVi~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Scan_Code[3]~reg0_regout\);

-- Location: LCFF_X1_Y24_N29
\Scan_Code[4]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => S_Reg(4),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Scan_DAVi~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Scan_Code[4]~reg0_regout\);

-- Location: LCCOMB_X1_Y24_N22
\Scan_Code[5]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Scan_Code[5]~reg0feeder_combout\ = S_Reg(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => S_Reg(5),
	combout => \Scan_Code[5]~reg0feeder_combout\);

-- Location: LCFF_X1_Y24_N23
\Scan_Code[5]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Scan_Code[5]~reg0feeder_combout\,
	aclr => \Reset~clkctrl_outclk\,
	ena => \Scan_DAVi~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Scan_Code[5]~reg0_regout\);

-- Location: LCFF_X1_Y24_N1
\Scan_Code[6]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	sdata => S_Reg(6),
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	ena => \Scan_DAVi~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Scan_Code[6]~reg0_regout\);

-- Location: LCCOMB_X1_Y24_N26
\Scan_Code[7]~reg0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \Scan_Code[7]~reg0feeder_combout\ = S_Reg(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => S_Reg(7),
	combout => \Scan_Code[7]~reg0feeder_combout\);

-- Location: LCFF_X1_Y24_N27
\Scan_Code[7]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clk~clkctrl_outclk\,
	datain => \Scan_Code[7]~reg0feeder_combout\,
	aclr => \Reset~clkctrl_outclk\,
	ena => \Scan_DAVi~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Scan_Code[7]~reg0_regout\);

-- Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Scan_Err~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Scan_Err~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Scan_Err);

-- Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Scan_DAV~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Scan_DAVi~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Scan_DAV);

-- Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Scan_Code[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Scan_Code[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Scan_Code(0));

-- Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Scan_Code[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Scan_Code[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Scan_Code(1));

-- Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Scan_Code[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Scan_Code[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Scan_Code(2));

-- Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Scan_Code[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Scan_Code[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Scan_Code(3));

-- Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Scan_Code[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Scan_Code[4]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Scan_Code(4));

-- Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Scan_Code[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Scan_Code[5]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Scan_Code(5));

-- Location: PIN_D4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Scan_Code[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Scan_Code[6]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Scan_Code(6));

-- Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Scan_Code[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Scan_Code[7]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Scan_Code(7));
END structure;


