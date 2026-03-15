----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/03/2026 01:37:42 PM
-- Design Name: 
-- Module Name: D_flip_flop - Behavioral
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

entity D_flip_flop is
    Port ( D : in STD_LOGIC;
           clk : in STD_LOGIC;
           Reset : in STD_LOGIC;
           Preset : in STD_LOGIC;
           Q : out STD_LOGIC);
end D_flip_flop;

architecture Behavioral of D_flip_flop is
begin
process(clk, Reset, Preset)
begin
    if Reset = '1' then
        Q <= '0';
    elsif Preset = '1' then
        Q <= '1';
    elsif rising_edge(clk) then
        Q <= D;
    end if;
end process;

end Behavioral;