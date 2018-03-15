----------------------------------------------------------------------------------
-- Company: Digilent Inc 2011
-- Engineer: Michelle Yu  
-- Create Date:    17:05:39 08/23/2011 
--
-- Module Name:    PmodKYPD - Behavioral 
-- Project Name:  PmodKYPD
-- Target Devices: Nexys3
-- Tool versions: Xilinx ISE 13.2 
-- Description: 
--	This file defines a project that outputs the key pressed on the PmodKYPD to the seven segment display
--
-- Revision: 
-- Revision 0.01 - File Created
-- Revision A.Pinna nov-2017 for target device DE1 Altera with one seven segmet dispaly
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity PmodKYPD is
    Port ( 
			  clk,rst : in  STD_LOGIC;
			  Row : in  STD_LOGIC_VECTOR (3 downto 0);
			  sonde_out : out std_LOGIC;
			  Col : out STD_LOGIC_VECTOR (3 downto 0);
			  valeur : out STD_LOGIC_VECTOR (10 downto 0);
			  audio : out std_LOGIC;
			  clk_out : out std_LOGIC);
end PmodKYPD;

architecture Behavioral of PmodKYPD is



signal Decode: STD_LOGIC_VECTOR (3 downto 0);
signal segments, somme : STD_LOGIC_VECTOR (6 downto 0);
signal reset, reset_entree_clavier : STD_LOGIC;
signal enable : STD_LOGIC;
signal sonde : std_LOGIC;
signal sonde_vect : STD_LOGIC_VECTOR (3 downto 0);
signal key : std_logic_vector (3 downto 0);
signal div1, div2 : std_logic_vector (10 downto 0);
signal enable_compteur1, enable_compteur2 : std_LOGIC;
signal count1, count2 : STD_LOGIC_VECTOR (5 downto 0);
begin
	
	C0: entity work.Decoder port map (rst=>RESET, clk=>clk, Row =>Row, Col=>Col, DecodeOut=> Decode);
	-- decode 101101110001101100
	C1: entity work.tick_mae port map (rst=>rst, clk => clk, div => "101101110001101100000000", s => enable);
	C2: entity work.MAET port map (rst=>rst, CLK => clk, ENABLE => enable, TOUCH => decode, KEY => key, RESET => reset, RESET_CLAVIER => reset_entree_clavier);
	C3: entity work.decodeur_frequences port map (clk, reset, key, div1, div2);
	C4: entity work.tick_sin port map (clk, reset, div1, enable_compteur1);
	C5: entity work.tick_sin port map (clk, reset, div2, enable_compteur2);
	C6: entity work.counter_pointer port map (clk, reset, enable_compteur1, count1);
	C7: entity work.counter_pointer port map (clk, reset, enable_compteur2, count2);
	C8: entity work.full_adder_7 port map (count1, count2, '0', reset, clk, somme);
	C9: entity work.pwm port map (clk, somme, reset, audio);
	--somme <= "0000001";
	valeur <= "000000" & decode & '0';
	clk_out <= clk;
end Behavioral;

