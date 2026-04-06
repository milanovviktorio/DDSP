library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_FULL is
end tb_FULL;

architecture Behavioral of tb_FULL is
    -- Clock & control
    signal clk       : STD_LOGIC := '0';
    signal reset     : STD_LOGIC := '1';

    -- Visible intermediate signals
    signal sine_sample : STD_LOGIC_VECTOR(7 downto 0);
    signal switch      : STD_LOGIC_VECTOR(7 downto 0);
    signal pwm_out     : STD_LOGIC;

    -- DIP switches as a single vector for easy control
    signal dip : STD_LOGIC_VECTOR(7 downto 0) := x"02";

    constant CLK_PERIOD : time := 8 ns;
begin
    clk <= not clk after CLK_PERIOD / 2;

    -- DIP switch register
    dip_sw_inst: entity work.dip_sw
        port map (
            clk         => clk,
            dip_sw0     => dip(0),
            dip_sw1     => dip(1),
            dip_sw2     => dip(2),
            dip_sw3     => dip(3),
            dip_sw4     => dip(4),
            dip_sw5     => dip(5),
            dip_sw6     => dip(6),
            dip_sw7     => dip(7),
            switches_in => switch
        );

    -- Sine wave generator
    sine_inst: entity work.sine_wave
        port map (
            clk       => clk,
            reset     => reset,
            div_value => switch,
            sine_out  => sine_sample
        );

    -- PWM
    pwm_inst: entity work.PWM
        port map (
            clk     => clk,
            reset   => reset,
            duty    => sine_sample,
            pwm_out => pwm_out
        );

    -- Stimulus
    process
    begin
        reset <= '1';
        wait for 50 ns;
        reset <= '0';

        -- Fast frequency: div = 2
        dip <= x"02";
        wait for 32 * 2 * 256 * 8 * 2 * 1 ns;

        -- Medium frequency: div = 8
        dip <= x"08";
        wait for 32 * 8 * 256 * 8 * 1 ns;

        -- Slow frequency: div = 32
        dip <= x"20";
        wait for 32 * 32 * 256 * 8 * 1 ns;

        wait;
    end process;
end Behavioral;