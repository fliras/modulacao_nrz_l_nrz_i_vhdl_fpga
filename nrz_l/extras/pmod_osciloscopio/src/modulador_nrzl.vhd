library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity modulador_nrzl is
    generic (
        NUM_BITS: integer := 16; -- número de bits a serem transmitidos
        CICLOS_POR_BIT: integer := 2000  -- número de ciclos de clock por bit
    );
    port (
        clock: in  std_logic; -- porta que representa o sinal de clock
        entrada: in  std_logic_vector(0 to NUM_BITS-1); -- input do testbench ou dos switches da placa física
        saida_analog: out std_logic -- output no osciloscópio conectado à placa física
        
    );
end entity;

architecture Behavioral of modulador_nrzl is
    -- indicação do bit atual sendo transmitido.
    signal bit_index   : integer range 0 to NUM_BITS := 0;
    
    -- contador que controla a duração de cada bit em ciclos de clock.
    signal contador_clock : integer range 0 to CICLOS_POR_BIT := 0;
begin

    process(clock)
    begin
        if rising_edge(clock) then -- se houver uma borda de subida no clock, o processo é executado
            if bit_index < NUM_BITS then -- verifica se ainda há bits para transmitir
                saida_analog <= entrada(bit_index); -- modifica o sinal no osciloscópio;

                if contador_clock < CICLOS_POR_BIT - 1 then -- verifica se ainda não terminou o período do bit atual.
                    contador_clock <= contador_clock + 1;
                else -- se terminou, reinicia o contador e passa para o próximo bit.
                    contador_clock <= 0;
                    bit_index   <= bit_index + 1;
                end if;

            else -- se a sequência foi transmitida, reinicia tudo para o próximo ciclo de transmissão.
                saida_analog <= '0';
                bit_index <= 0;
                contador_clock <= CICLOS_POR_BIT - 1; -- põe o contador do clock no final para reiniciar pulso corretamente
            end if;

        end if;
    end process;

end Behavioral;