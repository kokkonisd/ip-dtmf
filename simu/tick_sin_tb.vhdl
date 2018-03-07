library ieee;
use ieee.std_logic_1164.all;

entity tick_sin_tb is
end entity;

architecture test of tick_sin_tb is
    component tick_sin 
        port (
            clk, rst : in std_logic;
            div : in std_logic_vector (25 downto 0);
            s : out std_logic
        );
    end component; 

    signal test_div : std_logic_vector (25 downto 0);
    signal test_clk, test_s, test_rst : std_logic;

    constant clk_period : time := 16.66667 ns; -- Fclk = 60 MHz

begin
    
    test : tick_sin port map(test_clk, test_rst, test_div, test_s);

    test_rst <= '0';

    -- div = 634 = Fclk / (Fsin * 64) 
    -- pour Fsin = 1477Hz et Fclk = 60 MHz
    test_div <= "00000000000000001001111010";

    clk_process : process
    begin
        test_clk <= '1';
        wait for clk_period / 2;
        test_clk <= '0';
        wait for clk_period / 2;
    end process;

    -- en sortie on aura ~94487 Hz =~ 64 * 1477 Hz

end architecture ;