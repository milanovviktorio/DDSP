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

entity testbenchPIPO is
--  Port ( );
end testbenchPIPO;

architecture Structural of testbenchPIPO is
component PIPO is
    Port ( DA : in STD_LOGIC_VECTOR (7 downto 0);
           DB : in STD_LOGIC_VECTOR (7 downto 0);
           DC : in STD_LOGIC_VECTOR (7 downto 0);
           DD : in STD_LOGIC_VECTOR (7 downto 0);
           QA : out STD_LOGIC_VECTOR (7 downto 0);
           QB : out STD_LOGIC_VECTOR (7 downto 0);
           QC : out STD_LOGIC_VECTOR (7 downto 0);
           QD : out STD_LOGIC_VECTOR (7 downto 0);
               RST : in STD_LOGIC;
               clk : in STD_LOGIC);
end component;

    signal DA   : STD_LOGIC_VECTOR (7 downto 0);
    signal DB   : STD_LOGIC_VECTOR (7 downto 0);
    signal DC   : STD_LOGIC_VECTOR (7 downto 0);
    signal DD   : STD_LOGIC_VECTOR (7 downto 0);
    signal QA   : STD_LOGIC_VECTOR (7 downto 0);
    signal QB   : STD_LOGIC_VECTOR (7 downto 0);
    signal QC   : STD_LOGIC_VECTOR (7 downto 0);
    signal QD   : STD_LOGIC_VECTOR (7 downto 0);
    signal RST     : STD_LOGIC;
    signal clk    : STD_LOGIC;
     
constant clk_period : time := 50ns;

begin
    uut: PIPO
          port map(
          DA     => DA,
          DB     => DB,
          DC     => DC,
          DD     => DD,
          QA     => QA,
          QB     => QB,
          QC     => QC,
          QD     => QD,
          RST      => RST,
          clk       => clk);
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
        DA <= "00001111";
        DB <= "10101010";
        DC <= "00111100";
        DD <= "11111111";
        wait for 50 ns;
        DB <= "00001111";
        DC <= "10101010";
        DD <= "00111100";
        DA <= "11111111";
        wait for 80 ns;
    end process;
end Structural;