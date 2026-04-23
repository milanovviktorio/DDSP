library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity FULL is
    Port (
        clk      : in  STD_LOGIC;
        reset    : in  STD_LOGIC;
        pwm_out  : out STD_LOGIC;   -- original sine -> Y11
        pwm_out2 : out STD_LOGIC;   -- averaged sine -> AA11
        Dip_SW0  : in  STD_LOGIC;
        Dip_SW1  : in  STD_LOGIC;
        Dip_SW2  : in  STD_LOGIC;
        Dip_SW3  : in  STD_LOGIC;
        Dip_SW4  : in  STD_LOGIC;
        Dip_SW5  : in  STD_LOGIC;
        Dip_SW6  : in  STD_LOGIC;
        Dip_SW7  : in  STD_LOGIC
    );
end FULL;

architecture Structural of FULL is
    signal sine_sample  : STD_LOGIC_VECTOR(7 downto 0);
    signal avg_sample   : STD_LOGIC_VECTOR(7 downto 0);
    signal switch_freq  : STD_LOGIC_VECTOR(3 downto 0);
    signal switch_avg   : STD_LOGIC_VECTOR(3 downto 0);
    signal data_ready   : STD_LOGIC;
begin

    dip_sw_inst: entity work.dip_sw
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

    Sine_wave: entity work.sine_wave
        port map (
            clk        => clk,
            reset      => reset,
            sine_out   => sine_sample,
            data_ready => data_ready,
            div_value  => switch_freq    -- now directly 4 bit, no padding needed here
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