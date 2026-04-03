library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_pwm is
end tb_pwm;

architecture Behavioral of tb_pwm is

    signal clk     : STD_LOGIC := '0';
    signal reset   : STD_LOGIC := '1';
    signal duty    : STD_LOGIC_VECTOR(7 downto 0);
    signal pwm_out : STD_LOGIC;

    constant clk_period : time := 10 ns;
    constant pwm_period : time := 256 * clk_period; -- 2560 ns

begin

    -- Instantiate DUT
    uut: entity work.PWM
        port map (
            clk => clk,
            reset => reset,
            duty => duty,
            pwm_out => pwm_out
        );

    -- Clock generation
    clk_process : process
    begin
        while true loop
            clk <= '0';
            wait for clk_period / 2;
            clk <= '1';
            wait for clk_period / 2;
        end loop;
    end process;

    -- Stimulus process
    stim_proc: process
    begin
        -- Reset
        wait for 20 ns;
        reset <= '0';

        -- 25% duty
        --duty <= std_logic_vector(to_unsigned(64, 8));
        --wait for 5 * pwm_period;

        -- 50% duty
        duty <= std_logic_vector(to_unsigned(128, 8));
        wait for 5 * pwm_period;

        -- 75% duty
        duty <= std_logic_vector(to_unsigned(192, 8));
        wait for 5 * pwm_period;

        -- 100% duty
        duty <= std_logic_vector(to_unsigned(255, 8));
        wait for 5 * pwm_period;

        wait;
    end process;

end Behavioral;