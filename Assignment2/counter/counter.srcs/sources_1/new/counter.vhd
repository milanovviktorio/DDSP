----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/15/2026 04:14:13 PM
-- Design Name: 
-- Module Name: counter - Structural JK Flip-Flop Up/Down Counter
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 8-bit up/down counter built from JK flip-flops using std_logic signals
-- Dependencies: JK flip-flop component
-- Revision:
-- Revision 0.02 - Toggle logic moved into process for stable signals
-- Additional Comments:
-- 
----------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity counter is
    Port ( clk   : in  STD_LOGIC;
           Reset : in  STD_LOGIC;
           Input : in  STD_LOGIC;  -- Up/Down control: '1' = up, '0' = down
           q0    : out STD_LOGIC;
           q1    : out STD_LOGIC;
           q2    : out STD_LOGIC;
           q3    : out STD_LOGIC;
           q4    : out STD_LOGIC;
           q5    : out STD_LOGIC;
           q6    : out STD_LOGIC;
           q7    : out STD_LOGIC);
end counter;

architecture structural of counter is
    signal t0, t1, t2, t3, t4, t5, t6, t7 : std_logic;
    signal q_int0, q_int1, q_int2, q_int3, q_int4, q_int5, q_int6, q_int7 : std_logic;

    component jk_flipflop
        port(
            clk   : in std_logic;
            Reset : in std_logic;
            J     : in std_logic;
            K     : in std_logic;
            Q     : out std_logic;
            Q_not : out std_logic
        );
    end component;

begin

    -- Toggle logic process for glitch-free operation
    toggle_logic_proc: process(Input, q_int0, q_int1, q_int2, q_int3, q_int4, q_int5, q_int6)
    begin
        t0 <= '1';  -- LSB always toggles every clock cycle
        if Input = '1' then  -- Count up
            t1 <= q_int0;
            t2 <= q_int1 and q_int0;
            t3 <= q_int2 and q_int1 and q_int0;
            t4 <= q_int3 and q_int2 and q_int1 and q_int0;
            t5 <= q_int4 and q_int3 and q_int2 and q_int1 and q_int0;
            t6 <= q_int5 and q_int4 and q_int3 and q_int2 and q_int1 and q_int0;
            t7 <= q_int6 and q_int5 and q_int4 and q_int3 and q_int2 and q_int1 and q_int0;
        else  -- Count down
            t1 <= not q_int0;
            t2 <= not q_int1 and not q_int0;
            t3 <= not q_int2 and not q_int1 and not q_int0;
            t4 <= not q_int3 and not q_int2 and not q_int1 and not q_int0;
            t5 <= not q_int4 and not q_int3 and not q_int2 and not q_int1 and not q_int0;
            t6 <= not q_int5 and not q_int4 and not q_int3 and not q_int2 and not q_int1 and not q_int0;
            t7 <= not q_int6 and not q_int5 and not q_int4 and not q_int3 and not q_int2 and not q_int1 and not q_int0;
        end if;
    end process;

    -- JK Flip-Flop Instantiations
    FF0: jk_flipflop port map(clk => clk, Reset => Reset, J => t0, K => t0, Q => q_int0, Q_not => open);
    FF1: jk_flipflop port map(clk => clk, Reset => Reset, J => t1, K => t1, Q => q_int1, Q_not => open);
    FF2: jk_flipflop port map(clk => clk, Reset => Reset, J => t2, K => t2, Q => q_int2, Q_not => open);
    FF3: jk_flipflop port map(clk => clk, Reset => Reset, J => t3, K => t3, Q => q_int3, Q_not => open);
    FF4: jk_flipflop port map(clk => clk, Reset => Reset, J => t4, K => t4, Q => q_int4, Q_not => open);
    FF5: jk_flipflop port map(clk => clk, Reset => Reset, J => t5, K => t5, Q => q_int5, Q_not => open);
    FF6: jk_flipflop port map(clk => clk, Reset => Reset, J => t6, K => t6, Q => q_int6, Q_not => open);
    FF7: jk_flipflop port map(clk => clk, Reset => Reset, J => t7, K => t7, Q => q_int7, Q_not => open);

    -- Output assignments
    q0 <= q_int0;
    q1 <= q_int1;
    q2 <= q_int2;
    q3 <= q_int3;
    q4 <= q_int4;
    q5 <= q_int5;
    q6 <= q_int6;
    q7 <= q_int7;

end structural;