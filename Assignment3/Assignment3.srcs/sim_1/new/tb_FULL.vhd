library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_FULL is
end tb_FULL;

architecture Behavioral of tb_FULL is

    component FULL
        Port (
            clk     : in  STD_LOGIC;
            reset   : in  STD_LOGIC;
            pwm_out : out STD_LOGIC
        );
    end component;

    signal clk     : STD_LOGIC := '0';
    signal reset   : STD_LOGIC := '0';
    signal pwm_out : STD_LOGIC;

    constant clk_period : time := 10 ns;

begin

    uut: FULL
        port map (
            clk     => clk,
            reset   => reset,
            pwm_out => pwm_out
        );

    -- Clock generation
    clk_process : process
    begin
        clk <= '0';
        wait for clk_period/2;
        clk <= '1';
        wait for clk_period/2;
    end process;

    stim_proc: process
    begin		
        reset <= '1';
        wait for 100 ns;	
        reset <= '0';
        
        wait for 100 ms; 

        assert false report "Simulation Finished" severity failure;
        wait;
    end process;

end Behavioral;