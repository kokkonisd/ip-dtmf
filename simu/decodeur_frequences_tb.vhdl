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

        test_rst <= '0';
        
        for I in 0 to 1000 loop
            test_clk <= '1';
            wait for clk_period / 2;
            test_clk <= '0';
            wait for clk_period / 2;

            if (I = 0) then
                test_key <= "0000";
            elsif (I = 10) then
                test_key <= "0001";
            elsif (I = 20) then
                test_key <= "0010";
            elsif (I = 30) then
                test_key <= "0011";
            elsif (I = 40) then
                test_key <= "0100";
            elsif (I = 50) then
                test_key <= "0101";
            elsif (I = 60) then
                test_key <= "0110";
            elsif (I = 70) then
                test_key <= "0111";
            elsif (I = 80) then
                test_key <= "1000";
            elsif (I = 90) then
                test_key <= "1001";
            elsif (I > 100) then
                test_rst <= '1';
            end if;

        end loop;

        assert false report "End of the simulation";
        wait;
    end process;

end architecture;