# Modulação NRZ-I
Implementação em VHDL da modulação Unipolar NRZ-I, em que o bit é representado pela inversão
ou manutenção do nível do pulso durante todo o intervalo do mesmo
(1 = inverte o nível, 0 = mantém o nível anterior).

## Estrutura desta pasta
```
nrz_i/
|-- src/                          Código-fonte VHDL do circuito
|-- sim/                          Testbench para simulação
|-- constraints/                  Mapeamento dos pinos da FPGA (.xdc)
|-- vivado_project/               Projeto Vivado pronto para abrir
|-- docs/                         Tutoriais e documentação técnica
`-- extras/                       Atividades opcionais (PMOD e VGA)
```

## Arquivos de código
- `src/NRZI_Source.vhd` - código-fonte do circuito principal
- `sim/tb_NRZI.vhd` - testbench para simulação
- `constraints/modulador_nrzi.xdc` - mapeamento dos pinos da FPGA


## Documentação
- [Tutorial de simulação](./docs/tutorial_simulacao.pdf) - como simular no Vivado passo a passo
- [Tutorial de gravação na placa](./docs/tutorial_placa.pdf) - como sintetizar, gerar bitstream e gravar na FPGA
- [Documentação técnica](./docs/documentacao_projeto.pdf) - diagrama de blocos, descrição das portas e funcionamento


## Por onde começar

Para uma **simulação rápida** (apenas ver funcionando):

1. Abrir o Vivado e carregar `vivado_project/NRZI.xpr` (extraia o zip do projeto antes)
2. Clicar em `Run Simulation`-> `Run Behavioral Simulation`

Para **reproduzir o projeto do zero**, siga esta ordem:
1. **Entenda o circuito** lendo a
[documentação técnica](./docs/documentacao_projeto.pdf)
2. **Simule no Vivado** seguindo o
[tutorial de simulação](./docs/tutorial_simulacao.pdf)
3. **Grave na placa** seguindo o
[tutorial de gravação](./docs/tutorial_placa.pdf)