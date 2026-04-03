-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/24/2026 03:21:25 PM
-- Design Name: 
-- Module Name: tb_rom_simple - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity testROM is
--  Port ( );
end testROM;

architecture Behavioral of testROM is
    component ROM
    port (address : in STD_LOGIC_VECTOR (4 downto 0);
               data_out : out STD_LOGIC_VECTOR (7 downto 0));
end component;

signal address: std_logic_vector (4 downto 0);
signal data_out: std_logic_vector (7 downto 0);
begin
    uut: ROM port map (address => address,
        data_out => data_out);
        process
        begin
            for k in 0 to 3 loop  -- repeat waveform 4 times
                for i in 0 to 31 loop
                    address <= std_logic_vector(to_unsigned(i, 5));
                    wait for 10 ns;
                end loop;
            end loop;
        
            wait; -- stop simulation cleanly
        end process;
end Behavioral;