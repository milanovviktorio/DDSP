-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/24/2026 03:12:47 PM
-- Design Name: 
-- Module Name: simple_rom - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ROM is
    Port ( address : in STD_LOGIC_VECTOR (4 downto 0);
           data_out : out STD_LOGIC_VECTOR (7 downto 0);
           clkROM : in STD_LOGIC);
end ROM;

architecture Behavioral of ROM is

type rom_type is array (0 to 31) of std_logic_vector (7 downto 0);
constant rom : rom_type := (
    x"80", x"98", x"B0", x"C7", x"DA", x"EA", x"F6", x"FD",
    x"FF", x"FD", x"F6", x"EA", x"DA", x"C7", x"B0", x"98",
    x"80", x"67", x"4F", x"38", x"25", x"15", x"09", x"02",
    x"00", x"02", x"09", x"15", x"25", x"38", x"4F", x"67"
);

begin

process(clkROM)
begin 
    if rising_edge(clkROM) then
        data_out <= rom(to_integer(unsigned(address)));
    end if;
end process;
end Behavioral;