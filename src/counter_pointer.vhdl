-- Counter pointer to address the sin value memory
--
-- This counter outputs addresses-indexes of the sin value memory,
-- going from 0 to 63 to address all 64 parts of the sin wave

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- entity definition
entity counter_pointer is
    port (
        -- standard clock and reset signals
        clk, rst : in std_logic;
        -- enable signal
        enable : in std_logic;
        -- counter output (going from 0 to 63)
        count : out std_logic_vector (5 downto 0)
    );
end entity;

-- architecture definition
architecture behav of counter_pointer is
    -- integer counter
    signal temp : integer range 0 to 65;
begin

    -- clocked process
    process (clk)
    begin
        -- if there's a reset, output is 0
        if (rst = '1') then
            temp <= 0;
        -- on rising edge
        elsif rising_edge(clk) then
            -- if there's an enable, count further
            if (enable = '1') then
                if (temp < 63) then
                    temp <= temp + 1;
                -- else set output to 0
                else
                    temp <= 0;
                end if;
            end if;
        end if;
    end process;

    -- counter output takes the value of the integer counter
    count <= std_logic_vector(to_unsigned(temp, 6));

end architecture;