LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.numeric_std.all;
USE WORK.PKG.ALL;

ENTITY main IS

	PORT(
		clk : IN std_logic;
		rst : IN std_logic;
		start :IN std_logic;
		inst : IN std_logic;
		size  : IN std_logic;
		stride  : IN std_logic;
		read_sig : IN std_logic);

END ENTITY main;



ARCHITECTURE architecture1 OF main IS
COMPONENT ram IS
	PORT(
		clk : IN std_logic;
		rd_wt  : IN std_logic;
		ram_address : IN  ADDRESS;
		datain  : IN  BYTE;
		dataout : OUT five_bytes);
END COMPONENT;
COMPONENT conv IS
	PORT(
		clk : IN std_logic;
		rst : IN std_logic;
		start :IN std_logic;
		inst : IN std_logic;
		size  : IN std_logic;
		stride  : IN std_logic;
		ram_datain  : IN five_bytes;
		read_sig : IN std_logic;
		finished : OUT std_logic;
		ram_en : OUT std_logic;
		ram_rw : OUT std_logic;
		ram_address : OUT ADDRESS;
		ram_dataout : OUT BYTE);
END COMPONENT;
	
SIGNAL ram_addr	: ADDRESS;
SIGNAL ram_output: five_bytes;
SIGNAL finished: std_logic;
SIGNAL ram_enable,ram_readwrite: std_logic;
SIGNAL to_write_in_ram: BYTE;
BEGIN
	--dma_cont: dma_controller port map(rst,filter_data,read_sig,stride,clk,ram_addr,shift_signal,DATA_ACK);
	myaccelerator: conv port map(clk,rst,start,inst,size,stride,ram_output,read_sig,finished,ram_enable,ram_readwrite,ram_addr,to_write_in_ram);
	myram: ram port map(clk,ram_enable,ram_addr,to_write_in_ram,ram_output);
	--myacce
	
END architecture1;