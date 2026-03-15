----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/03/2026 03:24:37 PM
-- Design Name: 
-- Module Name: SISO - Behavioral
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

entity PIPO is
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
end PIPO;

architecture Structural of PIPO is

component A
Port ( 
       D   : in  STD_LOGIC_VECTOR (7 downto 0);
       Q   : out STD_LOGIC_VECTOR (7 downto 0);
       RST : in  STD_LOGIC;
       clk : in  STD_LOGIC
     );
end component;

component B
Port ( 
       D   : in  STD_LOGIC_VECTOR (7 downto 0);
       Q   : out STD_LOGIC_VECTOR (7 downto 0);
       RST : in  STD_LOGIC;
       clk : in  STD_LOGIC
     );
end component;

component C
Port ( 
       D   : in  STD_LOGIC_VECTOR (7 downto 0);
       Q   : out STD_LOGIC_VECTOR (7 downto 0);
       RST : in  STD_LOGIC;
       clk : in  STD_LOGIC
     );
end component;

component D
Port ( 
       D   : in  STD_LOGIC_VECTOR (7 downto 0);
       Q   : out STD_LOGIC_VECTOR (7 downto 0);
       RST : in  STD_LOGIC;
       clk : in  STD_LOGIC
     );
end component;

begin
u1: A port map(D=>DA,Q=>QA,RST=>RST,clk=>clk);
u2: B port map(D=>DB,Q=>QB,RST=>RST,clk=>clk);
u3: C port map(D=>DC,Q=>QC,RST=>RST,clk=>clk);
u4: D port map(D=>DD,Q=>QD,RST=>RST,clk=>clk);

end Structural;
