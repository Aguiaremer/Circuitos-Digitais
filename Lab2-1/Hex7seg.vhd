Library IEEE;
use ieee.std_logic_1164.all;

entity Hex7seg is
	port(
		M,N,O,P: in std_logic;
		a,b,c,d,e,f,g: out std_logic
		);
end Hex7seg;

architecture GATE_LEVEL of Hex7seg is
	begin
	a <= (not(M) and not(N) and not(O) and P) or (not(M) and N and not(O) and not(P)) or (M and N and not(O) and P) or (M and not(N) and O and P);
	b <= (not(M) and N and not(O) and P) or (N and O and not(P)) or (M and O and P) or (M and N and not(P));
	c <= (not(M) and not(N) and O and not(P)) or (M and N and not(P)) or (M and N and O);
	d <= (not(M) and not(N) and not(O) and P) or (not(M) and N and not(O) and not(P)) or (N and O and P) or (M and not(N) and O and not(P));
	e <= (not(M) and N and not(O)) or (not(M) and P) or (not(N) and not(O) and P);
	f <= (M and N and not(O) and P) or (not(M) and not(N) and P) or (not(M) and O and P) or (not(M) and not(N) and O);
	g <= (M and N and not(O) and not(P)) or (not(M) and N and O and P) or (not(M) and not(N) and not(O));
	end GATE_LEVEL;