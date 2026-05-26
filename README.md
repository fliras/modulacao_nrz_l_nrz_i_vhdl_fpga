# Modulação Digital em VHDL
Trabalho da disciplina de Comunicação de Dados - Sistemas
Reconfiguraveis, ministrada pelo Dr. Vinícius S. Borges, no 6º semestre de Engª da computação.

## Integrantes
- ANDRÉ MENDES GARCIA - RM081230012 
- FELIPE LIRA SILVA - RM081230006 
- PEDRO HENRIQUE SIMÕES - RM081230022 
- VINICIUS YAMAGUTI AUGUSTO - RM081220040 

## Descrição
Este trabalho implementa, em VHDL, dois sistemas de modulação
digital: Unipolar NRZ-L e Unipolar NRZ-I. O código foi simulado
no Vivado Simulator e implementado na placa Basys3 xc7a35tcpg236-1.

## Estrutura do repositório
```
modulacao_vhdl/
|-- nrz_l/              Projeto da modulação NRZ-L (auto-contido)
|-- nrz_i/              Projeto da modulação NRZ-I (auto-contido)
`-- relatorio_final/    Relatório técnico consolidado e vídeo demo
```

Cada projeto possui sua própria pasta `docs/` com tutoriais e
documentação técnica, e uma pasta `extras/` com as atividades
opcionais (saída PMOD e saída VGA).

## Projetos
- [Modulação NRZ-L](./nrz_l/)- bit representado pelo nível do pulso
- [Modulação NRZ-I](./nrz_i/)- bit representado pela transição do pulso

## Relatório
- [Relatório técnico final](./relatorio_final/relatorio.pdf)
- [Vídeo de demonstração](https://youtu.be/amw9NHEn2wY)

## Ferramentas utilizadas
- Vivado 2025.2
- Placa Basys3 xc7a35tcpg236-1
- Osciloscópio (apenas para o extra do PMOD)

## Como começar
Recomendamos iniciar pelo projeto NRZ-L.
Acesse a pasta [nrz_l/](./nrz_l/) e siga o README local.