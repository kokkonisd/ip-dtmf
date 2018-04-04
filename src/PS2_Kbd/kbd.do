# PS/2 Controller Simulation Script
# ---------------------------------

vlib work

vcom -93 PS2_Ctrl.vhd
vcom -93 Kbd_Tst.vhd

vsim kbd_tst
view structure
view signals
do wkbd.do

puts "(c) ALSE - http://www.alse-fr.com"
run -a
