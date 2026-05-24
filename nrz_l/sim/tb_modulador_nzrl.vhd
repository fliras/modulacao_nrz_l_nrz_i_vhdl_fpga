library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_modulador_nrzl is
end entity;

architecture sim of tb_modulador_nrzl is

    constant NUM_BITS     : integer := 16; -- número de bits a serem transmitidos
    constant PERIODO_CLOCK : time := 100 ns; -- garante clock a 10MHz
    constant PERIODO_BIT : time := 200 ns; -- define o período de cada bit para 200ns.
    constant CICLOS_POR_BIT_CALC : integer := PERIODO_BIT / PERIODO_CLOCK; -- calcula o número de ciclos de clock por bit com base no período definido.

    signal clock     : std_logic := '0'; -- sinla para emular o sinal de clock
    signal saida_testbench  : std_logic; -- sinal para observar a saída do testbench no waveform
    signal saida_analog: std_logic;      -- sinal para observar a saída analógica no osciloscópio (irrelevante no testbench)
    signal entrada : std_logic_vector(0 to NUM_BITS - 1) := "1011001110001111"; -- vetor de bits a ser transmitido, pode ser modificado para testar diferentes sequências

begin

    -- instanciação do módulo a ser testado, mapeando os sinais e parâmetros do testbench para as portas e generics do módulo.
    uut: entity work.modulador_nrzl
        generic map (
            NUM_BITS => NUM_BITS,
            CICLOS_POR_BIT => CICLOS_POR_BIT_CALC 
        )
        port map (
            clock => clock,
            saida_testbench => saida_testbench,
            saida_analog => saida_analog,
            entrada => entrada
        );

    -- Definição do Clock
    p_clk : process
    begin
        clock <= '0'; wait for PERIODO_CLOCK / 2;
        clock <= '1'; wait for PERIODO_CLOCK / 2;
    end process;

end architecture;