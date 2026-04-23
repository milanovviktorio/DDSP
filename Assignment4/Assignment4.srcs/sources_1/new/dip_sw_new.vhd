----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/04/2026 03:13:25 PM
-- Design Name: 
-- Module Name: dip_sw - Behavioral
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

entity dip_sw_new is
    Port (
        dip_sw4     : in STD_LOGIC;
        dip_sw5     : in STD_LOGIC;
        dip_sw6     : in STD_LOGIC;
        dip_sw7     : in STD_LOGIC;
        clk         : in STD_LOGIC;
        switches_in : out STD_LOGIC_VECTOR(7 downto 0)
    );
end dip_sw_new;

architecture Behavioral of dip_sw_new is
begin
    process (clk)
    begin
        if rising_edge(clk) then
            switches_in(4)<=dip_sw4;
            switches_in(5)<=dip_sw5;
            switches_in(6)<=dip_sw6;
            switches_in(7)<=dip_sw7;
        end if;
    end process;

end Behavioral;
