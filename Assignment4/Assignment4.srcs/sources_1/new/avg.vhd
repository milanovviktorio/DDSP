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
    signal sr : shift_reg_t := (others => (others => '0'));

begin

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

    process(sr, window_sel)
        -- 20 bits needed for Hamming weighted sums (8bit sample * 8bit weight * 16)
        variable v_sum : unsigned(19 downto 0);
    begin
        case window_sel is

            -- =====================
            -- RECTANGULAR WINDOW
            -- =====================
            when "0001" =>  -- N=2 rectangular
                v_sum   := resize(sr(0) + sr(1), 20);
                avg_out <= std_logic_vector(v_sum(8 downto 1));

            when "0010" =>  -- N=4 rectangular
                v_sum   := resize(sr(0) + sr(1) + sr(2) + sr(3), 20);
                avg_out <= std_logic_vector(v_sum(9 downto 2));

            when "0100" =>  -- N=8 rectangular
                v_sum   := resize(sr(0) + sr(1) + sr(2) + sr(3) +
                                  sr(4) + sr(5) + sr(6) + sr(7), 20);
                avg_out <= std_logic_vector(v_sum(10 downto 3));

            when "1000" =>  -- N=16 rectangular
                v_sum   := resize(sr(0)  + sr(1)  + sr(2)  + sr(3)  +
                                  sr(4)  + sr(5)  + sr(6)  + sr(7)  +
                                  sr(8)  + sr(9)  + sr(10) + sr(11) +
                                  sr(12) + sr(13) + sr(14) + sr(15), 20);
                avg_out <= std_logic_vector(v_sum(11 downto 4));

            -- =====================
            -- HAMMING WINDOW
            -- w(i) = 0.54 - 0.46*cos(2pi*i/(N-1))
            -- weights scaled to sum = 256 (>>8) for N=4
            -- weights scaled to sum = 512 (>>9) for N=8
            -- =====================
            when "0011" =>  -- N=4 Hamming, weights=[12,116,116,12], sum=256
                v_sum   := resize(
                    sr(0) * to_unsigned(12,  8) +
                    sr(1) * to_unsigned(116, 8) +
                    sr(2) * to_unsigned(116, 8) +
                    sr(3) * to_unsigned(12,  8), 20);
                avg_out <= std_logic_vector(v_sum(15 downto 8));  -- >>8

            when "0110" =>  -- N=8 Hamming, weights=[8,35,91,124,124,91,35,8], sum=516≈512
                v_sum   := resize(
                    sr(0) * to_unsigned(8,   8) +
                    sr(1) * to_unsigned(35,  8) +
                    sr(2) * to_unsigned(91,  8) +
                    sr(3) * to_unsigned(124, 8) +
                    sr(4) * to_unsigned(124, 8) +
                    sr(5) * to_unsigned(91,  8) +
                    sr(6) * to_unsigned(35,  8) +
                    sr(7) * to_unsigned(8,   8), 20);
                avg_out <= std_logic_vector(v_sum(16 downto 9));  -- >>9

            when others =>
                avg_out <= std_logic_vector(sr(0));

        end case;
    end process;

end Behavioral;