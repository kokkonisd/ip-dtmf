library ieee;
use ieee.std_logic_1164.all;

Entity full_adder_7 is 
port (
  A6,B6: in std_logic_vector (5 downto 0);
  Cin, RESET, clk: in std_logic;
  S7: out std_logic_vector (6 downto 0)
);
end entity;

Architecture full_adder_7_a of full_adder_7 is
  
  Signal Ctab: std_logic_vector (6 downto 0);
  Signal TA, TB : std_logic_vector (5 downto 0);
  
  component FULLADDER port (
    A,B,C1: in std_logic;
    S,C2: out std_logic);
  end component;
  
begin
process (RESET, clk) begin
	if (RESET='1') then
		--Ctab <= (others => '0');
		TA <= (others => '0');
		TB <= (others => '0');
	elsif (rising_edge(clk)) then
		TA <= A6;
		TB <= B6;
	end if;
end process;

  leloop : for i in 0 to 5 generate
    L0 : FULLADDER port map (TA(i), TB(i), Ctab(i), S7(i), Ctab(i+1));
  end generate;
  S7(6) <= Ctab(6);
end architecture full_adder_7_a;