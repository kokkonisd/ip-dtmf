library ieee;
use ieee.std_logic_1164.all;

entity TESTBENCH is
end entity TESTBENCH;

architecture TESTBENCH_A of TESTBENCH is
  
  signal clk,rst,enable,reset : std_logic;
  signal touch,key : std_logic_vector (3 downto 0);
  constant clk_period : time := 10 ns;
  constant en_period : time := 100000 ns;
  
begin
    
    clk_process : process
    begin
      CLK <= '1';
      wait for clk_period/2;
      CLK <= '0';
      wait for clk_period/2;
    end process;
    
    enable_process : process
    begin
      enable <= '1';
      wait for clk_period;
      enable <= '0';
      wait for en_period - clk_period;
    end process;
    
    fonction: entity work.MAET(MAET_A)
  port map (clk,rst,enable,touch,key,reset);
    
    STIMULUS: process
    begin
     rst <= '1';
     wait for 20 ns;
     
     rst <= '0';
      touch <= "0010";
      wait for 2400000 ns;
      
      touch <= "1011";
      wait for 250000 ns;
      
      touch <= "0011";
      wait for 200000 ns;
      
      touch <= "0100";
      wait for 200000 ns;
      
      touch <= "0101";
      wait for 200000 ns;

      
    end process STIMULUS;
  end architecture TESTBENCH_A;