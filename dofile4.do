vsim -gui work.main
# vsim -gui work.main 
# Start time: 16:12:59 on May 11,2018
# Loading std.standard
# Loading std.textio(body)
# Loading ieee.std_logic_1164(body)
# Loading ieee.numeric_std(body)
# Loading ieee.std_logic_arith(body)
# Loading ieee.std_logic_unsigned(body)
# Loading work.pkg
# Loading work.main(architecture1)
# Loading work.conv(architecture1)
# Loading work.dma_controller(architecture1)
# Loading work.my_cache(arch_cache)
# Loading work.accs(arch1)
# Loading work.counter(arch_counter)
# Loading work.booth(arch2)
# Loading work.mux_4to1(arch_mux4)
# Loading work.mux_2to1(arch_mux2)
# Loading work.tri_state_buffer(arch_buffer)
# Loading work.ram(syncrama)
# ** Warning: (vsim-8683) Uninitialized out port /main/myaccelerator/finished has no driver.
# This port will contribute value (U) to the signal network.
# ** Warning: (vsim-8683) Uninitialized out port /main/myaccelerator/ram_en has no driver.
# This port will contribute value (U) to the signal network.
# ** Warning: (vsim-8683) Uninitialized out port /main/myaccelerator/ram_rw has no driver.
# This port will contribute value (U) to the signal network.
# ** Warning: (vsim-8683) Uninitialized out port /main/myaccelerator/ram_dataout(7 downto 0) has no driver.
# This port will contribute value (UUUUUUUU) to the signal network.
mem load -filltype rand -filldata 5 -fillradix hexadecimal -skip 0 /main/myram/ram
add wave  \
sim:/main/clk \
sim:/main/rst \
sim:/main/start \
sim:/main/inst \
sim:/main/size \
sim:/main/stride \
sim:/main/read_sig \
sim:/main/ram_addr \
sim:/main/ram_output \
sim:/main/finished \
sim:/main/ram_enable \
sim:/main/ram_readwrite \
sim:/main/to_write_in_ram
add wave  \
sim:/main/myaccelerator/amir_alu/n \
sim:/main/myaccelerator/amir_alu/win0 \
sim:/main/myaccelerator/amir_alu/win1 \
sim:/main/myaccelerator/amir_alu/win2 \
sim:/main/myaccelerator/amir_alu/win3 \
sim:/main/myaccelerator/amir_alu/win4 \
sim:/main/myaccelerator/amir_alu/fil0 \
sim:/main/myaccelerator/amir_alu/fil1 \
sim:/main/myaccelerator/amir_alu/fil2 \
sim:/main/myaccelerator/amir_alu/fil3 \
sim:/main/myaccelerator/amir_alu/fil4 \
sim:/main/myaccelerator/amir_alu/reset \
sim:/main/myaccelerator/amir_alu/start \
sim:/main/myaccelerator/amir_alu/inst \
sim:/main/myaccelerator/amir_alu/size \
sim:/main/myaccelerator/amir_alu/clk \
sim:/main/myaccelerator/amir_alu/data_ack \
sim:/main/myaccelerator/amir_alu/result_ack \
sim:/main/myaccelerator/amir_alu/read_window \
sim:/main/myaccelerator/amir_alu/save \
sim:/main/myaccelerator/amir_alu/output \
sim:/main/myaccelerator/amir_alu/zeros \
sim:/main/myaccelerator/amir_alu/count \
sim:/main/myaccelerator/amir_alu/clr_count \
sim:/main/myaccelerator/amir_alu/n_of_cycles \
sim:/main/myaccelerator/amir_alu/arith0out \
sim:/main/myaccelerator/amir_alu/arith1out \
sim:/main/myaccelerator/amir_alu/arith2out \
sim:/main/myaccelerator/amir_alu/arith3out \
sim:/main/myaccelerator/amir_alu/arith4out \
sim:/main/myaccelerator/amir_alu/arith5out \
sim:/main/myaccelerator/amir_alu/arith6out \
sim:/main/myaccelerator/amir_alu/arith7out \
sim:/main/myaccelerator/amir_alu/arith8out \
sim:/main/myaccelerator/amir_alu/arith9out \
sim:/main/myaccelerator/amir_alu/arith10out \
sim:/main/myaccelerator/amir_alu/arith11out \
sim:/main/myaccelerator/amir_alu/arith12out \
sim:/main/myaccelerator/amir_alu/arith13out \
sim:/main/myaccelerator/amir_alu/arith14out \
sim:/main/myaccelerator/amir_alu/arith15out \
sim:/main/myaccelerator/amir_alu/arith16out \
sim:/main/myaccelerator/amir_alu/arith17out \
sim:/main/myaccelerator/amir_alu/arith18out \
sim:/main/myaccelerator/amir_alu/arith19out \
sim:/main/myaccelerator/amir_alu/arith20out \
sim:/main/myaccelerator/amir_alu/arith21out \
sim:/main/myaccelerator/amir_alu/arith22out \
sim:/main/myaccelerator/amir_alu/arith23out \
sim:/main/myaccelerator/amir_alu/arith24out \
sim:/main/myaccelerator/amir_alu/start2 \
sim:/main/myaccelerator/amir_alu/first
add wave  \
sim:/main/myaccelerator/dma_cont/rst \
sim:/main/myaccelerator/dma_cont/filter_data \
sim:/main/myaccelerator/dma_cont/read_sig \
sim:/main/myaccelerator/dma_cont/stride \
sim:/main/myaccelerator/dma_cont/clk \
sim:/main/myaccelerator/dma_cont/ram_address \
sim:/main/myaccelerator/dma_cont/shift_signal \
sim:/main/myaccelerator/dma_cont/shift_signal2 \
sim:/main/myaccelerator/dma_cont/DATA_ACK \
sim:/main/myaccelerator/dma_cont/counter
mem load -filltype rand -filldata 5 -fillradix hexadecimal -skip 0 /main/myram/ram
force -freeze sim:/main/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/main/rst 1 0
force -freeze sim:/main/start 0 0
force -freeze sim:/main/inst 0 0
force -freeze sim:/main/size 0 0
force -freeze sim:/main/stride 0 0
force -freeze sim:/main/read_sig 0 0
run
run
force -freeze sim:/main/rst 0 0
run
run
force -freeze sim:/main/start 1 0