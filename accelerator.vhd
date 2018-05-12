LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE WORK.PKG.ALL;

ENTITY conv IS
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
END ENTITY conv;



ARCHITECTURE architecture1 OF conv IS
COMPONENT dma_controller IS
	PORT(
		rst 		: IN std_logic;
		filter_data 	: IN std_logic;
		read_sig 	: IN std_logic;
        	stride          : IN std_logic;
    		clk             : IN std_logic;
		ram_address     : OUT ADDRESS;
       		shift_signal    : OUT std_logic;
		shift_signal2    : OUT std_logic;
      		DATA_ACK        : OUT std_logic);
END COMPONENT;



COMPONENT My_Cache IS
	PORT(
		Clk,EN: IN std_logic;
		size : IN std_logic;
		Datain : IN  five_bytes;
		Dataout1  :out five_bytes;
                Dataout2  :out five_bytes;
                Dataout3  :out five_bytes;
                Dataout4  :out five_bytes;
		Dataout5  :out five_bytes);
END COMPONENT;


COMPONENT SETTER IS
	PORT(
		RST	: IN STD_LOGIC;
		CLK	: IN STD_LOGIC;
		FILTER	: IN STD_LOGIC;	--(0)=3 & (1)=5
		STRIDE	: IN STD_LOGIC;	--(0)=1 & (1)=2
		ENB	: IN STD_LOGIC;	--IT JUST A SIGNAL TO PREPARE THE NEXT ADDRESS. (GETTER WORKS ON THE RISING EDGE OF "ENB" SIGNAL)
		ADRS	:OUT ADDRESS;
		ENDD	:OUT STD_LOGIC;
		ACK	:OUT STD_LOGIC
		

	);
END COMPONENT;


COMPONENT ACCS IS
	generic (n:integer:=8);
	PORT(	win0,win1,win2,win3,win4 : in STD_LOGIC_VECTOR (39 downto 0);
			fil0,fil1,fil2,fil3,fil4 : in STD_LOGIC_VECTOR (39 downto 0);
			reset, start, inst, size, clk, data_ack, result_ack : in STD_LOGIC;
			read_window, save : out STD_LOGIC; 
			output : out STD_LOGIC_VECTOR (n-1 downto 0));
END COMPONENT;




--SIGNAL read_sig			: std_logic;		-- from amir to start
SIGNAL shift_signal		: std_logic;		-- to hesham
SIGNAL shift_signal2		: std_logic;		-- to hesham
SIGNAL DATA_ACK,read_window			: std_logic;		-- to amir;
SIGNAL result_ack,save		: std_logic;
SIGNAL ram_addr,ram_addr2	: ADDRESS;
SIGNAL d1,d2,d3,d4,d5 : five_bytes;
SIGNAL f1,f2,f3,f4,f5 : five_bytes;
BEGIN


	dma_cont: dma_controller port map(rst,inst,read_window,stride,clk,ram_addr,shift_signal,shift_signal2,DATA_ACK);
	mem_cache_data: My_Cache port map(clk,shift_signal,size,ram_datain,d1,d2,d3,d4,d5);
	mem_cache_filter: My_Cache port map(clk,shift_signal2,size,ram_datain,f1,f2,f3,f4,f5);
	amir_alu: ACCS port map(d1,d2,d3,d4,f5,f1,f2,f3,f4,f5,rst,start,inst,size,clk,DATA_ACK,result_ack,read_window,save,ram_dataout);
	dawod_setter: setter port map(rst,clk,size,stride,save,ram_addr2,finished,result_ack);
	ram_address <= ram_addr2 when save = '1' else ram_addr;
	ram_rw <= save;
END architecture1;