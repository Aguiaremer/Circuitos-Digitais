library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity timing_reference is
    Port ( clk_in  : in  STD_LOGIC;  -- Clock de entrada de 50 MHz
           clk_out : out STD_LOGIC); -- Clock de saída de 1 Hz
end timing_reference;

architecture Behavioral of timing_reference is
    constant DIVISOR : integer := 50000000;  -- Divisor para reduzir a frequência para 1 Hz
    signal counter : integer range 0 to DIVISOR - 1 := 0;
    signal clk_out_internal : STD_LOGIC := '0';
begin
    process(clk_in)
    begin
        if rising_edge(clk_in) then
            counter <= counter + 1;
            if counter = DIVISOR - 1 then
                clk_out_internal <= not clk_out_internal;  -- Inverte o clock de saída
                counter <= 0;  -- Reinicia o contador
            end if;
        end if;
    end process;

    clk_out <= clk_out_internal;
end Behavioral;