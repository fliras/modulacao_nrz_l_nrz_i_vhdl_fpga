# Modulação NRZ-I via PMOD (Osciloscópio)
Implementação em VHDL da modulação Unipolar NRZ-I, com o pulso de saída sendo visualizado com o auxílio de um osciloscópio conectado ao circuito.

## Estrutura desta pasta
```
nrz_i/
|-- src/                          Código-fonte VHDL do circuito
|-- constraints/                  Mapeamento dos pinos da FPGA (.xdc)
|-- docs/                         Tutoriais e documentação técnica
```

## Arquivos de código
- `src/NRZI_Source.vhd` - código-fonte do circuito principal
- `constraints/modulador_nrzi.xdc` - mapeamento dos pinos da FPGA


## Documentação
- [Tutorial de gravação na placa e configuração do osciloscópio](./docs/tutorial.pdf) - Siga este tutorial para visualizar a modulação no osciloscópio.