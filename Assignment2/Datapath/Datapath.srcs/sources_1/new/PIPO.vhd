----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/03/2026 03:24:37 PM
-- Design Name: 
-- Module Name: SISO - Behavioral
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

entity SISO is
Port ( D : in STD_LOGIC;
           Q : out STD_LOGIC;
           RST : in STD_LOGIC;
           clk : in STD_LOGIC);
end SISO;

architecture Behavioral of SISO is

signal internalBit : STD_LOGIC_VECTOR (3 downto 0);

begin
process(clk,rst)
    begin
    if RST='1'
        then internalBit <= (others => '0');
    elsif rising_edge(clk) then
    for i in 0 to 2 loop 
    internalBit(i+1) <= internalBit(i); 
    end loop; 
    end if; 
    internalBit(0) <= D;
end process;
Q <= internalBit(3);
end Behavioral;
