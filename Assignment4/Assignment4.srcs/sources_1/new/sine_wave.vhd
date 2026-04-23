library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity sine_wave is
    Port (
        clk        : in  STD_LOGIC;
        reset      : in  STD_LOGIC;
        div_value  : in  STD_LOGIC_VECTOR(3 downto 0);
        sine_out   : out STD_LOGIC_VECTOR(7 downto 0);
        data_ready : out STD_LOGIC
    );
end sine_wave;

architecture Structural of sine_wave is
    signal addr_out     : STD_LOGIC_VECTOR(4 downto 0);
    signal sine_val     : STD_LOGIC_VECTOR(7 downto 0);
    signal clk_div      : STD_LOGIC;
    signal ready_pulse  : STD_LOGIC;
    signal div_value_8b : STD_LOGIC_VECTOR(7 downto 0);
begin

    div_value_8b <= "0000" & div_value;

    Control: entity work.control
        generic map (N => 50000)
        port map (
            clkin      => clk,
            clkout     => clk_div,
            reset      => reset,
            divide_by  => div_value_8b,
            addr_out   => addr_out,
            data_ready => ready_pulse
        );

    ROM: entity work.ROM
        port map (
            address  => addr_out,
            data_out => sine_val
        );

    sine_out   <= sine_val;
    data_ready <= ready_pulse;

end Structural;