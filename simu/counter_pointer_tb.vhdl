library ieee;
use ieee.std_logic_1164.all;

entity counter_pointer_tb is
end entity;

architecture test of counter_pointer_tb is
  component counter_pointer 
    port (
        clk, rst : in std_logic;
        enable : in std_logic;
        count : out std_logic_vector (5 downto 0)
    );
  end component; 

  signal test_clk, test_enable, test_rst : std_logic;
  signal test_count : std_logic_vector (5 downto 0);

  constant clk_period : time := 16.66667 ns; -- Fclk = 60 MHz

begin
    test : counter_pointer port map(test_clk, test_rst, test_enable, test_count);

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
        test_enable <= '1';
        wait for clk_period * 100;
        test_enable <= '0';
        wait for clk_period * 2;
        test_rst <= '1';
        wait for clk_period * 3;
    end process;

end architecture ;