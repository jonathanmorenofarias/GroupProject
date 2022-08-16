vsim -gui work.spin_state
add wave -position insertpoint  \
sim:/spin_state/cur_state \
sim:/spin_state/DISP
force -freeze sim:/spin_state/cur_state 0001 0
force -freeze sim:/spin_state/cur_state 0000 0
run
force -freeze sim:/spin_state/cur_state 0001 0
run
force -freeze sim:/spin_state/cur_state 0010 0
run
force -freeze sim:/spin_state/cur_state 0011 0
run
noforce sim:/spin_state/cur_state
force -freeze sim:/spin_state/cur_state 0100 0
run
force -freeze sim:/spin_state/cur_state 0101 0
run