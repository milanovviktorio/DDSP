library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_counter is
-- Testbench has no ports
end tb_counter;

architecture sim of tb_counter is

    -- Signals connected to DUT
    signal clk     : std_logic := '0';
    signal Reset   : std_logic := '0';
    signal Input   : std_logic := '1';  -- Up/Down control
    signal q0,q1,q2,q3,q4,q5,q6,q7 : std_logic;

    -- Component declaration
    component counter
        port(
            clk   : in  std_logic;
            Reset : in  std_logic;
            Input : in  std_logic;
            q0    : out std_logic;
            q1    : out std_logic;
            q2    : out std_logic;
            q3    : out std_logic;
            q4    : out std_logic;
            q5    : out std_logic;
            q6    : out std_logic;
            q7    : out std_logic
        );
    end component;

begin

    -- Instantiate the counter
    DUT: counter port map(
        clk   => clk,
        Reset => Reset,
        Input => Input,
        q0    => q0,
        q1    => q1,
        q2    => q2,
        q3    => q3,
        q4    => q4,
        q5    => q5,
        q6    => q6,
        q7    => q7
    );

    -- Clock generation (20 ns period)
    clk_process: process
    begin
        while true loop
            clk <= '0';
            wait for 10 ns;
            clk <= '1';
            wait for 10 ns;
        end loop;
    end process;

    -- Stimulus process
    stim_proc: process
    begin
        -- Apply reset
        Reset <= '1';
        wait for 25 ns;
        Reset <= '0';

        -- Count up
        Input <= '1';
        wait for 200 ns;

        -- Count down
        Input <= '0';
        wait for 200 ns;

        -- Finish simulation
        wait;
    end process;

end sim;