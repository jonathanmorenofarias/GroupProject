vsim -gui work.count_and_reset
add wave -position insertpoint  \
sim:/count_and_reset/clk \
sim:/count_and_reset/reset \
sim:/count_and_reset/q \
sim:/count_and_reset/overflow


force -freeze sim:/count_and_reset/reset 1 0
force -freeze sim:/count_and_reset/clk 1 0, 0 {50 ps} -r 100

run 100

force -freeze sim:/count_and_reset/reset 0 0

run 2000