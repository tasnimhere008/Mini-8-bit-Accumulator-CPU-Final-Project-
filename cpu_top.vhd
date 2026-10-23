library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity cpu_top is
    Port (
        CLK   : in  STD_LOGIC;
        RESET : in  STD_LOGIC;
        Q     : out STD_LOGIC_VECTOR(7 downto 0);
        Z     : out STD_LOGIC;
        PC    : out STD_LOGIC_VECTOR(3 downto 0)
    );
end cpu_top;
architecture Structural of cpu_top is

    signal PC_VALUE    : STD_LOGIC_VECTOR(3 downto 0);
    signal INSTRUCTION : STD_LOGIC_VECTOR(11 downto 0);
    signal OPCODE      : STD_LOGIC_VECTOR(3 downto 0);
    signal OPERAND     : STD_LOGIC_VECTOR(7 downto 0);
    signal LOAD_EN     : STD_LOGIC;
    signal ALU_OP      : STD_LOGIC_VECTOR(1 downto 0);
    signal ACC_WR      : STD_LOGIC;
    signal ALU_RESULT  : STD_LOGIC_VECTOR(7 downto 0);
    signal ACC_NEXT    : STD_LOGIC_VECTOR(7 downto 0);
    signal ACC_VALUE   : STD_LOGIC_VECTOR(7 downto 0);
    signal Z_VALUE     : STD_LOGIC;
begin
    ROM_UNIT : entity work.program_rom
        port map (ADDRESS => PC_VALUE, INSTRUCTION => INSTRUCTION);

    DECODER_UNIT : entity work.instruction_decoder
        port map (INSTRUCTION => INSTRUCTION, OPCODE => OPCODE, OPERAND => OPERAND);

    CONTROL_UNIT : entity work.control_unit
        port map (OPCODE => OPCODE, LOAD_EN => LOAD_EN, ALU_OP => ALU_OP, ACC_WR => ACC_WR);

    ALU_UNIT : entity work.alu_8bit
        port map (A => ACC_VALUE, B => OPERAND, OP => ALU_OP, RESULT => ALU_RESULT);
    -- LDI -> operand, ADD/XOR/NOT/SHL -> ALU result, NOP -> hold
    ACC_NEXT <= OPERAND    when LOAD_EN = '1' else
                ALU_RESULT when ACC_WR  = '1' else
                ACC_VALUE;

    ACC_UNIT : entity work.accumulator
        port map (D => ACC_NEXT, CLK => CLK, RESET => RESET, Q => ACC_VALUE);
    ZERO_UNIT : entity work.zero_flag
        port map (A => ACC_VALUE, ZERO => Z_VALUE);

    PC_UNIT : entity work.program_counter
        port map (CLK => CLK, RESET => RESET, PC => PC_VALUE);

    Q  <= ACC_VALUE;
    Z  <= Z_VALUE;
    PC <= PC_VALUE;
end Structural;