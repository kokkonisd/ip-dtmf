-- Sin wave table memory
--
-- This IP stores pre-generated sin wave values. It behaves as an
-- addressed memory (taking an integer address input between 0 and 63 and
-- outputing the corresponding sin wave value)

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- entity definition
entity sin_tab is
    port (
        -- standard clock and reset signals
        clk, rst : in std_logic;
        -- input address (between 0 and 63)
        addr : in std_logic_vector (5 downto 0);
        -- output sin wave value corresponding to the input address
        value : out std_logic_vector (5 downto 0)
    );
end entity;

-- architecture definition
architecture behav of sin_tab is
-- temp signals 
signal addr_dec : integer range 0 to 63;
signal value_tmp, value_dec, value_out : integer range -31 to 31;

begin

    -- transform binary address to an integer
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

    -- handle negative values
    value_dec <= -value_tmp when (addr_dec > 32) else value_tmp;

    -- clocked process
    process (clk)
    begin
        -- on reset output 0
        if (rst = '1') then
            value_out <= 0;
        -- on rising edge output the selected value
        elsif rising_edge(clk) then
            value_out <= value_dec;
        end if;
    end process;

    -- re-transform the output value from decimal to binary
    value <= std_logic_vector(to_signed(value_out, 6));

end architecture;