library ieee;
use ieee.std_logic_1164.all;

entity tick_mae_tb is
end entity;

architecture test of tick_mae_tb is
    -- define the tick_mae component
    component tick_mae 
        port (
            clk, rst : in std_logic;
            div : in std_logic_vector (23 downto 0);
            s : out std_logic
        );
    end component; 

    -- clock divisions signal
    signal test_div : std_logic_vector (23 downto 0);
    -- artificial clock and reset, output
    signal test_clk, test_s, test_rst : std_logic;
    -- clock period
    constant clk_period : time := 16.66667 ns; -- Fclk = 60 MHz

begin
    -- entity port map
    test : tick_mae port map(test_clk, test_rst, test_div, test_s);

    test_rst <= '0';

    -- Fclk = 60MHz
    -- Fsin = 1 / 200ms
    -- div = Fclk / Fsin = 12000000 = 0b101101110001101100000000
    test_div <= "101101110001101100000000";

    clk_process : process
    begin
        test_clk <= '1';
        wait for clk_period / 2;
        test_clk <= '0';
        wait for clk_period / 2;
    end process;

    -- output should be a 200ms tick

end architecture ;