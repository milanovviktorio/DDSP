library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity sine_wave is
    Port (
        clk      : in  STD_LOGIC;
        reset    : in  STD_LOGIC;
        sine_out : out STD_LOGIC_VECTOR(7 downto 0)
    );
end sine_wave;

architecture Structural of sine_wave is

    signal addr_out : STD_LOGIC_VECTOR(4 downto 0);
    signal sine_val : STD_LOGIC_VECTOR(7 downto 0);
    signal clk_div  : STD_LOGIC;

begin

    Control: entity work.control
        generic map (N => 50000)
        port map (
            clkin  => clk,
            clkout => clk_div,
            reset  => reset,
            addr_out   => addr_out 
        );

    ROM: entity work.ROM
        port map (
            address  => addr_out,
            data_out => sine_val
        );
    sine_out <= sine_val;
end Structural;