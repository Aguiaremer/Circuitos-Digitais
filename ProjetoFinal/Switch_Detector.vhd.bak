library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Switch_Detector is
    Port ( clk    : in  STD_LOGIC;
           reset  : in  STD_LOGIC;
           switch : in  STD_LOGIC;
           change_detected : out STD_LOGIC);
end Switch_Detector;

architecture Behavioral of Switch_Detector is
    signal switch_reg : STD_LOGIC := '0';
begin
    process(clk, reset)
    begin
        if reset = '1' then
            switch_reg <= '0';
            change_detected <= '0';
        elsif rising_edge(clk) then
            if switch /= switch_reg then
                change_detected <= '1';
            else
                change_detected <= '0';
            end if;
            switch_reg <= switch;
        end if;
    end process;
end Behavioral;