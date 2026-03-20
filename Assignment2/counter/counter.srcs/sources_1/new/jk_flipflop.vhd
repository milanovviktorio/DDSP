----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/15/2026 03:28:03 PM
-- Design Name: 
-- Module Name: jk_flipflop - Behavioral
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

entity jk_flipflop is
    Port ( clk : in STD_LOGIC;
           Reset : in STD_LOGIC;
           J : in STD_LOGIC;
           K : in STD_LOGIC;
           Q : out STD_LOGIC;
           Q_not : out STD_LOGIC);
end jk_flipflop;

architecture Behavioral of jk_flipflop is
signal q_int : std_logic;
begin
process(clk, Reset)
begin
    if Reset = '1' then
        q_int <= '0';
    elsif rising_edge(clk) then
        if J = '0' and K = '0' then
            q_int <= q_int;
        elsif J = '0' and K = '1' then
            q_int <= '0';
        elsif J = '1' and K = '0' then
            q_int <= '1';
        else
            q_int <= not q_int;
        end if;
    end if;
end process;
Q  <= q_int;
Q_not <= not q_int;
end behavioral;
