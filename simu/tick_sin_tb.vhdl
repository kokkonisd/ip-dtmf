library ieee;
use ieee.std_logic_1164.all;

entity tick_sin_tb is
end entity;

architecture test of tick_sin_tb is
    component tick_sin 
      port (
        clk : in std_logic;
        div : in std_logic_vector (11 downto 0);
        s : out std_logic
      );
    end component; 

    signal div : std_logic_vector (11 downto 0);
    signal clk, s : std_logic;
    constant clk_period : time := 16.66667 ns; -- Fclk = 60 MHz

begin
    test : tick_sin port map(clk, div, s);

    -- div = 634 = Fclk / (Fsin * 64) 
    -- pour Fsin = 1477Hz et Fclk = 60 MHz
    div <= "001001111010";

    clk_process : process
        begin
          for I in 0 to 1000000 loop
            clk <= '1';
            wait for clk_period / 2;
            clk <= '0';
            wait for clk_period / 2;
          end loop;

          assert false report "End of the simulation";
          wait;
    end process;

    -- en sortie on aura ~94487 Hz =~ 64 * 1477 Hz

end architecture ;