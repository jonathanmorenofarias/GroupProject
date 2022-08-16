vsim -gui work.counter

add wave -position insertpoint  \
sim:/counter/clk \
sim:/counter/reset \
sim:/counter/d \
sim:/counter/q
force -freeze sim:/counter/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/counter/reset 1 0
force -freeze sim:/counter/d 0 0
run
run
force -freeze sim:/counter/reset 0 0
force -freeze sim:/counter/d 00000000 0
force -freeze sim:/counter/d 1 0
run
force -freeze sim:/counter/d 00000010 0
run
force -freeze sim:/counter/d 00000011 0
run
force -freeze sim:/counter/d 00000100 0
run