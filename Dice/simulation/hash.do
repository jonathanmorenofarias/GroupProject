vsim -gui work.hash

add wave -position insertpoint  \
sim:/hash/clk \
sim:/hash/RAND \
sim:/hash/data
force -freeze sim:/hash/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/hash/data 0 0
run
noforce sim:/hash/data

run 2000