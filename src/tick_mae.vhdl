-- Tick to power the timing of the state machine
--
-- This IP provides an enable signal that the state machine uses
-- to time its changing of states (mainly to control output generation
-- following DTMF timing standards)

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- definition of the entity
entity tick_mae is
    port (
        -- basic clock and reset signals
        clk, rst : in std_logic;
        -- div = Fclk / Fsin (24 bits for the state machine)
        -- normally this is fixed at 200 ms ~= 12 * 10^6
        -- in binary : 0b101101110001101100000000
        div : in std_logic_vector (23 downto 0);
        -- tick signal
        s : out std_logic
    );
end entity;

-- definition of the architecture
architecture behav of tick_mae is
-- counter
signal i : integer range 0 to 15000000;
-- output signal
signal s_out : std_logic := '0';
begin

    -- update the output
    s <= s_out;

    -- clocked process
    process (clk)
    begin
        -- if there's a reset
		if (rst = '1') then 
            -- reset the counter and set the exit to 0
			i <= 0;
			s_out <= '0';
        -- if there isn't a reset, trigger on rising edge
        elsif rising_edge(clk) then
            -- if the count is complete
            if (i = to_integer(unsigned(div))) then
                -- reset the counter and produce a tick
                i <= 0;
                s_out <= '1';
            else
                -- update the counter and keep emmitting 0
                i <= i + 1;
                s_out <= '0';
            end if;
        end if;
    end process;

end architecture;