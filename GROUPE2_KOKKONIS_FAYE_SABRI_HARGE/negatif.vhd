library ieee;
use ieee.std_logic_1164.all;

entity NEGATIF is 
port (
	A: in std_logic_vector (3 downto 0);
	clk: in std_logic;
	S: out std_logic_vector (3 downto 0)
	);
end entity NEGATIF;

architecture dataflow of NEGATIF is
  signal temp : std_logic_vector (2 downto 0);

begin
  
  
  process (clk)
    begin
      
    if (rising_edge(clk)) then
      S(0) <= A(0);
      temp(0) <= A(0);
      
      S(1) <= (A(1) and (not temp(0))) or ((not A(1)) and temp(0));
      temp(1) <= A(1) or ((not A(1)) and temp(0));
      
      S(2) <= (A(2) and (not temp(1))) or ((not A(2)) and temp(1));
      temp(2) <= A(2) or ((not A(2)) and temp(1));
      
      S(3) <= (A(3) and (not temp(2))) or ((not A(3)) and temp(2));
    end if;
      
  end process;
  
end architecture dataflow;