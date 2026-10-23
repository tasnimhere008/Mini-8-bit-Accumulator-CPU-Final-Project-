LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY instruction_decoder_tb IS
END instruction_decoder_tb;

ARCHITECTURE behavior OF instruction_decoder_tb IS
    COMPONENT instruction_decoder
        PORT (
            INSTRUCTION : IN  std_logic_vector(11 downto 0);
            OPCODE      : OUT std_logic_vector(3 downto 0);
            OPERAND     : OUT std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    signal INSTRUCTION : std_logic_vector(11 downto 0) := (others => '0');
    signal OPCODE      : std_logic_vector(3 downto 0);
    signal OPERAND     : std_logic_vector(7 downto 0);
BEGIN
    uut : instruction_decoder
        PORT MAP (INSTRUCTION => INSTRUCTION, OPCODE => OPCODE, OPERAND => OPERAND);

    stim_proc : process
    begin
        INSTRUCTION <= x"155"; wait for 10 ns;   -- LDI 55
        assert OPCODE = "0001" and OPERAND = x"55" report "FAIL: LDI 55" severity error;
        INSTRUCTION <= x"256"; wait for 10 ns;   -- ADD 56
        assert OPCODE = "0010" and OPERAND = x"56" report "FAIL: ADD 56" severity error;

        INSTRUCTION <= x"6FF"; wait for 10 ns;   -- XOR FF
        assert OPCODE = "0110" and OPERAND = x"FF" report "FAIL: XOR FF" severity error;

        INSTRUCTION <= x"681"; wait for 10 ns;   -- XOR 81
        assert OPCODE = "0110" and OPERAND = x"81" report "FAIL: XOR 81" severity error;
        INSTRUCTION <= x"700"; wait for 10 ns;   -- NOT
        assert OPCODE = "0111" and OPERAND = x"00" report "FAIL: NOT" severity error;

        INSTRUCTION <= x"800"; wait for 10 ns;   -- SHL
        assert OPCODE = "1000" and OPERAND = x"00" report "FAIL: SHL" severity error;
        INSTRUCTION <= x"000"; wait for 10 ns;   -- NOP
        assert OPCODE = "0000" and OPERAND = x"00" report "FAIL: NOP" severity error;

        report "instruction_decoder testbench completed." severity note;
        wait;
    end process;
END behavior;