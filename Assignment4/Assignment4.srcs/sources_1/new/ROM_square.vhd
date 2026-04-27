library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ROM_square is
    Port (
        address  : in  STD_LOGIC_VECTOR(4 downto 0);
        data_out : out STD_LOGIC_VECTOR(7 downto 0)
    );
end ROM_square;

architecture Behavioral of ROM_square is
    type rom_type is array (0 to 31) of std_logic_vector(7 downto 0);
    constant rom : rom_type := (
        -- High for first 16 samples, low for last 16
        x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF",
        x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF", x"FF",
        x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00",
        x"00", x"00", x"00", x"00", x"00", x"00", x"00", x"00"
    );
begin
    process(address)
    begin
        data_out <= rom(to_integer(unsigned(address)));
    end process;
end Behavioral;