library ieee;
use ieee.std_logic_1164.all;

entity FULLADDER is 
port (
	A: in std_logic;
	B: in std_logic;
	C1: in std_logic;
	S: out std_logic;
	C2: out std_logic
	);
end entity FULLADDER;

architecture dataflow of FULLADDER is
begin
  S <= (A xor B) xor C1;
  C2 <= (A and B) or (C1 and (A xor B));
end architecture dataflow;