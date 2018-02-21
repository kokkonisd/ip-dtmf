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
			  valeur : out STD_LOGIC_VECTOR (3 downto 0));
end PmodKYPD;

architecture Behavioral of PmodKYPD is



signal Decode: STD_LOGIC_VECTOR (3 downto 0);
signal segments : STD_LOGIC_VECTOR (6 downto 0);
signal reset : STD_LOGIC;
signal enable : STD_LOGIC;
signal sonde : std_LOGIC;
signal sonde_vect : STD_LOGIC_VECTOR (3 downto 0);
begin
	
	C0: entity work.Decoder port map (rst=>rst, clk=>clk, Row =>Row, Col=>Col, DecodeOut=> Decode);
	C1: entity work.tick_sin port map (rst=>rst, clk => clk, div => "00000000000000000001000000", s => sonde);
	C2: entity work.MAET port map (rst=>rst, CLK => clk, ENABLE => sonde, TOUCH => decode, KEY => valeur, RESET => reset);
	sonde_out <= sonde_vect(0);
end Behavioral;

