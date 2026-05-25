library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_NRZI is
end entity;

architecture Behavioral of tb_NRZI is

    -- o PERIODO_CLOCK a 100ns garante uma frequência de de 10MHz
    constant PERIODO_CLOCK: time := 100 ns;
    constant PERIODO_BIT: time := 200 ns; -- cada bit dura 200ns
    constant N_BITS: integer := 16; -- número de bits a serem transmitidos

    signal clock: std_logic := '0'; -- sinal de clock inicializado em '0'
    signal entrada: std_logic_vector(0 to N_BITS-1) := "1011001110001111"; -- dados a serem transmitidos
    signal saida_testbench : std_logic; -- sinal de saída para visualização no testbench

begin

    -- definição do clock
    clock <= not clock after PERIODO_CLOCK / 2;

    -- mapeamento dos generics e ports do UUT (Unit Under Test)
    UUT: entity work.NRZI_Source
        generic map (
            CICLOS_POR_BIT => PERIODO_BIT /PERIODO_CLOCK,
            N_BITS => N_BITS
        )
        port map (
            clock => clock,
            entrada => entrada,
            saida_testbench => saida_testbench
        );

end Behavioral;