library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity FULL is
    Port (
        clk      : in  STD_LOGIC;
        reset    : in  STD_LOGIC;
        pwm_out  : out STD_LOGIC;
        pwm_out2 : out STD_LOGIC;
        Dip_SW0  : in  STD_LOGIC;
        Dip_SW1  : in  STD_LOGIC;
        Dip_SW2  : in  STD_LOGIC;
        Dip_SW3  : in  STD_LOGIC;
        Dip_SW4  : in  STD_LOGIC;
        Dip_SW5  : in  STD_LOGIC;
        Dip_SW6  : in  STD_LOGIC;
        Dip_SW7  : in  STD_LOGIC;
        wave_sel0 : in STD_LOGIC;   -- BTN0: wave select bit 0
        wave_sel1 : in STD_LOGIC    -- BTN1: wave select bit 1
    );
end FULL;

architecture Structural of FULL is

    signal sine_sample  : STD_LOGIC_VECTOR(7 downto 0);
    signal avg_sample   : STD_LOGIC_VECTOR(7 downto 0);
    signal switch_freq  : STD_LOGIC_VECTOR(3 downto 0);
    signal switch_avg   : STD_LOGIC_VECTOR(3 downto 0);
    signal data_ready   : STD_LOGIC;
    signal wave_sel     : STD_LOGIC_VECTOR(1 downto 0);

begin

    wave_sel <= wave_sel1 & wave_sel0;  -- "00"=sine, "01"=square, "10"=triangle

    dip_sw: entity work.dip_sw
        port map (
            dip_sw0       => Dip_SW0,
            dip_sw1       => Dip_SW1,
            dip_sw2       => Dip_SW2,
            dip_sw3       => Dip_SW3,
            dip_sw4       => Dip_SW4,
            dip_sw5       => Dip_SW5,
            dip_sw6       => Dip_SW6,
            dip_sw7       => Dip_SW7,
            clk           => clk,
            switches_freq => switch_freq,
            switches_avg  => switch_avg
        );

    wave_gen: entity work.wave_gen
        port map (
            clk        => clk,
            reset      => reset,
            sine_out   => sine_sample,
            data_ready => data_ready,
            div_value  => switch_freq,
            wave_sel   => wave_sel
        );

    AVG: entity work.avg
        port map (
            clk        => clk,
            reset      => reset,
            data_ready => data_ready,
            data_in    => sine_sample,
            window_sel => switch_avg,
            avg_out    => avg_sample
        );

    PWM1: entity work.PWM
        port map (
            clk     => clk,
            reset   => reset,
            duty    => sine_sample,
            pwm_out => pwm_out
        );

    PWM2: entity work.PWM
        port map (
            clk     => clk,
            reset   => reset,
            duty    => avg_sample,
            pwm_out => pwm_out2
        );

end Structural;