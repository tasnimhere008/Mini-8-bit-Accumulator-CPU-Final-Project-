LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY cpu_top_tb IS
END cpu_top_tb;

ARCHITECTURE behavior OF cpu_top_tb IS

    COMPONENT cpu_top
        PORT (
            CLK   : IN  std_logic;
            RESET : IN  std_logic;
            Q     : OUT std_logic_vector(7 downto 0);
            Z     : OUT std_logic;
            PC    : OUT std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    -- Inputs
    signal CLK   : std_logic := '0';
    signal RESET : std_logic := '0';

    -- Outputs
    signal Q  : std_logic_vector(7 downto 0);
    signal Z  : std_logic;
    signal PC : std_logic_vector(3 downto 0);

    constant CLK_PERIOD : time := 20 ns;

BEGIN
    -- Instantiate the CPU
    uut : cpu_top
        PORT MAP (
            CLK   => CLK,
            RESET => RESET,
            Q     => Q,
            Z     => Z,
            PC    => PC
        );

    -- Clock generation: 20 ns period
    clk_process : process
    begin
        CLK <= '0';
        wait for CLK_PERIOD / 2;
        CLK <= '1';
        wait for CLK_PERIOD / 2;
    end process;
    -- Set 9 test sequence
     stim_proc : process
    begin
        RESET <= '1';
        wait for CLK_PERIOD; wait for 1 ns;
        assert Q = x"00" and Z = '1' and PC = "0000" report "FAIL: Reset state" severity error;

        RESET <= '0';
        wait for CLK_PERIOD; wait for 1 ns;   -- LDI 0x55
        assert Q = x"55" and Z = '0' and PC = "0001" report "FAIL: LDI 55" severity error;
        wait for CLK_PERIOD;                  -- XOR 0xFF
        assert Q = x"AA" and Z = '0' and PC = "0010" report "FAIL: XOR FF" severity error;

        wait for CLK_PERIOD;                  -- NOT
        assert Q = x"55" and Z = '0' and PC = "0011" report "FAIL: NOT" severity error;
        wait for CLK_PERIOD;                  -- SHL
        assert Q = x"AA" and Z = '0' and PC = "0100" report "FAIL: SHL (addr 3)" severity error;

        wait for CLK_PERIOD;                  -- ADD 0x56
        assert Q = x"00" and Z = '1' and PC = "0101" report "FAIL: ADD 56" severity error;
        wait for CLK_PERIOD;                  -- XOR 0x81
        assert Q = x"81" and Z = '0' and PC = "0110" report "FAIL: XOR 81" severity error;

        wait for CLK_PERIOD;                  -- SHL
        assert Q = x"02" and Z = '0' and PC = "0111" report "FAIL: SHL (addr 6)" severity error;
        report "Set 2 CPU testbench completed." severity note;
        wait;
    end process;

END behavior;