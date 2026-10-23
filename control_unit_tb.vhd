LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY control_unit_tb IS
END control_unit_tb;

ARCHITECTURE behavior OF control_unit_tb IS
    COMPONENT control_unit
        PORT (
            OPCODE  : IN  std_logic_vector(3 downto 0);
            LOAD_EN : OUT std_logic;
            ALU_OP  : OUT std_logic_vector(1 downto 0);
            ACC_WR  : OUT std_logic
        );
    END COMPONENT;
    signal OPCODE  : std_logic_vector(3 downto 0) := "0000";
    signal LOAD_EN : std_logic;
    signal ALU_OP  : std_logic_vector(1 downto 0);
    signal ACC_WR  : std_logic;
BEGIN
    uut : control_unit
        PORT MAP (OPCODE => OPCODE, LOAD_EN => LOAD_EN, ALU_OP => ALU_OP, ACC_WR => ACC_WR);
    stim_proc : process
    begin
        -- NOP (0000)
        OPCODE <= "0000"; wait for 10 ns;
        assert LOAD_EN = '0' and ACC_WR = '0' report "FAIL: NOP" severity error;

        -- LDI (0001)
        OPCODE <= "0001"; wait for 10 ns;
        assert LOAD_EN = '1' and ACC_WR = '1' report "FAIL: LDI" severity error;
        -- ADD (0010)
        OPCODE <= "0010"; wait for 10 ns;
        assert LOAD_EN = '0' and ACC_WR = '1' and ALU_OP = "00" report "FAIL: ADD" severity error;

        -- XOR (0110)
        OPCODE <= "0110"; wait for 10 ns;
        assert LOAD_EN = '0' and ACC_WR = '1' and ALU_OP = "01" report "FAIL: XOR" severity error;
        -- NOT (0111)
        OPCODE <= "0111"; wait for 10 ns;
        assert LOAD_EN = '0' and ACC_WR = '1' and ALU_OP = "10" report "FAIL: NOT" severity error;

        -- SHL (1000)
        OPCODE <= "1000"; wait for 10 ns;
        assert LOAD_EN = '0' and ACC_WR = '1' and ALU_OP = "11" report "FAIL: SHL" severity error;
        -- Opcodes not in Set 2 must behave as NOP
        OPCODE <= "0011"; wait for 10 ns;
        assert LOAD_EN = '0' and ACC_WR = '0' report "FAIL: SUB should be NOP" severity error;
        OPCODE <= "0100"; wait for 10 ns;
		  
        assert LOAD_EN = '0' and ACC_WR = '0' report "FAIL: AND should be NOP" severity error;
        OPCODE <= "0101"; wait for 10 ns;
        assert LOAD_EN = '0' and ACC_WR = '0' report "FAIL: OR should be NOP" severity error;
        OPCODE <= "1001"; wait for 10 ns;
        assert LOAD_EN = '0' and ACC_WR = '0' report "FAIL: SHR should be NOP" severity error;
        OPCODE <= "1100"; wait for 10 ns;
        assert LOAD_EN = '0' and ACC_WR = '0' report "FAIL: JZ should be NOP" severity error;
        report "control_unit testbench completed." severity note;
        wait;
    end process;
END behavior;
		  