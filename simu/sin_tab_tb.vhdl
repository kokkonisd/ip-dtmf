library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sin_tab_tb is
end entity;

architecture test of sin_tab_tb is
    component sin_tab is
        port (
            clk, rst : in std_logic;
            addr : in std_logic_vector (5 downto 0);
            value : out std_logic_vector (5 downto 0)
        );
    end component;

    signal test_clk, test_rst : std_logic;
    signal test_addr, test_value : std_logic_vector (5 downto 0);

    constant clk_period : time := 16.66667 ns; -- Fclk = 60 MHz

begin

    test : sin_tab port map(test_clk, test_rst, test_addr, test_value);

    clk_process : process
    begin
        test_clk <= '1';
        wait for clk_period / 2;
        test_clk <= '0';
        wait for clk_period / 2;
    end process;

    stimulus : process
    begin
        test_rst <= '1';
        wait for clk_period;
        test_rst <= '0';
        for I in 0 to 63 loop
            test_addr <= std_logic_vector(to_unsigned(I, 6));
            wait for clk_period * 2;
        end loop;
    end process;

end architecture;