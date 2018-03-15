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

-- DATE "03/15/2018 12:37:10"

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

ENTITY 	DTMF IS
    PORT (
	Clk : IN std_logic;
	Reset : IN std_logic;
	PS2_Clk : IN std_logic;
	PS2_Data : IN std_logic;
	Display : OUT std_logic_vector(7 DOWNTO 0);
	Audio : OUT std_logic
	);
END DTMF;

-- Design Ports Information
-- Display[0]	=>  Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Display[1]	=>  Location: PIN_123,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Display[2]	=>  Location: PIN_124,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Display[3]	=>  Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Display[4]	=>  Location: PIN_128,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Display[5]	=>  Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Display[6]	=>  Location: PIN_130,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Display[7]	=>  Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Audio	=>  Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Clk	=>  Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Reset	=>  Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PS2_Clk	=>  Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PS2_Data	=>  Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF DTMF IS
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
SIGNAL ww_Display : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Audio : std_logic;
SIGNAL \C2|Add0~155\ : std_logic;
SIGNAL \Clk~combout\ : std_logic;
SIGNAL \PS2_Data~combout\ : std_logic;
SIGNAL \C1|Add0~105_combout\ : std_logic;
SIGNAL \Reset~combout\ : std_logic;
SIGNAL \C1|Add0~107\ : std_logic;
SIGNAL \C1|Add0~107COUT1_142\ : std_logic;
SIGNAL \C1|Add0~100_combout\ : std_logic;
SIGNAL \C1|Equal0~6\ : std_logic;
SIGNAL \C1|Add0~115_combout\ : std_logic;
SIGNAL \C1|Add0~102\ : std_logic;
SIGNAL \C1|Add0~102COUT1_144\ : std_logic;
SIGNAL \C1|Add0~95_combout\ : std_logic;
SIGNAL \C1|Add0~97\ : std_logic;
SIGNAL \C1|Add0~97COUT1_146\ : std_logic;
SIGNAL \C1|Add0~90_combout\ : std_logic;
SIGNAL \C1|Add0~92\ : std_logic;
SIGNAL \C1|Add0~92COUT1_148\ : std_logic;
SIGNAL \C1|Add0~87\ : std_logic;
SIGNAL \C1|Add0~80_combout\ : std_logic;
SIGNAL \C1|Add0~82\ : std_logic;
SIGNAL \C1|Add0~82COUT1_150\ : std_logic;
SIGNAL \C1|Add0~70_combout\ : std_logic;
SIGNAL \C1|Add0~72\ : std_logic;
SIGNAL \C1|Add0~72COUT1_152\ : std_logic;
SIGNAL \C1|Add0~65_combout\ : std_logic;
SIGNAL \C1|Add0~67\ : std_logic;
SIGNAL \C1|Add0~67COUT1_154\ : std_logic;
SIGNAL \C1|Add0~75_combout\ : std_logic;
SIGNAL \C1|Add0~77\ : std_logic;
SIGNAL \C1|Add0~77COUT1_156\ : std_logic;
SIGNAL \C1|Add0~60_combout\ : std_logic;
SIGNAL \C1|Equal0~3\ : std_logic;
SIGNAL \C1|Add0~62\ : std_logic;
SIGNAL \C1|Add0~40_combout\ : std_logic;
SIGNAL \C1|Add0~42\ : std_logic;
SIGNAL \C1|Add0~42COUT1_158\ : std_logic;
SIGNAL \C1|Add0~55_combout\ : std_logic;
SIGNAL \C1|Add0~57\ : std_logic;
SIGNAL \C1|Add0~57COUT1_160\ : std_logic;
SIGNAL \C1|Add0~50_combout\ : std_logic;
SIGNAL \C1|Add0~52\ : std_logic;
SIGNAL \C1|Add0~52COUT1_162\ : std_logic;
SIGNAL \C1|Add0~45_combout\ : std_logic;
SIGNAL \C1|Equal0~2\ : std_logic;
SIGNAL \C1|Add0~47\ : std_logic;
SIGNAL \C1|Add0~47COUT1_164\ : std_logic;
SIGNAL \C1|Add0~30_combout\ : std_logic;
SIGNAL \C1|Add0~32\ : std_logic;
SIGNAL \C1|Add0~25_combout\ : std_logic;
SIGNAL \C1|Add0~27\ : std_logic;
SIGNAL \C1|Add0~27COUT1_166\ : std_logic;
SIGNAL \C1|Add0~20_combout\ : std_logic;
SIGNAL \C1|Add0~22\ : std_logic;
SIGNAL \C1|Add0~22COUT1_168\ : std_logic;
SIGNAL \C1|Add0~35_combout\ : std_logic;
SIGNAL \C1|Add0~37\ : std_logic;
SIGNAL \C1|Add0~37COUT1_170\ : std_logic;
SIGNAL \C1|Add0~10_combout\ : std_logic;
SIGNAL \C1|Add0~12\ : std_logic;
SIGNAL \C1|Add0~12COUT1_172\ : std_logic;
SIGNAL \C1|Add0~5_combout\ : std_logic;
SIGNAL \C1|Add0~7\ : std_logic;
SIGNAL \C1|Add0~15_combout\ : std_logic;
SIGNAL \C1|Add0~17\ : std_logic;
SIGNAL \C1|Add0~17COUT1_174\ : std_logic;
SIGNAL \C1|Add0~0_combout\ : std_logic;
SIGNAL \C1|Equal0~0\ : std_logic;
SIGNAL \C1|Equal0~1\ : std_logic;
SIGNAL \C1|Equal0~4_combout\ : std_logic;
SIGNAL \C1|Add0~117\ : std_logic;
SIGNAL \C1|Add0~117COUT1_140\ : std_logic;
SIGNAL \C1|Add0~110_combout\ : std_logic;
SIGNAL \C1|Add0~112\ : std_logic;
SIGNAL \C1|Add0~85_combout\ : std_logic;
SIGNAL \C1|Equal0~5\ : std_logic;
SIGNAL \C1|s_out~regout\ : std_logic;
SIGNAL \C2|Selector39~0_combout\ : std_logic;
SIGNAL \PS2_Clk~combout\ : std_logic;
SIGNAL \C0|Equal1~1\ : std_logic;
SIGNAL \C0|Equal1~0\ : std_logic;
SIGNAL \C0|Equal0~0\ : std_logic;
SIGNAL \C0|Equal0~1\ : std_logic;
SIGNAL \C0|Equal1~2\ : std_logic;
SIGNAL \C0|PS2_Clk_f~regout\ : std_logic;
SIGNAL \C0|Fall_Clk~regout\ : std_logic;
SIGNAL \C0|Scan_Code[7]~1_combout\ : std_logic;
SIGNAL \C0|Bit_Cnt[0]~3\ : std_logic;
SIGNAL \C0|Bit_Cnt[0]~3COUT1_13\ : std_logic;
SIGNAL \C0|Bit_Cnt[1]~5\ : std_logic;
SIGNAL \C0|Bit_Cnt[1]~5COUT1_15\ : std_logic;
SIGNAL \C0|Bit_Cnt[2]~7\ : std_logic;
SIGNAL \C0|Bit_Cnt[2]~7COUT1_17\ : std_logic;
SIGNAL \C0|LessThan0~0_combout\ : std_logic;
SIGNAL \C0|State~regout\ : std_logic;
SIGNAL \C0|S_Reg[0]~0_combout\ : std_logic;
SIGNAL \C0|Scan_Code[0]~0_combout\ : std_logic;
SIGNAL \C2|Equal0~1\ : std_logic;
SIGNAL \C2|Selector39~2\ : std_logic;
SIGNAL \C2|EtatFutur.etat1~regout\ : std_logic;
SIGNAL \C2|EtatPresent.etat1~regout\ : std_logic;
SIGNAL \C2|Selector40~0\ : std_logic;
SIGNAL \C2|WideOr0~0\ : std_logic;
SIGNAL \C2|Selector29~0_combout\ : std_logic;
SIGNAL \C2|i~3_combout\ : std_logic;
SIGNAL \C2|Add0~157_cout\ : std_logic;
SIGNAL \C2|Add0~5_combout\ : std_logic;
SIGNAL \C2|Add0~7\ : std_logic;
SIGNAL \C2|Add0~7COUT1_186\ : std_logic;
SIGNAL \C2|Add0~10_combout\ : std_logic;
SIGNAL \C2|Add0~12\ : std_logic;
SIGNAL \C2|Add0~12COUT1_188\ : std_logic;
SIGNAL \C2|Add0~15_combout\ : std_logic;
SIGNAL \C2|Selector28~0_combout\ : std_logic;
SIGNAL \C2|Add0~17\ : std_logic;
SIGNAL \C2|Add0~17COUT1_190\ : std_logic;
SIGNAL \C2|Add0~20_combout\ : std_logic;
SIGNAL \C2|Add0~22\ : std_logic;
SIGNAL \C2|Add0~22COUT1_192\ : std_logic;
SIGNAL \C2|Add0~25_combout\ : std_logic;
SIGNAL \C2|Add0~27\ : std_logic;
SIGNAL \C2|Add0~30_combout\ : std_logic;
SIGNAL \C2|Add0~32\ : std_logic;
SIGNAL \C2|Add0~32COUT1_194\ : std_logic;
SIGNAL \C2|Add0~35_combout\ : std_logic;
SIGNAL \C2|Add0~37\ : std_logic;
SIGNAL \C2|Add0~37COUT1_196\ : std_logic;
SIGNAL \C2|Add0~40_combout\ : std_logic;
SIGNAL \C2|Add0~42\ : std_logic;
SIGNAL \C2|Add0~42COUT1_198\ : std_logic;
SIGNAL \C2|Add0~45_combout\ : std_logic;
SIGNAL \C2|Add0~47\ : std_logic;
SIGNAL \C2|Add0~47COUT1_200\ : std_logic;
SIGNAL \C2|Add0~50_combout\ : std_logic;
SIGNAL \C2|Add0~52\ : std_logic;
SIGNAL \C2|Add0~55_combout\ : std_logic;
SIGNAL \C2|Add0~57\ : std_logic;
SIGNAL \C2|Add0~57COUT1_202\ : std_logic;
SIGNAL \C2|Add0~60_combout\ : std_logic;
SIGNAL \C2|Add0~62\ : std_logic;
SIGNAL \C2|Add0~62COUT1_204\ : std_logic;
SIGNAL \C2|Add0~65_combout\ : std_logic;
SIGNAL \C2|Add0~67\ : std_logic;
SIGNAL \C2|Add0~67COUT1_206\ : std_logic;
SIGNAL \C2|Add0~70_combout\ : std_logic;
SIGNAL \C2|Add0~72\ : std_logic;
SIGNAL \C2|Add0~72COUT1_208\ : std_logic;
SIGNAL \C2|Add0~75_combout\ : std_logic;
SIGNAL \C2|Add0~77\ : std_logic;
SIGNAL \C2|Add0~80_combout\ : std_logic;
SIGNAL \C2|Add0~82\ : std_logic;
SIGNAL \C2|Add0~82COUT1_210\ : std_logic;
SIGNAL \C2|Add0~85_combout\ : std_logic;
SIGNAL \C2|Add0~87\ : std_logic;
SIGNAL \C2|Add0~87COUT1_212\ : std_logic;
SIGNAL \C2|Add0~90_combout\ : std_logic;
SIGNAL \C2|Add0~92\ : std_logic;
SIGNAL \C2|Add0~92COUT1_214\ : std_logic;
SIGNAL \C2|Add0~95_combout\ : std_logic;
SIGNAL \C2|Add0~97\ : std_logic;
SIGNAL \C2|Add0~97COUT1_216\ : std_logic;
SIGNAL \C2|Add0~100_combout\ : std_logic;
SIGNAL \C2|Add0~102\ : std_logic;
SIGNAL \C2|Add0~105_combout\ : std_logic;
SIGNAL \C2|Add0~107\ : std_logic;
SIGNAL \C2|Add0~107COUT1_218\ : std_logic;
SIGNAL \C2|Add0~110_combout\ : std_logic;
SIGNAL \C2|Add0~112\ : std_logic;
SIGNAL \C2|Add0~112COUT1_220\ : std_logic;
SIGNAL \C2|Add0~115_combout\ : std_logic;
SIGNAL \C2|Add0~117\ : std_logic;
SIGNAL \C2|Add0~117COUT1_222\ : std_logic;
SIGNAL \C2|Add0~120_combout\ : std_logic;
SIGNAL \C2|Add0~122\ : std_logic;
SIGNAL \C2|Add0~122COUT1_224\ : std_logic;
SIGNAL \C2|Add0~125_combout\ : std_logic;
SIGNAL \C2|Add0~127\ : std_logic;
SIGNAL \C2|Add0~130_combout\ : std_logic;
SIGNAL \C2|Add0~132\ : std_logic;
SIGNAL \C2|Add0~132COUT1_226\ : std_logic;
SIGNAL \C2|Add0~135_combout\ : std_logic;
SIGNAL \C2|Add0~137\ : std_logic;
SIGNAL \C2|Add0~137COUT1_228\ : std_logic;
SIGNAL \C2|Add0~140_combout\ : std_logic;
SIGNAL \C2|Add0~142\ : std_logic;
SIGNAL \C2|Add0~142COUT1_230\ : std_logic;
SIGNAL \C2|Add0~145_combout\ : std_logic;
SIGNAL \C2|Add0~147\ : std_logic;
SIGNAL \C2|Add0~147COUT1_232\ : std_logic;
SIGNAL \C2|Add0~150_combout\ : std_logic;
SIGNAL \C2|Add0~152\ : std_logic;
SIGNAL \C2|Add0~0_combout\ : std_logic;
SIGNAL \C2|Selector40~2_combout\ : std_logic;
SIGNAL \C2|EtatFutur.etat0~regout\ : std_logic;
SIGNAL \C2|Selector0~0\ : std_logic;
SIGNAL \C2|LessThan0~8_combout\ : std_logic;
SIGNAL \C2|LessThan0~9_combout\ : std_logic;
SIGNAL \C2|LessThan0~6_combout\ : std_logic;
SIGNAL \C2|LessThan0~5_combout\ : std_logic;
SIGNAL \C2|LessThan0~7_combout\ : std_logic;
SIGNAL \C2|LessThan0~1_combout\ : std_logic;
SIGNAL \C2|LessThan0~3_combout\ : std_logic;
SIGNAL \C2|LessThan0~2_combout\ : std_logic;
SIGNAL \C2|LessThan0~0_combout\ : std_logic;
SIGNAL \C2|LessThan0~4_combout\ : std_logic;
SIGNAL \C2|i~2_combout\ : std_logic;
SIGNAL \C2|Selector36~0_combout\ : std_logic;
SIGNAL \C2|EtatFutur.etat2~regout\ : std_logic;
SIGNAL \C2|EtatPresent.etat2~regout\ : std_logic;
SIGNAL \C2|EtatPresent.etat0~regout\ : std_logic;
SIGNAL \C2|EtatFutur.etat3~regout\ : std_logic;
SIGNAL \C2|KEY[1]~0\ : std_logic;
SIGNAL \C2|EtatPresent.etat3~regout\ : std_logic;
SIGNAL \C2|Selector37~0_combout\ : std_logic;
SIGNAL \C2|EtatFutur.init~regout\ : std_logic;
SIGNAL \C2|EtatPresent.init~regout\ : std_logic;
SIGNAL \C2|Selector36~1_combout\ : std_logic;
SIGNAL \C2|RESET~regout\ : std_logic;
SIGNAL \C0|PS2_Datr~regout\ : std_logic;
SIGNAL \C2|Equal0~0\ : std_logic;
SIGNAL \C2|EtatFutur.etat4~regout\ : std_logic;
SIGNAL \C2|EtatPresent.etat4~regout\ : std_logic;
SIGNAL \C4|i[0]~3\ : std_logic;
SIGNAL \C4|i[0]~3COUT1_68\ : std_logic;
SIGNAL \C4|i[1]~19\ : std_logic;
SIGNAL \C4|i[2]~1\ : std_logic;
SIGNAL \C4|i[2]~1COUT1_70\ : std_logic;
SIGNAL \C4|i[3]~7\ : std_logic;
SIGNAL \C4|i[3]~7COUT1_72\ : std_logic;
SIGNAL \C4|i[4]~21\ : std_logic;
SIGNAL \C4|i[4]~21COUT1_74\ : std_logic;
SIGNAL \C4|i[5]~5\ : std_logic;
SIGNAL \C4|i[5]~5COUT1_76\ : std_logic;
SIGNAL \C2|Selector35~0\ : std_logic;
SIGNAL \C2|KEY[1]~1\ : std_logic;
SIGNAL \C2|Mux0~0_combout\ : std_logic;
SIGNAL \C2|Selector35~1_combout\ : std_logic;
SIGNAL \C2|Selector33~1_combout\ : std_logic;
SIGNAL \C2|Selector33~0\ : std_logic;
SIGNAL \C2|Selector34~1\ : std_logic;
SIGNAL \C2|Selector34~0_combout\ : std_logic;
SIGNAL \C2|Selector32~0_combout\ : std_logic;
SIGNAL \C2|Selector32~1\ : std_logic;
SIGNAL \C4|i[6]~11\ : std_logic;
SIGNAL \C4|Equal0~2_combout\ : std_logic;
SIGNAL \C4|Equal0~1_combout\ : std_logic;
SIGNAL \C4|i[7]~9\ : std_logic;
SIGNAL \C4|i[7]~9COUT1_78\ : std_logic;
SIGNAL \C4|i[8]~13\ : std_logic;
SIGNAL \C4|i[8]~13COUT1_80\ : std_logic;
SIGNAL \C4|Equal0~3_combout\ : std_logic;
SIGNAL \C3|Mux5~0\ : std_logic;
SIGNAL \C4|Equal0~0_combout\ : std_logic;
SIGNAL \C4|Equal0~4_combout\ : std_logic;
SIGNAL \C4|i[9]~15\ : std_logic;
SIGNAL \C4|i[9]~15COUT1_82\ : std_logic;
SIGNAL \C4|i[10]~17\ : std_logic;
SIGNAL \C4|i[10]~17COUT1_84\ : std_logic;
SIGNAL \C4|i[11]~23\ : std_logic;
SIGNAL \C4|i[12]~25\ : std_logic;
SIGNAL \C4|i[12]~25COUT1_86\ : std_logic;
SIGNAL \C4|i[13]~27\ : std_logic;
SIGNAL \C4|i[13]~27COUT1_88\ : std_logic;
SIGNAL \C4|i[14]~29\ : std_logic;
SIGNAL \C4|i[14]~29COUT1_90\ : std_logic;
SIGNAL \C4|i[15]~31\ : std_logic;
SIGNAL \C4|i[15]~31COUT1_92\ : std_logic;
SIGNAL \C4|i[16]~33\ : std_logic;
SIGNAL \C4|i[17]~35\ : std_logic;
SIGNAL \C4|i[17]~35COUT1_94\ : std_logic;
SIGNAL \C4|Equal0~7_combout\ : std_logic;
SIGNAL \C4|i[18]~37\ : std_logic;
SIGNAL \C4|i[18]~37COUT1_96\ : std_logic;
SIGNAL \C4|i[19]~39\ : std_logic;
SIGNAL \C4|i[19]~39COUT1_98\ : std_logic;
SIGNAL \C4|i[20]~41\ : std_logic;
SIGNAL \C4|i[20]~41COUT1_100\ : std_logic;
SIGNAL \C4|i[21]~43\ : std_logic;
SIGNAL \C4|Equal0~8_combout\ : std_logic;
SIGNAL \C3|Mux0~0\ : std_logic;
SIGNAL \C4|Equal0~5_combout\ : std_logic;
SIGNAL \C4|Equal0~6_combout\ : std_logic;
SIGNAL \C4|Equal0~9_combout\ : std_logic;
SIGNAL \C4|Equal0~10\ : std_logic;
SIGNAL \C4|i[22]~45\ : std_logic;
SIGNAL \C4|i[22]~45COUT1_102\ : std_logic;
SIGNAL \C4|s_out~regout\ : std_logic;
SIGNAL \C6|temp[0]~1\ : std_logic;
SIGNAL \C6|temp[0]~1COUT1_21\ : std_logic;
SIGNAL \C6|temp[1]~3\ : std_logic;
SIGNAL \C6|temp[1]~3COUT1_23\ : std_logic;
SIGNAL \C6|temp[2]~5\ : std_logic;
SIGNAL \C6|temp[2]~5COUT1_25\ : std_logic;
SIGNAL \C6|temp[3]~7\ : std_logic;
SIGNAL \C6|temp[4]~9\ : std_logic;
SIGNAL \C6|temp[4]~9COUT1_27\ : std_logic;
SIGNAL \C6|LessThan0~0_combout\ : std_logic;
SIGNAL \C6|temp[5]~11\ : std_logic;
SIGNAL \C6|temp[5]~11COUT1_29\ : std_logic;
SIGNAL \C6|LessThan0~1_combout\ : std_logic;
SIGNAL \C5|i[0]~3\ : std_logic;
SIGNAL \C5|i[0]~3COUT1_68\ : std_logic;
SIGNAL \C5|i[1]~1\ : std_logic;
SIGNAL \C5|i[2]~7\ : std_logic;
SIGNAL \C5|i[2]~7COUT1_70\ : std_logic;
SIGNAL \C5|i[3]~5\ : std_logic;
SIGNAL \C5|i[3]~5COUT1_72\ : std_logic;
SIGNAL \C5|i[4]~17\ : std_logic;
SIGNAL \C5|i[4]~17COUT1_74\ : std_logic;
SIGNAL \C5|i[5]~19\ : std_logic;
SIGNAL \C5|i[5]~19COUT1_76\ : std_logic;
SIGNAL \C5|i[6]~11\ : std_logic;
SIGNAL \C5|Equal0~2_combout\ : std_logic;
SIGNAL \C3|Mux7~0\ : std_logic;
SIGNAL \C5|Equal0~1_combout\ : std_logic;
SIGNAL \C5|i[7]~9\ : std_logic;
SIGNAL \C5|i[7]~9COUT1_78\ : std_logic;
SIGNAL \C5|i[8]~13\ : std_logic;
SIGNAL \C5|i[8]~13COUT1_80\ : std_logic;
SIGNAL \C5|Equal0~3_combout\ : std_logic;
SIGNAL \C3|Mux8~0\ : std_logic;
SIGNAL \C5|Equal0~0_combout\ : std_logic;
SIGNAL \C5|Equal0~4_combout\ : std_logic;
SIGNAL \C5|i[9]~15\ : std_logic;
SIGNAL \C5|i[9]~15COUT1_82\ : std_logic;
SIGNAL \C5|i[10]~21\ : std_logic;
SIGNAL \C5|i[10]~21COUT1_84\ : std_logic;
SIGNAL \C5|i[11]~23\ : std_logic;
SIGNAL \C5|i[12]~25\ : std_logic;
SIGNAL \C5|i[12]~25COUT1_86\ : std_logic;
SIGNAL \C5|i[13]~27\ : std_logic;
SIGNAL \C5|i[13]~27COUT1_88\ : std_logic;
SIGNAL \C5|Equal0~6_combout\ : std_logic;
SIGNAL \C5|i[14]~29\ : std_logic;
SIGNAL \C5|i[14]~29COUT1_90\ : std_logic;
SIGNAL \C5|i[15]~31\ : std_logic;
SIGNAL \C5|i[15]~31COUT1_92\ : std_logic;
SIGNAL \C5|i[16]~33\ : std_logic;
SIGNAL \C5|i[17]~35\ : std_logic;
SIGNAL \C5|i[17]~35COUT1_94\ : std_logic;
SIGNAL \C5|Equal0~7_combout\ : std_logic;
SIGNAL \C5|i[18]~37\ : std_logic;
SIGNAL \C5|i[18]~37COUT1_96\ : std_logic;
SIGNAL \C5|i[19]~39\ : std_logic;
SIGNAL \C5|i[19]~39COUT1_98\ : std_logic;
SIGNAL \C5|i[20]~41\ : std_logic;
SIGNAL \C5|i[20]~41COUT1_100\ : std_logic;
SIGNAL \C5|i[21]~43\ : std_logic;
SIGNAL \C5|Equal0~8_combout\ : std_logic;
SIGNAL \C5|Equal0~5_combout\ : std_logic;
SIGNAL \C5|Equal0~9_combout\ : std_logic;
SIGNAL \C5|Equal0~10\ : std_logic;
SIGNAL \C5|i[22]~45\ : std_logic;
SIGNAL \C5|i[22]~45COUT1_102\ : std_logic;
SIGNAL \C5|s_out~regout\ : std_logic;
SIGNAL \C7|temp[0]~1\ : std_logic;
SIGNAL \C7|temp[0]~1COUT1_21\ : std_logic;
SIGNAL \C7|temp[1]~3\ : std_logic;
SIGNAL \C7|temp[1]~3COUT1_23\ : std_logic;
SIGNAL \C7|temp[2]~5\ : std_logic;
SIGNAL \C7|temp[2]~5COUT1_25\ : std_logic;
SIGNAL \C7|temp[3]~7\ : std_logic;
SIGNAL \C7|temp[4]~9\ : std_logic;
SIGNAL \C7|temp[4]~9COUT1_27\ : std_logic;
SIGNAL \C7|temp[5]~11\ : std_logic;
SIGNAL \C7|temp[5]~11COUT1_29\ : std_logic;
SIGNAL \C7|LessThan0~0_combout\ : std_logic;
SIGNAL \C7|LessThan0~1_combout\ : std_logic;
SIGNAL \C8|leloop:0:L0|S~0\ : std_logic;
SIGNAL \C9|Add0~15_combout\ : std_logic;
SIGNAL \C8|leloop:1:L0|S~0\ : std_logic;
SIGNAL \C9|Add0~17\ : std_logic;
SIGNAL \C9|Add0~17COUT1_48\ : std_logic;
SIGNAL \C9|Add0~20_combout\ : std_logic;
SIGNAL \C9|Add0~22\ : std_logic;
SIGNAL \C9|Add0~22COUT1_50\ : std_logic;
SIGNAL \C9|Add0~10_combout\ : std_logic;
SIGNAL \C9|Add0~12\ : std_logic;
SIGNAL \C9|Add0~12COUT1_52\ : std_logic;
SIGNAL \C9|Add0~5_combout\ : std_logic;
SIGNAL \C9|Add0~7\ : std_logic;
SIGNAL \C9|Add0~7COUT1_54\ : std_logic;
SIGNAL \C9|Add0~0_combout\ : std_logic;
SIGNAL \C9|Add0~2\ : std_logic;
SIGNAL \C9|Add0~25_combout\ : std_logic;
SIGNAL \C9|Equal0~0\ : std_logic;
SIGNAL \C9|Equal0~1\ : std_logic;
SIGNAL \C9|Add0~27COUT1_56\ : std_logic;
SIGNAL \C9|Add0~32\ : std_logic;
SIGNAL \C9|Add0~32COUT1_58\ : std_logic;
SIGNAL \C9|Add0~35_combout\ : std_logic;
SIGNAL \C9|Add0~27\ : std_logic;
SIGNAL \C9|Add0~30_combout\ : std_logic;
SIGNAL \C8|leloop:1:L0|C2~0\ : std_logic;
SIGNAL \C8|leloop:2:L0|S~0\ : std_logic;
SIGNAL \C9|LessThan0~0\ : std_logic;
SIGNAL \C8|leloop:3:L0|S~0\ : std_logic;
SIGNAL \C9|LessThan0~1\ : std_logic;
SIGNAL \C8|leloop:2:L0|C2~0_combout\ : std_logic;
SIGNAL \C8|leloop:3:L0|C2~0_combout\ : std_logic;
SIGNAL \C8|leloop:4:L0|C2~0\ : std_logic;
SIGNAL \C8|leloop:5:L0|S~0\ : std_logic;
SIGNAL \C8|leloop:4:L0|S~0\ : std_logic;
SIGNAL \C9|LessThan0~2\ : std_logic;
SIGNAL \C9|LessThan0~3_combout\ : std_logic;
SIGNAL \C9|LessThan0~4_combout\ : std_logic;
SIGNAL \C8|leloop:5:L0|C2~0\ : std_logic;
SIGNAL \C9|s~regout\ : std_logic;
SIGNAL \C5|i\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \C7|temp\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \C0|Scan_Code\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \C0|S_Reg\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \C0|Filter\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \C0|Bit_Cnt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \C1|i\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \C8|TB\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \C8|TA\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \C2|KEY\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \C9|cnt\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \C2|i\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \C6|temp\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \C4|i\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \C3|out2\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \C3|out1\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \ALT_INV_Reset~combout\ : std_logic;
SIGNAL \C0|ALT_INV_State~regout\ : std_logic;

BEGIN

ww_Clk <= Clk;
ww_Reset <= Reset;
ww_PS2_Clk <= PS2_Clk;
ww_PS2_Data <= PS2_Data;
Display <= ww_Display;
Audio <= ww_Audio;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Reset~combout\ <= NOT \Reset~combout\;
\C0|ALT_INV_State~regout\ <= NOT \C0|State~regout\;

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

-- Location: LC_X12_Y12_N5
\C1|Add0~105\ : cyclone_lcell
-- Equation(s):
-- \C1|Add0~105_combout\ = \C1|i\(2) $ ((((!\C1|Add0~112\))))
-- \C1|Add0~107\ = CARRY((\C1|i\(2) & ((!\C1|Add0~112\))))
-- \C1|Add0~107COUT1_142\ = CARRY((\C1|i\(2) & ((!\C1|Add0~112\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C1|i\(2),
	cin => \C1|Add0~112\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C1|Add0~105_combout\,
	cout0 => \C1|Add0~107\,
	cout1 => \C1|Add0~107COUT1_142\);

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LC_X12_Y12_N1
\C1|i[2]\ : cyclone_lcell
-- Equation(s):
-- \C1|i\(2) = DFFEAS((((\C1|Add0~105_combout\))), GLOBAL(\Clk~combout\), GLOBAL(\Reset~combout\), , , , , , )

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
	datad => \C1|Add0~105_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|i\(2));

-- Location: LC_X12_Y12_N2
\C1|i[3]\ : cyclone_lcell
-- Equation(s):
-- \C1|Equal0~6\ = (!\C1|i\(2) & (!\C1|i\(0) & (!D1_i[3] & !\C1|i\(1))))
-- \C1|i\(3) = DFFEAS(\C1|Equal0~6\, GLOBAL(\Clk~combout\), GLOBAL(\Reset~combout\), , , \C1|Add0~100_combout\, , , VCC)

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
	dataa => \C1|i\(2),
	datab => \C1|i\(0),
	datac => \C1|Add0~100_combout\,
	datad => \C1|i\(1),
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C1|Equal0~6\,
	regout => \C1|i\(3));

-- Location: LC_X12_Y12_N6
\C1|Add0~100\ : cyclone_lcell
-- Equation(s):
-- \C1|Add0~100_combout\ = \C1|i\(3) $ (((((!\C1|Add0~112\ & \C1|Add0~107\) # (\C1|Add0~112\ & \C1|Add0~107COUT1_142\)))))
-- \C1|Add0~102\ = CARRY(((!\C1|Add0~107\)) # (!\C1|i\(3)))
-- \C1|Add0~102COUT1_144\ = CARRY(((!\C1|Add0~107COUT1_142\)) # (!\C1|i\(3)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C1|i\(3),
	cin => \C1|Add0~112\,
	cin0 => \C1|Add0~107\,
	cin1 => \C1|Add0~107COUT1_142\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C1|Add0~100_combout\,
	cout0 => \C1|Add0~102\,
	cout1 => \C1|Add0~102COUT1_144\);

-- Location: LC_X12_Y12_N3
\C1|Add0~115\ : cyclone_lcell
-- Equation(s):
-- \C1|Add0~115_combout\ = ((!\C1|i\(0)))
-- \C1|Add0~117\ = CARRY(((\C1|i\(0))))
-- \C1|Add0~117COUT1_140\ = CARRY(((\C1|i\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \C1|i\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C1|Add0~115_combout\,
	cout0 => \C1|Add0~117\,
	cout1 => \C1|Add0~117COUT1_140\);

-- Location: LC_X12_Y12_N7
\C1|Add0~95\ : cyclone_lcell
-- Equation(s):
-- \C1|Add0~95_combout\ = (\C1|i\(4) $ ((!(!\C1|Add0~112\ & \C1|Add0~102\) # (\C1|Add0~112\ & \C1|Add0~102COUT1_144\))))
-- \C1|Add0~97\ = CARRY(((\C1|i\(4) & !\C1|Add0~102\)))
-- \C1|Add0~97COUT1_146\ = CARRY(((\C1|i\(4) & !\C1|Add0~102COUT1_144\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \C1|i\(4),
	cin => \C1|Add0~112\,
	cin0 => \C1|Add0~102\,
	cin1 => \C1|Add0~102COUT1_144\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C1|Add0~95_combout\,
	cout0 => \C1|Add0~97\,
	cout1 => \C1|Add0~97COUT1_146\);

-- Location: LC_X11_Y12_N2
\C1|i[4]\ : cyclone_lcell
-- Equation(s):
-- \C1|i\(4) = DFFEAS(GND, GLOBAL(\Clk~combout\), GLOBAL(\Reset~combout\), , , \C1|Add0~95_combout\, , , VCC)

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
	datac => \C1|Add0~95_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|i\(4));

-- Location: LC_X12_Y12_N8
\C1|Add0~90\ : cyclone_lcell
-- Equation(s):
-- \C1|Add0~90_combout\ = (\C1|i\(5) $ (((!\C1|Add0~112\ & \C1|Add0~97\) # (\C1|Add0~112\ & \C1|Add0~97COUT1_146\))))
-- \C1|Add0~92\ = CARRY(((!\C1|Add0~97\) # (!\C1|i\(5))))
-- \C1|Add0~92COUT1_148\ = CARRY(((!\C1|Add0~97COUT1_146\) # (!\C1|i\(5))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \C1|i\(5),
	cin => \C1|Add0~112\,
	cin0 => \C1|Add0~97\,
	cin1 => \C1|Add0~97COUT1_146\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C1|Add0~90_combout\,
	cout0 => \C1|Add0~92\,
	cout1 => \C1|Add0~92COUT1_148\);

-- Location: LC_X12_Y12_N0
\C1|i[5]\ : cyclone_lcell
-- Equation(s):
-- \C1|i\(5) = DFFEAS(GND, GLOBAL(\Clk~combout\), GLOBAL(\Reset~combout\), , , \C1|Add0~90_combout\, , , VCC)

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
	datac => \C1|Add0~90_combout\,
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|i\(5));

-- Location: LC_X12_Y12_N9
\C1|Add0~85\ : cyclone_lcell
-- Equation(s):
-- \C1|Add0~85_combout\ = (\C1|i\(6) $ ((!(!\C1|Add0~112\ & \C1|Add0~92\) # (\C1|Add0~112\ & \C1|Add0~92COUT1_148\))))
-- \C1|Add0~87\ = CARRY(((\C1|i\(6) & !\C1|Add0~92COUT1_148\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \C1|i\(6),
	cin => \C1|Add0~112\,
	cin0 => \C1|Add0~92\,
	cin1 => \C1|Add0~92COUT1_148\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C1|Add0~85_combout\,
	cout => \C1|Add0~87\);

-- Location: LC_X12_Y11_N0
\C1|Add0~80\ : cyclone_lcell
-- Equation(s):
-- \C1|Add0~80_combout\ = (\C1|i\(7) $ ((\C1|Add0~87\)))
-- \C1|Add0~82\ = CARRY(((!\C1|Add0~87\) # (!\C1|i\(7))))
-- \C1|Add0~82COUT1_150\ = CARRY(((!\C1|Add0~87\) # (!\C1|i\(7))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \C1|i\(7),
	cin => \C1|Add0~87\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C1|Add0~80_combout\,
	cout0 => \C1|Add0~82\,
	cout1 => \C1|Add0~82COUT1_150\);

-- Location: LC_X11_Y11_N9
\C1|i[7]\ : cyclone_lcell
-- Equation(s):
-- \C1|Equal0~5\ = (!\C1|i\(6) & (!\C1|i\(4) & (!D1_i[7] & !\C1|i\(5))))
-- \C1|i\(7) = DFFEAS(\C1|Equal0~5\, GLOBAL(\Clk~combout\), GLOBAL(\Reset~combout\), , , \C1|Add0~80_combout\, , , VCC)

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
	dataa => \C1|i\(6),
	datab => \C1|i\(4),
	datac => \C1|Add0~80_combout\,
	datad => \C1|i\(5),
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C1|Equal0~5\,
	regout => \C1|i\(7));

-- Location: LC_X12_Y11_N1
\C1|Add0~70\ : cyclone_lcell
-- Equation(s):
-- \C1|Add0~70_combout\ = (\C1|i\(8) $ ((!(!\C1|Add0~87\ & \C1|Add0~82\) # (\C1|Add0~87\ & \C1|Add0~82COUT1_150\))))
-- \C1|Add0~72\ = CARRY(((\C1|i\(8) & !\C1|Add0~82\)))
-- \C1|Add0~72COUT1_152\ = CARRY(((\C1|i\(8) & !\C1|Add0~82COUT1_150\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \C1|i\(8),
	cin => \C1|Add0~87\,
	cin0 => \C1|Add0~82\,
	cin1 => \C1|Add0~82COUT1_150\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C1|Add0~70_combout\,
	cout0 => \C1|Add0~72\,
	cout1 => \C1|Add0~72COUT1_152\);

-- Location: LC_X13_Y11_N9
\C1|i[8]\ : cyclone_lcell
-- Equation(s):
-- \C1|i\(8) = DFFEAS((\C1|Add0~70_combout\ & (((!\C1|Equal0~5\) # (!\C1|Equal0~4_combout\)) # (!\C1|Equal0~6\))), GLOBAL(\Clk~combout\), GLOBAL(\Reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2aaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \C1|Add0~70_combout\,
	datab => \C1|Equal0~6\,
	datac => \C1|Equal0~4_combout\,
	datad => \C1|Equal0~5\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|i\(8));

-- Location: LC_X12_Y11_N2
\C1|Add0~65\ : cyclone_lcell
-- Equation(s):
-- \C1|Add0~65_combout\ = \C1|i\(9) $ (((((!\C1|Add0~87\ & \C1|Add0~72\) # (\C1|Add0~87\ & \C1|Add0~72COUT1_152\)))))
-- \C1|Add0~67\ = CARRY(((!\C1|Add0~72\)) # (!\C1|i\(9)))
-- \C1|Add0~67COUT1_154\ = CARRY(((!\C1|Add0~72COUT1_152\)) # (!\C1|i\(9)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C1|i\(9),
	cin => \C1|Add0~87\,
	cin0 => \C1|Add0~72\,
	cin1 => \C1|Add0~72COUT1_152\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C1|Add0~65_combout\,
	cout0 => \C1|Add0~67\,
	cout1 => \C1|Add0~67COUT1_154\);

-- Location: LC_X13_Y11_N3
\C1|i[9]\ : cyclone_lcell
-- Equation(s):
-- \C1|i\(9) = DFFEAS((\C1|Add0~65_combout\ & (((!\C1|Equal0~4_combout\) # (!\C1|Equal0~6\)) # (!\C1|Equal0~5\))), GLOBAL(\Clk~combout\), GLOBAL(\Reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4ccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \C1|Equal0~5\,
	datab => \C1|Add0~65_combout\,
	datac => \C1|Equal0~6\,
	datad => \C1|Equal0~4_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|i\(9));

-- Location: LC_X12_Y11_N3
\C1|Add0~75\ : cyclone_lcell
-- Equation(s):
-- \C1|Add0~75_combout\ = \C1|i\(10) $ ((((!(!\C1|Add0~87\ & \C1|Add0~67\) # (\C1|Add0~87\ & \C1|Add0~67COUT1_154\)))))
-- \C1|Add0~77\ = CARRY((\C1|i\(10) & ((!\C1|Add0~67\))))
-- \C1|Add0~77COUT1_156\ = CARRY((\C1|i\(10) & ((!\C1|Add0~67COUT1_154\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C1|i\(10),
	cin => \C1|Add0~87\,
	cin0 => \C1|Add0~67\,
	cin1 => \C1|Add0~67COUT1_154\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C1|Add0~75_combout\,
	cout0 => \C1|Add0~77\,
	cout1 => \C1|Add0~77COUT1_156\);

-- Location: LC_X13_Y11_N7
\C1|i[10]\ : cyclone_lcell
-- Equation(s):
-- \C1|Equal0~3\ = (\C1|i\(8) & (\C1|i\(11) & (!D1_i[10] & \C1|i\(9))))
-- \C1|i\(10) = DFFEAS(\C1|Equal0~3\, GLOBAL(\Clk~combout\), GLOBAL(\Reset~combout\), , , \C1|Add0~75_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \C1|i\(8),
	datab => \C1|i\(11),
	datac => \C1|Add0~75_combout\,
	datad => \C1|i\(9),
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C1|Equal0~3\,
	regout => \C1|i\(10));

-- Location: LC_X12_Y11_N4
\C1|Add0~60\ : cyclone_lcell
-- Equation(s):
-- \C1|Add0~60_combout\ = \C1|i\(11) $ (((((!\C1|Add0~87\ & \C1|Add0~77\) # (\C1|Add0~87\ & \C1|Add0~77COUT1_156\)))))
-- \C1|Add0~62\ = CARRY(((!\C1|Add0~77COUT1_156\)) # (!\C1|i\(11)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C1|i\(11),
	cin => \C1|Add0~87\,
	cin0 => \C1|Add0~77\,
	cin1 => \C1|Add0~77COUT1_156\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C1|Add0~60_combout\,
	cout => \C1|Add0~62\);

-- Location: LC_X13_Y11_N8
\C1|i[11]\ : cyclone_lcell
-- Equation(s):
-- \C1|i\(11) = DFFEAS((\C1|Add0~60_combout\ & (((!\C1|Equal0~4_combout\) # (!\C1|Equal0~6\)) # (!\C1|Equal0~5\))), GLOBAL(\Clk~combout\), GLOBAL(\Reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \C1|Equal0~5\,
	datab => \C1|Equal0~6\,
	datac => \C1|Equal0~4_combout\,
	datad => \C1|Add0~60_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|i\(11));

-- Location: LC_X12_Y11_N5
\C1|Add0~40\ : cyclone_lcell
-- Equation(s):
-- \C1|Add0~40_combout\ = \C1|i\(12) $ ((((!\C1|Add0~62\))))
-- \C1|Add0~42\ = CARRY((\C1|i\(12) & ((!\C1|Add0~62\))))
-- \C1|Add0~42COUT1_158\ = CARRY((\C1|i\(12) & ((!\C1|Add0~62\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C1|i\(12),
	cin => \C1|Add0~62\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C1|Add0~40_combout\,
	cout0 => \C1|Add0~42\,
	cout1 => \C1|Add0~42COUT1_158\);

-- Location: LC_X13_Y11_N6
\C1|i[12]\ : cyclone_lcell
-- Equation(s):
-- \C1|i\(12) = DFFEAS((\C1|Add0~40_combout\ & (((!\C1|Equal0~5\) # (!\C1|Equal0~6\)) # (!\C1|Equal0~4_combout\))), GLOBAL(\Clk~combout\), GLOBAL(\Reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "70f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \C1|Equal0~4_combout\,
	datab => \C1|Equal0~6\,
	datac => \C1|Add0~40_combout\,
	datad => \C1|Equal0~5\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|i\(12));

-- Location: LC_X12_Y11_N6
\C1|Add0~55\ : cyclone_lcell
-- Equation(s):
-- \C1|Add0~55_combout\ = (\C1|i\(13) $ (((!\C1|Add0~62\ & \C1|Add0~42\) # (\C1|Add0~62\ & \C1|Add0~42COUT1_158\))))
-- \C1|Add0~57\ = CARRY(((!\C1|Add0~42\) # (!\C1|i\(13))))
-- \C1|Add0~57COUT1_160\ = CARRY(((!\C1|Add0~42COUT1_158\) # (!\C1|i\(13))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \C1|i\(13),
	cin => \C1|Add0~62\,
	cin0 => \C1|Add0~42\,
	cin1 => \C1|Add0~42COUT1_158\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C1|Add0~55_combout\,
	cout0 => \C1|Add0~57\,
	cout1 => \C1|Add0~57COUT1_160\);

-- Location: LC_X13_Y11_N5
\C1|i[13]\ : cyclone_lcell
-- Equation(s):
-- \C1|i\(13) = DFFEAS((((\C1|Add0~55_combout\))), GLOBAL(\Clk~combout\), GLOBAL(\Reset~combout\), , , , , , )

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
	datad => \C1|Add0~55_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|i\(13));

-- Location: LC_X12_Y11_N7
\C1|Add0~50\ : cyclone_lcell
-- Equation(s):
-- \C1|Add0~50_combout\ = (\C1|i\(14) $ ((!(!\C1|Add0~62\ & \C1|Add0~57\) # (\C1|Add0~62\ & \C1|Add0~57COUT1_160\))))
-- \C1|Add0~52\ = CARRY(((\C1|i\(14) & !\C1|Add0~57\)))
-- \C1|Add0~52COUT1_162\ = CARRY(((\C1|i\(14) & !\C1|Add0~57COUT1_160\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \C1|i\(14),
	cin => \C1|Add0~62\,
	cin0 => \C1|Add0~57\,
	cin1 => \C1|Add0~57COUT1_160\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C1|Add0~50_combout\,
	cout0 => \C1|Add0~52\,
	cout1 => \C1|Add0~52COUT1_162\);

-- Location: LC_X13_Y11_N0
\C1|i[14]\ : cyclone_lcell
-- Equation(s):
-- \C1|i\(14) = DFFEAS((((\C1|Add0~50_combout\))), GLOBAL(\Clk~combout\), GLOBAL(\Reset~combout\), , , , , , )

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
	datad => \C1|Add0~50_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|i\(14));

-- Location: LC_X13_Y11_N4
\C1|i[15]\ : cyclone_lcell
-- Equation(s):
-- \C1|Equal0~2\ = (\C1|i\(12) & (!\C1|i\(13) & (!D1_i[15] & !\C1|i\(14))))
-- \C1|i\(15) = DFFEAS(\C1|Equal0~2\, GLOBAL(\Clk~combout\), GLOBAL(\Reset~combout\), , , \C1|Add0~45_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0002",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \C1|i\(12),
	datab => \C1|i\(13),
	datac => \C1|Add0~45_combout\,
	datad => \C1|i\(14),
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C1|Equal0~2\,
	regout => \C1|i\(15));

-- Location: LC_X12_Y11_N8
\C1|Add0~45\ : cyclone_lcell
-- Equation(s):
-- \C1|Add0~45_combout\ = (\C1|i\(15) $ (((!\C1|Add0~62\ & \C1|Add0~52\) # (\C1|Add0~62\ & \C1|Add0~52COUT1_162\))))
-- \C1|Add0~47\ = CARRY(((!\C1|Add0~52\) # (!\C1|i\(15))))
-- \C1|Add0~47COUT1_164\ = CARRY(((!\C1|Add0~52COUT1_162\) # (!\C1|i\(15))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \C1|i\(15),
	cin => \C1|Add0~62\,
	cin0 => \C1|Add0~52\,
	cin1 => \C1|Add0~52COUT1_162\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C1|Add0~45_combout\,
	cout0 => \C1|Add0~47\,
	cout1 => \C1|Add0~47COUT1_164\);

-- Location: LC_X12_Y11_N9
\C1|Add0~30\ : cyclone_lcell
-- Equation(s):
-- \C1|Add0~30_combout\ = \C1|i\(16) $ ((((!(!\C1|Add0~62\ & \C1|Add0~47\) # (\C1|Add0~62\ & \C1|Add0~47COUT1_164\)))))
-- \C1|Add0~32\ = CARRY((\C1|i\(16) & ((!\C1|Add0~47COUT1_164\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C1|i\(16),
	cin => \C1|Add0~62\,
	cin0 => \C1|Add0~47\,
	cin1 => \C1|Add0~47COUT1_164\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C1|Add0~30_combout\,
	cout => \C1|Add0~32\);

-- Location: LC_X11_Y11_N6
\C1|i[16]\ : cyclone_lcell
-- Equation(s):
-- \C1|i\(16) = DFFEAS((\C1|Add0~30_combout\ & (((!\C1|Equal0~4_combout\) # (!\C1|Equal0~6\)) # (!\C1|Equal0~5\))), GLOBAL(\Clk~combout\), GLOBAL(\Reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4ccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \C1|Equal0~5\,
	datab => \C1|Add0~30_combout\,
	datac => \C1|Equal0~6\,
	datad => \C1|Equal0~4_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|i\(16));

-- Location: LC_X12_Y10_N0
\C1|Add0~25\ : cyclone_lcell
-- Equation(s):
-- \C1|Add0~25_combout\ = (\C1|i\(17) $ ((\C1|Add0~32\)))
-- \C1|Add0~27\ = CARRY(((!\C1|Add0~32\) # (!\C1|i\(17))))
-- \C1|Add0~27COUT1_166\ = CARRY(((!\C1|Add0~32\) # (!\C1|i\(17))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \C1|i\(17),
	cin => \C1|Add0~32\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C1|Add0~25_combout\,
	cout0 => \C1|Add0~27\,
	cout1 => \C1|Add0~27COUT1_166\);

-- Location: LC_X13_Y10_N5
\C1|i[17]\ : cyclone_lcell
-- Equation(s):
-- \C1|i\(17) = DFFEAS((\C1|Add0~25_combout\ & (((!\C1|Equal0~4_combout\) # (!\C1|Equal0~5\)) # (!\C1|Equal0~6\))), GLOBAL(\Clk~combout\), GLOBAL(\Reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "70f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \C1|Equal0~6\,
	datab => \C1|Equal0~5\,
	datac => \C1|Add0~25_combout\,
	datad => \C1|Equal0~4_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|i\(17));

-- Location: LC_X12_Y10_N1
\C1|Add0~20\ : cyclone_lcell
-- Equation(s):
-- \C1|Add0~20_combout\ = (\C1|i\(18) $ ((!(!\C1|Add0~32\ & \C1|Add0~27\) # (\C1|Add0~32\ & \C1|Add0~27COUT1_166\))))
-- \C1|Add0~22\ = CARRY(((\C1|i\(18) & !\C1|Add0~27\)))
-- \C1|Add0~22COUT1_168\ = CARRY(((\C1|i\(18) & !\C1|Add0~27COUT1_166\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \C1|i\(18),
	cin => \C1|Add0~32\,
	cin0 => \C1|Add0~27\,
	cin1 => \C1|Add0~27COUT1_166\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C1|Add0~20_combout\,
	cout0 => \C1|Add0~22\,
	cout1 => \C1|Add0~22COUT1_168\);

-- Location: LC_X13_Y10_N9
\C1|i[18]\ : cyclone_lcell
-- Equation(s):
-- \C1|i\(18) = DFFEAS((\C1|Add0~20_combout\ & (((!\C1|Equal0~4_combout\) # (!\C1|Equal0~6\)) # (!\C1|Equal0~5\))), GLOBAL(\Clk~combout\), GLOBAL(\Reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2aaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \C1|Add0~20_combout\,
	datab => \C1|Equal0~5\,
	datac => \C1|Equal0~6\,
	datad => \C1|Equal0~4_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|i\(18));

-- Location: LC_X12_Y10_N2
\C1|Add0~35\ : cyclone_lcell
-- Equation(s):
-- \C1|Add0~35_combout\ = (\C1|i\(19) $ (((!\C1|Add0~32\ & \C1|Add0~22\) # (\C1|Add0~32\ & \C1|Add0~22COUT1_168\))))
-- \C1|Add0~37\ = CARRY(((!\C1|Add0~22\) # (!\C1|i\(19))))
-- \C1|Add0~37COUT1_170\ = CARRY(((!\C1|Add0~22COUT1_168\) # (!\C1|i\(19))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \C1|i\(19),
	cin => \C1|Add0~32\,
	cin0 => \C1|Add0~22\,
	cin1 => \C1|Add0~22COUT1_168\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C1|Add0~35_combout\,
	cout0 => \C1|Add0~37\,
	cout1 => \C1|Add0~37COUT1_170\);

-- Location: LC_X13_Y10_N4
\C1|i[19]\ : cyclone_lcell
-- Equation(s):
-- \C1|Equal0~1\ = (\C1|i\(18) & (\C1|i\(17) & (!D1_i[19] & \C1|i\(16))))
-- \C1|i\(19) = DFFEAS(\C1|Equal0~1\, GLOBAL(\Clk~combout\), GLOBAL(\Reset~combout\), , , \C1|Add0~35_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \C1|i\(18),
	datab => \C1|i\(17),
	datac => \C1|Add0~35_combout\,
	datad => \C1|i\(16),
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C1|Equal0~1\,
	regout => \C1|i\(19));

-- Location: LC_X12_Y10_N3
\C1|Add0~10\ : cyclone_lcell
-- Equation(s):
-- \C1|Add0~10_combout\ = (\C1|i\(20) $ ((!(!\C1|Add0~32\ & \C1|Add0~37\) # (\C1|Add0~32\ & \C1|Add0~37COUT1_170\))))
-- \C1|Add0~12\ = CARRY(((\C1|i\(20) & !\C1|Add0~37\)))
-- \C1|Add0~12COUT1_172\ = CARRY(((\C1|i\(20) & !\C1|Add0~37COUT1_170\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \C1|i\(20),
	cin => \C1|Add0~32\,
	cin0 => \C1|Add0~37\,
	cin1 => \C1|Add0~37COUT1_170\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C1|Add0~10_combout\,
	cout0 => \C1|Add0~12\,
	cout1 => \C1|Add0~12COUT1_172\);

-- Location: LC_X12_Y10_N8
\C1|i[20]\ : cyclone_lcell
-- Equation(s):
-- \C1|i\(20) = DFFEAS((\C1|Add0~10_combout\ & (((!\C1|Equal0~4_combout\) # (!\C1|Equal0~5\)) # (!\C1|Equal0~6\))), GLOBAL(\Clk~combout\), GLOBAL(\Reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "70f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \C1|Equal0~6\,
	datab => \C1|Equal0~5\,
	datac => \C1|Add0~10_combout\,
	datad => \C1|Equal0~4_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|i\(20));

-- Location: LC_X12_Y10_N4
\C1|Add0~5\ : cyclone_lcell
-- Equation(s):
-- \C1|Add0~5_combout\ = \C1|i\(21) $ (((((!\C1|Add0~32\ & \C1|Add0~12\) # (\C1|Add0~32\ & \C1|Add0~12COUT1_172\)))))
-- \C1|Add0~7\ = CARRY(((!\C1|Add0~12COUT1_172\)) # (!\C1|i\(21)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C1|i\(21),
	cin => \C1|Add0~32\,
	cin0 => \C1|Add0~12\,
	cin1 => \C1|Add0~12COUT1_172\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C1|Add0~5_combout\,
	cout => \C1|Add0~7\);

-- Location: LC_X13_Y10_N8
\C1|i[21]\ : cyclone_lcell
-- Equation(s):
-- \C1|i\(21) = DFFEAS((\C1|Add0~5_combout\ & (((!\C1|Equal0~4_combout\) # (!\C1|Equal0~5\)) # (!\C1|Equal0~6\))), GLOBAL(\Clk~combout\), GLOBAL(\Reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4ccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \C1|Equal0~6\,
	datab => \C1|Add0~5_combout\,
	datac => \C1|Equal0~5\,
	datad => \C1|Equal0~4_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|i\(21));

-- Location: LC_X12_Y10_N5
\C1|Add0~15\ : cyclone_lcell
-- Equation(s):
-- \C1|Add0~15_combout\ = \C1|i\(22) $ ((((!\C1|Add0~7\))))
-- \C1|Add0~17\ = CARRY((\C1|i\(22) & ((!\C1|Add0~7\))))
-- \C1|Add0~17COUT1_174\ = CARRY((\C1|i\(22) & ((!\C1|Add0~7\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C1|i\(22),
	cin => \C1|Add0~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C1|Add0~15_combout\,
	cout0 => \C1|Add0~17\,
	cout1 => \C1|Add0~17COUT1_174\);

-- Location: LC_X12_Y10_N7
\C1|i[22]\ : cyclone_lcell
-- Equation(s):
-- \C1|Equal0~0\ = (\C1|i\(23) & (\C1|i\(20) & (!D1_i[22] & \C1|i\(21))))
-- \C1|i\(22) = DFFEAS(\C1|Equal0~0\, GLOBAL(\Clk~combout\), GLOBAL(\Reset~combout\), , , \C1|Add0~15_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \C1|i\(23),
	datab => \C1|i\(20),
	datac => \C1|Add0~15_combout\,
	datad => \C1|i\(21),
	aclr => \ALT_INV_Reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C1|Equal0~0\,
	regout => \C1|i\(22));

-- Location: LC_X12_Y10_N6
\C1|Add0~0\ : cyclone_lcell
-- Equation(s):
-- \C1|Add0~0_combout\ = \C1|i\(23) $ (((((!\C1|Add0~7\ & \C1|Add0~17\) # (\C1|Add0~7\ & \C1|Add0~17COUT1_174\)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C1|i\(23),
	cin => \C1|Add0~7\,
	cin0 => \C1|Add0~17\,
	cin1 => \C1|Add0~17COUT1_174\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C1|Add0~0_combout\);

-- Location: LC_X12_Y10_N9
\C1|i[23]\ : cyclone_lcell
-- Equation(s):
-- \C1|i\(23) = DFFEAS((\C1|Add0~0_combout\ & (((!\C1|Equal0~4_combout\) # (!\C1|Equal0~6\)) # (!\C1|Equal0~5\))), GLOBAL(\Clk~combout\), GLOBAL(\Reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2aaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \C1|Add0~0_combout\,
	datab => \C1|Equal0~5\,
	datac => \C1|Equal0~6\,
	datad => \C1|Equal0~4_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|i\(23));

-- Location: LC_X13_Y11_N2
\C1|Equal0~4\ : cyclone_lcell
-- Equation(s):
-- \C1|Equal0~4_combout\ = (\C1|Equal0~3\ & (\C1|Equal0~2\ & (\C1|Equal0~0\ & \C1|Equal0~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Equal0~3\,
	datab => \C1|Equal0~2\,
	datac => \C1|Equal0~0\,
	datad => \C1|Equal0~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C1|Equal0~4_combout\);

-- Location: LC_X13_Y12_N4
\C1|i[0]\ : cyclone_lcell
-- Equation(s):
-- \C1|i\(0) = DFFEAS((\C1|Add0~115_combout\ & (((!\C1|Equal0~4_combout\) # (!\C1|Equal0~6\)) # (!\C1|Equal0~5\))), GLOBAL(\Clk~combout\), GLOBAL(\Reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "70f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \C1|Equal0~5\,
	datab => \C1|Equal0~6\,
	datac => \C1|Add0~115_combout\,
	datad => \C1|Equal0~4_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|i\(0));

-- Location: LC_X12_Y12_N4
\C1|Add0~110\ : cyclone_lcell
-- Equation(s):
-- \C1|Add0~110_combout\ = (\C1|i\(1) $ ((\C1|Add0~117\)))
-- \C1|Add0~112\ = CARRY(((!\C1|Add0~117COUT1_140\) # (!\C1|i\(1))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \C1|i\(1),
	cin0 => \C1|Add0~117\,
	cin1 => \C1|Add0~117COUT1_140\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C1|Add0~110_combout\,
	cout => \C1|Add0~112\);

-- Location: LC_X13_Y12_N9
\C1|i[1]\ : cyclone_lcell
-- Equation(s):
-- \C1|i\(1) = DFFEAS((((\C1|Add0~110_combout\))), GLOBAL(\Clk~combout\), GLOBAL(\Reset~combout\), , , , , , )

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
	datad => \C1|Add0~110_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|i\(1));

-- Location: LC_X11_Y12_N4
\C1|i[6]\ : cyclone_lcell
-- Equation(s):
-- \C1|i\(6) = DFFEAS((((\C1|Add0~85_combout\))), GLOBAL(\Clk~combout\), GLOBAL(\Reset~combout\), , , , , , )

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
	datad => \C1|Add0~85_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|i\(6));

-- Location: LC_X11_Y11_N8
\C1|s_out\ : cyclone_lcell
-- Equation(s):
-- \C1|s_out~regout\ = DFFEAS((\C1|Equal0~5\ & (((\C1|Equal0~6\ & \C1|Equal0~4_combout\)))), GLOBAL(\Clk~combout\), GLOBAL(\Reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \C1|Equal0~5\,
	datac => \C1|Equal0~6\,
	datad => \C1|Equal0~4_combout\,
	aclr => \ALT_INV_Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|s_out~regout\);

-- Location: LC_X12_Y14_N3
\C2|Selector39~0\ : cyclone_lcell
-- Equation(s):
-- \C2|Selector39~0_combout\ = (((!\C2|EtatPresent.etat1~regout\ & !\C2|EtatPresent.etat2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \C2|EtatPresent.etat1~regout\,
	datad => \C2|EtatPresent.etat2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C2|Selector39~0_combout\);

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

-- Location: LC_X13_Y14_N1
\C0|Filter[3]\ : cyclone_lcell
-- Equation(s):
-- \C0|Equal1~1\ = (!\C0|Filter\(0) & (!\C0|Filter\(1) & (!C1_Filter[3] & !\C0|Filter\(2))))
-- \C0|Filter\(3) = DFFEAS(\C0|Equal1~1\, GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , , \C0|Filter\(4), , , VCC)

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
	dataa => \C0|Filter\(0),
	datab => \C0|Filter\(1),
	datac => \C0|Filter\(4),
	datad => \C0|Filter\(2),
	aclr => \C2|RESET~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C0|Equal1~1\,
	regout => \C0|Filter\(3));

-- Location: LC_X13_Y14_N6
\C0|Filter[2]\ : cyclone_lcell
-- Equation(s):
-- \C0|Equal0~1\ = (\C0|Filter\(0) & (\C0|Filter\(1) & (C1_Filter[2] & \C0|Filter\(3))))
-- \C0|Filter\(2) = DFFEAS(\C0|Equal0~1\, GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , , \C0|Filter\(3), , , VCC)

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
	dataa => \C0|Filter\(0),
	datab => \C0|Filter\(1),
	datac => \C0|Filter\(3),
	datad => \C0|Filter\(3),
	aclr => \C2|RESET~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C0|Equal0~1\,
	regout => \C0|Filter\(2));

-- Location: LC_X13_Y14_N8
\C0|Filter[1]\ : cyclone_lcell
-- Equation(s):
-- \C0|Filter\(1) = DFFEAS((((\C0|Filter\(2)))), GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , , , , , )

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
	datad => \C0|Filter\(2),
	aclr => \C2|RESET~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|Filter\(1));

-- Location: LC_X13_Y14_N7
\C0|Filter[0]\ : cyclone_lcell
-- Equation(s):
-- \C0|Filter\(0) = DFFEAS(GND, GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , , \C0|Filter\(1), , , VCC)

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
	datac => \C0|Filter\(1),
	aclr => \C2|RESET~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|Filter\(0));

-- Location: LC_X13_Y14_N0
\C0|Filter[7]\ : cyclone_lcell
-- Equation(s):
-- \C0|Equal1~0\ = (((!C1_Filter[7] & !\C0|Filter\(6))))
-- \C0|Filter\(7) = DFFEAS(\C0|Equal1~0\, GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , , \PS2_Clk~combout\, , , VCC)

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
	datad => \C0|Filter\(6),
	aclr => \C2|RESET~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C0|Equal1~0\,
	regout => \C0|Filter\(7));

-- Location: LC_X13_Y14_N2
\C0|Filter[5]\ : cyclone_lcell
-- Equation(s):
-- \C0|Equal1~2\ = (\C0|Equal1~1\ & (!\C0|Filter\(4) & (!C1_Filter[5] & \C0|Equal1~0\)))
-- \C0|Filter\(5) = DFFEAS(\C0|Equal1~2\, GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , , \C0|Filter\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \C0|Equal1~1\,
	datab => \C0|Filter\(4),
	datac => \C0|Filter\(6),
	datad => \C0|Equal1~0\,
	aclr => \C2|RESET~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C0|Equal1~2\,
	regout => \C0|Filter\(5));

-- Location: LC_X13_Y14_N4
\C0|Filter[4]\ : cyclone_lcell
-- Equation(s):
-- \C0|Filter\(4) = DFFEAS((((\C0|Filter\(5)))), GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , , , , , )

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
	datad => \C0|Filter\(5),
	aclr => \C2|RESET~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|Filter\(4));

-- Location: LC_X13_Y14_N5
\C0|Filter[6]\ : cyclone_lcell
-- Equation(s):
-- \C0|Equal0~0\ = (\C0|Filter\(7) & (\C0|Filter\(4) & (C1_Filter[6] & \C0|Filter\(5))))
-- \C0|Filter\(6) = DFFEAS(\C0|Equal0~0\, GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , , \C0|Filter\(7), , , VCC)

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
	dataa => \C0|Filter\(7),
	datab => \C0|Filter\(4),
	datac => \C0|Filter\(7),
	datad => \C0|Filter\(5),
	aclr => \C2|RESET~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C0|Equal0~0\,
	regout => \C0|Filter\(6));

-- Location: LC_X13_Y14_N3
\C0|PS2_Clk_f\ : cyclone_lcell
-- Equation(s):
-- \C0|PS2_Clk_f~regout\ = DFFEAS((\C0|Equal0~0\ & ((\C0|Equal0~1\) # ((\C0|PS2_Clk_f~regout\ & !\C0|Equal1~2\)))) # (!\C0|Equal0~0\ & (\C0|PS2_Clk_f~regout\ & ((!\C0|Equal1~2\)))), GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0ec",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \C0|Equal0~0\,
	datab => \C0|PS2_Clk_f~regout\,
	datac => \C0|Equal0~1\,
	datad => \C0|Equal1~2\,
	aclr => \C2|RESET~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|PS2_Clk_f~regout\);

-- Location: LC_X13_Y14_N9
\C0|Fall_Clk\ : cyclone_lcell
-- Equation(s):
-- \C0|Fall_Clk~regout\ = DFFEAS(((\C0|PS2_Clk_f~regout\ & (\C0|Equal1~2\))), GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \C0|PS2_Clk_f~regout\,
	datac => \C0|Equal1~2\,
	aclr => \C2|RESET~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|Fall_Clk~regout\);

-- Location: LC_X13_Y15_N9
\C0|Scan_Code[7]~1\ : cyclone_lcell
-- Equation(s):
-- \C0|Scan_Code[7]~1_combout\ = (((!\C0|LessThan0~0_combout\)) # (!\C0|State~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \C0|State~regout\,
	datad => \C0|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C0|Scan_Code[7]~1_combout\);

-- Location: LC_X13_Y15_N1
\C0|Bit_Cnt[0]\ : cyclone_lcell
-- Equation(s):
-- \C0|Bit_Cnt\(0) = DFFEAS(\C0|Bit_Cnt\(0) $ ((\C0|Fall_Clk~regout\)), GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , \C0|Scan_Code[7]~1_combout\, , , !\C0|State~regout\, )
-- \C0|Bit_Cnt[0]~3\ = CARRY((\C0|Bit_Cnt\(0) & (\C0|Fall_Clk~regout\)))
-- \C0|Bit_Cnt[0]~3COUT1_13\ = CARRY((\C0|Bit_Cnt\(0) & (\C0|Fall_Clk~regout\)))

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
	dataa => \C0|Bit_Cnt\(0),
	datab => \C0|Fall_Clk~regout\,
	aclr => \C2|RESET~regout\,
	sclr => \C0|ALT_INV_State~regout\,
	ena => \C0|Scan_Code[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|Bit_Cnt\(0),
	cout0 => \C0|Bit_Cnt[0]~3\,
	cout1 => \C0|Bit_Cnt[0]~3COUT1_13\);

-- Location: LC_X13_Y15_N2
\C0|Bit_Cnt[1]\ : cyclone_lcell
-- Equation(s):
-- \C0|Bit_Cnt\(1) = DFFEAS(\C0|Bit_Cnt\(1) $ ((((\C0|Bit_Cnt[0]~3\)))), GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , \C0|Scan_Code[7]~1_combout\, , , !\C0|State~regout\, )
-- \C0|Bit_Cnt[1]~5\ = CARRY(((!\C0|Bit_Cnt[0]~3\)) # (!\C0|Bit_Cnt\(1)))
-- \C0|Bit_Cnt[1]~5COUT1_15\ = CARRY(((!\C0|Bit_Cnt[0]~3COUT1_13\)) # (!\C0|Bit_Cnt\(1)))

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
	dataa => \C0|Bit_Cnt\(1),
	aclr => \C2|RESET~regout\,
	sclr => \C0|ALT_INV_State~regout\,
	ena => \C0|Scan_Code[7]~1_combout\,
	cin0 => \C0|Bit_Cnt[0]~3\,
	cin1 => \C0|Bit_Cnt[0]~3COUT1_13\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|Bit_Cnt\(1),
	cout0 => \C0|Bit_Cnt[1]~5\,
	cout1 => \C0|Bit_Cnt[1]~5COUT1_15\);

-- Location: LC_X13_Y15_N3
\C0|Bit_Cnt[2]\ : cyclone_lcell
-- Equation(s):
-- \C0|Bit_Cnt\(2) = DFFEAS((\C0|Bit_Cnt\(2) $ ((!\C0|Bit_Cnt[1]~5\))), GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , \C0|Scan_Code[7]~1_combout\, , , !\C0|State~regout\, )
-- \C0|Bit_Cnt[2]~7\ = CARRY(((\C0|Bit_Cnt\(2) & !\C0|Bit_Cnt[1]~5\)))
-- \C0|Bit_Cnt[2]~7COUT1_17\ = CARRY(((\C0|Bit_Cnt\(2) & !\C0|Bit_Cnt[1]~5COUT1_15\)))

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
	datab => \C0|Bit_Cnt\(2),
	aclr => \C2|RESET~regout\,
	sclr => \C0|ALT_INV_State~regout\,
	ena => \C0|Scan_Code[7]~1_combout\,
	cin0 => \C0|Bit_Cnt[1]~5\,
	cin1 => \C0|Bit_Cnt[1]~5COUT1_15\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|Bit_Cnt\(2),
	cout0 => \C0|Bit_Cnt[2]~7\,
	cout1 => \C0|Bit_Cnt[2]~7COUT1_17\);

-- Location: LC_X13_Y15_N4
\C0|Bit_Cnt[3]\ : cyclone_lcell
-- Equation(s):
-- \C0|Bit_Cnt\(3) = DFFEAS((\C0|Bit_Cnt\(3) $ ((\C0|Bit_Cnt[2]~7\))), GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , \C0|Scan_Code[7]~1_combout\, , , !\C0|State~regout\, )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \C0|Bit_Cnt\(3),
	aclr => \C2|RESET~regout\,
	sclr => \C0|ALT_INV_State~regout\,
	ena => \C0|Scan_Code[7]~1_combout\,
	cin0 => \C0|Bit_Cnt[2]~7\,
	cin1 => \C0|Bit_Cnt[2]~7COUT1_17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|Bit_Cnt\(3));

-- Location: LC_X13_Y15_N8
\C0|LessThan0~0\ : cyclone_lcell
-- Equation(s):
-- \C0|LessThan0~0_combout\ = (\C0|Bit_Cnt\(3) & ((\C0|Bit_Cnt\(0)) # ((\C0|Bit_Cnt\(1)) # (\C0|Bit_Cnt\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccc8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C0|Bit_Cnt\(0),
	datab => \C0|Bit_Cnt\(3),
	datac => \C0|Bit_Cnt\(1),
	datad => \C0|Bit_Cnt\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C0|LessThan0~0_combout\);

-- Location: LC_X13_Y15_N0
\C0|State\ : cyclone_lcell
-- Equation(s):
-- \C0|State~regout\ = DFFEAS((\C0|Fall_Clk~regout\ & ((\C0|State~regout\ & (!\C0|LessThan0~0_combout\)) # (!\C0|State~regout\ & ((!\C0|PS2_Datr~regout\))))) # (!\C0|Fall_Clk~regout\ & (\C0|State~regout\)), GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), 
-- , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4c6e",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \C0|Fall_Clk~regout\,
	datab => \C0|State~regout\,
	datac => \C0|LessThan0~0_combout\,
	datad => \C0|PS2_Datr~regout\,
	aclr => \C2|RESET~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|State~regout\);

-- Location: LC_X13_Y15_N5
\C0|S_Reg[0]~0\ : cyclone_lcell
-- Equation(s):
-- \C0|S_Reg[0]~0_combout\ = ((\C0|State~regout\ & (!\C0|LessThan0~0_combout\ & \C0|Fall_Clk~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \C0|State~regout\,
	datac => \C0|LessThan0~0_combout\,
	datad => \C0|Fall_Clk~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C0|S_Reg[0]~0_combout\);

-- Location: LC_X12_Y15_N2
\C0|S_Reg[6]\ : cyclone_lcell
-- Equation(s):
-- \C0|S_Reg\(6) = DFFEAS(GND, GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , \C0|S_Reg[0]~0_combout\, \C0|S_Reg\(7), , , VCC)

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
	datac => \C0|S_Reg\(7),
	aclr => \C2|RESET~regout\,
	sload => VCC,
	ena => \C0|S_Reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|S_Reg\(6));

-- Location: LC_X12_Y15_N9
\C0|S_Reg[5]\ : cyclone_lcell
-- Equation(s):
-- \C0|S_Reg\(5) = DFFEAS(GND, GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , \C0|S_Reg[0]~0_combout\, \C0|S_Reg\(6), , , VCC)

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
	datac => \C0|S_Reg\(6),
	aclr => \C2|RESET~regout\,
	sload => VCC,
	ena => \C0|S_Reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|S_Reg\(5));

-- Location: LC_X14_Y15_N6
\C0|S_Reg[4]\ : cyclone_lcell
-- Equation(s):
-- \C0|S_Reg\(4) = DFFEAS(GND, GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , \C0|S_Reg[0]~0_combout\, \C0|S_Reg\(5), , , VCC)

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
	datac => \C0|S_Reg\(5),
	aclr => \C2|RESET~regout\,
	sload => VCC,
	ena => \C0|S_Reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|S_Reg\(4));

-- Location: LC_X13_Y15_N6
\C0|Scan_Code[0]~0\ : cyclone_lcell
-- Equation(s):
-- \C0|Scan_Code[0]~0_combout\ = ((\C0|State~regout\ & (\C0|LessThan0~0_combout\ & \C0|Fall_Clk~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \C0|State~regout\,
	datac => \C0|LessThan0~0_combout\,
	datad => \C0|Fall_Clk~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C0|Scan_Code[0]~0_combout\);

-- Location: LC_X14_Y15_N2
\C0|Scan_Code[4]\ : cyclone_lcell
-- Equation(s):
-- \C0|Scan_Code\(4) = DFFEAS((((\C0|S_Reg\(4)))), GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , \C0|Scan_Code[0]~0_combout\, , , , )

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
	datad => \C0|S_Reg\(4),
	aclr => \C2|RESET~regout\,
	ena => \C0|Scan_Code[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|Scan_Code\(4));

-- Location: LC_X14_Y15_N7
\C0|S_Reg[3]\ : cyclone_lcell
-- Equation(s):
-- \C0|S_Reg\(3) = DFFEAS((((\C0|S_Reg\(4)))), GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , \C0|S_Reg[0]~0_combout\, , , , )

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
	datad => \C0|S_Reg\(4),
	aclr => \C2|RESET~regout\,
	ena => \C0|S_Reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|S_Reg\(3));

-- Location: LC_X12_Y15_N5
\C0|S_Reg[2]\ : cyclone_lcell
-- Equation(s):
-- \C0|S_Reg\(2) = DFFEAS(GND, GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , \C0|S_Reg[0]~0_combout\, \C0|S_Reg\(3), , , VCC)

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
	datac => \C0|S_Reg\(3),
	aclr => \C2|RESET~regout\,
	sload => VCC,
	ena => \C0|S_Reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|S_Reg\(2));

-- Location: LC_X12_Y15_N8
\C0|S_Reg[1]\ : cyclone_lcell
-- Equation(s):
-- \C0|S_Reg\(1) = DFFEAS((((\C0|S_Reg\(2)))), GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , \C0|S_Reg[0]~0_combout\, , , , )

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
	datad => \C0|S_Reg\(2),
	aclr => \C2|RESET~regout\,
	ena => \C0|S_Reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|S_Reg\(1));

-- Location: LC_X14_Y15_N5
\C0|Scan_Code[1]\ : cyclone_lcell
-- Equation(s):
-- \C2|Selector34~1\ = (((C1_Scan_Code[1]) # (\C0|Scan_Code\(2))))
-- \C0|Scan_Code\(1) = DFFEAS(\C2|Selector34~1\, GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , \C0|Scan_Code[0]~0_combout\, \C0|S_Reg\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \C0|S_Reg\(1),
	datad => \C0|Scan_Code\(2),
	aclr => \C2|RESET~regout\,
	sload => VCC,
	ena => \C0|Scan_Code[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C2|Selector34~1\,
	regout => \C0|Scan_Code\(1));

-- Location: LC_X14_Y15_N1
\C0|Scan_Code[3]\ : cyclone_lcell
-- Equation(s):
-- \C2|Selector35~0\ = (C1_Scan_Code[3] $ (((\C0|Scan_Code\(0) & \C0|Scan_Code\(1)))))
-- \C0|Scan_Code\(3) = DFFEAS(\C2|Selector35~0\, GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , \C0|Scan_Code[0]~0_combout\, \C0|S_Reg\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3cf0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \C0|Scan_Code\(0),
	datac => \C0|S_Reg\(3),
	datad => \C0|Scan_Code\(1),
	aclr => \C2|RESET~regout\,
	sload => VCC,
	ena => \C0|Scan_Code[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C2|Selector35~0\,
	regout => \C0|Scan_Code\(3));

-- Location: LC_X14_Y15_N4
\C0|Scan_Code[5]\ : cyclone_lcell
-- Equation(s):
-- \C2|Equal0~1\ = (((C1_Scan_Code[5]) # (\C0|Scan_Code\(3))) # (!\C0|Scan_Code\(0))) # (!\C0|Scan_Code\(4))
-- \C0|Scan_Code\(5) = DFFEAS(\C2|Equal0~1\, GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , \C0|Scan_Code[0]~0_combout\, \C0|S_Reg\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff7",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \C0|Scan_Code\(4),
	datab => \C0|Scan_Code\(0),
	datac => \C0|S_Reg\(5),
	datad => \C0|Scan_Code\(3),
	aclr => \C2|RESET~regout\,
	sload => VCC,
	ena => \C0|Scan_Code[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C2|Equal0~1\,
	regout => \C0|Scan_Code\(5));

-- Location: LC_X12_Y14_N8
\C2|EtatPresent.etat1\ : cyclone_lcell
-- Equation(s):
-- \C2|Selector39~2\ = (\C1|s_out~regout\) # ((\C2|EtatPresent.etat0~regout\) # ((E1_EtatPresent.etat1) # (\C2|EtatPresent.etat2~regout\)))
-- \C2|EtatPresent.etat1~regout\ = DFFEAS(\C2|Selector39~2\, GLOBAL(\Reset~combout\), !GLOBAL(\Clk~combout\), , , \C2|EtatFutur.etat1~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Reset~combout\,
	dataa => \C1|s_out~regout\,
	datab => \C2|EtatPresent.etat0~regout\,
	datac => \C2|EtatFutur.etat1~regout\,
	datad => \C2|EtatPresent.etat2~regout\,
	aclr => \Clk~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C2|Selector39~2\,
	regout => \C2|EtatPresent.etat1~regout\);

-- Location: LC_X12_Y14_N9
\C2|EtatFutur.etat1\ : cyclone_lcell
-- Equation(s):
-- \C2|EtatFutur.etat1~regout\ = DFFEAS((!\C2|Equal0~0\ & (\C2|Selector39~0_combout\ & (!\C2|Equal0~1\ & \C2|EtatPresent.etat0~regout\))), GLOBAL(\Reset~combout\), VCC, , \C2|Selector39~2\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Reset~combout\,
	dataa => \C2|Equal0~0\,
	datab => \C2|Selector39~0_combout\,
	datac => \C2|Equal0~1\,
	datad => \C2|EtatPresent.etat0~regout\,
	aclr => GND,
	ena => \C2|Selector39~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|EtatFutur.etat1~regout\);

-- Location: LC_X14_Y10_N7
\C2|EtatPresent.init\ : cyclone_lcell
-- Equation(s):
-- \C2|Selector40~0\ = (!\C1|s_out~regout\ & ((\C2|EtatPresent.etat4~regout\) # ((\C2|EtatPresent.etat3~regout\) # (!E1_EtatPresent.init))))
-- \C2|EtatPresent.init~regout\ = DFFEAS(\C2|Selector40~0\, GLOBAL(\Reset~combout\), !GLOBAL(\Clk~combout\), , , \C2|EtatFutur.init~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3323",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Reset~combout\,
	dataa => \C2|EtatPresent.etat4~regout\,
	datab => \C1|s_out~regout\,
	datac => \C2|EtatFutur.init~regout\,
	datad => \C2|EtatPresent.etat3~regout\,
	aclr => \Clk~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C2|Selector40~0\,
	regout => \C2|EtatPresent.init~regout\);

-- Location: LC_X11_Y13_N9
\C2|EtatPresent.etat2\ : cyclone_lcell
-- Equation(s):
-- \C2|WideOr0~0\ = (\C2|EtatPresent.etat0~regout\) # (((E1_EtatPresent.etat2) # (\C2|EtatPresent.etat4~regout\)))
-- \C2|EtatPresent.etat2~regout\ = DFFEAS(\C2|WideOr0~0\, GLOBAL(\Reset~combout\), !GLOBAL(\Clk~combout\), , , \C2|EtatFutur.etat2~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffa",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Reset~combout\,
	dataa => \C2|EtatPresent.etat0~regout\,
	datac => \C2|EtatFutur.etat2~regout\,
	datad => \C2|EtatPresent.etat4~regout\,
	aclr => \Clk~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C2|WideOr0~0\,
	regout => \C2|EtatPresent.etat2~regout\);

-- Location: LC_X13_Y9_N2
\C2|Selector29~0\ : cyclone_lcell
-- Equation(s):
-- \C2|Selector29~0_combout\ = (\C2|WideOr0~0\) # ((\C2|EtatPresent.etat3~regout\ & ((!\C2|i~2_combout\) # (!\C1|s_out~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff4c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C1|s_out~regout\,
	datab => \C2|EtatPresent.etat3~regout\,
	datac => \C2|i~2_combout\,
	datad => \C2|WideOr0~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C2|Selector29~0_combout\);

-- Location: LC_X13_Y9_N4
\C2|i~3\ : cyclone_lcell
-- Equation(s):
-- \C2|i~3_combout\ = (((!\C2|i~2_combout\)) # (!\C1|s_out~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3f3f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \C1|s_out~regout\,
	datac => \C2|i~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C2|i~3_combout\);

-- Location: LC_X12_Y9_N5
\C2|i[0]\ : cyclone_lcell
-- Equation(s):
-- \C2|i\(0) = DFFEAS((\C2|i\(0) & ((\C2|WideOr0~0\) # ((\C2|EtatPresent.etat3~regout\ & \C2|i~3_combout\)))) # (!\C2|i\(0) & (((\C2|EtatPresent.etat3~regout\ & !\C2|i~3_combout\)))), GLOBAL(\Reset~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a8d8",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Reset~combout\,
	dataa => \C2|i\(0),
	datab => \C2|WideOr0~0\,
	datac => \C2|EtatPresent.etat3~regout\,
	datad => \C2|i~3_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|i\(0));

-- Location: LC_X11_Y10_N4
\C2|Add0~157\ : cyclone_lcell
-- Equation(s):
-- \C2|Add0~157_cout\ = CARRY((!\C2|i\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff55",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|i\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C2|Add0~155\,
	cout => \C2|Add0~157_cout\);

-- Location: LC_X11_Y10_N5
\C2|Add0~5\ : cyclone_lcell
-- Equation(s):
-- \C2|Add0~5_combout\ = (\C2|i\(1) $ ((!\C2|Add0~157_cout\)))
-- \C2|Add0~7\ = CARRY(((!\C2|i\(1) & !\C2|Add0~157_cout\)))
-- \C2|Add0~7COUT1_186\ = CARRY(((!\C2|i\(1) & !\C2|Add0~157_cout\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|i\(1),
	cin => \C2|Add0~157_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C2|Add0~5_combout\,
	cout0 => \C2|Add0~7\,
	cout1 => \C2|Add0~7COUT1_186\);

-- Location: LC_X10_Y9_N0
\C2|i[1]\ : cyclone_lcell
-- Equation(s):
-- \C2|i\(1) = DFFEAS((\C2|Add0~5_combout\ & ((\C2|Selector36~0_combout\) # ((\C2|i\(1) & \C2|Selector29~0_combout\)))) # (!\C2|Add0~5_combout\ & (\C2|i\(1) & (\C2|Selector29~0_combout\))), GLOBAL(\Reset~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Reset~combout\,
	dataa => \C2|Add0~5_combout\,
	datab => \C2|i\(1),
	datac => \C2|Selector29~0_combout\,
	datad => \C2|Selector36~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|i\(1));

-- Location: LC_X11_Y10_N6
\C2|Add0~10\ : cyclone_lcell
-- Equation(s):
-- \C2|Add0~10_combout\ = (\C2|i\(2) $ (((!\C2|Add0~157_cout\ & \C2|Add0~7\) # (\C2|Add0~157_cout\ & \C2|Add0~7COUT1_186\))))
-- \C2|Add0~12\ = CARRY(((\C2|i\(2)) # (!\C2|Add0~7\)))
-- \C2|Add0~12COUT1_188\ = CARRY(((\C2|i\(2)) # (!\C2|Add0~7COUT1_186\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|i\(2),
	cin => \C2|Add0~157_cout\,
	cin0 => \C2|Add0~7\,
	cin1 => \C2|Add0~7COUT1_186\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C2|Add0~10_combout\,
	cout0 => \C2|Add0~12\,
	cout1 => \C2|Add0~12COUT1_188\);

-- Location: LC_X10_Y9_N6
\C2|i[2]\ : cyclone_lcell
-- Equation(s):
-- \C2|i\(2) = DFFEAS((\C2|i\(2) & ((\C2|Selector29~0_combout\) # ((\C2|Add0~10_combout\ & \C2|Selector36~0_combout\)))) # (!\C2|i\(2) & (\C2|Add0~10_combout\ & (\C2|Selector36~0_combout\))), GLOBAL(\Reset~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Reset~combout\,
	dataa => \C2|i\(2),
	datab => \C2|Add0~10_combout\,
	datac => \C2|Selector36~0_combout\,
	datad => \C2|Selector29~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|i\(2));

-- Location: LC_X11_Y10_N7
\C2|Add0~15\ : cyclone_lcell
-- Equation(s):
-- \C2|Add0~15_combout\ = (\C2|i\(3) $ ((!(!\C2|Add0~157_cout\ & \C2|Add0~12\) # (\C2|Add0~157_cout\ & \C2|Add0~12COUT1_188\))))
-- \C2|Add0~17\ = CARRY(((!\C2|i\(3) & !\C2|Add0~12\)))
-- \C2|Add0~17COUT1_190\ = CARRY(((!\C2|i\(3) & !\C2|Add0~12COUT1_188\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|i\(3),
	cin => \C2|Add0~157_cout\,
	cin0 => \C2|Add0~12\,
	cin1 => \C2|Add0~12COUT1_188\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C2|Add0~15_combout\,
	cout0 => \C2|Add0~17\,
	cout1 => \C2|Add0~17COUT1_190\);

-- Location: LC_X13_Y9_N5
\C2|Selector28~0\ : cyclone_lcell
-- Equation(s):
-- \C2|Selector28~0_combout\ = ((\C2|i~3_combout\ & (\C2|i\(3))) # (!\C2|i~3_combout\ & ((\C2|Add0~15_combout\)))) # (!\C2|EtatPresent.etat3~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bfb3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|i\(3),
	datab => \C2|EtatPresent.etat3~regout\,
	datac => \C2|i~3_combout\,
	datad => \C2|Add0~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C2|Selector28~0_combout\);

-- Location: LC_X13_Y9_N1
\C2|i[3]\ : cyclone_lcell
-- Equation(s):
-- \C2|i\(3) = DFFEAS(((\C2|Selector28~0_combout\ & ((\C2|i\(3)) # (!\C2|WideOr0~0\)))), GLOBAL(\Reset~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f500",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Reset~combout\,
	dataa => \C2|WideOr0~0\,
	datac => \C2|i\(3),
	datad => \C2|Selector28~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|i\(3));

-- Location: LC_X11_Y10_N8
\C2|Add0~20\ : cyclone_lcell
-- Equation(s):
-- \C2|Add0~20_combout\ = (\C2|i\(4) $ (((!\C2|Add0~157_cout\ & \C2|Add0~17\) # (\C2|Add0~157_cout\ & \C2|Add0~17COUT1_190\))))
-- \C2|Add0~22\ = CARRY(((\C2|i\(4)) # (!\C2|Add0~17\)))
-- \C2|Add0~22COUT1_192\ = CARRY(((\C2|i\(4)) # (!\C2|Add0~17COUT1_190\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|i\(4),
	cin => \C2|Add0~157_cout\,
	cin0 => \C2|Add0~17\,
	cin1 => \C2|Add0~17COUT1_190\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C2|Add0~20_combout\,
	cout0 => \C2|Add0~22\,
	cout1 => \C2|Add0~22COUT1_192\);

-- Location: LC_X13_Y10_N6
\C2|i[4]\ : cyclone_lcell
-- Equation(s):
-- \C2|i\(4) = DFFEAS((\C2|i\(4) & ((\C2|Selector29~0_combout\) # ((\C2|Selector36~0_combout\ & \C2|Add0~20_combout\)))) # (!\C2|i\(4) & (\C2|Selector36~0_combout\ & ((\C2|Add0~20_combout\)))), GLOBAL(\Reset~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Reset~combout\,
	dataa => \C2|i\(4),
	datab => \C2|Selector36~0_combout\,
	datac => \C2|Selector29~0_combout\,
	datad => \C2|Add0~20_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|i\(4));

-- Location: LC_X11_Y10_N9
\C2|Add0~25\ : cyclone_lcell
-- Equation(s):
-- \C2|Add0~25_combout\ = (\C2|i\(5) $ ((!(!\C2|Add0~157_cout\ & \C2|Add0~22\) # (\C2|Add0~157_cout\ & \C2|Add0~22COUT1_192\))))
-- \C2|Add0~27\ = CARRY(((!\C2|i\(5) & !\C2|Add0~22COUT1_192\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|i\(5),
	cin => \C2|Add0~157_cout\,
	cin0 => \C2|Add0~22\,
	cin1 => \C2|Add0~22COUT1_192\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C2|Add0~25_combout\,
	cout => \C2|Add0~27\);

-- Location: LC_X14_Y9_N4
\C2|i[5]\ : cyclone_lcell
-- Equation(s):
-- \C2|i\(5) = DFFEAS((\C2|Selector36~0_combout\ & ((\C2|Add0~25_combout\) # ((\C2|i\(5) & \C2|Selector29~0_combout\)))) # (!\C2|Selector36~0_combout\ & (\C2|i\(5) & ((\C2|Selector29~0_combout\)))), GLOBAL(\Reset~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Reset~combout\,
	dataa => \C2|Selector36~0_combout\,
	datab => \C2|i\(5),
	datac => \C2|Add0~25_combout\,
	datad => \C2|Selector29~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|i\(5));

-- Location: LC_X11_Y9_N0
\C2|Add0~30\ : cyclone_lcell
-- Equation(s):
-- \C2|Add0~30_combout\ = (\C2|i\(6) $ ((\C2|Add0~27\)))
-- \C2|Add0~32\ = CARRY(((\C2|i\(6)) # (!\C2|Add0~27\)))
-- \C2|Add0~32COUT1_194\ = CARRY(((\C2|i\(6)) # (!\C2|Add0~27\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|i\(6),
	cin => \C2|Add0~27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C2|Add0~30_combout\,
	cout0 => \C2|Add0~32\,
	cout1 => \C2|Add0~32COUT1_194\);

-- Location: LC_X14_Y9_N7
\C2|i[6]\ : cyclone_lcell
-- Equation(s):
-- \C2|i\(6) = DFFEAS((\C2|i\(6) & ((\C2|Selector29~0_combout\) # ((\C2|Add0~30_combout\ & \C2|Selector36~0_combout\)))) # (!\C2|i\(6) & (((\C2|Add0~30_combout\ & \C2|Selector36~0_combout\)))), GLOBAL(\Reset~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f888",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Reset~combout\,
	dataa => \C2|i\(6),
	datab => \C2|Selector29~0_combout\,
	datac => \C2|Add0~30_combout\,
	datad => \C2|Selector36~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|i\(6));

-- Location: LC_X11_Y9_N1
\C2|Add0~35\ : cyclone_lcell
-- Equation(s):
-- \C2|Add0~35_combout\ = (\C2|i\(7) $ ((!(!\C2|Add0~27\ & \C2|Add0~32\) # (\C2|Add0~27\ & \C2|Add0~32COUT1_194\))))
-- \C2|Add0~37\ = CARRY(((!\C2|i\(7) & !\C2|Add0~32\)))
-- \C2|Add0~37COUT1_196\ = CARRY(((!\C2|i\(7) & !\C2|Add0~32COUT1_194\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|i\(7),
	cin => \C2|Add0~27\,
	cin0 => \C2|Add0~32\,
	cin1 => \C2|Add0~32COUT1_194\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C2|Add0~35_combout\,
	cout0 => \C2|Add0~37\,
	cout1 => \C2|Add0~37COUT1_196\);

-- Location: LC_X14_Y9_N6
\C2|i[7]\ : cyclone_lcell
-- Equation(s):
-- \C2|i\(7) = DFFEAS((\C2|Selector36~0_combout\ & ((\C2|Add0~35_combout\) # ((\C2|Selector29~0_combout\ & \C2|i\(7))))) # (!\C2|Selector36~0_combout\ & (\C2|Selector29~0_combout\ & (\C2|i\(7)))), GLOBAL(\Reset~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Reset~combout\,
	dataa => \C2|Selector36~0_combout\,
	datab => \C2|Selector29~0_combout\,
	datac => \C2|i\(7),
	datad => \C2|Add0~35_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|i\(7));

-- Location: LC_X11_Y9_N2
\C2|Add0~40\ : cyclone_lcell
-- Equation(s):
-- \C2|Add0~40_combout\ = (\C2|i\(8) $ (((!\C2|Add0~27\ & \C2|Add0~37\) # (\C2|Add0~27\ & \C2|Add0~37COUT1_196\))))
-- \C2|Add0~42\ = CARRY(((\C2|i\(8)) # (!\C2|Add0~37\)))
-- \C2|Add0~42COUT1_198\ = CARRY(((\C2|i\(8)) # (!\C2|Add0~37COUT1_196\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|i\(8),
	cin => \C2|Add0~27\,
	cin0 => \C2|Add0~37\,
	cin1 => \C2|Add0~37COUT1_196\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C2|Add0~40_combout\,
	cout0 => \C2|Add0~42\,
	cout1 => \C2|Add0~42COUT1_198\);

-- Location: LC_X10_Y9_N7
\C2|i[8]\ : cyclone_lcell
-- Equation(s):
-- \C2|i\(8) = DFFEAS((\C2|i\(8) & ((\C2|Selector29~0_combout\) # ((\C2|Add0~40_combout\ & \C2|Selector36~0_combout\)))) # (!\C2|i\(8) & (((\C2|Add0~40_combout\ & \C2|Selector36~0_combout\)))), GLOBAL(\Reset~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f888",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Reset~combout\,
	dataa => \C2|i\(8),
	datab => \C2|Selector29~0_combout\,
	datac => \C2|Add0~40_combout\,
	datad => \C2|Selector36~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|i\(8));

-- Location: LC_X11_Y9_N3
\C2|Add0~45\ : cyclone_lcell
-- Equation(s):
-- \C2|Add0~45_combout\ = \C2|i\(9) $ ((((!(!\C2|Add0~27\ & \C2|Add0~42\) # (\C2|Add0~27\ & \C2|Add0~42COUT1_198\)))))
-- \C2|Add0~47\ = CARRY((!\C2|i\(9) & ((!\C2|Add0~42\))))
-- \C2|Add0~47COUT1_200\ = CARRY((!\C2|i\(9) & ((!\C2|Add0~42COUT1_198\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a505",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|i\(9),
	cin => \C2|Add0~27\,
	cin0 => \C2|Add0~42\,
	cin1 => \C2|Add0~42COUT1_198\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C2|Add0~45_combout\,
	cout0 => \C2|Add0~47\,
	cout1 => \C2|Add0~47COUT1_200\);

-- Location: LC_X10_Y9_N3
\C2|i[9]\ : cyclone_lcell
-- Equation(s):
-- \C2|i\(9) = DFFEAS((\C2|Add0~45_combout\ & ((\C2|Selector36~0_combout\) # ((\C2|i\(9) & \C2|Selector29~0_combout\)))) # (!\C2|Add0~45_combout\ & (\C2|i\(9) & ((\C2|Selector29~0_combout\)))), GLOBAL(\Reset~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Reset~combout\,
	dataa => \C2|Add0~45_combout\,
	datab => \C2|i\(9),
	datac => \C2|Selector36~0_combout\,
	datad => \C2|Selector29~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|i\(9));

-- Location: LC_X11_Y9_N4
\C2|Add0~50\ : cyclone_lcell
-- Equation(s):
-- \C2|Add0~50_combout\ = \C2|i\(10) $ (((((!\C2|Add0~27\ & \C2|Add0~47\) # (\C2|Add0~27\ & \C2|Add0~47COUT1_200\)))))
-- \C2|Add0~52\ = CARRY((\C2|i\(10)) # ((!\C2|Add0~47COUT1_200\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5aaf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|i\(10),
	cin => \C2|Add0~27\,
	cin0 => \C2|Add0~47\,
	cin1 => \C2|Add0~47COUT1_200\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C2|Add0~50_combout\,
	cout => \C2|Add0~52\);

-- Location: LC_X10_Y9_N5
\C2|i[10]\ : cyclone_lcell
-- Equation(s):
-- \C2|i\(10) = DFFEAS((\C2|i\(10) & ((\C2|Selector29~0_combout\) # ((\C2|Add0~50_combout\ & \C2|Selector36~0_combout\)))) # (!\C2|i\(10) & (\C2|Add0~50_combout\ & ((\C2|Selector36~0_combout\)))), GLOBAL(\Reset~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Reset~combout\,
	dataa => \C2|i\(10),
	datab => \C2|Add0~50_combout\,
	datac => \C2|Selector29~0_combout\,
	datad => \C2|Selector36~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|i\(10));

-- Location: LC_X11_Y9_N5
\C2|Add0~55\ : cyclone_lcell
-- Equation(s):
-- \C2|Add0~55_combout\ = (\C2|i\(11) $ ((!\C2|Add0~52\)))
-- \C2|Add0~57\ = CARRY(((!\C2|i\(11) & !\C2|Add0~52\)))
-- \C2|Add0~57COUT1_202\ = CARRY(((!\C2|i\(11) & !\C2|Add0~52\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|i\(11),
	cin => \C2|Add0~52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C2|Add0~55_combout\,
	cout0 => \C2|Add0~57\,
	cout1 => \C2|Add0~57COUT1_202\);

-- Location: LC_X10_Y9_N9
\C2|i[11]\ : cyclone_lcell
-- Equation(s):
-- \C2|i\(11) = DFFEAS((\C2|i\(11) & ((\C2|Selector29~0_combout\) # ((\C2|Add0~55_combout\ & \C2|Selector36~0_combout\)))) # (!\C2|i\(11) & (\C2|Add0~55_combout\ & (\C2|Selector36~0_combout\))), GLOBAL(\Reset~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Reset~combout\,
	dataa => \C2|i\(11),
	datab => \C2|Add0~55_combout\,
	datac => \C2|Selector36~0_combout\,
	datad => \C2|Selector29~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|i\(11));

-- Location: LC_X11_Y9_N6
\C2|Add0~60\ : cyclone_lcell
-- Equation(s):
-- \C2|Add0~60_combout\ = (\C2|i\(12) $ (((!\C2|Add0~52\ & \C2|Add0~57\) # (\C2|Add0~52\ & \C2|Add0~57COUT1_202\))))
-- \C2|Add0~62\ = CARRY(((\C2|i\(12)) # (!\C2|Add0~57\)))
-- \C2|Add0~62COUT1_204\ = CARRY(((\C2|i\(12)) # (!\C2|Add0~57COUT1_202\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|i\(12),
	cin => \C2|Add0~52\,
	cin0 => \C2|Add0~57\,
	cin1 => \C2|Add0~57COUT1_202\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C2|Add0~60_combout\,
	cout0 => \C2|Add0~62\,
	cout1 => \C2|Add0~62COUT1_204\);

-- Location: LC_X12_Y9_N9
\C2|i[12]\ : cyclone_lcell
-- Equation(s):
-- \C2|i\(12) = DFFEAS((\C2|Selector36~0_combout\ & ((\C2|Add0~60_combout\) # ((\C2|i\(12) & \C2|Selector29~0_combout\)))) # (!\C2|Selector36~0_combout\ & (((\C2|i\(12) & \C2|Selector29~0_combout\)))), GLOBAL(\Reset~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f888",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Reset~combout\,
	dataa => \C2|Selector36~0_combout\,
	datab => \C2|Add0~60_combout\,
	datac => \C2|i\(12),
	datad => \C2|Selector29~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|i\(12));

-- Location: LC_X11_Y9_N7
\C2|Add0~65\ : cyclone_lcell
-- Equation(s):
-- \C2|Add0~65_combout\ = (\C2|i\(13) $ ((!(!\C2|Add0~52\ & \C2|Add0~62\) # (\C2|Add0~52\ & \C2|Add0~62COUT1_204\))))
-- \C2|Add0~67\ = CARRY(((!\C2|i\(13) & !\C2|Add0~62\)))
-- \C2|Add0~67COUT1_206\ = CARRY(((!\C2|i\(13) & !\C2|Add0~62COUT1_204\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|i\(13),
	cin => \C2|Add0~52\,
	cin0 => \C2|Add0~62\,
	cin1 => \C2|Add0~62COUT1_204\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C2|Add0~65_combout\,
	cout0 => \C2|Add0~67\,
	cout1 => \C2|Add0~67COUT1_206\);

-- Location: LC_X14_Y9_N8
\C2|i[13]\ : cyclone_lcell
-- Equation(s):
-- \C2|i\(13) = DFFEAS((\C2|Selector36~0_combout\ & ((\C2|Add0~65_combout\) # ((\C2|Selector29~0_combout\ & \C2|i\(13))))) # (!\C2|Selector36~0_combout\ & (\C2|Selector29~0_combout\ & (\C2|i\(13)))), GLOBAL(\Reset~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Reset~combout\,
	dataa => \C2|Selector36~0_combout\,
	datab => \C2|Selector29~0_combout\,
	datac => \C2|i\(13),
	datad => \C2|Add0~65_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|i\(13));

-- Location: LC_X11_Y9_N8
\C2|Add0~70\ : cyclone_lcell
-- Equation(s):
-- \C2|Add0~70_combout\ = \C2|i\(14) $ (((((!\C2|Add0~52\ & \C2|Add0~67\) # (\C2|Add0~52\ & \C2|Add0~67COUT1_206\)))))
-- \C2|Add0~72\ = CARRY((\C2|i\(14)) # ((!\C2|Add0~67\)))
-- \C2|Add0~72COUT1_208\ = CARRY((\C2|i\(14)) # ((!\C2|Add0~67COUT1_206\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5aaf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|i\(14),
	cin => \C2|Add0~52\,
	cin0 => \C2|Add0~67\,
	cin1 => \C2|Add0~67COUT1_206\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C2|Add0~70_combout\,
	cout0 => \C2|Add0~72\,
	cout1 => \C2|Add0~72COUT1_208\);

-- Location: LC_X10_Y9_N8
\C2|i[14]\ : cyclone_lcell
-- Equation(s):
-- \C2|i\(14) = DFFEAS((\C2|Add0~70_combout\ & ((\C2|Selector36~0_combout\) # ((\C2|i\(14) & \C2|Selector29~0_combout\)))) # (!\C2|Add0~70_combout\ & (\C2|i\(14) & (\C2|Selector29~0_combout\))), GLOBAL(\Reset~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Reset~combout\,
	dataa => \C2|Add0~70_combout\,
	datab => \C2|i\(14),
	datac => \C2|Selector29~0_combout\,
	datad => \C2|Selector36~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|i\(14));

-- Location: LC_X11_Y9_N9
\C2|Add0~75\ : cyclone_lcell
-- Equation(s):
-- \C2|Add0~75_combout\ = (\C2|i\(15) $ ((!(!\C2|Add0~52\ & \C2|Add0~72\) # (\C2|Add0~52\ & \C2|Add0~72COUT1_208\))))
-- \C2|Add0~77\ = CARRY(((!\C2|i\(15) & !\C2|Add0~72COUT1_208\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|i\(15),
	cin => \C2|Add0~52\,
	cin0 => \C2|Add0~72\,
	cin1 => \C2|Add0~72COUT1_208\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C2|Add0~75_combout\,
	cout => \C2|Add0~77\);

-- Location: LC_X10_Y9_N4
\C2|i[15]\ : cyclone_lcell
-- Equation(s):
-- \C2|i\(15) = DFFEAS((\C2|i\(15) & ((\C2|Selector29~0_combout\) # ((\C2|Add0~75_combout\ & \C2|Selector36~0_combout\)))) # (!\C2|i\(15) & (\C2|Add0~75_combout\ & (\C2|Selector36~0_combout\))), GLOBAL(\Reset~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Reset~combout\,
	dataa => \C2|i\(15),
	datab => \C2|Add0~75_combout\,
	datac => \C2|Selector36~0_combout\,
	datad => \C2|Selector29~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|i\(15));

-- Location: LC_X11_Y8_N0
\C2|Add0~80\ : cyclone_lcell
-- Equation(s):
-- \C2|Add0~80_combout\ = (\C2|i\(16) $ ((\C2|Add0~77\)))
-- \C2|Add0~82\ = CARRY(((\C2|i\(16)) # (!\C2|Add0~77\)))
-- \C2|Add0~82COUT1_210\ = CARRY(((\C2|i\(16)) # (!\C2|Add0~77\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|i\(16),
	cin => \C2|Add0~77\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C2|Add0~80_combout\,
	cout0 => \C2|Add0~82\,
	cout1 => \C2|Add0~82COUT1_210\);

-- Location: LC_X12_Y8_N9
\C2|i[16]\ : cyclone_lcell
-- Equation(s):
-- \C2|i\(16) = DFFEAS((\C2|i\(16) & ((\C2|Selector29~0_combout\) # ((\C2|Add0~80_combout\ & \C2|Selector36~0_combout\)))) # (!\C2|i\(16) & (\C2|Add0~80_combout\ & (\C2|Selector36~0_combout\))), GLOBAL(\Reset~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Reset~combout\,
	dataa => \C2|i\(16),
	datab => \C2|Add0~80_combout\,
	datac => \C2|Selector36~0_combout\,
	datad => \C2|Selector29~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|i\(16));

-- Location: LC_X11_Y8_N1
\C2|Add0~85\ : cyclone_lcell
-- Equation(s):
-- \C2|Add0~85_combout\ = \C2|i\(17) $ ((((!(!\C2|Add0~77\ & \C2|Add0~82\) # (\C2|Add0~77\ & \C2|Add0~82COUT1_210\)))))
-- \C2|Add0~87\ = CARRY((!\C2|i\(17) & ((!\C2|Add0~82\))))
-- \C2|Add0~87COUT1_212\ = CARRY((!\C2|i\(17) & ((!\C2|Add0~82COUT1_210\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a505",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|i\(17),
	cin => \C2|Add0~77\,
	cin0 => \C2|Add0~82\,
	cin1 => \C2|Add0~82COUT1_210\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C2|Add0~85_combout\,
	cout0 => \C2|Add0~87\,
	cout1 => \C2|Add0~87COUT1_212\);

-- Location: LC_X12_Y8_N6
\C2|i[17]\ : cyclone_lcell
-- Equation(s):
-- \C2|i\(17) = DFFEAS((\C2|i\(17) & ((\C2|Selector29~0_combout\) # ((\C2|Add0~85_combout\ & \C2|Selector36~0_combout\)))) # (!\C2|i\(17) & (\C2|Add0~85_combout\ & (\C2|Selector36~0_combout\))), GLOBAL(\Reset~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Reset~combout\,
	dataa => \C2|i\(17),
	datab => \C2|Add0~85_combout\,
	datac => \C2|Selector36~0_combout\,
	datad => \C2|Selector29~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|i\(17));

-- Location: LC_X11_Y8_N2
\C2|Add0~90\ : cyclone_lcell
-- Equation(s):
-- \C2|Add0~90_combout\ = \C2|i\(18) $ (((((!\C2|Add0~77\ & \C2|Add0~87\) # (\C2|Add0~77\ & \C2|Add0~87COUT1_212\)))))
-- \C2|Add0~92\ = CARRY((\C2|i\(18)) # ((!\C2|Add0~87\)))
-- \C2|Add0~92COUT1_214\ = CARRY((\C2|i\(18)) # ((!\C2|Add0~87COUT1_212\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5aaf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|i\(18),
	cin => \C2|Add0~77\,
	cin0 => \C2|Add0~87\,
	cin1 => \C2|Add0~87COUT1_212\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C2|Add0~90_combout\,
	cout0 => \C2|Add0~92\,
	cout1 => \C2|Add0~92COUT1_214\);

-- Location: LC_X12_Y8_N8
\C2|i[18]\ : cyclone_lcell
-- Equation(s):
-- \C2|i\(18) = DFFEAS((\C2|i\(18) & ((\C2|Selector29~0_combout\) # ((\C2|Add0~90_combout\ & \C2|Selector36~0_combout\)))) # (!\C2|i\(18) & (\C2|Add0~90_combout\ & (\C2|Selector36~0_combout\))), GLOBAL(\Reset~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Reset~combout\,
	dataa => \C2|i\(18),
	datab => \C2|Add0~90_combout\,
	datac => \C2|Selector36~0_combout\,
	datad => \C2|Selector29~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|i\(18));

-- Location: LC_X11_Y8_N3
\C2|Add0~95\ : cyclone_lcell
-- Equation(s):
-- \C2|Add0~95_combout\ = (\C2|i\(19) $ ((!(!\C2|Add0~77\ & \C2|Add0~92\) # (\C2|Add0~77\ & \C2|Add0~92COUT1_214\))))
-- \C2|Add0~97\ = CARRY(((!\C2|i\(19) & !\C2|Add0~92\)))
-- \C2|Add0~97COUT1_216\ = CARRY(((!\C2|i\(19) & !\C2|Add0~92COUT1_214\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|i\(19),
	cin => \C2|Add0~77\,
	cin0 => \C2|Add0~92\,
	cin1 => \C2|Add0~92COUT1_214\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C2|Add0~95_combout\,
	cout0 => \C2|Add0~97\,
	cout1 => \C2|Add0~97COUT1_216\);

-- Location: LC_X12_Y8_N5
\C2|i[19]\ : cyclone_lcell
-- Equation(s):
-- \C2|i\(19) = DFFEAS((\C2|Add0~95_combout\ & ((\C2|Selector36~0_combout\) # ((\C2|i\(19) & \C2|Selector29~0_combout\)))) # (!\C2|Add0~95_combout\ & (\C2|i\(19) & ((\C2|Selector29~0_combout\)))), GLOBAL(\Reset~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Reset~combout\,
	dataa => \C2|Add0~95_combout\,
	datab => \C2|i\(19),
	datac => \C2|Selector36~0_combout\,
	datad => \C2|Selector29~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|i\(19));

-- Location: LC_X11_Y8_N4
\C2|Add0~100\ : cyclone_lcell
-- Equation(s):
-- \C2|Add0~100_combout\ = (\C2|i\(20) $ (((!\C2|Add0~77\ & \C2|Add0~97\) # (\C2|Add0~77\ & \C2|Add0~97COUT1_216\))))
-- \C2|Add0~102\ = CARRY(((\C2|i\(20)) # (!\C2|Add0~97COUT1_216\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|i\(20),
	cin => \C2|Add0~77\,
	cin0 => \C2|Add0~97\,
	cin1 => \C2|Add0~97COUT1_216\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C2|Add0~100_combout\,
	cout => \C2|Add0~102\);

-- Location: LC_X14_Y9_N5
\C2|i[20]\ : cyclone_lcell
-- Equation(s):
-- \C2|i\(20) = DFFEAS((\C2|Selector36~0_combout\ & ((\C2|Add0~100_combout\) # ((\C2|i\(20) & \C2|Selector29~0_combout\)))) # (!\C2|Selector36~0_combout\ & (\C2|i\(20) & (\C2|Selector29~0_combout\))), GLOBAL(\Reset~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Reset~combout\,
	dataa => \C2|Selector36~0_combout\,
	datab => \C2|i\(20),
	datac => \C2|Selector29~0_combout\,
	datad => \C2|Add0~100_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|i\(20));

-- Location: LC_X11_Y8_N5
\C2|Add0~105\ : cyclone_lcell
-- Equation(s):
-- \C2|Add0~105_combout\ = \C2|i\(21) $ ((((!\C2|Add0~102\))))
-- \C2|Add0~107\ = CARRY((!\C2|i\(21) & ((!\C2|Add0~102\))))
-- \C2|Add0~107COUT1_218\ = CARRY((!\C2|i\(21) & ((!\C2|Add0~102\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a505",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|i\(21),
	cin => \C2|Add0~102\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C2|Add0~105_combout\,
	cout0 => \C2|Add0~107\,
	cout1 => \C2|Add0~107COUT1_218\);

-- Location: LC_X14_Y9_N3
\C2|i[21]\ : cyclone_lcell
-- Equation(s):
-- \C2|i\(21) = DFFEAS((\C2|Selector36~0_combout\ & ((\C2|Add0~105_combout\) # ((\C2|Selector29~0_combout\ & \C2|i\(21))))) # (!\C2|Selector36~0_combout\ & (\C2|Selector29~0_combout\ & (\C2|i\(21)))), GLOBAL(\Reset~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Reset~combout\,
	dataa => \C2|Selector36~0_combout\,
	datab => \C2|Selector29~0_combout\,
	datac => \C2|i\(21),
	datad => \C2|Add0~105_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|i\(21));

-- Location: LC_X11_Y8_N6
\C2|Add0~110\ : cyclone_lcell
-- Equation(s):
-- \C2|Add0~110_combout\ = \C2|i\(22) $ (((((!\C2|Add0~102\ & \C2|Add0~107\) # (\C2|Add0~102\ & \C2|Add0~107COUT1_218\)))))
-- \C2|Add0~112\ = CARRY((\C2|i\(22)) # ((!\C2|Add0~107\)))
-- \C2|Add0~112COUT1_220\ = CARRY((\C2|i\(22)) # ((!\C2|Add0~107COUT1_218\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5aaf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|i\(22),
	cin => \C2|Add0~102\,
	cin0 => \C2|Add0~107\,
	cin1 => \C2|Add0~107COUT1_218\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C2|Add0~110_combout\,
	cout0 => \C2|Add0~112\,
	cout1 => \C2|Add0~112COUT1_220\);

-- Location: LC_X14_Y9_N1
\C2|i[22]\ : cyclone_lcell
-- Equation(s):
-- \C2|i\(22) = DFFEAS((\C2|i\(22) & ((\C2|Selector29~0_combout\) # ((\C2|Selector36~0_combout\ & \C2|Add0~110_combout\)))) # (!\C2|i\(22) & (((\C2|Selector36~0_combout\ & \C2|Add0~110_combout\)))), GLOBAL(\Reset~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f888",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Reset~combout\,
	dataa => \C2|i\(22),
	datab => \C2|Selector29~0_combout\,
	datac => \C2|Selector36~0_combout\,
	datad => \C2|Add0~110_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|i\(22));

-- Location: LC_X11_Y8_N7
\C2|Add0~115\ : cyclone_lcell
-- Equation(s):
-- \C2|Add0~115_combout\ = (\C2|i\(23) $ ((!(!\C2|Add0~102\ & \C2|Add0~112\) # (\C2|Add0~102\ & \C2|Add0~112COUT1_220\))))
-- \C2|Add0~117\ = CARRY(((!\C2|i\(23) & !\C2|Add0~112\)))
-- \C2|Add0~117COUT1_222\ = CARRY(((!\C2|i\(23) & !\C2|Add0~112COUT1_220\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|i\(23),
	cin => \C2|Add0~102\,
	cin0 => \C2|Add0~112\,
	cin1 => \C2|Add0~112COUT1_220\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C2|Add0~115_combout\,
	cout0 => \C2|Add0~117\,
	cout1 => \C2|Add0~117COUT1_222\);

-- Location: LC_X14_Y9_N0
\C2|i[23]\ : cyclone_lcell
-- Equation(s):
-- \C2|i\(23) = DFFEAS((\C2|Selector36~0_combout\ & ((\C2|Add0~115_combout\) # ((\C2|Selector29~0_combout\ & \C2|i\(23))))) # (!\C2|Selector36~0_combout\ & (\C2|Selector29~0_combout\ & (\C2|i\(23)))), GLOBAL(\Reset~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Reset~combout\,
	dataa => \C2|Selector36~0_combout\,
	datab => \C2|Selector29~0_combout\,
	datac => \C2|i\(23),
	datad => \C2|Add0~115_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|i\(23));

-- Location: LC_X11_Y8_N8
\C2|Add0~120\ : cyclone_lcell
-- Equation(s):
-- \C2|Add0~120_combout\ = (\C2|i\(24) $ (((!\C2|Add0~102\ & \C2|Add0~117\) # (\C2|Add0~102\ & \C2|Add0~117COUT1_222\))))
-- \C2|Add0~122\ = CARRY(((\C2|i\(24)) # (!\C2|Add0~117\)))
-- \C2|Add0~122COUT1_224\ = CARRY(((\C2|i\(24)) # (!\C2|Add0~117COUT1_222\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|i\(24),
	cin => \C2|Add0~102\,
	cin0 => \C2|Add0~117\,
	cin1 => \C2|Add0~117COUT1_222\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C2|Add0~120_combout\,
	cout0 => \C2|Add0~122\,
	cout1 => \C2|Add0~122COUT1_224\);

-- Location: LC_X12_Y9_N3
\C2|i[24]\ : cyclone_lcell
-- Equation(s):
-- \C2|i\(24) = DFFEAS((\C2|Selector36~0_combout\ & ((\C2|Add0~120_combout\) # ((\C2|i\(24) & \C2|Selector29~0_combout\)))) # (!\C2|Selector36~0_combout\ & (\C2|i\(24) & ((\C2|Selector29~0_combout\)))), GLOBAL(\Reset~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Reset~combout\,
	dataa => \C2|Selector36~0_combout\,
	datab => \C2|i\(24),
	datac => \C2|Add0~120_combout\,
	datad => \C2|Selector29~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|i\(24));

-- Location: LC_X11_Y8_N9
\C2|Add0~125\ : cyclone_lcell
-- Equation(s):
-- \C2|Add0~125_combout\ = \C2|i\(25) $ ((((!(!\C2|Add0~102\ & \C2|Add0~122\) # (\C2|Add0~102\ & \C2|Add0~122COUT1_224\)))))
-- \C2|Add0~127\ = CARRY((!\C2|i\(25) & ((!\C2|Add0~122COUT1_224\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a505",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|i\(25),
	cin => \C2|Add0~102\,
	cin0 => \C2|Add0~122\,
	cin1 => \C2|Add0~122COUT1_224\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C2|Add0~125_combout\,
	cout => \C2|Add0~127\);

-- Location: LC_X12_Y9_N7
\C2|i[25]\ : cyclone_lcell
-- Equation(s):
-- \C2|i\(25) = DFFEAS((\C2|Selector36~0_combout\ & ((\C2|Add0~125_combout\) # ((\C2|i\(25) & \C2|Selector29~0_combout\)))) # (!\C2|Selector36~0_combout\ & (\C2|i\(25) & ((\C2|Selector29~0_combout\)))), GLOBAL(\Reset~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eca0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Reset~combout\,
	dataa => \C2|Selector36~0_combout\,
	datab => \C2|i\(25),
	datac => \C2|Add0~125_combout\,
	datad => \C2|Selector29~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|i\(25));

-- Location: LC_X11_Y7_N0
\C2|Add0~130\ : cyclone_lcell
-- Equation(s):
-- \C2|Add0~130_combout\ = \C2|i\(26) $ ((((\C2|Add0~127\))))
-- \C2|Add0~132\ = CARRY((\C2|i\(26)) # ((!\C2|Add0~127\)))
-- \C2|Add0~132COUT1_226\ = CARRY((\C2|i\(26)) # ((!\C2|Add0~127\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5aaf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|i\(26),
	cin => \C2|Add0~127\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C2|Add0~130_combout\,
	cout0 => \C2|Add0~132\,
	cout1 => \C2|Add0~132COUT1_226\);

-- Location: LC_X12_Y9_N4
\C2|i[26]\ : cyclone_lcell
-- Equation(s):
-- \C2|i\(26) = DFFEAS((\C2|Selector36~0_combout\ & ((\C2|Add0~130_combout\) # ((\C2|i\(26) & \C2|Selector29~0_combout\)))) # (!\C2|Selector36~0_combout\ & (\C2|i\(26) & (\C2|Selector29~0_combout\))), GLOBAL(\Reset~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Reset~combout\,
	dataa => \C2|Selector36~0_combout\,
	datab => \C2|i\(26),
	datac => \C2|Selector29~0_combout\,
	datad => \C2|Add0~130_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|i\(26));

-- Location: LC_X11_Y7_N1
\C2|Add0~135\ : cyclone_lcell
-- Equation(s):
-- \C2|Add0~135_combout\ = (\C2|i\(27) $ ((!(!\C2|Add0~127\ & \C2|Add0~132\) # (\C2|Add0~127\ & \C2|Add0~132COUT1_226\))))
-- \C2|Add0~137\ = CARRY(((!\C2|i\(27) & !\C2|Add0~132\)))
-- \C2|Add0~137COUT1_228\ = CARRY(((!\C2|i\(27) & !\C2|Add0~132COUT1_226\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|i\(27),
	cin => \C2|Add0~127\,
	cin0 => \C2|Add0~132\,
	cin1 => \C2|Add0~132COUT1_226\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C2|Add0~135_combout\,
	cout0 => \C2|Add0~137\,
	cout1 => \C2|Add0~137COUT1_228\);

-- Location: LC_X12_Y9_N0
\C2|i[27]\ : cyclone_lcell
-- Equation(s):
-- \C2|i\(27) = DFFEAS((\C2|Selector36~0_combout\ & ((\C2|Add0~135_combout\) # ((\C2|i\(27) & \C2|Selector29~0_combout\)))) # (!\C2|Selector36~0_combout\ & (\C2|i\(27) & (\C2|Selector29~0_combout\))), GLOBAL(\Reset~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Reset~combout\,
	dataa => \C2|Selector36~0_combout\,
	datab => \C2|i\(27),
	datac => \C2|Selector29~0_combout\,
	datad => \C2|Add0~135_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|i\(27));

-- Location: LC_X11_Y7_N2
\C2|Add0~140\ : cyclone_lcell
-- Equation(s):
-- \C2|Add0~140_combout\ = (\C2|i\(28) $ (((!\C2|Add0~127\ & \C2|Add0~137\) # (\C2|Add0~127\ & \C2|Add0~137COUT1_228\))))
-- \C2|Add0~142\ = CARRY(((\C2|i\(28)) # (!\C2|Add0~137\)))
-- \C2|Add0~142COUT1_230\ = CARRY(((\C2|i\(28)) # (!\C2|Add0~137COUT1_228\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|i\(28),
	cin => \C2|Add0~127\,
	cin0 => \C2|Add0~137\,
	cin1 => \C2|Add0~137COUT1_228\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C2|Add0~140_combout\,
	cout0 => \C2|Add0~142\,
	cout1 => \C2|Add0~142COUT1_230\);

-- Location: LC_X12_Y7_N4
\C2|i[28]\ : cyclone_lcell
-- Equation(s):
-- \C2|i\(28) = DFFEAS((\C2|i\(28) & ((\C2|Selector29~0_combout\) # ((\C2|Add0~140_combout\ & \C2|Selector36~0_combout\)))) # (!\C2|i\(28) & (\C2|Add0~140_combout\ & (\C2|Selector36~0_combout\))), GLOBAL(\Reset~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Reset~combout\,
	dataa => \C2|i\(28),
	datab => \C2|Add0~140_combout\,
	datac => \C2|Selector36~0_combout\,
	datad => \C2|Selector29~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|i\(28));

-- Location: LC_X11_Y7_N3
\C2|Add0~145\ : cyclone_lcell
-- Equation(s):
-- \C2|Add0~145_combout\ = \C2|i\(29) $ ((((!(!\C2|Add0~127\ & \C2|Add0~142\) # (\C2|Add0~127\ & \C2|Add0~142COUT1_230\)))))
-- \C2|Add0~147\ = CARRY((!\C2|i\(29) & ((!\C2|Add0~142\))))
-- \C2|Add0~147COUT1_232\ = CARRY((!\C2|i\(29) & ((!\C2|Add0~142COUT1_230\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a505",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|i\(29),
	cin => \C2|Add0~127\,
	cin0 => \C2|Add0~142\,
	cin1 => \C2|Add0~142COUT1_230\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C2|Add0~145_combout\,
	cout0 => \C2|Add0~147\,
	cout1 => \C2|Add0~147COUT1_232\);

-- Location: LC_X12_Y9_N6
\C2|i[29]\ : cyclone_lcell
-- Equation(s):
-- \C2|i\(29) = DFFEAS((\C2|Selector36~0_combout\ & ((\C2|Add0~145_combout\) # ((\C2|i\(29) & \C2|Selector29~0_combout\)))) # (!\C2|Selector36~0_combout\ & (\C2|i\(29) & (\C2|Selector29~0_combout\))), GLOBAL(\Reset~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Reset~combout\,
	dataa => \C2|Selector36~0_combout\,
	datab => \C2|i\(29),
	datac => \C2|Selector29~0_combout\,
	datad => \C2|Add0~145_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|i\(29));

-- Location: LC_X11_Y7_N4
\C2|Add0~150\ : cyclone_lcell
-- Equation(s):
-- \C2|Add0~150_combout\ = (\C2|i\(30) $ (((!\C2|Add0~127\ & \C2|Add0~147\) # (\C2|Add0~127\ & \C2|Add0~147COUT1_232\))))
-- \C2|Add0~152\ = CARRY(((\C2|i\(30)) # (!\C2|Add0~147COUT1_232\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|i\(30),
	cin => \C2|Add0~127\,
	cin0 => \C2|Add0~147\,
	cin1 => \C2|Add0~147COUT1_232\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C2|Add0~150_combout\,
	cout => \C2|Add0~152\);

-- Location: LC_X12_Y9_N8
\C2|i[30]\ : cyclone_lcell
-- Equation(s):
-- \C2|i\(30) = DFFEAS((\C2|Selector36~0_combout\ & ((\C2|Add0~150_combout\) # ((\C2|i\(30) & \C2|Selector29~0_combout\)))) # (!\C2|Selector36~0_combout\ & (\C2|i\(30) & (\C2|Selector29~0_combout\))), GLOBAL(\Reset~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eac0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Reset~combout\,
	dataa => \C2|Selector36~0_combout\,
	datab => \C2|i\(30),
	datac => \C2|Selector29~0_combout\,
	datad => \C2|Add0~150_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|i\(30));

-- Location: LC_X11_Y7_N5
\C2|Add0~0\ : cyclone_lcell
-- Equation(s):
-- \C2|Add0~0_combout\ = \C2|i\(31) $ ((((\C2|Add0~152\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|i\(31),
	cin => \C2|Add0~152\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C2|Add0~0_combout\);

-- Location: LC_X14_Y10_N5
\C2|Selector40~2\ : cyclone_lcell
-- Equation(s):
-- \C2|Selector40~2_combout\ = ((!\C2|EtatPresent.etat3~regout\ & ((!\C2|EtatPresent.etat4~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0033",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|EtatPresent.etat3~regout\,
	datad => \C2|EtatPresent.etat4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C2|Selector40~2_combout\);

-- Location: LC_X14_Y10_N4
\C2|EtatFutur.etat0\ : cyclone_lcell
-- Equation(s):
-- \C2|EtatFutur.etat0~regout\ = DFFEAS((\C1|s_out~regout\ & (!\C2|EtatPresent.init~regout\)) # (!\C1|s_out~regout\ & (\C2|EtatFutur.etat0~regout\ & ((!\C2|Selector40~2_combout\) # (!\C2|EtatPresent.init~regout\)))), GLOBAL(\Reset~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5474",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Reset~combout\,
	dataa => \C2|EtatPresent.init~regout\,
	datab => \C1|s_out~regout\,
	datac => \C2|EtatFutur.etat0~regout\,
	datad => \C2|Selector40~2_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|EtatFutur.etat0~regout\);

-- Location: LC_X11_Y13_N7
\C2|EtatPresent.etat0\ : cyclone_lcell
-- Equation(s):
-- \C2|Selector0~0\ = (\C2|EtatPresent.etat2~regout\) # ((\C2|EtatPresent.etat3~regout\) # ((E1_EtatPresent.etat0) # (\C2|EtatPresent.etat4~regout\)))
-- \C2|EtatPresent.etat0~regout\ = DFFEAS(\C2|Selector0~0\, GLOBAL(\Reset~combout\), !GLOBAL(\Clk~combout\), , , \C2|EtatFutur.etat0~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Reset~combout\,
	dataa => \C2|EtatPresent.etat2~regout\,
	datab => \C2|EtatPresent.etat3~regout\,
	datac => \C2|EtatFutur.etat0~regout\,
	datad => \C2|EtatPresent.etat4~regout\,
	aclr => \Clk~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C2|Selector0~0\,
	regout => \C2|EtatPresent.etat0~regout\);

-- Location: LC_X12_Y7_N2
\C2|i[31]\ : cyclone_lcell
-- Equation(s):
-- \C2|i\(31) = DFFEAS((\C2|i\(31) & (((!\C2|Add0~0_combout\)) # (!\C2|Selector36~0_combout\))) # (!\C2|i\(31) & (!\C2|Selector0~0\ & ((!\C2|Add0~0_combout\) # (!\C2|Selector36~0_combout\)))), GLOBAL(\Reset~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2a3f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Reset~combout\,
	dataa => \C2|i\(31),
	datab => \C2|Selector36~0_combout\,
	datac => \C2|Add0~0_combout\,
	datad => \C2|Selector0~0\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|i\(31));

-- Location: LC_X12_Y9_N1
\C2|LessThan0~8\ : cyclone_lcell
-- Equation(s):
-- \C2|LessThan0~8_combout\ = (\C2|i\(25)) # ((\C2|i\(27)) # ((\C2|i\(26)) # (\C2|i\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|i\(25),
	datab => \C2|i\(27),
	datac => \C2|i\(26),
	datad => \C2|i\(24),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C2|LessThan0~8_combout\);

-- Location: LC_X12_Y9_N2
\C2|LessThan0~9\ : cyclone_lcell
-- Equation(s):
-- \C2|LessThan0~9_combout\ = (\C2|i\(29)) # ((\C2|i\(30)) # ((\C2|i\(28)) # (\C2|LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|i\(29),
	datab => \C2|i\(30),
	datac => \C2|i\(28),
	datad => \C2|LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C2|LessThan0~9_combout\);

-- Location: LC_X14_Y9_N9
\C2|LessThan0~6\ : cyclone_lcell
-- Equation(s):
-- \C2|LessThan0~6_combout\ = (\C2|i\(22)) # ((\C2|i\(23)) # ((\C2|i\(21)) # (\C2|i\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|i\(22),
	datab => \C2|i\(23),
	datac => \C2|i\(21),
	datad => \C2|i\(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C2|LessThan0~6_combout\);

-- Location: LC_X12_Y8_N4
\C2|LessThan0~5\ : cyclone_lcell
-- Equation(s):
-- \C2|LessThan0~5_combout\ = (((\C2|i\(16)) # (\C2|i\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \C2|i\(16),
	datad => \C2|i\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C2|LessThan0~5_combout\);

-- Location: LC_X13_Y9_N9
\C2|LessThan0~7\ : cyclone_lcell
-- Equation(s):
-- \C2|LessThan0~7_combout\ = (\C2|i\(19)) # ((\C2|LessThan0~6_combout\) # ((\C2|i\(18)) # (\C2|LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|i\(19),
	datab => \C2|LessThan0~6_combout\,
	datac => \C2|i\(18),
	datad => \C2|LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C2|LessThan0~7_combout\);

-- Location: LC_X14_Y9_N2
\C2|LessThan0~1\ : cyclone_lcell
-- Equation(s):
-- \C2|LessThan0~1_combout\ = (\C2|i\(7)) # ((\C2|i\(5)) # ((\C2|i\(6)) # (\C2|i\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|i\(7),
	datab => \C2|i\(5),
	datac => \C2|i\(6),
	datad => \C2|i\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C2|LessThan0~1_combout\);

-- Location: LC_X13_Y9_N3
\C2|LessThan0~3\ : cyclone_lcell
-- Equation(s):
-- \C2|LessThan0~3_combout\ = (\C2|i\(13)) # ((\C2|i\(15)) # ((\C2|i\(14)) # (\C2|i\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|i\(13),
	datab => \C2|i\(15),
	datac => \C2|i\(14),
	datad => \C2|i\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C2|LessThan0~3_combout\);

-- Location: LC_X10_Y9_N1
\C2|LessThan0~2\ : cyclone_lcell
-- Equation(s):
-- \C2|LessThan0~2_combout\ = (\C2|i\(11)) # ((\C2|i\(10)) # ((\C2|i\(8)) # (\C2|i\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|i\(11),
	datab => \C2|i\(10),
	datac => \C2|i\(8),
	datad => \C2|i\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C2|LessThan0~2_combout\);

-- Location: LC_X13_Y9_N0
\C2|LessThan0~0\ : cyclone_lcell
-- Equation(s):
-- \C2|LessThan0~0_combout\ = (\C2|i\(2)) # ((\C2|i\(1)) # ((\C2|i\(3)) # (!\C2|i\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "feff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|i\(2),
	datab => \C2|i\(1),
	datac => \C2|i\(3),
	datad => \C2|i\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C2|LessThan0~0_combout\);

-- Location: LC_X13_Y9_N6
\C2|LessThan0~4\ : cyclone_lcell
-- Equation(s):
-- \C2|LessThan0~4_combout\ = (\C2|LessThan0~1_combout\) # ((\C2|LessThan0~3_combout\) # ((\C2|LessThan0~2_combout\) # (\C2|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|LessThan0~1_combout\,
	datab => \C2|LessThan0~3_combout\,
	datac => \C2|LessThan0~2_combout\,
	datad => \C2|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C2|LessThan0~4_combout\);

-- Location: LC_X13_Y9_N7
\C2|i~2\ : cyclone_lcell
-- Equation(s):
-- \C2|i~2_combout\ = (\C2|i\(31) & ((\C2|LessThan0~9_combout\) # ((\C2|LessThan0~7_combout\) # (\C2|LessThan0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaa8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|i\(31),
	datab => \C2|LessThan0~9_combout\,
	datac => \C2|LessThan0~7_combout\,
	datad => \C2|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C2|i~2_combout\);

-- Location: LC_X13_Y9_N8
\C2|Selector36~0\ : cyclone_lcell
-- Equation(s):
-- \C2|Selector36~0_combout\ = ((\C1|s_out~regout\ & (\C2|EtatPresent.etat3~regout\ & \C2|i~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \C1|s_out~regout\,
	datac => \C2|EtatPresent.etat3~regout\,
	datad => \C2|i~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C2|Selector36~0_combout\);

-- Location: LC_X13_Y10_N7
\C2|EtatFutur.etat2\ : cyclone_lcell
-- Equation(s):
-- \C2|EtatFutur.etat2~regout\ = DFFEAS((\C2|EtatPresent.etat1~regout\) # ((\C2|Selector36~0_combout\) # ((\C2|EtatFutur.etat2~regout\ & \C2|Selector40~0\))), GLOBAL(\Reset~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffec",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Reset~combout\,
	dataa => \C2|EtatFutur.etat2~regout\,
	datab => \C2|EtatPresent.etat1~regout\,
	datac => \C2|Selector40~0\,
	datad => \C2|Selector36~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|EtatFutur.etat2~regout\);

-- Location: LC_X11_Y11_N7
\C2|EtatFutur.etat3\ : cyclone_lcell
-- Equation(s):
-- \C2|EtatFutur.etat3~regout\ = DFFEAS((\C2|EtatPresent.etat2~regout\) # (((\C2|EtatFutur.etat3~regout\ & \C2|Selector40~0\))), GLOBAL(\Reset~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Reset~combout\,
	dataa => \C2|EtatPresent.etat2~regout\,
	datac => \C2|EtatFutur.etat3~regout\,
	datad => \C2|Selector40~0\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|EtatFutur.etat3~regout\);

-- Location: LC_X10_Y14_N6
\C2|EtatPresent.etat4\ : cyclone_lcell
-- Equation(s):
-- \C2|KEY[1]~0\ = (((E1_EtatPresent.etat4 & \C1|s_out~regout\)))
-- \C2|EtatPresent.etat4~regout\ = DFFEAS(\C2|KEY[1]~0\, GLOBAL(\Reset~combout\), !GLOBAL(\Clk~combout\), , , \C2|EtatFutur.etat4~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Reset~combout\,
	datac => \C2|EtatFutur.etat4~regout\,
	datad => \C1|s_out~regout\,
	aclr => \Clk~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C2|KEY[1]~0\,
	regout => \C2|EtatPresent.etat4~regout\);

-- Location: LC_X10_Y14_N9
\C2|EtatPresent.etat3\ : cyclone_lcell
-- Equation(s):
-- \C2|KEY[1]~1\ = (!\C2|EtatPresent.etat0~regout\ & (!\C2|EtatPresent.etat1~regout\ & (!E1_EtatPresent.etat3 & !\C2|KEY[1]~0\)))
-- \C2|EtatPresent.etat3~regout\ = DFFEAS(\C2|KEY[1]~1\, GLOBAL(\Reset~combout\), !GLOBAL(\Clk~combout\), , , \C2|EtatFutur.etat3~regout\, , , VCC)

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
	clk => \Reset~combout\,
	dataa => \C2|EtatPresent.etat0~regout\,
	datab => \C2|EtatPresent.etat1~regout\,
	datac => \C2|EtatFutur.etat3~regout\,
	datad => \C2|KEY[1]~0\,
	aclr => \Clk~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C2|KEY[1]~1\,
	regout => \C2|EtatPresent.etat3~regout\);

-- Location: LC_X13_Y8_N3
\C2|Selector37~0\ : cyclone_lcell
-- Equation(s):
-- \C2|Selector37~0_combout\ = (\C2|EtatPresent.etat4~regout\) # ((\C2|EtatPresent.etat3~regout\ & ((!\C2|i~2_combout\) # (!\C1|s_out~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff4c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C1|s_out~regout\,
	datab => \C2|EtatPresent.etat3~regout\,
	datac => \C2|i~2_combout\,
	datad => \C2|EtatPresent.etat4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C2|Selector37~0_combout\);

-- Location: LC_X13_Y8_N4
\C2|EtatFutur.init\ : cyclone_lcell
-- Equation(s):
-- \C2|EtatFutur.init~regout\ = DFFEAS((\C1|s_out~regout\ & (((!\C2|Selector37~0_combout\)))) # (!\C1|s_out~regout\ & ((\C2|EtatFutur.init~regout\) # ((\C2|EtatPresent.init~regout\ & !\C2|Selector37~0_combout\)))), GLOBAL(\Reset~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "50fe",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Reset~combout\,
	dataa => \C1|s_out~regout\,
	datab => \C2|EtatPresent.init~regout\,
	datac => \C2|EtatFutur.init~regout\,
	datad => \C2|Selector37~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|EtatFutur.init~regout\);

-- Location: LC_X8_Y10_N3
\C2|Selector36~1\ : cyclone_lcell
-- Equation(s):
-- \C2|Selector36~1_combout\ = (\C2|EtatPresent.etat2~regout\) # ((\C2|EtatPresent.etat1~regout\) # ((\C2|EtatPresent.etat3~regout\ & !\C2|i~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcfe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|EtatPresent.etat3~regout\,
	datab => \C2|EtatPresent.etat2~regout\,
	datac => \C2|EtatPresent.etat1~regout\,
	datad => \C2|i~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C2|Selector36~1_combout\);

-- Location: LC_X8_Y10_N4
\C2|RESET\ : cyclone_lcell
-- Equation(s):
-- \C2|RESET~regout\ = DFFEAS(((\C2|Selector36~0_combout\) # ((\C2|RESET~regout\ & \C2|Selector36~1_combout\))) # (!\C2|EtatPresent.init~regout\), GLOBAL(\Reset~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fdf5",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Reset~combout\,
	dataa => \C2|EtatPresent.init~regout\,
	datab => \C2|RESET~regout\,
	datac => \C2|Selector36~0_combout\,
	datad => \C2|Selector36~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|RESET~regout\);

-- Location: LC_X13_Y13_N2
\C0|PS2_Datr\ : cyclone_lcell
-- Equation(s):
-- \C0|PS2_Datr~regout\ = DFFEAS((((\PS2_Data~combout\))), GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , , , , , )

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
	datad => \PS2_Data~combout\,
	aclr => \C2|RESET~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|PS2_Datr~regout\);

-- Location: LC_X12_Y15_N6
\C0|S_Reg[8]\ : cyclone_lcell
-- Equation(s):
-- \C0|S_Reg\(8) = DFFEAS((((\C0|PS2_Datr~regout\))), GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , \C0|S_Reg[0]~0_combout\, , , , )

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
	datad => \C0|PS2_Datr~regout\,
	aclr => \C2|RESET~regout\,
	ena => \C0|S_Reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|S_Reg\(8));

-- Location: LC_X12_Y15_N7
\C0|S_Reg[7]\ : cyclone_lcell
-- Equation(s):
-- \C0|S_Reg\(7) = DFFEAS((((\C0|S_Reg\(8)))), GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , \C0|S_Reg[0]~0_combout\, , , , )

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
	datad => \C0|S_Reg\(8),
	aclr => \C2|RESET~regout\,
	ena => \C0|S_Reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|S_Reg\(7));

-- Location: LC_X12_Y15_N3
\C0|Scan_Code[7]\ : cyclone_lcell
-- Equation(s):
-- \C0|Scan_Code\(7) = DFFEAS(GND, GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , \C0|Scan_Code[0]~0_combout\, \C0|S_Reg\(7), , , VCC)

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
	datac => \C0|S_Reg\(7),
	aclr => \C2|RESET~regout\,
	sload => VCC,
	ena => \C0|Scan_Code[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|Scan_Code\(7));

-- Location: LC_X12_Y15_N4
\C0|Scan_Code[6]\ : cyclone_lcell
-- Equation(s):
-- \C2|Equal0~0\ = ((\C0|Scan_Code\(7)) # ((C1_Scan_Code[6]) # (\C0|Scan_Code\(1)))) # (!\C0|Scan_Code\(2))
-- \C0|Scan_Code\(6) = DFFEAS(\C2|Equal0~0\, GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , \C0|Scan_Code[0]~0_combout\, \C0|S_Reg\(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffd",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \C0|Scan_Code\(2),
	datab => \C0|Scan_Code\(7),
	datac => \C0|S_Reg\(6),
	datad => \C0|Scan_Code\(1),
	aclr => \C2|RESET~regout\,
	sload => VCC,
	ena => \C0|Scan_Code[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C2|Equal0~0\,
	regout => \C0|Scan_Code\(6));

-- Location: LC_X12_Y14_N4
\C2|EtatFutur.etat4\ : cyclone_lcell
-- Equation(s):
-- \C2|EtatFutur.etat4~regout\ = DFFEAS((\C2|Selector39~0_combout\ & (\C2|EtatPresent.etat0~regout\ & ((\C2|Equal0~0\) # (\C2|Equal0~1\)))), GLOBAL(\Reset~combout\), VCC, , \C2|Selector39~2\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c800",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Reset~combout\,
	dataa => \C2|Equal0~0\,
	datab => \C2|Selector39~0_combout\,
	datac => \C2|Equal0~1\,
	datad => \C2|EtatPresent.etat0~regout\,
	aclr => GND,
	ena => \C2|Selector39~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|EtatFutur.etat4~regout\);

-- Location: LC_X14_Y15_N8
\C0|Scan_Code[2]\ : cyclone_lcell
-- Equation(s):
-- \C2|Selector32~1\ = (\C2|EtatPresent.etat4~regout\ & (\C0|Scan_Code\(0) & (C1_Scan_Code[2] & !\C1|s_out~regout\)))
-- \C0|Scan_Code\(2) = DFFEAS(\C2|Selector32~1\, GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , \C0|Scan_Code[0]~0_combout\, \C0|S_Reg\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0080",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \C2|EtatPresent.etat4~regout\,
	datab => \C0|Scan_Code\(0),
	datac => \C0|S_Reg\(2),
	datad => \C1|s_out~regout\,
	aclr => \C2|RESET~regout\,
	sload => VCC,
	ena => \C0|Scan_Code[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C2|Selector32~1\,
	regout => \C0|Scan_Code\(2));

-- Location: LC_X14_Y15_N9
\C0|S_Reg[0]\ : cyclone_lcell
-- Equation(s):
-- \C0|S_Reg\(0) = DFFEAS(GND, GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , \C0|S_Reg[0]~0_combout\, \C0|S_Reg\(1), , , VCC)

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
	datac => \C0|S_Reg\(1),
	aclr => \C2|RESET~regout\,
	sload => VCC,
	ena => \C0|S_Reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C0|S_Reg\(0));

-- Location: LC_X14_Y15_N3
\C0|Scan_Code[0]\ : cyclone_lcell
-- Equation(s):
-- \C2|Selector33~0\ = ((C1_Scan_Code[0] & ((\C0|Scan_Code\(1)))) # (!C1_Scan_Code[0] & (\C0|Scan_Code\(2) & !\C0|Scan_Code\(1))))
-- \C0|Scan_Code\(0) = DFFEAS(\C2|Selector33~0\, GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , \C0|Scan_Code[0]~0_combout\, \C0|S_Reg\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f00a",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \C0|Scan_Code\(2),
	datac => \C0|S_Reg\(0),
	datad => \C0|Scan_Code\(1),
	aclr => \C2|RESET~regout\,
	sload => VCC,
	ena => \C0|Scan_Code[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C2|Selector33~0\,
	regout => \C0|Scan_Code\(0));

-- Location: LC_X8_Y13_N1
\C3|out1[6]\ : cyclone_lcell
-- Equation(s):
-- \C3|out1\(6) = DFFEAS(VCC, GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	aclr => \C2|RESET~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C3|out1\(6));

-- Location: LC_X9_Y13_N3
\C4|i[0]\ : cyclone_lcell
-- Equation(s):
-- \C4|i\(0) = DFFEAS(((!\C4|i\(0))), GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , , , , \C4|Equal0~10\, )
-- \C4|i[0]~3\ = CARRY(((\C4|i\(0))))
-- \C4|i[0]~3COUT1_68\ = CARRY(((\C4|i\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \C4|i\(0),
	aclr => \C2|RESET~regout\,
	sclr => \C4|Equal0~10\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C4|i\(0),
	cout0 => \C4|i[0]~3\,
	cout1 => \C4|i[0]~3COUT1_68\);

-- Location: LC_X9_Y13_N4
\C4|i[1]\ : cyclone_lcell
-- Equation(s):
-- \C4|i\(1) = DFFEAS((\C4|i\(1) $ ((\C4|i[0]~3\))), GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , , , , \C4|Equal0~10\, )
-- \C4|i[1]~19\ = CARRY(((!\C4|i[0]~3COUT1_68\) # (!\C4|i\(1))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \C4|i\(1),
	aclr => \C2|RESET~regout\,
	sclr => \C4|Equal0~10\,
	cin0 => \C4|i[0]~3\,
	cin1 => \C4|i[0]~3COUT1_68\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C4|i\(1),
	cout => \C4|i[1]~19\);

-- Location: LC_X9_Y13_N5
\C4|i[2]\ : cyclone_lcell
-- Equation(s):
-- \C4|i\(2) = DFFEAS((\C4|i\(2) $ ((!\C4|i[1]~19\))), GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , , , , \C4|Equal0~10\, )
-- \C4|i[2]~1\ = CARRY(((\C4|i\(2) & !\C4|i[1]~19\)))
-- \C4|i[2]~1COUT1_70\ = CARRY(((\C4|i\(2) & !\C4|i[1]~19\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \C4|i\(2),
	aclr => \C2|RESET~regout\,
	sclr => \C4|Equal0~10\,
	cin => \C4|i[1]~19\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C4|i\(2),
	cout0 => \C4|i[2]~1\,
	cout1 => \C4|i[2]~1COUT1_70\);

-- Location: LC_X9_Y13_N6
\C4|i[3]\ : cyclone_lcell
-- Equation(s):
-- \C4|i\(3) = DFFEAS(\C4|i\(3) $ (((((!\C4|i[1]~19\ & \C4|i[2]~1\) # (\C4|i[1]~19\ & \C4|i[2]~1COUT1_70\))))), GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , , , , \C4|Equal0~10\, )
-- \C4|i[3]~7\ = CARRY(((!\C4|i[2]~1\)) # (!\C4|i\(3)))
-- \C4|i[3]~7COUT1_72\ = CARRY(((!\C4|i[2]~1COUT1_70\)) # (!\C4|i\(3)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \C4|i\(3),
	aclr => \C2|RESET~regout\,
	sclr => \C4|Equal0~10\,
	cin => \C4|i[1]~19\,
	cin0 => \C4|i[2]~1\,
	cin1 => \C4|i[2]~1COUT1_70\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C4|i\(3),
	cout0 => \C4|i[3]~7\,
	cout1 => \C4|i[3]~7COUT1_72\);

-- Location: LC_X9_Y13_N7
\C4|i[4]\ : cyclone_lcell
-- Equation(s):
-- \C4|i\(4) = DFFEAS(\C4|i\(4) $ ((((!(!\C4|i[1]~19\ & \C4|i[3]~7\) # (\C4|i[1]~19\ & \C4|i[3]~7COUT1_72\))))), GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , , , , \C4|Equal0~10\, )
-- \C4|i[4]~21\ = CARRY((\C4|i\(4) & ((!\C4|i[3]~7\))))
-- \C4|i[4]~21COUT1_74\ = CARRY((\C4|i\(4) & ((!\C4|i[3]~7COUT1_72\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \C4|i\(4),
	aclr => \C2|RESET~regout\,
	sclr => \C4|Equal0~10\,
	cin => \C4|i[1]~19\,
	cin0 => \C4|i[3]~7\,
	cin1 => \C4|i[3]~7COUT1_72\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C4|i\(4),
	cout0 => \C4|i[4]~21\,
	cout1 => \C4|i[4]~21COUT1_74\);

-- Location: LC_X9_Y13_N8
\C4|i[5]\ : cyclone_lcell
-- Equation(s):
-- \C4|i\(5) = DFFEAS((\C4|i\(5) $ (((!\C4|i[1]~19\ & \C4|i[4]~21\) # (\C4|i[1]~19\ & \C4|i[4]~21COUT1_74\)))), GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , , , , \C4|Equal0~10\, )
-- \C4|i[5]~5\ = CARRY(((!\C4|i[4]~21\) # (!\C4|i\(5))))
-- \C4|i[5]~5COUT1_76\ = CARRY(((!\C4|i[4]~21COUT1_74\) # (!\C4|i\(5))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \C4|i\(5),
	aclr => \C2|RESET~regout\,
	sclr => \C4|Equal0~10\,
	cin => \C4|i[1]~19\,
	cin0 => \C4|i[4]~21\,
	cin1 => \C4|i[4]~21COUT1_74\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C4|i\(5),
	cout0 => \C4|i[5]~5\,
	cout1 => \C4|i[5]~5COUT1_76\);

-- Location: LC_X9_Y13_N9
\C4|i[6]\ : cyclone_lcell
-- Equation(s):
-- \C4|i\(6) = DFFEAS(\C4|i\(6) $ ((((!(!\C4|i[1]~19\ & \C4|i[5]~5\) # (\C4|i[1]~19\ & \C4|i[5]~5COUT1_76\))))), GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , , , , \C4|Equal0~10\, )
-- \C4|i[6]~11\ = CARRY((\C4|i\(6) & ((!\C4|i[5]~5COUT1_76\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \C4|i\(6),
	aclr => \C2|RESET~regout\,
	sclr => \C4|Equal0~10\,
	cin => \C4|i[1]~19\,
	cin0 => \C4|i[5]~5\,
	cin1 => \C4|i[5]~5COUT1_76\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C4|i\(6),
	cout => \C4|i[6]~11\);

-- Location: LC_X10_Y14_N3
\C2|Mux0~0\ : cyclone_lcell
-- Equation(s):
-- \C2|Mux0~0_combout\ = (\C2|i\(3)) # ((\C2|i\(1) & (!\C2|i\(2) & !\C2|i\(0))) # (!\C2|i\(1) & (\C2|i\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "babe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|i\(3),
	datab => \C2|i\(1),
	datac => \C2|i\(2),
	datad => \C2|i\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C2|Mux0~0_combout\);

-- Location: LC_X10_Y14_N8
\C2|Selector35~1\ : cyclone_lcell
-- Equation(s):
-- \C2|Selector35~1_combout\ = (\C2|EtatPresent.etat2~regout\ & (((\C2|KEY\(0) & !\C2|KEY[1]~1\)) # (!\C2|Mux0~0_combout\))) # (!\C2|EtatPresent.etat2~regout\ & (\C2|KEY\(0) & (!\C2|KEY[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0cae",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|EtatPresent.etat2~regout\,
	datab => \C2|KEY\(0),
	datac => \C2|KEY[1]~1\,
	datad => \C2|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C2|Selector35~1_combout\);

-- Location: LC_X9_Y14_N9
\C2|KEY[0]\ : cyclone_lcell
-- Equation(s):
-- \C2|KEY\(0) = DFFEAS((\C2|Selector35~1_combout\) # ((\C2|Selector35~0\ & (!\C1|s_out~regout\ & \C2|EtatPresent.etat4~regout\))), GLOBAL(\Reset~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff20",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Reset~combout\,
	dataa => \C2|Selector35~0\,
	datab => \C1|s_out~regout\,
	datac => \C2|EtatPresent.etat4~regout\,
	datad => \C2|Selector35~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|KEY\(0));

-- Location: LC_X10_Y14_N2
\C2|Selector33~1\ : cyclone_lcell
-- Equation(s):
-- \C2|Selector33~1_combout\ = ((\C2|i\(1)) # ((!\C2|i\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfcf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \C2|i\(1),
	datac => \C2|i\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C2|Selector33~1_combout\);

-- Location: LC_X10_Y14_N1
\C2|KEY[2]\ : cyclone_lcell
-- Equation(s):
-- \C2|KEY\(2) = DFFEAS((\C2|EtatPresent.etat4~regout\ & (((\C2|Selector33~0\)))) # (!\C2|EtatPresent.etat4~regout\ & (\C2|Selector33~1_combout\ & ((\C2|i\(0))))), GLOBAL(\Reset~combout\), VCC, , \C2|KEY[1]~1\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e2c0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Reset~combout\,
	dataa => \C2|Selector33~1_combout\,
	datab => \C2|EtatPresent.etat4~regout\,
	datac => \C2|Selector33~0\,
	datad => \C2|i\(0),
	aclr => GND,
	ena => \C2|KEY[1]~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|KEY\(2));

-- Location: LC_X10_Y14_N4
\C2|Selector34~0\ : cyclone_lcell
-- Equation(s):
-- \C2|Selector34~0_combout\ = (!\C2|i\(1) & ((\C2|i\(0)) # ((!\C2|i\(3) & !\C2|i\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3301",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|i\(3),
	datab => \C2|i\(1),
	datac => \C2|i\(2),
	datad => \C2|i\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C2|Selector34~0_combout\);

-- Location: LC_X10_Y14_N5
\C2|KEY[1]\ : cyclone_lcell
-- Equation(s):
-- \C2|KEY\(1) = DFFEAS((\C2|EtatPresent.etat4~regout\ & (!\C0|Scan_Code\(0) & (\C2|Selector34~1\))) # (!\C2|EtatPresent.etat4~regout\ & (((\C2|Selector34~0_combout\)))), GLOBAL(\Reset~combout\), VCC, , \C2|KEY[1]~1\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7340",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Reset~combout\,
	dataa => \C0|Scan_Code\(0),
	datab => \C2|EtatPresent.etat4~regout\,
	datac => \C2|Selector34~1\,
	datad => \C2|Selector34~0_combout\,
	aclr => GND,
	ena => \C2|KEY[1]~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|KEY\(1));

-- Location: LC_X10_Y14_N7
\C2|Selector32~0\ : cyclone_lcell
-- Equation(s):
-- \C2|Selector32~0_combout\ = (\C2|EtatPresent.etat2~regout\ & (!\C2|i\(0) & ((\C2|i\(1)) # (\C2|i\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C2|EtatPresent.etat2~regout\,
	datab => \C2|i\(1),
	datac => \C2|i\(2),
	datad => \C2|i\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C2|Selector32~0_combout\);

-- Location: LC_X9_Y14_N8
\C2|KEY[3]\ : cyclone_lcell
-- Equation(s):
-- \C2|KEY\(3) = DFFEAS((\C2|Selector32~0_combout\) # ((\C2|Selector32~1\) # ((!\C2|KEY[1]~1\ & \C2|KEY\(3)))), GLOBAL(\Reset~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffba",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Reset~combout\,
	dataa => \C2|Selector32~0_combout\,
	datab => \C2|KEY[1]~1\,
	datac => \C2|KEY\(3),
	datad => \C2|Selector32~1\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C2|KEY\(3));

-- Location: LC_X10_Y13_N2
\C3|out1[7]\ : cyclone_lcell
-- Equation(s):
-- \C3|out1\(7) = DFFEAS((!\C2|KEY\(3) & ((\C2|KEY\(0) & (\C2|KEY\(2) & !\C2|KEY\(1))) # (!\C2|KEY\(0) & ((\C2|KEY\(2)) # (!\C2|KEY\(1)))))), GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "004d",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \C2|KEY\(0),
	datab => \C2|KEY\(2),
	datac => \C2|KEY\(1),
	datad => \C2|KEY\(3),
	aclr => \C2|RESET~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C3|out1\(7));

-- Location: LC_X9_Y12_N0
\C4|i[7]\ : cyclone_lcell
-- Equation(s):
-- \C4|i\(7) = DFFEAS((\C4|i\(7) $ ((\C4|i[6]~11\))), GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , , , , \C4|Equal0~10\, )
-- \C4|i[7]~9\ = CARRY(((!\C4|i[6]~11\) # (!\C4|i\(7))))
-- \C4|i[7]~9COUT1_78\ = CARRY(((!\C4|i[6]~11\) # (!\C4|i\(7))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \C4|i\(7),
	aclr => \C2|RESET~regout\,
	sclr => \C4|Equal0~10\,
	cin => \C4|i[6]~11\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C4|i\(7),
	cout0 => \C4|i[7]~9\,
	cout1 => \C4|i[7]~9COUT1_78\);

-- Location: LC_X8_Y13_N6
\C4|Equal0~2\ : cyclone_lcell
-- Equation(s):
-- \C4|Equal0~2_combout\ = (\C3|out1\(6) & (\C4|i\(6) & (\C3|out1\(7) $ (!\C4|i\(7))))) # (!\C3|out1\(6) & (!\C4|i\(6) & (\C3|out1\(7) $ (!\C4|i\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9009",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C3|out1\(6),
	datab => \C4|i\(6),
	datac => \C3|out1\(7),
	datad => \C4|i\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C4|Equal0~2_combout\);

-- Location: LC_X9_Y13_N2
\C3|out1[3]\ : cyclone_lcell
-- Equation(s):
-- \C3|out1\(3) = DFFEAS((\C2|KEY\(3)) # ((\C2|KEY\(0) & (\C2|KEY\(1) & \C2|KEY\(2)))), GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eaaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \C2|KEY\(3),
	datab => \C2|KEY\(0),
	datac => \C2|KEY\(1),
	datad => \C2|KEY\(2),
	aclr => \C2|RESET~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C3|out1\(3));

-- Location: LC_X9_Y14_N6
\C3|out1[9]\ : cyclone_lcell
-- Equation(s):
-- \C3|Mux0~0\ = (!\C2|KEY\(0) & (!\C2|KEY\(3) & (!\C2|KEY\(1) & !\C2|KEY\(2))))
-- \C3|out1\(9) = DFFEAS(\C3|Mux0~0\, GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \C2|KEY\(0),
	datab => \C2|KEY\(3),
	datac => \C2|KEY\(1),
	datad => \C2|KEY\(2),
	aclr => \C2|RESET~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C3|Mux0~0\,
	regout => \C3|out1\(9));

-- Location: LC_X9_Y13_N0
\C4|Equal0~1\ : cyclone_lcell
-- Equation(s):
-- \C4|Equal0~1_combout\ = (\C4|i\(3) & (\C3|out1\(3) & (\C4|i\(5) $ (!\C3|out1\(9))))) # (!\C4|i\(3) & (!\C3|out1\(3) & (\C4|i\(5) $ (!\C3|out1\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8421",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C4|i\(3),
	datab => \C4|i\(5),
	datac => \C3|out1\(3),
	datad => \C3|out1\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C4|Equal0~1_combout\);

-- Location: LC_X9_Y12_N1
\C4|i[8]\ : cyclone_lcell
-- Equation(s):
-- \C4|i\(8) = DFFEAS(\C4|i\(8) $ ((((!(!\C4|i[6]~11\ & \C4|i[7]~9\) # (\C4|i[6]~11\ & \C4|i[7]~9COUT1_78\))))), GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , , , , \C4|Equal0~10\, )
-- \C4|i[8]~13\ = CARRY((\C4|i\(8) & ((!\C4|i[7]~9\))))
-- \C4|i[8]~13COUT1_80\ = CARRY((\C4|i\(8) & ((!\C4|i[7]~9COUT1_78\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \C4|i\(8),
	aclr => \C2|RESET~regout\,
	sclr => \C4|Equal0~10\,
	cin => \C4|i[6]~11\,
	cin0 => \C4|i[7]~9\,
	cin1 => \C4|i[7]~9COUT1_78\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C4|i\(8),
	cout0 => \C4|i[8]~13\,
	cout1 => \C4|i[8]~13COUT1_80\);

-- Location: LC_X9_Y12_N2
\C4|i[9]\ : cyclone_lcell
-- Equation(s):
-- \C4|i\(9) = DFFEAS(\C4|i\(9) $ (((((!\C4|i[6]~11\ & \C4|i[8]~13\) # (\C4|i[6]~11\ & \C4|i[8]~13COUT1_80\))))), GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , , , , \C4|Equal0~10\, )
-- \C4|i[9]~15\ = CARRY(((!\C4|i[8]~13\)) # (!\C4|i\(9)))
-- \C4|i[9]~15COUT1_82\ = CARRY(((!\C4|i[8]~13COUT1_80\)) # (!\C4|i\(9)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \C4|i\(9),
	aclr => \C2|RESET~regout\,
	sclr => \C4|Equal0~10\,
	cin => \C4|i[6]~11\,
	cin0 => \C4|i[8]~13\,
	cin1 => \C4|i[8]~13COUT1_80\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C4|i\(9),
	cout0 => \C4|i[9]~15\,
	cout1 => \C4|i[9]~15COUT1_82\);

-- Location: LC_X10_Y13_N4
\C3|out1[8]\ : cyclone_lcell
-- Equation(s):
-- \C3|out1\(8) = DFFEAS((((!\C2|KEY\(2) & !\C2|KEY\(3)))), GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \C2|KEY\(2),
	datad => \C2|KEY\(3),
	aclr => \C2|RESET~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C3|out1\(8));

-- Location: LC_X8_Y13_N2
\C4|Equal0~3\ : cyclone_lcell
-- Equation(s):
-- \C4|Equal0~3_combout\ = (\C4|i\(9) & (\C3|out1\(9) & (\C4|i\(8) $ (!\C3|out1\(8))))) # (!\C4|i\(9) & (!\C3|out1\(9) & (\C4|i\(8) $ (!\C3|out1\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8241",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C4|i\(9),
	datab => \C4|i\(8),
	datac => \C3|out1\(8),
	datad => \C3|out1\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C4|Equal0~3_combout\);

-- Location: LC_X9_Y14_N5
\C3|out1[0]\ : cyclone_lcell
-- Equation(s):
-- \C3|Mux5~0\ = (!\C2|KEY\(3) & ((\C2|KEY\(0) & ((!\C2|KEY\(2)) # (!\C2|KEY\(1)))) # (!\C2|KEY\(0) & ((\C2|KEY\(1)) # (\C2|KEY\(2))))))
-- \C3|out1\(0) = DFFEAS(\C3|Mux5~0\, GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1332",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \C2|KEY\(0),
	datab => \C2|KEY\(3),
	datac => \C2|KEY\(1),
	datad => \C2|KEY\(2),
	aclr => \C2|RESET~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C3|Mux5~0\,
	regout => \C3|out1\(0));

-- Location: LC_X9_Y14_N1
\C3|out1[2]\ : cyclone_lcell
-- Equation(s):
-- \C3|out1\(2) = DFFEAS((((!\C3|Mux5~0\))), GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datad => \C3|Mux5~0\,
	aclr => \C2|RESET~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C3|out1\(2));

-- Location: LC_X9_Y13_N1
\C4|Equal0~0\ : cyclone_lcell
-- Equation(s):
-- \C4|Equal0~0_combout\ = (\C4|i\(2) & (\C3|out1\(2) & (\C4|i\(0) $ (!\C3|out1\(0))))) # (!\C4|i\(2) & (!\C3|out1\(2) & (\C4|i\(0) $ (!\C3|out1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8241",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C4|i\(2),
	datab => \C4|i\(0),
	datac => \C3|out1\(0),
	datad => \C3|out1\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C4|Equal0~0_combout\);

-- Location: LC_X8_Y13_N9
\C4|Equal0~4\ : cyclone_lcell
-- Equation(s):
-- \C4|Equal0~4_combout\ = (\C4|Equal0~2_combout\ & (\C4|Equal0~1_combout\ & (\C4|Equal0~3_combout\ & \C4|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C4|Equal0~2_combout\,
	datab => \C4|Equal0~1_combout\,
	datac => \C4|Equal0~3_combout\,
	datad => \C4|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C4|Equal0~4_combout\);

-- Location: LC_X9_Y12_N3
\C4|i[10]\ : cyclone_lcell
-- Equation(s):
-- \C4|i\(10) = DFFEAS((\C4|i\(10) $ ((!(!\C4|i[6]~11\ & \C4|i[9]~15\) # (\C4|i[6]~11\ & \C4|i[9]~15COUT1_82\)))), GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , , , , \C4|Equal0~10\, )
-- \C4|i[10]~17\ = CARRY(((\C4|i\(10) & !\C4|i[9]~15\)))
-- \C4|i[10]~17COUT1_84\ = CARRY(((\C4|i\(10) & !\C4|i[9]~15COUT1_82\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \C4|i\(10),
	aclr => \C2|RESET~regout\,
	sclr => \C4|Equal0~10\,
	cin => \C4|i[6]~11\,
	cin0 => \C4|i[9]~15\,
	cin1 => \C4|i[9]~15COUT1_82\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C4|i\(10),
	cout0 => \C4|i[10]~17\,
	cout1 => \C4|i[10]~17COUT1_84\);

-- Location: LC_X9_Y12_N4
\C4|i[11]\ : cyclone_lcell
-- Equation(s):
-- \C4|i\(11) = DFFEAS((\C4|i\(11) $ (((!\C4|i[6]~11\ & \C4|i[10]~17\) # (\C4|i[6]~11\ & \C4|i[10]~17COUT1_84\)))), GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , , , , \C4|Equal0~10\, )
-- \C4|i[11]~23\ = CARRY(((!\C4|i[10]~17COUT1_84\) # (!\C4|i\(11))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \C4|i\(11),
	aclr => \C2|RESET~regout\,
	sclr => \C4|Equal0~10\,
	cin => \C4|i[6]~11\,
	cin0 => \C4|i[10]~17\,
	cin1 => \C4|i[10]~17COUT1_84\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C4|i\(11),
	cout => \C4|i[11]~23\);

-- Location: LC_X9_Y12_N5
\C4|i[12]\ : cyclone_lcell
-- Equation(s):
-- \C4|i\(12) = DFFEAS((\C4|i\(12) $ ((!\C4|i[11]~23\))), GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , , , , \C4|Equal0~10\, )
-- \C4|i[12]~25\ = CARRY(((\C4|i\(12) & !\C4|i[11]~23\)))
-- \C4|i[12]~25COUT1_86\ = CARRY(((\C4|i\(12) & !\C4|i[11]~23\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \C4|i\(12),
	aclr => \C2|RESET~regout\,
	sclr => \C4|Equal0~10\,
	cin => \C4|i[11]~23\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C4|i\(12),
	cout0 => \C4|i[12]~25\,
	cout1 => \C4|i[12]~25COUT1_86\);

-- Location: LC_X9_Y12_N6
\C4|i[13]\ : cyclone_lcell
-- Equation(s):
-- \C4|i\(13) = DFFEAS(\C4|i\(13) $ (((((!\C4|i[11]~23\ & \C4|i[12]~25\) # (\C4|i[11]~23\ & \C4|i[12]~25COUT1_86\))))), GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , , , , \C4|Equal0~10\, )
-- \C4|i[13]~27\ = CARRY(((!\C4|i[12]~25\)) # (!\C4|i\(13)))
-- \C4|i[13]~27COUT1_88\ = CARRY(((!\C4|i[12]~25COUT1_86\)) # (!\C4|i\(13)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \C4|i\(13),
	aclr => \C2|RESET~regout\,
	sclr => \C4|Equal0~10\,
	cin => \C4|i[11]~23\,
	cin0 => \C4|i[12]~25\,
	cin1 => \C4|i[12]~25COUT1_86\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C4|i\(13),
	cout0 => \C4|i[13]~27\,
	cout1 => \C4|i[13]~27COUT1_88\);

-- Location: LC_X9_Y12_N7
\C4|i[14]\ : cyclone_lcell
-- Equation(s):
-- \C4|i\(14) = DFFEAS(\C4|i\(14) $ ((((!(!\C4|i[11]~23\ & \C4|i[13]~27\) # (\C4|i[11]~23\ & \C4|i[13]~27COUT1_88\))))), GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , , , , \C4|Equal0~10\, )
-- \C4|i[14]~29\ = CARRY((\C4|i\(14) & ((!\C4|i[13]~27\))))
-- \C4|i[14]~29COUT1_90\ = CARRY((\C4|i\(14) & ((!\C4|i[13]~27COUT1_88\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \C4|i\(14),
	aclr => \C2|RESET~regout\,
	sclr => \C4|Equal0~10\,
	cin => \C4|i[11]~23\,
	cin0 => \C4|i[13]~27\,
	cin1 => \C4|i[13]~27COUT1_88\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C4|i\(14),
	cout0 => \C4|i[14]~29\,
	cout1 => \C4|i[14]~29COUT1_90\);

-- Location: LC_X9_Y12_N8
\C4|i[15]\ : cyclone_lcell
-- Equation(s):
-- \C4|i\(15) = DFFEAS((\C4|i\(15) $ (((!\C4|i[11]~23\ & \C4|i[14]~29\) # (\C4|i[11]~23\ & \C4|i[14]~29COUT1_90\)))), GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , , , , \C4|Equal0~10\, )
-- \C4|i[15]~31\ = CARRY(((!\C4|i[14]~29\) # (!\C4|i\(15))))
-- \C4|i[15]~31COUT1_92\ = CARRY(((!\C4|i[14]~29COUT1_90\) # (!\C4|i\(15))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \C4|i\(15),
	aclr => \C2|RESET~regout\,
	sclr => \C4|Equal0~10\,
	cin => \C4|i[11]~23\,
	cin0 => \C4|i[14]~29\,
	cin1 => \C4|i[14]~29COUT1_90\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C4|i\(15),
	cout0 => \C4|i[15]~31\,
	cout1 => \C4|i[15]~31COUT1_92\);

-- Location: LC_X9_Y12_N9
\C4|i[16]\ : cyclone_lcell
-- Equation(s):
-- \C4|i\(16) = DFFEAS(\C4|i\(16) $ ((((!(!\C4|i[11]~23\ & \C4|i[15]~31\) # (\C4|i[11]~23\ & \C4|i[15]~31COUT1_92\))))), GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , , , , \C4|Equal0~10\, )
-- \C4|i[16]~33\ = CARRY((\C4|i\(16) & ((!\C4|i[15]~31COUT1_92\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \C4|i\(16),
	aclr => \C2|RESET~regout\,
	sclr => \C4|Equal0~10\,
	cin => \C4|i[11]~23\,
	cin0 => \C4|i[15]~31\,
	cin1 => \C4|i[15]~31COUT1_92\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C4|i\(16),
	cout => \C4|i[16]~33\);

-- Location: LC_X9_Y11_N0
\C4|i[17]\ : cyclone_lcell
-- Equation(s):
-- \C4|i\(17) = DFFEAS((\C4|i\(17) $ ((\C4|i[16]~33\))), GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , , , , \C4|Equal0~10\, )
-- \C4|i[17]~35\ = CARRY(((!\C4|i[16]~33\) # (!\C4|i\(17))))
-- \C4|i[17]~35COUT1_94\ = CARRY(((!\C4|i[16]~33\) # (!\C4|i\(17))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \C4|i\(17),
	aclr => \C2|RESET~regout\,
	sclr => \C4|Equal0~10\,
	cin => \C4|i[16]~33\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C4|i\(17),
	cout0 => \C4|i[17]~35\,
	cout1 => \C4|i[17]~35COUT1_94\);

-- Location: LC_X9_Y11_N1
\C4|i[18]\ : cyclone_lcell
-- Equation(s):
-- \C4|i\(18) = DFFEAS(\C4|i\(18) $ ((((!(!\C4|i[16]~33\ & \C4|i[17]~35\) # (\C4|i[16]~33\ & \C4|i[17]~35COUT1_94\))))), GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , , , , \C4|Equal0~10\, )
-- \C4|i[18]~37\ = CARRY((\C4|i\(18) & ((!\C4|i[17]~35\))))
-- \C4|i[18]~37COUT1_96\ = CARRY((\C4|i\(18) & ((!\C4|i[17]~35COUT1_94\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \C4|i\(18),
	aclr => \C2|RESET~regout\,
	sclr => \C4|Equal0~10\,
	cin => \C4|i[16]~33\,
	cin0 => \C4|i[17]~35\,
	cin1 => \C4|i[17]~35COUT1_94\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C4|i\(18),
	cout0 => \C4|i[18]~37\,
	cout1 => \C4|i[18]~37COUT1_96\);

-- Location: LC_X8_Y13_N7
\C4|Equal0~7\ : cyclone_lcell
-- Equation(s):
-- \C4|Equal0~7_combout\ = (!\C4|i\(15) & (!\C4|i\(16) & (!\C4|i\(18) & !\C4|i\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C4|i\(15),
	datab => \C4|i\(16),
	datac => \C4|i\(18),
	datad => \C4|i\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C4|Equal0~7_combout\);

-- Location: LC_X9_Y11_N2
\C4|i[19]\ : cyclone_lcell
-- Equation(s):
-- \C4|i\(19) = DFFEAS(\C4|i\(19) $ (((((!\C4|i[16]~33\ & \C4|i[18]~37\) # (\C4|i[16]~33\ & \C4|i[18]~37COUT1_96\))))), GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , , , , \C4|Equal0~10\, )
-- \C4|i[19]~39\ = CARRY(((!\C4|i[18]~37\)) # (!\C4|i\(19)))
-- \C4|i[19]~39COUT1_98\ = CARRY(((!\C4|i[18]~37COUT1_96\)) # (!\C4|i\(19)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \C4|i\(19),
	aclr => \C2|RESET~regout\,
	sclr => \C4|Equal0~10\,
	cin => \C4|i[16]~33\,
	cin0 => \C4|i[18]~37\,
	cin1 => \C4|i[18]~37COUT1_96\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C4|i\(19),
	cout0 => \C4|i[19]~39\,
	cout1 => \C4|i[19]~39COUT1_98\);

-- Location: LC_X9_Y11_N3
\C4|i[20]\ : cyclone_lcell
-- Equation(s):
-- \C4|i\(20) = DFFEAS((\C4|i\(20) $ ((!(!\C4|i[16]~33\ & \C4|i[19]~39\) # (\C4|i[16]~33\ & \C4|i[19]~39COUT1_98\)))), GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , , , , \C4|Equal0~10\, )
-- \C4|i[20]~41\ = CARRY(((\C4|i\(20) & !\C4|i[19]~39\)))
-- \C4|i[20]~41COUT1_100\ = CARRY(((\C4|i\(20) & !\C4|i[19]~39COUT1_98\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \C4|i\(20),
	aclr => \C2|RESET~regout\,
	sclr => \C4|Equal0~10\,
	cin => \C4|i[16]~33\,
	cin0 => \C4|i[19]~39\,
	cin1 => \C4|i[19]~39COUT1_98\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C4|i\(20),
	cout0 => \C4|i[20]~41\,
	cout1 => \C4|i[20]~41COUT1_100\);

-- Location: LC_X9_Y11_N4
\C4|i[21]\ : cyclone_lcell
-- Equation(s):
-- \C4|i\(21) = DFFEAS((\C4|i\(21) $ (((!\C4|i[16]~33\ & \C4|i[20]~41\) # (\C4|i[16]~33\ & \C4|i[20]~41COUT1_100\)))), GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , , , , \C4|Equal0~10\, )
-- \C4|i[21]~43\ = CARRY(((!\C4|i[20]~41COUT1_100\) # (!\C4|i\(21))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \C4|i\(21),
	aclr => \C2|RESET~regout\,
	sclr => \C4|Equal0~10\,
	cin => \C4|i[16]~33\,
	cin0 => \C4|i[20]~41\,
	cin1 => \C4|i[20]~41COUT1_100\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C4|i\(21),
	cout => \C4|i[21]~43\);

-- Location: LC_X9_Y11_N5
\C4|i[22]\ : cyclone_lcell
-- Equation(s):
-- \C4|i\(22) = DFFEAS((\C4|i\(22) $ ((!\C4|i[21]~43\))), GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , , , , \C4|Equal0~10\, )
-- \C4|i[22]~45\ = CARRY(((\C4|i\(22) & !\C4|i[21]~43\)))
-- \C4|i[22]~45COUT1_102\ = CARRY(((\C4|i\(22) & !\C4|i[21]~43\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \C4|i\(22),
	aclr => \C2|RESET~regout\,
	sclr => \C4|Equal0~10\,
	cin => \C4|i[21]~43\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C4|i\(22),
	cout0 => \C4|i[22]~45\,
	cout1 => \C4|i[22]~45COUT1_102\);

-- Location: LC_X9_Y11_N8
\C4|Equal0~8\ : cyclone_lcell
-- Equation(s):
-- \C4|Equal0~8_combout\ = (!\C4|i\(19) & (!\C4|i\(22) & (!\C4|i\(21) & !\C4|i\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C4|i\(19),
	datab => \C4|i\(22),
	datac => \C4|i\(21),
	datad => \C4|i\(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C4|Equal0~8_combout\);

-- Location: LC_X9_Y14_N7
\C3|out1[10]\ : cyclone_lcell
-- Equation(s):
-- \C3|out1\(10) = DFFEAS((((!\C3|Mux0~0\))), GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datad => \C3|Mux0~0\,
	aclr => \C2|RESET~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C3|out1\(10));

-- Location: LC_X8_Y13_N4
\C4|Equal0~5\ : cyclone_lcell
-- Equation(s):
-- \C4|Equal0~5_combout\ = (!\C4|i\(4) & (!\C4|i\(1) & (\C4|i\(10) $ (!\C3|out1\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C4|i\(4),
	datab => \C4|i\(1),
	datac => \C4|i\(10),
	datad => \C3|out1\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C4|Equal0~5_combout\);

-- Location: LC_X8_Y12_N2
\C4|Equal0~6\ : cyclone_lcell
-- Equation(s):
-- \C4|Equal0~6_combout\ = (!\C4|i\(14) & (!\C4|i\(11) & (!\C4|i\(12) & !\C4|i\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C4|i\(14),
	datab => \C4|i\(11),
	datac => \C4|i\(12),
	datad => \C4|i\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C4|Equal0~6_combout\);

-- Location: LC_X8_Y13_N5
\C4|Equal0~9\ : cyclone_lcell
-- Equation(s):
-- \C4|Equal0~9_combout\ = (\C4|Equal0~7_combout\ & (\C4|Equal0~8_combout\ & (\C4|Equal0~5_combout\ & \C4|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C4|Equal0~7_combout\,
	datab => \C4|Equal0~8_combout\,
	datac => \C4|Equal0~5_combout\,
	datad => \C4|Equal0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C4|Equal0~9_combout\);

-- Location: LC_X8_Y13_N3
\C4|s_out\ : cyclone_lcell
-- Equation(s):
-- \C4|Equal0~10\ = ((!\C4|i\(23) & (\C4|Equal0~4_combout\ & \C4|Equal0~9_combout\)))
-- \C4|s_out~regout\ = DFFEAS(\C4|Equal0~10\, GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \C4|i\(23),
	datac => \C4|Equal0~4_combout\,
	datad => \C4|Equal0~9_combout\,
	aclr => \C2|RESET~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C4|Equal0~10\,
	regout => \C4|s_out~regout\);

-- Location: LC_X9_Y11_N6
\C4|i[23]\ : cyclone_lcell
-- Equation(s):
-- \C4|i\(23) = DFFEAS((((!\C4|i[21]~43\ & \C4|i[22]~45\) # (\C4|i[21]~43\ & \C4|i[22]~45COUT1_102\) $ (\C4|i\(23)))), GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , , , , \C4|Equal0~10\, )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datad => \C4|i\(23),
	aclr => \C2|RESET~regout\,
	sclr => \C4|Equal0~10\,
	cin => \C4|i[21]~43\,
	cin0 => \C4|i[22]~45\,
	cin1 => \C4|i[22]~45COUT1_102\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C4|i\(23));

-- Location: LC_X26_Y16_N1
\C6|temp[0]\ : cyclone_lcell
-- Equation(s):
-- \C6|temp\(0) = DFFEAS((!\C6|temp\(0)), GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , \C4|s_out~regout\, , , \C6|LessThan0~1_combout\, )
-- \C6|temp[0]~1\ = CARRY((\C6|temp\(0)))
-- \C6|temp[0]~1COUT1_21\ = CARRY((\C6|temp\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55aa",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \C6|temp\(0),
	aclr => \C2|RESET~regout\,
	sclr => \C6|LessThan0~1_combout\,
	ena => \C4|s_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C6|temp\(0),
	cout0 => \C6|temp[0]~1\,
	cout1 => \C6|temp[0]~1COUT1_21\);

-- Location: LC_X26_Y16_N2
\C6|temp[1]\ : cyclone_lcell
-- Equation(s):
-- \C6|temp\(1) = DFFEAS(\C6|temp\(1) $ ((((\C6|temp[0]~1\)))), GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , \C4|s_out~regout\, , , \C6|LessThan0~1_combout\, )
-- \C6|temp[1]~3\ = CARRY(((!\C6|temp[0]~1\)) # (!\C6|temp\(1)))
-- \C6|temp[1]~3COUT1_23\ = CARRY(((!\C6|temp[0]~1COUT1_21\)) # (!\C6|temp\(1)))

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
	dataa => \C6|temp\(1),
	aclr => \C2|RESET~regout\,
	sclr => \C6|LessThan0~1_combout\,
	ena => \C4|s_out~regout\,
	cin0 => \C6|temp[0]~1\,
	cin1 => \C6|temp[0]~1COUT1_21\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C6|temp\(1),
	cout0 => \C6|temp[1]~3\,
	cout1 => \C6|temp[1]~3COUT1_23\);

-- Location: LC_X26_Y16_N3
\C6|temp[2]\ : cyclone_lcell
-- Equation(s):
-- \C6|temp\(2) = DFFEAS((\C6|temp\(2) $ ((!\C6|temp[1]~3\))), GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , \C4|s_out~regout\, , , \C6|LessThan0~1_combout\, )
-- \C6|temp[2]~5\ = CARRY(((\C6|temp\(2) & !\C6|temp[1]~3\)))
-- \C6|temp[2]~5COUT1_25\ = CARRY(((\C6|temp\(2) & !\C6|temp[1]~3COUT1_23\)))

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
	datab => \C6|temp\(2),
	aclr => \C2|RESET~regout\,
	sclr => \C6|LessThan0~1_combout\,
	ena => \C4|s_out~regout\,
	cin0 => \C6|temp[1]~3\,
	cin1 => \C6|temp[1]~3COUT1_23\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C6|temp\(2),
	cout0 => \C6|temp[2]~5\,
	cout1 => \C6|temp[2]~5COUT1_25\);

-- Location: LC_X26_Y16_N4
\C6|temp[3]\ : cyclone_lcell
-- Equation(s):
-- \C6|temp\(3) = DFFEAS((\C6|temp\(3) $ ((\C6|temp[2]~5\))), GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , \C4|s_out~regout\, , , \C6|LessThan0~1_combout\, )
-- \C6|temp[3]~7\ = CARRY(((!\C6|temp[2]~5COUT1_25\) # (!\C6|temp\(3))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \C6|temp\(3),
	aclr => \C2|RESET~regout\,
	sclr => \C6|LessThan0~1_combout\,
	ena => \C4|s_out~regout\,
	cin0 => \C6|temp[2]~5\,
	cin1 => \C6|temp[2]~5COUT1_25\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C6|temp\(3),
	cout => \C6|temp[3]~7\);

-- Location: LC_X26_Y16_N5
\C6|temp[4]\ : cyclone_lcell
-- Equation(s):
-- \C6|temp\(4) = DFFEAS((\C6|temp\(4) $ ((!\C6|temp[3]~7\))), GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , \C4|s_out~regout\, , , \C6|LessThan0~1_combout\, )
-- \C6|temp[4]~9\ = CARRY(((\C6|temp\(4) & !\C6|temp[3]~7\)))
-- \C6|temp[4]~9COUT1_27\ = CARRY(((\C6|temp\(4) & !\C6|temp[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \C6|temp\(4),
	aclr => \C2|RESET~regout\,
	sclr => \C6|LessThan0~1_combout\,
	ena => \C4|s_out~regout\,
	cin => \C6|temp[3]~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C6|temp\(4),
	cout0 => \C6|temp[4]~9\,
	cout1 => \C6|temp[4]~9COUT1_27\);

-- Location: LC_X26_Y16_N6
\C6|temp[5]\ : cyclone_lcell
-- Equation(s):
-- \C6|temp\(5) = DFFEAS(\C6|temp\(5) $ (((((!\C6|temp[3]~7\ & \C6|temp[4]~9\) # (\C6|temp[3]~7\ & \C6|temp[4]~9COUT1_27\))))), GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , \C4|s_out~regout\, , , \C6|LessThan0~1_combout\, )
-- \C6|temp[5]~11\ = CARRY(((!\C6|temp[4]~9\)) # (!\C6|temp\(5)))
-- \C6|temp[5]~11COUT1_29\ = CARRY(((!\C6|temp[4]~9COUT1_27\)) # (!\C6|temp\(5)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \C6|temp\(5),
	aclr => \C2|RESET~regout\,
	sclr => \C6|LessThan0~1_combout\,
	ena => \C4|s_out~regout\,
	cin => \C6|temp[3]~7\,
	cin0 => \C6|temp[4]~9\,
	cin1 => \C6|temp[4]~9COUT1_27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C6|temp\(5),
	cout0 => \C6|temp[5]~11\,
	cout1 => \C6|temp[5]~11COUT1_29\);

-- Location: LC_X26_Y16_N8
\C6|LessThan0~0\ : cyclone_lcell
-- Equation(s):
-- \C6|LessThan0~0_combout\ = (((!\C6|temp\(0)) # (!\C6|temp\(3))) # (!\C6|temp\(2))) # (!\C6|temp\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7fff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C6|temp\(1),
	datab => \C6|temp\(2),
	datac => \C6|temp\(3),
	datad => \C6|temp\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C6|LessThan0~0_combout\);

-- Location: LC_X26_Y16_N7
\C6|temp[6]\ : cyclone_lcell
-- Equation(s):
-- \C6|temp\(6) = DFFEAS(\C6|temp\(6) $ ((((!(!\C6|temp[3]~7\ & \C6|temp[5]~11\) # (\C6|temp[3]~7\ & \C6|temp[5]~11COUT1_29\))))), GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , \C4|s_out~regout\, , , \C6|LessThan0~1_combout\, )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a5a5",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \C6|temp\(6),
	aclr => \C2|RESET~regout\,
	sclr => \C6|LessThan0~1_combout\,
	ena => \C4|s_out~regout\,
	cin => \C6|temp[3]~7\,
	cin0 => \C6|temp[5]~11\,
	cin1 => \C6|temp[5]~11COUT1_29\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C6|temp\(6));

-- Location: LC_X26_Y16_N0
\C6|LessThan0~1\ : cyclone_lcell
-- Equation(s):
-- \C6|LessThan0~1_combout\ = (\C6|temp\(6)) # ((\C6|temp\(5) & (!\C6|LessThan0~0_combout\ & \C6|temp\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f2f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C6|temp\(5),
	datab => \C6|LessThan0~0_combout\,
	datac => \C6|temp\(6),
	datad => \C6|temp\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C6|LessThan0~1_combout\);

-- Location: LC_X9_Y15_N0
\C3|out2[6]\ : cyclone_lcell
-- Equation(s):
-- \C3|out2\(6) = DFFEAS((\C2|KEY\(3) & (\C2|KEY\(0) & (!\C2|KEY\(1) & !\C2|KEY\(2)))) # (!\C2|KEY\(3) & (\C2|KEY\(1) & (\C2|KEY\(0) $ (\C2|KEY\(2))))), GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1048",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \C2|KEY\(3),
	datab => \C2|KEY\(0),
	datac => \C2|KEY\(1),
	datad => \C2|KEY\(2),
	aclr => \C2|RESET~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C3|out2\(6));

-- Location: LC_X11_Y16_N3
\C5|i[0]\ : cyclone_lcell
-- Equation(s):
-- \C5|i\(0) = DFFEAS(((!\C5|i\(0))), GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , , , , \C5|Equal0~10\, )
-- \C5|i[0]~3\ = CARRY(((\C5|i\(0))))
-- \C5|i[0]~3COUT1_68\ = CARRY(((\C5|i\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \C5|i\(0),
	aclr => \C2|RESET~regout\,
	sclr => \C5|Equal0~10\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C5|i\(0),
	cout0 => \C5|i[0]~3\,
	cout1 => \C5|i[0]~3COUT1_68\);

-- Location: LC_X11_Y16_N4
\C5|i[1]\ : cyclone_lcell
-- Equation(s):
-- \C5|i\(1) = DFFEAS((\C5|i\(1) $ ((\C5|i[0]~3\))), GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , , , , \C5|Equal0~10\, )
-- \C5|i[1]~1\ = CARRY(((!\C5|i[0]~3COUT1_68\) # (!\C5|i\(1))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \C5|i\(1),
	aclr => \C2|RESET~regout\,
	sclr => \C5|Equal0~10\,
	cin0 => \C5|i[0]~3\,
	cin1 => \C5|i[0]~3COUT1_68\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C5|i\(1),
	cout => \C5|i[1]~1\);

-- Location: LC_X11_Y16_N5
\C5|i[2]\ : cyclone_lcell
-- Equation(s):
-- \C5|i\(2) = DFFEAS((\C5|i\(2) $ ((!\C5|i[1]~1\))), GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , , , , \C5|Equal0~10\, )
-- \C5|i[2]~7\ = CARRY(((\C5|i\(2) & !\C5|i[1]~1\)))
-- \C5|i[2]~7COUT1_70\ = CARRY(((\C5|i\(2) & !\C5|i[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \C5|i\(2),
	aclr => \C2|RESET~regout\,
	sclr => \C5|Equal0~10\,
	cin => \C5|i[1]~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C5|i\(2),
	cout0 => \C5|i[2]~7\,
	cout1 => \C5|i[2]~7COUT1_70\);

-- Location: LC_X11_Y16_N6
\C5|i[3]\ : cyclone_lcell
-- Equation(s):
-- \C5|i\(3) = DFFEAS(\C5|i\(3) $ (((((!\C5|i[1]~1\ & \C5|i[2]~7\) # (\C5|i[1]~1\ & \C5|i[2]~7COUT1_70\))))), GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , , , , \C5|Equal0~10\, )
-- \C5|i[3]~5\ = CARRY(((!\C5|i[2]~7\)) # (!\C5|i\(3)))
-- \C5|i[3]~5COUT1_72\ = CARRY(((!\C5|i[2]~7COUT1_70\)) # (!\C5|i\(3)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \C5|i\(3),
	aclr => \C2|RESET~regout\,
	sclr => \C5|Equal0~10\,
	cin => \C5|i[1]~1\,
	cin0 => \C5|i[2]~7\,
	cin1 => \C5|i[2]~7COUT1_70\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C5|i\(3),
	cout0 => \C5|i[3]~5\,
	cout1 => \C5|i[3]~5COUT1_72\);

-- Location: LC_X11_Y16_N7
\C5|i[4]\ : cyclone_lcell
-- Equation(s):
-- \C5|i\(4) = DFFEAS(\C5|i\(4) $ ((((!(!\C5|i[1]~1\ & \C5|i[3]~5\) # (\C5|i[1]~1\ & \C5|i[3]~5COUT1_72\))))), GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , , , , \C5|Equal0~10\, )
-- \C5|i[4]~17\ = CARRY((\C5|i\(4) & ((!\C5|i[3]~5\))))
-- \C5|i[4]~17COUT1_74\ = CARRY((\C5|i\(4) & ((!\C5|i[3]~5COUT1_72\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \C5|i\(4),
	aclr => \C2|RESET~regout\,
	sclr => \C5|Equal0~10\,
	cin => \C5|i[1]~1\,
	cin0 => \C5|i[3]~5\,
	cin1 => \C5|i[3]~5COUT1_72\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C5|i\(4),
	cout0 => \C5|i[4]~17\,
	cout1 => \C5|i[4]~17COUT1_74\);

-- Location: LC_X11_Y16_N8
\C5|i[5]\ : cyclone_lcell
-- Equation(s):
-- \C5|i\(5) = DFFEAS((\C5|i\(5) $ (((!\C5|i[1]~1\ & \C5|i[4]~17\) # (\C5|i[1]~1\ & \C5|i[4]~17COUT1_74\)))), GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , , , , \C5|Equal0~10\, )
-- \C5|i[5]~19\ = CARRY(((!\C5|i[4]~17\) # (!\C5|i\(5))))
-- \C5|i[5]~19COUT1_76\ = CARRY(((!\C5|i[4]~17COUT1_74\) # (!\C5|i\(5))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \C5|i\(5),
	aclr => \C2|RESET~regout\,
	sclr => \C5|Equal0~10\,
	cin => \C5|i[1]~1\,
	cin0 => \C5|i[4]~17\,
	cin1 => \C5|i[4]~17COUT1_74\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C5|i\(5),
	cout0 => \C5|i[5]~19\,
	cout1 => \C5|i[5]~19COUT1_76\);

-- Location: LC_X11_Y16_N9
\C5|i[6]\ : cyclone_lcell
-- Equation(s):
-- \C5|i\(6) = DFFEAS(\C5|i\(6) $ ((((!(!\C5|i[1]~1\ & \C5|i[5]~19\) # (\C5|i[1]~1\ & \C5|i[5]~19COUT1_76\))))), GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , , , , \C5|Equal0~10\, )
-- \C5|i[6]~11\ = CARRY((\C5|i\(6) & ((!\C5|i[5]~19COUT1_76\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \C5|i\(6),
	aclr => \C2|RESET~regout\,
	sclr => \C5|Equal0~10\,
	cin => \C5|i[1]~1\,
	cin0 => \C5|i[5]~19\,
	cin1 => \C5|i[5]~19COUT1_76\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C5|i\(6),
	cout => \C5|i[6]~11\);

-- Location: LC_X11_Y15_N0
\C5|i[7]\ : cyclone_lcell
-- Equation(s):
-- \C5|i\(7) = DFFEAS((\C5|i\(7) $ ((\C5|i[6]~11\))), GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , , , , \C5|Equal0~10\, )
-- \C5|i[7]~9\ = CARRY(((!\C5|i[6]~11\) # (!\C5|i\(7))))
-- \C5|i[7]~9COUT1_78\ = CARRY(((!\C5|i[6]~11\) # (!\C5|i\(7))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \C5|i\(7),
	aclr => \C2|RESET~regout\,
	sclr => \C5|Equal0~10\,
	cin => \C5|i[6]~11\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C5|i\(7),
	cout0 => \C5|i[7]~9\,
	cout1 => \C5|i[7]~9COUT1_78\);

-- Location: LC_X9_Y14_N0
\C3|out2[7]\ : cyclone_lcell
-- Equation(s):
-- \C3|Mux8~0\ = (\C2|KEY\(0) & (((!\C2|KEY\(1) & \C2|KEY\(2))))) # (!\C2|KEY\(0) & (((!\C2|KEY\(2)))))
-- \C3|out2\(7) = DFFEAS(\C3|Mux8~0\, GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a55",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \C2|KEY\(0),
	datac => \C2|KEY\(1),
	datad => \C2|KEY\(2),
	aclr => \C2|RESET~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C3|Mux8~0\,
	regout => \C3|out2\(7));

-- Location: LC_X9_Y15_N2
\C5|Equal0~2\ : cyclone_lcell
-- Equation(s):
-- \C5|Equal0~2_combout\ = (\C3|out2\(6) & (\C5|i\(6) & (\C5|i\(7) $ (!\C3|out2\(7))))) # (!\C3|out2\(6) & (!\C5|i\(6) & (\C5|i\(7) $ (!\C3|out2\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8241",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C3|out2\(6),
	datab => \C5|i\(7),
	datac => \C3|out2\(7),
	datad => \C5|i\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C5|Equal0~2_combout\);

-- Location: LC_X9_Y15_N6
\C3|out2[2]\ : cyclone_lcell
-- Equation(s):
-- \C3|out2\(2) = DFFEAS((\C2|KEY\(1) & (!\C2|KEY\(3) & (\C2|KEY\(0) $ (!\C2|KEY\(2))))) # (!\C2|KEY\(1) & (((!\C2|KEY\(0) & !\C2|KEY\(2))) # (!\C2|KEY\(3)))), GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3117",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \C2|KEY\(1),
	datab => \C2|KEY\(3),
	datac => \C2|KEY\(0),
	datad => \C2|KEY\(2),
	aclr => \C2|RESET~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C3|out2\(2));

-- Location: LC_X9_Y14_N3
\C3|out2[8]\ : cyclone_lcell
-- Equation(s):
-- \C3|Mux7~0\ = (!\C2|KEY\(3) & ((\C2|KEY\(0) & (\C2|KEY\(1) $ (!\C2|KEY\(2)))) # (!\C2|KEY\(0) & (!\C2|KEY\(1) & \C2|KEY\(2)))))
-- \C3|out2\(8) = DFFEAS(\C3|Mux7~0\, GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2102",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \C2|KEY\(0),
	datab => \C2|KEY\(3),
	datac => \C2|KEY\(1),
	datad => \C2|KEY\(2),
	aclr => \C2|RESET~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C3|Mux7~0\,
	regout => \C3|out2\(8));

-- Location: LC_X9_Y14_N4
\C3|out2[5]\ : cyclone_lcell
-- Equation(s):
-- \C3|out2\(5) = DFFEAS((((!\C3|Mux7~0\))), GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datad => \C3|Mux7~0\,
	aclr => \C2|RESET~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C3|out2\(5));

-- Location: LC_X9_Y15_N3
\C5|Equal0~1\ : cyclone_lcell
-- Equation(s):
-- \C5|Equal0~1_combout\ = (\C3|out2\(2) & (\C5|i\(2) & (\C3|out2\(5) $ (!\C5|i\(3))))) # (!\C3|out2\(2) & (!\C5|i\(2) & (\C3|out2\(5) $ (!\C5|i\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8421",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C3|out2\(2),
	datab => \C3|out2\(5),
	datac => \C5|i\(2),
	datad => \C5|i\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C5|Equal0~1_combout\);

-- Location: LC_X11_Y15_N1
\C5|i[8]\ : cyclone_lcell
-- Equation(s):
-- \C5|i\(8) = DFFEAS(\C5|i\(8) $ ((((!(!\C5|i[6]~11\ & \C5|i[7]~9\) # (\C5|i[6]~11\ & \C5|i[7]~9COUT1_78\))))), GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , , , , \C5|Equal0~10\, )
-- \C5|i[8]~13\ = CARRY((\C5|i\(8) & ((!\C5|i[7]~9\))))
-- \C5|i[8]~13COUT1_80\ = CARRY((\C5|i\(8) & ((!\C5|i[7]~9COUT1_78\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \C5|i\(8),
	aclr => \C2|RESET~regout\,
	sclr => \C5|Equal0~10\,
	cin => \C5|i[6]~11\,
	cin0 => \C5|i[7]~9\,
	cin1 => \C5|i[7]~9COUT1_78\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C5|i\(8),
	cout0 => \C5|i[8]~13\,
	cout1 => \C5|i[8]~13COUT1_80\);

-- Location: LC_X11_Y15_N2
\C5|i[9]\ : cyclone_lcell
-- Equation(s):
-- \C5|i\(9) = DFFEAS(\C5|i\(9) $ (((((!\C5|i[6]~11\ & \C5|i[8]~13\) # (\C5|i[6]~11\ & \C5|i[8]~13COUT1_80\))))), GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , , , , \C5|Equal0~10\, )
-- \C5|i[9]~15\ = CARRY(((!\C5|i[8]~13\)) # (!\C5|i\(9)))
-- \C5|i[9]~15COUT1_82\ = CARRY(((!\C5|i[8]~13COUT1_80\)) # (!\C5|i\(9)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \C5|i\(9),
	aclr => \C2|RESET~regout\,
	sclr => \C5|Equal0~10\,
	cin => \C5|i[6]~11\,
	cin0 => \C5|i[8]~13\,
	cin1 => \C5|i[8]~13COUT1_80\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C5|i\(9),
	cout0 => \C5|i[9]~15\,
	cout1 => \C5|i[9]~15COUT1_82\);

-- Location: LC_X9_Y15_N9
\C5|Equal0~3\ : cyclone_lcell
-- Equation(s):
-- \C5|Equal0~3_combout\ = (\C5|i\(9) & (\C3|out1\(6) & (\C5|i\(8) $ (!\C3|out2\(8))))) # (!\C5|i\(9) & (!\C3|out1\(6) & (\C5|i\(8) $ (!\C3|out2\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8241",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C5|i\(9),
	datab => \C5|i\(8),
	datac => \C3|out2\(8),
	datad => \C3|out1\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C5|Equal0~3_combout\);

-- Location: LC_X9_Y14_N2
\C3|out2[1]\ : cyclone_lcell
-- Equation(s):
-- \C3|out2\(1) = DFFEAS((((!\C3|Mux8~0\))), GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datad => \C3|Mux8~0\,
	aclr => \C2|RESET~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C3|out2\(1));

-- Location: LC_X9_Y15_N7
\C5|Equal0~0\ : cyclone_lcell
-- Equation(s):
-- \C5|Equal0~0_combout\ = (\C3|out2\(2) & (\C5|i\(0) & (\C3|out2\(1) $ (!\C5|i\(1))))) # (!\C3|out2\(2) & (!\C5|i\(0) & (\C3|out2\(1) $ (!\C5|i\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8421",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C3|out2\(2),
	datab => \C3|out2\(1),
	datac => \C5|i\(0),
	datad => \C5|i\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C5|Equal0~0_combout\);

-- Location: LC_X9_Y15_N8
\C5|Equal0~4\ : cyclone_lcell
-- Equation(s):
-- \C5|Equal0~4_combout\ = (\C5|Equal0~2_combout\ & (\C5|Equal0~1_combout\ & (\C5|Equal0~3_combout\ & \C5|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C5|Equal0~2_combout\,
	datab => \C5|Equal0~1_combout\,
	datac => \C5|Equal0~3_combout\,
	datad => \C5|Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C5|Equal0~4_combout\);

-- Location: LC_X11_Y15_N3
\C5|i[10]\ : cyclone_lcell
-- Equation(s):
-- \C5|i\(10) = DFFEAS((\C5|i\(10) $ ((!(!\C5|i[6]~11\ & \C5|i[9]~15\) # (\C5|i[6]~11\ & \C5|i[9]~15COUT1_82\)))), GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , , , , \C5|Equal0~10\, )
-- \C5|i[10]~21\ = CARRY(((\C5|i\(10) & !\C5|i[9]~15\)))
-- \C5|i[10]~21COUT1_84\ = CARRY(((\C5|i\(10) & !\C5|i[9]~15COUT1_82\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \C5|i\(10),
	aclr => \C2|RESET~regout\,
	sclr => \C5|Equal0~10\,
	cin => \C5|i[6]~11\,
	cin0 => \C5|i[9]~15\,
	cin1 => \C5|i[9]~15COUT1_82\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C5|i\(10),
	cout0 => \C5|i[10]~21\,
	cout1 => \C5|i[10]~21COUT1_84\);

-- Location: LC_X11_Y15_N4
\C5|i[11]\ : cyclone_lcell
-- Equation(s):
-- \C5|i\(11) = DFFEAS((\C5|i\(11) $ (((!\C5|i[6]~11\ & \C5|i[10]~21\) # (\C5|i[6]~11\ & \C5|i[10]~21COUT1_84\)))), GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , , , , \C5|Equal0~10\, )
-- \C5|i[11]~23\ = CARRY(((!\C5|i[10]~21COUT1_84\) # (!\C5|i\(11))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \C5|i\(11),
	aclr => \C2|RESET~regout\,
	sclr => \C5|Equal0~10\,
	cin => \C5|i[6]~11\,
	cin0 => \C5|i[10]~21\,
	cin1 => \C5|i[10]~21COUT1_84\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C5|i\(11),
	cout => \C5|i[11]~23\);

-- Location: LC_X11_Y15_N5
\C5|i[12]\ : cyclone_lcell
-- Equation(s):
-- \C5|i\(12) = DFFEAS((\C5|i\(12) $ ((!\C5|i[11]~23\))), GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , , , , \C5|Equal0~10\, )
-- \C5|i[12]~25\ = CARRY(((\C5|i\(12) & !\C5|i[11]~23\)))
-- \C5|i[12]~25COUT1_86\ = CARRY(((\C5|i\(12) & !\C5|i[11]~23\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \C5|i\(12),
	aclr => \C2|RESET~regout\,
	sclr => \C5|Equal0~10\,
	cin => \C5|i[11]~23\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C5|i\(12),
	cout0 => \C5|i[12]~25\,
	cout1 => \C5|i[12]~25COUT1_86\);

-- Location: LC_X11_Y15_N6
\C5|i[13]\ : cyclone_lcell
-- Equation(s):
-- \C5|i\(13) = DFFEAS(\C5|i\(13) $ (((((!\C5|i[11]~23\ & \C5|i[12]~25\) # (\C5|i[11]~23\ & \C5|i[12]~25COUT1_86\))))), GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , , , , \C5|Equal0~10\, )
-- \C5|i[13]~27\ = CARRY(((!\C5|i[12]~25\)) # (!\C5|i\(13)))
-- \C5|i[13]~27COUT1_88\ = CARRY(((!\C5|i[12]~25COUT1_86\)) # (!\C5|i\(13)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \C5|i\(13),
	aclr => \C2|RESET~regout\,
	sclr => \C5|Equal0~10\,
	cin => \C5|i[11]~23\,
	cin0 => \C5|i[12]~25\,
	cin1 => \C5|i[12]~25COUT1_86\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C5|i\(13),
	cout0 => \C5|i[13]~27\,
	cout1 => \C5|i[13]~27COUT1_88\);

-- Location: LC_X11_Y15_N7
\C5|i[14]\ : cyclone_lcell
-- Equation(s):
-- \C5|i\(14) = DFFEAS(\C5|i\(14) $ ((((!(!\C5|i[11]~23\ & \C5|i[13]~27\) # (\C5|i[11]~23\ & \C5|i[13]~27COUT1_88\))))), GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , , , , \C5|Equal0~10\, )
-- \C5|i[14]~29\ = CARRY((\C5|i\(14) & ((!\C5|i[13]~27\))))
-- \C5|i[14]~29COUT1_90\ = CARRY((\C5|i\(14) & ((!\C5|i[13]~27COUT1_88\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \C5|i\(14),
	aclr => \C2|RESET~regout\,
	sclr => \C5|Equal0~10\,
	cin => \C5|i[11]~23\,
	cin0 => \C5|i[13]~27\,
	cin1 => \C5|i[13]~27COUT1_88\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C5|i\(14),
	cout0 => \C5|i[14]~29\,
	cout1 => \C5|i[14]~29COUT1_90\);

-- Location: LC_X10_Y15_N9
\C5|Equal0~6\ : cyclone_lcell
-- Equation(s):
-- \C5|Equal0~6_combout\ = (!\C5|i\(13) & (!\C5|i\(12) & (!\C5|i\(14) & !\C5|i\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C5|i\(13),
	datab => \C5|i\(12),
	datac => \C5|i\(14),
	datad => \C5|i\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C5|Equal0~6_combout\);

-- Location: LC_X11_Y15_N8
\C5|i[15]\ : cyclone_lcell
-- Equation(s):
-- \C5|i\(15) = DFFEAS((\C5|i\(15) $ (((!\C5|i[11]~23\ & \C5|i[14]~29\) # (\C5|i[11]~23\ & \C5|i[14]~29COUT1_90\)))), GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , , , , \C5|Equal0~10\, )
-- \C5|i[15]~31\ = CARRY(((!\C5|i[14]~29\) # (!\C5|i\(15))))
-- \C5|i[15]~31COUT1_92\ = CARRY(((!\C5|i[14]~29COUT1_90\) # (!\C5|i\(15))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \C5|i\(15),
	aclr => \C2|RESET~regout\,
	sclr => \C5|Equal0~10\,
	cin => \C5|i[11]~23\,
	cin0 => \C5|i[14]~29\,
	cin1 => \C5|i[14]~29COUT1_90\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C5|i\(15),
	cout0 => \C5|i[15]~31\,
	cout1 => \C5|i[15]~31COUT1_92\);

-- Location: LC_X11_Y15_N9
\C5|i[16]\ : cyclone_lcell
-- Equation(s):
-- \C5|i\(16) = DFFEAS(\C5|i\(16) $ ((((!(!\C5|i[11]~23\ & \C5|i[15]~31\) # (\C5|i[11]~23\ & \C5|i[15]~31COUT1_92\))))), GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , , , , \C5|Equal0~10\, )
-- \C5|i[16]~33\ = CARRY((\C5|i\(16) & ((!\C5|i[15]~31COUT1_92\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \C5|i\(16),
	aclr => \C2|RESET~regout\,
	sclr => \C5|Equal0~10\,
	cin => \C5|i[11]~23\,
	cin0 => \C5|i[15]~31\,
	cin1 => \C5|i[15]~31COUT1_92\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C5|i\(16),
	cout => \C5|i[16]~33\);

-- Location: LC_X11_Y14_N0
\C5|i[17]\ : cyclone_lcell
-- Equation(s):
-- \C5|i\(17) = DFFEAS((\C5|i\(17) $ ((\C5|i[16]~33\))), GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , , , , \C5|Equal0~10\, )
-- \C5|i[17]~35\ = CARRY(((!\C5|i[16]~33\) # (!\C5|i\(17))))
-- \C5|i[17]~35COUT1_94\ = CARRY(((!\C5|i[16]~33\) # (!\C5|i\(17))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \C5|i\(17),
	aclr => \C2|RESET~regout\,
	sclr => \C5|Equal0~10\,
	cin => \C5|i[16]~33\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C5|i\(17),
	cout0 => \C5|i[17]~35\,
	cout1 => \C5|i[17]~35COUT1_94\);

-- Location: LC_X11_Y14_N1
\C5|i[18]\ : cyclone_lcell
-- Equation(s):
-- \C5|i\(18) = DFFEAS(\C5|i\(18) $ ((((!(!\C5|i[16]~33\ & \C5|i[17]~35\) # (\C5|i[16]~33\ & \C5|i[17]~35COUT1_94\))))), GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , , , , \C5|Equal0~10\, )
-- \C5|i[18]~37\ = CARRY((\C5|i\(18) & ((!\C5|i[17]~35\))))
-- \C5|i[18]~37COUT1_96\ = CARRY((\C5|i\(18) & ((!\C5|i[17]~35COUT1_94\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \C5|i\(18),
	aclr => \C2|RESET~regout\,
	sclr => \C5|Equal0~10\,
	cin => \C5|i[16]~33\,
	cin0 => \C5|i[17]~35\,
	cin1 => \C5|i[17]~35COUT1_94\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C5|i\(18),
	cout0 => \C5|i[18]~37\,
	cout1 => \C5|i[18]~37COUT1_96\);

-- Location: LC_X10_Y15_N5
\C5|Equal0~7\ : cyclone_lcell
-- Equation(s):
-- \C5|Equal0~7_combout\ = (!\C5|i\(15) & (!\C5|i\(16) & (!\C5|i\(18) & !\C5|i\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C5|i\(15),
	datab => \C5|i\(16),
	datac => \C5|i\(18),
	datad => \C5|i\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C5|Equal0~7_combout\);

-- Location: LC_X11_Y14_N2
\C5|i[19]\ : cyclone_lcell
-- Equation(s):
-- \C5|i\(19) = DFFEAS(\C5|i\(19) $ (((((!\C5|i[16]~33\ & \C5|i[18]~37\) # (\C5|i[16]~33\ & \C5|i[18]~37COUT1_96\))))), GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , , , , \C5|Equal0~10\, )
-- \C5|i[19]~39\ = CARRY(((!\C5|i[18]~37\)) # (!\C5|i\(19)))
-- \C5|i[19]~39COUT1_98\ = CARRY(((!\C5|i[18]~37COUT1_96\)) # (!\C5|i\(19)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \C5|i\(19),
	aclr => \C2|RESET~regout\,
	sclr => \C5|Equal0~10\,
	cin => \C5|i[16]~33\,
	cin0 => \C5|i[18]~37\,
	cin1 => \C5|i[18]~37COUT1_96\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C5|i\(19),
	cout0 => \C5|i[19]~39\,
	cout1 => \C5|i[19]~39COUT1_98\);

-- Location: LC_X11_Y14_N3
\C5|i[20]\ : cyclone_lcell
-- Equation(s):
-- \C5|i\(20) = DFFEAS((\C5|i\(20) $ ((!(!\C5|i[16]~33\ & \C5|i[19]~39\) # (\C5|i[16]~33\ & \C5|i[19]~39COUT1_98\)))), GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , , , , \C5|Equal0~10\, )
-- \C5|i[20]~41\ = CARRY(((\C5|i\(20) & !\C5|i[19]~39\)))
-- \C5|i[20]~41COUT1_100\ = CARRY(((\C5|i\(20) & !\C5|i[19]~39COUT1_98\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \C5|i\(20),
	aclr => \C2|RESET~regout\,
	sclr => \C5|Equal0~10\,
	cin => \C5|i[16]~33\,
	cin0 => \C5|i[19]~39\,
	cin1 => \C5|i[19]~39COUT1_98\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C5|i\(20),
	cout0 => \C5|i[20]~41\,
	cout1 => \C5|i[20]~41COUT1_100\);

-- Location: LC_X11_Y14_N4
\C5|i[21]\ : cyclone_lcell
-- Equation(s):
-- \C5|i\(21) = DFFEAS((\C5|i\(21) $ (((!\C5|i[16]~33\ & \C5|i[20]~41\) # (\C5|i[16]~33\ & \C5|i[20]~41COUT1_100\)))), GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , , , , \C5|Equal0~10\, )
-- \C5|i[21]~43\ = CARRY(((!\C5|i[20]~41COUT1_100\) # (!\C5|i\(21))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \C5|i\(21),
	aclr => \C2|RESET~regout\,
	sclr => \C5|Equal0~10\,
	cin => \C5|i[16]~33\,
	cin0 => \C5|i[20]~41\,
	cin1 => \C5|i[20]~41COUT1_100\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C5|i\(21),
	cout => \C5|i[21]~43\);

-- Location: LC_X11_Y14_N5
\C5|i[22]\ : cyclone_lcell
-- Equation(s):
-- \C5|i\(22) = DFFEAS((\C5|i\(22) $ ((!\C5|i[21]~43\))), GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , , , , \C5|Equal0~10\, )
-- \C5|i[22]~45\ = CARRY(((\C5|i\(22) & !\C5|i[21]~43\)))
-- \C5|i[22]~45COUT1_102\ = CARRY(((\C5|i\(22) & !\C5|i[21]~43\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \C5|i\(22),
	aclr => \C2|RESET~regout\,
	sclr => \C5|Equal0~10\,
	cin => \C5|i[21]~43\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C5|i\(22),
	cout0 => \C5|i[22]~45\,
	cout1 => \C5|i[22]~45COUT1_102\);

-- Location: LC_X11_Y14_N9
\C5|Equal0~8\ : cyclone_lcell
-- Equation(s):
-- \C5|Equal0~8_combout\ = (!\C5|i\(19) & (!\C5|i\(20) & (!\C5|i\(21) & !\C5|i\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C5|i\(19),
	datab => \C5|i\(20),
	datac => \C5|i\(21),
	datad => \C5|i\(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C5|Equal0~8_combout\);

-- Location: LC_X10_Y15_N6
\C5|Equal0~5\ : cyclone_lcell
-- Equation(s):
-- \C5|Equal0~5_combout\ = (!\C5|i\(10) & ((\C3|out2\(5) & (\C5|i\(5) & \C5|i\(4))) # (!\C3|out2\(5) & (!\C5|i\(5) & !\C5|i\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C5|i\(10),
	datab => \C3|out2\(5),
	datac => \C5|i\(5),
	datad => \C5|i\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C5|Equal0~5_combout\);

-- Location: LC_X10_Y15_N3
\C5|Equal0~9\ : cyclone_lcell
-- Equation(s):
-- \C5|Equal0~9_combout\ = (\C5|Equal0~6_combout\ & (\C5|Equal0~7_combout\ & (\C5|Equal0~8_combout\ & \C5|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C5|Equal0~6_combout\,
	datab => \C5|Equal0~7_combout\,
	datac => \C5|Equal0~8_combout\,
	datad => \C5|Equal0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C5|Equal0~9_combout\);

-- Location: LC_X10_Y15_N8
\C5|s_out\ : cyclone_lcell
-- Equation(s):
-- \C5|Equal0~10\ = ((!\C5|i\(23) & (\C5|Equal0~4_combout\ & \C5|Equal0~9_combout\)))
-- \C5|s_out~regout\ = DFFEAS(\C5|Equal0~10\, GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \C5|i\(23),
	datac => \C5|Equal0~4_combout\,
	datad => \C5|Equal0~9_combout\,
	aclr => \C2|RESET~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C5|Equal0~10\,
	regout => \C5|s_out~regout\);

-- Location: LC_X11_Y14_N6
\C5|i[23]\ : cyclone_lcell
-- Equation(s):
-- \C5|i\(23) = DFFEAS((((!\C5|i[21]~43\ & \C5|i[22]~45\) # (\C5|i[21]~43\ & \C5|i[22]~45COUT1_102\) $ (\C5|i\(23)))), GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , , , , \C5|Equal0~10\, )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datad => \C5|i\(23),
	aclr => \C2|RESET~regout\,
	sclr => \C5|Equal0~10\,
	cin => \C5|i[21]~43\,
	cin0 => \C5|i[22]~45\,
	cin1 => \C5|i[22]~45COUT1_102\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C5|i\(23));

-- Location: LC_X26_Y18_N1
\C7|temp[0]\ : cyclone_lcell
-- Equation(s):
-- \C7|temp\(0) = DFFEAS((!\C7|temp\(0)), GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , \C5|s_out~regout\, , , \C7|LessThan0~1_combout\, )
-- \C7|temp[0]~1\ = CARRY((\C7|temp\(0)))
-- \C7|temp[0]~1COUT1_21\ = CARRY((\C7|temp\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55aa",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \C7|temp\(0),
	aclr => \C2|RESET~regout\,
	sclr => \C7|LessThan0~1_combout\,
	ena => \C5|s_out~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C7|temp\(0),
	cout0 => \C7|temp[0]~1\,
	cout1 => \C7|temp[0]~1COUT1_21\);

-- Location: LC_X26_Y18_N2
\C7|temp[1]\ : cyclone_lcell
-- Equation(s):
-- \C7|temp\(1) = DFFEAS(\C7|temp\(1) $ ((((\C7|temp[0]~1\)))), GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , \C5|s_out~regout\, , , \C7|LessThan0~1_combout\, )
-- \C7|temp[1]~3\ = CARRY(((!\C7|temp[0]~1\)) # (!\C7|temp\(1)))
-- \C7|temp[1]~3COUT1_23\ = CARRY(((!\C7|temp[0]~1COUT1_21\)) # (!\C7|temp\(1)))

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
	dataa => \C7|temp\(1),
	aclr => \C2|RESET~regout\,
	sclr => \C7|LessThan0~1_combout\,
	ena => \C5|s_out~regout\,
	cin0 => \C7|temp[0]~1\,
	cin1 => \C7|temp[0]~1COUT1_21\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C7|temp\(1),
	cout0 => \C7|temp[1]~3\,
	cout1 => \C7|temp[1]~3COUT1_23\);

-- Location: LC_X26_Y18_N3
\C7|temp[2]\ : cyclone_lcell
-- Equation(s):
-- \C7|temp\(2) = DFFEAS((\C7|temp\(2) $ ((!\C7|temp[1]~3\))), GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , \C5|s_out~regout\, , , \C7|LessThan0~1_combout\, )
-- \C7|temp[2]~5\ = CARRY(((\C7|temp\(2) & !\C7|temp[1]~3\)))
-- \C7|temp[2]~5COUT1_25\ = CARRY(((\C7|temp\(2) & !\C7|temp[1]~3COUT1_23\)))

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
	datab => \C7|temp\(2),
	aclr => \C2|RESET~regout\,
	sclr => \C7|LessThan0~1_combout\,
	ena => \C5|s_out~regout\,
	cin0 => \C7|temp[1]~3\,
	cin1 => \C7|temp[1]~3COUT1_23\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C7|temp\(2),
	cout0 => \C7|temp[2]~5\,
	cout1 => \C7|temp[2]~5COUT1_25\);

-- Location: LC_X26_Y18_N4
\C7|temp[3]\ : cyclone_lcell
-- Equation(s):
-- \C7|temp\(3) = DFFEAS((\C7|temp\(3) $ ((\C7|temp[2]~5\))), GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , \C5|s_out~regout\, , , \C7|LessThan0~1_combout\, )
-- \C7|temp[3]~7\ = CARRY(((!\C7|temp[2]~5COUT1_25\) # (!\C7|temp\(3))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \C7|temp\(3),
	aclr => \C2|RESET~regout\,
	sclr => \C7|LessThan0~1_combout\,
	ena => \C5|s_out~regout\,
	cin0 => \C7|temp[2]~5\,
	cin1 => \C7|temp[2]~5COUT1_25\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C7|temp\(3),
	cout => \C7|temp[3]~7\);

-- Location: LC_X26_Y18_N5
\C7|temp[4]\ : cyclone_lcell
-- Equation(s):
-- \C7|temp\(4) = DFFEAS((\C7|temp\(4) $ ((!\C7|temp[3]~7\))), GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , \C5|s_out~regout\, , , \C7|LessThan0~1_combout\, )
-- \C7|temp[4]~9\ = CARRY(((\C7|temp\(4) & !\C7|temp[3]~7\)))
-- \C7|temp[4]~9COUT1_27\ = CARRY(((\C7|temp\(4) & !\C7|temp[3]~7\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \C7|temp\(4),
	aclr => \C2|RESET~regout\,
	sclr => \C7|LessThan0~1_combout\,
	ena => \C5|s_out~regout\,
	cin => \C7|temp[3]~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C7|temp\(4),
	cout0 => \C7|temp[4]~9\,
	cout1 => \C7|temp[4]~9COUT1_27\);

-- Location: LC_X26_Y18_N6
\C7|temp[5]\ : cyclone_lcell
-- Equation(s):
-- \C7|temp\(5) = DFFEAS(\C7|temp\(5) $ (((((!\C7|temp[3]~7\ & \C7|temp[4]~9\) # (\C7|temp[3]~7\ & \C7|temp[4]~9COUT1_27\))))), GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , \C5|s_out~regout\, , , \C7|LessThan0~1_combout\, )
-- \C7|temp[5]~11\ = CARRY(((!\C7|temp[4]~9\)) # (!\C7|temp\(5)))
-- \C7|temp[5]~11COUT1_29\ = CARRY(((!\C7|temp[4]~9COUT1_27\)) # (!\C7|temp\(5)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \C7|temp\(5),
	aclr => \C2|RESET~regout\,
	sclr => \C7|LessThan0~1_combout\,
	ena => \C5|s_out~regout\,
	cin => \C7|temp[3]~7\,
	cin0 => \C7|temp[4]~9\,
	cin1 => \C7|temp[4]~9COUT1_27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C7|temp\(5),
	cout0 => \C7|temp[5]~11\,
	cout1 => \C7|temp[5]~11COUT1_29\);

-- Location: LC_X26_Y18_N7
\C7|temp[6]\ : cyclone_lcell
-- Equation(s):
-- \C7|temp\(6) = DFFEAS(\C7|temp\(6) $ ((((!(!\C7|temp[3]~7\ & \C7|temp[5]~11\) # (\C7|temp[3]~7\ & \C7|temp[5]~11COUT1_29\))))), GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , \C5|s_out~regout\, , , \C7|LessThan0~1_combout\, )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a5a5",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \C7|temp\(6),
	aclr => \C2|RESET~regout\,
	sclr => \C7|LessThan0~1_combout\,
	ena => \C5|s_out~regout\,
	cin => \C7|temp[3]~7\,
	cin0 => \C7|temp[5]~11\,
	cin1 => \C7|temp[5]~11COUT1_29\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C7|temp\(6));

-- Location: LC_X26_Y18_N9
\C7|LessThan0~0\ : cyclone_lcell
-- Equation(s):
-- \C7|LessThan0~0_combout\ = (((!\C7|temp\(2)) # (!\C7|temp\(1))) # (!\C7|temp\(3))) # (!\C7|temp\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7fff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C7|temp\(0),
	datab => \C7|temp\(3),
	datac => \C7|temp\(1),
	datad => \C7|temp\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C7|LessThan0~0_combout\);

-- Location: LC_X26_Y18_N8
\C7|LessThan0~1\ : cyclone_lcell
-- Equation(s):
-- \C7|LessThan0~1_combout\ = (\C7|temp\(6)) # ((\C7|temp\(4) & (!\C7|LessThan0~0_combout\ & \C7|temp\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aeaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C7|temp\(6),
	datab => \C7|temp\(4),
	datac => \C7|LessThan0~0_combout\,
	datad => \C7|temp\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C7|LessThan0~1_combout\);

-- Location: LC_X26_Y17_N7
\C8|TB[1]\ : cyclone_lcell
-- Equation(s):
-- \C8|TB\(1) = DFFEAS((((\C7|temp\(1)))), GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , , , , , )

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
	datad => \C7|temp\(1),
	aclr => \C2|RESET~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C8|TB\(1));

-- Location: LC_X26_Y17_N0
\C8|TA[0]\ : cyclone_lcell
-- Equation(s):
-- \C8|leloop:0:L0|S~0\ = ((J1_TA[0] $ (\C8|TB\(0))))
-- \C8|TA\(0) = DFFEAS(\C8|leloop:0:L0|S~0\, GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , , \C6|temp\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \C6|temp\(0),
	datad => \C8|TB\(0),
	aclr => \C2|RESET~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C8|leloop:0:L0|S~0\,
	regout => \C8|TA\(0));

-- Location: LC_X26_Y17_N3
\C8|TA[1]\ : cyclone_lcell
-- Equation(s):
-- \C8|leloop:1:L0|C2~0\ = (\C8|TB\(1) & ((J1_TA[1]) # ((\C8|TB\(0) & \C8|TA\(0))))) # (!\C8|TB\(1) & (\C8|TB\(0) & (J1_TA[1] & \C8|TA\(0))))
-- \C8|TA\(1) = DFFEAS(\C8|leloop:1:L0|C2~0\, GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , , \C6|temp\(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e8a0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \C8|TB\(1),
	datab => \C8|TB\(0),
	datac => \C6|temp\(1),
	datad => \C8|TA\(0),
	aclr => \C2|RESET~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C8|leloop:1:L0|C2~0\,
	regout => \C8|TA\(1));

-- Location: LC_X26_Y17_N5
\C8|TB[0]\ : cyclone_lcell
-- Equation(s):
-- \C8|leloop:1:L0|S~0\ = \C8|TB\(1) $ (\C8|TA\(1) $ (((\C8|TA\(0) & J1_TB[0]))))
-- \C8|TB\(0) = DFFEAS(\C8|leloop:1:L0|S~0\, GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , , \C7|temp\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "956a",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \C8|TB\(1),
	datab => \C8|TA\(0),
	datac => \C7|temp\(0),
	datad => \C8|TA\(1),
	aclr => \C2|RESET~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C8|leloop:1:L0|S~0\,
	regout => \C8|TB\(0));

-- Location: LC_X27_Y17_N0
\C9|Add0~15\ : cyclone_lcell
-- Equation(s):
-- \C9|Add0~15_combout\ = (!\C9|cnt\(0))
-- \C9|Add0~17\ = CARRY((\C9|cnt\(0)))
-- \C9|Add0~17COUT1_48\ = CARRY((\C9|cnt\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55aa",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C9|cnt\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C9|Add0~15_combout\,
	cout0 => \C9|Add0~17\,
	cout1 => \C9|Add0~17COUT1_48\);

-- Location: LC_X26_Y17_N6
\C9|cnt[0]\ : cyclone_lcell
-- Equation(s):
-- \C9|LessThan0~0\ = (\C9|cnt\(1) & (\C8|leloop:0:L0|S~0\ & (!K1_cnt[0] & \C8|leloop:1:L0|S~0\))) # (!\C9|cnt\(1) & ((\C8|leloop:1:L0|S~0\) # ((\C8|leloop:0:L0|S~0\ & !K1_cnt[0]))))
-- \C9|cnt\(0) = DFFEAS(\C9|LessThan0~0\, GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , , \C9|Add0~15_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3b02",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \C8|leloop:0:L0|S~0\,
	datab => \C9|cnt\(1),
	datac => \C9|Add0~15_combout\,
	datad => \C8|leloop:1:L0|S~0\,
	aclr => \C2|RESET~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C9|LessThan0~0\,
	regout => \C9|cnt\(0));

-- Location: LC_X27_Y17_N1
\C9|Add0~20\ : cyclone_lcell
-- Equation(s):
-- \C9|Add0~20_combout\ = (\C9|cnt\(1) $ ((\C9|Add0~17\)))
-- \C9|Add0~22\ = CARRY(((!\C9|Add0~17\) # (!\C9|cnt\(1))))
-- \C9|Add0~22COUT1_50\ = CARRY(((!\C9|Add0~17COUT1_48\) # (!\C9|cnt\(1))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \C9|cnt\(1),
	cin0 => \C9|Add0~17\,
	cin1 => \C9|Add0~17COUT1_48\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C9|Add0~20_combout\,
	cout0 => \C9|Add0~22\,
	cout1 => \C9|Add0~22COUT1_50\);

-- Location: LC_X26_Y17_N2
\C9|cnt[1]\ : cyclone_lcell
-- Equation(s):
-- \C9|Equal0~1\ = (!\C9|cnt\(2) & (!\C9|cnt\(3) & (K1_cnt[1] & !\C9|cnt\(4))))
-- \C9|cnt\(1) = DFFEAS(\C9|Equal0~1\, GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , , \C9|Add0~20_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \C9|cnt\(2),
	datab => \C9|cnt\(3),
	datac => \C9|Add0~20_combout\,
	datad => \C9|cnt\(4),
	aclr => \C2|RESET~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C9|Equal0~1\,
	regout => \C9|cnt\(1));

-- Location: LC_X27_Y17_N2
\C9|Add0~10\ : cyclone_lcell
-- Equation(s):
-- \C9|Add0~10_combout\ = (\C9|cnt\(2) $ ((\C9|Add0~22\)))
-- \C9|Add0~12\ = CARRY(((!\C9|cnt\(2) & !\C9|Add0~22\)))
-- \C9|Add0~12COUT1_52\ = CARRY(((!\C9|cnt\(2) & !\C9|Add0~22COUT1_50\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c03",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \C9|cnt\(2),
	cin0 => \C9|Add0~22\,
	cin1 => \C9|Add0~22COUT1_50\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C9|Add0~10_combout\,
	cout0 => \C9|Add0~12\,
	cout1 => \C9|Add0~12COUT1_52\);

-- Location: LC_X27_Y17_N8
\C9|cnt[2]\ : cyclone_lcell
-- Equation(s):
-- \C9|cnt\(2) = DFFEAS((!\C9|Add0~10_combout\), GLOBAL(\Clk~combout\), VCC, , , VCC, GLOBAL(\C2|RESET~regout\), , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5555",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \C9|Add0~10_combout\,
	datac => VCC,
	aclr => GND,
	aload => \C2|RESET~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C9|cnt\(2));

-- Location: LC_X27_Y17_N3
\C9|Add0~5\ : cyclone_lcell
-- Equation(s):
-- \C9|Add0~5_combout\ = (\C9|cnt\(3) $ ((!\C9|Add0~12\)))
-- \C9|Add0~7\ = CARRY(((\C9|cnt\(3)) # (!\C9|Add0~12\)))
-- \C9|Add0~7COUT1_54\ = CARRY(((\C9|cnt\(3)) # (!\C9|Add0~12COUT1_52\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c3cf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \C9|cnt\(3),
	cin0 => \C9|Add0~12\,
	cin1 => \C9|Add0~12COUT1_52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C9|Add0~5_combout\,
	cout0 => \C9|Add0~7\,
	cout1 => \C9|Add0~7COUT1_54\);

-- Location: LC_X27_Y16_N2
\C9|cnt[3]\ : cyclone_lcell
-- Equation(s):
-- \C9|cnt\(3) = DFFEAS((((!\C9|Add0~5_combout\))), GLOBAL(\Clk~combout\), VCC, , , VCC, GLOBAL(\C2|RESET~regout\), , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => VCC,
	datad => \C9|Add0~5_combout\,
	aclr => GND,
	aload => \C2|RESET~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C9|cnt\(3));

-- Location: LC_X27_Y17_N4
\C9|Add0~0\ : cyclone_lcell
-- Equation(s):
-- \C9|Add0~0_combout\ = (\C9|cnt\(4) $ ((\C9|Add0~7\)))
-- \C9|Add0~2\ = CARRY(((!\C9|cnt\(4) & !\C9|Add0~7COUT1_54\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c03",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \C9|cnt\(4),
	cin0 => \C9|Add0~7\,
	cin1 => \C9|Add0~7COUT1_54\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C9|Add0~0_combout\,
	cout => \C9|Add0~2\);

-- Location: LC_X28_Y17_N4
\C9|cnt[4]\ : cyclone_lcell
-- Equation(s):
-- \C9|cnt\(4) = DFFEAS((((!\C9|Add0~0_combout\))), GLOBAL(\Clk~combout\), VCC, , , VCC, GLOBAL(\C2|RESET~regout\), , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => VCC,
	datad => \C9|Add0~0_combout\,
	aclr => GND,
	aload => \C2|RESET~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C9|cnt\(4));

-- Location: LC_X27_Y17_N5
\C9|Add0~25\ : cyclone_lcell
-- Equation(s):
-- \C9|Add0~25_combout\ = \C9|cnt\(5) $ ((((\C9|Add0~2\))))
-- \C9|Add0~27\ = CARRY(((!\C9|Add0~2\)) # (!\C9|cnt\(5)))
-- \C9|Add0~27COUT1_56\ = CARRY(((!\C9|Add0~2\)) # (!\C9|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C9|cnt\(5),
	cin => \C9|Add0~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C9|Add0~25_combout\,
	cout0 => \C9|Add0~27\,
	cout1 => \C9|Add0~27COUT1_56\);

-- Location: LC_X27_Y17_N9
\C9|cnt[5]\ : cyclone_lcell
-- Equation(s):
-- \C9|Equal0~0\ = (!\C9|cnt\(6) & (\C9|cnt\(0) & (K1_cnt[5] & \C9|cnt\(7))))
-- \C9|cnt\(5) = DFFEAS(\C9|Equal0~0\, GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , , \C9|Add0~25_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \C9|cnt\(6),
	datab => \C9|cnt\(0),
	datac => \C9|Add0~25_combout\,
	datad => \C9|cnt\(7),
	aclr => \C2|RESET~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C9|Equal0~0\,
	regout => \C9|cnt\(5));

-- Location: LC_X27_Y17_N6
\C9|Add0~30\ : cyclone_lcell
-- Equation(s):
-- \C9|Add0~30_combout\ = \C9|cnt\(6) $ ((((!(!\C9|Add0~2\ & \C9|Add0~27\) # (\C9|Add0~2\ & \C9|Add0~27COUT1_56\)))))
-- \C9|Add0~32\ = CARRY((\C9|cnt\(6) & ((!\C9|Add0~27\))))
-- \C9|Add0~32COUT1_58\ = CARRY((\C9|cnt\(6) & ((!\C9|Add0~27COUT1_56\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C9|cnt\(6),
	cin => \C9|Add0~2\,
	cin0 => \C9|Add0~27\,
	cin1 => \C9|Add0~27COUT1_56\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C9|Add0~30_combout\,
	cout0 => \C9|Add0~32\,
	cout1 => \C9|Add0~32COUT1_58\);

-- Location: LC_X27_Y17_N7
\C9|Add0~35\ : cyclone_lcell
-- Equation(s):
-- \C9|Add0~35_combout\ = \C9|cnt\(7) $ ((((!(!\C9|Add0~2\ & \C9|Add0~32\) # (\C9|Add0~2\ & \C9|Add0~32COUT1_58\)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a5a5",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C9|cnt\(7),
	cin => \C9|Add0~2\,
	cin0 => \C9|Add0~32\,
	cin1 => \C9|Add0~32COUT1_58\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C9|Add0~35_combout\);

-- Location: LC_X28_Y17_N2
\C9|cnt[7]\ : cyclone_lcell
-- Equation(s):
-- \C9|cnt\(7) = DFFEAS((\C9|Add0~35_combout\ $ (((!\C9|Equal0~1\) # (!\C9|Equal0~0\)))), GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c03f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \C9|Equal0~0\,
	datac => \C9|Equal0~1\,
	datad => \C9|Add0~35_combout\,
	aclr => \C2|RESET~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C9|cnt\(7));

-- Location: LC_X25_Y17_N9
\C9|cnt[6]\ : cyclone_lcell
-- Equation(s):
-- \C9|cnt\(6) = DFFEAS((((\C9|Add0~30_combout\))), GLOBAL(\Clk~combout\), VCC, , , VCC, GLOBAL(\C2|RESET~regout\), , )

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
	datac => VCC,
	datad => \C9|Add0~30_combout\,
	aclr => GND,
	aload => \C2|RESET~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C9|cnt\(6));

-- Location: LC_X25_Y17_N8
\C8|TA[5]\ : cyclone_lcell
-- Equation(s):
-- \C8|leloop:5:L0|S~0\ = \C8|TB\(5) $ ((((J1_TA[5]))))
-- \C8|TA\(5) = DFFEAS(\C8|leloop:5:L0|S~0\, GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , , \C6|temp\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5a5a",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \C8|TB\(5),
	datac => \C6|temp\(5),
	aclr => \C2|RESET~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C8|leloop:5:L0|S~0\,
	regout => \C8|TA\(5));

-- Location: LC_X26_Y17_N4
\C8|TB[2]\ : cyclone_lcell
-- Equation(s):
-- \C8|leloop:2:L0|S~0\ = ((J1_TB[2] $ (\C8|leloop:1:L0|C2~0\)))
-- \C8|TB\(2) = DFFEAS(\C8|leloop:2:L0|S~0\, GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , , \C7|temp\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \C7|temp\(2),
	datad => \C8|leloop:1:L0|C2~0\,
	aclr => \C2|RESET~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C8|leloop:2:L0|S~0\,
	regout => \C8|TB\(2));

-- Location: LC_X26_Y17_N8
\C8|TA[2]\ : cyclone_lcell
-- Equation(s):
-- \C9|LessThan0~1\ = (\C9|cnt\(2) & ((\C9|LessThan0~0\) # (\C8|leloop:2:L0|S~0\ $ (J1_TA[2])))) # (!\C9|cnt\(2) & (\C9|LessThan0~0\ & (\C8|leloop:2:L0|S~0\ $ (J1_TA[2]))))
-- \C8|TA\(2) = DFFEAS(\C9|LessThan0~1\, GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , , \C6|temp\(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "be28",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \C9|cnt\(2),
	datab => \C8|leloop:2:L0|S~0\,
	datac => \C6|temp\(2),
	datad => \C9|LessThan0~0\,
	aclr => \C2|RESET~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C9|LessThan0~1\,
	regout => \C8|TA\(2));

-- Location: LC_X26_Y17_N9
\C8|TA[3]\ : cyclone_lcell
-- Equation(s):
-- \C8|leloop:3:L0|S~0\ = J1_TA[3] $ (((\C8|TB\(2) & ((\C8|TA\(2)) # (\C8|leloop:1:L0|C2~0\))) # (!\C8|TB\(2) & (\C8|TA\(2) & \C8|leloop:1:L0|C2~0\))))
-- \C8|TA\(3) = DFFEAS(\C8|leloop:3:L0|S~0\, GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , , \C6|temp\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1e78",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \C8|TB\(2),
	datab => \C8|TA\(2),
	datac => \C6|temp\(3),
	datad => \C8|leloop:1:L0|C2~0\,
	aclr => \C2|RESET~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C8|leloop:3:L0|S~0\,
	regout => \C8|TA\(3));

-- Location: LC_X26_Y17_N1
\C8|TB[3]\ : cyclone_lcell
-- Equation(s):
-- \C9|LessThan0~2\ = (\C9|cnt\(3) & ((\C9|LessThan0~1\) # (\C8|leloop:3:L0|S~0\ $ (J1_TB[3])))) # (!\C9|cnt\(3) & (\C9|LessThan0~1\ & (\C8|leloop:3:L0|S~0\ $ (J1_TB[3]))))
-- \C8|TB\(3) = DFFEAS(\C9|LessThan0~2\, GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , , \C7|temp\(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "de48",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \C8|leloop:3:L0|S~0\,
	datab => \C9|cnt\(3),
	datac => \C7|temp\(3),
	datad => \C9|LessThan0~1\,
	aclr => \C2|RESET~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C9|LessThan0~2\,
	regout => \C8|TB\(3));

-- Location: LC_X25_Y17_N2
\C8|leloop:2:L0|C2~0\ : cyclone_lcell
-- Equation(s):
-- \C8|leloop:2:L0|C2~0_combout\ = (\C8|TA\(2) & ((\C8|TB\(2)) # ((\C8|leloop:1:L0|C2~0\)))) # (!\C8|TA\(2) & (\C8|TB\(2) & ((\C8|leloop:1:L0|C2~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee88",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C8|TA\(2),
	datab => \C8|TB\(2),
	datad => \C8|leloop:1:L0|C2~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C8|leloop:2:L0|C2~0_combout\);

-- Location: LC_X25_Y17_N6
\C8|leloop:3:L0|C2~0\ : cyclone_lcell
-- Equation(s):
-- \C8|leloop:3:L0|C2~0_combout\ = ((\C8|TB\(3) & ((\C8|leloop:2:L0|C2~0_combout\) # (\C8|TA\(3)))) # (!\C8|TB\(3) & (\C8|leloop:2:L0|C2~0_combout\ & \C8|TA\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \C8|TB\(3),
	datac => \C8|leloop:2:L0|C2~0_combout\,
	datad => \C8|TA\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C8|leloop:3:L0|C2~0_combout\);

-- Location: LC_X25_Y17_N0
\C8|TB[4]\ : cyclone_lcell
-- Equation(s):
-- \C8|leloop:4:L0|C2~0\ = (\C8|TA\(4) & (((J1_TB[4]) # (\C8|leloop:3:L0|C2~0_combout\)))) # (!\C8|TA\(4) & (((J1_TB[4] & \C8|leloop:3:L0|C2~0_combout\))))
-- \C8|TB\(4) = DFFEAS(\C8|leloop:4:L0|C2~0\, GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , , \C7|temp\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faa0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \C8|TA\(4),
	datac => \C7|temp\(4),
	datad => \C8|leloop:3:L0|C2~0_combout\,
	aclr => \C2|RESET~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C8|leloop:4:L0|C2~0\,
	regout => \C8|TB\(4));

-- Location: LC_X25_Y17_N5
\C8|TA[4]\ : cyclone_lcell
-- Equation(s):
-- \C8|leloop:4:L0|S~0\ = ((J1_TA[4] $ (\C8|TB\(4))))
-- \C8|TA\(4) = DFFEAS(\C8|leloop:4:L0|S~0\, GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , , \C6|temp\(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \C6|temp\(4),
	datad => \C8|TB\(4),
	aclr => \C2|RESET~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C8|leloop:4:L0|S~0\,
	regout => \C8|TA\(4));

-- Location: LC_X25_Y17_N3
\C8|TB[5]\ : cyclone_lcell
-- Equation(s):
-- \C8|leloop:5:L0|C2~0\ = ((\C8|TA\(5) & ((J1_TB[5]) # (\C8|leloop:4:L0|C2~0\))) # (!\C8|TA\(5) & (J1_TB[5] & \C8|leloop:4:L0|C2~0\)))
-- \C8|TB\(5) = DFFEAS(\C8|leloop:5:L0|C2~0\, GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), , , \C7|temp\(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcc0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \C8|TA\(5),
	datac => \C7|temp\(5),
	datad => \C8|leloop:4:L0|C2~0\,
	aclr => \C2|RESET~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C8|leloop:5:L0|C2~0\,
	regout => \C8|TB\(5));

-- Location: LC_X25_Y17_N7
\C9|LessThan0~3\ : cyclone_lcell
-- Equation(s):
-- \C9|LessThan0~3_combout\ = (\C9|cnt\(4) & ((\C9|LessThan0~2\) # (\C8|leloop:3:L0|C2~0_combout\ $ (\C8|leloop:4:L0|S~0\)))) # (!\C9|cnt\(4) & (\C9|LessThan0~2\ & (\C8|leloop:3:L0|C2~0_combout\ $ (\C8|leloop:4:L0|S~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f660",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C8|leloop:3:L0|C2~0_combout\,
	datab => \C8|leloop:4:L0|S~0\,
	datac => \C9|cnt\(4),
	datad => \C9|LessThan0~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C9|LessThan0~3_combout\);

-- Location: LC_X25_Y17_N4
\C9|LessThan0~4\ : cyclone_lcell
-- Equation(s):
-- \C9|LessThan0~4_combout\ = (\C9|cnt\(5) & (\C9|LessThan0~3_combout\ & (\C8|leloop:5:L0|S~0\ $ (\C8|leloop:4:L0|C2~0\)))) # (!\C9|cnt\(5) & ((\C9|LessThan0~3_combout\) # (\C8|leloop:5:L0|S~0\ $ (\C8|leloop:4:L0|C2~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "71d4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C9|cnt\(5),
	datab => \C8|leloop:5:L0|S~0\,
	datac => \C9|LessThan0~3_combout\,
	datad => \C8|leloop:4:L0|C2~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \C9|LessThan0~4_combout\);

-- Location: LC_X25_Y17_N1
\C9|s\ : cyclone_lcell
-- Equation(s):
-- \C9|s~regout\ = DFFEAS((\C9|cnt\(6) & (!\C9|cnt\(7) & ((\C9|LessThan0~4_combout\) # (!\C8|leloop:5:L0|C2~0\)))) # (!\C9|cnt\(6) & (((\C9|LessThan0~4_combout\ & !\C8|leloop:5:L0|C2~0\)) # (!\C9|cnt\(7)))), GLOBAL(\Clk~combout\), !GLOBAL(\C2|RESET~regout\), 
-- , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3173",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \C9|cnt\(6),
	datab => \C9|cnt\(7),
	datac => \C9|LessThan0~4_combout\,
	datad => \C8|leloop:5:L0|C2~0\,
	aclr => \C2|RESET~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C9|s~regout\);

-- Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Display[0]~I\ : cyclone_io
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
	datain => \C0|Scan_Code\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Display(0));

-- Location: PIN_123,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Display[1]~I\ : cyclone_io
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
	datain => \C0|Scan_Code\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Display(1));

-- Location: PIN_124,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Display[2]~I\ : cyclone_io
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
	datain => \C0|Scan_Code\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Display(2));

-- Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Display[3]~I\ : cyclone_io
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
	datain => \C0|Scan_Code\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Display(3));

-- Location: PIN_128,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Display[4]~I\ : cyclone_io
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
	datain => \C0|Scan_Code\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Display(4));

-- Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Display[5]~I\ : cyclone_io
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
	datain => \C0|Scan_Code\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Display(5));

-- Location: PIN_130,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Display[6]~I\ : cyclone_io
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
	datain => \C0|Scan_Code\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Display(6));

-- Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Display[7]~I\ : cyclone_io
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
	datain => \C0|Scan_Code\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Display(7));

-- Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Audio~I\ : cyclone_io
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
	padio => ww_Audio);
END structure;


