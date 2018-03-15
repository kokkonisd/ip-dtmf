library ieee;
use ieee.std_logic_1164.all;

entity SOUSTRACTEUR is 
port (
	A: in std_logic_vector (3 downto 0);
	B: in std_logic_vector (3 downto 0);
	clk: in std_logic;
	S: out std_logic_vector (3 downto 0)
	);
end entity SOUSTRACTEUR;

architecture dataflow of SOUSTRACTEUR is
  signal Bneg : std_logic_vector (3 downto 0);
  
  component NEGATIF port (
     A: in std_logic_vector (3 downto 0);
	   clk: in std_logic;
	   S: out std_logic_vector (3 downto 0)
    );
  end component;
  
  component full_adder_4 port (
    Cin: in std_logic;
    A4,B4: in std_logic_vector (3 downto 0);
    S5: out std_logic_vector (3 downto 0)
    );
  end component;
  
begin
    P0 : NEGATIF port map (B, clk, Bneg);
    P1 : full_adder_4 port map ('0', A, Bneg, S);
end architecture dataflow;