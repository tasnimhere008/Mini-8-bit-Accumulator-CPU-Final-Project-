library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity program_rom is
    Port (
        ADDRESS     : in  STD_LOGIC_VECTOR(3 downto 0);
        INSTRUCTION : out STD_LOGIC_VECTOR(11 downto 0)
    );
end program_rom;
architecture Behavioral of program_rom is
begin
    process(ADDRESS)
    begin
        case ADDRESS is
            when "0000" => INSTRUCTION <= x"155"; -- LDI 55
            when "0001" => INSTRUCTION <= x"6FF"; -- XOR FF
            when "0010" => INSTRUCTION <= x"700"; -- NOT
            when "0011" => INSTRUCTION <= x"800"; -- SHL
            when "0100" => INSTRUCTION <= x"256"; -- ADD 56
            when "0101" => INSTRUCTION <= x"681"; -- XOR 81
            when "0110" => INSTRUCTION <= x"800"; -- SHL
            when others => INSTRUCTION <= x"000"; -- NOP
        end case;
    end process;
end Behavioral;