library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_full_assignment2 is
end tb_full_assignment2;

architecture Behavioral of tb_full_assignment2 is

-- Component under test
component full_assignment2
    Port ( 
        clk   : in STD_LOGIC;
        reset : in STD_LOGIC;
        input : in STD_LOGIC_VECTOR (7 downto 0);

        Out1  : out STD_LOGIC_VECTOR (7 downto 0);
        Out2  : out STD_LOGIC_VECTOR (7 downto 0);

        OPC   : out STD_LOGIC_VECTOR (3 downto 0);
        PC    : out STD_LOGIC_VECTOR (3 downto 0);
        State : out STD_LOGIC_VECTOR (3 downto 0)
    );
end component;

-- Signals
signal clk   : STD_LOGIC := '0';
signal reset : STD_LOGIC := '1';
signal input : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');

signal Out1  : STD_LOGIC_VECTOR(7 downto 0);
signal Out2  : STD_LOGIC_VECTOR(7 downto 0);

signal OPC   : STD_LOGIC_VECTOR(3 downto 0);
signal PC    : STD_LOGIC_VECTOR(3 downto 0);
signal State : STD_LOGIC_VECTOR(3 downto 0);

-- Clock period
constant clk_period : time := 10 ns;

begin

------------------------------------------------
-- Instantiate DUT
------------------------------------------------
uut: full_assignment2
port map(
    clk => clk,
    reset => reset,
    input => input,

    Out1 => Out1,
    Out2 => Out2,

    OPC => OPC,
    PC => PC,
    State => State
);

------------------------------------------------
-- CLOCK PROCESS
------------------------------------------------
clk_process : process
begin
    while true loop
        clk <= '0';
        wait for clk_period/2;
        clk <= '1';
        wait for clk_period/2;
    end loop;
end process;

------------------------------------------------
-- STIMULUS PROCESS
------------------------------------------------
stim_proc: process
begin

    ------------------------------------------------
    -- RESET
    ------------------------------------------------
    reset <= '1';
    wait for 20 ns;
    reset <= '0';

    ------------------------------------------------
    -- INPUT VALUES (for Load A, B, C...)
    ------------------------------------------------
    -- These values will be loaded when FSM executes instructions

    input <= "00000101"; -- 5 (for A)
    wait for 40 ns;

    input <= "00000011"; -- 3 (for B)
    wait for 40 ns;

    input <= "00000010"; -- 2 (for C)
    wait for 40 ns;

    input <= "00000000"; -- D (unused)
    wait for 200 ns;

    ------------------------------------------------
    -- Let program run (A = B + C should happen)
    ------------------------------------------------
    wait for 300 ns;

    ------------------------------------------------
    -- END SIMULATION
    ------------------------------------------------
    wait;

end process;

end Behavioral;