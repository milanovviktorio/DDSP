----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/15/2026 06:30:39 PM
-- Design Name: 
-- Module Name: A - Behavioral
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

entity A is
Port ( 
       D   : in  STD_LOGIC_VECTOR (7 downto 0);
       Q   : out STD_LOGIC_VECTOR (7 downto 0);
       RST : in  STD_LOGIC;
       clk : in  STD_LOGIC
     );
end A;

architecture Behavioral of A is

signal internalBit : STD_LOGIC_VECTOR (7 downto 0);

begin

process(clk, RST)
begin
    if RST = '1' then
        internalBit <= (others => '0');
        
    elsif rising_edge(clk) then
        internalBit <= D;  
    end if;
end process;

Q <= internalBit;

end Behavioral;
