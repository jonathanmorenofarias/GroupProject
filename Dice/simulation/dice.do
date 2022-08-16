vsim -gui work.dice
add wave -position insertpoint  \
sim:/dice/CLK \
sim:/dice/ROLL_NOT \
sim:/dice/TEST_CNG_NOT \
sim:/dice/SW_ENABLE \
sim:/dice/Seg0 \
sim:/dice/Seg1 \
sim:/dice/Seg2 \
sim:/dice/Seg3 \
sim:/dice/Seg4 \
sim:/dice/Seg5
force -freeze sim:/dice/CLK 1 0, 0 {50 ps} -r 100
force -freeze sim:/dice/ROLL_NOT 1 0
force -freeze sim:/dice/TEST_CNG_NOT 0 0
force -freeze sim:/dice/SW_ENABLE 000000 0
run
run
run
force -freeze sim:/dice/TEST_CNG_NOT 1 0
run
run
force -freeze sim:/dice/SW_ENABLE 000001 0
run
run
force -freeze sim:/dice/ROLL_NOT 0 0
run
run
force -freeze sim:/dice/ROLL_NOT 1 0
run
force -freeze sim:/dice/SW_ENABLE 111111 0
run
force -freeze sim:/dice/SPIN_CLK 1 0
run
force -freeze sim:/dice/SPIN_CLK 0 0
run
noforce sim:/dice/SPIN_CLK
run