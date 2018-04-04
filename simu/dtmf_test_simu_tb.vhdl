library ieee;
use ieee.std_logic_1164.all;

entity dtmf_test_simu_tb is
end entity;

architecture test of dtmf_test_simu_tb is
    component dtmf_test_simu is
        port (
            clk, rst : in std_logic;
            -- div = Fclk / (Fsin) (24 bits pour la mae)
            scan_code : in std_logic_vector (7 downto 0);
            key : out std_logic_vector (3 downto 0);
            div1, div2 : out std_logic_vector (10 downto 0);
            tick1, tick2 : out std_logic;
            count1, count2 : out std_logic_vector (5 downto 0);
            value1, value2 : out std_logic_vector (5 downto 0)
        );
    end component;

    signal test_clk, test_rst : std_logic;
    signal test_scan_code : std_logic_vector (7 downto 0);
    signal test_key : std_logic_vector (3 downto 0);
    signal test_div1, test_div2 : std_logic_vector (10 downto 0);
    signal test_tick1, test_tick2 : std_logic;
    signal test_count1, test_count2 : std_logic_vector (5 downto 0);
    signal test_value1, test_value2 : std_logic_vector (5 downto 0);

    constant clk_period : time := 16.66667 ns; -- Fclk = 60 MHz

begin
    
    test : dtmf_test_simu port map(test_clk, test_rst, test_scan_code, test_key, test_div1, test_div2, test_tick1, test_tick2, test_count1, test_count2, test_value1, test_value2);

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
        wait for 800 ms;
    end process;

    test_scan_code <= "01101001";

end architecture ;