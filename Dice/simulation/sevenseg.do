vsim -gui work.sevenseg
add wave -position insertpoint  \
sim:/sevenseg/data \
sim:/sevenseg/segments
force -freeze sim:/sevenseg/data 0 0
run
force -freeze sim:/sevenseg/data 0001 0
run
force -freeze sim:/sevenseg/data 0010 0
run
force -freeze sim:/sevenseg/data 0011 0
run
force -freeze sim:/sevenseg/data 0100 0
run
force -freeze sim:/sevenseg/data 0101 0
run
force -freeze sim:/sevenseg/data 0110 0
run
force -freeze sim:/sevenseg/data 0111 0
run
force -freeze sim:/sevenseg/data 1000 0
run
force -freeze sim:/sevenseg/data 1001 0
run
force -freeze sim:/sevenseg/data 1010 0
run