library ieee;
use ieee.std_logic_1164.all;

entity counter_pointer_tb is
end entity;

architecture test of counter_pointer_tb is
  component counter_pointer 
    port (
        clk : in std_logic;
        enable : in std_logic;
        clear : in std_logic;
        count : out std_logic_vector (5 downto 0)
    );
  end component; 

  signal test_clk, test_enable, test_clear : std_logic;
  signal test_count : std_logic_vector (5 downto 0);

  constant clk_period : time := 16.66667 ns; -- Fclk = 60 MHz

begin
    test : counter_pointer port map(test_clk, test_enable, test_clear, test_count);

    clk_process : process
        begin
          test_clear <= '0';

          for I in 0 to 1000 loop
            test_clk <= '1';
            wait for clk_period / 2;
            test_clk <= '0';
            wait for clk_period / 2;

            if (I < 100) then
              test_enable <= '1';
            else
              test_enable <= '0';
            end if;

            if (I = 10) then
              test_clear <= '1';
            else
              test_clear <= '0';
            end if;
          end loop;

          assert false report "End of the simulation";
          wait;
    end process;

end architecture ;