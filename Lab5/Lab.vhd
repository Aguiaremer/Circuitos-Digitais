library ieee;
use ieee.std_logic_1164.all;

entity Lab is
port (
	clock,reset : in std_logic;
	-- saidaSete : out std_logic_vector (6 downto 0)
	s3, s2, s1, s0 : out std_logic
);
end Lab;

architecture Lab_arch of Lab is
	type tipo_estado is (E0,E1,E2,E3,E4,E5,E6,E7,E8,E9,E10,E11,E12,E13,E14,E15);
	signal estado: tipo_estado := E2;
	signal prox_estado: tipo_estado;
	
    -- component seteSegmentos is Port (
    --     P, O, N, M: in std_logic;
    --     S: out std_logic_vector (6 downto 0)
    -- );
	-- end component;
	-- signal s3,s2,s1,s0 : std_logic;
begin
	-- sete : seteSegmentos port map (
	-- 	s0, s1, s2, s3,
	-- 	saidaSete
	-- 	);

	mudaestado: process (clock,reset)
	begin
	if reset = '1' then
		estado <= E0;
	elsif clock'event and clock = '0' then
		estado <= prox_estado;
	end if;
	end process;

	transicao: process (estado)
	begin
		case estado is
			when E0 => prox_estado <=E1;
			when E1 => prox_estado <=E3;
			when E2 => prox_estado <=E14;
			when E3 => prox_estado <=E5;
			when E4 => prox_estado <=E13;
			when E5 => prox_estado <=E8;
			when E6 => prox_estado <=E12;
			when E7 => prox_estado <=E10;
			when E8 => prox_estado <=E15;
			when E9 => prox_estado <=E11;
			when E10 => prox_estado <=E0;
			when E11 => prox_estado <=E7;
			when E12 => prox_estado <=E9;
			when E13 => prox_estado <=E6;
			when E14 => prox_estado <=E4;
			when E15 => prox_estado <=E2;
		end case;
	end process;

	saidas: process(estado)
	begin
		case estado is
			when E0 => 
				s3 <= '0'; s2 <= '0'; s1 <= '0'; s0 <= '0';
			when E1 => 
				s3 <= '0'; s2 <= '0'; s1 <= '0'; s0 <= '1';
			when E2 => 
				s3 <= '0'; s2 <= '0'; s1 <= '1'; s0 <= '0';
			when E3 => 
				s3 <= '0'; s2 <= '0'; s1 <= '1'; s0 <= '1';
			when E4 => 
				s3 <= '0'; s2 <= '1'; s1 <= '0'; s0 <= '0';
			when E5 => 
				s3 <= '0'; s2 <= '1'; s1 <= '0'; s0 <= '1';
			when E6 => 
				s3 <= '0'; s2 <= '1'; s1 <= '1'; s0 <= '0';
			when E7 => 
				s3 <= '0'; s2 <= '1'; s1 <= '1'; s0 <= '1';
			when E8 => 
				s3 <= '1'; s2 <= '0'; s1 <= '0'; s0 <= '0';
			when E9 =>
				s3 <= '1'; s2 <= '0'; s1 <= '0'; s0 <= '1';
			when E10 => 
				s3 <= '1'; s2 <= '0'; s1 <= '1'; s0 <= '0';
			when E11 => 
				s3 <= '1'; s2 <= '0'; s1 <= '1'; s0 <= '1';
			when E12 => 
				s3 <= '1'; s2 <= '1'; s1 <= '0'; s0 <= '0';
			when E13 => 
				s3 <= '1'; s2 <= '1'; s1 <= '0'; s0 <= '1';	
			when E14 => 
				s3 <= '1'; s2 <= '1'; s1 <= '1'; s0 <= '0';
			when E15 =>
				s3 <= '1'; s2 <= '1'; s1 <= '1'; s0 <= '1';
		end case;
	end process;
end Lab_arch;

	