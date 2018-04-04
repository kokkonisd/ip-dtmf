library ieee;
use ieee.std_logic_1164.all;

entity dtmf_test_simu_tb is
end entity;

architecture test of dtmf_test_simu_tb is

    component tick_mae is
        port (
            clk, rst : in std_logic;
            -- div = Fclk / (Fsin) (24 bits pour la mae)
            div : in std_logic_vector (23 downto 0);
            s : out std_logic
        );
    end component;

    component mae2 is 
        port (
            CLK,rst: in std_logic;
            ENABLE : in std_logic;
            TOUCH : in std_logic_vector (7 downto 0);
            KEY : out std_logic_vector (3 downto 0);
            RESET : out std_logic
        );
    end component mae2;

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

    component tick_sin is
        port (
            clk, rst : in std_logic;
            -- div = Fclk / (Fsin * 64) (11 bits max)
            div : in std_logic_vector (10 downto 0);
            s : out std_logic
        );
    end component;

    component counter_pointer is
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

    signal test_clk, test_rst, test_rst_int : std_logic;
    signal test_scan_code : std_logic_vector (7 downto 0);
    signal test_div_tick_mae : std_logic_vector (23 downto 0);
    signal test_tick_mae : std_logic;
    signal test_key : std_logic_vector (3 downto 0);
    signal test_div1, test_div2 : std_logic_vector (10 downto 0);
    signal test_tick1, test_tick2 : std_logic;
    signal test_count1, test_count2 : std_logic_vector (5 downto 0);
    signal test_value1, test_value2 : std_logic_vector (5 downto 0);
    constant clk_period : time := 16.66667 ns; -- Fclk = 60 MHz

begin

    clk_process : process
    begin
        test_clk <= '1';
        wait for clk_period / 2;
        test_clk <= '0';
        wait for clk_period / 2;
    end process;

    rst_process : process
    begin
        test_rst <= '1';
        wait for clk_period;
        test_rst <= '0';
        wait for 800 ms;
    end process;

    --test_scan_code <= "01101001";
    --test_div_tick_mae <= "101101110001101100000000";

    --C0 : tick_mae port map (test_clk, test_rst, test_div_tick_mae, test_tick_mae);

    --C1 : mae2 port map (test_clk, test_rst, test_tick_mae, test_scan_code, test_key, test_rst_int);
    --test_key <= "0100";
    --test_rst_int <= '0';

    test_key <= "0001";
    test_rst_int <= '0';

    C2 : decodeur_frequences port map (test_clk, test_rst_int, test_key, test_div1, test_div2);

    --C3a : tick_sin port map (test_clk, test_rst_int, test_div1, test_tick1);
    --C3b : tick_sin port map (test_clk, test_rst_int, test_div2, test_tick2);

    --C4a : counter_pointer port map (test_clk, test_rst_int, test_tick1, test_count1);
    --C4b : counter_pointer port map (test_clk, test_rst_int, test_tick2, test_count2);
    
    --C5a : sin_tab port map (test_clk, test_rst_int, test_count1, test_value1);
    --C5b : sin_tab port map (test_clk, test_rst_int, test_count2, test_value2);

    mae_tick : process
    begin
        test_tick_mae <= '1';
        wait for clk_period;
        test_tick_mae <= '0';
        wait for (100 ms - clk_period);
    end process;



end architecture ;