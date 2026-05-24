## =========================================================
## Switches (vector "entrada")
## index 15 (mais à direita) = bit menos significativo
## index 0  (mais à esquerda)  = bit mais significativo
## =========================================================

set_property PACKAGE_PIN V17 [get_ports {entrada[15]}]
set_property IOSTANDARD LVCMOS33 [get_ports {entrada[15]}]

set_property PACKAGE_PIN V16 [get_ports {entrada[14]}]
set_property IOSTANDARD LVCMOS33 [get_ports {entrada[14]}]

set_property PACKAGE_PIN W16 [get_ports {entrada[13]}]
set_property IOSTANDARD LVCMOS33 [get_ports {entrada[13]}]

set_property PACKAGE_PIN W17 [get_ports {entrada[12]}]
set_property IOSTANDARD LVCMOS33 [get_ports {entrada[12]}]

set_property PACKAGE_PIN W15 [get_ports {entrada[11]}]
set_property IOSTANDARD LVCMOS33 [get_ports {entrada[11]}]

set_property PACKAGE_PIN V15 [get_ports {entrada[10]}]
set_property IOSTANDARD LVCMOS33 [get_ports {entrada[10]}]

set_property PACKAGE_PIN W14 [get_ports {entrada[9]}]
set_property IOSTANDARD LVCMOS33 [get_ports {entrada[9]}]

set_property PACKAGE_PIN W13 [get_ports {entrada[8]}]
set_property IOSTANDARD LVCMOS33 [get_ports {entrada[8]}]

set_property PACKAGE_PIN V2 [get_ports {entrada[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {entrada[7]}]

set_property PACKAGE_PIN T3 [get_ports {entrada[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {entrada[6]}]

set_property PACKAGE_PIN T2 [get_ports {entrada[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {entrada[5]}]

set_property PACKAGE_PIN R3 [get_ports {entrada[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {entrada[4]}]

set_property PACKAGE_PIN W2 [get_ports {entrada[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {entrada[3]}]

set_property PACKAGE_PIN U1 [get_ports {entrada[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {entrada[2]}]

set_property PACKAGE_PIN T1 [get_ports {entrada[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {entrada[1]}]

set_property PACKAGE_PIN R2 [get_ports {entrada[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {entrada[0]}]


## =========================================================
## Clock
## Não é necessário usar um switch para controlá-lo.
## Aqui só define o período de 100ns (frequência de 10MHz) para o clock.
## =========================================================

set_property PACKAGE_PIN W5 [get_ports {clock}]
set_property IOSTANDARD LVCMOS33 [get_ports {clock}]
create_clock -period 100.000 -name sys_clk [get_ports {clock}]


## =========================================================
## LEDs (vector "saida_leds")
## index 15 (mais à direita) = bit menos significativo
## index 0  (mais à esquerda)  = bit mais significativo
## =========================================================

set_property PACKAGE_PIN U16 [get_ports {saida_leds[15]}]
set_property IOSTANDARD LVCMOS33 [get_ports {saida_leds[15]}]

set_property PACKAGE_PIN E19 [get_ports {saida_leds[14]}]
set_property IOSTANDARD LVCMOS33 [get_ports {saida_leds[14]}]

set_property PACKAGE_PIN U19 [get_ports {saida_leds[13]}]
set_property IOSTANDARD LVCMOS33 [get_ports {saida_leds[13]}]

set_property PACKAGE_PIN V19 [get_ports {saida_leds[12]}]
set_property IOSTANDARD LVCMOS33 [get_ports {saida_leds[12]}]

set_property PACKAGE_PIN W18 [get_ports {saida_leds[11]}]
set_property IOSTANDARD LVCMOS33 [get_ports {saida_leds[11]}]

set_property PACKAGE_PIN U15 [get_ports {saida_leds[10]}]
set_property IOSTANDARD LVCMOS33 [get_ports {saida_leds[10]}]

set_property PACKAGE_PIN U14 [get_ports {saida_leds[9]}]
set_property IOSTANDARD LVCMOS33 [get_ports {saida_leds[9]}]

set_property PACKAGE_PIN V14 [get_ports {saida_leds[8]}]
set_property IOSTANDARD LVCMOS33 [get_ports {saida_leds[8]}]

set_property PACKAGE_PIN V13 [get_ports {saida_leds[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {saida_leds[7]}]

set_property PACKAGE_PIN V3 [get_ports {saida_leds[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {saida_leds[6]}]

set_property PACKAGE_PIN W3 [get_ports {saida_leds[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {saida_leds[5]}]

set_property PACKAGE_PIN U3 [get_ports {saida_leds[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {saida_leds[4]}]

set_property PACKAGE_PIN P3 [get_ports {saida_leds[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {saida_leds[3]}]

set_property PACKAGE_PIN N3 [get_ports {saida_leds[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {saida_leds[2]}]

set_property PACKAGE_PIN P1 [get_ports {saida_leds[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {saida_leds[1]}]

set_property PACKAGE_PIN L1 [get_ports {saida_leds[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {saida_leds[0]}]