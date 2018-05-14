library IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY ACCS IS
	generic (n:integer:=8);
	PORT(	win0,win1,win2,win3,win4 : in STD_LOGIC_VECTOR (39 downto 0);
			fil0,fil1,fil2,fil3,fil4 : in STD_LOGIC_VECTOR (39 downto 0);
			reset, start, inst, size, clk, filter_ack, data_ack, result_ack : in STD_LOGIC;
			read_filter, read_window, save : out STD_LOGIC; 
			output : out STD_LOGIC_VECTOR (n-1 downto 0));
END ENTITY ACCS;

ARCHITECTURE ARCH1 OF ACCS IS

component booth IS
	PORT(	window : in STD_LOGIC_VECTOR (n-1 downto 0);
			filter : in STD_LOGIC_VECTOR (n-1 downto 0);
			booth1,booth2,pool1,pool2 : in STD_LOGIC_VECTOR ((2*n)-1 downto 0);
			count : in STD_LOGIC_VECTOR (3 downto 0);
			reset,clk,inst : in STD_LOGIC;
			outbooth,outboothadd,outpooladd : out STD_LOGIC_VECTOR ((2*n)-1 downto 0));
END component;

component counter is 
	 port(Clock, CLR : in  std_logic;
	 Q : out std_logic_vector(3 downto 0));
end component;

signal rf_chk : STD_LOGIC;
signal zeros : STD_LOGIC_VECTOR (n-1 downto 0);
signal count : STD_LOGIC_VECTOR (3 downto 0);
signal clr_count : STD_LOGIC;
signal n_of_cycles : STD_LOGIC_VECTOR (3 downto 0);
signal save_signal : STD_LOGIC;
signal arith0out,arith1out,arith2out,arith3out,arith4out,arith5out,arith6out,arith7out,arith8out,arith9out,arith10out,arith11out,arith12out,arith13out,arith14out,arith15out,arith16out,arith17out,arith18out,arith19out,arith20out,arith21out,arith22out,arith23out,arith24out : STD_LOGIC_VECTOR ((2*n)-1 downto 0);
signal outbooth0,outbooth1,outbooth2,outbooth3,outbooth4,outbooth5,outbooth6,outbooth7,outbooth8,outbooth9,outbooth10,outbooth11,outbooth12,outbooth13,outbooth14,outbooth15,outbooth16,outbooth17,outbooth18,outbooth19,outbooth20,outbooth21,outbooth22,outbooth23 : STD_LOGIC_VECTOR ((2*n)-1 downto 0);
signal outpool0,outpool1,outpool2,outpool3,outpool4,outpool5,outpool6,outpool7,outpool8,outpool9,outpool10,outpool11,outpool12,outpool13,outpool14,outpool15,outpool16,outpool17,outpool18,outpool19,outpool20,outpool21,outpool22,outpool23 : STD_LOGIC_VECTOR ((2*n)-1 downto 0);

BEGIN

process(reset)
begin
	if(reset = '1') then
		zeros <= (others => '0');
		n_of_cycles <= "1000";
		rf_chk <= '0';
		clr_count <= '0';
		count <= (others => '0');
		save_signal <= '0';
		arith0out  <= (others => '0');
		arith1out  <= (others => '0');
		arith2out  <= (others => '0');
		arith3out  <= (others => '0');
		arith4out  <= (others => '0');
		arith5out  <= (others => '0');
		arith6out  <= (others => '0');
		arith7out  <= (others => '0');
		arith8out  <= (others => '0');
		arith9out  <= (others => '0');
		arith10out <= (others => '0');
		arith11out <= (others => '0');
		arith12out <= (others => '0');
		arith13out <= (others => '0');
		arith14out <= (others => '0');
		arith15out <= (others => '0');
		arith16out <= (others => '0');
		arith17out <= (others => '0');
		arith18out <= (others => '0');
		arith19out <= (others => '0');
		arith20out <= (others => '0');
		arith21out <= (others => '0');
		arith22out <= (others => '0');
		arith23out <= (others => '0');
		arith24out <= (others => '0');
		outbooth0  <= (others => '0');
		outbooth1  <= (others => '0');
		outbooth2  <= (others => '0');
		outbooth3  <= (others => '0');
		outbooth4  <= (others => '0');
		outbooth5  <= (others => '0');
		outbooth6  <= (others => '0');
		outbooth7  <= (others => '0');
		outbooth8  <= (others => '0');
		outbooth9  <= (others => '0');
		outbooth10 <= (others => '0');
		outbooth11 <= (others => '0');
		outbooth12 <= (others => '0');
		outbooth13 <= (others => '0');
		outbooth14 <= (others => '0');
		outbooth15 <= (others => '0');
		outbooth16 <= (others => '0');
		outbooth17 <= (others => '0');
		outbooth18 <= (others => '0');
		outbooth19 <= (others => '0');
		outbooth20 <= (others => '0');
		outbooth21 <= (others => '0');
		outbooth22 <= (others => '0');
		outbooth23 <= (others => '0');
		outpool0   <= (others => '0');
		outpool1   <= (others => '0');
		outpool2   <= (others => '0');
		outpool3   <= (others => '0');
		outpool4   <= (others => '0');
		outpool5   <= (others => '0');
		outpool6   <= (others => '0');
		outpool7   <= (others => '0');
		outpool8   <= (others => '0');
		outpool9   <= (others => '0');
		outpool10  <= (others => '0');
		outpool11  <= (others => '0');
		outpool12  <= (others => '0');
		outpool13  <= (others => '0');
		outpool14  <= (others => '0');
		outpool15  <= (others => '0');
		outpool16  <= (others => '0');
		outpool17  <= (others => '0');
		outpool18  <= (others => '0');
		outpool19  <= (others => '0');
		outpool20  <= (others => '0');
		outpool21  <= (others => '0');
		outpool22  <= (others => '0');
		outpool23  <= (others => '0');
	end if;
end process;

clr_count <= '1' when (result_ack = '1') else '0';
count0: counter port map(clk,clr_count,count);

--read_filter high
read_filter <= '1' when (start = '1' and rf_chk = '0') else '0';
rf_chk <= '1' when (start = '1' and read_filter = '1' and filter_ack = '1') else rf_chk;

--read_window high
read_window <= '1' when ((rf_chk = '1' and data_ack = '0') or result_ack = '1') else '0'; 

--save low
save_signal <= '0' when (result_ack = '1') else save_signal;
save <= save_signal;

--12 operations
arith0 : booth port map(win0(39 downto 32),fil0(39 downto 32),arith0out ,arith1out ,win0(39 downto 32),win0(31 downto 24),count,reset,clk,inst,arith0out ,outbooth0 ,outpool0 );
arith1 : booth port map(win0(31 downto 24),fil0(31 downto 24),arith2out ,arith3out ,win0(23 downto 16),win0(15 downto 8 ),count,reset,clk,inst,arith1out ,outbooth1 ,outpool1 );
arith2 : booth port map(win0(23 downto 16),fil0(23 downto 16),arith4out ,arith5out ,win0(7  downto 0 ),win1(39 downto 32),count,reset,clk,inst,arith2out ,outbooth2 ,outpool2 );
arith3 : booth port map(win0(15 downto 8 ),fil0(15 downto 8 ),arith6out ,arith7out ,win1(31 downto 24),win1(23 downto 16),count,reset,clk,inst,arith3out ,outbooth3 ,outpool3 );
arith4 : booth port map(win0(7  downto 0 ),fil0(7  downto 0 ),arith8out ,arith9out ,win1(15 downto 8 ),win1(7  downto 0 ),count,reset,clk,inst,arith4out ,outbooth4 ,outpool4 );
arith5 : booth port map(win1(39 downto 32),fil1(39 downto 32),arith10out,arith11out,win2(39 downto 32),win2(31 downto 24),count,reset,clk,inst,arith5out ,outbooth5 ,outpool5 );
arith6 : booth port map(win1(31 downto 24),fil1(31 downto 24),arith12out,arith13out,win2(23 downto 16),win2(15 downto 8 ),count,reset,clk,inst,arith6out ,outbooth6 ,outpool6 );
arith7 : booth port map(win1(23 downto 16),fil1(23 downto 16),arith14out,arith15out,win2(7  downto 0 ),win3(39 downto 32),count,reset,clk,inst,arith7out ,outbooth7 ,outpool7 );
arith8 : booth port map(win1(15 downto 8 ),fil1(15 downto 8 ),arith16out,arith17out,win3(31 downto 24),win3(23 downto 16),count,reset,clk,inst,arith8out ,outbooth8 ,outpool8 );
arith9 : booth port map(win1(7  downto 0 ),fil1(7  downto 0 ),arith18out,arith19out,win3(15 downto 8 ),win3(7  downto 0 ),count,reset,clk,inst,arith9out ,outbooth9 ,outpool9 );
arith10: booth port map(win2(39 downto 32),fil2(39 downto 32),arith20out,arith21out,win4(39 downto 32),win4(31 downto 24),count,reset,clk,inst,arith10out,outbooth10,outpool10);
arith11: booth port map(win2(31 downto 24),fil2(31 downto 24),arith22out,arith23out,win4(23 downto 16),win4(15 downto 8 ),count,reset,clk,inst,arith11out,outbooth11,outpool11);
--6 operations                                                                                                              
arith12: booth port map(win2(23 downto 16),fil2(23 downto 16),outbooth0 ,outbooth1 ,outpool0		  ,outpool1			 ,count,reset,clk,inst,arith12out,outbooth12,outpool12);
arith13: booth port map(win2(15 downto 8 ),fil2(15 downto 8 ),outbooth2 ,outbooth3 ,outpool2		  ,outpool3			 ,count,reset,clk,inst,arith13out,outbooth13,outpool13);
arith14: booth port map(win2(7  downto 0 ),fil2(7  downto 0 ),outbooth4 ,outbooth5 ,outpool4		  ,outpool5			 ,count,reset,clk,inst,arith14out,outbooth14,outpool14);
arith15: booth port map(win3(39 downto 32),fil3(39 downto 32),outbooth6 ,outbooth7 ,outpool6		  ,outpool7			 ,count,reset,clk,inst,arith15out,outbooth15,outpool15);
arith16: booth port map(win3(31 downto 24),fil3(31 downto 24),outbooth8 ,outbooth9 ,outpool8		  ,outpool9			 ,count,reset,clk,inst,arith16out,outbooth16,outpool16);
arith17: booth port map(win3(23 downto 16),fil3(23 downto 16),outbooth10,outbooth11,outpool10		  ,outpool11		 ,count,reset,clk,inst,arith17out,outbooth17,outpool17);
--3 operations                                                                                                               
arith18: booth port map(win3(15 downto 8 ),fil3(15 downto 8 ),outbooth12,outbooth13,outpool12		  ,outpool13		 ,count,reset,clk,inst,arith18out,outbooth18,outpool18);
arith19: booth port map(win3(7  downto 0 ),fil3(7  downto 0 ),outbooth14,outbooth15,outpool14		  ,outpool15		 ,count,reset,clk,inst,arith19out,outbooth19,outpool19);
arith20: booth port map(win4(39 downto 32),fil4(39 downto 32),outbooth16,outbooth17,outpool16		  ,outpool17		 ,count,reset,clk,inst,arith20out,outbooth20,outpool20);
--2 operations                                                                                                            
arith21: booth port map(win4(31 downto 24),fil4(31 downto 24),outbooth18,outbooth19,outpool18		  ,outpool19		 ,count,reset,clk,inst,arith21out,outbooth21,outpool21);
arith22: booth port map(win4(23 downto 16),fil4(23 downto 16),outbooth20,arith24out,outpool20		  ,win4(7 downto 0)	 ,count,reset,clk,inst,arith22out,outbooth22,outpool22);
--final operation                                                                                                            
arith23: booth port map(win4(15 downto 8 ),fil4(15 downto 8 ),outbooth21,outbooth22,outpool21		  ,outpool22		 ,count,reset,clk,inst,arith23out,outbooth23,outpool23);
--extra                                                                                                                        
arith24: booth port map(win4(7  downto 0 ),fil4(7  downto 0 ),zeros		,zeros	   ,zeros	   		  ,zeros	   		 ,count,reset,clk,inst,arith24out,zeros		,zeros);


save <= '1' when ((inst = '1') or (inst = '0' and count >= n_of_cycles)) else '0';

output <= outpool23(7 downto 0) when (inst = '1') else
			outbooth23(7 downto 0) when(inst = '0' and count >= n_of_cycles) else (others => 'Z');

END ARCH1;