library ieee;
use ieee.std_logic_1164.all;

entity mae2_tb is
end entity;

architecture test of mae2_tb is

    component mae2 is 
        port (
            CLK,rst: in std_logic;
            ENABLE : in std_logic;
            TOUCH : in std_logic_vector (7 downto 0);
            KEY : out std_logic_vector (3 downto 0);
            RESET : out std_logic
        );
    end component;

    signal test_rst : std_logic;
    signal test_enable : std_logic;
    signal test_touch : std_logic_vector (7 downto 0);
    signal test_key : std_logic_vector (3 downto 0);
    signal test_reset : std_logic;

    signal test_clk : std_logic;
    constant clk_period : time := 16.66667 ns; -- Fclk = 60 MHz

begin

    test : mae2 port map(test_clk, test_rst, test_enable, test_touch, test_key, test_reset);

    clk_process : process
    begin
        test_clk <= '1';
        wait for clk_period / 2;
        test_clk <= '0';
        wait for clk_period / 2;
    end process;

    rst_process : process
    begin
        test_rst <= '1';
        wait for clk_period;
        test_rst <= '0';
        wait for clk_period * 100000000;
    end process;

    enable_process : process
    begin
        test_enable <= '1';
        wait for clk_period;
        test_enable <= '0';
        wait for (100 ms - clk_period);
    end process;

    test_touch <= "01111101";

end architecture;