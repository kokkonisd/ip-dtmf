library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sin_tab_tb is
end entity;

architecture test of sin_tab_tb is
    component sin_tab is
        port (
            clk : in std_logic;
            addr : in std_logic_vector (5 downto 0);
            value : out std_logic_vector (5 downto 0)
        );
    end component;

    signal test_clk : std_logic;
    signal test_addr, test_value : std_logic_vector (5 downto 0);

    constant clk_period : time := 16.66667 ns; -- Fclk = 60 MHz

begin

    test : sin_tab port map(test_clk, test_addr, test_value);

    clk_process : process
        begin
        wait for clk_period;
          for I in 0 to 1280 loop
            test_clk <= '1';
            wait for clk_period / 2;
            test_clk <= '0';
            wait for clk_period / 2;

            if (I rem 10 = 0) then
                test_addr <= std_logic_vector(to_unsigned(I / 10, 6));
            end if;
          end loop;

          assert false report "End of the simulation";
          wait;
    end process;

end architecture;