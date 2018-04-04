Library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mae2 is 
    port (
        CLK,rst: in std_logic;
        ENABLE : in std_logic;
        TOUCH : in std_logic_vector (7 downto 0);
        KEY : out std_logic_vector (3 downto 0);
        RESET : out std_logic
    );
end entity mae2;
  
architecture mae2_a of mae2 is 
  
type state_type is (init,etat0,etat1,etat2,etat3,etat4);
    
constant A : std_logic_vector (39 downto 0) := "0000011010010101100000101000010100110111";
constant B : std_logic_vector (39 downto 0) := "0000011010010101100000101000010100110110";
constant C : std_logic_vector (39 downto 0) := "0000011010010101100000101000010100110101";
constant D : std_logic_vector (39 downto 0) := "0000011010010101100000101000010100110100";
signal EtatPresent : state_type;
signal EtatFutur : state_type;
signal i : integer;
signal TouchInit : std_logic_vector (7 downto 0);
 
begin
    
    process (CLK,rst)
        begin
            if rst = '1' then 
                EtatPresent <= Init;
            elsif rising_edge (CLK) then
                EtatPresent <= EtatFutur;
            end if;
    end process;
	 
	process (clk,rst)
        begin
            if rising_edge(clk) then 
                case EtatPresent is
                    when init =>
                        i <= 9;
                        KEY <= "1111";
                        RESET <= '1';
                        if (ENABLE = '1') then
                            EtatFutur <= etat0;
                        end if;
			 
                    when etat0 =>
                        RESET <= '0';
			            if (ENABLE = '1') then
                            if (TOUCH /= "00010101") then
                                EtatFutur <= etat4;
                            else
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
                        RESET <= '0';
                        if (ENABLE = '1') then
                            EtatFutur <= init;
                        else
                            case TOUCH is
            					when "01110000" =>
            						KEY <= "0000";
            					when "01101001" =>
            						KEY <= "0001";
            					when "01110010" =>
            						KEY <= "0010";
            					when "01111010" =>
            						KEY <= "0011";
            					when "01101011" =>
            						KEY <= "0100";
            					when "01110011" =>
            						KEY <= "0101";
            					when "01110100" =>
            						KEY <= "0110";
            					when "01101100" =>
            						KEY <= "0111";
            					when "01110101" =>
            						KEY <= "1000";
            					when "01111101" =>
            						KEY <= "1001";
            					when others =>
            						KEY <= "1111";
            				end case;
                        end if;
          
                end case; 
	        end if;
	end process;
        
end mae2_a;