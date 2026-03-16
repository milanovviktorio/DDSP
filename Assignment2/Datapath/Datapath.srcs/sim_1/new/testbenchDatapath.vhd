library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity testbenchDatapath is
end testbenchDatapath;

architecture Behavioral of testbenchDatapath is


component Datapath
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
end component;



signal CarryIn : STD_LOGIC;
signal clk : STD_LOGIC := '0';
signal Reset : STD_LOGIC;

signal input : STD_LOGIC_VECTOR(7 downto 0);

signal loadA,loadB,loadC,loadD : STD_LOGIC;

signal Sel_A,Sel_B : STD_LOGIC_VECTOR(1 downto 0);
signal Sel_Alu : STD_LOGIC_VECTOR(1 downto 0);

signal Sel_input : STD_LOGIC;

signal Out1,Out2 : STD_LOGIC_VECTOR(7 downto 0);

signal CarryOut : STD_LOGIC;


constant clk_period : time := 10 ns;



begin


uut: Datapath
port map(
CarryIn=>CarryIn,
clk=>clk,
Reset=>Reset,
input=>input,
loadA=>loadA,
loadB=>loadB,
loadC=>loadC,
loadD=>loadD,
Sel_A=>Sel_A,
Sel_B=>Sel_B,
Sel_Alu=>Sel_Alu,
Sel_input=>Sel_input,
Out1=>Out1,
Out2=>Out2,
CarryOut=>CarryOut
);



clk_process: process
begin
clk <= '0';
wait for clk_period/2;
clk <= '1';
wait for clk_period/2;
end process;



stim_proc: process
begin

Reset <= '1';
wait for 20 ns;
Reset <= '0';


-- Load A
Sel_input <= '1';
input <= "00000101";
loadA <= '1';
wait for 10 ns;
loadA <= '0';


-- Load B
input <= "00000011";
loadB <= '1';
wait for 10 ns;
loadB <= '0';


-- ALU A+B -> C
Sel_input <= '0';
Sel_A <= "00";
Sel_B <= "01";
Sel_Alu <= "00";
CarryIn <= '0';

loadC <= '1';
wait for 10 ns;
loadC <= '0';


-- ALU C-B -> D
Sel_A <= "10";
Sel_B <= "01";
Sel_Alu <= "01";

loadD <= '1';
wait for 10 ns;
loadD <= '0';


wait;

end process;

end Behavioral;