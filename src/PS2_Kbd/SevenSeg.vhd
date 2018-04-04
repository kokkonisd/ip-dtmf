-- SevenSeg.vhd
-- -----------------------------------------
--   Hexadecimal to 7 segments encoder
-- -----------------------------------------
-- http://www.alse-fr.com
-- Notes : outputs are active high if Pol='0' else active low.
--         order is : Segout(1)=a, ... Segout(7)=g

library IEEE;
  use IEEE.std_logic_1164.all;
  use IEEE.numeric_std.all;

-- --------------------------------
    Entity SevenSeg is
-- --------------------------------
  port ( Data   : in  std_logic_vector(3 downto 0);
         Pol    : in  std_logic;
         Segout : out std_logic_vector(1 to 7) ); -- a, b c d e f g
end;

-- --------------------------------------------------
    Architecture Comb of SevenSeg is
-- --------------------------------------------------

  signal Seg : std_logic_vector(SegOut'range);

begin

Xrg: for i in SegOut'range generate
  SegOut(i) <= Seg(i) xor Pol;
end generate;

process(Data)
begin
  case Data is
    when  "0000"  => Seg <= "1000000";
    when  "0001"  => Seg <= "1111001";
    when  "0010"  => Seg <= "0100100";
    when  "0011"  => Seg <= "0110000";
    when  "0100"  => Seg <= "0011001";
    when  "0101"  => Seg <= "0010010";
    when  "0110"  => Seg <= "0000010";
    when  "0111"  => Seg <= "1111000";
    when  "1000"  => Seg <= "0000000";
    when  "1001"  => Seg <= "0010000";
    when others => Seg <= (others => '-');
  end case;
end process;

end Comb;

