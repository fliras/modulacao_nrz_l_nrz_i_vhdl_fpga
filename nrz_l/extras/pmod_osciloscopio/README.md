# Modulação NRZ-L via PMOD (Osciloscópio)
Implementação em VHDL da modulação Unipolar NRZ-L, com o pulso de saída sendo visualizado com o auxílio de um osciloscópio conectado ao circuito.

## Estrutura desta pasta
```
extras/pmod_osciloscopio/
|-- src/                          Código-fonte VHDL do circuito
|-- constraints/                  Mapeamento dos pinos da FPGA (.xdc)
|-- docs/                         Tutoriais e documentação técnica
```

## Arquivos de código
- `src/modulador_nrzl.vhd` - código-fonte do circuito principal
- `constraints/modulador_nrzl.xdc` - mapeamento dos pinos da FPGA


## Documentação
- [Tutorial de gravação na placa e configuração do osciloscópio](./docs/tutorial.pdf) - Siga este tutorial para visualizar a modulação no osciloscópio.