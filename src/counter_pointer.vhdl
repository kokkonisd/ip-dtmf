library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity counter_pointer is
    port (
        clk, rst : in std_logic;
        enable : in std_logic;
        count : out std_logic_vector (5 downto 0)
    );
end entity;

architecture behav of counter_pointer is
    signal temp : integer range 0 to 65;
begin

    process (clk, rst)
    begin
        if (rst = '1') then
            temp <= 0;
        elsif rising_edge(clk) then
            if (enable = '1') then
                if (temp < 63) then
                    temp <= temp + 1;
                else
                    temp <= 0;
                end if;
            end if;
        end if;
    end process;

    count <= std_logic_vector(to_unsigned(temp, 6));

end architecture;