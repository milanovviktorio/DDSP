library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity testnDiv is
end testnDiv;

architecture Behavioral of testnDiv is

    component control
        Generic (N : integer := 256);
        Port (
            clkin  : in  STD_LOGIC;
            clkout : out STD_LOGIC;
            reset    : in  STD_LOGIC;
            divide_by : in  STD_LOGIC_VECTOR(7 downto 0);
            addr_out  : out STD_LOGIC_VECTOR(4 downto 0)
        );
    end component;

    signal clkin  : STD_LOGIC := '0';
    signal reset    : STD_LOGIC := '1';
    signal clkout : STD_LOGIC;
    signal divide_by : STD_LOGIC_VECTOR(7 downto 0);
    signal addr_out  : STD_LOGIC_VECTOR(4 downto 0);

    constant clk_period : time := 20 ns;

begin

    -- Instantiate DUT
    uut: control
        generic map (
            N => 256
        )
        port map (
            clkin  => clkin,
            reset    => reset,
            clkout => clkout,
            divide_by => divide_by,
            addr_out => addr_out
        );

    -- Clock generation
    clk_process : process
    begin
        while true loop
            clkin <= '0';
            wait for clk_period / 2;
            clkin <= '1';
            wait for clk_period / 2;
        end loop;
    end process;

    -- Stimulus
    stim_proc : process
    begin
        -- Hold reset
        
        wait for 200 ns;
        reset <= '0';
        divide_by <= x"08";
        wait for 10 ms;
    end process;

end Behavioral;