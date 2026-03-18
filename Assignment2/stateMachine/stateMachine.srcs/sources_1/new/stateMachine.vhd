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
use IEEE.std_logic_unsigned.ALL;

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
           ASM_input_extra : out STD_LOGIC_VECTOR (3 downto 0)
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

Output_decode: process (state, ASM_input)
begin

    -- ✅ DEFAULT VALUES (VERY IMPORTANT)
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
    Stateout <= "0000";

    -- ✅ FSM
    if state = st1_reset then
        Stateout <= "0001";

    elsif state = st2_DecodeAndExecute then
        case ASM_input is

            when "0000" => -- Load A
                SelInput <= '1';
                LoadA <= '1';
                Increment_PC <= '1';
                Stateout <= "0010";

            when "0001" => -- Load B
                SelInput <= '1';
                LoadB <= '1';
                Increment_PC <= '1';
                Stateout <= "0011";

            when "0010" => -- Load C
                SelInput <= '1';
                LoadC <= '1';
                Increment_PC <= '1';
                Stateout <= "0100";

            when "0011" => -- Load D
                SelInput <= '1';
                LoadD <= '1';
                Increment_PC <= '1';
                Stateout <= "0101";

            when "0101" => -- A = B + C
                SelInput <= '0';
                LoadA <= '1';
                SelA <= "01"; -- B
                SelB <= "10"; -- C
                AluFunc <= "00";
                Carry <= '0';  -- correct
                Increment_PC <= '1';
                Stateout <= "0110";

            when "1101" => -- Halt
                Increment_PC <= '0';
                Stateout <= "0111";

            when "1110" => -- subtraction phase 1
                LoadC <= '1';
                SelA <= "11";
                SelB <= "00";
                AluFunc <= "11";
                Stateout <= "1000";

            when others => null;
        end case;

    elsif state = st3_Wait then
        Stateout <= "1001";

    elsif state = st4_Execute then
        if ASM_input = "1110" then
            LoadA <= '1';
            SelA <= "01";
            SelB <= "10";
            Carry <= '1'; -- ONLY here
            Increment_PC <= '1';
            Stateout <= "1010";
        end if;

    elsif state = st5_Wait then
        Stateout <= "1011";

    end if;

end process;
    
 next_state_decode: process (state, ASM_input)
 begin
    next_state <= state;
    case(state) is
    when st1_reset =>
        next_state <= st2_DecodeAndExecute;
    when st2_DecodeAndExecute =>
        if(ASM_input = "1110") then
            next_state <= st5_Wait;
        else
            next_state <= st3_Wait;
        end if;
    when st3_Wait =>
        next_state <= st2_DecodeAndExecute;
    when st4_Execute =>
        next_state <= st3_Wait;
    when st5_Wait =>
        next_state <= st4_Execute;
    when others =>
        next_state <= st1_reset;
    end case;
 end process;
 
 Program_Mem: process(clk)
 type rom_type is array (0 to 15) of std_logic_vector (3 downto 0);
    variable ROM : rom_type:= (X"0",X"1",X"2",X"3",X"5",X"E",X"0",X"D",
                               X"0",X"0",X"0",X"0",X"0",X"0",X"0",X"0");
  begin
  if(rising_edge(clk)) then
    if(state = st1_reset) then
        PC <= "0000";
     else
        ASM_input <= ROM(conv_integer(PC));
            if(Increment_PC = '1') then
                PC <= PC+1;
            end if;
      end if;
   end if;
end process;

PC_extra <= PC;
ASM_input_extra <= ASM_input;
                              
end Behavioral;
