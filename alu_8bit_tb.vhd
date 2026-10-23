LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY alu_8bit_tb IS
END alu_8bit_tb;

ARCHITECTURE behavior OF alu_8bit_tb IS
    COMPONENT alu_8bit
        PORT (
            A      : IN  std_logic_vector(7 downto 0);
            B      : IN  std_logic_vector(7 downto 0);
            OP     : IN  std_logic_vector(1 downto 0);
            RESULT : OUT std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    signal A      : std_logic_vector(7 downto 0) := (others => '0');
    signal B      : std_logic_vector(7 downto 0) := (others => '0');
    signal OP     : std_logic_vector(1 downto 0) := "00";
    signal RESULT : std_logic_vector(7 downto 0);
BEGIN
    uut : alu_8bit PORT MAP (A => A, B => B, OP => OP, RESULT => RESULT);
    stim_proc : process
    begin
        -- ADD (OP = 00)
        OP <= "00";
        A <= x"AA"; B <= x"56"; wait for 10 ns;
        assert RESULT = x"00" report "FAIL: ADD AA + 56 (carry discarded)" severity error;
        A <= x"00"; B <= x"11"; wait for 10 ns;
        assert RESULT = x"11" report "FAIL: ADD 00 + 11" severity error;
        A <= x"FF"; B <= x"01"; wait for 10 ns;
        assert RESULT = x"00" report "FAIL: ADD FF + 01" severity error;
        -- XOR (OP = 01)
        OP <= "01";
        A <= x"55"; B <= x"FF"; wait for 10 ns;
        assert RESULT = x"AA" report "FAIL: XOR 55 ^ FF" severity error;
        A <= x"00"; B <= x"81"; wait for 10 ns;
        assert RESULT = x"81" report "FAIL: XOR 00 ^ 81" severity error;
        A <= x"F0"; B <= x"F0"; wait for 10 ns;
        assert RESULT = x"00" report "FAIL: XOR F0 ^ F0" severity error;
        -- NOT (OP = 10), operand ignored
        OP <= "10";
        A <= x"AA"; B <= x"FF"; wait for 10 ns;
        assert RESULT = x"55" report "FAIL: NOT AA" severity error;
        A <= x"00"; B <= x"00"; wait for 10 ns;
        assert RESULT = x"FF" report "FAIL: NOT 00" severity error;
        A <= x"FF"; B <= x"12"; wait for 10 ns;
        assert RESULT = x"00" report "FAIL: NOT FF" severity error;
        -- SHL (OP = 11), operand ignored
        OP <= "11";
        A <= x"55"; B <= x"FF"; wait for 10 ns;
        assert RESULT = x"AA" report "FAIL: SHL 55" severity error;
        A <= x"81"; B <= x"00"; wait for 10 ns;
        assert RESULT = x"02" report "FAIL: SHL 81" severity error;
        A <= x"80"; B <= x"00"; wait for 10 ns;
        assert RESULT = x"00" report "FAIL: SHL 80" severity error;
        report "alu_8bit testbench completed." severity note;
        wait;
    end process;
END behavior;