----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/18/2026
-- Module Name: full_assignment2 - Structural
-- Description:
-- Top module connecting Control Unit (stateMachine) and Datapath
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity full_assignment2 is
    Port ( 
        clk   : in STD_LOGIC;
        reset : in STD_LOGIC;
        input : in STD_LOGIC_VECTOR (7 downto 0);

        Out1  : out STD_LOGIC_VECTOR (7 downto 0);
        Out2  : out STD_LOGIC_VECTOR (7 downto 0);

        -- ✅ DEBUG OUTPUTS
        OPC   : out STD_LOGIC_VECTOR (3 downto 0); -- instruction
        PC    : out STD_LOGIC_VECTOR (3 downto 0); -- program counter
        State : out STD_LOGIC_VECTOR (3 downto 0)  -- FSM state
    );
end full_assignment2;

architecture Structural of full_assignment2 is

------------------------------------------------
-- CONTROL SIGNALS
------------------------------------------------
signal SelInput : STD_LOGIC;
signal AluFunc  : STD_LOGIC_VECTOR(1 downto 0);
signal LoadA, LoadB, LoadC, LoadD : STD_LOGIC;
signal SelA, SelB : STD_LOGIC_VECTOR(1 downto 0);
signal Carry : STD_LOGIC;

signal CarryOut : STD_LOGIC;

------------------------------------------------
-- DEBUG SIGNALS (from state machine)
------------------------------------------------
signal Stateout : STD_LOGIC_VECTOR(3 downto 0);
signal PC_extra : STD_LOGIC_VECTOR(3 downto 0);
signal ASM_input_extra : STD_LOGIC_VECTOR(3 downto 0);

begin

------------------------------------------------
-- STATE MACHINE (CONTROL UNIT)
------------------------------------------------
uControl: entity work.stateMachine
port map(
    clk => clk,
    Reset => reset,

    SelInput => SelInput,
    AluFunc  => AluFunc,

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

------------------------------------------------
-- DATAPATH
------------------------------------------------
uDatapath: entity work.Datapath
port map(
    CarryIn => Carry,
    clk => clk,
    Reset => reset,

    input => input,

    loadA => LoadA,
    loadB => LoadB,
    loadC => LoadC,
    loadD => LoadD,

    Sel_A => SelA,
    Sel_B => SelB,
    Sel_Alu => AluFunc,

    Sel_input => SelInput,

    Out1 => Out1,
    Out2 => Out2,

    CarryOut => CarryOut
);

------------------------------------------------
-- DEBUG OUTPUT CONNECTIONS
------------------------------------------------
OPC   <= ASM_input_extra;
PC    <= PC_extra;
State <= Stateout;

end Structural;