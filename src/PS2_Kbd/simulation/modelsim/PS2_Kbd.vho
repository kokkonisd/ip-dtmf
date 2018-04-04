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

-- DATE "03/15/2018 10:17:57"

-- 
-- Device: Altera EP1C6T144C6 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONE;
LIBRARY IEEE;
USE CYCLONE.CYCLONE_COMPONENTS.ALL;
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
-- Scan_Err	=>  Location: PIN_11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Scan_DAV	=>  Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Scan_Code[0]	=>  Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Scan_Code[1]	=>  Location: PIN_123,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Scan_Code[2]	=>  Location: PIN_124,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Scan_Code[3]	=>  Location: PIN_144,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Scan_Code[4]	=>  Location: PIN_128,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Scan_Code[5]	=>  Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Scan_Code[6]	=>  Location: PIN_130,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Scan_Code[7]	=>  Location: PIN_131,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Clk	=>  Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Reset	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DoRead	=>  Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PS2_Data	=>  Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PS2_Clk	=>  Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL \Clk~combout\ : std_logic;
SIGNAL \PS2_Data~combout\ : std_logic;
SIGNAL \DoRead~combout\ : std_logic;
SIGNAL \Reset~combout\ : std_logic;
SIGNAL \Scan_DAVi~2_combout\ : std_logic;
SIGNAL \PS2_Clk~combout\ : std_logic;
SIGNAL \Equal1~0\ : std_logic;
SIGNAL \Equal1~1\ : std_logic;
SIGNAL \Equal0~0\ : std_logic;
SIGNAL \Equal0~1\ : std_logic;
SIGNAL \Equal1~2\ : std_logic;
SIGNAL \PS2_Clk_f~regout\ : std_logic;
SIGNAL \Fall_Clk~regout\ : std_logic;
SIGNAL \Bit_Cnt[0]~3\ : std_logic;
SIGNAL \Bit_Cnt[0]~3COUT1_13\ : std_logic;
SIGNAL \Bit_Cnt[1]~5\ : std_logic;
SIGNAL \Bit_Cnt[1]~5COUT1_15\ : std_logic;
SIGNAL \Bit_Cnt[2]~7\ : std_logic;
SIGNAL \Bit_Cnt[2]~7COUT1_17\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \State~regout\ : std_logic;
SIGNAL \Scan_DAVi~0_combout\ : std_logic;
SIGNAL \Scan_DAVi~regout\ : std_logic;
SIGNAL \PS2_Datr~regout\ : std_logic;
SIGNAL \Parity~0_combout\ : std_logic;
SIGNAL \Parity~regout\ : std_logic;
SIGNAL \Scan_Err~0\ : std_logic;
SIGNAL \Scan_Err~1_combout\ : std_logic;
SIGNAL \Scan_Err~reg0_regout\ : std_logic;
SIGNAL \S_Reg[0]~0_combout\ : std_logic;
SIGNAL \Scan_Code[0]~reg0_regout\ : std_logic;
SIGNAL \Scan_Code[1]~reg0_regout\ : std_logic;
SIGNAL \Scan_Code[2]~reg0_regout\ : std_logic;
SIGNAL \Scan_Code[3]~reg0_regout\ : std_logic;
SIGNAL \Scan_Code[4]~reg0_regout\ : std_logic;
SIGNAL \Scan_Code[5]~reg0_regout\ : std_logic;
SIGNAL \Scan_Code[6]~reg0_regout\ : std_logic;
SIGNAL \Scan_Code[7]~reg0_regout\ : std_logic;
SIGNAL Filter : std_logic_vector(7 DOWNTO 0);
SIGNAL Bit_Cnt : std_logic_vector(3 DOWNTO 0);
SIGNAL S_Reg : std_logic_vector(8 DOWNTO 0);
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
\ALT_INV_State~regout\ <= NOT \State~regout\;

-- Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Clk~I\ : cyclone_io
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

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PS2_Data~I\ : cyclone_io
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

-- Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DoRead~I\ : cyclone_io
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

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Reset~I\ : cyclone_io
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

-- Location: LC_X12_Y11_N8
\Scan_DAVi~2\ : cyclone_lcell
-- Equation(s):
-- \Scan_DAVi~2_combout\ = (((!\LessThan0~0_combout\) # (!\State~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0fff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \State~regout\,
	datad => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Scan_DAVi~2_combout\);

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PS2_Clk~I\ : cyclone_io
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

-- Location: LC_X10_Y11_N4
\Filter[7]\ : cyclone_lcell
-- Equation(s):
-- \Equal1~0\ = (((!Filter[7] & !Filter(6))))
-- Filter(7) = DFFEAS(\Equal1~0\, GLOBAL(\Clk~combout\), !GLOBAL(\Reset~combout\), , , \PS2_Clk~combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \PS2_Clk~combout\,
	datad => Filter(6),
	aclr => \Reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal1~0\,
	regout => Filter(7));

-- Location: LC_X10_Y11_N8
\Filter[6]\ : cyclone_lcell
-- Equation(s):
-- \Equal0~0\ = (Filter(4) & (Filter(5) & (Filter[6] & Filter(7))))
-- Filter(6) = DFFEAS(\Equal0~0\, GLOBAL(\Clk~combout\), !GLOBAL(\Reset~combout\), , , Filter(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => Filter(4),
	datab => Filter(5),
	datac => Filter(7),
	datad => Filter(7),
	aclr => \Reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~0\,
	regout => Filter(6));

-- Location: LC_X10_Y11_N3
\Filter[1]\ : cyclone_lcell
-- Equation(s):
-- Filter(1) = DFFEAS(GND, GLOBAL(\Clk~combout\), !GLOBAL(\Reset~combout\), , , Filter(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => Filter(2),
	aclr => \Reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Filter(1));

-- Location: LC_X10_Y11_N0
\Filter[0]\ : cyclone_lcell
-- Equation(s):
-- Filter(0) = DFFEAS((((Filter(1)))), GLOBAL(\Clk~combout\), !GLOBAL(\Reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datad => Filter(1),
	aclr => \Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Filter(0));

-- Location: LC_X10_Y11_N5
\Filter[3]\ : cyclone_lcell
-- Equation(s):
-- \Equal1~1\ = (!Filter(2) & (!Filter(0) & (!Filter[3] & !Filter(1))))
-- Filter(3) = DFFEAS(\Equal1~1\, GLOBAL(\Clk~combout\), !GLOBAL(\Reset~combout\), , , Filter(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => Filter(2),
	datab => Filter(0),
	datac => Filter(4),
	datad => Filter(1),
	aclr => \Reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal1~1\,
	regout => Filter(3));

-- Location: LC_X10_Y11_N2
\Filter[2]\ : cyclone_lcell
-- Equation(s):
-- \Equal0~1\ = (Filter(3) & (Filter(0) & (Filter[2] & Filter(1))))
-- Filter(2) = DFFEAS(\Equal0~1\, GLOBAL(\Clk~combout\), !GLOBAL(\Reset~combout\), , , Filter(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => Filter(3),
	datab => Filter(0),
	datac => Filter(3),
	datad => Filter(1),
	aclr => \Reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~1\,
	regout => Filter(2));

-- Location: LC_X10_Y11_N6
\Filter[5]\ : cyclone_lcell
-- Equation(s):
-- \Equal1~2\ = (!Filter(4) & (\Equal1~0\ & (!Filter[5] & \Equal1~1\)))
-- Filter(5) = DFFEAS(\Equal1~2\, GLOBAL(\Clk~combout\), !GLOBAL(\Reset~combout\), , , Filter(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => Filter(4),
	datab => \Equal1~0\,
	datac => Filter(6),
	datad => \Equal1~1\,
	aclr => \Reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal1~2\,
	regout => Filter(5));

-- Location: LC_X10_Y11_N1
\Filter[4]\ : cyclone_lcell
-- Equation(s):
-- Filter(4) = DFFEAS(GND, GLOBAL(\Clk~combout\), !GLOBAL(\Reset~combout\), , , Filter(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => Filter(5),
	aclr => \Reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Filter(4));

-- Location: LC_X10_Y11_N7
PS2_Clk_f : cyclone_lcell
-- Equation(s):
-- \PS2_Clk_f~regout\ = DFFEAS((\PS2_Clk_f~regout\ & (((\Equal0~0\ & \Equal0~1\)) # (!\Equal1~2\))) # (!\PS2_Clk_f~regout\ & (\Equal0~0\ & (\Equal0~1\))), GLOBAL(\Clk~combout\), !GLOBAL(\Reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0ea",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \PS2_Clk_f~regout\,
	datab => \Equal0~0\,
	datac => \Equal0~1\,
	datad => \Equal1~2\,
	aclr => \Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PS2_Clk_f~regout\);

-- Location: LC_X10_Y11_N9
Fall_Clk : cyclone_lcell
-- Equation(s):
-- \Fall_Clk~regout\ = DFFEAS((((\PS2_Clk_f~regout\ & \Equal1~2\))), GLOBAL(\Clk~combout\), !GLOBAL(\Reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \PS2_Clk_f~regout\,
	datad => \Equal1~2\,
	aclr => \Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Fall_Clk~regout\);

-- Location: LC_X12_Y11_N1
\Bit_Cnt[0]\ : cyclone_lcell
-- Equation(s):
-- Bit_Cnt(0) = DFFEAS(Bit_Cnt(0) $ ((\Fall_Clk~regout\)), GLOBAL(\Clk~combout\), !GLOBAL(\Reset~combout\), , \Scan_DAVi~2_combout\, , , !\State~regout\, )
-- \Bit_Cnt[0]~3\ = CARRY((Bit_Cnt(0) & (\Fall_Clk~regout\)))
-- \Bit_Cnt[0]~3COUT1_13\ = CARRY((Bit_Cnt(0) & (\Fall_Clk~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6688",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => Bit_Cnt(0),
	datab => \Fall_Clk~regout\,
	aclr => \Reset~combout\,
	sclr => \ALT_INV_State~regout\,
	ena => \Scan_DAVi~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Bit_Cnt(0),
	cout0 => \Bit_Cnt[0]~3\,
	cout1 => \Bit_Cnt[0]~3COUT1_13\);

-- Location: LC_X12_Y11_N2
\Bit_Cnt[1]\ : cyclone_lcell
-- Equation(s):
-- Bit_Cnt(1) = DFFEAS(Bit_Cnt(1) $ ((((\Bit_Cnt[0]~3\)))), GLOBAL(\Clk~combout\), !GLOBAL(\Reset~combout\), , \Scan_DAVi~2_combout\, , , !\State~regout\, )
-- \Bit_Cnt[1]~5\ = CARRY(((!\Bit_Cnt[0]~3\)) # (!Bit_Cnt(1)))
-- \Bit_Cnt[1]~5COUT1_15\ = CARRY(((!\Bit_Cnt[0]~3COUT1_13\)) # (!Bit_Cnt(1)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => Bit_Cnt(1),
	aclr => \Reset~combout\,
	sclr => \ALT_INV_State~regout\,
	ena => \Scan_DAVi~2_combout\,
	cin0 => \Bit_Cnt[0]~3\,
	cin1 => \Bit_Cnt[0]~3COUT1_13\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Bit_Cnt(1),
	cout0 => \Bit_Cnt[1]~5\,
	cout1 => \Bit_Cnt[1]~5COUT1_15\);

-- Location: LC_X12_Y11_N3
\Bit_Cnt[2]\ : cyclone_lcell
-- Equation(s):
-- Bit_Cnt(2) = DFFEAS((Bit_Cnt(2) $ ((!\Bit_Cnt[1]~5\))), GLOBAL(\Clk~combout\), !GLOBAL(\Reset~combout\), , \Scan_DAVi~2_combout\, , , !\State~regout\, )
-- \Bit_Cnt[2]~7\ = CARRY(((Bit_Cnt(2) & !\Bit_Cnt[1]~5\)))
-- \Bit_Cnt[2]~7COUT1_17\ = CARRY(((Bit_Cnt(2) & !\Bit_Cnt[1]~5COUT1_15\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => Bit_Cnt(2),
	aclr => \Reset~combout\,
	sclr => \ALT_INV_State~regout\,
	ena => \Scan_DAVi~2_combout\,
	cin0 => \Bit_Cnt[1]~5\,
	cin1 => \Bit_Cnt[1]~5COUT1_15\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Bit_Cnt(2),
	cout0 => \Bit_Cnt[2]~7\,
	cout1 => \Bit_Cnt[2]~7COUT1_17\);

-- Location: LC_X12_Y11_N4
\Bit_Cnt[3]\ : cyclone_lcell
-- Equation(s):
-- Bit_Cnt(3) = DFFEAS(((\Bit_Cnt[2]~7\ $ (Bit_Cnt(3)))), GLOBAL(\Clk~combout\), !GLOBAL(\Reset~combout\), , \Scan_DAVi~2_combout\, , , !\State~regout\, )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datad => Bit_Cnt(3),
	aclr => \Reset~combout\,
	sclr => \ALT_INV_State~regout\,
	ena => \Scan_DAVi~2_combout\,
	cin0 => \Bit_Cnt[2]~7\,
	cin1 => \Bit_Cnt[2]~7COUT1_17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Bit_Cnt(3));

-- Location: LC_X12_Y11_N5
\LessThan0~0\ : cyclone_lcell
-- Equation(s):
-- \LessThan0~0_combout\ = (Bit_Cnt(3) & ((Bit_Cnt(1)) # ((Bit_Cnt(2)) # (Bit_Cnt(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => Bit_Cnt(1),
	datab => Bit_Cnt(2),
	datac => Bit_Cnt(3),
	datad => Bit_Cnt(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~0_combout\);

-- Location: LC_X12_Y11_N9
State : cyclone_lcell
-- Equation(s):
-- \State~regout\ = DFFEAS((\Fall_Clk~regout\ & ((\State~regout\ & (!\LessThan0~0_combout\)) # (!\State~regout\ & ((!\PS2_Datr~regout\))))) # (!\Fall_Clk~regout\ & (((\State~regout\)))), GLOBAL(\Clk~combout\), !GLOBAL(\Reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "770c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \LessThan0~0_combout\,
	datab => \Fall_Clk~regout\,
	datac => \PS2_Datr~regout\,
	datad => \State~regout\,
	aclr => \Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \State~regout\);

-- Location: LC_X12_Y11_N6
\Scan_DAVi~0\ : cyclone_lcell
-- Equation(s):
-- \Scan_DAVi~0_combout\ = (\State~regout\ & (((\Fall_Clk~regout\ & \LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \State~regout\,
	datac => \Fall_Clk~regout\,
	datad => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Scan_DAVi~0_combout\);

-- Location: LC_X9_Y11_N0
Scan_DAVi : cyclone_lcell
-- Equation(s):
-- \Scan_DAVi~regout\ = DFFEAS(((\Scan_DAVi~0_combout\) # ((\Scan_DAVi~regout\ & !\DoRead~combout\))), GLOBAL(\Clk~combout\), !GLOBAL(\Reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff0c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \Scan_DAVi~regout\,
	datac => \DoRead~combout\,
	datad => \Scan_DAVi~0_combout\,
	aclr => \Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Scan_DAVi~regout\);

-- Location: LC_X9_Y11_N8
PS2_Datr : cyclone_lcell
-- Equation(s):
-- \Scan_Err~0\ = (((\Scan_DAVi~regout\) # (!PS2_Datr)) # (!\Parity~regout\))
-- \PS2_Datr~regout\ = DFFEAS(\Scan_Err~0\, GLOBAL(\Clk~combout\), !GLOBAL(\Reset~combout\), , , \PS2_Data~combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff3f",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \Parity~regout\,
	datac => \PS2_Data~combout\,
	datad => \Scan_DAVi~regout\,
	aclr => \Reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Scan_Err~0\,
	regout => \PS2_Datr~regout\);

-- Location: LC_X9_Y11_N3
\Parity~0\ : cyclone_lcell
-- Equation(s):
-- \Parity~0_combout\ = (((!\LessThan0~0_combout\ & \Fall_Clk~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \LessThan0~0_combout\,
	datad => \Fall_Clk~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Parity~0_combout\);

-- Location: LC_X9_Y11_N4
Parity : cyclone_lcell
-- Equation(s):
-- \Parity~regout\ = DFFEAS((\State~regout\ & (\Parity~regout\ $ (((\PS2_Datr~regout\ & \Parity~0_combout\))))), GLOBAL(\Clk~combout\), !GLOBAL(\Reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "60c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \PS2_Datr~regout\,
	datab => \Parity~regout\,
	datac => \State~regout\,
	datad => \Parity~0_combout\,
	aclr => \Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Parity~regout\);

-- Location: LC_X9_Y11_N5
\Scan_Err~1\ : cyclone_lcell
-- Equation(s):
-- \Scan_Err~1_combout\ = (\Fall_Clk~regout\ & ((\State~regout\ & ((\LessThan0~0_combout\))) # (!\State~regout\ & (!\PS2_Datr~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c404",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PS2_Datr~regout\,
	datab => \Fall_Clk~regout\,
	datac => \State~regout\,
	datad => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Scan_Err~1_combout\);

-- Location: LC_X9_Y11_N6
\Scan_Err~reg0\ : cyclone_lcell
-- Equation(s):
-- \Scan_Err~reg0_regout\ = DFFEAS((\Scan_Err~1_combout\ & (((\Scan_Err~0\ & \State~regout\)))) # (!\Scan_Err~1_combout\ & (\Scan_Err~reg0_regout\)), GLOBAL(\Clk~combout\), !GLOBAL(\Reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0aa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \Scan_Err~reg0_regout\,
	datab => \Scan_Err~0\,
	datac => \State~regout\,
	datad => \Scan_Err~1_combout\,
	aclr => \Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Scan_Err~reg0_regout\);

-- Location: LC_X12_Y11_N7
\S_Reg[0]~0\ : cyclone_lcell
-- Equation(s):
-- \S_Reg[0]~0_combout\ = (\State~regout\ & (((\Fall_Clk~regout\ & !\LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \State~regout\,
	datac => \Fall_Clk~regout\,
	datad => \LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \S_Reg[0]~0_combout\);

-- Location: LC_X13_Y11_N2
\S_Reg[8]\ : cyclone_lcell
-- Equation(s):
-- S_Reg(8) = DFFEAS(GND, GLOBAL(\Clk~combout\), !GLOBAL(\Reset~combout\), , \S_Reg[0]~0_combout\, \PS2_Datr~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \PS2_Datr~regout\,
	aclr => \Reset~combout\,
	sload => VCC,
	ena => \S_Reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S_Reg(8));

-- Location: LC_X13_Y11_N7
\S_Reg[7]\ : cyclone_lcell
-- Equation(s):
-- S_Reg(7) = DFFEAS(GND, GLOBAL(\Clk~combout\), !GLOBAL(\Reset~combout\), , \S_Reg[0]~0_combout\, S_Reg(8), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => S_Reg(8),
	aclr => \Reset~combout\,
	sload => VCC,
	ena => \S_Reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S_Reg(7));

-- Location: LC_X13_Y11_N8
\S_Reg[6]\ : cyclone_lcell
-- Equation(s):
-- S_Reg(6) = DFFEAS(GND, GLOBAL(\Clk~combout\), !GLOBAL(\Reset~combout\), , \S_Reg[0]~0_combout\, S_Reg(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => S_Reg(7),
	aclr => \Reset~combout\,
	sload => VCC,
	ena => \S_Reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S_Reg(6));

-- Location: LC_X13_Y11_N5
\S_Reg[5]\ : cyclone_lcell
-- Equation(s):
-- S_Reg(5) = DFFEAS(GND, GLOBAL(\Clk~combout\), !GLOBAL(\Reset~combout\), , \S_Reg[0]~0_combout\, S_Reg(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => S_Reg(6),
	aclr => \Reset~combout\,
	sload => VCC,
	ena => \S_Reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S_Reg(5));

-- Location: LC_X13_Y11_N3
\S_Reg[4]\ : cyclone_lcell
-- Equation(s):
-- S_Reg(4) = DFFEAS((((S_Reg(5)))), GLOBAL(\Clk~combout\), !GLOBAL(\Reset~combout\), , \S_Reg[0]~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datad => S_Reg(5),
	aclr => \Reset~combout\,
	ena => \S_Reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S_Reg(4));

-- Location: LC_X11_Y11_N2
\S_Reg[3]\ : cyclone_lcell
-- Equation(s):
-- S_Reg(3) = DFFEAS(GND, GLOBAL(\Clk~combout\), !GLOBAL(\Reset~combout\), , \S_Reg[0]~0_combout\, S_Reg(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => S_Reg(4),
	aclr => \Reset~combout\,
	sload => VCC,
	ena => \S_Reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S_Reg(3));

-- Location: LC_X11_Y11_N8
\S_Reg[2]\ : cyclone_lcell
-- Equation(s):
-- S_Reg(2) = DFFEAS(GND, GLOBAL(\Clk~combout\), !GLOBAL(\Reset~combout\), , \S_Reg[0]~0_combout\, S_Reg(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => S_Reg(3),
	aclr => \Reset~combout\,
	sload => VCC,
	ena => \S_Reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S_Reg(2));

-- Location: LC_X11_Y11_N9
\S_Reg[1]\ : cyclone_lcell
-- Equation(s):
-- S_Reg(1) = DFFEAS(GND, GLOBAL(\Clk~combout\), !GLOBAL(\Reset~combout\), , \S_Reg[0]~0_combout\, S_Reg(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => S_Reg(2),
	aclr => \Reset~combout\,
	sload => VCC,
	ena => \S_Reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S_Reg(1));

-- Location: LC_X11_Y11_N7
\S_Reg[0]\ : cyclone_lcell
-- Equation(s):
-- S_Reg(0) = DFFEAS(GND, GLOBAL(\Clk~combout\), !GLOBAL(\Reset~combout\), , \S_Reg[0]~0_combout\, S_Reg(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => S_Reg(1),
	aclr => \Reset~combout\,
	sload => VCC,
	ena => \S_Reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => S_Reg(0));

-- Location: LC_X11_Y11_N6
\Scan_Code[0]~reg0\ : cyclone_lcell
-- Equation(s):
-- \Scan_Code[0]~reg0_regout\ = DFFEAS(GND, GLOBAL(\Clk~combout\), !GLOBAL(\Reset~combout\), , \Scan_DAVi~0_combout\, S_Reg(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => S_Reg(0),
	aclr => \Reset~combout\,
	sload => VCC,
	ena => \Scan_DAVi~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Scan_Code[0]~reg0_regout\);

-- Location: LC_X11_Y11_N3
\Scan_Code[1]~reg0\ : cyclone_lcell
-- Equation(s):
-- \Scan_Code[1]~reg0_regout\ = DFFEAS(GND, GLOBAL(\Clk~combout\), !GLOBAL(\Reset~combout\), , \Scan_DAVi~0_combout\, S_Reg(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => S_Reg(1),
	aclr => \Reset~combout\,
	sload => VCC,
	ena => \Scan_DAVi~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Scan_Code[1]~reg0_regout\);

-- Location: LC_X11_Y11_N5
\Scan_Code[2]~reg0\ : cyclone_lcell
-- Equation(s):
-- \Scan_Code[2]~reg0_regout\ = DFFEAS(GND, GLOBAL(\Clk~combout\), !GLOBAL(\Reset~combout\), , \Scan_DAVi~0_combout\, S_Reg(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => S_Reg(2),
	aclr => \Reset~combout\,
	sload => VCC,
	ena => \Scan_DAVi~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Scan_Code[2]~reg0_regout\);

-- Location: LC_X11_Y11_N4
\Scan_Code[3]~reg0\ : cyclone_lcell
-- Equation(s):
-- \Scan_Code[3]~reg0_regout\ = DFFEAS(GND, GLOBAL(\Clk~combout\), !GLOBAL(\Reset~combout\), , \Scan_DAVi~0_combout\, S_Reg(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => S_Reg(3),
	aclr => \Reset~combout\,
	sload => VCC,
	ena => \Scan_DAVi~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Scan_Code[3]~reg0_regout\);

-- Location: LC_X13_Y11_N6
\Scan_Code[4]~reg0\ : cyclone_lcell
-- Equation(s):
-- \Scan_Code[4]~reg0_regout\ = DFFEAS((((S_Reg(4)))), GLOBAL(\Clk~combout\), !GLOBAL(\Reset~combout\), , \Scan_DAVi~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datad => S_Reg(4),
	aclr => \Reset~combout\,
	ena => \Scan_DAVi~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Scan_Code[4]~reg0_regout\);

-- Location: LC_X13_Y11_N9
\Scan_Code[5]~reg0\ : cyclone_lcell
-- Equation(s):
-- \Scan_Code[5]~reg0_regout\ = DFFEAS((((S_Reg(5)))), GLOBAL(\Clk~combout\), !GLOBAL(\Reset~combout\), , \Scan_DAVi~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datad => S_Reg(5),
	aclr => \Reset~combout\,
	ena => \Scan_DAVi~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Scan_Code[5]~reg0_regout\);

-- Location: LC_X13_Y11_N4
\Scan_Code[6]~reg0\ : cyclone_lcell
-- Equation(s):
-- \Scan_Code[6]~reg0_regout\ = DFFEAS(GND, GLOBAL(\Clk~combout\), !GLOBAL(\Reset~combout\), , \Scan_DAVi~0_combout\, S_Reg(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => S_Reg(6),
	aclr => \Reset~combout\,
	sload => VCC,
	ena => \Scan_DAVi~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Scan_Code[6]~reg0_regout\);

-- Location: LC_X13_Y11_N1
\Scan_Code[7]~reg0\ : cyclone_lcell
-- Equation(s):
-- \Scan_Code[7]~reg0_regout\ = DFFEAS(GND, GLOBAL(\Clk~combout\), !GLOBAL(\Reset~combout\), , \Scan_DAVi~0_combout\, S_Reg(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => S_Reg(7),
	aclr => \Reset~combout\,
	sload => VCC,
	ena => \Scan_DAVi~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Scan_Code[7]~reg0_regout\);

-- Location: PIN_11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Scan_Err~I\ : cyclone_io
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

-- Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Scan_DAV~I\ : cyclone_io
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

-- Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Scan_Code[0]~I\ : cyclone_io
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

-- Location: PIN_123,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Scan_Code[1]~I\ : cyclone_io
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

-- Location: PIN_124,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Scan_Code[2]~I\ : cyclone_io
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

-- Location: PIN_144,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Scan_Code[3]~I\ : cyclone_io
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

-- Location: PIN_128,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Scan_Code[4]~I\ : cyclone_io
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

-- Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Scan_Code[5]~I\ : cyclone_io
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

-- Location: PIN_130,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Scan_Code[6]~I\ : cyclone_io
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

-- Location: PIN_131,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Scan_Code[7]~I\ : cyclone_io
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


