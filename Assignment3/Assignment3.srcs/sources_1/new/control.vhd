----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/03/2026 02:59:41 PM
-- Design Name: 
-- Module Name: control - Behavioral
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity control is
    generic (
        N : integer := 256  -- Maximum supported divide value
    );
    Port (
        clkin     : in  STD_LOGIC;
        clkout    : out  STD_LOGIC;
        reset     : in  STD_LOGIC;
        divide_by : in  STD_LOGIC_VECTOR(7 downto 0);
        addr_out  : out STD_LOGIC_VECTOR(4 downto 0)
    );
end control;

architecture Behavioral of control is
signal counter_control       : unsigned(4 downto 0) := (others => '0');
signal counter_divider       : integer range 0 to N-1 := 0;
signal counter_divider_latch : integer range 2 to N := 2;
signal clkdiv : STD_LOGIC    := '0';
begin
    process (clkin, reset)
    begin   
        if reset = '1' then
            clkdiv <= '0';
            counter_divider_latch <= 2;
        elsif rising_edge(clkin) then
            clkdiv <= '0';
            if counter_divider >= counter_divider_latch - 1 then
                counter_divider <= 0;
                clkdiv <= '1';
                counter_divider_latch <= TO_INTEGER(unsigned(divide_by));
                counter_control <= counter_control + 1;
            else    
                counter_divider <= counter_divider + 1;
            end if;
        end if;
    end process;
    
    clkout <= clkdiv;
    addr_out <= std_logic_vector(counter_control);
end Behavioral;
