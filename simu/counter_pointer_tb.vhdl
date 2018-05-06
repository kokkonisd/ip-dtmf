-- Counter pointer test bench

library ieee;
use ieee.std_logic_1164.all;

-- entity definition
entity counter_pointer_tb is
end entity;

-- architecture definition
architecture test of counter_pointer_tb is

    -- redefinition of the component
    component counter_pointer 
        port (
            clk, rst : in std_logic;
            enable : in std_logic;
            count : out std_logic_vector (5 downto 0)
        );
    end component; 

    -- test signals
    signal test_clk, test_enable, test_rst : std_logic;
    signal test_count : std_logic_vector (5 downto 0);

    constant clk_period : time := 16.66667 ns; -- Fclk = 60 MHz

begin
    -- port map to test entity
    test : counter_pointer port map(test_clk, test_rst, test_enable, test_count);

    -- clock-generating process
    clk_process : process
    begin
        test_clk <= '1';
        wait for clk_period / 2;
        test_clk <= '0';
        wait for clk_period / 2;
    end process;

    -- testing process
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

    -- on output we should see the pointer count to 63 then drop to 0
    -- and get reset to 0 by the reset signal

end architecture ;