----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/21/2026 06:11:58 PM
-- Design Name: 
-- Module Name: alu - Behavioral
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

entity ALU is
    Port ( Ain : in STD_LOGIC_VECTOR (7 downto 0);
           Bin : in STD_LOGIC_VECTOR (7 downto 0);
           Cinput : in STD_LOGIC;
           Coutput : out STD_LOGIC;
           AluOut : out STD_LOGIC_VECTOR (7 downto 0);
           Selin : in STD_LOGIC_VECTOR (1 downto 0));
end ALU;

architecture Structural of ALU is

component adder
Port ( A : in STD_LOGIC_VECTOR (7 downto 0);
           B : in STD_LOGIC_VECTOR (7 downto 0);
           Cin : in STD_LOGIC;
           Sum : out STD_LOGIC_VECTOR (7 downto 0);
           Cout : out STD_LOGIC);
end component;

component logic
Port ( A : in STD_LOGIC_VECTOR (7 downto 0);
           B : in STD_LOGIC_VECTOR (7 downto 0);
           C : out STD_LOGIC_VECTOR (7 downto 0);
           D : out STD_LOGIC_VECTOR (7 downto 0);
           E : out STD_LOGIC_VECTOR (7 downto 0));
end component;

component mux
Port ( A : in STD_LOGIC_VECTOR (7 downto 0);
           B : in STD_LOGIC_VECTOR (7 downto 0);
           C : in STD_LOGIC_VECTOR (7 downto 0);
           D : in STD_LOGIC_VECTOR (7 downto 0);
           Sel : in STD_LOGIC_VECTOR (1 downto 0);
           E : out STD_LOGIC_VECTOR (7 downto 0));
end component;

signal SumOut : STD_LOGIC_VECTOR (7 downto 0);
signal Logic_c_out : STD_LOGIC_VECTOR (7 downto 0);
signal Logic_d_out : STD_LOGIC_VECTOR (7 downto 0);
signal Logic_e_out : STD_LOGIC_VECTOR (7 downto 0);

begin
u1: adder port map(A=>Ain,B=>Bin,Cout=>Coutput,Cin=>Cinput,Sum => SumOut);
u2: logic port map(A=>Ain,B=>Bin, C => Logic_c_out, D => Logic_d_out, E => Logic_e_out);
u3: mux port map(Sel=>Selin, E=>AluOut, A => SumOut, B => Logic_c_out, C => Logic_d_out, D => Logic_e_out);

end Structural;