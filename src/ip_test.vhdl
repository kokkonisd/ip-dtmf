-- Code to test the functionality of the IP

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- definition of the entity
entity ip_test is
    port (
        -- basic clock and reset signals
        clk, rst : in std_logic;
        touch : in std_logic_vector (7 downto 0);
        sin1, sin2 : out std_logic_vector (5 downto 0);
        final : out std_logic_vector (6 downto 0)
    );
end entity;

architecture behav of ip_test is

    component tick_mae 
        port (
            clk, rst : in std_logic;
            div : in std_logic_vector (23 downto 0);
            s : out std_logic
        );
    end component; 

    component mae2 is 
        port (
            -- clock and reset signals
            CLK,rst: in std_logic;
            -- enable input
            ENABLE : in std_logic;
            -- touch key code input
            TOUCH : in std_logic_vector (7 downto 0);
            -- key code output
            KEY : out std_logic_vector (3 downto 0);
            -- internal reset output
            RESET : out std_logic
        );
    end component;

    component frequency_decoder is
        port (
            clk : in std_logic;
            rst : in std_logic;
            key : in std_logic_vector (3 downto 0);
            div1 : out std_logic_vector (10 downto 0);
            div2 : out std_logic_vector (10 downto 0)
        );
    end component;

    component tick_sin 
        port (
            clk, rst : in std_logic;
            div : in std_logic_vector (10 downto 0);
            s : out std_logic
        );
    end component; 

    component counter_pointer 
        port (
            clk, rst : in std_logic;
            enable : in std_logic;
            count : out std_logic_vector (5 downto 0)
        );
    end component; 

    component sin_tab is
        port (
            clk, rst : in std_logic;
            addr : in std_logic_vector (5 downto 0);
            value : out std_logic_vector (5 downto 0)
        );
    end component;

    component full_adder_7 is 
        port (
          A6, B6: in std_logic_vector (5 downto 0);
          Cin, RESET, clk: in std_logic;
          S7: out std_logic_vector (6 downto 0)
        );
    end component;

    signal test_enable, test_reset : std_logic;
    signal test_key : std_logic_vector (3 downto 0);
    signal test_div1, test_div2 : std_logic_vector (10 downto 0);
    signal tick1_out, tick2_out : std_logic;
    signal count1_out, count2_out : std_logic_vector (5 downto 0);
    signal value1_out, value2_out : std_logic_vector (5 downto 0);
    signal signal_out : std_logic_vector (6 downto 0);

begin

    tick_mae_map : tick_mae port map(clk, rst, "101101110001101100000000", test_enable);

    mae2_map : mae2 port map(clk, rst, test_enable, touch, test_key, test_reset);

    frequency_decoder_map : frequency_decoder port map(clk, test_reset, test_key, test_div1, test_div2);

    tick_sin_1_map : tick_sin port map(clk, test_reset, test_div1, tick1_out);
    tick_sin_2_map : tick_sin port map(clk, test_reset, test_div2, tick2_out);

    counter_pointer_1_map : counter_pointer port map(clk, test_reset, tick1_out, count1_out);
    counter_pointer_2_map : counter_pointer port map(clk, test_reset, tick2_out, count2_out);

    sin_tab_1_map : sin_tab port map(clk, test_reset, count1_out, value1_out);
    sin_tab_2_map : sin_tab port map(clk, test_reset, count2_out, value2_out);

    full_adder_7_map : full_adder_7 port map(value1_out, value2_out, '0', test_reset, clk, signal_out);

    sin1 <= value1_out;
    sin2 <= value2_out;
    final <= signal_out;

end architecture;