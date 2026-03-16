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

entity PIPO is
Port ( 
       DA : in STD_LOGIC_VECTOR (7 downto 0);
       DB : in STD_LOGIC_VECTOR (7 downto 0);
       DC : in STD_LOGIC_VECTOR (7 downto 0);
       DD : in STD_LOGIC_VECTOR (7 downto 0);

       QA : out STD_LOGIC_VECTOR (7 downto 0);
       QB : out STD_LOGIC_VECTOR (7 downto 0);
       QC : out STD_LOGIC_VECTOR (7 downto 0);
       QD : out STD_LOGIC_VECTOR (7 downto 0);

       LoadA : in STD_LOGIC;
       LoadB : in STD_LOGIC;
       LoadC : in STD_LOGIC;
       LoadD : in STD_LOGIC;

       RST : in STD_LOGIC;
       clk : in STD_LOGIC
);
end PIPO;



architecture Structural of PIPO is


component A
Port(
    D : in STD_LOGIC_VECTOR(7 downto 0);
    Q : out STD_LOGIC_VECTOR(7 downto 0);
    LOAD : in STD_LOGIC;
    RST : in STD_LOGIC;
    clk : in STD_LOGIC
);
end component;


component B
Port(
    D : in STD_LOGIC_VECTOR(7 downto 0);
    Q : out STD_LOGIC_VECTOR(7 downto 0);
    LOAD : in STD_LOGIC;
    RST : in STD_LOGIC;
    clk : in STD_LOGIC
);
end component;


component C
Port(
    D : in STD_LOGIC_VECTOR(7 downto 0);
    Q : out STD_LOGIC_VECTOR(7 downto 0);
    LOAD : in STD_LOGIC;
    RST : in STD_LOGIC;
    clk : in STD_LOGIC
);
end component;


component D
Port(
    D : in STD_LOGIC_VECTOR(7 downto 0);
    Q : out STD_LOGIC_VECTOR(7 downto 0);
    LOAD : in STD_LOGIC;
    RST : in STD_LOGIC;
    clk : in STD_LOGIC
);
end component;



begin

uA: A port map(D=>DA,Q=>QA,LOAD=>LoadA,RST=>RST,clk=>clk);

uB: B port map(D=>DB,Q=>QB,LOAD=>LoadB,RST=>RST,clk=>clk);

uC: C port map(D=>DC,Q=>QC,LOAD=>LoadC,RST=>RST,clk=>clk);

uD: D port map(D=>DD,Q=>QD,LOAD=>LoadD,RST=>RST,clk=>clk);

end Structural;
