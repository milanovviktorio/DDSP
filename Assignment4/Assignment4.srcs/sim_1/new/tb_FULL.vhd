library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_FULL is
end tb_FULL;

architecture Behavioral of tb_FULL is

    constant CLK_PERIOD : time := 10 ns;

    signal clk      : STD_LOGIC := '0';
    signal reset    : STD_LOGIC := '1';
    signal pwm_out  : STD_LOGIC;
    signal pwm_out2 : STD_LOGIC;
    signal Dip_SW0  : STD_LOGIC := '0';
    signal Dip_SW1  : STD_LOGIC := '0';
    signal Dip_SW2  : STD_LOGIC := '0';
    signal Dip_SW3  : STD_LOGIC := '0';
    signal Dip_SW4  : STD_LOGIC := '0';
    signal Dip_SW5  : STD_LOGIC := '0';
    signal Dip_SW6  : STD_LOGIC := '0';
    signal Dip_SW7  : STD_LOGIC := '0';

begin

    DUT: entity work.FULL
        port map (
            clk      => clk,
            reset    => reset,
            pwm_out  => pwm_out,
            pwm_out2 => pwm_out2,
            Dip_SW0  => Dip_SW0,
            Dip_SW1  => Dip_SW1,
            Dip_SW2  => Dip_SW2,
            Dip_SW3  => Dip_SW3,
            Dip_SW4  => Dip_SW4,
            Dip_SW5  => Dip_SW5,
            Dip_SW6  => Dip_SW6,
            Dip_SW7  => Dip_SW7
        );

    clk <= not clk after CLK_PERIOD / 2;

    process
    begin
        -- Reset
        reset   <= '1';
        wait for 200 ns;
        reset   <= '0';

        -- Set sine frequency: SW0-3 = "0100" = 4
        -- div_value=4 means divider fires every 4 clk cycles
        -- giving clear ready_pulse spikes not a solid high
        Dip_SW0 <= '0';
        Dip_SW1 <= '0';
        Dip_SW2 <= '1';  -- div_value = "0100" = 4
        Dip_SW3 <= '0';

        -- -----------------------------------------------
        -- TEST 1: Passthrough (window_sel = "0000")
        -- pwm_out and pwm_out2 should look identical
        -- -----------------------------------------------
        Dip_SW4 <= '0';
        Dip_SW5 <= '0';
        Dip_SW6 <= '0';
        Dip_SW7 <= '0';
        wait for 500 us;

        -- -----------------------------------------------
        -- TEST 2: N=2 (window_sel = "0001")
        -- avg_out should be slightly smoother than sine_val
        -- -----------------------------------------------
        --Dip_SW4 <= '1';
        --Dip_SW5 <= '0';
        --Dip_SW6 <= '0';
        --Dip_SW7 <= '0';
        --wait for 500 us;

        -- -----------------------------------------------
        -- TEST 3: N=4 (window_sel = "0010")
        -- avg_out smoother, slight amplitude reduction
        -- -----------------------------------------------
        --Dip_SW4 <= '0';
        ---Dip_SW5 <= '1';
        --Dip_SW6 <= '0';
        --Dip_SW7 <= '0';
        --wait for 500 us;

        -- -----------------------------------------------
        -- TEST 4: N=8 (window_sel = "0100")
        -- clearly smoother, noticeable amplitude drop
        -- -----------------------------------------------
       -- Dip_SW4 <= '0';
        --Dip_SW5 <= '0';
       -- Dip_SW6 <= '1';
       -- Dip_SW7 <= '0';
        --wait for 500 us;

        -- -----------------------------------------------
        -- TEST 5: N=16 (window_sel = "1000")
        -- heavy smoothing, large amplitude reduction
        -- -----------------------------------------------
        Dip_SW4 <= '0';
        Dip_SW5 <= '0';
        Dip_SW6 <= '0';
        Dip_SW7 <= '1';
        wait for 500 us;

        -- -----------------------------------------------
        -- TEST 6: Reset while running
        -- both outputs should go to zero then recover
        -- -----------------------------------------------
        reset <= '1';
        wait for 200 ns;
        reset <= '0';
        -- Keep N=16 after reset to verify clean recovery
        wait for 500 us;

        report "Simulation complete" severity NOTE;
        wait;

    end process;

end Behavioral;