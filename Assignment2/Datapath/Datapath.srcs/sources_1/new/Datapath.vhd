----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/15/2026 06:30:39 PM
-- Design Name: 
-- Module Name: Datapath - Structural
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

entity Datapath is
Port(

    CarryIn   : in STD_LOGIC;
    clk       : in STD_LOGIC;
    Reset     : in STD_LOGIC;

    input     : in STD_LOGIC_VECTOR(7 downto 0);

    loadA     : in STD_LOGIC;
    loadB     : in STD_LOGIC;
    loadC     : in STD_LOGIC;
    loadD     : in STD_LOGIC;

    Sel_A     : in STD_LOGIC_VECTOR(1 downto 0);
    Sel_B     : in STD_LOGIC_VECTOR(1 downto 0);
    Sel_Alu   : in STD_LOGIC_VECTOR(1 downto 0);

    Sel_input : in STD_LOGIC;

    Out1      : out STD_LOGIC_VECTOR(7 downto 0);
    Out2      : out STD_LOGIC_VECTOR(7 downto 0);

    CarryOut  : out STD_LOGIC
);
end Datapath;



architecture Structural of Datapath is


component PIPO
Port(
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
end component;


component ALU
Port(
    Ain : in STD_LOGIC_VECTOR (7 downto 0);
    Bin : in STD_LOGIC_VECTOR (7 downto 0);
    Cinput : in STD_LOGIC;
    Coutput : out STD_LOGIC;
    AluOut : out STD_LOGIC_VECTOR (7 downto 0);
    Selin : in STD_LOGIC_VECTOR (1 downto 0)
);
end component;


signal QA,QB,QC,QD : STD_LOGIC_VECTOR(7 downto 0);

signal ALU_A : STD_LOGIC_VECTOR(7 downto 0);
signal ALU_B : STD_LOGIC_VECTOR(7 downto 0);

signal ALU_RESULT : STD_LOGIC_VECTOR(7 downto 0);

signal REG_IN : STD_LOGIC_VECTOR(7 downto 0);


begin


------------------------------------------------
-- ALU INPUT MUX A
------------------------------------------------

with Sel_A select
ALU_A <= QA when "00",
         QB when "01",
         QC when "10",
         QD when "11",
         (others=>'0') when others;



------------------------------------------------
-- ALU INPUT MUX B
------------------------------------------------

with Sel_B select
ALU_B <= QA when "00",
         QB when "01",
         QC when "10",
         QD when "11",
         (others=>'0') when others;




------------------------------------------------
-- REGISTER INPUT SOURCE
------------------------------------------------

REG_IN <= input when Sel_input='1'
          else ALU_RESULT;



------------------------------------------------
-- ALU
------------------------------------------------

uALU: ALU
port map(
    Ain => ALU_A,
    Bin => ALU_B,
    Cinput => CarryIn,
    Coutput => CarryOut,
    AluOut => ALU_RESULT,
    Selin => Sel_Alu
);



------------------------------------------------
-- REGISTER FILE
------------------------------------------------

uREG: PIPO
port map(

    DA => REG_IN,
    DB => REG_IN,
    DC => REG_IN,
    DD => REG_IN,

    QA => QA,
    QB => QB,
    QC => QC,
    QD => QD,

    LoadA => loadA,
    LoadB => loadB,
    LoadC => loadC,
    LoadD => loadD,

    RST => Reset,
    clk => clk
);



------------------------------------------------
-- OUTPUT PORTS
------------------------------------------------

Out1 <= ALU_A;
Out2 <= ALU_B;


end Structural;