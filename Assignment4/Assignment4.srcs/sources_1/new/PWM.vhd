library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity PWM is
    Port (
        clk       : in  STD_LOGIC;
        reset     : in  STD_LOGIC;
        duty      : in  STD_LOGIC_VECTOR(7 downto 0); -- 8-bit duty cycle
        pwm_out   : out STD_LOGIC
    );
end PWM;

architecture Behavioral of PWM is
    signal counter : unsigned(7 downto 0) := (others => '0');
begin

    -- 8-bit counter process
    process(clk, reset)
    begin
        if reset = '1' then
            counter <= (others => '0');
        elsif rising_edge(clk) then
            counter <= counter + 1;
        end if;
    end process;

    -- PWM generation logic
    pwm_out <= '1' when counter < unsigned(duty) else '0';

end Behavioral;