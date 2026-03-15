----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/23/2026 06:36:16 PM
-- Design Name: 
-- Module Name: testbench_alu - Behavioral
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

entity testbenchAlu is
--  Port ( );
end testbenchAlu;

architecture Structural of testbenchAlu is
component alu is
   Port ( Ain : in STD_LOGIC_VECTOR (7 downto 0);
           Bin : in STD_LOGIC_VECTOR (7 downto 0);
           Cinput : in STD_LOGIC;
           Coutput : out STD_LOGIC;
           AluOut : out STD_LOGIC_VECTOR (7 downto 0);
           Selin : in STD_LOGIC_VECTOR (1 downto 0));
end component;

    signal Ain   : STD_LOGIC_VECTOR (7 downto 0);
    signal Bin      : STD_LOGIC_VECTOR (7 downto 0);
    signal Cinput     : STD_LOGIC;
    signal Coutput    : STD_LOGIC;
    signal AluOut   : STD_LOGIC_VECTOR (7 downto 0);
    signal Selin : STD_LOGIC_VECTOR (1 downto 0);
    
begin
    uut: alu
          port map(
          Ain     => Ain,
          Bin      => Bin,
          Cinput       => Cinput,
          Coutput     => Coutput,
          AluOut  => AluOut,
          Selin  => Selin);
stim_proc: process
    begin

        -- Test Case 1
        Selin <= "00";
        Ain <= "00000001";
        Bin  <= "00000001";
        Cinput <= '0';
        wait for 20 ns;

        -- Test Case 2
        Selin <= "01";
        Ain <= "11111111";
        Bin <= "00000001";
        Cinput <= '1';
        wait for 20 ns;

        -- Test Case 3
        Selin <= "10";
        Ain <= "10101010";
        Bin <= "11001100";
        Cinput <= '0';
        wait for 20 ns;

        -- Test Case 4
        Selin <= "11";
        Ain <= "00000001";
        Bin <= "11111111";
        Cinput <= '0';
        wait for 20 ns;

    end process;
end Structural;