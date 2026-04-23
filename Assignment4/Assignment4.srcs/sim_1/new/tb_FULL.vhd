library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_FULL is
end tb_FULL;

architecture Behavioral of tb_FULL is

    -- Clock period (100MHz ZEDBOARD clock)
    constant CLK_PERIOD : time := 10 ns;

    -- DUT signals
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

    -- Instantiate top level
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

    -- Clock generation
    clk <= not clk after CLK_PERIOD / 2;

    -- Stimulus
    process
    begin

        -- -----------------------------------------------
        -- TEST 1: Reset check
        -- -----------------------------------------------
        reset <= '1';
        wait for 100 ns;
        reset <= '0';
        wait for 100 ns;

        -- -----------------------------------------------
        -- TEST 2: No averaging (window_sel = "0000")
        -- SW0=1 gives a small div_value so sine runs fast
        -- SW4-7 = 0000 → passthrough mode
        -- -----------------------------------------------
        Dip_SW0 <= '1';   -- div_value = "0001" → fast sine
        Dip_SW4 <= '0';
        Dip_SW5 <= '0';
        Dip_SW6 <= '0';
        Dip_SW7 <= '0';
        wait for 500 us;

        -- -----------------------------------------------
        -- TEST 3: N=2 averaging (window_sel = "0001")
        -- -----------------------------------------------
        Dip_SW4 <= '1';   -- "0001"
        Dip_SW5 <= '0';
        Dip_SW6 <= '0';
        Dip_SW7 <= '0';
        wait for 500 us;

        -- -----------------------------------------------
        -- TEST 4: N=4 averaging (window_sel = "0010")
        -- -----------------------------------------------
        Dip_SW4 <= '0';
        Dip_SW5 <= '1';   -- "0010"
        Dip_SW6 <= '0';
        Dip_SW7 <= '0';
        wait for 500 us;

        -- -----------------------------------------------
        -- TEST 5: N=8 averaging (window_sel = "0100")
        -- -----------------------------------------------
        Dip_SW4 <= '0';
        Dip_SW5 <= '0';
        Dip_SW6 <= '1';   -- "0100"
        Dip_SW7 <= '0';
        wait for 500 us;

        -- -----------------------------------------------
        -- TEST 6: N=16 averaging (window_sel = "1000")
        -- -----------------------------------------------
        Dip_SW4 <= '0';
        Dip_SW5 <= '0';
        Dip_SW6 <= '0';
        Dip_SW7 <= '1';   -- "1000"
        wait for 500 us;

        -- -----------------------------------------------
        -- TEST 7: Change sine frequency mid-run
        -- SW0-3 = "0011" → slower sine, N=16 still active
        -- -----------------------------------------------
        Dip_SW0 <= '1';
        Dip_SW1 <= '1';
        Dip_SW2 <= '0';
        Dip_SW3 <= '0';
        wait for 500 us;

        -- -----------------------------------------------
        -- TEST 8: Reset while running
        -- -----------------------------------------------
        reset <= '1';
        wait for 200 ns;
        reset <= '0';
        wait for 200 us;

        -- End simulation
        report "Simulation complete" severity NOTE;
        wait;

    end process;

end Behavioral;