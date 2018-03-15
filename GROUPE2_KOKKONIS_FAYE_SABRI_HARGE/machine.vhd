-- machine a etats

library ieee;
library std;
use STD.textio.all;                     -- basic I/O
use IEEE.std_logic_textio.all;          -- I/O for logic types
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity machine is 
  Port (
    CLK : in std_logic;
	 ROW : in  STD_LOGIC_VECTOR (3 downto 0);
	 SWITCH_ETAT0 : in std_logic;
	 SWITCH_ETAT1 : in std_logic;
	 SWITCH_ETAT2 : in std_logic;
	 SWITCH_ETAT3 : in std_logic;
	 COL : out  STD_LOGIC_VECTOR (3 downto 0);
    AFFICHAGE : out  STD_LOGIC_VECTOR (27 downto 0);
	 ETAT_ACTUEL : out STD_LOGIC_VECTOR (3 downto 0)
  );
end entity machine;

architecture dataflow of machine is
  type state_type is (e0, e1, e2, e3, e4, e5);
  signal etatP : state_type;
  signal etatF : state_type;
  signal CLEAR : std_logic;
  signal valeurEntree : std_logic_vector (11 downto 0);
  signal valeurTemp0 : std_LOGIC_VECTOR (3 downto 0);
  signal valeurTemp1 : std_LOGIC_VECTOR (3 downto 0);
  signal valeurTemp2 : std_LOGIC_VECTOR (3 downto 0);
  signal valeurTemp3 : std_LOGIC_VECTOR (3 downto 0);
  signal tempAffichage : std_LOGIC_VECTOR (6 downto 0);
  signal affichagePremier : std_LOGIC_VECTOR (6 downto 0);
  signal affichageOperation : std_LOGIC_VECTOR (6 downto 0);
  signal affichageDeuxieme : std_LOGIC_VECTOR (6 downto 0);
  signal memoire1 : std_LOGIC_VECTOR (3 downto 0);
  signal memoire2 : std_LOGIC_VECTOR (3 downto 0);
  signal memoire3 : std_LOGIC_VECTOR (3 downto 0);
  signal affichageMemoire1 : std_LOGIC_VECTOR (6 downto 0);
  signal affichageMemoire2 : std_LOGIC_VECTOR (6 downto 0);
  signal affichageMemoire3 : std_LOGIC_VECTOR (6 downto 0);
  signal ANODE : integer;
  
  
  signal RESULTAT_AFFICHAGE : std_LOGIC_VECTOR (6 downto 0);
  
  signal RESULTAT_AFF_ADD : std_LOGIC_VECTOR (6 downto 0);
  signal RESULTAT_ADD : std_LOGIC_VECTOR (3 downto 0);
  
  signal RESULTAT_AFF_SUB : std_LOGIC_VECTOR (6 downto 0);
  signal RESULTAT_SUB : std_LOGIC_VECTOR (3 downto 0);
  
  begin

 
  C0: entity work.PmodKYPD(Behavioral) port map(CLK, ROW, COL, valeurTemp0);
  
  -- MEMOIRE
  C1: entity work.memoire_Nbit(behav) port map(CLK, valeurTemp1, memoire1);
  C2: entity work.memoire_Nbit(behav) port map(CLK, valeurTemp2, memoire2);
  C3: entity work.memoire_Nbit(behav) port map(CLK, valeurTemp3, memoire3);
  
  C4: entity work.DisplayController(Behavioral) port map(memoire1, affichageMemoire1);
  C5: entity work.DisplayController(Behavioral) port map(memoire2, affichageMemoire2);
  C6: entity work.DisplayController(Behavioral) port map(memoire3, affichageMemoire3);
  
  C7: entity work.DisplayController(Behavioral) port map(valeurTemp0, tempAffichage);
  
  C8: entity work.full_adder_4(full_adder_4_a) port map('0', memoire1, memoire3, RESULTAT_ADD);
  C9: entity work.DisplayController(Behavioral) port map(RESULTAT_ADD, RESULTAT_AFF_ADD);
  
  C10: entity work.SOUSTRACTEUR(dataflow) port map(memoire1, memoire3, CLK, RESULTAT_SUB);
  C11: entity work.DisplayController(Behavioral) port map(RESULTAT_SUB, RESULTAT_AFF_SUB);
  
    clocked : process(CLK)
    begin
      if rising_edge(CLK) then
      case etatP is
      when e0 =>
		  ETAT_ACTUEL <= "0000";
		  affichagePremier <= tempAffichage;
		  AFFICHAGE <= "111111111111111111111" & affichagePremier(6 downto 0);
		  valeurEntree(3 downto 0) <= valeurTemp0;
		  --ANODE <= 1;
      when e1 =>
		  valeurTemp1 <= valeurEntree(3 downto 0);
		  affichagePremier <= affichageMemoire1;
        ETAT_ACTUEL <= "0001";
		  affichageOperation <= tempAffichage;
		  AFFICHAGE <= "11111111111111" & affichagePremier(6 downto 0) & affichageOperation(6 downto 0);
		  valeurEntree(7 downto 4) <= valeurTemp0;
		  --ANODE <= 2;
      when e2 =>
        -- recevoir nombre 2
		  valeurTemp2 <= valeurEntree(7 downto 4);
		  affichageOperation <= affichageMemoire2;
		  ETAT_ACTUEL <= "0010";
		  affichageDeuxieme <= tempAffichage;
		  AFFICHAGE <= "1111111" & affichagePremier(6 downto 0) & affichageOperation(6 downto 0) & affichageDeuxieme(6 downto 0);
		  valeurEntree(11 downto 8) <= valeurTemp0;
		  --ANODE <= 3;
      when e3 =>
		  valeurTemp3 <= valeurEntree(11 downto 8);
        -- full adder
		  ETAT_ACTUEL <= "0011";
		  RESULTAT_AFFICHAGE <= RESULTAT_AFF_ADD;
		  --ANODE <= 4;
		when e4 =>
		  valeurTemp3 <= valeurEntree(11 downto 8);
        -- full soustracteur
		  ETAT_ACTUEL <= "0100";
		  RESULTAT_AFFICHAGE <= RESULTAT_AFF_SUB;
		  --ANODE <= 4;
      when e5 =>
        -- affichage
		  ETAT_ACTUEL <= "0101";
		  --ANODE <= 1;
		  AFFICHAGE <= "111111111111111111111" & RESULTAT_AFFICHAGE(6 downto 0);
      end case;
      end if;
    end process;
    
    nextState : process(etatP)
    begin
      case etatP is
      when e0 =>
        if (CLEAR = '1' or SWITCH_ETAT0 = '0') then
          etatF <= e0;
        else
          -- nombre 1
          etatF <= e1;
        end if;
      when e1 =>
        if (CLEAR = '1' or SWITCH_ETAT1 = '0') then
          etatF <= e1;
        else
          -- operation
          etatF <= e2;
        end if;
      when e2 =>
		-- nombre 2
        if (CLEAR = '1' or SWITCH_ETAT2 = '0') then
          etatF <= e2;
        else
			 if (memoire2 = "1010") then
				etatF <= e3;
			 elsif (memoire2 = "1101") then
			   etatF <= e4;
          end if;
        end if;
      when e3 =>
			if (SWITCH_ETAT3 = '1') then
				-- full adder
				etatF <= e5;
			else
				etatF <= e3;
			end if;
      when e4 =>
			if (SWITCH_ETAT3 = '1') then
				-- full soustracteur
				etatF <= e5;
			else
				etatF <= e4;
			end if;
		when e5 =>
			if (SWITCH_ETAT0 = '0' and SWITCH_ETAT1 = '0' and SWITCH_ETAT2 = '0' and SWITCH_ETAT3 = '0') then
				-- affichage
				etatF <= e0;
			else
				etatF <= e5;
			end if;
      end case;
    end process;
    
    stateUpdate : process(CLK)
    begin
      if rising_edge(CLK) then
        etatP <= etatF;
      end if;
    end process;
end architecture dataflow;