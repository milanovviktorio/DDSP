library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity dip_sw is
    Port (
        dip_sw0      : in  STD_LOGIC;
        dip_sw1      : in  STD_LOGIC;
        dip_sw2      : in  STD_LOGIC;
        dip_sw3      : in  STD_LOGIC;
        dip_sw4      : in  STD_LOGIC;
        dip_sw5      : in  STD_LOGIC;
        dip_sw6      : in  STD_LOGIC;
        dip_sw7      : in  STD_LOGIC;
        clk          : in  STD_LOGIC;
        switches_freq : out STD_LOGIC_VECTOR(3 downto 0);  -- SW0-3 → freq control
        switches_avg  : out STD_LOGIC_VECTOR(3 downto 0)   -- SW4-7 → AVG window
    );
end dip_sw;

architecture Behavioral of dip_sw is
begin
    process (clk)
    begin
        if rising_edge(clk) then
            switches_freq(0) <= dip_sw0;
            switches_freq(1) <= dip_sw1;
            switches_freq(2) <= dip_sw2;
            switches_freq(3) <= dip_sw3;
            switches_avg(0)  <= dip_sw4;
            switches_avg(1)  <= dip_sw5;
            switches_avg(2)  <= dip_sw6;
            switches_avg(3)  <= dip_sw7;
        end if;
    end process;
end Behavioral;