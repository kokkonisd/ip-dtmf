-- Test bench of the sin wave table

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- entity definition
entity sin_tab_tb is
end entity;

-- architecture definition
architecture test of sin_tab_tb is
    -- component redefinition
    component sin_tab is
        port (
            clk, rst : in std_logic;
            addr : in std_logic_vector (5 downto 0);
            value : out std_logic_vector (5 downto 0)
        );
    end component;

    -- test signals
    signal test_clk, test_rst : std_logic;
    signal test_addr, test_value : std_logic_vector (5 downto 0);

    constant clk_period : time := 16.66667 ns; -- Fclk = 60 MHz

begin
    -- port map to test the entity
    test : sin_tab port map(test_clk, test_rst, test_addr, test_value);

    -- clock-generating process
    clk_process : process
    begin
        test_clk <= '1';
        wait for clk_period / 2;
        test_clk <= '0';
        wait for clk_period / 2;
    end process;

    -- value testing process
    stimulus : process
    begin
        -- begin with a reset
        test_rst <= '1';
        wait for clk_period;
        test_rst <= '0';
        -- test for all the addresses
        for I in 0 to 63 loop
            test_addr <= std_logic_vector(to_unsigned(I, 6));
            wait for clk_period * 2;
        end loop;
    end process;

end architecture;