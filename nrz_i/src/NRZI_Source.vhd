library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity NRZI_Source is
    generic (
        CICLOS_POR_BIT : integer := 2000;   -- ciclos de clock por bit
        N_BITS         : integer := 16 -- número de bits a serem transmitidos
    );
    port (
        clock      : in  std_logic; -- sinal de clock
        entrada    : in  std_logic_vector(0 to N_BITS-1); -- vetor que armazena os dados de entrada
        saida_testbench: out std_logic; -- output para o testbench
        saida_leds : out std_logic_vector(0 to N_BITS-1) -- output para os LEDs do circuito físico
    );
end entity;

architecture Behavioral of NRZI_Source is
    -- sinal que indica o índice do bit atual sendo transmitido
    signal bit_index       : integer range 0 to N_BITS := 0;
    
    -- contador que controla a duração de cada bit em ciclos de clock;
    signal contador_clock  : integer range 0 to CICLOS_POR_BIT := CICLOS_POR_BIT - 1;
    
    -- sinal que representa o nivel do sinal NRZI em um dado momento
    signal nivel           : std_logic := '0';
    
    -- registrador interno para armazenar o estado dos LEDs, refletindo o sinal NRZI
    signal leds_reg        : std_logic_vector(0 to N_BITS-1) := (others => '0');

begin

    -- Conecta o registrador interno à saída
    saida_leds <= leds_reg;

    process(clock)
    begin
        if rising_edge(clock) then -- apenas se estiver na borda de subida do clock...

            if bit_index < N_BITS then -- caso ainda haja bits para transmitir...

                if contador_clock < CICLOS_POR_BIT - 1 then -- se o período do bit ainda não terminou...
                    contador_clock <= contador_clock + 1;
                else
                    -- Transiciona o sinal se o bit de entrada é '1'
                    if entrada(bit_index) = '1' then
                        nivel <= not nivel;
                        leds_reg(bit_index) <= not nivel;  -- atualiza o valor após a transição
                    else
                        leds_reg(bit_index) <= nivel;      -- mantém o nível atual
                    end if;
                    
                    -- atualiza o testbench e reinicia o contador para o próximo bit
                    saida_testbench <= nivel;
                    contador_clock <= 0;
                    bit_index <= bit_index + 1;
                end if;

            else -- se a sequência de bits já foi transmitida, reinicia tudo para o próximo ciclo de transmissão.
                bit_index      <= 0;
                contador_clock <= CICLOS_POR_BIT - 1;
                nivel          <= '0';
                leds_reg       <= (others => '0');
            end if;

        end if;
    end process;

end Behavioral;