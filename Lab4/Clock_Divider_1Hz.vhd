library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;

entity Clock_Divider_1Hz is
    Port ( clk_in  : in  STD_LOGIC;  -- Clock de entrada de 50 MHz
           clk_out : out STD_LOGIC); -- Clock de saída de 1 Hz
end Clock_Divider_1Hz;

architecture Behavioral of Clock_Divider_1Hz is
    constant DIVISOR : integer := 50000000;  -- Divisor para reduzir a frequência para 1 Hz
    signal counter : integer := 0;
    signal clk_out_internal : STD_LOGIC := '0';
begin
    process(clk_in)
    begin
        if rising_edge(clk_in) then
            if counter = (DIVISOR - 1) then
                counter <= 0;
                clk_out_internal <= not clk_out_internal;  -- Inverte o clock de saída
            else
                counter <= counter + 1;
            end if;
        end if;
    end process;

    clk_out <= clk_out_internal;
end Behavioral;