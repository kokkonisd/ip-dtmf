library ieee;
use ieee.std_logic_1164.all;

entity decodeur_frequences is
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
end entity;

architecture behav of decodeur_frequences is
    signal out1 : std_logic_vector (10 downto 0) := (others => '0');
    signal out2 : std_logic_vector (10 downto 0) := (others => '0');
begin

    process (clk, rst)
    begin
        if (rst = '1') then
            out1 <= (others => '0');
            out2 <= (others => '0');
        elsif rising_edge(clk) then
            case key is
                when "0000" =>
                    out1 <= "01111100100";
                    out2 <= "01010111101";
                when "0001" =>
                    out1 <= "10101000001";
                    out2 <= "01100000111";
                when "0010" =>
                    out1 <= "10101000001";
                    out2 <= "01010111101";
                when "0011" =>
                    out1 <= "10101000001";
                    out2 <= "01001111010";
                when "0100" =>
                    out1 <= "10011000001";
                    out2 <= "01100000111";
                when "0101" =>
                    out1 <= "10011000001";
                    out2 <= "01010111101";
                when "0110" =>
                    out1 <= "10011000001";
                    out2 <= "01001111010";
                when "0111" =>
                    out1 <= "10001001100";
                    out2 <= "01100000111";
                when "1000" =>
                    out1 <= "10001001100";
                    out2 <= "01010111101";
                when "1001" =>
                    out1 <= "10001001100";
                    out2 <= "01001111010";
                when others =>
                    out1 <= (others=>'X');
                    out2 <= (others=>'X');
            end case;
        end if;
    end process;

    div1 <= out1;
    div2 <= out2;

end architecture;