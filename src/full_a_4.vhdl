-- Full Adder on 7 bits
--
-- This IP is used to add up the two seperate sin wave values in order to
-- produce the final DTMF signal and send it to the PWM generator

library ieee;
use ieee.std_logic_1164.all;

-- entity definition
Entity full_adder_7 is 
port (
  -- the two 6-bit signed values to add
  A6, B6: in std_logic_vector (5 downto 0);
  -- input carry reset and clock signals
  Cin, RESET, clk: in std_logic;
  -- output on 7 bits
  S7: out std_logic_vector (6 downto 0)
);
end entity;

-- architecture definition
Architecture full_adder_7_a of full_adder_7 is
  
  Signal Ctab: std_logic_vector (6 downto 0);
  Signal TA, TB : std_logic_vector (5 downto 0);
  
  -- redefinition of the 1-bit full adder component
  component FULLADDER port (
    A,B,C1: in std_logic;
    S,C2: out std_logic);
  end component;
  
begin
-- clocked process
process (clk) begin
  -- on reset set output to 0
	if (RESET='1') then
		--Ctab <= (others => '0');
		TA <= (others => '0');
		TB <= (others => '0');
  -- on rising edge
	elsif (rising_edge(clk)) then
    -- update outputs
		TA <= A6;
		TB <= B6;
	end if;
end process;

  -- generate statement to handle the 7-bit input with the 1-bit full adders
  leloop : for i in 0 to 5 generate
    L0 : FULLADDER port map (TA(i), TB(i), Ctab(i), S7(i), Ctab(i+1));
  end generate;
  S7(6) <= Ctab(6);
end architecture full_adder_7_a;