----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/04/2026 03:52:59 PM
-- Design Name: 
-- Module Name: testSISO - Behavioral
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

entity testSISO is
--  Port ( );
end testSISO;

architecture Behavioral of testSISO is
component SISO is
    Port ( D : in STD_LOGIC;
           Q : out STD_LOGIC;
           RST : in STD_LOGIC;
           clk : in STD_LOGIC);
end component;

signal D: STD_LOGIC;
signal Q: STD_LOGIC;
signal RST: STD_LOGIC;
signal clk: STD_LOGIC;

constant clk_period : time := 50ns;

begin
    uut: SISO Port map
    (D=>D,Q=>Q,RST=>RST,clk=>clk);
    clk_process: process
        Begin
        clk <= '0';
        wait for clk_period/2;
        clk <= '1';
        wait for clk_period/2;
    end process;
    stim_proc: process
        begin
        RST <= '1';
        wait for 90 ns;
        RST <= '0';
        wait for 220 ns;
        D <= '0';
        wait for 10 ns;
        D <= '1';
        wait for 80 ns;
    end process;
end Behavioral;
