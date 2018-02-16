Library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity MAET is 
  port (
    CLK : in std_logic;
    ENABLE : in std_logic;
    TOUCH : in std_logic_vector (3 downto 0);
    KEY : out std_logic_vector (3 downto 0);
    RESET : out std_logic
  );
end entity MAET;
  
  architecture MAET_A of MAET is 
  
  type state_type is (init,etat0,etat1,etat2,etat3,etat4);
    
  signal A : std_logic_vector (39 downto 0) := "0000011010010101100000101000010100110111";
  signal B : std_logic_vector (39 downto 0) := "0000011010010101100000101000010100110110";
  signal C : std_logic_vector (39 downto 0) := "0000011010010101100000101000010100110101";
  signal D : std_logic_vector (39 downto 0) := "0000011010010101100000101000010100110100";
  signal EtatPresent : state_type := init;
  signal EtatFutur : state_type;
  signal i : integer;
  signal TouchInit : std_logic_vector (3 downto 0);
  begin
    
    process (CLK)
      begin
        if rising_edge (CLK) then
        EtatPresent <= EtatFutur;
      end if;
      end process;
      
    process (EtatPresent, ENABLE)
      begin
        case EtatPresent is
        when init =>
          RESET <= '1';
          if (ENABLE = '1') then
            EtatFutur <= etat0;
          end if;
            
        when etat0 =>
          RESET <= '0';
          if (TOUCH < "1010") then
            EtatFutur <= etat4;
          else
            TouchInit <= TOUCH;
            EtatFutur <= etat1;
          end if;
        
      when etat1 =>
          i <= 9;
          EtatFutur <= etat2;
      
      when etat2 =>
        if (TouchInit = "1010") then
          KEY(0) <= A(4*i);
          KEY(1) <= A(4*i+1); 
          KEY(2) <= A(4*i+2); 
          KEY(3) <= A(4*i+3);
        elsif (TouchInit = "1011") then
          KEY(0) <= B(4*i);
          KEY(1) <= B(4*i+1); 
          KEY(2) <= B(4*i+2); 
          KEY(3) <= B(4*i+3);
        elsif (TouchInit = "1100") then
          KEY(0) <= C(4*i);
          KEY(1) <= C(4*i+1); 
          KEY(2) <= C(4*i+2); 
          KEY(3) <= C(4*i+3);
        elsif (TouchInit = "1101") then
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
          if (ENABLE = '1') then
            EtatFutur <= init;
          else
            KEY <= TOUCH;
          end if;
          
    end case; 
    end process;

        
  end MAET_A;