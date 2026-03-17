----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/17/2026 11:25:57 AM
-- Design Name: 
-- Module Name: stateMachine - Behavioral
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

entity stateMachine is
    Port ( clk  : in  STD_LOGIC;
           Reset : in STD_LOGIC;
           SelInput : out STD_LOGIC;
           AluFunc : out STD_LOGIC_VECTOR (1 downto 0);
           LoadA : out STD_LOGIC;
           LoadB : out STD_LOGIC;
           LoadC : out STD_LOGIC;
           LoadD : out STD_LOGIC;
           SelA : out STD_LOGIC_VECTOR (1 downto 0);
           SelB : out STD_LOGIC_VECTOR (1 downto 0);
           Carry : out STD_LOGIC;
           Stateout : out STD_LOGIC_VECTOR(3 downto 0);
           PC_extra : out STD_LOGIC_VECTOR (3 downto 0);
           ASM_input_extra : out STD_LOGIC_VECTOR (3 downto 0);
    );
end stateMachine;

architecture Behavioral of stateMachine is
    type state_type is (st1_reset, st2_DecodeAndExecute, st3_Wait, st4_Execute, st5_Wait);
    
    signal state, next_state : state_type;

    signal ASM_input : STD_LOGIC_VECTOR (3 downto 0);
    signal PC : STD_LOGIC_VECTOR (3 downto 0);
    signal Increment_PC : STD_LOGIC;
begin

SYNC_PROC: process (clk)
    begin
        if(falling_edge(clk)) then
            if (reset = '1') then
                state <= st1_reset;
            else
                state <= next_state;
            end if;
        end if;
    end process;

Inst_decode: process (state, ASM_input)
    begin
        if(state=st1_reset) then
            SelInput <= '0';
            LoadA <= '0';
            LoadB <= '0';
            LoadC <= '0';
            LoadD <= '0';
            SelA <= "00";
            SelB <= "00";
            AluFunc <= "00";
            Carry <= '0';
            Increment_PC <= '0';
            stateout <= "0001";
        end if;

        if (state = st2_DecodeAndExecute) then
            case ASM_input is
                when "0000" => -- Load A
                        SelInput <= '1';
                        LoadA <= '0';
                        LoadB <= '0';
                        LoadC <= '0';
                        LoadD <= '0';
                        SelA <= "00";
                        SelB <= "01";
                        AluFunc <= "00";
                        Carry <= '0';
                        Increment_PC <= '1';
                        stateout <= "0010";                    
            end case;
        end if;
        
        if(state=st1_reset) then
            SelInput <= '0';
            LoadA <= '0';
            LoadB <= '0';
            LoadC <= '0';
            LoadD <= '0';
            SelA <= "00";
            SelB <= "00";
            AluFunc <= "00";
            Carry <= '0';
            Increment_PC <= '0';
            stateout <= "0001";
        end if;
        
        if(state=st4_Execute) then
            if
            end if;
        end if;
        
        if(state=st1_reset) then
            SelInput <= '0';
            LoadA <= '0';
            LoadB <= '0';
            LoadC <= '0';
            LoadD <= '0';
            SelA <= "00";
            SelB <= "00";
            AluFunc <= "00";
            Carry <= '0';
            Increment_PC <= '0';
            stateout <= "1011";
        end if;

end Behavioral;
