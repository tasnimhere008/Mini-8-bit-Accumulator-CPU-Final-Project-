library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity alu_8bit is
    Port (
        A      : in  STD_LOGIC_VECTOR(7 downto 0);   -- ACC
        B      : in  STD_LOGIC_VECTOR(7 downto 0);   -- operand
        OP     : in  STD_LOGIC_VECTOR(1 downto 0);   -- 00 ADD, 01 XOR, 10 NOT, 11 SHL
        RESULT : out STD_LOGIC_VECTOR(7 downto 0)
    );
end alu_8bit;
architecture Structural of alu_8bit is

    component full_adder_8bit
        Port (
            A    : in  STD_LOGIC_VECTOR(7 downto 0);
            B    : in  STD_LOGIC_VECTOR(7 downto 0);
            CIN  : in  STD_LOGIC;
            SUM  : out STD_LOGIC_VECTOR(7 downto 0);
            COUT : out STD_LOGIC
        );
    end component;
    component xor_gate
        Port ( A : in STD_LOGIC; B : in STD_LOGIC; Y : out STD_LOGIC );
    end component;
    component not_gate
        Port ( A : in STD_LOGIC; Y : out STD_LOGIC );
    end component;

    signal ADD_R, XOR_R, NOT_R, SHL_R : STD_LOGIC_VECTOR(7 downto 0);
    signal CARRY_UNUSED : STD_LOGIC;
begin
    ADDER: full_adder_8bit
        port map (A => A, B => B, CIN => '0', SUM => ADD_R, COUT => CARRY_UNUSED);
    GEN_LOGIC: for i in 0 to 7 generate
        X: xor_gate port map (A => A(i), B => B(i), Y => XOR_R(i));
        N: not_gate port map (A => A(i), Y => NOT_R(i));
    end generate;

    SHL_R <= A(6 downto 0) & '0';

    with OP select
        RESULT <= ADD_R when "00",
                  XOR_R when "01",
                  NOT_R when "10",
                  SHL_R when others;
end Structural;