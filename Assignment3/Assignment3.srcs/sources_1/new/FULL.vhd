library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity FULL is
    Port (
        clk     : in  STD_LOGIC;
        reset   : in  STD_LOGIC;
        pwm_out : out STD_LOGIC;
        Dip_SW0 : in  STD_LOGIC;
        Dip_SW1 : in  STD_LOGIC;
        Dip_SW2 : in  STD_LOGIC;
        Dip_SW3 : in  STD_LOGIC;
        Dip_SW4 : in  STD_LOGIC;
        Dip_SW5 : in  STD_LOGIC;
        Dip_SW6 : in  STD_LOGIC;
        Dip_SW7 : in  STD_LOGIC
    );
end FULL;

architecture Structural of FULL is
signal sine_sample : STD_LOGIC_VECTOR(7 downto 0);
signal switch      : STD_LOGIC_VECTOR(7 downto 0);
signal clk_out     : STD_LOGIC;
begin
    dip_sw: entity work.dip_sw
        port map (
            dip_sw0 => Dip_SW0,
            dip_sw1 => Dip_SW1,
            dip_sw2 => Dip_SW2,
            dip_sw3 => Dip_SW3,
            dip_sw4 => Dip_SW4,
            dip_sw5 => Dip_SW5,
            dip_sw6 => Dip_SW6,
            dip_sw7 => Dip_SW7,
            switches_in => switch,
            clk     => clk
        );

    Sine_wave: entity work.sine_wave
        port map (
            clk      => clk,
            clk_out  => clk_out,
            reset    => reset,
            sine_out => sine_sample,
            div_value => switch
        );

    PWM: entity work.PWM
        port map (
            clk     => clk_out,
            reset   => reset,
            duty    => sine_sample,
            pwm_out => pwm_out
        );
end Structural;