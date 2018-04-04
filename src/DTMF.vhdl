library IEEE;
use IEEE.Std_Logic_1164.all;

entity DTMF is
port(
	Clk       : in  std_logic;  -- System Clock
   Reset     : in  std_logic;  -- System Reset
   PS2_Clk   : in  std_logic;  -- Keyboard Clock Line
   PS2_Data  : in  std_logic;  -- Keyboard Data Line
   Display   : out std_logic_vector(7 downto 0); -- Seven bits for the display
	Audio     : out std_logic
);
end DTMF;

architecture dataflow of DTMF is

signal local_reset : std_logic;
signal Scan_Err  : std_logic;  -- poubelle
signal Scan_DAV  : std_logic;  -- poubelle
signal Scan_Code : std_logic_vector(7 downto 0); -- Eight bits Data Out
signal enable : std_logic;
signal key : std_logic_vector (3 downto 0);
signal div1, div2 : std_logic_vector (10 downto 0);
signal enable_compteur1, enable_compteur2 : std_LOGIC;
signal count1, count2 : STD_LOGIC_VECTOR (5 downto 0);
signal somme : STD_LOGIC_VECTOR (6 downto 0);
signal temp : std_LOGIC_VECTOR (3 downto 0);
signal disp : STD_LOGIC_VECTOR (6 downto 0);
signal reset_final : std_LOGIC;

begin

--C0 : entity work.PS2_Ctrl port map (Clk, local_reset, PS2_Clk, PS2_Data, '0', Scan_Err, Scan_DAV, Scan_Code);
-- div 101101110001101100000000
C1 : entity work.tick_mae port map (rst=>reset_final, clk => Clk, div => "101101110001101100000000", s => enable);
C2 : entity work.MAET port map (reset_final, Clk, enable, Scan_Code, key, local_reset);
C3 : entity work.decodeur_frequences port map (Clk, local_reset, key, div1, div2);
C4 : entity work.tick_sin port map (Clk, local_reset, div1, enable_compteur1);
C5 : entity work.tick_sin port map (Clk, local_reset, div2, enable_compteur2);
C6 : entity work.counter_pointer port map (Clk, local_reset, enable_compteur1, count1);
C7 : entity work.counter_pointer port map (Clk, local_reset, enable_compteur2, count2);
C8 : entity work.full_adder_7 port map (count1, count2, '0', local_reset, Clk, somme);
C9 : entity work.pwm port map (Clk, somme, local_reset, Audio);----
C10 : entity work.SevenSeg port map (key, '0', disp);

Display <= Scan_Code;--'1' & disp;
reset_final <= not Reset;
Scan_Code <= "01110000";

end dataflow;