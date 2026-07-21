library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity detector_borda is
    Port (
        clk     : in  STD_LOGIC;  -- Sinal de relógio
        rst     : in  STD_LOGIC;  -- Sinal de reset
        input_signal  : in  STD_LOGIC;  -- Sinal de entrada
        edge_detected : out STD_LOGIC  -- Sinal de saída
    );
end detector_borda;

architecture Behavioral of detector_borda is
    signal previous_signal : STD_LOGIC := '0';  -- Sinal para armazenar o valor anterior da entrada
begin

    process(clk, rst)
    begin
        if rst = '1' then  -- Verificação de reset
            edge_detected <= '0';
            previous_signal <= '0';
        elsif rising_edge(clk) then
            if input_signal = '1' and previous_signal = '0' then
                edge_detected <= '1';  -- Detecção da borda de subida
            else
                edge_detected <= '0';  -- Reset da saída
            end if;
            previous_signal <= input_signal;  -- Atualização do valor anterior
        end if;
    end process;

end Behavioral;