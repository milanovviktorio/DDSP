----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/03/2026 01:54:02 PM
-- Design Name: 
-- Module Name: testbench_d_flip_flop - Behavioral
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

entity testbench_d_flip_flop is
--  Port ( );
end testbench_d_flip_flop;

architecture Behavioral of testbench_d_flip_flop is
component D_flip_flop is
    Port ( D : in STD_LOGIC;
           clk : in STD_LOGIC;
           Reset : in STD_LOGIC;
           Q : out STD_LOGIC);
end component;           
           
signal D: std_logic;           
signal clk: std_logic; 
signal Reset: std_logic;
signal Q: std_logic; 
       
constant clk_period: time:=50ns;    
begin
uut: D_flip_flop port map(D => D, clk => clk, Reset => Reset, Q => Q);
    clk_process:process
        begin
        clk <= '0';
        wait for clk_period/2;
        clk <= '1';
        wait for clk_period/2; 
    end process;
    
    stim_proc: process
        begin
        Reset <= '1';
        wait for 90ns;
        Reset <= '0';
        wait for 220ns;  
        
        D <= 0;   
        wait for 50ns;
        D <= 1;   
        wait for 50ns;
        D <= 0;   
        wait for 50ns;  
        D <= 1;   
        wait for 50ns;
        
        Reset <= '1'
        wait;      
    end process;
end Behavioral;
