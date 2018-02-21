-----------------------------------------------------
-- Ce programme contientla description d'une memoire
-- PIPO sur N bit (MSB a gauche). Le signal que cette
-- memoire doit recevoir en entree est DecodeOut du
-- Decoudeur, le signal de sortie devra etre envoye
-- 
-----------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;

entity memoire_Nbit is
generic(
  N : integer := 40
);
port(
      clk : in std_logic;
      data_in : in std_logic_vector((N-1) downto 0) := (others => '0');
      data_out : out std_logic_vector((N-1) downto 0) := (others => '0')
);  
  
end memoire_Nbit;

architecture behav of memoire_Nbit is

signal out_temp : std_logic_vector((N-1) downto 0);

begin
  
 data_out <= out_temp;
  
 memorisation : process(clk,data_in)
  begin 
  if(clk'event and clk = '1') then
  out_temp <= data_in;
  end if;
  end process memorisation;

end behav;