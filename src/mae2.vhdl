Library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- entity definition
entity mae2 is 
    port (
        -- clock and reset signals
        CLK,rst: in std_logic;
        -- enable signal
        ENABLE : in std_logic;
        -- touch code input (received by keyboard decoder)
        TOUCH : in std_logic_vector (7 downto 0);
        -- key code output
        KEY : out std_logic_vector (3 downto 0);
        -- internal reset output
        RESET : out std_logic
    );
end entity mae2;
  
-- architecture definition
architecture mae2_a of mae2 is 

-- state declaration
type state_type is (init,etat0,etat1,etat2,etat3,etat4);
-- predefined keycodes
constant A : std_logic_vector (39 downto 0) := "0000011010010101100000101000010100110111";
constant B : std_logic_vector (39 downto 0) := "0000011010010101100000101000010100110110";
constant C : std_logic_vector (39 downto 0) := "0000011010010101100000101000010100110101";
constant D : std_logic_vector (39 downto 0) := "0000011010010101100000101000010100110100";
-- present and future states
signal EtatPresent : state_type;
signal EtatFutur : state_type;
-- predefined number digit counter
signal i : integer;

signal TouchInit : std_logic_vector (7 downto 0);
 
begin
    
    -- clocked process
    process (CLK)
        begin
            if rst = '1' then 
                -- on reset, go back to init
                EtatPresent <= Init;
            elsif rising_edge(CLK) then
                -- else change to future state
                EtatPresent <= EtatFutur;
            end if;
    end process;
	

	process (clk)
        begin
            if rising_edge(clk) then 
                -- switch on the present state
                case EtatPresent is
                    when init =>
                        -- initialize counter
                        i <= 9;
                        -- set the key code to 1111 (which means no output)
                        KEY <= "1111";
                        -- set internal reset to 1
                        RESET <= '1';
                        -- if there's an enable signal, go to state 0
                        if (ENABLE = '1') then
                            EtatFutur <= etat0;
                        end if;
			 

                    when etat0 =>
                        -- internal reset is disabled (the generator is emmitting)
                        RESET <= '0';
                        -- if there's an enable signal 
			            if (ENABLE = '1') then
                            -- TODO : (if touch != keys ABCD)
                            if (TOUCH /= "00010101" and TOUCH /= "01010101") then
                                -- if the touch code received doesn't correspond
                                -- to any of the key codes A-C, it's a simple digit
                                -- so the future state is state 4
                                EtatFutur <= etat4;
                            else
                                -- else it's a predefined number
                                -- and the future state is state 1
                                TouchInit <= TOUCH;--TODO
                                EtatFutur <= etat1;
                            end if;
                        end if;

                    when etat1 =>
                        i <= 9;
                        EtatFutur <= etat2;

                    when etat2 =>
                        if (TouchInit = "00010101") then
                            KEY(0) <= A(4*i);
                            KEY(1) <= A(4*i+1); 
                            KEY(2) <= A(4*i+2); 
                            KEY(3) <= A(4*i+3);
                        elsif (TouchInit = "10110000") then --TODO
                            KEY(0) <= B(4*i);
                            KEY(1) <= B(4*i+1); 
                            KEY(2) <= B(4*i+2); 
                            KEY(3) <= B(4*i+3);
                        elsif (TouchInit = "11000000") then --TODO
                            KEY(0) <= C(4*i);
                            KEY(1) <= C(4*i+1); 
                            KEY(2) <= C(4*i+2); 
                            KEY(3) <= C(4*i+3);
                        elsif (TouchInit = "11010000") then --TODO
                            KEY(0) <= D(4*i);
                            KEY(1) <= D(4*i+1); 
                            KEY(2) <= D(4*i+2); 
                            KEY(3) <= D(4*i+3);
                        end if;
                        EtatFutur <= etat3;
		  
                    when etat3 =>
                        if (i > 0) then
                            if (ENABLE = '1') then
                                RESET <= '1';
                                i <= i - 1;
                                EtatFutur <= etat2;
                            else
                                RESET <= '0';
                            end if;
                        else
                            if (ENABLE = '1') then
                                EtatFutur <= init;
                            end if;
                        end if;


                    when etat4 =>
                        -- internal reset is 0, the generator is emmitting
                        RESET <= '0';
                        if (ENABLE = '1') then
                            -- on enable we go to the initialization state
                            EtatFutur <= init;
                        else
                            -- switch on touch key code
                            case TOUCH is
                                -- key 0
            					when "01110000" =>
            						KEY <= "0000";
                                -- key 1
            					when "01101001" =>
            						KEY <= "0001";
                                -- key 2
            					when "01110010" =>
            						KEY <= "0010";
                                -- key 3
            					when "01111010" =>
            						KEY <= "0011";
                                -- key 4
            					when "01101011" =>
            						KEY <= "0100";
                                -- key 5
            					when "01110011" =>
            						KEY <= "0101";
                                -- key 6
            					when "01110100" =>
            						KEY <= "0110";
                                -- key 7
            					when "01101100" =>
            						KEY <= "0111";
                                -- key 8
            					when "01110101" =>
            						KEY <= "1000";
                                -- key 9
            					when "01111101" =>
            						KEY <= "1001";
                                -- unknown key (1111)
            					when others =>
            						KEY <= "1111";
            				end case;
                        end if;
                end case; 
	        end if;
	end process;
        
end mae2_a;