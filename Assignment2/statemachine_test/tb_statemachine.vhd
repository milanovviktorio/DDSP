library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_stateMachine is
end tb_stateMachine;

architecture Behavioral of tb_statemachine is

component stateMachine 
    Port ( clk  : in  STD_LOGIC;
           Reset : in STD_LOGIC;
           SelInput : out STD_LOGIC;
           AluFunc : out STD_LOGIC_VECTOR (1 downto 0);
           LoadA : out STD_LOGIC;
           LoadB : out STD_LOGIC;
           LoadC : out STD_LOGIC;
           LoadD : out STD_LOGIC;
           SelA : out STD_LOGIC_VECTOR (1 downto 0);
           SelB : out STD_LOGIC_VECTOR (1 downto 0);
           Carry : out STD_LOGIC;
           Stateout : out STD_LOGIC_VECTOR(3 downto 0);
           PC_extra : out STD_LOGIC_VECTOR (3 downto 0);
           ASM_input_extra : out STD_LOGIC_VECTOR (3 downto 0)
    );
end component;

signal clk   : STD_LOGIC := '0';
signal reset : STD_LOGIC := '1';

signal SelInput : STD_LOGIC := '0';
signal AluFunc : STD_LOGIC_VECTOR (1 downto 0) := (others => '0');

signal LoadA : STD_LOGIC:= '0';
signal LoadB : STD_LOGIC:= '0';
signal LoadC : STD_LOGIC:= '0';
signal LoadD : STD_LOGIC:= '0';

signal SelA : STD_LOGIC_VECTOR (1 downto 0) := (others => '0');
signal SelB : STD_LOGIC_VECTOR (1 downto 0) := (others => '0');

signal Carry : STD_LOGIC:= '0';
signal Stateout : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
signal PC_extra : STD_LOGIC_VECTOR (3 downto 0) := (others => '0');
signal ASM_input_extra : STD_LOGIC_VECTOR (3 downto 0) := (others => '0');

constant clk_period : time := 10 ns;

begin

uut: stateMachine
port map(
    clk => clk,
    reset => reset,
    
    SelInput => SelInput,
    AluFunc => AluFunc,
    
    LoadA => LoadA,
    LoadB => LoadB,
    LoadC => LoadC,
    LoadD => LoadD,
    
    SelA => SelA,
    SelB => SelB,
    
    Carry => Carry,
    Stateout => Stateout,
    PC_extra => PC_extra,
    ASM_input_extra => ASM_input_extra
);

clk_process : process
begin
    while true loop
        clk <= '0';
        wait for clk_period/2;
        clk <= '1';
        wait for clk_period/2;
    end loop;
end process;

stim_proc: process
begin   
    reset <= '1';
    wait for 20 ns; 
    
    -- 2. Release the reset
    reset <= '0';
    
    -- 3. Let it run! 
    -- Since this is a state machine, we just need to wait 
    -- and observe the Stateout and other signals.
    wait for 200 ns;





    wait;
end process;

end Behavioral;
