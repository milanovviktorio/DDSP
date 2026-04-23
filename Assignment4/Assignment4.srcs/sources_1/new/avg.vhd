library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity avg is
    Port (
        clk        : in  STD_LOGIC;
        reset      : in  STD_LOGIC;
        data_ready : in  STD_LOGIC;
        data_in    : in  STD_LOGIC_VECTOR(7 downto 0);
        window_sel : in  STD_LOGIC_VECTOR(3 downto 0);
        avg_out    : out STD_LOGIC_VECTOR(7 downto 0)
    );
end avg;

architecture Behavioral of avg is

    type shift_reg_t is array (0 to 15) of unsigned(7 downto 0);
    signal sr  : shift_reg_t := (others => (others => '0'));
    signal sum : unsigned(11 downto 0) := (others => '0');

begin

    -- Shift register: loads new sample on each data_ready pulse
    process(clk, reset)
    begin
        if reset = '1' then
            sr <= (others => (others => '0'));
        elsif rising_edge(clk) then
            if data_ready = '1' then
                sr(0) <= unsigned(data_in);
                for i in 1 to 15 loop
                    sr(i) <= sr(i-1);
                end loop;
            end if;
        end if;
    end process;

    -- Sum and divide based on window_sel from DipSw(4-7)
    -- Division by power of 2 is done by taking the right slice of bits
    -- e.g. sum of 2 values fits in 9 bits, divide by 2 = take bits (8 downto 1)
    process(sr, window_sel)
    begin
        case window_sel is

            when "0001" =>  -- N=2
                sum <= resize(sr(0) + sr(1), 12);
                avg_out <= std_logic_vector(sum(8 downto 1));

            when "0010" =>  -- N=4
                sum <= resize(sr(0) + sr(1) + sr(2) + sr(3), 12);
                avg_out <= std_logic_vector(sum(9 downto 2));

            when "0100" =>  -- N=8
                sum <= resize(sr(0) + sr(1) + sr(2) + sr(3) +
                              sr(4) + sr(5) + sr(6) + sr(7), 12);
                avg_out <= std_logic_vector(sum(10 downto 3));

            when "1000" =>  -- N=16
                sum <= resize(sr(0)  + sr(1)  + sr(2)  + sr(3)  +
                              sr(4)  + sr(5)  + sr(6)  + sr(7)  +
                              sr(8)  + sr(9)  + sr(10) + sr(11) +
                              sr(12) + sr(13) + sr(14) + sr(15), 12);
                avg_out <= std_logic_vector(sum(11 downto 4));

            when others =>
                sum     <= resize(sr(0), 12);
                avg_out <= std_logic_vector(sr(0));

        end case;
    end process;

end Behavioral;