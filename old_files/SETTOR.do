vsim work.set
# vsim work.setter 
# Start time: 05:15:40 on May 10,2018
# Loading std.standard
# Loading std.textio(body)
# Loading ieee.std_logic_1164(body)
# Loading ieee.std_logic_arith(body)
# Loading ieee.std_logic_unsigned(body)
# Loading ieee.numeric_std(body)
# Loading work.pkg
# Loading work.setter(setter_arch)
add wave sim:/set/*
force -freeze sim:/set/FILTER 0 0
force -freeze sim:/set/STRIDE 0 0
force -freeze sim:/set/ENB 0 0
run
noforce sim:/set/ENB
force -freeze sim:/set/ENB 1 0, 0 {50 ps} -r 100
run
