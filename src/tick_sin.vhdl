library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tick_sin is
  port (
    clk : in std_logic;
    -- div = Fclk / (Fsin * 64) (11 bits max)
    div : in std_logic_vector (10 downto 0);
    s : out std_logic
  );
end entity;

architecture behav of tick_sin is
signal i : integer range 0 to 1000000000;
signal s_out : std_logic := '0';
begin

    s <= s_out;

    process (clk)
    begin
        if rising_edge(clk) then
            if (i = to_integer(unsigned(div))) then
                i <= 0;
                s_out <= '1';
            else
                i <= i + 1;
                s_out <= '0';
            end if;
        end if;
    end process;

end architecture;