LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY program_counter_tb IS
END program_counter_tb;

ARCHITECTURE behavior OF program_counter_tb IS
    COMPONENT program_counter
        PORT (
            CLK   : IN  std_logic;
            RESET : IN  std_logic;
            PC    : OUT std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    signal CLK   : std_logic := '0';
    signal RESET : std_logic := '0';
    signal PC    : std_logic_vector(3 downto 0);

    constant CLK_PERIOD : time := 20 ns;
BEGIN
    uut : program_counter PORT MAP (CLK => CLK, RESET => RESET, PC => PC);

    clk_process : process
    begin
        CLK <= '0'; wait for CLK_PERIOD / 2;
        CLK <= '1'; wait for CLK_PERIOD / 2;
    end process;
    stim_proc : process
    begin
        -- Apply synchronous reset for one rising edge
        RESET <= '1';
        wait for CLK_PERIOD; wait for 1 ns;
        assert PC = "0000" report "FAIL: PC after reset" severity error;
        -- Release reset: PC must count 1, 2, 3, ... 15, then wrap to 0
        RESET <= '0';
        for i in 1 to 16 loop
            wait for CLK_PERIOD;
            assert PC = std_logic_vector(to_unsigned(i mod 16, 4))
                report "FAIL: PC count at step " & integer'image(i) severity error;
        end loop;
        -- Count a few more, then reset in the middle of counting
        wait for CLK_PERIOD;
        wait for CLK_PERIOD;
        wait for CLK_PERIOD;
        assert PC = "0011" report "FAIL: PC should be 3 before mid-run reset" severity error;

        RESET <= '1';
        wait for CLK_PERIOD;
        assert PC = "0000" report "FAIL: PC after mid-run reset" severity error;
        -- Reset still held: PC must stay at 0
        wait for CLK_PERIOD;
        assert PC = "0000" report "FAIL: PC must stay 0 while RESET = 1" severity error;

        -- Release again: counting restarts from 1
        RESET <= '0';
        wait for CLK_PERIOD;
        assert PC = "0001" report "FAIL: PC after reset release" severity error;
        report "program_counter testbench completed." severity note;
        wait;
    end process;
END behavior;