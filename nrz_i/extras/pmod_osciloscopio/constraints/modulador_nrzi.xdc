## =========================================================
## Switches
## index 0 (mais à esquerda) = bit mais significativo
## index 15  (mais à direita)  = bit menos significativo
## =========================================================

set_property PACKAGE_PIN R2 [get_ports {entrada[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {entrada[0]}]

set_property PACKAGE_PIN T1 [get_ports {entrada[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {entrada[1]}]

set_property PACKAGE_PIN U1 [get_ports {entrada[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {entrada[2]}]

set_property PACKAGE_PIN W2 [get_ports {entrada[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {entrada[3]}]

set_property PACKAGE_PIN R3 [get_ports {entrada[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {entrada[4]}]

set_property PACKAGE_PIN T2 [get_ports {entrada[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {entrada[5]}]

set_property PACKAGE_PIN T3 [get_ports {entrada[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {entrada[6]}]

set_property PACKAGE_PIN V2 [get_ports {entrada[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {entrada[7]}]

set_property PACKAGE_PIN W13 [get_ports {entrada[8]}]
set_property IOSTANDARD LVCMOS33 [get_ports {entrada[8]}]

set_property PACKAGE_PIN W14 [get_ports {entrada[9]}]
set_property IOSTANDARD LVCMOS33 [get_ports {entrada[9]}]

set_property PACKAGE_PIN V15 [get_ports {entrada[10]}]
set_property IOSTANDARD LVCMOS33 [get_ports {entrada[10]}]

set_property PACKAGE_PIN W15 [get_ports {entrada[11]}]
set_property IOSTANDARD LVCMOS33 [get_ports {entrada[11]}]

set_property PACKAGE_PIN W17 [get_ports {entrada[12]}]
set_property IOSTANDARD LVCMOS33 [get_ports {entrada[12]}]

set_property PACKAGE_PIN W16 [get_ports {entrada[13]}]
set_property IOSTANDARD LVCMOS33 [get_ports {entrada[13]}]

set_property PACKAGE_PIN V16 [get_ports {entrada[14]}]
set_property IOSTANDARD LVCMOS33 [get_ports {entrada[14]}]

set_property PACKAGE_PIN V17 [get_ports {entrada[15]}]
set_property IOSTANDARD LVCMOS33 [get_ports {entrada[15]}]


## =========================================================
## Clock
## Não é necessário usar um switch para controlá-lo.
## Aqui só define o período de 100ns (frequência de 10MHz) para o clock.
## =========================================================

set_property PACKAGE_PIN W5 [get_ports {clock}]
set_property IOSTANDARD LVCMOS33 [get_ports {clock}]
create_clock -period 100.000 -name sys_clk [get_ports {clock}]


## =========================================================
## Saída Osciloscópio (porta "saida_analog")
## indica que o sinal saírá no pino analógico "J1"
## =========================================================

set_property PACKAGE_PIN J1 [get_ports {saida_analog}]
set_property IOSTANDARD LVCMOS33 [get_ports {saida_analog}]