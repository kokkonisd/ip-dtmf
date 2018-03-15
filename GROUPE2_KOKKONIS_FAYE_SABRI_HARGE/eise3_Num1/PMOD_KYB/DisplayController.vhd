----------------------------------------------------------------------------------
-- Company: Digilent Inc 2011
-- Engineer: Michelle Yu  
-- Create Date: 13:28:41 08/18/2011 
--
-- Module Name:    DisplayController - Behavioral 
-- Project Name: 	 PmodKYPD
-- Target Devices: Nexys 3 
-- Tool versions: Xilinx ISE Design Suite 13.2
--
-- Description: 
-- This file defines a DisplayController that controls the seven segment display that works with 
-- the output of the Decoder
-- Revision: 
-- Revision 0.01 - File Created
-- Revision A.Pinna nov-2017 for target device DE1 Altera with one seven segmet dispaly
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity DisplayController is
    Port ( 
			  --output from the Decoder
			  DispVal : in  STD_LOGIC_VECTOR (3 downto 0);
			  --controls the display digits
			  anode: out std_logic_vector(3 downto 0);
			  --controls which digit to display
           segOut : out  STD_LOGIC_VECTOR (6 downto 0)); 
end DisplayController;

architecture Behavioral of DisplayController is
begin	
	with DispVal select
	segOut <= "0000001" when "0000",
     "1001111" when "0001",
     "0010010" when "0010",
     "0000110" when "0011",
     "1001100" when "0100",
     "0100100" when "0101",
     "1100000" when "0110",
     "0001111" when "0111",
     "0000000" when "1000",     
     "0001100" when "1001",
     "0001000" when "1010",
     "0000000" when "1011",
     "0110001" when "1100",
     "0000001" when "1101",
     "0110000" when "1110",
     "0111000" when "1111",
     "1111111" when others;
	
end Behavioral;