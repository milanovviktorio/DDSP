library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity wave_gen is
    Port (
        clk        : in  STD_LOGIC;
        reset      : in  STD_LOGIC;
        div_value  : in  STD_LOGIC_VECTOR(3 downto 0);
        wave_sel   : in  STD_LOGIC_VECTOR(1 downto 0); -- 00=sine, 01=square, 10=triangle
        wave_out   : out STD_LOGIC_VECTOR(7 downto 0);
        data_ready : out STD_LOGIC
    );
end wave_gen;

architecture Structural of wave_gen is
    signal addr_out     : STD_LOGIC_VECTOR(4 downto 0);
    signal sine_val     : STD_LOGIC_VECTOR(7 downto 0);
    signal square_val   : STD_LOGIC_VECTOR(7 downto 0);
    signal triangle_val : STD_LOGIC_VECTOR(7 downto 0);
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

    ROM_sine_inst: entity work.ROM
        port map (
            address  => addr_out,
            data_out => sine_val
        );

    ROM_square_inst: entity work.ROM_square
        port map (
            address  => addr_out,
            data_out => square_val
        );

    ROM_triangle_inst: entity work.ROM_triangle
        port map (
            address  => addr_out,
            data_out => triangle_val
        );

    -- Select output based on wave_sel
    process(wave_sel, sine_val, square_val, triangle_val)
    begin
        case wave_sel is
            when "00"   => wave_out <= sine_val;
            when "01"   => wave_out <= square_val;
            when "10"   => wave_out <= triangle_val;
            when others => wave_out <= sine_val;
        end case;
    end process;

    data_ready <= ready_pulse;

end Structural;