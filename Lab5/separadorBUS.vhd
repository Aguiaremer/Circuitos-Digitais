Library IEEE;
use ieee.std_logic_1164.all;

entity separadorBUS is
	port(
		entrada   : in  STD_LOGIC_VECTOR(3 downto 0);
		s3,s2,s1,s0 : out std_logic
		);
end separadorBUS;

architecture funcionamento of separadorBUS is
begin
	s3<= entrada(3);
	s2<= entrada(2);
	s1<= entrada(1);
	s0<= entrada(0);
end funcionamento;