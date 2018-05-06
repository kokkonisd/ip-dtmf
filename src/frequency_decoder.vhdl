-- Frequency decoder to map key code values to their corresponding frequencies
--
-- This IP takes in key code values between 0 and 9 and output the clock division
-- values that will generate a sin wave with the corresponding frequency
--
-- The clock divisions are obtained by the following equation:
-- div(Fsin) = Fclk / (Fsin * 64)
-- (the sin wave is made up of 64 parts, and here we suppose that Fclk = 60 MHz)

library ieee;
use ieee.std_logic_1164.all;

-- entity definition
entity frequency_decoder is
    port (
        -- standard clock signal
        clk : in std_logic;
        -- standard reset signal
        rst : in std_logic;
        -- key code input (0 to 9)
        key : in std_logic_vector (3 downto 0);
        -- DTMF frequency pair output
        -- this is expressed in clock divisions, not in Hz
        div1 : out std_logic_vector (10 downto 0);
        div2 : out std_logic_vector (10 downto 0)
    );
end entity;

-- architecture definition
architecture behav of frequency_decoder is
    -- two temporary signals to handle the switch statement
    -- inside the clocked process
    signal out1 : std_logic_vector (10 downto 0);
    signal out2 : std_logic_vector (10 downto 0);
begin

    process (clk)
    begin
        -- if there's a reset, output frequency is 0
        if (rst = '1') then
            out1 <= (others => '0');
            out2 <= (others => '0');
        -- on rising edge
        elsif rising_edge(clk) then
            -- switch to map the key codes to their corresponding frequencies
            -- following the DTMF standard
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
                    -- wrong key value, output is 0
                    out1 <= (others=>'0');
                    out2 <= (others=>'0');
            end case;
        end if;
    end process;

    -- update the output signals
    div1 <= out1;
    div2 <= out2;

end architecture;