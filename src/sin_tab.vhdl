library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sin_tab is
    port (
        clk : in std_logic;
        addr : in std_logic_vector (5 downto 0);
        value : out std_logic_vector (5 downto 0)
    );
end entity;

architecture behav of sin_tab is

signal addr_dec : integer range 0 to 63;
signal value_tmp, value_dec, value_out : integer range -31 to 31 := 0;

begin

    addr_dec <= to_integer(unsigned(addr));

    -- lookup
    with addr_dec select value_tmp <=
        0 when 0 | 32,
        3 when 1 | 31 | 33 | 63,
        6 when 2 | 30 | 34 | 62,
        9 when 3 | 29 | 35 | 61,
        12 when 4 | 28 | 36 | 60,
        15 when 5 | 27 | 37 | 59,
        17 when 6 | 26 | 38 | 58,
        20 when 7 | 25 | 39 | 57,
        22 when 8 | 24 | 40 | 56,
        24 when 9 | 23 | 41 | 55,
        26 when 10 | 22 | 42 | 54,
        27 when 11 | 21 | 43 | 53,
        29 when 12 | 20 | 44 | 52,
        30 when 13 | 19 | 45 | 51,
        30 when 14 | 18 | 46 | 50,
        31 when 15 | 16 | 17 | 47 | 48 | 49;

    value_dec <= -value_tmp when (addr_dec > 32) else value_tmp;

    process (clk)
    begin
        if rising_edge(clk) then
            value_out <= value_dec;
        end if;
    end process;

    value <= std_logic_vector(to_signed(value_out, 6));

end architecture;