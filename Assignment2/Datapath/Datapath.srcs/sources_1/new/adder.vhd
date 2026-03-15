----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/21/2026 06:11:58 PM
-- Design Name: 
-- Module Name: adder - Behavioral
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

entity adder is
    Port ( A : in STD_LOGIC_VECTOR (7 downto 0);
           B : in STD_LOGIC_VECTOR (7 downto 0);
           Cin : in STD_LOGIC;
           Sum : out STD_LOGIC_VECTOR (7 downto 0);
           Cout : out STD_LOGIC);
end adder;

architecture Behavioral of adder is
    signal carry : STD_LOGIC_VECTOR(7 downto 0);
    signal C_int : STD_LOGIC_VECTOR(7 downto 0);
begin

    carry(0) <= Cin;

    gen: for i in 0 to 7 generate
    begin
        Sum(i) <= A(i) xor B(i) xor carry(i);
        C_int(i) <= (A(i) and B(i)) or
                    (carry(i) and (A(i) xor B(i)));
    end generate;

    carry(1) <= C_int(0);
    carry(2) <= C_int(1);
    carry(3) <= C_int(2);
    carry(4) <= C_int(3);
    carry(5) <= C_int(4);
    carry(6) <= C_int(5);
    carry(7) <= C_int(6);

    Cout <= C_int(7);

end Behavioral;
