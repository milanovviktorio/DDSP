library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ROM_triangle is
    Port (
        address  : in  STD_LOGIC_VECTOR(4 downto 0);
        data_out : out STD_LOGIC_VECTOR(7 downto 0)
    );
end ROM_triangle;

architecture Behavioral of ROM_triangle is
    type rom_type is array (0 to 31) of std_logic_vector(7 downto 0);
    constant rom : rom_type := (
        -- Ramp up 0→255 then ramp down 255→0
        x"00", x"10", x"20", x"30", x"40", x"50", x"60", x"70",
        x"80", x"90", x"A0", x"B0", x"C0", x"D0", x"E0", x"FF",
        x"FF", x"E0", x"D0", x"C0", x"B0", x"A0", x"90", x"80",
        x"70", x"60", x"50", x"40", x"30", x"20", x"10", x"00"
    );
begin
    process(address)
    begin
        data_out <= rom(to_integer(unsigned(address)));
    end process;
end Behavioral;