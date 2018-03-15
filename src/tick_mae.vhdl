library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tick_mae is
    port (
        clk, rst : in std_logic;
        -- div = Fclk / (Fsin) (24 bits pour la mae)
        div : in std_logic_vector (23 downto 0);
        s : out std_logic
    );
end entity;

architecture behav of tick_mae is
signal i : integer range 0 to 10000000;
signal s_out : std_logic := '0';
begin

    s <= s_out;

    process (clk, rst)
    begin
		if (rst = '1') then 
			i <= 0;
			s_out <= '0';
        elsif rising_edge(clk) then
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