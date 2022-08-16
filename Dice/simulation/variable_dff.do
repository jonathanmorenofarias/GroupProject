vsim -gui work.variable_dff
add wave -position insertpoint  \
sim:/variable_dff/data \
sim:/variable_dff/clk \
sim:/variable_dff/res \
sim:/variable_dff/out
force -freeze sim:/variable_dff/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/variable_dff/res 0 0
run
force -freeze sim:/variable_dff/data 1 0
run
force -freeze sim:/variable_dff/res 1 0
run
force -freeze sim:/variable_dff/data 0010001 0
run
force -freeze sim:/variable_dff/data 1000100 0
run
force -freeze sim:/variable_dff/data 1111111 0
run
run