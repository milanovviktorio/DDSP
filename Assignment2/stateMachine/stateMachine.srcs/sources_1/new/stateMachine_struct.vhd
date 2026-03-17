----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/17/2026 02:13:18 PM
-- Design Name: 
-- Module Name: stateMachine_struct - Structural
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity stateMachine_struct is
--  Port ( );
end stateMachine_struct;

architecture Structural of stateMachine_struct is

Component counter
    Port ( clk   : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           Input : in  STD_LOGIC;  -- Up/Down control: '1' = up, '0' = down
           q0    : out STD_LOGIC;
           q1    : out STD_LOGIC;
           q2    : out STD_LOGIC;
           q3    : out STD_LOGIC;
           q4    : out STD_LOGIC;
           q5    : out STD_LOGIC;
           q6    : out STD_LOGIC;
           q7    : out STD_LOGIC);
end component;

begin
uProgramCounter: ProgramCounter
port map (
    PC_clk => clk;
    Reset => reset;
    Increment_PC => Input;

end Structural;
