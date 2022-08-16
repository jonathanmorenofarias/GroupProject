vsim -gui work.dice_state

add wave -position insertpoint  \
sim:/dice_state/roll \
sim:/dice_state/reset \
sim:/dice_state/num_enb
force -freeze sim:/dice_state/reset 1 0
force -freeze sim:/dice_state/roll 1 0
run
run
force -freeze sim:/dice_state/roll 0 0
run
force -freeze sim:/dice_state/reset 0 0
run
force -freeze sim:/dice_state/reset 1 0
run