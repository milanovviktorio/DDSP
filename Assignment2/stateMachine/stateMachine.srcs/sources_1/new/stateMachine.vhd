----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/17/2026 11:25:57 AM
-- Design Name: 
-- Module Name: stateMachine - Structural
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

entity stateMachine is
    Port ( clk  : in  STD_LOGIC;
           Reset : in STD_LOGIC;
           
           Sel_data_A : out STD_LOGIC_VECTOR(1 downto 0);
           Sel_data_B : out STD_LOGIC_VECTOR(1 downto 0);
           Sel_data_ALU : out STD_LOGIC_VECTOR(1 downto 0);
           
           Sel_data : out STD_LOGIC;
           
           Data_in_1: in STD_LOGIC_VECTOR(7 downto 0);
           Data_in_2: in STD_LOGIC_VECTOR(7 downto 0)
    );
end stateMachine;

architecture Structural of stateMachine is

component Datapath
Port(
    CarryIn   : in STD_LOGIC;
    clk       : in STD_LOGIC;
    Reset     : in STD_LOGIC;

    input     : in STD_LOGIC_VECTOR(7 downto 0);

    loadA     : in STD_LOGIC;
    loadB     : in STD_LOGIC;
    loadC     : in STD_LOGIC;
    loadD     : in STD_LOGIC;

    Sel_A     : in STD_LOGIC_VECTOR(1 downto 0);
    Sel_B     : in STD_LOGIC_VECTOR(1 downto 0);
    Sel_Alu   : in STD_LOGIC_VECTOR(1 downto 0);

    Sel_input : in STD_LOGIC;

    Out1      : out STD_LOGIC_VECTOR(7 downto 0);
    Out2      : out STD_LOGIC_VECTOR(7 downto 0);

    CarryOut  : out STD_LOGIC
);
end component;

component counter
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


end Structural;
