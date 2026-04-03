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
           data_out : out STD_LOGIC_VECTOR (7 downto 0));
end ROM;

architecture Behavioral of ROM is

type rom_type is array (0 to 31) of std_logic_vector (7 downto 0);
constant rom : rom_type := (x"00", x"11", 
x"22", x"33", x"44", x"55", x"66",
x"77", x"88", x"99", x"aa", x"bb", 
x"cc", x"dd", x"ee", x"ff", x"00", x"11", 
x"22", x"33", x"44", x"55", x"66",
x"77", x"88", x"99", x"aa", x"bb", 
x"cc", x"dd", x"ee", x"ff"
);

begin

process(address)
begin 
    data_out <= rom(to_integer(unsigned(address)));
end process;
end Behavioral;