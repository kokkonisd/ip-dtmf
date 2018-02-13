library ieee;
use ieee.std_logic_1164.all;

entity decodeur_frequences_tb is
end entity;

architecture test of decodeur_frequences_tb is

    component decodeur_frequences is
        port (
            clk : in std_logic;
            -- permettre d'effectuer un reset
            rst : in std_logic;
            -- la touche du clavier reçue en entrée
            key : in std_logic_vector (3 downto 0);
            -- les deux "fréquences" de sortie
            div1 : out std_logic_vector (10 downto 0);
            div2 : out std_logic_vector (10 downto 0)
        );
    end component;

    signal test_clk : std_logic;
    signal test_rst : std_logic;
    signal test_key : std_logic_vector (3 downto 0);
    signal test_div1 : std_logic_vector (10 downto 0);
    signal test_div2 : std_logic_vector (10 downto 0);

    constant clk_period : time := 16.66667 ns; -- Fclk = 60 MHz

begin

    test : decodeur_frequences port map(test_clk, test_rst, test_key, test_div1, test_div2);

    clk_process : process
        begin
            test_clk <= '1';
            wait for clk_period / 2;
            test_clk <= '0';
            wait for clk_period / 2;
    end process;

    stimulus : process
    begin
        test_rst <= '0';
        test_key <= "0000";
        wait for clk_period * 3;
        test_key <= "0001";
        wait for clk_period * 3;
        test_key <= "0010";
        wait for clk_period * 3;
        test_key <= "0011";
        wait for clk_period * 3;
        test_key <= "0100";
        wait for clk_period * 3;
        test_key <= "0101";
        wait for clk_period * 3;
        test_key <= "0110";
        wait for clk_period * 3;
        test_key <= "0111";
        wait for clk_period * 3;
        test_key <= "1000";
        wait for clk_period * 3;
        test_key <= "1001";
        wait for clk_period * 3;
        test_rst <= '1';
        wait for clk_period * 3;
    end process;

end architecture;