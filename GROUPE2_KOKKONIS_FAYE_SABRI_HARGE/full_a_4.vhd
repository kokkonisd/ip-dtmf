library ieee;
use ieee.std_logic_1164.all;

Entity full_adder_4 is 
port (
  Cin: in std_logic;
  A4,B4: in std_logic_vector (3 downto 0);
  S5: out std_logic_vector (3 downto 0)
);
end entity;

Architecture full_adder_4_a of full_adder_4 is
  
  Signal Ctab: std_logic_vector (4 downto 0) := (others => '0');
  
  component FULLADDER port (
    A,B,C1: in std_logic;
    S,C2: out std_logic);
  end component;
  
begin
  leloop : for i in 0 to 3 generate
    L0 : FULLADDER port map (A4(i), B4(i), Ctab(i), S5(i), Ctab(i+1));
  end generate;
end architecture full_adder_4_a;