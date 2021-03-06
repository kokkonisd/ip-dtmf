library ieee;
use ieee.std_logic_1164.all;

entity tick_sin_tb is
end entity;

architecture test of tick_sin_tb is
    -- define the tick_sin component
    component tick_sin 
        port (
            clk, rst : in std_logic;
            div : in std_logic_vector (10 downto 0);
            s : out std_logic
        );
    end component; 

    -- clock divisions signal
    signal test_div : std_logic_vector (10 downto 0);
    -- artificial clock and reset, output
    signal test_clk, test_s, test_rst : std_logic;
    -- clock period
    constant clk_period : time := 16.66667 ns; -- Fclk = 60 MHz

begin
    -- entity port map
    test : tick_sin port map(test_clk, test_rst, test_div, test_s);

    test_rst <= '0';

    -- div = 634 = Fclk / (Fsin * 64) 
    -- for Fsin = 1477Hz and Fclk = 60 MHz
    test_div <= "10101000001";

    clk_process : process
    begin
        test_clk <= '1';
        wait for clk_period / 2;
        test_clk <= '0';
        wait for clk_period / 2;
    end process;

    -- we should get ~94487 Hz =~ 64 * 1477 Hz

end architecture ;