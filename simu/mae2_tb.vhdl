library ieee;
use ieee.std_logic_1164.all;

entity mae2_tb is
end entity;

-- test bench architecture
architecture test of mae2_tb is
    -- mae2 definition
    component mae2 is 
        port (
            -- clock and reset signals
            CLK,rst: in std_logic;
            -- enable input
            ENABLE : in std_logic;
            -- touch key code input
            TOUCH : in std_logic_vector (7 downto 0);
            -- key code output
            KEY : out std_logic_vector (3 downto 0);
            -- internal reset output
            RESET : out std_logic
        );
    end component;

    -- test signals
    signal test_rst : std_logic;
    signal test_enable : std_logic;
    signal test_touch : std_logic_vector (7 downto 0);
    signal test_key : std_logic_vector (3 downto 0);
    signal test_reset : std_logic;

    -- test clock and clock period
    signal test_clk : std_logic;
    constant clk_period : time := 16.66667 ns; -- Fclk = 60 MHz

begin
    -- entity port map
    test : mae2 port map(test_clk, test_rst, test_enable, test_touch, test_key, test_reset);

    -- clock generation process
    clk_process : process
    begin
        test_clk <= '1';
        wait for clk_period / 2;
        test_clk <= '0';
        wait for clk_period / 2;
    end process;

    -- reset process
    rst_process : process
    begin
        test_rst <= '1';
        wait for clk_period;
        test_rst <= '0';
        wait for clk_period * 100000000;
    end process;

    -- enable process
    enable_process : process
    begin
        test_enable <= '1';
        wait for clk_period;
        test_enable <= '0';
        wait for (200 ms - clk_period);
    end process;

    -- touch code corresponding to key number 9
    test_touch <= "01111101";

end architecture;