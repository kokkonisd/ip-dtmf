library ieee;
use ieee.std_logic_1164.all;

--use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity pwm is port (
      clk: in std_logic;
      val : in std_logic_vector (6 downto 0); --valeur recue par le full adder, entre -64 et 64
      reset : in std_logic;
      Sortie : out std_logic );
end entity pwm;

architecture arc of pwm is

signal cnt : integer range -100 to 100;
signal rst : std_logic;
signal s : std_logic;

begin
   
process (clk,reset) begin
  
  if reset ='1' then 
    s<='0';
    cnt <= -64;
  elsif (clk'event and clk='1') then
    
    if (cnt < to_integer(signed(val))) then s <='1'; --met la sortie à 1 jusqu'a 
    else s <='0';               --la valeur du full adder entre 0 et 10
    end if;
    
    if (cnt = 63) then cnt<= -64; --remet à 0 quand on a
    else cnt <= cnt + 1;                 -- compté jusqu'a 10
    end if;
  end if;
end process;
Sortie <= s;
end arc;


