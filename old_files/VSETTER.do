vsim work.SETTER
# vsim work.SETTER 
# Start time: 14:26:37 on May 10,2018
# Loading work.SETTER
# Loading work.nand02
# Loading work.dff
# Loading work.nand04
# Loading work.nor04
# Loading work.xnor2
# Loading work.nor02_2x
# Loading work.nor03_2x
# Loading work.aoi21
# Loading work.nand03
# Loading work.oai21
# Loading work.xor2
# Loading work.nor02ii
# Loading work.inv01
# Loading work.inv02
# Loading work.and03
# Loading work.and02
# Loading work.mux21
# Loading work.mux21_ni
# Loading work.inv04
# Loading work.dff_err
# Loading work.dff_p
# Loading work.mux2
add wave sim:/SETTER/*
force -freeze sim:/setter/RST 0 0
run
force -freeze sim:/setter/FILTER 0 0
force -freeze sim:/setter/STRIDE 0 0
force -freeze sim:/setter/ENB 0 0
force -freeze sim:/setter/RST 1 0
run
force -freeze sim:/setter/RST 0 0
run
noforce sim:/setter/ENB
force -freeze sim:/setter/ENB 1 0, 0 {50 ps} -r 100
run
