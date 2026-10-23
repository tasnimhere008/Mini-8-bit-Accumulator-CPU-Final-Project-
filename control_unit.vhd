library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity control_unit is
    Port (
        OPCODE   : in  STD_LOGIC_VECTOR(3 downto 0);
        LOAD_EN  : out STD_LOGIC;                      -- LDI
        ALU_OP   : out STD_LOGIC_VECTOR(1 downto 0);   -- 00 ADD, 01 XOR, 10 NOT, 11 SHL
        ACC_WR   : out STD_LOGIC                       -- write ACC this cycle
    );
end control_unit;
architecture Behavioral of control_unit is
begin
    process(OPCODE)
    begin
        LOAD_EN <= '0';
        ALU_OP  <= "00";
        ACC_WR  <= '0';
        case OPCODE is
            when "0001" => LOAD_EN <= '1'; ACC_WR <= '1';   -- LDI
            when "0010" => ALU_OP <= "00"; ACC_WR <= '1';   -- ADD
            when "0110" => ALU_OP <= "01"; ACC_WR <= '1';   -- XOR
            when "0111" => ALU_OP <= "10"; ACC_WR <= '1';   -- NOT
            when "1000" => ALU_OP <= "11"; ACC_WR <= '1';   -- SHL
            when others => null;                            -- NOP
        end case;
    end process;
end Behavioral;