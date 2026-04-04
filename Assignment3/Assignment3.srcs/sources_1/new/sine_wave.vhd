library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity sine_wave is
    Port (
        clk      : in  STD_LOGIC;
        reset    : in  STD_LOGIC;
        freq_sel : in  STD_LOGIC_VECTOR(7 downto 0); -- New Frequency Control
        sine_out : out STD_LOGIC_VECTOR(7 downto 0)
    );
end sine_wave;

architecture Structural of sine_wave is
    signal addr_out : STD_LOGIC_VECTOR(4 downto 0);
    signal clk_div  : STD_LOGIC;
begin

    Control: entity work.control
        port map (
            clkin    => clk,
            reset    => reset,
            freq_sel => freq_sel, -- Pass the 8-bit vector here
            addr_out => addr_out 
        );

    ROM_inst: entity work.ROM
        port map (
            address  => addr_out,
            data_out => sine_out
        );
end Structural;