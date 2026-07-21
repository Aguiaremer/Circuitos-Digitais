library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;
  
entity Timing_Reference is
	port ( clk: in std_logic; -- Pin connected to P11 (N14)
			timeSelector: in std_logic;
			saida : out std_logic);-- Can check it using PIN A8 - LEDR0

	end Timing_Reference;
  
architecture freq_div of Timing_Reference is
  
signal count: integer:=1;
signal tmp : std_logic := '0';
signal lambda : integer := 5000/4;
begin
process(timeSelector)
begin
	if (timeSelector = '1') then 
		lambda <= 50000000/600; 
	else
		lambda <= 50000000/1200;  --1KHz  50M2K
	end if;
end process;
process(clk)
	begin
	if(clk'event and clk='1') then
		count <=count+1;
		if (count >= lambda) then
			tmp <= NOT tmp;
			count <= 1;
		end if;
	end if;
	saida <= tmp;
end process;
 
end freq_div;