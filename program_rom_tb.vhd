LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY program_rom_tb IS
END program_rom_tb;

ARCHITECTURE behavior OF program_rom_tb IS
    COMPONENT program_rom
        PORT (
            ADDRESS     : IN  std_logic_vector(3 downto 0);
            INSTRUCTION : OUT std_logic_vector(11 downto 0)
        );
    END COMPONENT;
    signal ADDRESS     : std_logic_vector(3 downto 0) := "0000";
    signal INSTRUCTION : std_logic_vector(11 downto 0);
BEGIN
    uut : program_rom PORT MAP (ADDRESS => ADDRESS, INSTRUCTION => INSTRUCTION);

    stim_proc : process
    begin
        ADDRESS <= "0000"; wait for 10 ns;
        assert INSTRUCTION = x"155" report "FAIL: ROM[0] LDI 55" severity error;
        ADDRESS <= "0001"; wait for 10 ns;
        assert INSTRUCTION = x"6FF" report "FAIL: ROM[1] XOR FF" severity error;

        ADDRESS <= "0010"; wait for 10 ns;
        assert INSTRUCTION = x"700" report "FAIL: ROM[2] NOT" severity error;

        ADDRESS <= "0011"; wait for 10 ns;
        assert INSTRUCTION = x"800" report "FAIL: ROM[3] SHL" severity error;
        ADDRESS <= "0100"; wait for 10 ns;
        assert INSTRUCTION = x"256" report "FAIL: ROM[4] ADD 56" severity error;

        ADDRESS <= "0101"; wait for 10 ns;
        assert INSTRUCTION = x"681" report "FAIL: ROM[5] XOR 81" severity error;

        ADDRESS <= "0110"; wait for 10 ns;
        assert INSTRUCTION = x"800" report "FAIL: ROM[6] SHL" severity error;
        -- Unused locations must be NOP (0x000)
        ADDRESS <= "0111"; wait for 10 ns;
        assert INSTRUCTION = x"000" report "FAIL: ROM[7] not NOP" severity error;

        ADDRESS <= "1000"; wait for 10 ns;
        assert INSTRUCTION = x"000" report "FAIL: ROM[8] not NOP" severity error;
        ADDRESS <= "1111"; wait for 10 ns;
        assert INSTRUCTION = x"000" report "FAIL: ROM[15] not NOP" severity error;

        report "program_rom testbench completed." severity note;
        wait;
    end process;
END behavior;