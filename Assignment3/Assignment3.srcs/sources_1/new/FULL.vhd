library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity FULL is
    Port (
        clk      : in  STD_LOGIC;
        reset    : in  STD_LOGIC;
        freq_sel : in  STD_LOGIC_VECTOR(7 downto 0); -- Switches input
        pwm_out  : out STD_LOGIC
    );
end FULL;

architecture Structural of FULL is
    signal sine_sample : STD_LOGIC_VECTOR(7 downto 0);
begin

    Sine_wave: entity work.sine_wave
        port map (
            clk      => clk,
            reset    => reset,
            freq_sel => freq_sel,
            sine_out => sine_sample
        );

    PWM_inst: entity work.PWM
        port map (
            clk     => clk,
            reset   => reset,
            duty    => sine_sample,
            pwm_out => pwm_out
        );
end Structural;