-- Full code for the DTMF IP

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- definition of the entity
entity ip_test is
    port (
        -- Basic clock and reset signals
        clk, rst : in std_logic;
        -- Keyboard Clock Line
        PS2_Clk : in  std_logic;
        -- Keyboard Data Line
        PS2_Data : in  std_logic;
        -- Seven bits for the display
        Display : out std_logic_vector(7 downto 0);
        -- Audio output
        Audio : out std_logic
    );
end entity;

architecture behav of ip_test is

    signal test_enable, test_reset : std_logic;
    signal test_key : std_logic_vector (3 downto 0);
    signal test_div1, test_div2 : std_logic_vector (10 downto 0);
    signal tick1_out, tick2_out : std_logic;
    signal count1_out, count2_out : std_logic_vector (5 downto 0);
    signal value1_out, value2_out : std_logic_vector (5 downto 0);
    signal signal_out : std_logic_vector (6 downto 0);

begin

    tick_mae_map : entity work.tick_mae port map(clk, rst, "101101110001101100000000", test_enable);

    mae2_map : entity work.mae2 port map(clk, rst, test_enable, touch, test_key, test_reset);

    frequency_decoder_map : entity work.frequency_decoder port map(clk, test_reset, test_key, test_div1, test_div2);

    tick_sin_1_map : entity work.tick_sin port map(clk, test_reset, test_div1, tick1_out);
    tick_sin_2_map : entity work.tick_sin port map(clk, test_reset, test_div2, tick2_out);

    counter_pointer_1_map : entity work.counter_pointer port map(clk, test_reset, tick1_out, count1_out);
    counter_pointer_2_map : entity work.counter_pointer port map(clk, test_reset, tick2_out, count2_out);

    sin_tab_1_map : entity work.sin_tab port map(clk, test_reset, count1_out, value1_out);
    sin_tab_2_map : entity work.sin_tab port map(clk, test_reset, count2_out, value2_out);

    full_adder_7_map : entity work.full_adder_7 port map(value1_out, value2_out, '0', test_reset, clk, signal_out);

    pwm_map : entity work.pwm port map (clk, signal_out, test_reset, Audio);
    sevenseg_map : entity work.SevenSeg port map (test_key, '0', Display);

end architecture;