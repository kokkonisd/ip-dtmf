library ieee;
use ieee.std_logic_1164.all;

entity ip_test_tb is
end entity;

architecture test of ip_test_tb is
    -- define the ip_test component
    component ip_test 
        port (
            -- basic clock and reset signals
            clk, rst : in std_logic;
            touch : in std_logic_vector (7 downto 0);
            sin1, sin2 : out std_logic_vector (5 downto 0);
            final : out std_logic_vector (6 downto 0)
        );
    end component; 

    signal test_touch : std_logic_vector (7 downto 0);
    signal test_sin1, test_sin2 : std_logic_vector (5 downto 0);
    signal test_final : std_logic_vector (6 downto 0);

    -- artificial clock and reset, output
    signal test_clk, test_rst : std_logic;
    -- clock period
    constant clk_period : time := 16.66667 ns; -- Fclk = 60 MHz

begin
    -- entity port map
    test : ip_test port map(test_clk, test_rst, test_touch, test_sin1, test_sin2, test_final);

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

    test_touch <= "01110011";

end architecture ;