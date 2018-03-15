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

-- DATE "03/07/2018 17:18:38"

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

ENTITY 	PmodKYPD IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	Row : IN std_logic_vector(3 DOWNTO 0);
	sonde_out : OUT std_logic;
	Col : OUT std_logic_vector(3 DOWNTO 0);
	valeur : OUT std_logic_vector(10 DOWNTO 0);
	audio : OUT std_logic;
	clk_out : OUT std_logic
	);
END PmodKYPD;

-- Design Ports Information
-- sonde_out	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Col[0]	=>  Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Col[1]	=>  Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Col[2]	=>  Location: PIN_J19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Col[3]	=>  Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- valeur[0]	=>  Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- valeur[1]	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- valeur[2]	=>  Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- valeur[3]	=>  Location: PIN_U19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- valeur[4]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- valeur[5]	=>  Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- valeur[6]	=>  Location: PIN_V19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- valeur[7]	=>  Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- valeur[8]	=>  Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- valeur[9]	=>  Location: PIN_R18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- valeur[10]	=>  Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- audio	=>  Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk_out	=>  Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Row[0]	=>  Location: PIN_P17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Row[2]	=>  Location: PIN_N22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Row[1]	=>  Location: PIN_P15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Row[3]	=>  Location: PIN_J15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rst	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_rst : std_logic;
SIGNAL ww_Row : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_sonde_out : std_logic;
SIGNAL ww_Col : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_valeur : std_logic_vector(10 DOWNTO 0);
SIGNAL ww_audio : std_logic;
SIGNAL ww_clk_out : std_logic;
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rst~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \C0|Add0~0_combout\ : std_logic;
SIGNAL \C0|Add0~32_combout\ : std_logic;
SIGNAL \C9|Add0~13\ : std_logic;
SIGNAL \C9|Add0~14_combout\ : std_logic;
SIGNAL \C2|Add0~16_combout\ : std_logic;
SIGNAL \C2|Add0~50_combout\ : std_logic;
SIGNAL \C2|Add0~59\ : std_logic;
SIGNAL \C2|Add0~60_combout\ : std_logic;
SIGNAL \C2|Add0~61\ : std_logic;
SIGNAL \C2|Add0~62_combout\ : std_logic;
SIGNAL \C1|Add0~4_combout\ : std_logic;
SIGNAL \C1|Add0~12_combout\ : std_logic;
SIGNAL \C1|Add0~30_combout\ : std_logic;
SIGNAL \C1|Add0~39\ : std_logic;
SIGNAL \C1|Add0~40_combout\ : std_logic;
SIGNAL \C1|Add0~41\ : std_logic;
SIGNAL \C1|Add0~42_combout\ : std_logic;
SIGNAL \C1|Add0~43\ : std_logic;
SIGNAL \C1|Add0~44_combout\ : std_logic;
SIGNAL \C1|Add0~45\ : std_logic;
SIGNAL \C1|Add0~46_combout\ : std_logic;
SIGNAL \C4|i[1]~26_combout\ : std_logic;
SIGNAL \C4|i[2]~28_combout\ : std_logic;
SIGNAL \C4|i[6]~36_combout\ : std_logic;
SIGNAL \C4|i[17]~58_combout\ : std_logic;
SIGNAL \C4|i[20]~64_combout\ : std_logic;
SIGNAL \C4|i[22]~68_combout\ : std_logic;
SIGNAL \C5|i[1]~26_combout\ : std_logic;
SIGNAL \C5|i[4]~32_combout\ : std_logic;
SIGNAL \C5|i[20]~64_combout\ : std_logic;
SIGNAL \C5|i[22]~68_combout\ : std_logic;
SIGNAL \C0|Equal0~2_combout\ : std_logic;
SIGNAL \C0|Equal6~2_combout\ : std_logic;
SIGNAL \C0|DecodeOut~0_combout\ : std_logic;
SIGNAL \C0|DecodeOut~5_combout\ : std_logic;
SIGNAL \C0|DecodeOut[0]~7_combout\ : std_logic;
SIGNAL \C0|Equal8~0_combout\ : std_logic;
SIGNAL \C0|DecodeOut~23_combout\ : std_logic;
SIGNAL \C0|DecodeOut~24_combout\ : std_logic;
SIGNAL \C0|DecodeOut[2]~30_combout\ : std_logic;
SIGNAL \C0|DecodeOut~33_combout\ : std_logic;
SIGNAL \C2|LessThan1~0_combout\ : std_logic;
SIGNAL \C2|EtatPresent.init~regout\ : std_logic;
SIGNAL \C9|Equal0~0_combout\ : std_logic;
SIGNAL \C9|Equal0~1_combout\ : std_logic;
SIGNAL \C9|cnt~0_combout\ : std_logic;
SIGNAL \C2|Selector8~0_combout\ : std_logic;
SIGNAL \C2|Selector13~0_combout\ : std_logic;
SIGNAL \C2|Selector30~0_combout\ : std_logic;
SIGNAL \C2|Selector7~1_combout\ : std_logic;
SIGNAL \C1|Equal0~0_combout\ : std_logic;
SIGNAL \C2|EtatFutur.init~regout\ : std_logic;
SIGNAL \C7|LessThan0~0_combout\ : std_logic;
SIGNAL \C2|Selector1~0_combout\ : std_logic;
SIGNAL \C2|Selector1~1_combout\ : std_logic;
SIGNAL \C4|Equal0~2_combout\ : std_logic;
SIGNAL \C4|Equal0~8_combout\ : std_logic;
SIGNAL \C5|Equal0~0_combout\ : std_logic;
SIGNAL \C5|Equal0~8_combout\ : std_logic;
SIGNAL \C3|Mux3~0_combout\ : std_logic;
SIGNAL \C3|Mux9~0_combout\ : std_logic;
SIGNAL \C2|Selector42~0_combout\ : std_logic;
SIGNAL \C2|Selector41~1_combout\ : std_logic;
SIGNAL \C2|Selector41~2_combout\ : std_logic;
SIGNAL \C2|Selector41~3_combout\ : std_logic;
SIGNAL \C2|Selector41~4_combout\ : std_logic;
SIGNAL \C1|i~14_combout\ : std_logic;
SIGNAL \C1|i~15_combout\ : std_logic;
SIGNAL \C1|i~16_combout\ : std_logic;
SIGNAL \C3|out2[1]~1_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \C0|Add0~13\ : std_logic;
SIGNAL \C0|Add0~15\ : std_logic;
SIGNAL \C0|Add0~16_combout\ : std_logic;
SIGNAL \C1|Add0~0_combout\ : std_logic;
SIGNAL \C1|i~13_combout\ : std_logic;
SIGNAL \rst~combout\ : std_logic;
SIGNAL \rst~clkctrl_outclk\ : std_logic;
SIGNAL \C1|Add0~1\ : std_logic;
SIGNAL \C1|Add0~3\ : std_logic;
SIGNAL \C1|Add0~5\ : std_logic;
SIGNAL \C1|Add0~6_combout\ : std_logic;
SIGNAL \C1|Add0~7\ : std_logic;
SIGNAL \C1|Add0~9\ : std_logic;
SIGNAL \C1|Add0~10_combout\ : std_logic;
SIGNAL \C1|Add0~11\ : std_logic;
SIGNAL \C1|Add0~13\ : std_logic;
SIGNAL \C1|Add0~14_combout\ : std_logic;
SIGNAL \C1|Add0~8_combout\ : std_logic;
SIGNAL \C1|Equal0~5_combout\ : std_logic;
SIGNAL \C1|Add0~15\ : std_logic;
SIGNAL \C1|Add0~16_combout\ : std_logic;
SIGNAL \C1|i~12_combout\ : std_logic;
SIGNAL \C1|Add0~17\ : std_logic;
SIGNAL \C1|Add0~19\ : std_logic;
SIGNAL \C1|Add0~20_combout\ : std_logic;
SIGNAL \C1|Add0~21\ : std_logic;
SIGNAL \C1|Add0~22_combout\ : std_logic;
SIGNAL \C1|i~10_combout\ : std_logic;
SIGNAL \C1|Add0~23\ : std_logic;
SIGNAL \C1|Add0~25\ : std_logic;
SIGNAL \C1|Add0~26_combout\ : std_logic;
SIGNAL \C1|Add0~27\ : std_logic;
SIGNAL \C1|Add0~28_combout\ : std_logic;
SIGNAL \C1|Add0~24_combout\ : std_logic;
SIGNAL \C1|i~9_combout\ : std_logic;
SIGNAL \C1|Equal0~2_combout\ : std_logic;
SIGNAL \C1|Add0~29\ : std_logic;
SIGNAL \C1|Add0~31\ : std_logic;
SIGNAL \C1|Add0~32_combout\ : std_logic;
SIGNAL \C1|i~8_combout\ : std_logic;
SIGNAL \C1|Add0~33\ : std_logic;
SIGNAL \C1|Add0~34_combout\ : std_logic;
SIGNAL \C1|i~7_combout\ : std_logic;
SIGNAL \C1|Add0~2_combout\ : std_logic;
SIGNAL \C1|Equal0~6_combout\ : std_logic;
SIGNAL \C1|Add0~35\ : std_logic;
SIGNAL \C1|Add0~36_combout\ : std_logic;
SIGNAL \C1|i~6_combout\ : std_logic;
SIGNAL \C1|Add0~37\ : std_logic;
SIGNAL \C1|Add0~38_combout\ : std_logic;
SIGNAL \C1|Equal0~1_combout\ : std_logic;
SIGNAL \C1|Add0~18_combout\ : std_logic;
SIGNAL \C1|i~11_combout\ : std_logic;
SIGNAL \C1|Equal0~3_combout\ : std_logic;
SIGNAL \C1|Equal0~4_combout\ : std_logic;
SIGNAL \C1|Equal0~7_combout\ : std_logic;
SIGNAL \C1|s_out~regout\ : std_logic;
SIGNAL \C0|DecodeOut[1]~15_combout\ : std_logic;
SIGNAL \C0|Equal11~0_combout\ : std_logic;
SIGNAL \C0|DecodeOut[1]~16_combout\ : std_logic;
SIGNAL \C0|Add0~21\ : std_logic;
SIGNAL \C0|Add0~22_combout\ : std_logic;
SIGNAL \C0|sclk~7_combout\ : std_logic;
SIGNAL \C0|Add0~23\ : std_logic;
SIGNAL \C0|Add0~24_combout\ : std_logic;
SIGNAL \C0|sclk~3_combout\ : std_logic;
SIGNAL \C0|Add0~25\ : std_logic;
SIGNAL \C0|Add0~26_combout\ : std_logic;
SIGNAL \C0|Add0~27\ : std_logic;
SIGNAL \C0|Add0~28_combout\ : std_logic;
SIGNAL \C0|Add0~29\ : std_logic;
SIGNAL \C0|Add0~31\ : std_logic;
SIGNAL \C0|Add0~33\ : std_logic;
SIGNAL \C0|Add0~35\ : std_logic;
SIGNAL \C0|Add0~36_combout\ : std_logic;
SIGNAL \C0|sclk~2_combout\ : std_logic;
SIGNAL \C0|Equal2~0_combout\ : std_logic;
SIGNAL \C0|Add0~18_combout\ : std_logic;
SIGNAL \C0|sclk~4_combout\ : std_logic;
SIGNAL \C0|Add0~14_combout\ : std_logic;
SIGNAL \C0|sclk~5_combout\ : std_logic;
SIGNAL \C0|Equal0~3_combout\ : std_logic;
SIGNAL \C0|Add0~37\ : std_logic;
SIGNAL \C0|Add0~38_combout\ : std_logic;
SIGNAL \C0|Equal0~0_combout\ : std_logic;
SIGNAL \C0|Add0~34_combout\ : std_logic;
SIGNAL \C0|sclk~6_combout\ : std_logic;
SIGNAL \C0|Add0~30_combout\ : std_logic;
SIGNAL \C0|Equal0~4_combout\ : std_logic;
SIGNAL \C0|Equal0~5_combout\ : std_logic;
SIGNAL \C0|Equal1~0_combout\ : std_logic;
SIGNAL \C0|Equal2~2_combout\ : std_logic;
SIGNAL \C0|Equal2~1_combout\ : std_logic;
SIGNAL \C0|sclk~1_combout\ : std_logic;
SIGNAL \C0|Add0~1\ : std_logic;
SIGNAL \C0|Add0~2_combout\ : std_logic;
SIGNAL \C0|Add0~3\ : std_logic;
SIGNAL \C0|Add0~4_combout\ : std_logic;
SIGNAL \C0|Equal0~1_combout\ : std_logic;
SIGNAL \C0|Equal2~3_combout\ : std_logic;
SIGNAL \C0|DecodeOut[1]~17_combout\ : std_logic;
SIGNAL \C0|Equal5~0_combout\ : std_logic;
SIGNAL \C0|Equal5~1_combout\ : std_logic;
SIGNAL \C0|DecodeOut[1]~14_combout\ : std_logic;
SIGNAL \C0|Equal10~0_combout\ : std_logic;
SIGNAL \C0|DecodeOut[1]~18_combout\ : std_logic;
SIGNAL \C0|DecodeOut[1]~20_combout\ : std_logic;
SIGNAL \C0|Equal4~2_combout\ : std_logic;
SIGNAL \C0|DecodeOut[3]~13_combout\ : std_logic;
SIGNAL \C0|Equal2~4_combout\ : std_logic;
SIGNAL \C0|DecodeOut[3]~19_combout\ : std_logic;
SIGNAL \C0|DecodeOut[1]~21_combout\ : std_logic;
SIGNAL \C0|DecodeOut[1]~22_combout\ : std_logic;
SIGNAL \C0|DecodeOut[3]~12_combout\ : std_logic;
SIGNAL \C0|DecodeOut[1]~4_combout\ : std_logic;
SIGNAL \C0|DecodeOut[2]~25_combout\ : std_logic;
SIGNAL \C0|DecodeOut[2]~27_combout\ : std_logic;
SIGNAL \C0|DecodeOut[2]~28_combout\ : std_logic;
SIGNAL \C0|DecodeOut[2]~26_combout\ : std_logic;
SIGNAL \C0|DecodeOut[2]~29_combout\ : std_logic;
SIGNAL \C0|DecodeOut[2]~31_combout\ : std_logic;
SIGNAL \C0|DecodeOut[3]~32_combout\ : std_logic;
SIGNAL \C0|Equal3~0_combout\ : std_logic;
SIGNAL \C0|DecodeOut[3]~34_combout\ : std_logic;
SIGNAL \C0|DecodeOut[3]~35_combout\ : std_logic;
SIGNAL \C0|DecodeOut[3]~36_combout\ : std_logic;
SIGNAL \C0|DecodeOut[3]~37_combout\ : std_logic;
SIGNAL \C0|DecodeOut[3]~38_combout\ : std_logic;
SIGNAL \C2|LessThan0~0_combout\ : std_logic;
SIGNAL \C2|Selector6~0_combout\ : std_logic;
SIGNAL \C2|Selector3~0_combout\ : std_logic;
SIGNAL \C2|EtatFutur.etat4~regout\ : std_logic;
SIGNAL \C2|EtatPresent.etat4~feeder_combout\ : std_logic;
SIGNAL \C2|EtatPresent.etat4~regout\ : std_logic;
SIGNAL \C2|Selector5~0_combout\ : std_logic;
SIGNAL \C2|EtatFutur.etat3~regout\ : std_logic;
SIGNAL \C2|EtatPresent.etat3~feeder_combout\ : std_logic;
SIGNAL \C2|EtatPresent.etat3~regout\ : std_logic;
SIGNAL \C2|Selector4~0_combout\ : std_logic;
SIGNAL \C2|Selector4~1_combout\ : std_logic;
SIGNAL \C2|EtatFutur.etat2~regout\ : std_logic;
SIGNAL \C2|EtatPresent.etat2~regout\ : std_logic;
SIGNAL \C2|Selector3~1_combout\ : std_logic;
SIGNAL \C2|EtatFutur.etat1~regout\ : std_logic;
SIGNAL \C2|EtatPresent.etat1~regout\ : std_logic;
SIGNAL \C2|Add0~0_combout\ : std_logic;
SIGNAL \C2|Selector38~0_combout\ : std_logic;
SIGNAL \C2|i[0]~0_combout\ : std_logic;
SIGNAL \C2|Add0~1\ : std_logic;
SIGNAL \C2|Add0~2_combout\ : std_logic;
SIGNAL \C2|Selector37~0_combout\ : std_logic;
SIGNAL \C2|Selector7~0_combout\ : std_logic;
SIGNAL \C2|Add0~3\ : std_logic;
SIGNAL \C2|Add0~4_combout\ : std_logic;
SIGNAL \C2|Selector36~0_combout\ : std_logic;
SIGNAL \C2|Add0~5\ : std_logic;
SIGNAL \C2|Add0~6_combout\ : std_logic;
SIGNAL \C2|Selector35~0_combout\ : std_logic;
SIGNAL \C2|Add0~7\ : std_logic;
SIGNAL \C2|Add0~8_combout\ : std_logic;
SIGNAL \C2|Selector34~0_combout\ : std_logic;
SIGNAL \C2|Add0~9\ : std_logic;
SIGNAL \C2|Add0~10_combout\ : std_logic;
SIGNAL \C2|Selector33~0_combout\ : std_logic;
SIGNAL \C2|Add0~11\ : std_logic;
SIGNAL \C2|Add0~12_combout\ : std_logic;
SIGNAL \C2|Selector32~0_combout\ : std_logic;
SIGNAL \C2|Add0~13\ : std_logic;
SIGNAL \C2|Add0~14_combout\ : std_logic;
SIGNAL \C2|Selector31~0_combout\ : std_logic;
SIGNAL \C2|Add0~15\ : std_logic;
SIGNAL \C2|Add0~17\ : std_logic;
SIGNAL \C2|Add0~18_combout\ : std_logic;
SIGNAL \C2|Selector29~0_combout\ : std_logic;
SIGNAL \C2|Add0~19\ : std_logic;
SIGNAL \C2|Add0~20_combout\ : std_logic;
SIGNAL \C2|Selector28~0_combout\ : std_logic;
SIGNAL \C2|Add0~21\ : std_logic;
SIGNAL \C2|Add0~22_combout\ : std_logic;
SIGNAL \C2|Selector27~0_combout\ : std_logic;
SIGNAL \C2|Add0~23\ : std_logic;
SIGNAL \C2|Add0~24_combout\ : std_logic;
SIGNAL \C2|Selector26~0_combout\ : std_logic;
SIGNAL \C2|Add0~25\ : std_logic;
SIGNAL \C2|Add0~26_combout\ : std_logic;
SIGNAL \C2|Selector25~0_combout\ : std_logic;
SIGNAL \C2|LessThan1~6_combout\ : std_logic;
SIGNAL \C2|Add0~27\ : std_logic;
SIGNAL \C2|Add0~28_combout\ : std_logic;
SIGNAL \C2|Selector24~0_combout\ : std_logic;
SIGNAL \C2|Add0~29\ : std_logic;
SIGNAL \C2|Add0~30_combout\ : std_logic;
SIGNAL \C2|Selector23~0_combout\ : std_logic;
SIGNAL \C2|Add0~31\ : std_logic;
SIGNAL \C2|Add0~32_combout\ : std_logic;
SIGNAL \C2|Selector22~0_combout\ : std_logic;
SIGNAL \C2|Add0~33\ : std_logic;
SIGNAL \C2|Add0~34_combout\ : std_logic;
SIGNAL \C2|Selector21~0_combout\ : std_logic;
SIGNAL \C2|LessThan1~5_combout\ : std_logic;
SIGNAL \C2|LessThan1~7_combout\ : std_logic;
SIGNAL \C2|LessThan1~8_combout\ : std_logic;
SIGNAL \C2|LessThan1~9_combout\ : std_logic;
SIGNAL \C2|Add0~35\ : std_logic;
SIGNAL \C2|Add0~36_combout\ : std_logic;
SIGNAL \C2|Selector20~0_combout\ : std_logic;
SIGNAL \C2|Add0~37\ : std_logic;
SIGNAL \C2|Add0~38_combout\ : std_logic;
SIGNAL \C2|Selector19~0_combout\ : std_logic;
SIGNAL \C2|Add0~39\ : std_logic;
SIGNAL \C2|Add0~40_combout\ : std_logic;
SIGNAL \C2|Selector18~0_combout\ : std_logic;
SIGNAL \C2|Add0~41\ : std_logic;
SIGNAL \C2|Add0~42_combout\ : std_logic;
SIGNAL \C2|Selector17~0_combout\ : std_logic;
SIGNAL \C2|LessThan1~3_combout\ : std_logic;
SIGNAL \C2|Add0~43\ : std_logic;
SIGNAL \C2|Add0~44_combout\ : std_logic;
SIGNAL \C2|Selector16~0_combout\ : std_logic;
SIGNAL \C2|Add0~45\ : std_logic;
SIGNAL \C2|Add0~46_combout\ : std_logic;
SIGNAL \C2|Selector15~0_combout\ : std_logic;
SIGNAL \C2|Add0~47\ : std_logic;
SIGNAL \C2|Add0~48_combout\ : std_logic;
SIGNAL \C2|Selector14~0_combout\ : std_logic;
SIGNAL \C2|LessThan1~2_combout\ : std_logic;
SIGNAL \C2|Add0~49\ : std_logic;
SIGNAL \C2|Add0~51\ : std_logic;
SIGNAL \C2|Add0~52_combout\ : std_logic;
SIGNAL \C2|Selector12~0_combout\ : std_logic;
SIGNAL \C2|Add0~53\ : std_logic;
SIGNAL \C2|Add0~54_combout\ : std_logic;
SIGNAL \C2|Selector11~0_combout\ : std_logic;
SIGNAL \C2|Add0~55\ : std_logic;
SIGNAL \C2|Add0~56_combout\ : std_logic;
SIGNAL \C2|Selector10~0_combout\ : std_logic;
SIGNAL \C2|Add0~57\ : std_logic;
SIGNAL \C2|Add0~58_combout\ : std_logic;
SIGNAL \C2|Selector9~0_combout\ : std_logic;
SIGNAL \C2|LessThan1~1_combout\ : std_logic;
SIGNAL \C2|LessThan1~4_combout\ : std_logic;
SIGNAL \C2|LessThan1~10_combout\ : std_logic;
SIGNAL \C2|Selector0~1_combout\ : std_logic;
SIGNAL \C2|Selector0~0_combout\ : std_logic;
SIGNAL \C2|Selector0~2_combout\ : std_logic;
SIGNAL \C2|RESET~regout\ : std_logic;
SIGNAL \C0|Add0~17\ : std_logic;
SIGNAL \C0|Add0~19\ : std_logic;
SIGNAL \C0|Add0~20_combout\ : std_logic;
SIGNAL \C0|Equal4~0_combout\ : std_logic;
SIGNAL \C0|Equal6~3_combout\ : std_logic;
SIGNAL \C0|Equal7~0_combout\ : std_logic;
SIGNAL \C0|Add0~5\ : std_logic;
SIGNAL \C0|Add0~6_combout\ : std_logic;
SIGNAL \C0|sclk~0_combout\ : std_logic;
SIGNAL \C0|Add0~7\ : std_logic;
SIGNAL \C0|Add0~8_combout\ : std_logic;
SIGNAL \C0|Add0~9\ : std_logic;
SIGNAL \C0|Add0~10_combout\ : std_logic;
SIGNAL \C0|Add0~11\ : std_logic;
SIGNAL \C0|Add0~12_combout\ : std_logic;
SIGNAL \C0|Equal4~1_combout\ : std_logic;
SIGNAL \C0|Equal0~6_combout\ : std_logic;
SIGNAL \C0|Col[2]~0_combout\ : std_logic;
SIGNAL \C0|Equal6~4_combout\ : std_logic;
SIGNAL \C0|Col[0]~1_combout\ : std_logic;
SIGNAL \C0|DecodeOut[0]~6_combout\ : std_logic;
SIGNAL \C0|Equal9~0_combout\ : std_logic;
SIGNAL \C0|DecodeOut[0]~8_combout\ : std_logic;
SIGNAL \C0|DecodeOut[0]~9_combout\ : std_logic;
SIGNAL \C0|DecodeOut[0]~10_combout\ : std_logic;
SIGNAL \C0|DecodeOut~2_combout\ : std_logic;
SIGNAL \C0|DecodeOut[0]~1_combout\ : std_logic;
SIGNAL \C0|DecodeOut[0]~3_combout\ : std_logic;
SIGNAL \C0|DecodeOut[0]~11_combout\ : std_logic;
SIGNAL \C9|Add0~0_combout\ : std_logic;
SIGNAL \C9|Add0~1\ : std_logic;
SIGNAL \C9|Add0~2_combout\ : std_logic;
SIGNAL \C9|Add0~3\ : std_logic;
SIGNAL \C9|Add0~5\ : std_logic;
SIGNAL \C9|Add0~6_combout\ : std_logic;
SIGNAL \C9|Add0~7\ : std_logic;
SIGNAL \C9|Add0~9\ : std_logic;
SIGNAL \C9|Add0~10_combout\ : std_logic;
SIGNAL \C9|Add0~11\ : std_logic;
SIGNAL \C9|Add0~12_combout\ : std_logic;
SIGNAL \C9|cnt[6]~1_combout\ : std_logic;
SIGNAL \C6|temp[0]~7_combout\ : std_logic;
SIGNAL \C6|temp[5]~18\ : std_logic;
SIGNAL \C6|temp[6]~19_combout\ : std_logic;
SIGNAL \C4|i[0]~24_combout\ : std_logic;
SIGNAL \C4|i[0]~25\ : std_logic;
SIGNAL \C4|i[1]~27\ : std_logic;
SIGNAL \C4|i[2]~29\ : std_logic;
SIGNAL \C4|i[3]~30_combout\ : std_logic;
SIGNAL \C4|i[3]~31\ : std_logic;
SIGNAL \C4|i[4]~33\ : std_logic;
SIGNAL \C4|i[5]~34_combout\ : std_logic;
SIGNAL \C4|i[5]~35\ : std_logic;
SIGNAL \C4|i[6]~37\ : std_logic;
SIGNAL \C4|i[7]~38_combout\ : std_logic;
SIGNAL \C4|i[7]~39\ : std_logic;
SIGNAL \C4|i[8]~41\ : std_logic;
SIGNAL \C4|i[9]~42_combout\ : std_logic;
SIGNAL \C4|i[9]~43\ : std_logic;
SIGNAL \C4|i[10]~44_combout\ : std_logic;
SIGNAL \C4|i[10]~45\ : std_logic;
SIGNAL \C4|i[11]~46_combout\ : std_logic;
SIGNAL \C4|i[11]~47\ : std_logic;
SIGNAL \C4|i[12]~48_combout\ : std_logic;
SIGNAL \C4|i[12]~49\ : std_logic;
SIGNAL \C4|i[13]~50_combout\ : std_logic;
SIGNAL \C4|i[13]~51\ : std_logic;
SIGNAL \C4|i[14]~52_combout\ : std_logic;
SIGNAL \C4|i[14]~53\ : std_logic;
SIGNAL \C4|i[15]~55\ : std_logic;
SIGNAL \C4|i[16]~56_combout\ : std_logic;
SIGNAL \C4|i[16]~57\ : std_logic;
SIGNAL \C4|i[17]~59\ : std_logic;
SIGNAL \C4|i[18]~61\ : std_logic;
SIGNAL \C4|i[19]~62_combout\ : std_logic;
SIGNAL \C4|i[19]~63\ : std_logic;
SIGNAL \C4|i[20]~65\ : std_logic;
SIGNAL \C4|i[21]~66_combout\ : std_logic;
SIGNAL \C4|i[21]~67\ : std_logic;
SIGNAL \C4|i[22]~69\ : std_logic;
SIGNAL \C4|i[23]~70_combout\ : std_logic;
SIGNAL \C2|Selector39~0_combout\ : std_logic;
SIGNAL \C2|Selector39~1_combout\ : std_logic;
SIGNAL \C2|Selector2~0_combout\ : std_logic;
SIGNAL \C2|Selector2~1_combout\ : std_logic;
SIGNAL \C2|EtatFutur.etat0~regout\ : std_logic;
SIGNAL \C2|EtatPresent.etat0~regout\ : std_logic;
SIGNAL \C2|TouchInit[0]~0_combout\ : std_logic;
SIGNAL \C2|KEY[2]~3_combout\ : std_logic;
SIGNAL \C2|TouchInit[1]~feeder_combout\ : std_logic;
SIGNAL \C2|KEY[2]~4_combout\ : std_logic;
SIGNAL \C2|Selector41~0_combout\ : std_logic;
SIGNAL \C2|Equal0~0_combout\ : std_logic;
SIGNAL \C2|KEY[1]~1_combout\ : std_logic;
SIGNAL \C2|Selector40~0_combout\ : std_logic;
SIGNAL \C2|KEY[2]~2_combout\ : std_logic;
SIGNAL \C3|Mux5~0_combout\ : std_logic;
SIGNAL \C3|out1[2]~0_combout\ : std_logic;
SIGNAL \C4|Equal0~0_combout\ : std_logic;
SIGNAL \C3|Mux4~0_combout\ : std_logic;
SIGNAL \C3|out1[3]~feeder_combout\ : std_logic;
SIGNAL \C4|Equal0~1_combout\ : std_logic;
SIGNAL \C3|Mux0~0_combout\ : std_logic;
SIGNAL \C3|Mux0~1_combout\ : std_logic;
SIGNAL \C4|i[8]~40_combout\ : std_logic;
SIGNAL \C4|Equal0~3_combout\ : std_logic;
SIGNAL \C4|Equal0~4_combout\ : std_logic;
SIGNAL \C4|i[18]~60_combout\ : std_logic;
SIGNAL \C4|i[15]~54_combout\ : std_logic;
SIGNAL \C4|Equal0~7_combout\ : std_logic;
SIGNAL \C4|i[4]~32_combout\ : std_logic;
SIGNAL \C3|out1[10]~2_combout\ : std_logic;
SIGNAL \C3|out1[10]~feeder_combout\ : std_logic;
SIGNAL \C4|Equal0~5_combout\ : std_logic;
SIGNAL \C4|Equal0~6_combout\ : std_logic;
SIGNAL \C4|Equal0~9_combout\ : std_logic;
SIGNAL \C4|Equal0~10_combout\ : std_logic;
SIGNAL \C4|s_out~regout\ : std_logic;
SIGNAL \C6|temp[3]~13_combout\ : std_logic;
SIGNAL \C6|LessThan0~0_combout\ : std_logic;
SIGNAL \C6|LessThan0~1_combout\ : std_logic;
SIGNAL \C6|temp[0]~8\ : std_logic;
SIGNAL \C6|temp[1]~10\ : std_logic;
SIGNAL \C6|temp[2]~11_combout\ : std_logic;
SIGNAL \C6|temp[2]~12\ : std_logic;
SIGNAL \C6|temp[3]~14\ : std_logic;
SIGNAL \C6|temp[4]~15_combout\ : std_logic;
SIGNAL \C6|temp[4]~16\ : std_logic;
SIGNAL \C6|temp[5]~17_combout\ : std_logic;
SIGNAL \C8|TA[4]~feeder_combout\ : std_logic;
SIGNAL \C7|temp[0]~8\ : std_logic;
SIGNAL \C7|temp[1]~9_combout\ : std_logic;
SIGNAL \C7|temp[3]~14\ : std_logic;
SIGNAL \C7|temp[4]~16\ : std_logic;
SIGNAL \C7|temp[5]~17_combout\ : std_logic;
SIGNAL \C5|i[0]~24_combout\ : std_logic;
SIGNAL \C5|i[0]~25\ : std_logic;
SIGNAL \C5|i[1]~27\ : std_logic;
SIGNAL \C5|i[2]~29\ : std_logic;
SIGNAL \C5|i[3]~30_combout\ : std_logic;
SIGNAL \C5|i[3]~31\ : std_logic;
SIGNAL \C5|i[4]~33\ : std_logic;
SIGNAL \C5|i[5]~34_combout\ : std_logic;
SIGNAL \C5|i[5]~35\ : std_logic;
SIGNAL \C5|i[6]~37\ : std_logic;
SIGNAL \C5|i[7]~38_combout\ : std_logic;
SIGNAL \C5|i[7]~39\ : std_logic;
SIGNAL \C5|i[8]~41\ : std_logic;
SIGNAL \C5|i[9]~42_combout\ : std_logic;
SIGNAL \C5|i[9]~43\ : std_logic;
SIGNAL \C5|i[10]~44_combout\ : std_logic;
SIGNAL \C5|i[10]~45\ : std_logic;
SIGNAL \C5|i[11]~46_combout\ : std_logic;
SIGNAL \C5|i[11]~47\ : std_logic;
SIGNAL \C5|i[12]~48_combout\ : std_logic;
SIGNAL \C5|i[12]~49\ : std_logic;
SIGNAL \C5|i[13]~50_combout\ : std_logic;
SIGNAL \C5|i[13]~51\ : std_logic;
SIGNAL \C5|i[14]~52_combout\ : std_logic;
SIGNAL \C5|i[14]~53\ : std_logic;
SIGNAL \C5|i[15]~55\ : std_logic;
SIGNAL \C5|i[16]~56_combout\ : std_logic;
SIGNAL \C5|i[16]~57\ : std_logic;
SIGNAL \C5|i[17]~59\ : std_logic;
SIGNAL \C5|i[18]~60_combout\ : std_logic;
SIGNAL \C5|i[18]~61\ : std_logic;
SIGNAL \C5|i[19]~62_combout\ : std_logic;
SIGNAL \C5|i[19]~63\ : std_logic;
SIGNAL \C5|i[20]~65\ : std_logic;
SIGNAL \C5|i[21]~66_combout\ : std_logic;
SIGNAL \C5|i[21]~67\ : std_logic;
SIGNAL \C5|i[22]~69\ : std_logic;
SIGNAL \C5|i[23]~70_combout\ : std_logic;
SIGNAL \C5|Equal0~6_combout\ : std_logic;
SIGNAL \C3|Mux7~0_combout\ : std_logic;
SIGNAL \C3|out2[5]~2_combout\ : std_logic;
SIGNAL \C5|Equal0~5_combout\ : std_logic;
SIGNAL \C5|i[15]~54_combout\ : std_logic;
SIGNAL \C5|i[17]~58_combout\ : std_logic;
SIGNAL \C5|Equal0~7_combout\ : std_logic;
SIGNAL \C5|Equal0~9_combout\ : std_logic;
SIGNAL \C2|Selector42~2_combout\ : std_logic;
SIGNAL \C2|Selector42~3_combout\ : std_logic;
SIGNAL \C2|Selector42~1_combout\ : std_logic;
SIGNAL \C2|Selector42~4_combout\ : std_logic;
SIGNAL \C2|KEY[0]~0_combout\ : std_logic;
SIGNAL \C3|Mux11~0_combout\ : std_logic;
SIGNAL \C5|i[2]~28_combout\ : std_logic;
SIGNAL \C5|Equal0~1_combout\ : std_logic;
SIGNAL \C3|Mux8~0_combout\ : std_logic;
SIGNAL \C5|i[6]~36_combout\ : std_logic;
SIGNAL \C5|Equal0~2_combout\ : std_logic;
SIGNAL \C3|out1[6]~feeder_combout\ : std_logic;
SIGNAL \C5|i[8]~40_combout\ : std_logic;
SIGNAL \C5|Equal0~3_combout\ : std_logic;
SIGNAL \C5|Equal0~4_combout\ : std_logic;
SIGNAL \C5|Equal0~10_combout\ : std_logic;
SIGNAL \C5|s_out~regout\ : std_logic;
SIGNAL \C7|temp[5]~18\ : std_logic;
SIGNAL \C7|temp[6]~19_combout\ : std_logic;
SIGNAL \C7|temp[2]~11_combout\ : std_logic;
SIGNAL \C7|LessThan0~1_combout\ : std_logic;
SIGNAL \C7|temp[1]~10\ : std_logic;
SIGNAL \C7|temp[2]~12\ : std_logic;
SIGNAL \C7|temp[3]~13_combout\ : std_logic;
SIGNAL \C7|temp[0]~7_combout\ : std_logic;
SIGNAL \C6|temp[1]~9_combout\ : std_logic;
SIGNAL \C8|leloop:1:L0|C2~0_combout\ : std_logic;
SIGNAL \C8|leloop:2:L0|C2~0_combout\ : std_logic;
SIGNAL \C8|leloop:3:L0|C2~0_combout\ : std_logic;
SIGNAL \C8|leloop:4:L0|C2~0_combout\ : std_logic;
SIGNAL \C8|leloop:5:L0|C2~0_combout\ : std_logic;
SIGNAL \C8|TB[5]~feeder_combout\ : std_logic;
SIGNAL \C8|leloop:5:L0|S~0_combout\ : std_logic;
SIGNAL \C9|Add0~8_combout\ : std_logic;
SIGNAL \C7|temp[4]~15_combout\ : std_logic;
SIGNAL \C8|leloop:4:L0|S~0_combout\ : std_logic;
SIGNAL \C8|leloop:3:L0|S~0_combout\ : std_logic;
SIGNAL \C9|Add0~4_combout\ : std_logic;
SIGNAL \C8|leloop:1:L0|S~0_combout\ : std_logic;
SIGNAL \C9|LessThan0~0_combout\ : std_logic;
SIGNAL \C9|LessThan0~1_combout\ : std_logic;
SIGNAL \C8|leloop:2:L0|S~0_combout\ : std_logic;
SIGNAL \C9|LessThan0~2_combout\ : std_logic;
SIGNAL \C9|LessThan0~3_combout\ : std_logic;
SIGNAL \C9|LessThan0~4_combout\ : std_logic;
SIGNAL \C9|LessThan0~5_combout\ : std_logic;
SIGNAL \C9|LessThan0~6_combout\ : std_logic;
SIGNAL \C9|s~regout\ : std_logic;
SIGNAL \C5|i\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \C7|temp\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \C0|sclk\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \C0|DecodeOut\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \C0|Col\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \C1|i\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \C2|i\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \C2|TouchInit\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \C2|KEY\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \C8|TB\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \C8|TA\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \C9|cnt\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \C6|temp\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \C4|i\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \C3|out2\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \C3|out1\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \Row~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \C2|ALT_INV_RESET~regout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_Row <= Row;
sonde_out <= ww_sonde_out;
Col <= ww_Col;
valeur <= ww_valeur;
audio <= ww_audio;
clk_out <= ww_clk_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

\rst~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \rst~combout\);
\C2|ALT_INV_RESET~regout\ <= NOT \C2|RESET~regout\;

-- Location: LCCOMB_X44_Y11_N12
\C0|Add0~0\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X44_Y10_N12
\C0|Add0~32\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X43_Y13_N28
\C9|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C9|Add0~12_combout\ = (\C9|cnt\(6) & (!\C9|Add0~11\ & VCC)) # (!\C9|cnt\(6) & (\C9|Add0~11\ $ (GND)))
-- \C9|Add0~13\ = CARRY((!\C9|cnt\(6) & !\C9|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C9|cnt\(6),
	datad => VCC,
	cin => \C9|Add0~11\,
	combout => \C9|Add0~12_combout\,
	cout => \C9|Add0~13\);

-- Location: LCCOMB_X43_Y13_N30
\C9|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \C9|Add0~14_combout\ = \C9|Add0~13\ $ (!\C9|cnt\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \C9|cnt\(7),
	cin => \C9|Add0~13\,
	combout => \C9|Add0~14_combout\);

-- Location: LCCOMB_X31_Y12_N16
\C2|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add0~16_combout\ = (\C2|i\(8) & ((GND) # (!\C2|Add0~15\))) # (!\C2|i\(8) & (\C2|Add0~15\ $ (GND)))
-- \C2|Add0~17\ = CARRY((\C2|i\(8)) # (!\C2|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|i\(8),
	datad => VCC,
	cin => \C2|Add0~15\,
	combout => \C2|Add0~16_combout\,
	cout => \C2|Add0~17\);

-- Location: LCCOMB_X31_Y11_N18
\C2|Add0~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add0~50_combout\ = (\C2|i\(25) & (\C2|Add0~49\ & VCC)) # (!\C2|i\(25) & (!\C2|Add0~49\))
-- \C2|Add0~51\ = CARRY((!\C2|i\(25) & !\C2|Add0~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|i\(25),
	datad => VCC,
	cin => \C2|Add0~49\,
	combout => \C2|Add0~50_combout\,
	cout => \C2|Add0~51\);

-- Location: LCCOMB_X31_Y11_N26
\C2|Add0~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add0~58_combout\ = (\C2|i\(29) & (\C2|Add0~57\ & VCC)) # (!\C2|i\(29) & (!\C2|Add0~57\))
-- \C2|Add0~59\ = CARRY((!\C2|i\(29) & !\C2|Add0~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|i\(29),
	datad => VCC,
	cin => \C2|Add0~57\,
	combout => \C2|Add0~58_combout\,
	cout => \C2|Add0~59\);

-- Location: LCCOMB_X31_Y11_N28
\C2|Add0~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add0~60_combout\ = (\C2|i\(30) & ((GND) # (!\C2|Add0~59\))) # (!\C2|i\(30) & (\C2|Add0~59\ $ (GND)))
-- \C2|Add0~61\ = CARRY((\C2|i\(30)) # (!\C2|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|i\(30),
	datad => VCC,
	cin => \C2|Add0~59\,
	combout => \C2|Add0~60_combout\,
	cout => \C2|Add0~61\);

-- Location: LCCOMB_X31_Y11_N30
\C2|Add0~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add0~62_combout\ = \C2|Add0~61\ $ (!\C2|i\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \C2|i\(31),
	cin => \C2|Add0~61\,
	combout => \C2|Add0~62_combout\);

-- Location: LCCOMB_X36_Y21_N12
\C1|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add0~4_combout\ = (\C1|i\(2) & (\C1|Add0~3\ $ (GND))) # (!\C1|i\(2) & (!\C1|Add0~3\ & VCC))
-- \C1|Add0~5\ = CARRY((\C1|i\(2) & !\C1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|i\(2),
	datad => VCC,
	cin => \C1|Add0~3\,
	combout => \C1|Add0~4_combout\,
	cout => \C1|Add0~5\);

-- Location: LCCOMB_X36_Y21_N20
\C1|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add0~12_combout\ = (\C1|i\(6) & (\C1|Add0~11\ $ (GND))) # (!\C1|i\(6) & (!\C1|Add0~11\ & VCC))
-- \C1|Add0~13\ = CARRY((\C1|i\(6) & !\C1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|i\(6),
	datad => VCC,
	cin => \C1|Add0~11\,
	combout => \C1|Add0~12_combout\,
	cout => \C1|Add0~13\);

-- Location: LCCOMB_X36_Y20_N6
\C1|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add0~30_combout\ = (\C1|i\(15) & (!\C1|Add0~29\)) # (!\C1|i\(15) & ((\C1|Add0~29\) # (GND)))
-- \C1|Add0~31\ = CARRY((!\C1|Add0~29\) # (!\C1|i\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|i\(15),
	datad => VCC,
	cin => \C1|Add0~29\,
	combout => \C1|Add0~30_combout\,
	cout => \C1|Add0~31\);

-- Location: LCCOMB_X36_Y20_N14
\C1|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add0~38_combout\ = (\C1|i\(19) & (!\C1|Add0~37\)) # (!\C1|i\(19) & ((\C1|Add0~37\) # (GND)))
-- \C1|Add0~39\ = CARRY((!\C1|Add0~37\) # (!\C1|i\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|i\(19),
	datad => VCC,
	cin => \C1|Add0~37\,
	combout => \C1|Add0~38_combout\,
	cout => \C1|Add0~39\);

-- Location: LCCOMB_X36_Y20_N16
\C1|Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add0~40_combout\ = (\C1|i\(20) & (\C1|Add0~39\ $ (GND))) # (!\C1|i\(20) & (!\C1|Add0~39\ & VCC))
-- \C1|Add0~41\ = CARRY((\C1|i\(20) & !\C1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|i\(20),
	datad => VCC,
	cin => \C1|Add0~39\,
	combout => \C1|Add0~40_combout\,
	cout => \C1|Add0~41\);

-- Location: LCCOMB_X36_Y20_N18
\C1|Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add0~42_combout\ = (\C1|i\(21) & (!\C1|Add0~41\)) # (!\C1|i\(21) & ((\C1|Add0~41\) # (GND)))
-- \C1|Add0~43\ = CARRY((!\C1|Add0~41\) # (!\C1|i\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|i\(21),
	datad => VCC,
	cin => \C1|Add0~41\,
	combout => \C1|Add0~42_combout\,
	cout => \C1|Add0~43\);

-- Location: LCCOMB_X36_Y20_N20
\C1|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add0~44_combout\ = (\C1|i\(22) & (\C1|Add0~43\ $ (GND))) # (!\C1|i\(22) & (!\C1|Add0~43\ & VCC))
-- \C1|Add0~45\ = CARRY((\C1|i\(22) & !\C1|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|i\(22),
	datad => VCC,
	cin => \C1|Add0~43\,
	combout => \C1|Add0~44_combout\,
	cout => \C1|Add0~45\);

-- Location: LCCOMB_X36_Y20_N22
\C1|Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add0~46_combout\ = \C1|i\(23) $ (\C1|Add0~45\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|i\(23),
	cin => \C1|Add0~45\,
	combout => \C1|Add0~46_combout\);

-- Location: LCFF_X44_Y13_N13
\C4|i[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C4|i[2]~28_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	sclr => \C4|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C4|i\(2));

-- Location: LCFF_X44_Y13_N21
\C4|i[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C4|i[6]~36_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	sclr => \C4|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C4|i\(6));

-- Location: LCFF_X44_Y13_N11
\C4|i[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C4|i[1]~26_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	sclr => \C4|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C4|i\(1));

-- Location: LCFF_X44_Y12_N11
\C4|i[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C4|i[17]~58_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	sclr => \C4|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C4|i\(17));

-- Location: LCFF_X44_Y12_N17
\C4|i[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C4|i[20]~64_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	sclr => \C4|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C4|i\(20));

-- Location: LCFF_X44_Y12_N21
\C4|i[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C4|i[22]~68_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	sclr => \C4|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C4|i\(22));

-- Location: LCFF_X42_Y11_N11
\C5|i[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C5|i[1]~26_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	sclr => \C5|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C5|i\(1));

-- Location: LCFF_X42_Y11_N17
\C5|i[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C5|i[4]~32_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	sclr => \C5|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C5|i\(4));

-- Location: LCFF_X42_Y10_N17
\C5|i[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C5|i[20]~64_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	sclr => \C5|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C5|i\(20));

-- Location: LCFF_X42_Y10_N21
\C5|i[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C5|i[22]~68_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	sclr => \C5|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C5|i\(22));

-- Location: LCCOMB_X44_Y13_N10
\C4|i[1]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \C4|i[1]~26_combout\ = (\C4|i\(1) & (!\C4|i[0]~25\)) # (!\C4|i\(1) & ((\C4|i[0]~25\) # (GND)))
-- \C4|i[1]~27\ = CARRY((!\C4|i[0]~25\) # (!\C4|i\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C4|i\(1),
	datad => VCC,
	cin => \C4|i[0]~25\,
	combout => \C4|i[1]~26_combout\,
	cout => \C4|i[1]~27\);

-- Location: LCCOMB_X44_Y13_N12
\C4|i[2]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \C4|i[2]~28_combout\ = (\C4|i\(2) & (\C4|i[1]~27\ $ (GND))) # (!\C4|i\(2) & (!\C4|i[1]~27\ & VCC))
-- \C4|i[2]~29\ = CARRY((\C4|i\(2) & !\C4|i[1]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C4|i\(2),
	datad => VCC,
	cin => \C4|i[1]~27\,
	combout => \C4|i[2]~28_combout\,
	cout => \C4|i[2]~29\);

-- Location: LCCOMB_X44_Y13_N20
\C4|i[6]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \C4|i[6]~36_combout\ = (\C4|i\(6) & (\C4|i[5]~35\ $ (GND))) # (!\C4|i\(6) & (!\C4|i[5]~35\ & VCC))
-- \C4|i[6]~37\ = CARRY((\C4|i\(6) & !\C4|i[5]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C4|i\(6),
	datad => VCC,
	cin => \C4|i[5]~35\,
	combout => \C4|i[6]~36_combout\,
	cout => \C4|i[6]~37\);

-- Location: LCCOMB_X44_Y12_N10
\C4|i[17]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \C4|i[17]~58_combout\ = (\C4|i\(17) & (!\C4|i[16]~57\)) # (!\C4|i\(17) & ((\C4|i[16]~57\) # (GND)))
-- \C4|i[17]~59\ = CARRY((!\C4|i[16]~57\) # (!\C4|i\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C4|i\(17),
	datad => VCC,
	cin => \C4|i[16]~57\,
	combout => \C4|i[17]~58_combout\,
	cout => \C4|i[17]~59\);

-- Location: LCCOMB_X44_Y12_N16
\C4|i[20]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \C4|i[20]~64_combout\ = (\C4|i\(20) & (\C4|i[19]~63\ $ (GND))) # (!\C4|i\(20) & (!\C4|i[19]~63\ & VCC))
-- \C4|i[20]~65\ = CARRY((\C4|i\(20) & !\C4|i[19]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C4|i\(20),
	datad => VCC,
	cin => \C4|i[19]~63\,
	combout => \C4|i[20]~64_combout\,
	cout => \C4|i[20]~65\);

-- Location: LCCOMB_X44_Y12_N20
\C4|i[22]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \C4|i[22]~68_combout\ = (\C4|i\(22) & (\C4|i[21]~67\ $ (GND))) # (!\C4|i\(22) & (!\C4|i[21]~67\ & VCC))
-- \C4|i[22]~69\ = CARRY((\C4|i\(22) & !\C4|i[21]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C4|i\(22),
	datad => VCC,
	cin => \C4|i[21]~67\,
	combout => \C4|i[22]~68_combout\,
	cout => \C4|i[22]~69\);

-- Location: LCCOMB_X42_Y11_N10
\C5|i[1]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \C5|i[1]~26_combout\ = (\C5|i\(1) & (!\C5|i[0]~25\)) # (!\C5|i\(1) & ((\C5|i[0]~25\) # (GND)))
-- \C5|i[1]~27\ = CARRY((!\C5|i[0]~25\) # (!\C5|i\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C5|i\(1),
	datad => VCC,
	cin => \C5|i[0]~25\,
	combout => \C5|i[1]~26_combout\,
	cout => \C5|i[1]~27\);

-- Location: LCCOMB_X42_Y11_N16
\C5|i[4]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \C5|i[4]~32_combout\ = (\C5|i\(4) & (\C5|i[3]~31\ $ (GND))) # (!\C5|i\(4) & (!\C5|i[3]~31\ & VCC))
-- \C5|i[4]~33\ = CARRY((\C5|i\(4) & !\C5|i[3]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C5|i\(4),
	datad => VCC,
	cin => \C5|i[3]~31\,
	combout => \C5|i[4]~32_combout\,
	cout => \C5|i[4]~33\);

-- Location: LCCOMB_X42_Y10_N16
\C5|i[20]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \C5|i[20]~64_combout\ = (\C5|i\(20) & (\C5|i[19]~63\ $ (GND))) # (!\C5|i\(20) & (!\C5|i[19]~63\ & VCC))
-- \C5|i[20]~65\ = CARRY((\C5|i\(20) & !\C5|i[19]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C5|i\(20),
	datad => VCC,
	cin => \C5|i[19]~63\,
	combout => \C5|i[20]~64_combout\,
	cout => \C5|i[20]~65\);

-- Location: LCCOMB_X42_Y10_N20
\C5|i[22]~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \C5|i[22]~68_combout\ = (\C5|i\(22) & (\C5|i[21]~67\ $ (GND))) # (!\C5|i\(22) & (!\C5|i[21]~67\ & VCC))
-- \C5|i[22]~69\ = CARRY((\C5|i\(22) & !\C5|i[21]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C5|i\(22),
	datad => VCC,
	cin => \C5|i[21]~67\,
	combout => \C5|i[22]~68_combout\,
	cout => \C5|i[22]~69\);

-- Location: LCFF_X44_Y10_N13
\C0|sclk[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C0|Add0~32_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|sclk\(16));

-- Location: LCCOMB_X44_Y11_N4
\C0|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|Equal0~2_combout\ = (!\C0|sclk\(2) & (!\C0|sclk\(0) & !\C0|sclk\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|sclk\(2),
	datab => \C0|sclk\(0),
	datad => \C0|sclk\(1),
	combout => \C0|Equal0~2_combout\);

-- Location: LCCOMB_X45_Y11_N10
\C0|Equal6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|Equal6~2_combout\ = (!\C0|sclk\(8) & !\C0|sclk\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C0|sclk\(8),
	datad => \C0|sclk\(6),
	combout => \C0|Equal6~2_combout\);

-- Location: LCCOMB_X48_Y11_N16
\C0|DecodeOut~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|DecodeOut~0_combout\ = ((\Row~combout\(0) $ (!\Row~combout\(2))) # (!\Row~combout\(3))) # (!\Row~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Row~combout\(0),
	datab => \Row~combout\(2),
	datac => \Row~combout\(1),
	datad => \Row~combout\(3),
	combout => \C0|DecodeOut~0_combout\);

-- Location: LCCOMB_X47_Y11_N12
\C0|DecodeOut~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|DecodeOut~5_combout\ = (\C0|Equal9~0_combout\) # ((\C0|Equal11~0_combout\) # ((\C0|DecodeOut~2_combout\ & \C0|DecodeOut\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|Equal9~0_combout\,
	datab => \C0|DecodeOut~2_combout\,
	datac => \C0|DecodeOut\(0),
	datad => \C0|Equal11~0_combout\,
	combout => \C0|DecodeOut~5_combout\);

-- Location: LCCOMB_X48_Y11_N24
\C0|DecodeOut[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|DecodeOut[0]~7_combout\ = (\Row~combout\(2) & (\Row~combout\(1) $ (\Row~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Row~combout\(2),
	datac => \Row~combout\(1),
	datad => \Row~combout\(3),
	combout => \C0|DecodeOut[0]~7_combout\);

-- Location: LCCOMB_X48_Y11_N26
\C0|Equal8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|Equal8~0_combout\ = (\Row~combout\(0) & (\Row~combout\(2) & (\Row~combout\(1) & !\Row~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Row~combout\(0),
	datab => \Row~combout\(2),
	datac => \Row~combout\(1),
	datad => \Row~combout\(3),
	combout => \C0|Equal8~0_combout\);

-- Location: LCCOMB_X47_Y11_N6
\C0|DecodeOut~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|DecodeOut~23_combout\ = (\C0|Equal11~0_combout\) # (\C0|DecodeOut\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C0|Equal11~0_combout\,
	datad => \C0|DecodeOut\(2),
	combout => \C0|DecodeOut~23_combout\);

-- Location: LCCOMB_X47_Y11_N4
\C0|DecodeOut~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|DecodeOut~24_combout\ = (!\C0|Equal8~0_combout\ & ((\C0|Equal9~0_combout\) # ((!\C0|Equal10~0_combout\ & \C0|DecodeOut~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|Equal9~0_combout\,
	datab => \C0|Equal10~0_combout\,
	datac => \C0|Equal8~0_combout\,
	datad => \C0|DecodeOut~23_combout\,
	combout => \C0|DecodeOut~24_combout\);

-- Location: LCCOMB_X48_Y11_N2
\C0|DecodeOut[2]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|DecodeOut[2]~30_combout\ = ((\C0|DecodeOut\(2) & (!\C0|Equal8~0_combout\ & !\C0|Equal11~0_combout\))) # (!\C0|DecodeOut[1]~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|DecodeOut\(2),
	datab => \C0|DecodeOut[1]~15_combout\,
	datac => \C0|Equal8~0_combout\,
	datad => \C0|Equal11~0_combout\,
	combout => \C0|DecodeOut[2]~30_combout\);

-- Location: LCCOMB_X48_Y11_N6
\C0|DecodeOut~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|DecodeOut~33_combout\ = (\C0|DecodeOut[3]~13_combout\ & ((\C0|Equal10~0_combout\) # ((\C0|Equal11~0_combout\) # (\C0|DecodeOut\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|Equal10~0_combout\,
	datab => \C0|Equal11~0_combout\,
	datac => \C0|DecodeOut\(3),
	datad => \C0|DecodeOut[3]~13_combout\,
	combout => \C0|DecodeOut~33_combout\);

-- Location: LCFF_X42_Y13_N1
\C8|TB[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \C7|temp\(2),
	aclr => \C2|ALT_INV_RESET~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C8|TB\(2));

-- Location: LCFF_X43_Y13_N7
\C9|cnt[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C9|cnt~0_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C9|cnt\(7));

-- Location: LCFF_X32_Y11_N1
\C2|i[30]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C2|Selector8~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \C2|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|i\(30));

-- Location: LCCOMB_X32_Y12_N20
\C2|LessThan1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan1~0_combout\ = ((\C2|i\(1)) # ((\C2|i\(2)) # (\C2|i\(30)))) # (!\C2|i\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|i\(3),
	datab => \C2|i\(1),
	datac => \C2|i\(2),
	datad => \C2|i\(30),
	combout => \C2|LessThan1~0_combout\);

-- Location: LCFF_X32_Y11_N17
\C2|i[25]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C2|Selector13~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \C2|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|i\(25));

-- Location: LCFF_X33_Y12_N5
\C2|i[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C2|Selector30~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \C2|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|i\(8));

-- Location: LCFF_X32_Y11_N31
\C2|i[31]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C2|Selector7~1_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \C2|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|i\(31));

-- Location: LCFF_X38_Y12_N29
\C2|EtatPresent.init\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \C2|EtatFutur.init~regout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|EtatPresent.init~regout\);

-- Location: LCCOMB_X43_Y13_N4
\C9|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C9|Equal0~0_combout\ = (\C9|cnt\(7) & (\C9|cnt\(0) & (\C9|cnt\(6) & \C9|cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C9|cnt\(7),
	datab => \C9|cnt\(0),
	datac => \C9|cnt\(6),
	datad => \C9|cnt\(5),
	combout => \C9|Equal0~0_combout\);

-- Location: LCCOMB_X43_Y13_N14
\C9|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C9|Equal0~1_combout\ = (\C9|cnt\(2) & (\C9|cnt\(3) & (\C9|cnt\(4) & \C9|cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C9|cnt\(2),
	datab => \C9|cnt\(3),
	datac => \C9|cnt\(4),
	datad => \C9|cnt\(1),
	combout => \C9|Equal0~1_combout\);

-- Location: LCCOMB_X43_Y13_N6
\C9|cnt~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C9|cnt~0_combout\ = \C9|Add0~14_combout\ $ (((!\C9|Equal0~1_combout\) # (!\C9|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C9|Equal0~0_combout\,
	datac => \C9|Equal0~1_combout\,
	datad => \C9|Add0~14_combout\,
	combout => \C9|cnt~0_combout\);

-- Location: LCCOMB_X32_Y11_N0
\C2|Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Selector8~0_combout\ = (\C2|EtatPresent.etat3~regout\ & \C2|Add0~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|EtatPresent.etat3~regout\,
	datad => \C2|Add0~60_combout\,
	combout => \C2|Selector8~0_combout\);

-- Location: LCCOMB_X32_Y11_N16
\C2|Selector13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Selector13~0_combout\ = (\C2|EtatPresent.etat3~regout\ & \C2|Add0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|EtatPresent.etat3~regout\,
	datad => \C2|Add0~50_combout\,
	combout => \C2|Selector13~0_combout\);

-- Location: LCCOMB_X33_Y12_N4
\C2|Selector30~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Selector30~0_combout\ = (\C2|EtatPresent.etat3~regout\ & \C2|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|EtatPresent.etat3~regout\,
	datad => \C2|Add0~16_combout\,
	combout => \C2|Selector30~0_combout\);

-- Location: LCCOMB_X32_Y11_N30
\C2|Selector7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Selector7~1_combout\ = (\C2|EtatPresent.etat3~regout\ & \C2|Add0~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|EtatPresent.etat3~regout\,
	datac => \C2|Add0~62_combout\,
	combout => \C2|Selector7~1_combout\);

-- Location: LCFF_X36_Y20_N25
\C1|i[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|i~14_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|i\(23));

-- Location: LCFF_X36_Y20_N27
\C1|i[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|i~15_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|i\(21));

-- Location: LCFF_X36_Y20_N29
\C1|i[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|i~16_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|i\(20));

-- Location: LCFF_X36_Y20_N21
\C1|i[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|Add0~44_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|i\(22));

-- Location: LCCOMB_X35_Y20_N10
\C1|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Equal0~0_combout\ = (\C1|i\(21) & (\C1|i\(20) & (\C1|i\(23) & !\C1|i\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|i\(21),
	datab => \C1|i\(20),
	datac => \C1|i\(23),
	datad => \C1|i\(22),
	combout => \C1|Equal0~0_combout\);

-- Location: LCFF_X36_Y20_N7
\C1|i[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|Add0~30_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|i\(15));

-- Location: LCFF_X36_Y21_N21
\C1|i[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|Add0~12_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|i\(6));

-- Location: LCFF_X36_Y21_N13
\C1|i[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|Add0~4_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|i\(2));

-- Location: LCFF_X38_Y12_N17
\C2|EtatFutur.init\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C2|Selector1~1_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|EtatFutur.init~regout\);

-- Location: LCCOMB_X43_Y11_N12
\C7|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C7|LessThan0~0_combout\ = (((!\C7|temp\(3)) # (!\C7|temp\(4))) # (!\C7|temp\(5))) # (!\C7|temp\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C7|temp\(0),
	datab => \C7|temp\(5),
	datac => \C7|temp\(4),
	datad => \C7|temp\(3),
	combout => \C7|LessThan0~0_combout\);

-- Location: LCCOMB_X38_Y12_N12
\C2|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Selector1~0_combout\ = (\C2|EtatPresent.etat4~regout\) # ((\C2|EtatPresent.etat3~regout\ & ((!\C1|s_out~regout\) # (!\C2|LessThan1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|EtatPresent.etat3~regout\,
	datab => \C2|EtatPresent.etat4~regout\,
	datac => \C2|LessThan1~10_combout\,
	datad => \C1|s_out~regout\,
	combout => \C2|Selector1~0_combout\);

-- Location: LCCOMB_X38_Y12_N16
\C2|Selector1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Selector1~1_combout\ = (\C1|s_out~regout\ & (((!\C2|Selector1~0_combout\)))) # (!\C1|s_out~regout\ & ((\C2|EtatFutur.init~regout\) # ((\C2|EtatPresent.init~regout\ & !\C2|Selector1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|EtatPresent.init~regout\,
	datab => \C1|s_out~regout\,
	datac => \C2|EtatFutur.init~regout\,
	datad => \C2|Selector1~0_combout\,
	combout => \C2|Selector1~1_combout\);

-- Location: LCFF_X43_Y12_N25
\C3|out1[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \C3|Mux3~0_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C3|out1\(7));

-- Location: LCCOMB_X43_Y12_N24
\C4|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C4|Equal0~2_combout\ = (\C4|i\(7) & (\C3|out1\(7) & (\C3|out1\(6) $ (!\C4|i\(6))))) # (!\C4|i\(7) & (!\C3|out1\(7) & (\C3|out1\(6) $ (!\C4|i\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C4|i\(7),
	datab => \C3|out1\(6),
	datac => \C3|out1\(7),
	datad => \C4|i\(6),
	combout => \C4|Equal0~2_combout\);

-- Location: LCCOMB_X44_Y12_N24
\C4|Equal0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C4|Equal0~8_combout\ = (!\C4|i\(22) & (!\C4|i\(19) & (!\C4|i\(20) & !\C4|i\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C4|i\(22),
	datab => \C4|i\(19),
	datac => \C4|i\(20),
	datad => \C4|i\(21),
	combout => \C4|Equal0~8_combout\);

-- Location: LCFF_X42_Y12_N7
\C3|out2[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C3|out2[1]~1_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C3|out2\(1));

-- Location: LCCOMB_X42_Y12_N12
\C5|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C5|Equal0~0_combout\ = (\C3|out2\(1) & (\C5|i\(1) & (\C3|out2\(2) $ (!\C5|i\(0))))) # (!\C3|out2\(1) & (!\C5|i\(1) & (\C3|out2\(2) $ (!\C5|i\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|out2\(1),
	datab => \C3|out2\(2),
	datac => \C5|i\(1),
	datad => \C5|i\(0),
	combout => \C5|Equal0~0_combout\);

-- Location: LCFF_X43_Y12_N9
\C3|out2[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C3|Mux9~0_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C3|out2\(6));

-- Location: LCCOMB_X42_Y10_N24
\C5|Equal0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C5|Equal0~8_combout\ = (!\C5|i\(20) & (!\C5|i\(19) & (!\C5|i\(22) & !\C5|i\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C5|i\(20),
	datab => \C5|i\(19),
	datac => \C5|i\(22),
	datad => \C5|i\(21),
	combout => \C5|Equal0~8_combout\);

-- Location: LCCOMB_X43_Y12_N0
\C3|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Mux3~0_combout\ = (!\C2|KEY\(3) & ((\C2|KEY\(0) & (!\C2|KEY\(1) & \C2|KEY\(2))) # (!\C2|KEY\(0) & ((\C2|KEY\(2)) # (!\C2|KEY\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|KEY\(0),
	datab => \C2|KEY\(3),
	datac => \C2|KEY\(1),
	datad => \C2|KEY\(2),
	combout => \C3|Mux3~0_combout\);

-- Location: LCCOMB_X43_Y12_N8
\C3|Mux9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Mux9~0_combout\ = (\C2|KEY\(0) & (!\C2|KEY\(2) & (\C2|KEY\(3) $ (\C2|KEY\(1))))) # (!\C2|KEY\(0) & (!\C2|KEY\(3) & (\C2|KEY\(1) & \C2|KEY\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|KEY\(0),
	datab => \C2|KEY\(3),
	datac => \C2|KEY\(1),
	datad => \C2|KEY\(2),
	combout => \C3|Mux9~0_combout\);

-- Location: LCCOMB_X46_Y12_N24
\C2|Selector42~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Selector42~0_combout\ = (\C2|i\(3) & ((\C2|i\(2) & ((\C2|i\(1)))) # (!\C2|i\(2) & ((\C2|i\(0)) # (!\C2|i\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|i\(3),
	datab => \C2|i\(0),
	datac => \C2|i\(2),
	datad => \C2|i\(1),
	combout => \C2|Selector42~0_combout\);

-- Location: LCCOMB_X47_Y12_N0
\C2|Selector41~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Selector41~1_combout\ = (\C2|TouchInit\(1) & (\C2|TouchInit\(0) & !\C2|TouchInit\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|TouchInit\(1),
	datac => \C2|TouchInit\(0),
	datad => \C2|TouchInit\(2),
	combout => \C2|Selector41~1_combout\);

-- Location: LCCOMB_X46_Y12_N6
\C2|Selector41~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Selector41~2_combout\ = (\C2|i\(3) & ((\C2|i\(1)) # (!\C2|i\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|i\(3),
	datac => \C2|i\(2),
	datad => \C2|i\(1),
	combout => \C2|Selector41~2_combout\);

-- Location: LCCOMB_X46_Y12_N16
\C2|Selector41~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Selector41~3_combout\ = (\C2|i\(0) & ((\C2|Selector41~1_combout\ & (!\C2|i\(1))) # (!\C2|Selector41~1_combout\ & ((!\C2|Selector41~2_combout\))))) # (!\C2|i\(0) & (!\C2|i\(1) & ((\C2|Selector41~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|i\(0),
	datab => \C2|i\(1),
	datac => \C2|Selector41~1_combout\,
	datad => \C2|Selector41~2_combout\,
	combout => \C2|Selector41~3_combout\);

-- Location: LCCOMB_X46_Y12_N20
\C2|Selector41~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Selector41~4_combout\ = (!\C2|i\(3) & (((\C2|TouchInit\(2)) # (!\C2|TouchInit\(0))) # (!\C2|TouchInit\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|TouchInit\(1),
	datab => \C2|TouchInit\(0),
	datac => \C2|i\(3),
	datad => \C2|TouchInit\(2),
	combout => \C2|Selector41~4_combout\);

-- Location: LCCOMB_X36_Y20_N24
\C1|i~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|i~14_combout\ = (\C1|Add0~46_combout\ & (((!\C1|Equal0~5_combout\) # (!\C1|Equal0~6_combout\)) # (!\C1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Equal0~4_combout\,
	datab => \C1|Equal0~6_combout\,
	datac => \C1|Equal0~5_combout\,
	datad => \C1|Add0~46_combout\,
	combout => \C1|i~14_combout\);

-- Location: LCCOMB_X36_Y20_N26
\C1|i~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|i~15_combout\ = (\C1|Add0~42_combout\ & (((!\C1|Equal0~5_combout\) # (!\C1|Equal0~6_combout\)) # (!\C1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Equal0~4_combout\,
	datab => \C1|Equal0~6_combout\,
	datac => \C1|Equal0~5_combout\,
	datad => \C1|Add0~42_combout\,
	combout => \C1|i~15_combout\);

-- Location: LCCOMB_X36_Y20_N28
\C1|i~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|i~16_combout\ = (\C1|Add0~40_combout\ & (((!\C1|Equal0~4_combout\) # (!\C1|Equal0~6_combout\)) # (!\C1|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Equal0~5_combout\,
	datab => \C1|Equal0~6_combout\,
	datac => \C1|Add0~40_combout\,
	datad => \C1|Equal0~4_combout\,
	combout => \C1|i~16_combout\);

-- Location: LCCOMB_X42_Y12_N6
\C3|out2[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|out2[1]~1_combout\ = !\C3|Mux8~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C3|Mux8~0_combout\,
	combout => \C3|out2[1]~1_combout\);

-- Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
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
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G2
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: LCCOMB_X44_Y11_N24
\C0|Add0~12\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X44_Y11_N26
\C0|Add0~14\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X44_Y11_N28
\C0|Add0~16\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X36_Y21_N8
\C1|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add0~0_combout\ = \C1|i\(0) $ (VCC)
-- \C1|Add0~1\ = CARRY(\C1|i\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|i\(0),
	datad => VCC,
	combout => \C1|Add0~0_combout\,
	cout => \C1|Add0~1\);

-- Location: LCCOMB_X36_Y21_N0
\C1|i~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|i~13_combout\ = (\C1|Add0~0_combout\ & (((!\C1|Equal0~4_combout\) # (!\C1|Equal0~5_combout\)) # (!\C1|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Equal0~6_combout\,
	datab => \C1|Equal0~5_combout\,
	datac => \C1|Add0~0_combout\,
	datad => \C1|Equal0~4_combout\,
	combout => \C1|i~13_combout\);

-- Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rst~I\ : cycloneii_io
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
	padio => ww_rst,
	combout => \rst~combout\);

-- Location: CLKCTRL_G6
\rst~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rst~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rst~clkctrl_outclk\);

-- Location: LCFF_X36_Y21_N1
\C1|i[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|i~13_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|i\(0));

-- Location: LCCOMB_X36_Y21_N10
\C1|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add0~2_combout\ = (\C1|i\(1) & (!\C1|Add0~1\)) # (!\C1|i\(1) & ((\C1|Add0~1\) # (GND)))
-- \C1|Add0~3\ = CARRY((!\C1|Add0~1\) # (!\C1|i\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|i\(1),
	datad => VCC,
	cin => \C1|Add0~1\,
	combout => \C1|Add0~2_combout\,
	cout => \C1|Add0~3\);

-- Location: LCCOMB_X36_Y21_N14
\C1|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add0~6_combout\ = (\C1|i\(3) & (!\C1|Add0~5\)) # (!\C1|i\(3) & ((\C1|Add0~5\) # (GND)))
-- \C1|Add0~7\ = CARRY((!\C1|Add0~5\) # (!\C1|i\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|i\(3),
	datad => VCC,
	cin => \C1|Add0~5\,
	combout => \C1|Add0~6_combout\,
	cout => \C1|Add0~7\);

-- Location: LCFF_X36_Y21_N15
\C1|i[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|Add0~6_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|i\(3));

-- Location: LCCOMB_X36_Y21_N16
\C1|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add0~8_combout\ = (\C1|i\(4) & (\C1|Add0~7\ $ (GND))) # (!\C1|i\(4) & (!\C1|Add0~7\ & VCC))
-- \C1|Add0~9\ = CARRY((\C1|i\(4) & !\C1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|i\(4),
	datad => VCC,
	cin => \C1|Add0~7\,
	combout => \C1|Add0~8_combout\,
	cout => \C1|Add0~9\);

-- Location: LCCOMB_X36_Y21_N18
\C1|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add0~10_combout\ = (\C1|i\(5) & (!\C1|Add0~9\)) # (!\C1|i\(5) & ((\C1|Add0~9\) # (GND)))
-- \C1|Add0~11\ = CARRY((!\C1|Add0~9\) # (!\C1|i\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|i\(5),
	datad => VCC,
	cin => \C1|Add0~9\,
	combout => \C1|Add0~10_combout\,
	cout => \C1|Add0~11\);

-- Location: LCFF_X36_Y21_N19
\C1|i[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|Add0~10_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|i\(5));

-- Location: LCCOMB_X36_Y21_N22
\C1|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add0~14_combout\ = (\C1|i\(7) & (!\C1|Add0~13\)) # (!\C1|i\(7) & ((\C1|Add0~13\) # (GND)))
-- \C1|Add0~15\ = CARRY((!\C1|Add0~13\) # (!\C1|i\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|i\(7),
	datad => VCC,
	cin => \C1|Add0~13\,
	combout => \C1|Add0~14_combout\,
	cout => \C1|Add0~15\);

-- Location: LCFF_X36_Y21_N23
\C1|i[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|Add0~14_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|i\(7));

-- Location: LCFF_X36_Y21_N17
\C1|i[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|Add0~8_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|i\(4));

-- Location: LCCOMB_X36_Y21_N2
\C1|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Equal0~5_combout\ = (!\C1|i\(6) & (!\C1|i\(7) & (!\C1|i\(4) & !\C1|i\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|i\(6),
	datab => \C1|i\(7),
	datac => \C1|i\(4),
	datad => \C1|i\(5),
	combout => \C1|Equal0~5_combout\);

-- Location: LCCOMB_X36_Y21_N24
\C1|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add0~16_combout\ = (\C1|i\(8) & (\C1|Add0~15\ $ (GND))) # (!\C1|i\(8) & (!\C1|Add0~15\ & VCC))
-- \C1|Add0~17\ = CARRY((\C1|i\(8) & !\C1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|i\(8),
	datad => VCC,
	cin => \C1|Add0~15\,
	combout => \C1|Add0~16_combout\,
	cout => \C1|Add0~17\);

-- Location: LCCOMB_X36_Y21_N4
\C1|i~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|i~12_combout\ = (\C1|Add0~16_combout\ & (((!\C1|Equal0~4_combout\) # (!\C1|Equal0~5_combout\)) # (!\C1|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Equal0~6_combout\,
	datab => \C1|Equal0~5_combout\,
	datac => \C1|Add0~16_combout\,
	datad => \C1|Equal0~4_combout\,
	combout => \C1|i~12_combout\);

-- Location: LCFF_X36_Y21_N5
\C1|i[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|i~12_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|i\(8));

-- Location: LCCOMB_X36_Y21_N26
\C1|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add0~18_combout\ = (\C1|i\(9) & (!\C1|Add0~17\)) # (!\C1|i\(9) & ((\C1|Add0~17\) # (GND)))
-- \C1|Add0~19\ = CARRY((!\C1|Add0~17\) # (!\C1|i\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|i\(9),
	datad => VCC,
	cin => \C1|Add0~17\,
	combout => \C1|Add0~18_combout\,
	cout => \C1|Add0~19\);

-- Location: LCCOMB_X36_Y21_N28
\C1|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add0~20_combout\ = (\C1|i\(10) & (\C1|Add0~19\ $ (GND))) # (!\C1|i\(10) & (!\C1|Add0~19\ & VCC))
-- \C1|Add0~21\ = CARRY((\C1|i\(10) & !\C1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|i\(10),
	datad => VCC,
	cin => \C1|Add0~19\,
	combout => \C1|Add0~20_combout\,
	cout => \C1|Add0~21\);

-- Location: LCFF_X36_Y21_N29
\C1|i[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|Add0~20_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|i\(10));

-- Location: LCCOMB_X36_Y21_N30
\C1|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add0~22_combout\ = (\C1|i\(11) & (!\C1|Add0~21\)) # (!\C1|i\(11) & ((\C1|Add0~21\) # (GND)))
-- \C1|Add0~23\ = CARRY((!\C1|Add0~21\) # (!\C1|i\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|i\(11),
	datad => VCC,
	cin => \C1|Add0~21\,
	combout => \C1|Add0~22_combout\,
	cout => \C1|Add0~23\);

-- Location: LCCOMB_X35_Y21_N16
\C1|i~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|i~10_combout\ = (\C1|Add0~22_combout\ & (((!\C1|Equal0~4_combout\) # (!\C1|Equal0~5_combout\)) # (!\C1|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Equal0~6_combout\,
	datab => \C1|Add0~22_combout\,
	datac => \C1|Equal0~5_combout\,
	datad => \C1|Equal0~4_combout\,
	combout => \C1|i~10_combout\);

-- Location: LCFF_X35_Y21_N17
\C1|i[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|i~10_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|i\(11));

-- Location: LCCOMB_X36_Y20_N0
\C1|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add0~24_combout\ = (\C1|i\(12) & (\C1|Add0~23\ $ (GND))) # (!\C1|i\(12) & (!\C1|Add0~23\ & VCC))
-- \C1|Add0~25\ = CARRY((\C1|i\(12) & !\C1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|i\(12),
	datad => VCC,
	cin => \C1|Add0~23\,
	combout => \C1|Add0~24_combout\,
	cout => \C1|Add0~25\);

-- Location: LCCOMB_X36_Y20_N2
\C1|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add0~26_combout\ = (\C1|i\(13) & (!\C1|Add0~25\)) # (!\C1|i\(13) & ((\C1|Add0~25\) # (GND)))
-- \C1|Add0~27\ = CARRY((!\C1|Add0~25\) # (!\C1|i\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|i\(13),
	datad => VCC,
	cin => \C1|Add0~25\,
	combout => \C1|Add0~26_combout\,
	cout => \C1|Add0~27\);

-- Location: LCFF_X36_Y20_N3
\C1|i[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|Add0~26_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|i\(13));

-- Location: LCCOMB_X36_Y20_N4
\C1|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add0~28_combout\ = (\C1|i\(14) & (\C1|Add0~27\ $ (GND))) # (!\C1|i\(14) & (!\C1|Add0~27\ & VCC))
-- \C1|Add0~29\ = CARRY((\C1|i\(14) & !\C1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|i\(14),
	datad => VCC,
	cin => \C1|Add0~27\,
	combout => \C1|Add0~28_combout\,
	cout => \C1|Add0~29\);

-- Location: LCFF_X36_Y20_N5
\C1|i[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|Add0~28_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|i\(14));

-- Location: LCCOMB_X35_Y20_N14
\C1|i~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|i~9_combout\ = (\C1|Add0~24_combout\ & (((!\C1|Equal0~5_combout\) # (!\C1|Equal0~4_combout\)) # (!\C1|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Equal0~6_combout\,
	datab => \C1|Equal0~4_combout\,
	datac => \C1|Add0~24_combout\,
	datad => \C1|Equal0~5_combout\,
	combout => \C1|i~9_combout\);

-- Location: LCFF_X35_Y20_N15
\C1|i[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|i~9_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|i\(12));

-- Location: LCCOMB_X35_Y20_N0
\C1|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Equal0~2_combout\ = (!\C1|i\(15) & (!\C1|i\(14) & (\C1|i\(12) & !\C1|i\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|i\(15),
	datab => \C1|i\(14),
	datac => \C1|i\(12),
	datad => \C1|i\(13),
	combout => \C1|Equal0~2_combout\);

-- Location: LCCOMB_X36_Y20_N8
\C1|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add0~32_combout\ = (\C1|i\(16) & (\C1|Add0~31\ $ (GND))) # (!\C1|i\(16) & (!\C1|Add0~31\ & VCC))
-- \C1|Add0~33\ = CARRY((\C1|i\(16) & !\C1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|i\(16),
	datad => VCC,
	cin => \C1|Add0~31\,
	combout => \C1|Add0~32_combout\,
	cout => \C1|Add0~33\);

-- Location: LCCOMB_X35_Y20_N6
\C1|i~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|i~8_combout\ = (\C1|Add0~32_combout\ & (((!\C1|Equal0~5_combout\) # (!\C1|Equal0~4_combout\)) # (!\C1|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Equal0~6_combout\,
	datab => \C1|Equal0~4_combout\,
	datac => \C1|Add0~32_combout\,
	datad => \C1|Equal0~5_combout\,
	combout => \C1|i~8_combout\);

-- Location: LCFF_X35_Y20_N7
\C1|i[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|i~8_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|i\(16));

-- Location: LCCOMB_X36_Y20_N10
\C1|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add0~34_combout\ = (\C1|i\(17) & (!\C1|Add0~33\)) # (!\C1|i\(17) & ((\C1|Add0~33\) # (GND)))
-- \C1|Add0~35\ = CARRY((!\C1|Add0~33\) # (!\C1|i\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|i\(17),
	datad => VCC,
	cin => \C1|Add0~33\,
	combout => \C1|Add0~34_combout\,
	cout => \C1|Add0~35\);

-- Location: LCCOMB_X35_Y20_N28
\C1|i~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|i~7_combout\ = (\C1|Add0~34_combout\ & (((!\C1|Equal0~5_combout\) # (!\C1|Equal0~4_combout\)) # (!\C1|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Equal0~6_combout\,
	datab => \C1|Equal0~4_combout\,
	datac => \C1|Add0~34_combout\,
	datad => \C1|Equal0~5_combout\,
	combout => \C1|i~7_combout\);

-- Location: LCFF_X35_Y20_N29
\C1|i[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|i~7_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|i\(17));

-- Location: LCFF_X36_Y21_N11
\C1|i[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|Add0~2_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|i\(1));

-- Location: LCCOMB_X36_Y21_N6
\C1|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Equal0~6_combout\ = (!\C1|i\(2) & (!\C1|i\(0) & (!\C1|i\(3) & !\C1|i\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|i\(2),
	datab => \C1|i\(0),
	datac => \C1|i\(3),
	datad => \C1|i\(1),
	combout => \C1|Equal0~6_combout\);

-- Location: LCCOMB_X36_Y20_N12
\C1|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add0~36_combout\ = (\C1|i\(18) & (\C1|Add0~35\ $ (GND))) # (!\C1|i\(18) & (!\C1|Add0~35\ & VCC))
-- \C1|Add0~37\ = CARRY((\C1|i\(18) & !\C1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|i\(18),
	datad => VCC,
	cin => \C1|Add0~35\,
	combout => \C1|Add0~36_combout\,
	cout => \C1|Add0~37\);

-- Location: LCCOMB_X36_Y20_N30
\C1|i~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|i~6_combout\ = (\C1|Add0~36_combout\ & (((!\C1|Equal0~5_combout\) # (!\C1|Equal0~6_combout\)) # (!\C1|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Equal0~4_combout\,
	datab => \C1|Equal0~6_combout\,
	datac => \C1|Equal0~5_combout\,
	datad => \C1|Add0~36_combout\,
	combout => \C1|i~6_combout\);

-- Location: LCFF_X36_Y20_N31
\C1|i[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|i~6_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|i\(18));

-- Location: LCFF_X36_Y20_N15
\C1|i[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|Add0~38_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|i\(19));

-- Location: LCCOMB_X35_Y20_N24
\C1|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Equal0~1_combout\ = (\C1|i\(16) & (\C1|i\(17) & (!\C1|i\(19) & \C1|i\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|i\(16),
	datab => \C1|i\(17),
	datac => \C1|i\(19),
	datad => \C1|i\(18),
	combout => \C1|Equal0~1_combout\);

-- Location: LCCOMB_X35_Y21_N14
\C1|i~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|i~11_combout\ = (\C1|Add0~18_combout\ & (((!\C1|Equal0~4_combout\) # (!\C1|Equal0~5_combout\)) # (!\C1|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Equal0~6_combout\,
	datab => \C1|Equal0~5_combout\,
	datac => \C1|Add0~18_combout\,
	datad => \C1|Equal0~4_combout\,
	combout => \C1|i~11_combout\);

-- Location: LCFF_X35_Y21_N15
\C1|i[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|i~11_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|i\(9));

-- Location: LCCOMB_X35_Y21_N28
\C1|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Equal0~3_combout\ = (\C1|i\(11) & (!\C1|i\(10) & (\C1|i\(9) & \C1|i\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|i\(11),
	datab => \C1|i\(10),
	datac => \C1|i\(9),
	datad => \C1|i\(8),
	combout => \C1|Equal0~3_combout\);

-- Location: LCCOMB_X35_Y20_N2
\C1|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Equal0~4_combout\ = (\C1|Equal0~0_combout\ & (\C1|Equal0~2_combout\ & (\C1|Equal0~1_combout\ & \C1|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Equal0~0_combout\,
	datab => \C1|Equal0~2_combout\,
	datac => \C1|Equal0~1_combout\,
	datad => \C1|Equal0~3_combout\,
	combout => \C1|Equal0~4_combout\);

-- Location: LCCOMB_X35_Y20_N20
\C1|Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Equal0~7_combout\ = (\C1|Equal0~4_combout\ & (\C1|Equal0~6_combout\ & \C1|Equal0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Equal0~4_combout\,
	datac => \C1|Equal0~6_combout\,
	datad => \C1|Equal0~5_combout\,
	combout => \C1|Equal0~7_combout\);

-- Location: LCFF_X35_Y20_N21
\C1|s_out\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C1|Equal0~7_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|s_out~regout\);

-- Location: PIN_N22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Row[2]~I\ : cycloneii_io
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
	padio => ww_Row(2),
	combout => \Row~combout\(2));

-- Location: PIN_P15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Row[1]~I\ : cycloneii_io
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
	padio => ww_Row(1),
	combout => \Row~combout\(1));

-- Location: PIN_J15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Row[3]~I\ : cycloneii_io
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
	padio => ww_Row(3),
	combout => \Row~combout\(3));

-- Location: LCCOMB_X48_Y11_N28
\C0|DecodeOut[1]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|DecodeOut[1]~15_combout\ = ((\Row~combout\(2) $ (!\Row~combout\(1))) # (!\Row~combout\(3))) # (!\Row~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Row~combout\(0),
	datab => \Row~combout\(2),
	datac => \Row~combout\(1),
	datad => \Row~combout\(3),
	combout => \C0|DecodeOut[1]~15_combout\);

-- Location: LCCOMB_X48_Y11_N18
\C0|Equal11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|Equal11~0_combout\ = (!\Row~combout\(0) & (\Row~combout\(2) & (\Row~combout\(1) & \Row~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Row~combout\(0),
	datab => \Row~combout\(2),
	datac => \Row~combout\(1),
	datad => \Row~combout\(3),
	combout => \C0|Equal11~0_combout\);

-- Location: LCCOMB_X47_Y11_N24
\C0|DecodeOut[1]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|DecodeOut[1]~16_combout\ = (\C0|Equal8~0_combout\) # ((\C0|DecodeOut[1]~15_combout\ & ((\C0|DecodeOut\(1)) # (\C0|Equal11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|Equal8~0_combout\,
	datab => \C0|DecodeOut[1]~15_combout\,
	datac => \C0|DecodeOut\(1),
	datad => \C0|Equal11~0_combout\,
	combout => \C0|DecodeOut[1]~16_combout\);

-- Location: LCCOMB_X44_Y10_N0
\C0|Add0~20\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X44_Y10_N2
\C0|Add0~22\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X44_Y11_N2
\C0|sclk~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|sclk~7_combout\ = (!\C0|Equal7~0_combout\ & \C0|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C0|Equal7~0_combout\,
	datad => \C0|Add0~22_combout\,
	combout => \C0|sclk~7_combout\);

-- Location: LCFF_X44_Y11_N3
\C0|sclk[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C0|sclk~7_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|sclk\(11));

-- Location: LCCOMB_X44_Y10_N4
\C0|Add0~24\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X44_Y10_N22
\C0|sclk~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|sclk~3_combout\ = (\C0|Add0~24_combout\ & !\C0|Equal7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C0|Add0~24_combout\,
	datad => \C0|Equal7~0_combout\,
	combout => \C0|sclk~3_combout\);

-- Location: LCFF_X44_Y10_N23
\C0|sclk[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C0|sclk~3_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|sclk\(12));

-- Location: LCCOMB_X44_Y10_N6
\C0|Add0~26\ : cycloneii_lcell_comb
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

-- Location: LCFF_X45_Y11_N17
\C0|sclk[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \C0|Add0~26_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|sclk\(13));

-- Location: LCCOMB_X44_Y10_N8
\C0|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|Add0~28_combout\ = (\C0|sclk\(14) & (\C0|Add0~27\ $ (GND))) # (!\C0|sclk\(14) & (!\C0|Add0~27\ & VCC))
-- \C0|Add0~29\ = CARRY((\C0|sclk\(14) & !\C0|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C0|sclk\(14),
	datad => VCC,
	cin => \C0|Add0~27\,
	combout => \C0|Add0~28_combout\,
	cout => \C0|Add0~29\);

-- Location: LCFF_X44_Y10_N9
\C0|sclk[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C0|Add0~28_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|sclk\(14));

-- Location: LCCOMB_X44_Y10_N10
\C0|Add0~30\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X44_Y10_N14
\C0|Add0~34\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X44_Y10_N16
\C0|Add0~36\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X44_Y10_N20
\C0|sclk~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|sclk~2_combout\ = (\C0|Add0~36_combout\ & !\C0|Equal7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C0|Add0~36_combout\,
	datad => \C0|Equal7~0_combout\,
	combout => \C0|sclk~2_combout\);

-- Location: LCFF_X44_Y10_N21
\C0|sclk[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C0|sclk~2_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|sclk\(18));

-- Location: LCCOMB_X44_Y10_N24
\C0|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|Equal2~0_combout\ = (\C0|sclk\(16) & (!\C0|sclk\(12) & (!\C0|sclk\(18) & \C0|sclk\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|sclk\(16),
	datab => \C0|sclk\(12),
	datac => \C0|sclk\(18),
	datad => \C0|sclk\(10),
	combout => \C0|Equal2~0_combout\);

-- Location: LCCOMB_X44_Y11_N30
\C0|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|Add0~18_combout\ = (\C0|sclk\(9) & (!\C0|Add0~17\)) # (!\C0|sclk\(9) & ((\C0|Add0~17\) # (GND)))
-- \C0|Add0~19\ = CARRY((!\C0|Add0~17\) # (!\C0|sclk\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C0|sclk\(9),
	datad => VCC,
	cin => \C0|Add0~17\,
	combout => \C0|Add0~18_combout\,
	cout => \C0|Add0~19\);

-- Location: LCCOMB_X44_Y11_N6
\C0|sclk~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|sclk~4_combout\ = (!\C0|Equal7~0_combout\ & \C0|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C0|Equal7~0_combout\,
	datad => \C0|Add0~18_combout\,
	combout => \C0|sclk~4_combout\);

-- Location: LCFF_X44_Y11_N7
\C0|sclk[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C0|sclk~4_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|sclk\(9));

-- Location: LCCOMB_X44_Y11_N8
\C0|sclk~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|sclk~5_combout\ = (\C0|Add0~14_combout\ & !\C0|Equal7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C0|Add0~14_combout\,
	datad => \C0|Equal7~0_combout\,
	combout => \C0|sclk~5_combout\);

-- Location: LCFF_X44_Y11_N9
\C0|sclk[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C0|sclk~5_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|sclk\(7));

-- Location: LCCOMB_X45_Y11_N0
\C0|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|Equal0~3_combout\ = (\C0|sclk\(9) & \C0|sclk\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C0|sclk\(9),
	datad => \C0|sclk\(7),
	combout => \C0|Equal0~3_combout\);

-- Location: LCCOMB_X44_Y10_N18
\C0|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|Add0~38_combout\ = \C0|Add0~37\ $ (\C0|sclk\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \C0|sclk\(19),
	cin => \C0|Add0~37\,
	combout => \C0|Add0~38_combout\);

-- Location: LCFF_X44_Y10_N19
\C0|sclk[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C0|Add0~38_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|sclk\(19));

-- Location: LCCOMB_X45_Y11_N16
\C0|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|Equal0~0_combout\ = (!\C0|sclk\(4) & (!\C0|sclk\(19) & (!\C0|sclk\(13) & !\C0|sclk\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|sclk\(4),
	datab => \C0|sclk\(19),
	datac => \C0|sclk\(13),
	datad => \C0|sclk\(14),
	combout => \C0|Equal0~0_combout\);

-- Location: LCCOMB_X44_Y10_N28
\C0|sclk~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|sclk~6_combout\ = (\C0|Add0~34_combout\ & !\C0|Equal7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C0|Add0~34_combout\,
	datad => \C0|Equal7~0_combout\,
	combout => \C0|sclk~6_combout\);

-- Location: LCFF_X44_Y11_N5
\C0|sclk[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \C0|sclk~6_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|sclk\(17));

-- Location: LCFF_X44_Y10_N11
\C0|sclk[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C0|Add0~30_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|sclk\(15));

-- Location: LCCOMB_X45_Y11_N22
\C0|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|Equal0~4_combout\ = (\C0|sclk\(5) & (!\C0|sclk\(17) & (!\C0|sclk\(11) & \C0|sclk\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|sclk\(5),
	datab => \C0|sclk\(17),
	datac => \C0|sclk\(11),
	datad => \C0|sclk\(15),
	combout => \C0|Equal0~4_combout\);

-- Location: LCCOMB_X45_Y11_N28
\C0|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|Equal0~5_combout\ = (\C0|Equal0~2_combout\ & (\C0|Equal0~3_combout\ & (\C0|Equal0~0_combout\ & \C0|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|Equal0~2_combout\,
	datab => \C0|Equal0~3_combout\,
	datac => \C0|Equal0~0_combout\,
	datad => \C0|Equal0~4_combout\,
	combout => \C0|Equal0~5_combout\);

-- Location: LCCOMB_X45_Y11_N30
\C0|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|Equal1~0_combout\ = (\C0|Equal6~2_combout\ & (\C0|sclk\(3) & (\C0|Equal2~0_combout\ & \C0|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|Equal6~2_combout\,
	datab => \C0|sclk\(3),
	datac => \C0|Equal2~0_combout\,
	datad => \C0|Equal0~5_combout\,
	combout => \C0|Equal1~0_combout\);

-- Location: LCCOMB_X45_Y11_N12
\C0|Equal2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|Equal2~2_combout\ = (!\C0|sclk\(5) & (\C0|sclk\(11) & (\C0|sclk\(17) & !\C0|sclk\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|sclk\(5),
	datab => \C0|sclk\(11),
	datac => \C0|sclk\(17),
	datad => \C0|sclk\(15),
	combout => \C0|Equal2~2_combout\);

-- Location: LCCOMB_X44_Y11_N10
\C0|Equal2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|Equal2~1_combout\ = (\C0|sclk\(6) & (\C0|sclk\(8) & (!\C0|sclk\(7) & !\C0|sclk\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|sclk\(6),
	datab => \C0|sclk\(8),
	datac => \C0|sclk\(7),
	datad => \C0|sclk\(9),
	combout => \C0|Equal2~1_combout\);

-- Location: LCCOMB_X44_Y11_N0
\C0|sclk~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|sclk~1_combout\ = (\C0|Add0~0_combout\ & !\C0|Equal7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|Add0~0_combout\,
	datad => \C0|Equal7~0_combout\,
	combout => \C0|sclk~1_combout\);

-- Location: LCFF_X44_Y11_N1
\C0|sclk[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C0|sclk~1_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|sclk\(0));

-- Location: LCCOMB_X44_Y11_N14
\C0|Add0~2\ : cycloneii_lcell_comb
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

-- Location: LCFF_X44_Y11_N15
\C0|sclk[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C0|Add0~2_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|sclk\(1));

-- Location: LCCOMB_X44_Y11_N16
\C0|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|Add0~4_combout\ = (\C0|sclk\(2) & (\C0|Add0~3\ $ (GND))) # (!\C0|sclk\(2) & (!\C0|Add0~3\ & VCC))
-- \C0|Add0~5\ = CARRY((\C0|sclk\(2) & !\C0|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C0|sclk\(2),
	datad => VCC,
	cin => \C0|Add0~3\,
	combout => \C0|Add0~4_combout\,
	cout => \C0|Add0~5\);

-- Location: LCFF_X44_Y11_N17
\C0|sclk[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C0|Add0~4_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|sclk\(2));

-- Location: LCCOMB_X45_Y11_N26
\C0|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|Equal0~1_combout\ = (!\C0|sclk\(1) & (!\C0|sclk\(2) & (!\C0|sclk\(0) & \C0|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|sclk\(1),
	datab => \C0|sclk\(2),
	datac => \C0|sclk\(0),
	datad => \C0|Equal0~0_combout\,
	combout => \C0|Equal0~1_combout\);

-- Location: LCCOMB_X45_Y11_N2
\C0|Equal2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|Equal2~3_combout\ = (\C0|Equal2~0_combout\ & (\C0|Equal2~2_combout\ & (\C0|Equal2~1_combout\ & \C0|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|Equal2~0_combout\,
	datab => \C0|Equal2~2_combout\,
	datac => \C0|Equal2~1_combout\,
	datad => \C0|Equal0~1_combout\,
	combout => \C0|Equal2~3_combout\);

-- Location: LCCOMB_X46_Y11_N22
\C0|DecodeOut[1]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|DecodeOut[1]~17_combout\ = (\C0|sclk\(3) & (\C0|DecodeOut[1]~16_combout\ & (!\C0|Equal1~0_combout\ & \C0|Equal2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|sclk\(3),
	datab => \C0|DecodeOut[1]~16_combout\,
	datac => \C0|Equal1~0_combout\,
	datad => \C0|Equal2~3_combout\,
	combout => \C0|DecodeOut[1]~17_combout\);

-- Location: LCCOMB_X43_Y11_N0
\C0|Equal5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|Equal5~0_combout\ = (\C0|sclk\(6) & \C0|sclk\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C0|sclk\(6),
	datad => \C0|sclk\(8),
	combout => \C0|Equal5~0_combout\);

-- Location: LCCOMB_X46_Y11_N24
\C0|Equal5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|Equal5~1_combout\ = (\C0|sclk\(3) & (\C0|Equal5~0_combout\ & (\C0|Equal4~0_combout\ & \C0|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|sclk\(3),
	datab => \C0|Equal5~0_combout\,
	datac => \C0|Equal4~0_combout\,
	datad => \C0|Equal0~5_combout\,
	combout => \C0|Equal5~1_combout\);

-- Location: LCCOMB_X47_Y11_N14
\C0|DecodeOut[1]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|DecodeOut[1]~14_combout\ = (\C0|Equal7~0_combout\ & (!\C0|DecodeOut[3]~13_combout\)) # (!\C0|Equal7~0_combout\ & ((\C0|Equal5~1_combout\ & (!\C0|DecodeOut[3]~13_combout\)) # (!\C0|Equal5~1_combout\ & ((\C0|DecodeOut\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|DecodeOut[3]~13_combout\,
	datab => \C0|Equal7~0_combout\,
	datac => \C0|DecodeOut\(1),
	datad => \C0|Equal5~1_combout\,
	combout => \C0|DecodeOut[1]~14_combout\);

-- Location: LCCOMB_X48_Y11_N10
\C0|Equal10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|Equal10~0_combout\ = (\Row~combout\(0) & (\Row~combout\(2) & (!\Row~combout\(1) & \Row~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Row~combout\(0),
	datab => \Row~combout\(2),
	datac => \Row~combout\(1),
	datad => \Row~combout\(3),
	combout => \C0|Equal10~0_combout\);

-- Location: LCCOMB_X46_Y11_N12
\C0|DecodeOut[1]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|DecodeOut[1]~18_combout\ = (!\C0|Equal2~3_combout\ & (!\C0|Equal1~0_combout\ & ((\C0|sclk\(3)) # (!\C0|Equal4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|Equal2~3_combout\,
	datab => \C0|sclk\(3),
	datac => \C0|Equal1~0_combout\,
	datad => \C0|Equal4~1_combout\,
	combout => \C0|DecodeOut[1]~18_combout\);

-- Location: LCCOMB_X46_Y11_N4
\C0|DecodeOut[1]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|DecodeOut[1]~20_combout\ = (\C0|Equal11~0_combout\ & (((\C0|Equal5~1_combout\ & \C0|DecodeOut[1]~18_combout\)))) # (!\C0|Equal11~0_combout\ & (\C0|DecodeOut\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|Equal11~0_combout\,
	datab => \C0|DecodeOut\(1),
	datac => \C0|Equal5~1_combout\,
	datad => \C0|DecodeOut[1]~18_combout\,
	combout => \C0|DecodeOut[1]~20_combout\);

-- Location: LCCOMB_X46_Y11_N28
\C0|Equal4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|Equal4~2_combout\ = (\C0|sclk\(3)) # (!\C0|Equal4~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C0|sclk\(3),
	datad => \C0|Equal4~1_combout\,
	combout => \C0|Equal4~2_combout\);

-- Location: LCCOMB_X48_Y11_N0
\C0|DecodeOut[3]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|DecodeOut[3]~13_combout\ = ((\Row~combout\(2) $ (!\Row~combout\(3))) # (!\Row~combout\(1))) # (!\Row~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Row~combout\(0),
	datab => \Row~combout\(2),
	datac => \Row~combout\(1),
	datad => \Row~combout\(3),
	combout => \C0|DecodeOut[3]~13_combout\);

-- Location: LCCOMB_X46_Y11_N18
\C0|Equal2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|Equal2~4_combout\ = (\C0|sclk\(3)) # (!\C0|Equal2~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C0|sclk\(3),
	datad => \C0|Equal2~3_combout\,
	combout => \C0|Equal2~4_combout\);

-- Location: LCCOMB_X46_Y11_N6
\C0|DecodeOut[3]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|DecodeOut[3]~19_combout\ = (\C0|DecodeOut[3]~13_combout\ & ((\C0|Equal1~0_combout\) # ((!\C0|Equal2~4_combout\) # (!\C0|Equal4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|Equal1~0_combout\,
	datab => \C0|Equal4~2_combout\,
	datac => \C0|DecodeOut[3]~13_combout\,
	datad => \C0|Equal2~4_combout\,
	combout => \C0|DecodeOut[3]~19_combout\);

-- Location: LCCOMB_X46_Y11_N10
\C0|DecodeOut[1]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|DecodeOut[1]~21_combout\ = (\C0|Equal10~0_combout\ & (((\C0|DecodeOut[3]~19_combout\)))) # (!\C0|Equal10~0_combout\ & (\C0|DecodeOut[1]~20_combout\ & ((\C0|DecodeOut[1]~18_combout\) # (\C0|DecodeOut[3]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|DecodeOut[1]~18_combout\,
	datab => \C0|Equal10~0_combout\,
	datac => \C0|DecodeOut[1]~20_combout\,
	datad => \C0|DecodeOut[3]~19_combout\,
	combout => \C0|DecodeOut[1]~21_combout\);

-- Location: LCCOMB_X46_Y11_N0
\C0|DecodeOut[1]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|DecodeOut[1]~22_combout\ = (\C0|DecodeOut[1]~17_combout\) # ((\C0|DecodeOut[1]~21_combout\) # ((\C0|DecodeOut[1]~18_combout\ & \C0|DecodeOut[1]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|DecodeOut[1]~18_combout\,
	datab => \C0|DecodeOut[1]~17_combout\,
	datac => \C0|DecodeOut[1]~14_combout\,
	datad => \C0|DecodeOut[1]~21_combout\,
	combout => \C0|DecodeOut[1]~22_combout\);

-- Location: LCCOMB_X46_Y11_N30
\C0|DecodeOut[3]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|DecodeOut[3]~12_combout\ = (\C0|Equal0~6_combout\ & ((\C0|Equal1~0_combout\) # ((\C0|Equal2~4_combout\ & \C0|Equal4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|Equal0~6_combout\,
	datab => \C0|Equal2~4_combout\,
	datac => \C0|Equal1~0_combout\,
	datad => \C0|Equal4~2_combout\,
	combout => \C0|DecodeOut[3]~12_combout\);

-- Location: LCFF_X46_Y11_N1
\C0|DecodeOut[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C0|DecodeOut[1]~22_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	ena => \C0|DecodeOut[3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|DecodeOut\(1));

-- Location: LCCOMB_X46_Y11_N8
\C0|DecodeOut[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|DecodeOut[1]~4_combout\ = (!\C0|Equal1~0_combout\ & ((\C0|sclk\(3)) # (!\C0|Equal2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C0|sclk\(3),
	datac => \C0|Equal1~0_combout\,
	datad => \C0|Equal2~3_combout\,
	combout => \C0|DecodeOut[1]~4_combout\);

-- Location: LCCOMB_X46_Y11_N16
\C0|DecodeOut[2]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|DecodeOut[2]~25_combout\ = (\C0|DecodeOut~24_combout\ & (\C0|sclk\(3) & (!\C0|Equal1~0_combout\ & \C0|Equal2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|DecodeOut~24_combout\,
	datab => \C0|sclk\(3),
	datac => \C0|Equal1~0_combout\,
	datad => \C0|Equal2~3_combout\,
	combout => \C0|DecodeOut[2]~25_combout\);

-- Location: LCCOMB_X48_Y11_N12
\C0|DecodeOut[2]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|DecodeOut[2]~27_combout\ = (\Row~combout\(2) & (\Row~combout\(3) & (\Row~combout\(0) $ (\Row~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Row~combout\(0),
	datab => \Row~combout\(2),
	datac => \Row~combout\(1),
	datad => \Row~combout\(3),
	combout => \C0|DecodeOut[2]~27_combout\);

-- Location: LCCOMB_X46_Y11_N20
\C0|DecodeOut[2]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|DecodeOut[2]~28_combout\ = (\C0|Equal5~1_combout\ & (\C0|DecodeOut~24_combout\)) # (!\C0|Equal5~1_combout\ & (((\C0|DecodeOut[2]~27_combout\ & \C0|Equal7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|DecodeOut~24_combout\,
	datab => \C0|DecodeOut[2]~27_combout\,
	datac => \C0|Equal5~1_combout\,
	datad => \C0|Equal7~0_combout\,
	combout => \C0|DecodeOut[2]~28_combout\);

-- Location: LCCOMB_X46_Y11_N2
\C0|DecodeOut[2]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|DecodeOut[2]~26_combout\ = (\C0|DecodeOut\(2) & (!\C0|Equal5~1_combout\ & ((\C0|DecodeOut[3]~13_combout\) # (!\C0|Equal7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|DecodeOut\(2),
	datab => \C0|DecodeOut[3]~13_combout\,
	datac => \C0|Equal5~1_combout\,
	datad => \C0|Equal7~0_combout\,
	combout => \C0|DecodeOut[2]~26_combout\);

-- Location: LCCOMB_X47_Y11_N26
\C0|DecodeOut[2]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|DecodeOut[2]~29_combout\ = (\C0|DecodeOut[2]~25_combout\) # ((\C0|DecodeOut[1]~18_combout\ & ((\C0|DecodeOut[2]~28_combout\) # (\C0|DecodeOut[2]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|DecodeOut[1]~18_combout\,
	datab => \C0|DecodeOut[2]~25_combout\,
	datac => \C0|DecodeOut[2]~28_combout\,
	datad => \C0|DecodeOut[2]~26_combout\,
	combout => \C0|DecodeOut[2]~29_combout\);

-- Location: LCCOMB_X47_Y11_N2
\C0|DecodeOut[2]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|DecodeOut[2]~31_combout\ = (\C0|DecodeOut[2]~29_combout\) # ((\C0|DecodeOut[2]~30_combout\ & ((!\C0|DecodeOut[1]~4_combout\) # (!\C0|Equal4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|DecodeOut[2]~30_combout\,
	datab => \C0|Equal4~2_combout\,
	datac => \C0|DecodeOut[1]~4_combout\,
	datad => \C0|DecodeOut[2]~29_combout\,
	combout => \C0|DecodeOut[2]~31_combout\);

-- Location: LCFF_X47_Y11_N3
\C0|DecodeOut[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C0|DecodeOut[2]~31_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	ena => \C0|DecodeOut[3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|DecodeOut\(2));

-- Location: LCCOMB_X48_Y11_N8
\C0|DecodeOut[3]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|DecodeOut[3]~32_combout\ = (!\C0|Equal11~0_combout\ & (\C0|DecodeOut\(3) & !\C0|Equal10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C0|Equal11~0_combout\,
	datac => \C0|DecodeOut\(3),
	datad => \C0|Equal10~0_combout\,
	combout => \C0|DecodeOut[3]~32_combout\);

-- Location: LCCOMB_X47_Y11_N20
\C0|Equal3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|Equal3~0_combout\ = (\C0|sclk\(3) & \C0|Equal2~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C0|sclk\(3),
	datad => \C0|Equal2~3_combout\,
	combout => \C0|Equal3~0_combout\);

-- Location: LCCOMB_X48_Y11_N4
\C0|DecodeOut[3]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|DecodeOut[3]~34_combout\ = (\Row~combout\(0) & ((\Row~combout\(2) & (\Row~combout\(1) $ (\Row~combout\(3)))) # (!\Row~combout\(2) & (\Row~combout\(1) & \Row~combout\(3))))) # (!\Row~combout\(0) & (\Row~combout\(2) & (\Row~combout\(1) & 
-- \Row~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Row~combout\(0),
	datab => \Row~combout\(2),
	datac => \Row~combout\(1),
	datad => \Row~combout\(3),
	combout => \C0|DecodeOut[3]~34_combout\);

-- Location: LCCOMB_X46_Y11_N14
\C0|DecodeOut[3]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|DecodeOut[3]~35_combout\ = (\C0|DecodeOut[3]~34_combout\ & (\C0|Equal7~0_combout\ & ((!\C0|sclk\(3)) # (!\C0|Equal4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|Equal4~1_combout\,
	datab => \C0|DecodeOut[3]~34_combout\,
	datac => \C0|sclk\(3),
	datad => \C0|Equal7~0_combout\,
	combout => \C0|DecodeOut[3]~35_combout\);

-- Location: LCCOMB_X47_Y11_N28
\C0|DecodeOut[3]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|DecodeOut[3]~36_combout\ = (\C0|DecodeOut[3]~35_combout\) # ((\C0|Equal5~1_combout\ & (\C0|DecodeOut~33_combout\)) # (!\C0|Equal5~1_combout\ & ((\C0|DecodeOut\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|DecodeOut~33_combout\,
	datab => \C0|Equal5~1_combout\,
	datac => \C0|DecodeOut\(3),
	datad => \C0|DecodeOut[3]~35_combout\,
	combout => \C0|DecodeOut[3]~36_combout\);

-- Location: LCCOMB_X47_Y11_N10
\C0|DecodeOut[3]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|DecodeOut[3]~37_combout\ = (\C0|Equal3~0_combout\ & (\C0|DecodeOut~33_combout\)) # (!\C0|Equal3~0_combout\ & (((\C0|Equal4~2_combout\ & \C0|DecodeOut[3]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|DecodeOut~33_combout\,
	datab => \C0|Equal4~2_combout\,
	datac => \C0|Equal3~0_combout\,
	datad => \C0|DecodeOut[3]~36_combout\,
	combout => \C0|DecodeOut[3]~37_combout\);

-- Location: LCCOMB_X47_Y11_N0
\C0|DecodeOut[3]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|DecodeOut[3]~38_combout\ = (\C0|DecodeOut[1]~4_combout\ & ((\C0|DecodeOut[3]~37_combout\) # ((\C0|DecodeOut[3]~32_combout\ & \C0|DecodeOut[3]~19_combout\)))) # (!\C0|DecodeOut[1]~4_combout\ & (\C0|DecodeOut[3]~32_combout\ & 
-- (\C0|DecodeOut[3]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|DecodeOut[1]~4_combout\,
	datab => \C0|DecodeOut[3]~32_combout\,
	datac => \C0|DecodeOut[3]~19_combout\,
	datad => \C0|DecodeOut[3]~37_combout\,
	combout => \C0|DecodeOut[3]~38_combout\);

-- Location: LCFF_X47_Y11_N1
\C0|DecodeOut[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C0|DecodeOut[3]~38_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	ena => \C0|DecodeOut[3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|DecodeOut\(3));

-- Location: LCCOMB_X47_Y12_N24
\C2|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan0~0_combout\ = ((!\C0|DecodeOut\(1) & !\C0|DecodeOut\(2))) # (!\C0|DecodeOut\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C0|DecodeOut\(1),
	datac => \C0|DecodeOut\(2),
	datad => \C0|DecodeOut\(3),
	combout => \C2|LessThan0~0_combout\);

-- Location: LCCOMB_X38_Y12_N2
\C2|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Selector6~0_combout\ = (\C2|EtatPresent.etat0~regout\ & (\C2|LessThan0~0_combout\ & (!\C2|EtatPresent.etat1~regout\ & !\C2|EtatPresent.etat2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|EtatPresent.etat0~regout\,
	datab => \C2|LessThan0~0_combout\,
	datac => \C2|EtatPresent.etat1~regout\,
	datad => \C2|EtatPresent.etat2~regout\,
	combout => \C2|Selector6~0_combout\);

-- Location: LCCOMB_X38_Y12_N30
\C2|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Selector3~0_combout\ = (\C2|EtatPresent.etat0~regout\) # ((\C1|s_out~regout\) # ((\C2|EtatPresent.etat1~regout\) # (\C2|EtatPresent.etat2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|EtatPresent.etat0~regout\,
	datab => \C1|s_out~regout\,
	datac => \C2|EtatPresent.etat1~regout\,
	datad => \C2|EtatPresent.etat2~regout\,
	combout => \C2|Selector3~0_combout\);

-- Location: LCFF_X38_Y12_N3
\C2|EtatFutur.etat4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C2|Selector6~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \C2|Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|EtatFutur.etat4~regout\);

-- Location: LCCOMB_X38_Y12_N0
\C2|EtatPresent.etat4~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|EtatPresent.etat4~feeder_combout\ = \C2|EtatFutur.etat4~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C2|EtatFutur.etat4~regout\,
	combout => \C2|EtatPresent.etat4~feeder_combout\);

-- Location: LCFF_X38_Y12_N1
\C2|EtatPresent.etat4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C2|EtatPresent.etat4~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|EtatPresent.etat4~regout\);

-- Location: LCCOMB_X38_Y12_N26
\C2|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Selector5~0_combout\ = (\C2|EtatPresent.etat2~regout\) # ((\C2|EtatFutur.etat3~regout\ & \C2|Selector4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|EtatPresent.etat2~regout\,
	datac => \C2|EtatFutur.etat3~regout\,
	datad => \C2|Selector4~0_combout\,
	combout => \C2|Selector5~0_combout\);

-- Location: LCFF_X38_Y12_N27
\C2|EtatFutur.etat3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C2|Selector5~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|EtatFutur.etat3~regout\);

-- Location: LCCOMB_X38_Y12_N20
\C2|EtatPresent.etat3~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|EtatPresent.etat3~feeder_combout\ = \C2|EtatFutur.etat3~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C2|EtatFutur.etat3~regout\,
	combout => \C2|EtatPresent.etat3~feeder_combout\);

-- Location: LCFF_X38_Y12_N21
\C2|EtatPresent.etat3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C2|EtatPresent.etat3~feeder_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|EtatPresent.etat3~regout\);

-- Location: LCCOMB_X38_Y12_N22
\C2|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Selector4~0_combout\ = (!\C1|s_out~regout\ & (((\C2|EtatPresent.etat4~regout\) # (\C2|EtatPresent.etat3~regout\)) # (!\C2|EtatPresent.init~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|EtatPresent.init~regout\,
	datab => \C2|EtatPresent.etat4~regout\,
	datac => \C2|EtatPresent.etat3~regout\,
	datad => \C1|s_out~regout\,
	combout => \C2|Selector4~0_combout\);

-- Location: LCCOMB_X38_Y12_N4
\C2|Selector4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Selector4~1_combout\ = ((\C2|Selector4~0_combout\ & \C2|EtatFutur.etat2~regout\)) # (!\C2|Selector0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|Selector4~0_combout\,
	datac => \C2|EtatFutur.etat2~regout\,
	datad => \C2|Selector0~1_combout\,
	combout => \C2|Selector4~1_combout\);

-- Location: LCFF_X38_Y12_N5
\C2|EtatFutur.etat2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C2|Selector4~1_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|EtatFutur.etat2~regout\);

-- Location: LCFF_X38_Y12_N7
\C2|EtatPresent.etat2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \C2|EtatFutur.etat2~regout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|EtatPresent.etat2~regout\);

-- Location: LCCOMB_X38_Y12_N24
\C2|Selector3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Selector3~1_combout\ = (\C2|EtatPresent.etat0~regout\ & (!\C2|LessThan0~0_combout\ & (!\C2|EtatPresent.etat1~regout\ & !\C2|EtatPresent.etat2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|EtatPresent.etat0~regout\,
	datab => \C2|LessThan0~0_combout\,
	datac => \C2|EtatPresent.etat1~regout\,
	datad => \C2|EtatPresent.etat2~regout\,
	combout => \C2|Selector3~1_combout\);

-- Location: LCFF_X38_Y12_N25
\C2|EtatFutur.etat1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C2|Selector3~1_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \C2|Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|EtatFutur.etat1~regout\);

-- Location: LCFF_X38_Y12_N31
\C2|EtatPresent.etat1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \C2|EtatFutur.etat1~regout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|EtatPresent.etat1~regout\);

-- Location: LCCOMB_X31_Y12_N0
\C2|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add0~0_combout\ = \C2|i\(0) $ (GND)
-- \C2|Add0~1\ = CARRY(!\C2|i\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|i\(0),
	datad => VCC,
	combout => \C2|Add0~0_combout\,
	cout => \C2|Add0~1\);

-- Location: LCCOMB_X30_Y12_N8
\C2|Selector38~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Selector38~0_combout\ = (!\C2|Add0~0_combout\ & \C2|EtatPresent.etat3~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|Add0~0_combout\,
	datad => \C2|EtatPresent.etat3~regout\,
	combout => \C2|Selector38~0_combout\);

-- Location: LCCOMB_X33_Y12_N8
\C2|i[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|i[0]~0_combout\ = (\C2|EtatPresent.etat3~regout\ & (\C1|s_out~regout\ & ((\C2|LessThan1~10_combout\)))) # (!\C2|EtatPresent.etat3~regout\ & (((\C2|EtatPresent.etat1~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|s_out~regout\,
	datab => \C2|EtatPresent.etat3~regout\,
	datac => \C2|EtatPresent.etat1~regout\,
	datad => \C2|LessThan1~10_combout\,
	combout => \C2|i[0]~0_combout\);

-- Location: LCFF_X32_Y12_N31
\C2|i[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \C2|Selector38~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \C2|i[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|i\(0));

-- Location: LCCOMB_X31_Y12_N2
\C2|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add0~2_combout\ = (\C2|i\(1) & (\C2|Add0~1\ & VCC)) # (!\C2|i\(1) & (!\C2|Add0~1\))
-- \C2|Add0~3\ = CARRY((!\C2|i\(1) & !\C2|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|i\(1),
	datad => VCC,
	cin => \C2|Add0~1\,
	combout => \C2|Add0~2_combout\,
	cout => \C2|Add0~3\);

-- Location: LCCOMB_X32_Y12_N14
\C2|Selector37~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Selector37~0_combout\ = (\C2|EtatPresent.etat3~regout\ & \C2|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|EtatPresent.etat3~regout\,
	datad => \C2|Add0~2_combout\,
	combout => \C2|Selector37~0_combout\);

-- Location: LCCOMB_X33_Y12_N16
\C2|Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Selector7~0_combout\ = (\C2|EtatPresent.etat3~regout\ & (\C1|s_out~regout\ & ((\C2|LessThan1~10_combout\)))) # (!\C2|EtatPresent.etat3~regout\ & (((\C2|EtatPresent.etat1~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|s_out~regout\,
	datab => \C2|EtatPresent.etat3~regout\,
	datac => \C2|EtatPresent.etat1~regout\,
	datad => \C2|LessThan1~10_combout\,
	combout => \C2|Selector7~0_combout\);

-- Location: LCFF_X32_Y12_N15
\C2|i[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C2|Selector37~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \C2|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|i\(1));

-- Location: LCCOMB_X31_Y12_N4
\C2|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add0~4_combout\ = (\C2|i\(2) & ((GND) # (!\C2|Add0~3\))) # (!\C2|i\(2) & (\C2|Add0~3\ $ (GND)))
-- \C2|Add0~5\ = CARRY((\C2|i\(2)) # (!\C2|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|i\(2),
	datad => VCC,
	cin => \C2|Add0~3\,
	combout => \C2|Add0~4_combout\,
	cout => \C2|Add0~5\);

-- Location: LCCOMB_X33_Y12_N10
\C2|Selector36~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Selector36~0_combout\ = (\C2|Add0~4_combout\ & \C2|EtatPresent.etat3~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|Add0~4_combout\,
	datad => \C2|EtatPresent.etat3~regout\,
	combout => \C2|Selector36~0_combout\);

-- Location: LCFF_X32_Y12_N21
\C2|i[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \C2|Selector36~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \C2|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|i\(2));

-- Location: LCCOMB_X31_Y12_N6
\C2|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add0~6_combout\ = (\C2|i\(3) & (!\C2|Add0~5\)) # (!\C2|i\(3) & (\C2|Add0~5\ & VCC))
-- \C2|Add0~7\ = CARRY((\C2|i\(3) & !\C2|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|i\(3),
	datad => VCC,
	cin => \C2|Add0~5\,
	combout => \C2|Add0~6_combout\,
	cout => \C2|Add0~7\);

-- Location: LCCOMB_X32_Y12_N12
\C2|Selector35~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Selector35~0_combout\ = (\C2|EtatPresent.etat3~regout\ & !\C2|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|EtatPresent.etat3~regout\,
	datac => \C2|Add0~6_combout\,
	combout => \C2|Selector35~0_combout\);

-- Location: LCFF_X32_Y12_N13
\C2|i[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C2|Selector35~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \C2|i[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|i\(3));

-- Location: LCCOMB_X31_Y12_N8
\C2|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add0~8_combout\ = (\C2|i\(4) & ((GND) # (!\C2|Add0~7\))) # (!\C2|i\(4) & (\C2|Add0~7\ $ (GND)))
-- \C2|Add0~9\ = CARRY((\C2|i\(4)) # (!\C2|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|i\(4),
	datad => VCC,
	cin => \C2|Add0~7\,
	combout => \C2|Add0~8_combout\,
	cout => \C2|Add0~9\);

-- Location: LCCOMB_X32_Y12_N24
\C2|Selector34~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Selector34~0_combout\ = (\C2|EtatPresent.etat3~regout\ & \C2|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|EtatPresent.etat3~regout\,
	datad => \C2|Add0~8_combout\,
	combout => \C2|Selector34~0_combout\);

-- Location: LCFF_X32_Y12_N25
\C2|i[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C2|Selector34~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \C2|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|i\(4));

-- Location: LCCOMB_X31_Y12_N10
\C2|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add0~10_combout\ = (\C2|i\(5) & (\C2|Add0~9\ & VCC)) # (!\C2|i\(5) & (!\C2|Add0~9\))
-- \C2|Add0~11\ = CARRY((!\C2|i\(5) & !\C2|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|i\(5),
	datad => VCC,
	cin => \C2|Add0~9\,
	combout => \C2|Add0~10_combout\,
	cout => \C2|Add0~11\);

-- Location: LCCOMB_X32_Y12_N10
\C2|Selector33~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Selector33~0_combout\ = (\C2|EtatPresent.etat3~regout\ & \C2|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|EtatPresent.etat3~regout\,
	datad => \C2|Add0~10_combout\,
	combout => \C2|Selector33~0_combout\);

-- Location: LCFF_X32_Y12_N11
\C2|i[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C2|Selector33~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \C2|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|i\(5));

-- Location: LCCOMB_X31_Y12_N12
\C2|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add0~12_combout\ = (\C2|i\(6) & ((GND) # (!\C2|Add0~11\))) # (!\C2|i\(6) & (\C2|Add0~11\ $ (GND)))
-- \C2|Add0~13\ = CARRY((\C2|i\(6)) # (!\C2|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|i\(6),
	datad => VCC,
	cin => \C2|Add0~11\,
	combout => \C2|Add0~12_combout\,
	cout => \C2|Add0~13\);

-- Location: LCCOMB_X32_Y12_N0
\C2|Selector32~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Selector32~0_combout\ = (\C2|EtatPresent.etat3~regout\ & \C2|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|EtatPresent.etat3~regout\,
	datad => \C2|Add0~12_combout\,
	combout => \C2|Selector32~0_combout\);

-- Location: LCFF_X32_Y12_N1
\C2|i[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C2|Selector32~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \C2|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|i\(6));

-- Location: LCCOMB_X31_Y12_N14
\C2|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add0~14_combout\ = (\C2|i\(7) & (\C2|Add0~13\ & VCC)) # (!\C2|i\(7) & (!\C2|Add0~13\))
-- \C2|Add0~15\ = CARRY((!\C2|i\(7) & !\C2|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|i\(7),
	datad => VCC,
	cin => \C2|Add0~13\,
	combout => \C2|Add0~14_combout\,
	cout => \C2|Add0~15\);

-- Location: LCCOMB_X32_Y12_N18
\C2|Selector31~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Selector31~0_combout\ = (\C2|EtatPresent.etat3~regout\ & \C2|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|EtatPresent.etat3~regout\,
	datad => \C2|Add0~14_combout\,
	combout => \C2|Selector31~0_combout\);

-- Location: LCFF_X32_Y12_N19
\C2|i[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C2|Selector31~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \C2|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|i\(7));

-- Location: LCCOMB_X31_Y12_N18
\C2|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add0~18_combout\ = (\C2|i\(9) & (\C2|Add0~17\ & VCC)) # (!\C2|i\(9) & (!\C2|Add0~17\))
-- \C2|Add0~19\ = CARRY((!\C2|i\(9) & !\C2|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|i\(9),
	datad => VCC,
	cin => \C2|Add0~17\,
	combout => \C2|Add0~18_combout\,
	cout => \C2|Add0~19\);

-- Location: LCCOMB_X33_Y12_N26
\C2|Selector29~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Selector29~0_combout\ = (\C2|Add0~18_combout\ & \C2|EtatPresent.etat3~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|Add0~18_combout\,
	datad => \C2|EtatPresent.etat3~regout\,
	combout => \C2|Selector29~0_combout\);

-- Location: LCFF_X32_Y12_N29
\C2|i[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \C2|Selector29~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	ena => \C2|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|i\(9));

-- Location: LCCOMB_X31_Y12_N20
\C2|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add0~20_combout\ = (\C2|i\(10) & ((GND) # (!\C2|Add0~19\))) # (!\C2|i\(10) & (\C2|Add0~19\ $ (GND)))
-- \C2|Add0~21\ = CARRY((\C2|i\(10)) # (!\C2|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|i\(10),
	datad => VCC,
	cin => \C2|Add0~19\,
	combout => \C2|Add0~20_combout\,
	cout => \C2|Add0~21\);

-- Location: LCCOMB_X33_Y12_N6
\C2|Selector28~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Selector28~0_combout\ = (\C2|EtatPresent.etat3~regout\ & \C2|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|EtatPresent.etat3~regout\,
	datad => \C2|Add0~20_combout\,
	combout => \C2|Selector28~0_combout\);

-- Location: LCFF_X33_Y12_N7
\C2|i[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C2|Selector28~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \C2|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|i\(10));

-- Location: LCCOMB_X31_Y12_N22
\C2|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add0~22_combout\ = (\C2|i\(11) & (\C2|Add0~21\ & VCC)) # (!\C2|i\(11) & (!\C2|Add0~21\))
-- \C2|Add0~23\ = CARRY((!\C2|i\(11) & !\C2|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|i\(11),
	datad => VCC,
	cin => \C2|Add0~21\,
	combout => \C2|Add0~22_combout\,
	cout => \C2|Add0~23\);

-- Location: LCCOMB_X33_Y12_N0
\C2|Selector27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Selector27~0_combout\ = (\C2|Add0~22_combout\ & \C2|EtatPresent.etat3~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|Add0~22_combout\,
	datad => \C2|EtatPresent.etat3~regout\,
	combout => \C2|Selector27~0_combout\);

-- Location: LCFF_X33_Y12_N1
\C2|i[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C2|Selector27~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \C2|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|i\(11));

-- Location: LCCOMB_X31_Y12_N24
\C2|Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add0~24_combout\ = (\C2|i\(12) & ((GND) # (!\C2|Add0~23\))) # (!\C2|i\(12) & (\C2|Add0~23\ $ (GND)))
-- \C2|Add0~25\ = CARRY((\C2|i\(12)) # (!\C2|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|i\(12),
	datad => VCC,
	cin => \C2|Add0~23\,
	combout => \C2|Add0~24_combout\,
	cout => \C2|Add0~25\);

-- Location: LCCOMB_X33_Y12_N30
\C2|Selector26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Selector26~0_combout\ = (\C2|Add0~24_combout\ & \C2|EtatPresent.etat3~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|Add0~24_combout\,
	datad => \C2|EtatPresent.etat3~regout\,
	combout => \C2|Selector26~0_combout\);

-- Location: LCFF_X33_Y12_N31
\C2|i[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C2|Selector26~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \C2|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|i\(12));

-- Location: LCCOMB_X31_Y12_N26
\C2|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add0~26_combout\ = (\C2|i\(13) & (\C2|Add0~25\ & VCC)) # (!\C2|i\(13) & (!\C2|Add0~25\))
-- \C2|Add0~27\ = CARRY((!\C2|i\(13) & !\C2|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|i\(13),
	datad => VCC,
	cin => \C2|Add0~25\,
	combout => \C2|Add0~26_combout\,
	cout => \C2|Add0~27\);

-- Location: LCCOMB_X33_Y12_N24
\C2|Selector25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Selector25~0_combout\ = (\C2|EtatPresent.etat3~regout\ & \C2|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|EtatPresent.etat3~regout\,
	datad => \C2|Add0~26_combout\,
	combout => \C2|Selector25~0_combout\);

-- Location: LCFF_X33_Y12_N25
\C2|i[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C2|Selector25~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \C2|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|i\(13));

-- Location: LCCOMB_X33_Y12_N20
\C2|LessThan1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan1~6_combout\ = (\C2|i\(10)) # ((\C2|i\(11)) # ((\C2|i\(13)) # (\C2|i\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|i\(10),
	datab => \C2|i\(11),
	datac => \C2|i\(13),
	datad => \C2|i\(12),
	combout => \C2|LessThan1~6_combout\);

-- Location: LCCOMB_X31_Y12_N28
\C2|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add0~28_combout\ = (\C2|i\(14) & ((GND) # (!\C2|Add0~27\))) # (!\C2|i\(14) & (\C2|Add0~27\ $ (GND)))
-- \C2|Add0~29\ = CARRY((\C2|i\(14)) # (!\C2|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|i\(14),
	datad => VCC,
	cin => \C2|Add0~27\,
	combout => \C2|Add0~28_combout\,
	cout => \C2|Add0~29\);

-- Location: LCCOMB_X33_Y12_N12
\C2|Selector24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Selector24~0_combout\ = (\C2|EtatPresent.etat3~regout\ & \C2|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|EtatPresent.etat3~regout\,
	datad => \C2|Add0~28_combout\,
	combout => \C2|Selector24~0_combout\);

-- Location: LCFF_X33_Y12_N13
\C2|i[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C2|Selector24~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \C2|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|i\(14));

-- Location: LCCOMB_X31_Y12_N30
\C2|Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add0~30_combout\ = (\C2|i\(15) & (\C2|Add0~29\ & VCC)) # (!\C2|i\(15) & (!\C2|Add0~29\))
-- \C2|Add0~31\ = CARRY((!\C2|i\(15) & !\C2|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|i\(15),
	datad => VCC,
	cin => \C2|Add0~29\,
	combout => \C2|Add0~30_combout\,
	cout => \C2|Add0~31\);

-- Location: LCCOMB_X33_Y12_N22
\C2|Selector23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Selector23~0_combout\ = (\C2|EtatPresent.etat3~regout\ & \C2|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|EtatPresent.etat3~regout\,
	datad => \C2|Add0~30_combout\,
	combout => \C2|Selector23~0_combout\);

-- Location: LCFF_X33_Y12_N23
\C2|i[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C2|Selector23~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \C2|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|i\(15));

-- Location: LCCOMB_X31_Y11_N0
\C2|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add0~32_combout\ = (\C2|i\(16) & ((GND) # (!\C2|Add0~31\))) # (!\C2|i\(16) & (\C2|Add0~31\ $ (GND)))
-- \C2|Add0~33\ = CARRY((\C2|i\(16)) # (!\C2|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|i\(16),
	datad => VCC,
	cin => \C2|Add0~31\,
	combout => \C2|Add0~32_combout\,
	cout => \C2|Add0~33\);

-- Location: LCCOMB_X32_Y12_N26
\C2|Selector22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Selector22~0_combout\ = (\C2|EtatPresent.etat3~regout\ & \C2|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|EtatPresent.etat3~regout\,
	datad => \C2|Add0~32_combout\,
	combout => \C2|Selector22~0_combout\);

-- Location: LCFF_X32_Y12_N27
\C2|i[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C2|Selector22~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \C2|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|i\(16));

-- Location: LCCOMB_X31_Y11_N2
\C2|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add0~34_combout\ = (\C2|i\(17) & (\C2|Add0~33\ & VCC)) # (!\C2|i\(17) & (!\C2|Add0~33\))
-- \C2|Add0~35\ = CARRY((!\C2|i\(17) & !\C2|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|i\(17),
	datad => VCC,
	cin => \C2|Add0~33\,
	combout => \C2|Add0~34_combout\,
	cout => \C2|Add0~35\);

-- Location: LCCOMB_X32_Y12_N4
\C2|Selector21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Selector21~0_combout\ = (\C2|EtatPresent.etat3~regout\ & \C2|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|EtatPresent.etat3~regout\,
	datad => \C2|Add0~34_combout\,
	combout => \C2|Selector21~0_combout\);

-- Location: LCFF_X32_Y12_N5
\C2|i[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C2|Selector21~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \C2|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|i\(17));

-- Location: LCCOMB_X33_Y12_N18
\C2|LessThan1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan1~5_combout\ = (\C2|i\(14)) # ((\C2|i\(15)) # ((\C2|i\(17)) # (\C2|i\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|i\(14),
	datab => \C2|i\(15),
	datac => \C2|i\(17),
	datad => \C2|i\(16),
	combout => \C2|LessThan1~5_combout\);

-- Location: LCCOMB_X33_Y12_N14
\C2|LessThan1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan1~7_combout\ = (\C2|LessThan1~6_combout\) # (\C2|LessThan1~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|LessThan1~6_combout\,
	datad => \C2|LessThan1~5_combout\,
	combout => \C2|LessThan1~7_combout\);

-- Location: LCCOMB_X32_Y12_N28
\C2|LessThan1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan1~8_combout\ = (\C2|i\(8)) # ((\C2|i\(6)) # ((\C2|i\(9)) # (\C2|i\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|i\(8),
	datab => \C2|i\(6),
	datac => \C2|i\(9),
	datad => \C2|i\(7),
	combout => \C2|LessThan1~8_combout\);

-- Location: LCCOMB_X32_Y12_N30
\C2|LessThan1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan1~9_combout\ = (\C2|i\(5)) # ((\C2|i\(4)) # ((\C2|LessThan1~8_combout\) # (!\C2|i\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|i\(5),
	datab => \C2|i\(4),
	datac => \C2|i\(0),
	datad => \C2|LessThan1~8_combout\,
	combout => \C2|LessThan1~9_combout\);

-- Location: LCCOMB_X31_Y11_N4
\C2|Add0~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add0~36_combout\ = (\C2|i\(18) & ((GND) # (!\C2|Add0~35\))) # (!\C2|i\(18) & (\C2|Add0~35\ $ (GND)))
-- \C2|Add0~37\ = CARRY((\C2|i\(18)) # (!\C2|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|i\(18),
	datad => VCC,
	cin => \C2|Add0~35\,
	combout => \C2|Add0~36_combout\,
	cout => \C2|Add0~37\);

-- Location: LCCOMB_X32_Y12_N16
\C2|Selector20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Selector20~0_combout\ = (\C2|EtatPresent.etat3~regout\ & \C2|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|EtatPresent.etat3~regout\,
	datac => \C2|Add0~36_combout\,
	combout => \C2|Selector20~0_combout\);

-- Location: LCFF_X32_Y12_N17
\C2|i[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C2|Selector20~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \C2|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|i\(18));

-- Location: LCCOMB_X31_Y11_N6
\C2|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add0~38_combout\ = (\C2|i\(19) & (\C2|Add0~37\ & VCC)) # (!\C2|i\(19) & (!\C2|Add0~37\))
-- \C2|Add0~39\ = CARRY((!\C2|i\(19) & !\C2|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|i\(19),
	datad => VCC,
	cin => \C2|Add0~37\,
	combout => \C2|Add0~38_combout\,
	cout => \C2|Add0~39\);

-- Location: LCCOMB_X32_Y12_N22
\C2|Selector19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Selector19~0_combout\ = (\C2|EtatPresent.etat3~regout\ & \C2|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|EtatPresent.etat3~regout\,
	datac => \C2|Add0~38_combout\,
	combout => \C2|Selector19~0_combout\);

-- Location: LCFF_X32_Y12_N23
\C2|i[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C2|Selector19~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \C2|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|i\(19));

-- Location: LCCOMB_X31_Y11_N8
\C2|Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add0~40_combout\ = (\C2|i\(20) & ((GND) # (!\C2|Add0~39\))) # (!\C2|i\(20) & (\C2|Add0~39\ $ (GND)))
-- \C2|Add0~41\ = CARRY((\C2|i\(20)) # (!\C2|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|i\(20),
	datad => VCC,
	cin => \C2|Add0~39\,
	combout => \C2|Add0~40_combout\,
	cout => \C2|Add0~41\);

-- Location: LCCOMB_X32_Y12_N8
\C2|Selector18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Selector18~0_combout\ = (\C2|EtatPresent.etat3~regout\ & \C2|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|EtatPresent.etat3~regout\,
	datad => \C2|Add0~40_combout\,
	combout => \C2|Selector18~0_combout\);

-- Location: LCFF_X32_Y12_N9
\C2|i[20]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C2|Selector18~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \C2|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|i\(20));

-- Location: LCCOMB_X31_Y11_N10
\C2|Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add0~42_combout\ = (\C2|i\(21) & (\C2|Add0~41\ & VCC)) # (!\C2|i\(21) & (!\C2|Add0~41\))
-- \C2|Add0~43\ = CARRY((!\C2|i\(21) & !\C2|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|i\(21),
	datad => VCC,
	cin => \C2|Add0~41\,
	combout => \C2|Add0~42_combout\,
	cout => \C2|Add0~43\);

-- Location: LCCOMB_X32_Y12_N2
\C2|Selector17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Selector17~0_combout\ = (\C2|EtatPresent.etat3~regout\ & \C2|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|EtatPresent.etat3~regout\,
	datad => \C2|Add0~42_combout\,
	combout => \C2|Selector17~0_combout\);

-- Location: LCFF_X32_Y12_N3
\C2|i[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C2|Selector17~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \C2|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|i\(21));

-- Location: LCCOMB_X32_Y12_N6
\C2|LessThan1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan1~3_combout\ = (\C2|i\(18)) # ((\C2|i\(21)) # ((\C2|i\(20)) # (\C2|i\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|i\(18),
	datab => \C2|i\(21),
	datac => \C2|i\(20),
	datad => \C2|i\(19),
	combout => \C2|LessThan1~3_combout\);

-- Location: LCCOMB_X31_Y11_N12
\C2|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add0~44_combout\ = (\C2|i\(22) & ((GND) # (!\C2|Add0~43\))) # (!\C2|i\(22) & (\C2|Add0~43\ $ (GND)))
-- \C2|Add0~45\ = CARRY((\C2|i\(22)) # (!\C2|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|i\(22),
	datad => VCC,
	cin => \C2|Add0~43\,
	combout => \C2|Add0~44_combout\,
	cout => \C2|Add0~45\);

-- Location: LCCOMB_X32_Y11_N18
\C2|Selector16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Selector16~0_combout\ = (\C2|EtatPresent.etat3~regout\ & \C2|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|EtatPresent.etat3~regout\,
	datad => \C2|Add0~44_combout\,
	combout => \C2|Selector16~0_combout\);

-- Location: LCFF_X32_Y11_N19
\C2|i[22]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C2|Selector16~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \C2|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|i\(22));

-- Location: LCCOMB_X31_Y11_N14
\C2|Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add0~46_combout\ = (\C2|i\(23) & (\C2|Add0~45\ & VCC)) # (!\C2|i\(23) & (!\C2|Add0~45\))
-- \C2|Add0~47\ = CARRY((!\C2|i\(23) & !\C2|Add0~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|i\(23),
	datad => VCC,
	cin => \C2|Add0~45\,
	combout => \C2|Add0~46_combout\,
	cout => \C2|Add0~47\);

-- Location: LCCOMB_X32_Y11_N24
\C2|Selector15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Selector15~0_combout\ = (\C2|EtatPresent.etat3~regout\ & \C2|Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|EtatPresent.etat3~regout\,
	datad => \C2|Add0~46_combout\,
	combout => \C2|Selector15~0_combout\);

-- Location: LCFF_X32_Y11_N25
\C2|i[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C2|Selector15~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \C2|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|i\(23));

-- Location: LCCOMB_X31_Y11_N16
\C2|Add0~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add0~48_combout\ = (\C2|i\(24) & ((GND) # (!\C2|Add0~47\))) # (!\C2|i\(24) & (\C2|Add0~47\ $ (GND)))
-- \C2|Add0~49\ = CARRY((\C2|i\(24)) # (!\C2|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C2|i\(24),
	datad => VCC,
	cin => \C2|Add0~47\,
	combout => \C2|Add0~48_combout\,
	cout => \C2|Add0~49\);

-- Location: LCCOMB_X32_Y11_N26
\C2|Selector14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Selector14~0_combout\ = (\C2|EtatPresent.etat3~regout\ & \C2|Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|EtatPresent.etat3~regout\,
	datad => \C2|Add0~48_combout\,
	combout => \C2|Selector14~0_combout\);

-- Location: LCFF_X32_Y11_N27
\C2|i[24]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C2|Selector14~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \C2|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|i\(24));

-- Location: LCCOMB_X32_Y11_N20
\C2|LessThan1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan1~2_combout\ = (\C2|i\(25)) # ((\C2|i\(24)) # ((\C2|i\(23)) # (\C2|i\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|i\(25),
	datab => \C2|i\(24),
	datac => \C2|i\(23),
	datad => \C2|i\(22),
	combout => \C2|LessThan1~2_combout\);

-- Location: LCCOMB_X31_Y11_N20
\C2|Add0~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add0~52_combout\ = (\C2|i\(26) & ((GND) # (!\C2|Add0~51\))) # (!\C2|i\(26) & (\C2|Add0~51\ $ (GND)))
-- \C2|Add0~53\ = CARRY((\C2|i\(26)) # (!\C2|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|i\(26),
	datad => VCC,
	cin => \C2|Add0~51\,
	combout => \C2|Add0~52_combout\,
	cout => \C2|Add0~53\);

-- Location: LCCOMB_X32_Y11_N28
\C2|Selector12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Selector12~0_combout\ = (\C2|EtatPresent.etat3~regout\ & \C2|Add0~52_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|EtatPresent.etat3~regout\,
	datac => \C2|Add0~52_combout\,
	combout => \C2|Selector12~0_combout\);

-- Location: LCFF_X32_Y11_N29
\C2|i[26]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C2|Selector12~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \C2|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|i\(26));

-- Location: LCCOMB_X31_Y11_N22
\C2|Add0~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add0~54_combout\ = (\C2|i\(27) & (\C2|Add0~53\ & VCC)) # (!\C2|i\(27) & (!\C2|Add0~53\))
-- \C2|Add0~55\ = CARRY((!\C2|i\(27) & !\C2|Add0~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|i\(27),
	datad => VCC,
	cin => \C2|Add0~53\,
	combout => \C2|Add0~54_combout\,
	cout => \C2|Add0~55\);

-- Location: LCCOMB_X32_Y11_N14
\C2|Selector11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Selector11~0_combout\ = (\C2|EtatPresent.etat3~regout\ & \C2|Add0~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|EtatPresent.etat3~regout\,
	datad => \C2|Add0~54_combout\,
	combout => \C2|Selector11~0_combout\);

-- Location: LCFF_X32_Y11_N15
\C2|i[27]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C2|Selector11~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \C2|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|i\(27));

-- Location: LCCOMB_X31_Y11_N24
\C2|Add0~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Add0~56_combout\ = (\C2|i\(28) & ((GND) # (!\C2|Add0~55\))) # (!\C2|i\(28) & (\C2|Add0~55\ $ (GND)))
-- \C2|Add0~57\ = CARRY((\C2|i\(28)) # (!\C2|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C2|i\(28),
	datad => VCC,
	cin => \C2|Add0~55\,
	combout => \C2|Add0~56_combout\,
	cout => \C2|Add0~57\);

-- Location: LCCOMB_X32_Y11_N12
\C2|Selector10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Selector10~0_combout\ = (\C2|EtatPresent.etat3~regout\ & \C2|Add0~56_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|EtatPresent.etat3~regout\,
	datad => \C2|Add0~56_combout\,
	combout => \C2|Selector10~0_combout\);

-- Location: LCFF_X32_Y11_N13
\C2|i[28]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C2|Selector10~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \C2|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|i\(28));

-- Location: LCCOMB_X32_Y11_N6
\C2|Selector9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Selector9~0_combout\ = (\C2|EtatPresent.etat3~regout\ & \C2|Add0~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|EtatPresent.etat3~regout\,
	datad => \C2|Add0~58_combout\,
	combout => \C2|Selector9~0_combout\);

-- Location: LCFF_X32_Y11_N7
\C2|i[29]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C2|Selector9~0_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \C2|Selector7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|i\(29));

-- Location: LCCOMB_X32_Y11_N10
\C2|LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan1~1_combout\ = (\C2|i\(28)) # ((\C2|i\(26)) # ((\C2|i\(27)) # (\C2|i\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|i\(28),
	datab => \C2|i\(26),
	datac => \C2|i\(27),
	datad => \C2|i\(29),
	combout => \C2|LessThan1~1_combout\);

-- Location: LCCOMB_X33_Y12_N28
\C2|LessThan1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan1~4_combout\ = (\C2|LessThan1~0_combout\) # ((\C2|LessThan1~3_combout\) # ((\C2|LessThan1~2_combout\) # (\C2|LessThan1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|LessThan1~0_combout\,
	datab => \C2|LessThan1~3_combout\,
	datac => \C2|LessThan1~2_combout\,
	datad => \C2|LessThan1~1_combout\,
	combout => \C2|LessThan1~4_combout\);

-- Location: LCCOMB_X33_Y12_N2
\C2|LessThan1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|LessThan1~10_combout\ = (!\C2|i\(31) & ((\C2|LessThan1~7_combout\) # ((\C2|LessThan1~9_combout\) # (\C2|LessThan1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|i\(31),
	datab => \C2|LessThan1~7_combout\,
	datac => \C2|LessThan1~9_combout\,
	datad => \C2|LessThan1~4_combout\,
	combout => \C2|LessThan1~10_combout\);

-- Location: LCCOMB_X38_Y12_N18
\C2|Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Selector0~1_combout\ = (!\C2|EtatPresent.etat1~regout\ & (((!\C2|LessThan1~10_combout\) # (!\C1|s_out~regout\)) # (!\C2|EtatPresent.etat3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|EtatPresent.etat3~regout\,
	datab => \C1|s_out~regout\,
	datac => \C2|EtatPresent.etat1~regout\,
	datad => \C2|LessThan1~10_combout\,
	combout => \C2|Selector0~1_combout\);

-- Location: LCCOMB_X38_Y12_N6
\C2|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Selector0~0_combout\ = (\C2|EtatPresent.etat4~regout\) # ((\C2|EtatPresent.etat2~regout\) # ((\C2|EtatPresent.etat3~regout\ & !\C2|LessThan1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|EtatPresent.etat3~regout\,
	datab => \C2|EtatPresent.etat4~regout\,
	datac => \C2|EtatPresent.etat2~regout\,
	datad => \C2|LessThan1~10_combout\,
	combout => \C2|Selector0~0_combout\);

-- Location: LCCOMB_X43_Y12_N16
\C2|Selector0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Selector0~2_combout\ = (\C2|EtatPresent.init~regout\ & (\C2|Selector0~1_combout\ & ((\C2|RESET~regout\) # (!\C2|Selector0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|EtatPresent.init~regout\,
	datab => \C2|Selector0~1_combout\,
	datac => \C2|RESET~regout\,
	datad => \C2|Selector0~0_combout\,
	combout => \C2|Selector0~2_combout\);

-- Location: LCFF_X43_Y12_N17
\C2|RESET\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C2|Selector0~2_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|RESET~regout\);

-- Location: LCFF_X44_Y11_N29
\C0|sclk[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C0|Add0~16_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|sclk\(8));

-- Location: LCFF_X44_Y10_N1
\C0|sclk[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C0|Add0~20_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|sclk\(10));

-- Location: LCCOMB_X44_Y10_N30
\C0|Equal4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|Equal4~0_combout\ = (!\C0|sclk\(16) & (!\C0|sclk\(10) & (\C0|sclk\(18) & \C0|sclk\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|sclk\(16),
	datab => \C0|sclk\(10),
	datac => \C0|sclk\(18),
	datad => \C0|sclk\(12),
	combout => \C0|Equal4~0_combout\);

-- Location: LCCOMB_X45_Y11_N6
\C0|Equal6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|Equal6~3_combout\ = (\C0|Equal0~2_combout\ & (\C0|Equal0~3_combout\ & (\C0|Equal0~0_combout\ & \C0|Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|Equal0~2_combout\,
	datab => \C0|Equal0~3_combout\,
	datac => \C0|Equal0~0_combout\,
	datad => \C0|Equal2~2_combout\,
	combout => \C0|Equal6~3_combout\);

-- Location: LCCOMB_X45_Y11_N24
\C0|Equal7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|Equal7~0_combout\ = (\C0|Equal6~2_combout\ & (\C0|Equal4~0_combout\ & (\C0|sclk\(3) & \C0|Equal6~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|Equal6~2_combout\,
	datab => \C0|Equal4~0_combout\,
	datac => \C0|sclk\(3),
	datad => \C0|Equal6~3_combout\,
	combout => \C0|Equal7~0_combout\);

-- Location: LCCOMB_X44_Y11_N18
\C0|Add0~6\ : cycloneii_lcell_comb
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

-- Location: LCCOMB_X43_Y11_N30
\C0|sclk~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|sclk~0_combout\ = (!\C0|Equal7~0_combout\ & \C0|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C0|Equal7~0_combout\,
	datad => \C0|Add0~6_combout\,
	combout => \C0|sclk~0_combout\);

-- Location: LCFF_X44_Y11_N27
\C0|sclk[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \C0|sclk~0_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|sclk\(3));

-- Location: LCCOMB_X44_Y11_N20
\C0|Add0~8\ : cycloneii_lcell_comb
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

-- Location: LCFF_X44_Y11_N21
\C0|sclk[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C0|Add0~8_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|sclk\(4));

-- Location: LCCOMB_X44_Y11_N22
\C0|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|Add0~10_combout\ = (\C0|sclk\(5) & (!\C0|Add0~9\)) # (!\C0|sclk\(5) & ((\C0|Add0~9\) # (GND)))
-- \C0|Add0~11\ = CARRY((!\C0|Add0~9\) # (!\C0|sclk\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C0|sclk\(5),
	datad => VCC,
	cin => \C0|Add0~9\,
	combout => \C0|Add0~10_combout\,
	cout => \C0|Add0~11\);

-- Location: LCFF_X44_Y11_N23
\C0|sclk[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C0|Add0~10_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|sclk\(5));

-- Location: LCFF_X44_Y11_N25
\C0|sclk[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C0|Add0~12_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|sclk\(6));

-- Location: LCCOMB_X45_Y11_N14
\C0|Equal4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|Equal4~1_combout\ = (\C0|sclk\(8) & (\C0|sclk\(6) & (\C0|Equal4~0_combout\ & \C0|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|sclk\(8),
	datab => \C0|sclk\(6),
	datac => \C0|Equal4~0_combout\,
	datad => \C0|Equal0~5_combout\,
	combout => \C0|Equal4~1_combout\);

-- Location: LCCOMB_X45_Y11_N8
\C0|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|Equal0~6_combout\ = ((\C0|sclk\(3)) # ((!\C0|Equal0~5_combout\) # (!\C0|Equal2~0_combout\))) # (!\C0|Equal6~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|Equal6~2_combout\,
	datab => \C0|sclk\(3),
	datac => \C0|Equal2~0_combout\,
	datad => \C0|Equal0~5_combout\,
	combout => \C0|Equal0~6_combout\);

-- Location: LCCOMB_X45_Y11_N4
\C0|Col[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|Col[2]~0_combout\ = ((!\C0|sclk\(3) & ((\C0|Equal4~1_combout\) # (\C0|Equal2~3_combout\)))) # (!\C0|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|sclk\(3),
	datab => \C0|Equal4~1_combout\,
	datac => \C0|Equal0~6_combout\,
	datad => \C0|Equal2~3_combout\,
	combout => \C0|Col[2]~0_combout\);

-- Location: LCCOMB_X45_Y11_N18
\C0|Equal6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|Equal6~4_combout\ = (!\C0|sclk\(6) & (!\C0|sclk\(8) & (\C0|Equal4~0_combout\ & \C0|Equal6~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|sclk\(6),
	datab => \C0|sclk\(8),
	datac => \C0|Equal4~0_combout\,
	datad => \C0|Equal6~3_combout\,
	combout => \C0|Equal6~4_combout\);

-- Location: LCCOMB_X45_Y11_N20
\C0|Col[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|Col[0]~1_combout\ = (\C2|RESET~regout\ & ((\C0|Col[2]~0_combout\) # ((!\C0|sclk\(3) & \C0|Equal6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|RESET~regout\,
	datab => \C0|sclk\(3),
	datac => \C0|Col[2]~0_combout\,
	datad => \C0|Equal6~4_combout\,
	combout => \C0|Col[0]~1_combout\);

-- Location: LCFF_X45_Y11_N5
\C0|Col[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C0|Col[2]~0_combout\,
	ena => \C0|Col[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|Col\(0));

-- Location: LCFF_X46_Y11_N29
\C0|Col[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C0|Equal4~2_combout\,
	ena => \C0|Col[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|Col\(1));

-- Location: LCFF_X46_Y11_N19
\C0|Col[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C0|Equal2~4_combout\,
	ena => \C0|Col[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|Col\(2));

-- Location: LCFF_X45_Y11_N11
\C0|Col[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \C0|Equal0~6_combout\,
	sload => VCC,
	ena => \C0|Col[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|Col\(3));

-- Location: LCCOMB_X47_Y11_N30
\C0|DecodeOut[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|DecodeOut[0]~6_combout\ = (\C0|DecodeOut~5_combout\ & (\C0|sclk\(3) & \C0|Equal2~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|DecodeOut~5_combout\,
	datac => \C0|sclk\(3),
	datad => \C0|Equal2~3_combout\,
	combout => \C0|DecodeOut[0]~6_combout\);

-- Location: LCCOMB_X48_Y11_N20
\C0|Equal9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|Equal9~0_combout\ = (\Row~combout\(0) & (!\Row~combout\(2) & (\Row~combout\(1) & \Row~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Row~combout\(0),
	datab => \Row~combout\(2),
	datac => \Row~combout\(1),
	datad => \Row~combout\(3),
	combout => \C0|Equal9~0_combout\);

-- Location: PIN_P17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Row[0]~I\ : cycloneii_io
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
	padio => ww_Row(0),
	combout => \Row~combout\(0));

-- Location: LCCOMB_X48_Y11_N14
\C0|DecodeOut[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|DecodeOut[0]~8_combout\ = (\C0|DecodeOut\(0) & (\C0|DecodeOut[0]~7_combout\ & (!\C0|Equal9~0_combout\ & \Row~combout\(0)))) # (!\C0|DecodeOut\(0) & (((\C0|Equal9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|DecodeOut[0]~7_combout\,
	datab => \C0|DecodeOut\(0),
	datac => \C0|Equal9~0_combout\,
	datad => \Row~combout\(0),
	combout => \C0|DecodeOut[0]~8_combout\);

-- Location: LCCOMB_X47_Y11_N18
\C0|DecodeOut[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|DecodeOut[0]~9_combout\ = (\C0|Equal7~0_combout\ & ((\C0|Equal11~0_combout\) # (\C0|DecodeOut\(0) $ (\C0|DecodeOut[0]~8_combout\)))) # (!\C0|Equal7~0_combout\ & (\C0|DecodeOut\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|DecodeOut\(0),
	datab => \C0|Equal11~0_combout\,
	datac => \C0|DecodeOut[0]~8_combout\,
	datad => \C0|Equal7~0_combout\,
	combout => \C0|DecodeOut[0]~9_combout\);

-- Location: LCCOMB_X47_Y11_N8
\C0|DecodeOut[0]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|DecodeOut[0]~10_combout\ = (!\C0|Equal4~1_combout\ & (\C0|DecodeOut[0]~9_combout\ & ((\C0|Equal7~0_combout\) # (!\C0|Equal3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|Equal4~1_combout\,
	datab => \C0|Equal7~0_combout\,
	datac => \C0|Equal3~0_combout\,
	datad => \C0|DecodeOut[0]~9_combout\,
	combout => \C0|DecodeOut[0]~10_combout\);

-- Location: LCCOMB_X48_Y11_N30
\C0|DecodeOut~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|DecodeOut~2_combout\ = ((\Row~combout\(1) $ (!\Row~combout\(3))) # (!\Row~combout\(2))) # (!\Row~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Row~combout\(0),
	datab => \Row~combout\(2),
	datac => \Row~combout\(1),
	datad => \Row~combout\(3),
	combout => \C0|DecodeOut~2_combout\);

-- Location: LCCOMB_X46_Y11_N26
\C0|DecodeOut[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|DecodeOut[0]~1_combout\ = (\C0|Equal1~0_combout\) # ((\C0|Equal2~3_combout\ & ((!\C0|sclk\(3)))) # (!\C0|Equal2~3_combout\ & (\C0|Equal4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|Equal4~1_combout\,
	datab => \C0|sclk\(3),
	datac => \C0|Equal1~0_combout\,
	datad => \C0|Equal2~3_combout\,
	combout => \C0|DecodeOut[0]~1_combout\);

-- Location: LCCOMB_X47_Y11_N22
\C0|DecodeOut[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|DecodeOut[0]~3_combout\ = (\C0|DecodeOut~2_combout\ & (\C0|DecodeOut~0_combout\ & (\C0|DecodeOut\(0)))) # (!\C0|DecodeOut~2_combout\ & ((\C0|DecodeOut[0]~1_combout\) # ((!\C0|DecodeOut~0_combout\ & \C0|DecodeOut\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|DecodeOut~0_combout\,
	datab => \C0|DecodeOut~2_combout\,
	datac => \C0|DecodeOut\(0),
	datad => \C0|DecodeOut[0]~1_combout\,
	combout => \C0|DecodeOut[0]~3_combout\);

-- Location: LCCOMB_X47_Y11_N16
\C0|DecodeOut[0]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C0|DecodeOut[0]~11_combout\ = (\C0|DecodeOut[0]~3_combout\) # ((\C0|DecodeOut[1]~4_combout\ & ((\C0|DecodeOut[0]~6_combout\) # (\C0|DecodeOut[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C0|DecodeOut[1]~4_combout\,
	datab => \C0|DecodeOut[0]~6_combout\,
	datac => \C0|DecodeOut[0]~10_combout\,
	datad => \C0|DecodeOut[0]~3_combout\,
	combout => \C0|DecodeOut[0]~11_combout\);

-- Location: LCFF_X47_Y11_N17
\C0|DecodeOut[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C0|DecodeOut[0]~11_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	ena => \C0|DecodeOut[3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|DecodeOut\(0));

-- Location: LCCOMB_X43_Y13_N16
\C9|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C9|Add0~0_combout\ = \C9|cnt\(0) $ (VCC)
-- \C9|Add0~1\ = CARRY(\C9|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C9|cnt\(0),
	datad => VCC,
	combout => \C9|Add0~0_combout\,
	cout => \C9|Add0~1\);

-- Location: LCFF_X42_Y13_N7
\C9|cnt[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \C9|Add0~0_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C9|cnt\(0));

-- Location: LCCOMB_X43_Y13_N18
\C9|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C9|Add0~2_combout\ = (\C9|cnt\(1) & (!\C9|Add0~1\)) # (!\C9|cnt\(1) & ((\C9|Add0~1\) # (GND)))
-- \C9|Add0~3\ = CARRY((!\C9|Add0~1\) # (!\C9|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C9|cnt\(1),
	datad => VCC,
	cin => \C9|Add0~1\,
	combout => \C9|Add0~2_combout\,
	cout => \C9|Add0~3\);

-- Location: LCFF_X43_Y13_N19
\C9|cnt[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C9|Add0~2_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C9|cnt\(1));

-- Location: LCCOMB_X43_Y13_N20
\C9|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C9|Add0~4_combout\ = (\C9|cnt\(2) & (\C9|Add0~3\ $ (GND))) # (!\C9|cnt\(2) & (!\C9|Add0~3\ & VCC))
-- \C9|Add0~5\ = CARRY((\C9|cnt\(2) & !\C9|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C9|cnt\(2),
	datad => VCC,
	cin => \C9|Add0~3\,
	combout => \C9|Add0~4_combout\,
	cout => \C9|Add0~5\);

-- Location: LCCOMB_X43_Y13_N22
\C9|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C9|Add0~6_combout\ = (\C9|cnt\(3) & (!\C9|Add0~5\)) # (!\C9|cnt\(3) & ((\C9|Add0~5\) # (GND)))
-- \C9|Add0~7\ = CARRY((!\C9|Add0~5\) # (!\C9|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C9|cnt\(3),
	datad => VCC,
	cin => \C9|Add0~5\,
	combout => \C9|Add0~6_combout\,
	cout => \C9|Add0~7\);

-- Location: LCFF_X43_Y13_N23
\C9|cnt[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C9|Add0~6_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C9|cnt\(3));

-- Location: LCCOMB_X43_Y13_N24
\C9|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C9|Add0~8_combout\ = (\C9|cnt\(4) & (\C9|Add0~7\ $ (GND))) # (!\C9|cnt\(4) & (!\C9|Add0~7\ & VCC))
-- \C9|Add0~9\ = CARRY((\C9|cnt\(4) & !\C9|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C9|cnt\(4),
	datad => VCC,
	cin => \C9|Add0~7\,
	combout => \C9|Add0~8_combout\,
	cout => \C9|Add0~9\);

-- Location: LCCOMB_X43_Y13_N26
\C9|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C9|Add0~10_combout\ = (\C9|cnt\(5) & (!\C9|Add0~9\)) # (!\C9|cnt\(5) & ((\C9|Add0~9\) # (GND)))
-- \C9|Add0~11\ = CARRY((!\C9|Add0~9\) # (!\C9|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C9|cnt\(5),
	datad => VCC,
	cin => \C9|Add0~9\,
	combout => \C9|Add0~10_combout\,
	cout => \C9|Add0~11\);

-- Location: LCFF_X43_Y13_N27
\C9|cnt[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C9|Add0~10_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C9|cnt\(5));

-- Location: LCCOMB_X43_Y13_N8
\C9|cnt[6]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C9|cnt[6]~1_combout\ = !\C9|Add0~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C9|Add0~12_combout\,
	combout => \C9|cnt[6]~1_combout\);

-- Location: LCFF_X43_Y13_N9
\C9|cnt[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C9|cnt[6]~1_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C9|cnt\(6));

-- Location: LCCOMB_X42_Y12_N14
\C6|temp[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C6|temp[0]~7_combout\ = \C6|temp\(0) $ (VCC)
-- \C6|temp[0]~8\ = CARRY(\C6|temp\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C6|temp\(0),
	datad => VCC,
	combout => \C6|temp[0]~7_combout\,
	cout => \C6|temp[0]~8\);

-- Location: LCCOMB_X42_Y12_N24
\C6|temp[5]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \C6|temp[5]~17_combout\ = (\C6|temp\(5) & (!\C6|temp[4]~16\)) # (!\C6|temp\(5) & ((\C6|temp[4]~16\) # (GND)))
-- \C6|temp[5]~18\ = CARRY((!\C6|temp[4]~16\) # (!\C6|temp\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C6|temp\(5),
	datad => VCC,
	cin => \C6|temp[4]~16\,
	combout => \C6|temp[5]~17_combout\,
	cout => \C6|temp[5]~18\);

-- Location: LCCOMB_X42_Y12_N26
\C6|temp[6]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \C6|temp[6]~19_combout\ = \C6|temp[5]~18\ $ (!\C6|temp\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \C6|temp\(6),
	cin => \C6|temp[5]~18\,
	combout => \C6|temp[6]~19_combout\);

-- Location: LCCOMB_X44_Y13_N8
\C4|i[0]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \C4|i[0]~24_combout\ = \C4|i\(0) $ (VCC)
-- \C4|i[0]~25\ = CARRY(\C4|i\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C4|i\(0),
	datad => VCC,
	combout => \C4|i[0]~24_combout\,
	cout => \C4|i[0]~25\);

-- Location: LCFF_X44_Y13_N9
\C4|i[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C4|i[0]~24_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	sclr => \C4|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C4|i\(0));

-- Location: LCCOMB_X44_Y13_N14
\C4|i[3]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \C4|i[3]~30_combout\ = (\C4|i\(3) & (!\C4|i[2]~29\)) # (!\C4|i\(3) & ((\C4|i[2]~29\) # (GND)))
-- \C4|i[3]~31\ = CARRY((!\C4|i[2]~29\) # (!\C4|i\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C4|i\(3),
	datad => VCC,
	cin => \C4|i[2]~29\,
	combout => \C4|i[3]~30_combout\,
	cout => \C4|i[3]~31\);

-- Location: LCFF_X44_Y13_N15
\C4|i[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C4|i[3]~30_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	sclr => \C4|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C4|i\(3));

-- Location: LCCOMB_X44_Y13_N16
\C4|i[4]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \C4|i[4]~32_combout\ = (\C4|i\(4) & (\C4|i[3]~31\ $ (GND))) # (!\C4|i\(4) & (!\C4|i[3]~31\ & VCC))
-- \C4|i[4]~33\ = CARRY((\C4|i\(4) & !\C4|i[3]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C4|i\(4),
	datad => VCC,
	cin => \C4|i[3]~31\,
	combout => \C4|i[4]~32_combout\,
	cout => \C4|i[4]~33\);

-- Location: LCCOMB_X44_Y13_N18
\C4|i[5]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \C4|i[5]~34_combout\ = (\C4|i\(5) & (!\C4|i[4]~33\)) # (!\C4|i\(5) & ((\C4|i[4]~33\) # (GND)))
-- \C4|i[5]~35\ = CARRY((!\C4|i[4]~33\) # (!\C4|i\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C4|i\(5),
	datad => VCC,
	cin => \C4|i[4]~33\,
	combout => \C4|i[5]~34_combout\,
	cout => \C4|i[5]~35\);

-- Location: LCFF_X44_Y13_N19
\C4|i[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C4|i[5]~34_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	sclr => \C4|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C4|i\(5));

-- Location: LCCOMB_X44_Y13_N22
\C4|i[7]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \C4|i[7]~38_combout\ = (\C4|i\(7) & (!\C4|i[6]~37\)) # (!\C4|i\(7) & ((\C4|i[6]~37\) # (GND)))
-- \C4|i[7]~39\ = CARRY((!\C4|i[6]~37\) # (!\C4|i\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C4|i\(7),
	datad => VCC,
	cin => \C4|i[6]~37\,
	combout => \C4|i[7]~38_combout\,
	cout => \C4|i[7]~39\);

-- Location: LCFF_X44_Y13_N23
\C4|i[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C4|i[7]~38_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	sclr => \C4|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C4|i\(7));

-- Location: LCCOMB_X44_Y13_N24
\C4|i[8]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \C4|i[8]~40_combout\ = (\C4|i\(8) & (\C4|i[7]~39\ $ (GND))) # (!\C4|i\(8) & (!\C4|i[7]~39\ & VCC))
-- \C4|i[8]~41\ = CARRY((\C4|i\(8) & !\C4|i[7]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C4|i\(8),
	datad => VCC,
	cin => \C4|i[7]~39\,
	combout => \C4|i[8]~40_combout\,
	cout => \C4|i[8]~41\);

-- Location: LCCOMB_X44_Y13_N26
\C4|i[9]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \C4|i[9]~42_combout\ = (\C4|i\(9) & (!\C4|i[8]~41\)) # (!\C4|i\(9) & ((\C4|i[8]~41\) # (GND)))
-- \C4|i[9]~43\ = CARRY((!\C4|i[8]~41\) # (!\C4|i\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C4|i\(9),
	datad => VCC,
	cin => \C4|i[8]~41\,
	combout => \C4|i[9]~42_combout\,
	cout => \C4|i[9]~43\);

-- Location: LCFF_X44_Y13_N27
\C4|i[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C4|i[9]~42_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	sclr => \C4|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C4|i\(9));

-- Location: LCCOMB_X44_Y13_N28
\C4|i[10]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \C4|i[10]~44_combout\ = (\C4|i\(10) & (\C4|i[9]~43\ $ (GND))) # (!\C4|i\(10) & (!\C4|i[9]~43\ & VCC))
-- \C4|i[10]~45\ = CARRY((\C4|i\(10) & !\C4|i[9]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C4|i\(10),
	datad => VCC,
	cin => \C4|i[9]~43\,
	combout => \C4|i[10]~44_combout\,
	cout => \C4|i[10]~45\);

-- Location: LCFF_X44_Y13_N29
\C4|i[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C4|i[10]~44_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	sclr => \C4|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C4|i\(10));

-- Location: LCCOMB_X44_Y13_N30
\C4|i[11]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \C4|i[11]~46_combout\ = (\C4|i\(11) & (!\C4|i[10]~45\)) # (!\C4|i\(11) & ((\C4|i[10]~45\) # (GND)))
-- \C4|i[11]~47\ = CARRY((!\C4|i[10]~45\) # (!\C4|i\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C4|i\(11),
	datad => VCC,
	cin => \C4|i[10]~45\,
	combout => \C4|i[11]~46_combout\,
	cout => \C4|i[11]~47\);

-- Location: LCFF_X44_Y13_N31
\C4|i[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C4|i[11]~46_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	sclr => \C4|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C4|i\(11));

-- Location: LCCOMB_X44_Y12_N0
\C4|i[12]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \C4|i[12]~48_combout\ = (\C4|i\(12) & (\C4|i[11]~47\ $ (GND))) # (!\C4|i\(12) & (!\C4|i[11]~47\ & VCC))
-- \C4|i[12]~49\ = CARRY((\C4|i\(12) & !\C4|i[11]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C4|i\(12),
	datad => VCC,
	cin => \C4|i[11]~47\,
	combout => \C4|i[12]~48_combout\,
	cout => \C4|i[12]~49\);

-- Location: LCFF_X44_Y12_N1
\C4|i[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C4|i[12]~48_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	sclr => \C4|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C4|i\(12));

-- Location: LCCOMB_X44_Y12_N2
\C4|i[13]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \C4|i[13]~50_combout\ = (\C4|i\(13) & (!\C4|i[12]~49\)) # (!\C4|i\(13) & ((\C4|i[12]~49\) # (GND)))
-- \C4|i[13]~51\ = CARRY((!\C4|i[12]~49\) # (!\C4|i\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C4|i\(13),
	datad => VCC,
	cin => \C4|i[12]~49\,
	combout => \C4|i[13]~50_combout\,
	cout => \C4|i[13]~51\);

-- Location: LCFF_X44_Y12_N3
\C4|i[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C4|i[13]~50_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	sclr => \C4|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C4|i\(13));

-- Location: LCCOMB_X44_Y12_N4
\C4|i[14]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \C4|i[14]~52_combout\ = (\C4|i\(14) & (\C4|i[13]~51\ $ (GND))) # (!\C4|i\(14) & (!\C4|i[13]~51\ & VCC))
-- \C4|i[14]~53\ = CARRY((\C4|i\(14) & !\C4|i[13]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C4|i\(14),
	datad => VCC,
	cin => \C4|i[13]~51\,
	combout => \C4|i[14]~52_combout\,
	cout => \C4|i[14]~53\);

-- Location: LCFF_X44_Y12_N5
\C4|i[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C4|i[14]~52_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	sclr => \C4|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C4|i\(14));

-- Location: LCCOMB_X44_Y12_N6
\C4|i[15]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \C4|i[15]~54_combout\ = (\C4|i\(15) & (!\C4|i[14]~53\)) # (!\C4|i\(15) & ((\C4|i[14]~53\) # (GND)))
-- \C4|i[15]~55\ = CARRY((!\C4|i[14]~53\) # (!\C4|i\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C4|i\(15),
	datad => VCC,
	cin => \C4|i[14]~53\,
	combout => \C4|i[15]~54_combout\,
	cout => \C4|i[15]~55\);

-- Location: LCCOMB_X44_Y12_N8
\C4|i[16]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \C4|i[16]~56_combout\ = (\C4|i\(16) & (\C4|i[15]~55\ $ (GND))) # (!\C4|i\(16) & (!\C4|i[15]~55\ & VCC))
-- \C4|i[16]~57\ = CARRY((\C4|i\(16) & !\C4|i[15]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C4|i\(16),
	datad => VCC,
	cin => \C4|i[15]~55\,
	combout => \C4|i[16]~56_combout\,
	cout => \C4|i[16]~57\);

-- Location: LCFF_X44_Y12_N9
\C4|i[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C4|i[16]~56_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	sclr => \C4|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C4|i\(16));

-- Location: LCCOMB_X44_Y12_N12
\C4|i[18]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \C4|i[18]~60_combout\ = (\C4|i\(18) & (\C4|i[17]~59\ $ (GND))) # (!\C4|i\(18) & (!\C4|i[17]~59\ & VCC))
-- \C4|i[18]~61\ = CARRY((\C4|i\(18) & !\C4|i[17]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C4|i\(18),
	datad => VCC,
	cin => \C4|i[17]~59\,
	combout => \C4|i[18]~60_combout\,
	cout => \C4|i[18]~61\);

-- Location: LCCOMB_X44_Y12_N14
\C4|i[19]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \C4|i[19]~62_combout\ = (\C4|i\(19) & (!\C4|i[18]~61\)) # (!\C4|i\(19) & ((\C4|i[18]~61\) # (GND)))
-- \C4|i[19]~63\ = CARRY((!\C4|i[18]~61\) # (!\C4|i\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C4|i\(19),
	datad => VCC,
	cin => \C4|i[18]~61\,
	combout => \C4|i[19]~62_combout\,
	cout => \C4|i[19]~63\);

-- Location: LCFF_X44_Y12_N15
\C4|i[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C4|i[19]~62_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	sclr => \C4|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C4|i\(19));

-- Location: LCCOMB_X44_Y12_N18
\C4|i[21]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \C4|i[21]~66_combout\ = (\C4|i\(21) & (!\C4|i[20]~65\)) # (!\C4|i\(21) & ((\C4|i[20]~65\) # (GND)))
-- \C4|i[21]~67\ = CARRY((!\C4|i[20]~65\) # (!\C4|i\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C4|i\(21),
	datad => VCC,
	cin => \C4|i[20]~65\,
	combout => \C4|i[21]~66_combout\,
	cout => \C4|i[21]~67\);

-- Location: LCFF_X44_Y12_N19
\C4|i[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C4|i[21]~66_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	sclr => \C4|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C4|i\(21));

-- Location: LCCOMB_X44_Y12_N22
\C4|i[23]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \C4|i[23]~70_combout\ = \C4|i[22]~69\ $ (\C4|i\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \C4|i\(23),
	cin => \C4|i[22]~69\,
	combout => \C4|i[23]~70_combout\);

-- Location: LCFF_X44_Y12_N23
\C4|i[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C4|i[23]~70_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	sclr => \C4|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C4|i\(23));

-- Location: LCCOMB_X46_Y12_N26
\C2|Selector39~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Selector39~0_combout\ = (\C2|i\(3) & (!\C2|i\(0) & ((\C2|i\(2)) # (\C2|i\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|i\(3),
	datab => \C2|i\(0),
	datac => \C2|i\(2),
	datad => \C2|i\(1),
	combout => \C2|Selector39~0_combout\);

-- Location: LCCOMB_X46_Y12_N14
\C2|Selector39~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Selector39~1_combout\ = (\C2|EtatPresent.etat4~regout\ & (\C0|DecodeOut\(3))) # (!\C2|EtatPresent.etat4~regout\ & ((\C2|Selector39~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|EtatPresent.etat4~regout\,
	datac => \C0|DecodeOut\(3),
	datad => \C2|Selector39~0_combout\,
	combout => \C2|Selector39~1_combout\);

-- Location: LCCOMB_X38_Y12_N8
\C2|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Selector2~0_combout\ = (!\C1|s_out~regout\ & (\C2|EtatFutur.etat0~regout\ & ((\C2|EtatPresent.etat3~regout\) # (\C2|EtatPresent.etat4~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|EtatPresent.etat3~regout\,
	datab => \C1|s_out~regout\,
	datac => \C2|EtatFutur.etat0~regout\,
	datad => \C2|EtatPresent.etat4~regout\,
	combout => \C2|Selector2~0_combout\);

-- Location: LCCOMB_X38_Y12_N14
\C2|Selector2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Selector2~1_combout\ = (\C2|Selector2~0_combout\) # ((!\C2|EtatPresent.init~regout\ & ((\C2|EtatFutur.etat0~regout\) # (\C1|s_out~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|EtatPresent.init~regout\,
	datab => \C2|Selector2~0_combout\,
	datac => \C2|EtatFutur.etat0~regout\,
	datad => \C1|s_out~regout\,
	combout => \C2|Selector2~1_combout\);

-- Location: LCFF_X38_Y12_N15
\C2|EtatFutur.etat0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C2|Selector2~1_combout\,
	aclr => \rst~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|EtatFutur.etat0~regout\);

-- Location: LCFF_X38_Y12_N11
\C2|EtatPresent.etat0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \C2|EtatFutur.etat0~regout\,
	aclr => \rst~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|EtatPresent.etat0~regout\);

-- Location: LCCOMB_X47_Y12_N30
\C2|TouchInit[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|TouchInit[0]~0_combout\ = (!\C2|LessThan0~0_combout\ & (!\rst~combout\ & \C2|EtatPresent.etat0~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|LessThan0~0_combout\,
	datab => \rst~combout\,
	datad => \C2|EtatPresent.etat0~regout\,
	combout => \C2|TouchInit[0]~0_combout\);

-- Location: LCFF_X47_Y12_N25
\C2|TouchInit[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \C0|DecodeOut\(2),
	sload => VCC,
	ena => \C2|TouchInit[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|TouchInit\(2));

-- Location: LCCOMB_X38_Y12_N28
\C2|KEY[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|KEY[2]~3_combout\ = (\C1|s_out~regout\) # (!\C2|EtatPresent.etat4~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|EtatPresent.etat4~regout\,
	datad => \C1|s_out~regout\,
	combout => \C2|KEY[2]~3_combout\);

-- Location: LCCOMB_X47_Y12_N28
\C2|TouchInit[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|TouchInit[1]~feeder_combout\ = \C0|DecodeOut\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C0|DecodeOut\(1),
	combout => \C2|TouchInit[1]~feeder_combout\);

-- Location: LCFF_X47_Y12_N29
\C2|TouchInit[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C2|TouchInit[1]~feeder_combout\,
	ena => \C2|TouchInit[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|TouchInit\(1));

-- Location: LCCOMB_X46_Y12_N10
\C2|KEY[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|KEY[2]~4_combout\ = ((\C2|EtatPresent.etat2~regout\ & (\C2|TouchInit\(2) $ (\C2|TouchInit\(1))))) # (!\C2|KEY[2]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|EtatPresent.etat2~regout\,
	datab => \C2|TouchInit\(2),
	datac => \C2|KEY[2]~3_combout\,
	datad => \C2|TouchInit\(1),
	combout => \C2|KEY[2]~4_combout\);

-- Location: LCFF_X46_Y12_N15
\C2|KEY[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C2|Selector39~1_combout\,
	aclr => \rst~clkctrl_outclk\,
	ena => \C2|KEY[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|KEY\(3));

-- Location: LCCOMB_X46_Y12_N4
\C2|Selector41~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Selector41~0_combout\ = (\C2|i\(3) & ((\C2|i\(1)) # ((!\C2|i\(0) & \C2|i\(2))))) # (!\C2|i\(3) & (!\C2|i\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|i\(3),
	datab => \C2|i\(0),
	datac => \C2|i\(2),
	datad => \C2|i\(1),
	combout => \C2|Selector41~0_combout\);

-- Location: LCFF_X47_Y12_N31
\C2|TouchInit[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \C0|DecodeOut\(0),
	sload => VCC,
	ena => \C2|TouchInit[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|TouchInit\(0));

-- Location: LCCOMB_X47_Y12_N22
\C2|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Equal0~0_combout\ = (\C2|TouchInit\(1) & (!\C2|TouchInit\(0) & !\C2|TouchInit\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|TouchInit\(1),
	datac => \C2|TouchInit\(0),
	datad => \C2|TouchInit\(2),
	combout => \C2|Equal0~0_combout\);

-- Location: LCCOMB_X46_Y12_N30
\C2|KEY[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|KEY[1]~1_combout\ = (\C2|Equal0~0_combout\ & ((!\C2|Selector41~0_combout\))) # (!\C2|Equal0~0_combout\ & (\C2|Selector41~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Selector41~3_combout\,
	datab => \C2|Selector41~0_combout\,
	datad => \C2|Equal0~0_combout\,
	combout => \C2|KEY[1]~1_combout\);

-- Location: LCFF_X46_Y12_N31
\C2|KEY[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C2|KEY[1]~1_combout\,
	sdata => \C0|DecodeOut\(1),
	aclr => \rst~clkctrl_outclk\,
	sload => \C2|EtatPresent.etat4~regout\,
	ena => \C2|KEY[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|KEY\(1));

-- Location: LCCOMB_X46_Y12_N22
\C2|Selector40~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Selector40~0_combout\ = (\C2|i\(0) & ((\C2|i\(1)) # (!\C2|i\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|i\(0),
	datac => \C2|i\(2),
	datad => \C2|i\(1),
	combout => \C2|Selector40~0_combout\);

-- Location: LCCOMB_X46_Y12_N28
\C2|KEY[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|KEY[2]~2_combout\ = (\C2|Selector41~4_combout\ & (\C2|i\(0))) # (!\C2|Selector41~4_combout\ & ((\C2|Selector40~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Selector41~4_combout\,
	datab => \C2|i\(0),
	datad => \C2|Selector40~0_combout\,
	combout => \C2|KEY[2]~2_combout\);

-- Location: LCFF_X46_Y12_N29
\C2|KEY[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C2|KEY[2]~2_combout\,
	sdata => \C0|DecodeOut\(2),
	aclr => \rst~clkctrl_outclk\,
	sload => \C2|EtatPresent.etat4~regout\,
	ena => \C2|KEY[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|KEY\(2));

-- Location: LCCOMB_X43_Y12_N18
\C3|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Mux5~0_combout\ = (!\C2|KEY\(3) & ((\C2|KEY\(0) & ((!\C2|KEY\(2)) # (!\C2|KEY\(1)))) # (!\C2|KEY\(0) & ((\C2|KEY\(1)) # (\C2|KEY\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|KEY\(0),
	datab => \C2|KEY\(3),
	datac => \C2|KEY\(1),
	datad => \C2|KEY\(2),
	combout => \C3|Mux5~0_combout\);

-- Location: LCCOMB_X43_Y12_N28
\C3|out1[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|out1[2]~0_combout\ = !\C3|Mux5~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C3|Mux5~0_combout\,
	combout => \C3|out1[2]~0_combout\);

-- Location: LCFF_X43_Y12_N29
\C3|out1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C3|out1[2]~0_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C3|out1\(2));

-- Location: LCFF_X43_Y12_N31
\C3|out1[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \C3|Mux5~0_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C3|out1\(0));

-- Location: LCCOMB_X43_Y12_N30
\C4|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C4|Equal0~0_combout\ = (\C4|i\(2) & (\C3|out1\(2) & (\C3|out1\(0) $ (!\C4|i\(0))))) # (!\C4|i\(2) & (!\C3|out1\(2) & (\C3|out1\(0) $ (!\C4|i\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C4|i\(2),
	datab => \C3|out1\(2),
	datac => \C3|out1\(0),
	datad => \C4|i\(0),
	combout => \C4|Equal0~0_combout\);

-- Location: LCCOMB_X45_Y12_N6
\C3|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Mux4~0_combout\ = (\C2|KEY\(3)) # ((\C2|KEY\(0) & (\C2|KEY\(2) & \C2|KEY\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|KEY\(0),
	datab => \C2|KEY\(2),
	datac => \C2|KEY\(3),
	datad => \C2|KEY\(1),
	combout => \C3|Mux4~0_combout\);

-- Location: LCCOMB_X44_Y13_N4
\C3|out1[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|out1[3]~feeder_combout\ = \C3|Mux4~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C3|Mux4~0_combout\,
	combout => \C3|out1[3]~feeder_combout\);

-- Location: LCFF_X44_Y13_N5
\C3|out1[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C3|out1[3]~feeder_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C3|out1\(3));

-- Location: LCCOMB_X44_Y13_N6
\C4|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C4|Equal0~1_combout\ = (\C3|out1\(9) & (\C4|i\(5) & (\C4|i\(3) $ (!\C3|out1\(3))))) # (!\C3|out1\(9) & (!\C4|i\(5) & (\C4|i\(3) $ (!\C3|out1\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|out1\(9),
	datab => \C4|i\(3),
	datac => \C3|out1\(3),
	datad => \C4|i\(5),
	combout => \C4|Equal0~1_combout\);

-- Location: LCCOMB_X45_Y12_N0
\C3|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Mux0~0_combout\ = (!\C2|KEY\(0) & (!\C2|KEY\(2) & (!\C2|KEY\(3) & !\C2|KEY\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|KEY\(0),
	datab => \C2|KEY\(2),
	datac => \C2|KEY\(3),
	datad => \C2|KEY\(1),
	combout => \C3|Mux0~0_combout\);

-- Location: LCFF_X43_Y13_N13
\C3|out1[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \C3|Mux0~0_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C3|out1\(9));

-- Location: LCCOMB_X43_Y12_N2
\C3|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Mux0~1_combout\ = (!\C2|KEY\(3) & !\C2|KEY\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C2|KEY\(3),
	datad => \C2|KEY\(2),
	combout => \C3|Mux0~1_combout\);

-- Location: LCFF_X43_Y13_N3
\C3|out1[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \C3|Mux0~1_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C3|out1\(8));

-- Location: LCFF_X44_Y13_N25
\C4|i[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C4|i[8]~40_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	sclr => \C4|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C4|i\(8));

-- Location: LCCOMB_X43_Y13_N2
\C4|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C4|Equal0~3_combout\ = (\C4|i\(9) & (\C3|out1\(9) & (\C3|out1\(8) $ (!\C4|i\(8))))) # (!\C4|i\(9) & (!\C3|out1\(9) & (\C3|out1\(8) $ (!\C4|i\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C4|i\(9),
	datab => \C3|out1\(9),
	datac => \C3|out1\(8),
	datad => \C4|i\(8),
	combout => \C4|Equal0~3_combout\);

-- Location: LCCOMB_X43_Y12_N6
\C4|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C4|Equal0~4_combout\ = (\C4|Equal0~2_combout\ & (\C4|Equal0~0_combout\ & (\C4|Equal0~1_combout\ & \C4|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C4|Equal0~2_combout\,
	datab => \C4|Equal0~0_combout\,
	datac => \C4|Equal0~1_combout\,
	datad => \C4|Equal0~3_combout\,
	combout => \C4|Equal0~4_combout\);

-- Location: LCFF_X44_Y12_N13
\C4|i[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C4|i[18]~60_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	sclr => \C4|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C4|i\(18));

-- Location: LCFF_X44_Y12_N7
\C4|i[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C4|i[15]~54_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	sclr => \C4|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C4|i\(15));

-- Location: LCCOMB_X44_Y12_N26
\C4|Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C4|Equal0~7_combout\ = (!\C4|i\(17) & (!\C4|i\(18) & (!\C4|i\(16) & !\C4|i\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C4|i\(17),
	datab => \C4|i\(18),
	datac => \C4|i\(16),
	datad => \C4|i\(15),
	combout => \C4|Equal0~7_combout\);

-- Location: LCFF_X44_Y13_N17
\C4|i[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C4|i[4]~32_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	sclr => \C4|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C4|i\(4));

-- Location: LCCOMB_X43_Y13_N12
\C3|out1[10]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|out1[10]~2_combout\ = !\C3|Mux0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C3|Mux0~0_combout\,
	combout => \C3|out1[10]~2_combout\);

-- Location: LCCOMB_X44_Y13_N0
\C3|out1[10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|out1[10]~feeder_combout\ = \C3|out1[10]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C3|out1[10]~2_combout\,
	combout => \C3|out1[10]~feeder_combout\);

-- Location: LCFF_X44_Y13_N1
\C3|out1[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C3|out1[10]~feeder_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C3|out1\(10));

-- Location: LCCOMB_X44_Y13_N2
\C4|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C4|Equal0~5_combout\ = (!\C4|i\(1) & (!\C4|i\(4) & (\C4|i\(10) $ (!\C3|out1\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C4|i\(1),
	datab => \C4|i\(10),
	datac => \C4|i\(4),
	datad => \C3|out1\(10),
	combout => \C4|Equal0~5_combout\);

-- Location: LCCOMB_X45_Y12_N4
\C4|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C4|Equal0~6_combout\ = (!\C4|i\(13) & (!\C4|i\(14) & (!\C4|i\(12) & !\C4|i\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C4|i\(13),
	datab => \C4|i\(14),
	datac => \C4|i\(12),
	datad => \C4|i\(11),
	combout => \C4|Equal0~6_combout\);

-- Location: LCCOMB_X44_Y12_N30
\C4|Equal0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C4|Equal0~9_combout\ = (\C4|Equal0~8_combout\ & (\C4|Equal0~7_combout\ & (\C4|Equal0~5_combout\ & \C4|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C4|Equal0~8_combout\,
	datab => \C4|Equal0~7_combout\,
	datac => \C4|Equal0~5_combout\,
	datad => \C4|Equal0~6_combout\,
	combout => \C4|Equal0~9_combout\);

-- Location: LCCOMB_X44_Y12_N28
\C4|Equal0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C4|Equal0~10_combout\ = (!\C4|i\(23) & (\C4|Equal0~4_combout\ & \C4|Equal0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C4|i\(23),
	datac => \C4|Equal0~4_combout\,
	datad => \C4|Equal0~9_combout\,
	combout => \C4|Equal0~10_combout\);

-- Location: LCFF_X44_Y12_N29
\C4|s_out\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C4|Equal0~10_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C4|s_out~regout\);

-- Location: LCFF_X42_Y12_N27
\C6|temp[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C6|temp[6]~19_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	sclr => \C6|LessThan0~1_combout\,
	ena => \C4|s_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C6|temp\(6));

-- Location: LCCOMB_X42_Y12_N20
\C6|temp[3]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C6|temp[3]~13_combout\ = (\C6|temp\(3) & (!\C6|temp[2]~12\)) # (!\C6|temp\(3) & ((\C6|temp[2]~12\) # (GND)))
-- \C6|temp[3]~14\ = CARRY((!\C6|temp[2]~12\) # (!\C6|temp\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C6|temp\(3),
	datad => VCC,
	cin => \C6|temp[2]~12\,
	combout => \C6|temp[3]~13_combout\,
	cout => \C6|temp[3]~14\);

-- Location: LCFF_X42_Y12_N21
\C6|temp[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C6|temp[3]~13_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	sclr => \C6|LessThan0~1_combout\,
	ena => \C4|s_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C6|temp\(3));

-- Location: LCCOMB_X42_Y12_N4
\C6|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C6|LessThan0~0_combout\ = (((!\C6|temp\(4)) # (!\C6|temp\(3))) # (!\C6|temp\(0))) # (!\C6|temp\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C6|temp\(5),
	datab => \C6|temp\(0),
	datac => \C6|temp\(3),
	datad => \C6|temp\(4),
	combout => \C6|LessThan0~0_combout\);

-- Location: LCCOMB_X42_Y12_N2
\C6|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C6|LessThan0~1_combout\ = (\C6|temp\(6)) # ((\C6|temp\(1) & (!\C6|LessThan0~0_combout\ & \C6|temp\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C6|temp\(1),
	datab => \C6|temp\(6),
	datac => \C6|LessThan0~0_combout\,
	datad => \C6|temp\(2),
	combout => \C6|LessThan0~1_combout\);

-- Location: LCFF_X42_Y12_N15
\C6|temp[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C6|temp[0]~7_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	sclr => \C6|LessThan0~1_combout\,
	ena => \C4|s_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C6|temp\(0));

-- Location: LCCOMB_X42_Y12_N16
\C6|temp[1]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C6|temp[1]~9_combout\ = (\C6|temp\(1) & (!\C6|temp[0]~8\)) # (!\C6|temp\(1) & ((\C6|temp[0]~8\) # (GND)))
-- \C6|temp[1]~10\ = CARRY((!\C6|temp[0]~8\) # (!\C6|temp\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C6|temp\(1),
	datad => VCC,
	cin => \C6|temp[0]~8\,
	combout => \C6|temp[1]~9_combout\,
	cout => \C6|temp[1]~10\);

-- Location: LCCOMB_X42_Y12_N18
\C6|temp[2]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C6|temp[2]~11_combout\ = (\C6|temp\(2) & (\C6|temp[1]~10\ $ (GND))) # (!\C6|temp\(2) & (!\C6|temp[1]~10\ & VCC))
-- \C6|temp[2]~12\ = CARRY((\C6|temp\(2) & !\C6|temp[1]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C6|temp\(2),
	datad => VCC,
	cin => \C6|temp[1]~10\,
	combout => \C6|temp[2]~11_combout\,
	cout => \C6|temp[2]~12\);

-- Location: LCFF_X42_Y12_N19
\C6|temp[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C6|temp[2]~11_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	sclr => \C6|LessThan0~1_combout\,
	ena => \C4|s_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C6|temp\(2));

-- Location: LCCOMB_X42_Y12_N22
\C6|temp[4]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C6|temp[4]~15_combout\ = (\C6|temp\(4) & (\C6|temp[3]~14\ $ (GND))) # (!\C6|temp\(4) & (!\C6|temp[3]~14\ & VCC))
-- \C6|temp[4]~16\ = CARRY((\C6|temp\(4) & !\C6|temp[3]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C6|temp\(4),
	datad => VCC,
	cin => \C6|temp[3]~14\,
	combout => \C6|temp[4]~15_combout\,
	cout => \C6|temp[4]~16\);

-- Location: LCFF_X42_Y12_N23
\C6|temp[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C6|temp[4]~15_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	sclr => \C6|LessThan0~1_combout\,
	ena => \C4|s_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C6|temp\(4));

-- Location: LCFF_X42_Y12_N25
\C6|temp[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C6|temp[5]~17_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	sclr => \C6|LessThan0~1_combout\,
	ena => \C4|s_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C6|temp\(5));

-- Location: LCFF_X43_Y13_N29
\C8|TA[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \C6|temp\(5),
	aclr => \C2|ALT_INV_RESET~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C8|TA\(5));

-- Location: LCCOMB_X43_Y13_N0
\C8|TA[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \C8|TA[4]~feeder_combout\ = \C6|temp\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C6|temp\(4),
	combout => \C8|TA[4]~feeder_combout\);

-- Location: LCFF_X43_Y13_N1
\C8|TA[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C8|TA[4]~feeder_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C8|TA\(4));

-- Location: LCCOMB_X43_Y11_N16
\C7|temp[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C7|temp[0]~7_combout\ = \C7|temp\(0) $ (VCC)
-- \C7|temp[0]~8\ = CARRY(\C7|temp\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C7|temp\(0),
	datad => VCC,
	combout => \C7|temp[0]~7_combout\,
	cout => \C7|temp[0]~8\);

-- Location: LCCOMB_X43_Y11_N18
\C7|temp[1]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C7|temp[1]~9_combout\ = (\C7|temp\(1) & (!\C7|temp[0]~8\)) # (!\C7|temp\(1) & ((\C7|temp[0]~8\) # (GND)))
-- \C7|temp[1]~10\ = CARRY((!\C7|temp[0]~8\) # (!\C7|temp\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C7|temp\(1),
	datad => VCC,
	cin => \C7|temp[0]~8\,
	combout => \C7|temp[1]~9_combout\,
	cout => \C7|temp[1]~10\);

-- Location: LCCOMB_X43_Y11_N22
\C7|temp[3]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C7|temp[3]~13_combout\ = (\C7|temp\(3) & (!\C7|temp[2]~12\)) # (!\C7|temp\(3) & ((\C7|temp[2]~12\) # (GND)))
-- \C7|temp[3]~14\ = CARRY((!\C7|temp[2]~12\) # (!\C7|temp\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C7|temp\(3),
	datad => VCC,
	cin => \C7|temp[2]~12\,
	combout => \C7|temp[3]~13_combout\,
	cout => \C7|temp[3]~14\);

-- Location: LCCOMB_X43_Y11_N24
\C7|temp[4]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C7|temp[4]~15_combout\ = (\C7|temp\(4) & (\C7|temp[3]~14\ $ (GND))) # (!\C7|temp\(4) & (!\C7|temp[3]~14\ & VCC))
-- \C7|temp[4]~16\ = CARRY((\C7|temp\(4) & !\C7|temp[3]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C7|temp\(4),
	datad => VCC,
	cin => \C7|temp[3]~14\,
	combout => \C7|temp[4]~15_combout\,
	cout => \C7|temp[4]~16\);

-- Location: LCCOMB_X43_Y11_N26
\C7|temp[5]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \C7|temp[5]~17_combout\ = (\C7|temp\(5) & (!\C7|temp[4]~16\)) # (!\C7|temp\(5) & ((\C7|temp[4]~16\) # (GND)))
-- \C7|temp[5]~18\ = CARRY((!\C7|temp[4]~16\) # (!\C7|temp\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C7|temp\(5),
	datad => VCC,
	cin => \C7|temp[4]~16\,
	combout => \C7|temp[5]~17_combout\,
	cout => \C7|temp[5]~18\);

-- Location: LCCOMB_X42_Y11_N8
\C5|i[0]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \C5|i[0]~24_combout\ = \C5|i\(0) $ (VCC)
-- \C5|i[0]~25\ = CARRY(\C5|i\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C5|i\(0),
	datad => VCC,
	combout => \C5|i[0]~24_combout\,
	cout => \C5|i[0]~25\);

-- Location: LCFF_X42_Y11_N9
\C5|i[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C5|i[0]~24_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	sclr => \C5|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C5|i\(0));

-- Location: LCCOMB_X42_Y11_N12
\C5|i[2]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \C5|i[2]~28_combout\ = (\C5|i\(2) & (\C5|i[1]~27\ $ (GND))) # (!\C5|i\(2) & (!\C5|i[1]~27\ & VCC))
-- \C5|i[2]~29\ = CARRY((\C5|i\(2) & !\C5|i[1]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C5|i\(2),
	datad => VCC,
	cin => \C5|i[1]~27\,
	combout => \C5|i[2]~28_combout\,
	cout => \C5|i[2]~29\);

-- Location: LCCOMB_X42_Y11_N14
\C5|i[3]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \C5|i[3]~30_combout\ = (\C5|i\(3) & (!\C5|i[2]~29\)) # (!\C5|i\(3) & ((\C5|i[2]~29\) # (GND)))
-- \C5|i[3]~31\ = CARRY((!\C5|i[2]~29\) # (!\C5|i\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C5|i\(3),
	datad => VCC,
	cin => \C5|i[2]~29\,
	combout => \C5|i[3]~30_combout\,
	cout => \C5|i[3]~31\);

-- Location: LCFF_X42_Y11_N15
\C5|i[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C5|i[3]~30_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	sclr => \C5|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C5|i\(3));

-- Location: LCCOMB_X42_Y11_N18
\C5|i[5]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \C5|i[5]~34_combout\ = (\C5|i\(5) & (!\C5|i[4]~33\)) # (!\C5|i\(5) & ((\C5|i[4]~33\) # (GND)))
-- \C5|i[5]~35\ = CARRY((!\C5|i[4]~33\) # (!\C5|i\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C5|i\(5),
	datad => VCC,
	cin => \C5|i[4]~33\,
	combout => \C5|i[5]~34_combout\,
	cout => \C5|i[5]~35\);

-- Location: LCFF_X42_Y11_N19
\C5|i[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C5|i[5]~34_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	sclr => \C5|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C5|i\(5));

-- Location: LCCOMB_X42_Y11_N20
\C5|i[6]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \C5|i[6]~36_combout\ = (\C5|i\(6) & (\C5|i[5]~35\ $ (GND))) # (!\C5|i\(6) & (!\C5|i[5]~35\ & VCC))
-- \C5|i[6]~37\ = CARRY((\C5|i\(6) & !\C5|i[5]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C5|i\(6),
	datad => VCC,
	cin => \C5|i[5]~35\,
	combout => \C5|i[6]~36_combout\,
	cout => \C5|i[6]~37\);

-- Location: LCCOMB_X42_Y11_N22
\C5|i[7]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \C5|i[7]~38_combout\ = (\C5|i\(7) & (!\C5|i[6]~37\)) # (!\C5|i\(7) & ((\C5|i[6]~37\) # (GND)))
-- \C5|i[7]~39\ = CARRY((!\C5|i[6]~37\) # (!\C5|i\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C5|i\(7),
	datad => VCC,
	cin => \C5|i[6]~37\,
	combout => \C5|i[7]~38_combout\,
	cout => \C5|i[7]~39\);

-- Location: LCFF_X42_Y11_N23
\C5|i[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C5|i[7]~38_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	sclr => \C5|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C5|i\(7));

-- Location: LCCOMB_X42_Y11_N24
\C5|i[8]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \C5|i[8]~40_combout\ = (\C5|i\(8) & (\C5|i[7]~39\ $ (GND))) # (!\C5|i\(8) & (!\C5|i[7]~39\ & VCC))
-- \C5|i[8]~41\ = CARRY((\C5|i\(8) & !\C5|i[7]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C5|i\(8),
	datad => VCC,
	cin => \C5|i[7]~39\,
	combout => \C5|i[8]~40_combout\,
	cout => \C5|i[8]~41\);

-- Location: LCCOMB_X42_Y11_N26
\C5|i[9]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \C5|i[9]~42_combout\ = (\C5|i\(9) & (!\C5|i[8]~41\)) # (!\C5|i\(9) & ((\C5|i[8]~41\) # (GND)))
-- \C5|i[9]~43\ = CARRY((!\C5|i[8]~41\) # (!\C5|i\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C5|i\(9),
	datad => VCC,
	cin => \C5|i[8]~41\,
	combout => \C5|i[9]~42_combout\,
	cout => \C5|i[9]~43\);

-- Location: LCFF_X42_Y11_N27
\C5|i[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C5|i[9]~42_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	sclr => \C5|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C5|i\(9));

-- Location: LCCOMB_X42_Y11_N28
\C5|i[10]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \C5|i[10]~44_combout\ = (\C5|i\(10) & (\C5|i[9]~43\ $ (GND))) # (!\C5|i\(10) & (!\C5|i[9]~43\ & VCC))
-- \C5|i[10]~45\ = CARRY((\C5|i\(10) & !\C5|i[9]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C5|i\(10),
	datad => VCC,
	cin => \C5|i[9]~43\,
	combout => \C5|i[10]~44_combout\,
	cout => \C5|i[10]~45\);

-- Location: LCFF_X42_Y11_N29
\C5|i[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C5|i[10]~44_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	sclr => \C5|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C5|i\(10));

-- Location: LCCOMB_X42_Y11_N30
\C5|i[11]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \C5|i[11]~46_combout\ = (\C5|i\(11) & (!\C5|i[10]~45\)) # (!\C5|i\(11) & ((\C5|i[10]~45\) # (GND)))
-- \C5|i[11]~47\ = CARRY((!\C5|i[10]~45\) # (!\C5|i\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C5|i\(11),
	datad => VCC,
	cin => \C5|i[10]~45\,
	combout => \C5|i[11]~46_combout\,
	cout => \C5|i[11]~47\);

-- Location: LCFF_X42_Y11_N31
\C5|i[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C5|i[11]~46_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	sclr => \C5|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C5|i\(11));

-- Location: LCCOMB_X42_Y10_N0
\C5|i[12]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \C5|i[12]~48_combout\ = (\C5|i\(12) & (\C5|i[11]~47\ $ (GND))) # (!\C5|i\(12) & (!\C5|i[11]~47\ & VCC))
-- \C5|i[12]~49\ = CARRY((\C5|i\(12) & !\C5|i[11]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C5|i\(12),
	datad => VCC,
	cin => \C5|i[11]~47\,
	combout => \C5|i[12]~48_combout\,
	cout => \C5|i[12]~49\);

-- Location: LCFF_X42_Y10_N1
\C5|i[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C5|i[12]~48_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	sclr => \C5|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C5|i\(12));

-- Location: LCCOMB_X42_Y10_N2
\C5|i[13]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \C5|i[13]~50_combout\ = (\C5|i\(13) & (!\C5|i[12]~49\)) # (!\C5|i\(13) & ((\C5|i[12]~49\) # (GND)))
-- \C5|i[13]~51\ = CARRY((!\C5|i[12]~49\) # (!\C5|i\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C5|i\(13),
	datad => VCC,
	cin => \C5|i[12]~49\,
	combout => \C5|i[13]~50_combout\,
	cout => \C5|i[13]~51\);

-- Location: LCFF_X42_Y10_N3
\C5|i[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C5|i[13]~50_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	sclr => \C5|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C5|i\(13));

-- Location: LCCOMB_X42_Y10_N4
\C5|i[14]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \C5|i[14]~52_combout\ = (\C5|i\(14) & (\C5|i[13]~51\ $ (GND))) # (!\C5|i\(14) & (!\C5|i[13]~51\ & VCC))
-- \C5|i[14]~53\ = CARRY((\C5|i\(14) & !\C5|i[13]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C5|i\(14),
	datad => VCC,
	cin => \C5|i[13]~51\,
	combout => \C5|i[14]~52_combout\,
	cout => \C5|i[14]~53\);

-- Location: LCFF_X42_Y10_N5
\C5|i[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C5|i[14]~52_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	sclr => \C5|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C5|i\(14));

-- Location: LCCOMB_X42_Y10_N6
\C5|i[15]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \C5|i[15]~54_combout\ = (\C5|i\(15) & (!\C5|i[14]~53\)) # (!\C5|i\(15) & ((\C5|i[14]~53\) # (GND)))
-- \C5|i[15]~55\ = CARRY((!\C5|i[14]~53\) # (!\C5|i\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C5|i\(15),
	datad => VCC,
	cin => \C5|i[14]~53\,
	combout => \C5|i[15]~54_combout\,
	cout => \C5|i[15]~55\);

-- Location: LCCOMB_X42_Y10_N8
\C5|i[16]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \C5|i[16]~56_combout\ = (\C5|i\(16) & (\C5|i[15]~55\ $ (GND))) # (!\C5|i\(16) & (!\C5|i[15]~55\ & VCC))
-- \C5|i[16]~57\ = CARRY((\C5|i\(16) & !\C5|i[15]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C5|i\(16),
	datad => VCC,
	cin => \C5|i[15]~55\,
	combout => \C5|i[16]~56_combout\,
	cout => \C5|i[16]~57\);

-- Location: LCFF_X42_Y10_N9
\C5|i[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C5|i[16]~56_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	sclr => \C5|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C5|i\(16));

-- Location: LCCOMB_X42_Y10_N10
\C5|i[17]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \C5|i[17]~58_combout\ = (\C5|i\(17) & (!\C5|i[16]~57\)) # (!\C5|i\(17) & ((\C5|i[16]~57\) # (GND)))
-- \C5|i[17]~59\ = CARRY((!\C5|i[16]~57\) # (!\C5|i\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C5|i\(17),
	datad => VCC,
	cin => \C5|i[16]~57\,
	combout => \C5|i[17]~58_combout\,
	cout => \C5|i[17]~59\);

-- Location: LCCOMB_X42_Y10_N12
\C5|i[18]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \C5|i[18]~60_combout\ = (\C5|i\(18) & (\C5|i[17]~59\ $ (GND))) # (!\C5|i\(18) & (!\C5|i[17]~59\ & VCC))
-- \C5|i[18]~61\ = CARRY((\C5|i\(18) & !\C5|i[17]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C5|i\(18),
	datad => VCC,
	cin => \C5|i[17]~59\,
	combout => \C5|i[18]~60_combout\,
	cout => \C5|i[18]~61\);

-- Location: LCFF_X42_Y10_N13
\C5|i[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C5|i[18]~60_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	sclr => \C5|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C5|i\(18));

-- Location: LCCOMB_X42_Y10_N14
\C5|i[19]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \C5|i[19]~62_combout\ = (\C5|i\(19) & (!\C5|i[18]~61\)) # (!\C5|i\(19) & ((\C5|i[18]~61\) # (GND)))
-- \C5|i[19]~63\ = CARRY((!\C5|i[18]~61\) # (!\C5|i\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C5|i\(19),
	datad => VCC,
	cin => \C5|i[18]~61\,
	combout => \C5|i[19]~62_combout\,
	cout => \C5|i[19]~63\);

-- Location: LCFF_X42_Y10_N15
\C5|i[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C5|i[19]~62_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	sclr => \C5|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C5|i\(19));

-- Location: LCCOMB_X42_Y10_N18
\C5|i[21]~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \C5|i[21]~66_combout\ = (\C5|i\(21) & (!\C5|i[20]~65\)) # (!\C5|i\(21) & ((\C5|i[20]~65\) # (GND)))
-- \C5|i[21]~67\ = CARRY((!\C5|i[20]~65\) # (!\C5|i\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C5|i\(21),
	datad => VCC,
	cin => \C5|i[20]~65\,
	combout => \C5|i[21]~66_combout\,
	cout => \C5|i[21]~67\);

-- Location: LCFF_X42_Y10_N19
\C5|i[21]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C5|i[21]~66_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	sclr => \C5|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C5|i\(21));

-- Location: LCCOMB_X42_Y10_N22
\C5|i[23]~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \C5|i[23]~70_combout\ = \C5|i[22]~69\ $ (\C5|i\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \C5|i\(23),
	cin => \C5|i[22]~69\,
	combout => \C5|i[23]~70_combout\);

-- Location: LCFF_X42_Y10_N23
\C5|i[23]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C5|i[23]~70_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	sclr => \C5|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C5|i\(23));

-- Location: LCCOMB_X42_Y10_N26
\C5|Equal0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C5|Equal0~6_combout\ = (!\C5|i\(11) & (!\C5|i\(13) & (!\C5|i\(14) & !\C5|i\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C5|i\(11),
	datab => \C5|i\(13),
	datac => \C5|i\(14),
	datad => \C5|i\(12),
	combout => \C5|Equal0~6_combout\);

-- Location: LCCOMB_X43_Y12_N14
\C3|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Mux7~0_combout\ = (!\C2|KEY\(3) & ((\C2|KEY\(0) & (\C2|KEY\(1) $ (!\C2|KEY\(2)))) # (!\C2|KEY\(0) & (!\C2|KEY\(1) & \C2|KEY\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|KEY\(0),
	datab => \C2|KEY\(3),
	datac => \C2|KEY\(1),
	datad => \C2|KEY\(2),
	combout => \C3|Mux7~0_combout\);

-- Location: LCCOMB_X42_Y12_N10
\C3|out2[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|out2[5]~2_combout\ = !\C3|Mux7~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C3|Mux7~0_combout\,
	combout => \C3|out2[5]~2_combout\);

-- Location: LCFF_X42_Y12_N11
\C3|out2[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C3|out2[5]~2_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C3|out2\(5));

-- Location: LCCOMB_X42_Y11_N4
\C5|Equal0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C5|Equal0~5_combout\ = (!\C5|i\(10) & ((\C5|i\(4) & (\C3|out2\(5) & \C5|i\(5))) # (!\C5|i\(4) & (!\C3|out2\(5) & !\C5|i\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C5|i\(4),
	datab => \C5|i\(10),
	datac => \C3|out2\(5),
	datad => \C5|i\(5),
	combout => \C5|Equal0~5_combout\);

-- Location: LCFF_X42_Y10_N7
\C5|i[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C5|i[15]~54_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	sclr => \C5|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C5|i\(15));

-- Location: LCFF_X42_Y10_N11
\C5|i[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C5|i[17]~58_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	sclr => \C5|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C5|i\(17));

-- Location: LCCOMB_X43_Y10_N4
\C5|Equal0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C5|Equal0~7_combout\ = (!\C5|i\(16) & (!\C5|i\(18) & (!\C5|i\(15) & !\C5|i\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C5|i\(16),
	datab => \C5|i\(18),
	datac => \C5|i\(15),
	datad => \C5|i\(17),
	combout => \C5|Equal0~7_combout\);

-- Location: LCCOMB_X42_Y10_N30
\C5|Equal0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C5|Equal0~9_combout\ = (\C5|Equal0~8_combout\ & (\C5|Equal0~6_combout\ & (\C5|Equal0~5_combout\ & \C5|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C5|Equal0~8_combout\,
	datab => \C5|Equal0~6_combout\,
	datac => \C5|Equal0~5_combout\,
	datad => \C5|Equal0~7_combout\,
	combout => \C5|Equal0~9_combout\);

-- Location: LCCOMB_X46_Y12_N0
\C2|Selector42~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Selector42~2_combout\ = ((!\C2|TouchInit\(1) & (!\C2|TouchInit\(0) & \C2|TouchInit\(2)))) # (!\C2|i\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|TouchInit\(1),
	datab => \C2|TouchInit\(0),
	datac => \C2|i\(0),
	datad => \C2|TouchInit\(2),
	combout => \C2|Selector42~2_combout\);

-- Location: LCCOMB_X46_Y12_N18
\C2|Selector42~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Selector42~3_combout\ = (\C2|i\(1) & ((\C2|i\(0)) # ((\C2|i\(2))))) # (!\C2|i\(1) & (((!\C2|i\(2) & \C2|Selector42~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|i\(0),
	datab => \C2|i\(1),
	datac => \C2|i\(2),
	datad => \C2|Selector42~2_combout\,
	combout => \C2|Selector42~3_combout\);

-- Location: LCCOMB_X46_Y12_N2
\C2|Selector42~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Selector42~1_combout\ = (!\C2|TouchInit\(2) & (\C2|TouchInit\(0) & (\C2|TouchInit\(1) & \C2|i\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|TouchInit\(2),
	datab => \C2|TouchInit\(0),
	datac => \C2|TouchInit\(1),
	datad => \C2|i\(1),
	combout => \C2|Selector42~1_combout\);

-- Location: LCCOMB_X46_Y12_N12
\C2|Selector42~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|Selector42~4_combout\ = (\C2|i\(3) & ((\C2|Selector42~3_combout\) # ((\C2|i\(0) & \C2|Selector42~1_combout\)))) # (!\C2|i\(3) & (((\C2|i\(0) & \C2|Selector42~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|i\(3),
	datab => \C2|Selector42~3_combout\,
	datac => \C2|i\(0),
	datad => \C2|Selector42~1_combout\,
	combout => \C2|Selector42~4_combout\);

-- Location: LCCOMB_X46_Y12_N8
\C2|KEY[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C2|KEY[0]~0_combout\ = (\C2|Equal0~0_combout\ & (\C2|Selector42~0_combout\)) # (!\C2|Equal0~0_combout\ & ((\C2|Selector42~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|Selector42~0_combout\,
	datab => \C2|Equal0~0_combout\,
	datad => \C2|Selector42~4_combout\,
	combout => \C2|KEY[0]~0_combout\);

-- Location: LCFF_X46_Y12_N9
\C2|KEY[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C2|KEY[0]~0_combout\,
	sdata => \C0|DecodeOut\(0),
	aclr => \rst~clkctrl_outclk\,
	sload => \C2|EtatPresent.etat4~regout\,
	ena => \C2|KEY[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|KEY\(0));

-- Location: LCCOMB_X42_Y12_N0
\C3|Mux11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Mux11~0_combout\ = (\C2|KEY\(3) & (!\C2|KEY\(2) & (!\C2|KEY\(0) & !\C2|KEY\(1)))) # (!\C2|KEY\(3) & ((\C2|KEY\(2) $ (!\C2|KEY\(0))) # (!\C2|KEY\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C2|KEY\(3),
	datab => \C2|KEY\(2),
	datac => \C2|KEY\(0),
	datad => \C2|KEY\(1),
	combout => \C3|Mux11~0_combout\);

-- Location: LCFF_X42_Y12_N1
\C3|out2[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C3|Mux11~0_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C3|out2\(2));

-- Location: LCFF_X42_Y11_N13
\C5|i[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C5|i[2]~28_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	sclr => \C5|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C5|i\(2));

-- Location: LCCOMB_X42_Y12_N28
\C5|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C5|Equal0~1_combout\ = (\C5|i\(3) & (\C3|out2\(5) & (\C3|out2\(2) $ (!\C5|i\(2))))) # (!\C5|i\(3) & (!\C3|out2\(5) & (\C3|out2\(2) $ (!\C5|i\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C5|i\(3),
	datab => \C3|out2\(2),
	datac => \C3|out2\(5),
	datad => \C5|i\(2),
	combout => \C5|Equal0~1_combout\);

-- Location: LCCOMB_X43_Y12_N20
\C3|Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|Mux8~0_combout\ = (\C2|KEY\(0) & (!\C2|KEY\(1) & \C2|KEY\(2))) # (!\C2|KEY\(0) & ((!\C2|KEY\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C2|KEY\(1),
	datac => \C2|KEY\(0),
	datad => \C2|KEY\(2),
	combout => \C3|Mux8~0_combout\);

-- Location: LCFF_X43_Y12_N27
\C3|out2[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \C3|Mux8~0_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C3|out2\(7));

-- Location: LCFF_X42_Y11_N21
\C5|i[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C5|i[6]~36_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	sclr => \C5|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C5|i\(6));

-- Location: LCCOMB_X43_Y12_N26
\C5|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C5|Equal0~2_combout\ = (\C3|out2\(6) & (\C5|i\(6) & (\C5|i\(7) $ (!\C3|out2\(7))))) # (!\C3|out2\(6) & (!\C5|i\(6) & (\C5|i\(7) $ (!\C3|out2\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C3|out2\(6),
	datab => \C5|i\(7),
	datac => \C3|out2\(7),
	datad => \C5|i\(6),
	combout => \C5|Equal0~2_combout\);

-- Location: LCCOMB_X43_Y12_N22
\C3|out1[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \C3|out1[6]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \C3|out1[6]~feeder_combout\);

-- Location: LCFF_X43_Y12_N23
\C3|out1[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C3|out1[6]~feeder_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C3|out1\(6));

-- Location: LCFF_X43_Y12_N5
\C3|out2[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \C3|Mux7~0_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C3|out2\(8));

-- Location: LCFF_X42_Y11_N25
\C5|i[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C5|i[8]~40_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	sclr => \C5|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C5|i\(8));

-- Location: LCCOMB_X43_Y12_N4
\C5|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C5|Equal0~3_combout\ = (\C5|i\(9) & (\C3|out1\(6) & (\C3|out2\(8) $ (!\C5|i\(8))))) # (!\C5|i\(9) & (!\C3|out1\(6) & (\C3|out2\(8) $ (!\C5|i\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C5|i\(9),
	datab => \C3|out1\(6),
	datac => \C3|out2\(8),
	datad => \C5|i\(8),
	combout => \C5|Equal0~3_combout\);

-- Location: LCCOMB_X42_Y12_N8
\C5|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C5|Equal0~4_combout\ = (\C5|Equal0~0_combout\ & (\C5|Equal0~1_combout\ & (\C5|Equal0~2_combout\ & \C5|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C5|Equal0~0_combout\,
	datab => \C5|Equal0~1_combout\,
	datac => \C5|Equal0~2_combout\,
	datad => \C5|Equal0~3_combout\,
	combout => \C5|Equal0~4_combout\);

-- Location: LCCOMB_X42_Y10_N28
\C5|Equal0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C5|Equal0~10_combout\ = (!\C5|i\(23) & (\C5|Equal0~9_combout\ & \C5|Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C5|i\(23),
	datac => \C5|Equal0~9_combout\,
	datad => \C5|Equal0~4_combout\,
	combout => \C5|Equal0~10_combout\);

-- Location: LCFF_X42_Y10_N29
\C5|s_out\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C5|Equal0~10_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C5|s_out~regout\);

-- Location: LCFF_X43_Y11_N27
\C7|temp[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C7|temp[5]~17_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	sclr => \C7|LessThan0~1_combout\,
	ena => \C5|s_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C7|temp\(5));

-- Location: LCCOMB_X43_Y11_N28
\C7|temp[6]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \C7|temp[6]~19_combout\ = \C7|temp[5]~18\ $ (!\C7|temp\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \C7|temp\(6),
	cin => \C7|temp[5]~18\,
	combout => \C7|temp[6]~19_combout\);

-- Location: LCFF_X43_Y11_N29
\C7|temp[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C7|temp[6]~19_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	sclr => \C7|LessThan0~1_combout\,
	ena => \C5|s_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C7|temp\(6));

-- Location: LCCOMB_X43_Y11_N20
\C7|temp[2]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C7|temp[2]~11_combout\ = (\C7|temp\(2) & (\C7|temp[1]~10\ $ (GND))) # (!\C7|temp\(2) & (!\C7|temp[1]~10\ & VCC))
-- \C7|temp[2]~12\ = CARRY((\C7|temp\(2) & !\C7|temp[1]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C7|temp\(2),
	datad => VCC,
	cin => \C7|temp[1]~10\,
	combout => \C7|temp[2]~11_combout\,
	cout => \C7|temp[2]~12\);

-- Location: LCFF_X43_Y11_N21
\C7|temp[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C7|temp[2]~11_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	sclr => \C7|LessThan0~1_combout\,
	ena => \C5|s_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C7|temp\(2));

-- Location: LCCOMB_X43_Y11_N2
\C7|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C7|LessThan0~1_combout\ = (\C7|temp\(6)) # ((!\C7|LessThan0~0_combout\ & (\C7|temp\(2) & \C7|temp\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C7|LessThan0~0_combout\,
	datab => \C7|temp\(6),
	datac => \C7|temp\(2),
	datad => \C7|temp\(1),
	combout => \C7|LessThan0~1_combout\);

-- Location: LCFF_X43_Y11_N19
\C7|temp[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C7|temp[1]~9_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	sclr => \C7|LessThan0~1_combout\,
	ena => \C5|s_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C7|temp\(1));

-- Location: LCFF_X43_Y11_N23
\C7|temp[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C7|temp[3]~13_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	sclr => \C7|LessThan0~1_combout\,
	ena => \C5|s_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C7|temp\(3));

-- Location: LCFF_X43_Y12_N11
\C8|TB[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \C7|temp\(3),
	aclr => \C2|ALT_INV_RESET~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C8|TB\(3));

-- Location: LCFF_X42_Y13_N19
\C8|TA[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \C6|temp\(2),
	aclr => \C2|ALT_INV_RESET~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C8|TA\(2));

-- Location: LCFF_X43_Y11_N17
\C7|temp[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C7|temp[0]~7_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	sclr => \C7|LessThan0~1_combout\,
	ena => \C5|s_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C7|temp\(0));

-- Location: LCFF_X42_Y13_N15
\C8|TB[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \C7|temp\(0),
	aclr => \C2|ALT_INV_RESET~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C8|TB\(0));

-- Location: LCFF_X42_Y13_N9
\C8|TA[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \C6|temp\(0),
	aclr => \C2|ALT_INV_RESET~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C8|TA\(0));

-- Location: LCFF_X42_Y12_N17
\C6|temp[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C6|temp[1]~9_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	sclr => \C6|LessThan0~1_combout\,
	ena => \C4|s_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C6|temp\(1));

-- Location: LCFF_X42_Y13_N31
\C8|TA[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \C6|temp\(1),
	aclr => \C2|ALT_INV_RESET~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C8|TA\(1));

-- Location: LCCOMB_X42_Y13_N26
\C8|leloop:1:L0|C2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C8|leloop:1:L0|C2~0_combout\ = (\C8|TB\(1) & ((\C8|TA\(1)) # ((\C8|TB\(0) & \C8|TA\(0))))) # (!\C8|TB\(1) & (\C8|TB\(0) & (\C8|TA\(0) & \C8|TA\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C8|TB\(1),
	datab => \C8|TB\(0),
	datac => \C8|TA\(0),
	datad => \C8|TA\(1),
	combout => \C8|leloop:1:L0|C2~0_combout\);

-- Location: LCCOMB_X42_Y13_N8
\C8|leloop:2:L0|C2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C8|leloop:2:L0|C2~0_combout\ = (\C8|TB\(2) & ((\C8|TA\(2)) # (\C8|leloop:1:L0|C2~0_combout\))) # (!\C8|TB\(2) & (\C8|TA\(2) & \C8|leloop:1:L0|C2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C8|TB\(2),
	datab => \C8|TA\(2),
	datad => \C8|leloop:1:L0|C2~0_combout\,
	combout => \C8|leloop:2:L0|C2~0_combout\);

-- Location: LCCOMB_X42_Y13_N30
\C8|leloop:3:L0|C2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C8|leloop:3:L0|C2~0_combout\ = (\C8|TA\(3) & ((\C8|TB\(3)) # (\C8|leloop:2:L0|C2~0_combout\))) # (!\C8|TA\(3) & (\C8|TB\(3) & \C8|leloop:2:L0|C2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C8|TA\(3),
	datab => \C8|TB\(3),
	datad => \C8|leloop:2:L0|C2~0_combout\,
	combout => \C8|leloop:3:L0|C2~0_combout\);

-- Location: LCCOMB_X42_Y13_N14
\C8|leloop:4:L0|C2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C8|leloop:4:L0|C2~0_combout\ = (\C8|TB\(4) & ((\C8|TA\(4)) # (\C8|leloop:3:L0|C2~0_combout\))) # (!\C8|TB\(4) & (\C8|TA\(4) & \C8|leloop:3:L0|C2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C8|TB\(4),
	datab => \C8|TA\(4),
	datad => \C8|leloop:3:L0|C2~0_combout\,
	combout => \C8|leloop:4:L0|C2~0_combout\);

-- Location: LCCOMB_X42_Y13_N6
\C8|leloop:5:L0|C2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C8|leloop:5:L0|C2~0_combout\ = (\C8|TB\(5) & ((\C8|TA\(5)) # (\C8|leloop:4:L0|C2~0_combout\))) # (!\C8|TB\(5) & (\C8|TA\(5) & \C8|leloop:4:L0|C2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C8|TB\(5),
	datab => \C8|TA\(5),
	datad => \C8|leloop:4:L0|C2~0_combout\,
	combout => \C8|leloop:5:L0|C2~0_combout\);

-- Location: LCCOMB_X43_Y12_N12
\C8|TB[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \C8|TB[5]~feeder_combout\ = \C7|temp\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C7|temp\(5),
	combout => \C8|TB[5]~feeder_combout\);

-- Location: LCFF_X43_Y12_N13
\C8|TB[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C8|TB[5]~feeder_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C8|TB\(5));

-- Location: LCCOMB_X42_Y13_N4
\C8|leloop:5:L0|S~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C8|leloop:5:L0|S~0_combout\ = \C8|TA\(5) $ (\C8|TB\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C8|TA\(5),
	datad => \C8|TB\(5),
	combout => \C8|leloop:5:L0|S~0_combout\);

-- Location: LCFF_X43_Y13_N25
\C9|cnt[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C9|Add0~8_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C9|cnt\(4));

-- Location: LCFF_X43_Y11_N25
\C7|temp[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C7|temp[4]~15_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	sclr => \C7|LessThan0~1_combout\,
	ena => \C5|s_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C7|temp\(4));

-- Location: LCFF_X43_Y13_N11
\C8|TB[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \C7|temp\(4),
	aclr => \C2|ALT_INV_RESET~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C8|TB\(4));

-- Location: LCCOMB_X43_Y13_N10
\C8|leloop:4:L0|S~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C8|leloop:4:L0|S~0_combout\ = \C8|TB\(4) $ (\C8|TA\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C8|TB\(4),
	datad => \C8|TA\(4),
	combout => \C8|leloop:4:L0|S~0_combout\);

-- Location: LCFF_X42_Y13_N21
\C8|TA[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \C6|temp\(3),
	aclr => \C2|ALT_INV_RESET~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C8|TA\(3));

-- Location: LCCOMB_X42_Y13_N20
\C8|leloop:3:L0|S~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C8|leloop:3:L0|S~0_combout\ = \C8|TA\(3) $ (((\C8|TB\(2) & ((\C8|TA\(2)) # (\C8|leloop:1:L0|C2~0_combout\))) # (!\C8|TB\(2) & (\C8|TA\(2) & \C8|leloop:1:L0|C2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C8|TB\(2),
	datab => \C8|TA\(2),
	datac => \C8|TA\(3),
	datad => \C8|leloop:1:L0|C2~0_combout\,
	combout => \C8|leloop:3:L0|S~0_combout\);

-- Location: LCFF_X43_Y13_N21
\C9|cnt[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C9|Add0~4_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C9|cnt\(2));

-- Location: LCFF_X42_Y13_N5
\C8|TB[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \C7|temp\(1),
	aclr => \C2|ALT_INV_RESET~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C8|TB\(1));

-- Location: LCCOMB_X42_Y13_N16
\C8|leloop:1:L0|S~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C8|leloop:1:L0|S~0_combout\ = \C8|TB\(1) $ (\C8|TA\(1) $ (((\C8|TA\(0) & \C8|TB\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C8|TA\(0),
	datab => \C8|TB\(0),
	datac => \C8|TB\(1),
	datad => \C8|TA\(1),
	combout => \C8|leloop:1:L0|S~0_combout\);

-- Location: LCCOMB_X42_Y13_N0
\C9|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C9|LessThan0~0_combout\ = (!\C9|cnt\(0) & (\C8|TB\(0) $ (\C8|TA\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C9|cnt\(0),
	datab => \C8|TB\(0),
	datad => \C8|TA\(0),
	combout => \C9|LessThan0~0_combout\);

-- Location: LCCOMB_X42_Y13_N24
\C9|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C9|LessThan0~1_combout\ = (\C9|cnt\(1) & (\C8|leloop:1:L0|S~0_combout\ & \C9|LessThan0~0_combout\)) # (!\C9|cnt\(1) & ((\C8|leloop:1:L0|S~0_combout\) # (\C9|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C9|cnt\(1),
	datac => \C8|leloop:1:L0|S~0_combout\,
	datad => \C9|LessThan0~0_combout\,
	combout => \C9|LessThan0~1_combout\);

-- Location: LCCOMB_X42_Y13_N18
\C8|leloop:2:L0|S~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C8|leloop:2:L0|S~0_combout\ = \C8|TB\(2) $ (\C8|TA\(2) $ (\C8|leloop:1:L0|C2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C8|TB\(2),
	datac => \C8|TA\(2),
	datad => \C8|leloop:1:L0|C2~0_combout\,
	combout => \C8|leloop:2:L0|S~0_combout\);

-- Location: LCCOMB_X42_Y13_N2
\C9|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C9|LessThan0~2_combout\ = (\C9|cnt\(2) & (\C9|LessThan0~1_combout\ & \C8|leloop:2:L0|S~0_combout\)) # (!\C9|cnt\(2) & ((\C9|LessThan0~1_combout\) # (\C8|leloop:2:L0|S~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C9|cnt\(2),
	datac => \C9|LessThan0~1_combout\,
	datad => \C8|leloop:2:L0|S~0_combout\,
	combout => \C9|LessThan0~2_combout\);

-- Location: LCCOMB_X42_Y13_N10
\C9|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C9|LessThan0~3_combout\ = (\C9|cnt\(3) & (\C9|LessThan0~2_combout\ & (\C8|TB\(3) $ (\C8|leloop:3:L0|S~0_combout\)))) # (!\C9|cnt\(3) & ((\C9|LessThan0~2_combout\) # (\C8|TB\(3) $ (\C8|leloop:3:L0|S~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C9|cnt\(3),
	datab => \C8|TB\(3),
	datac => \C8|leloop:3:L0|S~0_combout\,
	datad => \C9|LessThan0~2_combout\,
	combout => \C9|LessThan0~3_combout\);

-- Location: LCCOMB_X42_Y13_N28
\C9|LessThan0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C9|LessThan0~4_combout\ = (\C9|cnt\(4) & (\C9|LessThan0~3_combout\ & (\C8|leloop:3:L0|C2~0_combout\ $ (\C8|leloop:4:L0|S~0_combout\)))) # (!\C9|cnt\(4) & ((\C9|LessThan0~3_combout\) # (\C8|leloop:3:L0|C2~0_combout\ $ (\C8|leloop:4:L0|S~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C8|leloop:3:L0|C2~0_combout\,
	datab => \C9|cnt\(4),
	datac => \C8|leloop:4:L0|S~0_combout\,
	datad => \C9|LessThan0~3_combout\,
	combout => \C9|LessThan0~4_combout\);

-- Location: LCCOMB_X42_Y13_N22
\C9|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C9|LessThan0~5_combout\ = (\C9|cnt\(5) & (\C9|LessThan0~4_combout\ & (\C8|leloop:4:L0|C2~0_combout\ $ (\C8|leloop:5:L0|S~0_combout\)))) # (!\C9|cnt\(5) & ((\C9|LessThan0~4_combout\) # (\C8|leloop:4:L0|C2~0_combout\ $ (\C8|leloop:5:L0|S~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C8|leloop:4:L0|C2~0_combout\,
	datab => \C9|cnt\(5),
	datac => \C8|leloop:5:L0|S~0_combout\,
	datad => \C9|LessThan0~4_combout\,
	combout => \C9|LessThan0~5_combout\);

-- Location: LCCOMB_X42_Y13_N12
\C9|LessThan0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C9|LessThan0~6_combout\ = (\C9|cnt\(7) & (\C9|cnt\(6) & (!\C8|leloop:5:L0|C2~0_combout\ & \C9|LessThan0~5_combout\))) # (!\C9|cnt\(7) & ((\C9|cnt\(6)) # ((\C9|LessThan0~5_combout\) # (!\C8|leloop:5:L0|C2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C9|cnt\(7),
	datab => \C9|cnt\(6),
	datac => \C8|leloop:5:L0|C2~0_combout\,
	datad => \C9|LessThan0~5_combout\,
	combout => \C9|LessThan0~6_combout\);

-- Location: LCFF_X42_Y13_N13
\C9|s\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \C9|LessThan0~6_combout\,
	aclr => \C2|ALT_INV_RESET~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C9|s~regout\);

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sonde_out~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sonde_out);

-- Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Col[0]~I\ : cycloneii_io
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
	datain => \C0|Col\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Col(0));

-- Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Col[1]~I\ : cycloneii_io
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
	datain => \C0|Col\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Col(1));

-- Location: PIN_J19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Col[2]~I\ : cycloneii_io
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
	datain => \C0|Col\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Col(2));

-- Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Col[3]~I\ : cycloneii_io
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
	datain => \C0|Col\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Col(3));

-- Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\valeur[0]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_valeur(0));

-- Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\valeur[1]~I\ : cycloneii_io
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
	datain => \C0|DecodeOut\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_valeur(1));

-- Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\valeur[2]~I\ : cycloneii_io
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
	datain => \C0|DecodeOut\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_valeur(2));

-- Location: PIN_U19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\valeur[3]~I\ : cycloneii_io
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
	datain => \C0|DecodeOut\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_valeur(3));

-- Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\valeur[4]~I\ : cycloneii_io
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
	datain => \C0|DecodeOut\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_valeur(4));

-- Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\valeur[5]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_valeur(5));

-- Location: PIN_V19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\valeur[6]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_valeur(6));

-- Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\valeur[7]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_valeur(7));

-- Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\valeur[8]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_valeur(8));

-- Location: PIN_R18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\valeur[9]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_valeur(9));

-- Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\valeur[10]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_valeur(10));

-- Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\audio~I\ : cycloneii_io
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
	datain => \C9|s~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_audio);

-- Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\clk_out~I\ : cycloneii_io
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
	datain => \clk~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_clk_out);
END structure;


