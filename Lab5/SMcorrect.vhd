Library ieee; 
use ieee.std_logic_1164.all; 



ENTITY SMcorrect IS
   PORT(
      clk      : IN   STD_LOGIC;
      saida   : OUT  STD_LOGIC_VECTOR(3 downto 0));
END SMcorrect;


ARCHITECTURE funcionamento OF SMcorrect IS
   TYPE STATE_TYPE IS (s0, s1, s2, s3, s4, s5, s6, s7, s8, s9, s10, s11, s12, s13, s14, s15);
   SIGNAL estado   : STATE_TYPE;
   
BEGIN
   PROCESS (clk)
   BEGIN  
		If (falling_edge (CLK)) THEN	
          CASE estado IS
			WHEN s0 => estado <= s1;
			WHEN s1 => estado <= s2;
			WHEN s2 => estado <= s3;
			WHEN s3 => estado <= s4;
			WHEN s4 => estado <= s5;
			WHEN s5 => estado <= s6;
			WHEN s6 => estado <= s7;
			WHEN s7 => estado <= s8;
			WHEN s8 => estado <= s9;
			WHEN s9 => estado <= s10;
			WHEN s10 => estado <= s11;
			WHEN s11 => estado <= s12; 
			WHEN s12 => estado <= s13;
			WHEN s13 => estado <= s14;
			WHEN s14 => estado <= s15;
			WHEN s15 => estado <= s0;
	   
         END CASE;
		END IF;
   END PROCESS;
   
   PROCESS (estado)
   BEGIN
      CASE estado IS
       WHEN s0 =>
            saida <= "0001";
       WHEN s1 =>
            saida <= "0011";
       WHEN s2 =>
            saida <= "1110";
		 WHEN s3 =>
            saida <= "0101";	
		 WHEN s4 =>
            saida <= "1101";
       WHEN s5 =>
            saida <= "1000";
       WHEN s6 =>
            saida <= "1100";
		 WHEN s7 =>
            saida <= "1010";
		 WHEN s8 =>
            saida <= "1111";
		 WHEN s9 =>
            saida <= "1011";
		 WHEN s10 =>
            saida <= "1010";
		 WHEN s11 =>
            saida <= "0111";
		WHEN s12 =>
            saida <= "1001";
			WHEN s13 =>
            saida <= "0110";
			WHEN s14 =>
            saida <= "0100";
			WHEN s15 =>
            saida <= "0010";
	
      END CASE;
   END PROCESS;
   
END funcionamento;