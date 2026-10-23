library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity instruction_decoder is
    Port (
        INSTRUCTION : in  STD_LOGIC_VECTOR(11 downto 0);
        OPCODE      : out STD_LOGIC_VECTOR(3 downto 0);
        OPERAND     : out STD_LOGIC_VECTOR(7 downto 0)
    );
end instruction_decoder;
architecture Behavioral of instruction_decoder is
begin
    OPCODE  <= INSTRUCTION(11 downto 8);
    OPERAND <= INSTRUCTION(7 downto 0);
end Behavioral;