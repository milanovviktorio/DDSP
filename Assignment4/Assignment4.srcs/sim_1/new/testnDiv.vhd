library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity testnDiv is
end testnDiv;

architecture Behavioral of testnDiv is

    component nDivider
        Generic (N : integer := 50000);
        Port (
            clkin  : in  STD_LOGIC;
            clkout : out STD_LOGIC;
            rst    : in  STD_LOGIC
        );
    end component;

    signal clkin  : STD_LOGIC := '0';
    signal rst    : STD_LOGIC := '1';
    signal clkout : STD_LOGIC;

    constant clk_period : time := 20 ns;

begin

    -- Instantiate DUT
    uut: nDivider
        generic map (
            N => 50000
        )
        port map (
            clkin  => clkin,
            rst    => rst,
            clkout => clkout
        );

    -- Clock generation
    clk_process : process
    begin
        while true loop
            clkin <= '0';
            wait for clk_period / 2;
            clkin <= '1';
            wait for clk_period / 2;
        end loop;
    end process;

    -- Stimulus
    stim_proc : process
    begin
        -- Hold reset
        
        wait for 200 ns;
        rst <= '0';

        wait for 20 ms;
    end process;

end Behavioral;