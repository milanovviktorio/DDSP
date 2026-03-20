----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/03/2026 02:34:54 PM
-- Design Name: 
-- Module Name: test_bench_D - Behavioral
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

entity test_bench_D is
--  Port ( );
end test_bench_D;

architecture Behavioral of test_bench_D is
component D_flip_flop is
    Port (
        D : in STD_LOGIC;
        Q : out STD_LOGIC;
        Reset : in STD_LOGIC;
        Preset : in STD_LOGIC;
        clk : in STD_LOGIC
    );
end component;

signal D : STD_LOGIC := '0';
signal Q : STD_LOGIC;
signal Reset : STD_LOGIC := '0';
signal Preset : STD_LOGIC := '0';
signal clk : STD_LOGIC := '0';

constant clk_period : time := 50 ns;

begin

uut: D_flip_flop
port map (
    D => D,
    Q => Q,
    Reset => Reset,
    Preset => Preset,
    clk => clk
);

clk_process : process
begin
    clk <= '0';
    wait for clk_period/2;
    clk <= '1';
    wait for clk_period/2;
end process;

stim_proc: process
begin
    Reset <= '1';
    wait for 90 ns;
    Reset <= '0';
    wait for 100 ns;
    D <= '1';
    wait for 100 ns;
    D <= '0';
    wait for 100 ns;
    Preset <= '1';
    wait for 50 ns;
    Reset <= '1';
    wait for 30 ns;
    Preset <= '0';
    wait for 80 ns;
    Reset <= '0';
    wait;
end process;
end Behavioral;
