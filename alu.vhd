library IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY ACCS IS
	generic (n:integer:=8);
	PORT(	win0,win1,win2,win3,win4 : in STD_LOGIC_VECTOR (39 downto 0);
			fil0,fil1,fil2,fil3,fil4 : in STD_LOGIC_VECTOR (39 downto 0);
			reset, start, inst, size, clk, data_ack, result_ack : in STD_LOGIC;
			read_window, save : out STD_LOGIC; 
			output : out STD_LOGIC_VECTOR (n-1 downto 0));
END ENTITY ACCS;

ARCHITECTURE ARCH1 OF ACCS IS

component booth is
port ( mpcd, mplr: in std_logic_vector(7 downto 0); 
booth1,booth2,pool1,pool2 : in std_logic_vector(15 downto 0);
count : in std_logic_vector(3 downto 0);
inst : in std_logic;
clk : in std_logic;
result : out std_logic_vector(15 downto 0));
end component;

-- COMPONENT booth IS
-- 	generic (n:integer:=8);
-- 	PORT(	window : in STD_LOGIC_VECTOR (n-1 downto 0);
-- 			filter : in STD_LOGIC_VECTOR (n-1 downto 0);
-- 			booth1,booth2,pool1,pool2 : in STD_LOGIC_VECTOR ((2*n)-1 downto 0);
-- 			count : in STD_LOGIC_VECTOR (3 downto 0);
-- 			inst,clk : in STD_LOGIC;
-- 			outbooth : out STD_LOGIC_VECTOR ((2*n)-1 downto 0));
-- END component;



component counter is 
	 port(Clock, CLR : in  std_logic;
	 Q : out std_logic_vector(3 downto 0));
end component;

signal zeros : STD_LOGIC_VECTOR ((2*n)-1 downto 0);
signal count : STD_LOGIC_VECTOR (3 downto 0);
signal clr_count : STD_LOGIC;
signal n_of_cycles : STD_LOGIC_VECTOR (3 downto 0);
signal arith0out,arith1out,arith2out,arith3out,arith4out,arith5out,arith6out,arith7out,arith8out,arith9out,arith10out,arith11out,arith12out,arith13out,arith14out,arith15out,arith16out,arith17out,arith18out,arith19out,arith20out,arith21out,arith22out,arith23out,arith24out : STD_LOGIC_VECTOR ((2*n)-1 downto 0);
signal start2 : std_logic;
signal first : std_logic;
BEGIN

process(reset,data_ack,start,clk)
begin
	if(reset = '1') then
		start2 <= '0';
		first <= '0';
		zeros <= (others => '0');
		n_of_cycles <= "1001";
		--clr_count <= '1';
		
	end if;
	
	if(start = '1' and first = '0') then
		start2 <= '1';
		first <= '1';
	elsif(data_ack = '1') then
		start2 <= '0';
		count <= "0000";
	elsif (rising_edge(clk)) then
		count <= count + 1;
	end if;
	
end process;

--clr_count <= '1' when (result_ack = '1' or reset = '1' or data_ack = '0') else '0';
--count0: counter port map(clk,clr_count,count);
read_window <= '1' when (result_ack = '1' or start2 ='1') else '0'; 
save <= '1' when ((inst = '1' and data_ack = '1' and count >= "0001") or (inst = '0' and count >= n_of_cycles)) else '0';
output <= arith23out(7 downto 0);


--12 operations
arith0 : booth port map(win0(39 downto 32),fil0(39 downto 32),arith0out ,arith1out ,"00000000" & win0(39 downto 32),"00000000" & win0(31 downto 24),count,inst,clk,arith0out );
arith1 : booth port map(win0(31 downto 24),fil0(31 downto 24),arith2out ,arith3out ,"00000000" & win0(23 downto 16),"00000000" & win0(15 downto 8 ),count,inst,clk,arith1out );
arith2 : booth port map(win0(23 downto 16),fil0(23 downto 16),arith4out ,arith5out ,"00000000" & win0(7  downto 0 ),"00000000" & win1(39 downto 32),count,inst,clk,arith2out );
arith3 : booth port map(win0(15 downto 8 ),fil0(15 downto 8 ),arith6out ,arith7out ,"00000000" & win1(31 downto 24),"00000000" & win1(23 downto 16),count,inst,clk,arith3out );
arith4 : booth port map(win0(7  downto 0 ),fil0(7  downto 0 ),arith8out ,arith9out ,"00000000" & win1(15 downto 8 ),"00000000" & win1(7  downto 0 ),count,inst,clk,arith4out );
arith5 : booth port map(win1(39 downto 32),fil1(39 downto 32),arith10out,arith11out,"00000000" & win2(39 downto 32),"00000000" & win2(31 downto 24),count,inst,clk,arith5out );
arith6 : booth port map(win1(31 downto 24),fil1(31 downto 24),arith12out,arith13out,"00000000" & win2(23 downto 16),"00000000" & win2(15 downto 8 ),count,inst,clk,arith6out );
arith7 : booth port map(win1(23 downto 16),fil1(23 downto 16),arith14out,arith15out,"00000000" & win2(7  downto 0 ),"00000000" & win3(39 downto 32),count,inst,clk,arith7out );
arith8 : booth port map(win1(15 downto 8 ),fil1(15 downto 8 ),arith16out,arith17out,"00000000" & win3(31 downto 24),"00000000" & win3(23 downto 16),count,inst,clk,arith8out );
arith9 : booth port map(win1(7  downto 0 ),fil1(7  downto 0 ),arith18out,arith19out,"00000000" & win3(15 downto 8 ),"00000000" & win3(7  downto 0 ),count,inst,clk,arith9out );
arith10: booth port map(win2(39 downto 32),fil2(39 downto 32),arith20out,arith21out,"00000000" & win4(39 downto 32),"00000000" & win4(31 downto 24),count,inst,clk,arith10out);
arith11: booth port map(win2(31 downto 24),fil2(31 downto 24),arith22out,arith23out,"00000000" & win4(23 downto 16),"00000000" & win4(15 downto 8 ),count,inst,clk,arith11out);
--6 operations                                                                                                              
arith12: booth port map(win2(23 downto 16),fil2(23 downto 16),arith0out ,arith1out ,arith0out ,arith1out ,count,inst,clk,arith12out);
arith13: booth port map(win2(15 downto 8 ),fil2(15 downto 8 ),arith2out ,arith3out ,arith2out ,arith3out ,count,inst,clk,arith13out);
arith14: booth port map(win2(7  downto 0 ),fil2(7  downto 0 ),arith4out ,arith5out ,arith4out ,arith5out ,count,inst,clk,arith14out);
arith15: booth port map(win3(39 downto 32),fil3(39 downto 32),arith6out ,arith7out ,arith6out ,arith7out ,count,inst,clk,arith15out);
arith16: booth port map(win3(31 downto 24),fil3(31 downto 24),arith8out ,arith9out ,arith8out ,arith9out ,count,inst,clk,arith16out);
arith17: booth port map(win3(23 downto 16),fil3(23 downto 16),arith10out,arith11out,arith10out,arith11out,count,inst,clk,arith17out);
--3 operations                                                                                         
arith18: booth port map(win3(15 downto 8 ),fil3(15 downto 8 ),arith12out,arith13out,arith12out,arith13out,count,inst,clk,arith18out);
arith19: booth port map(win3(7  downto 0 ),fil3(7  downto 0 ),arith14out,arith15out,arith14out,arith15out,count,inst,clk,arith19out);
arith20: booth port map(win4(39 downto 32),fil4(39 downto 32),arith16out,arith17out,arith16out,arith17out,count,inst,clk,arith20out);
--2 operations                                                                                         
arith21: booth port map(win4(31 downto 24),fil4(31 downto 24),arith18out,arith19out,arith18out,arith19out,count,inst,clk,arith21out);
arith22: booth port map(win4(23 downto 16),fil4(23 downto 16),arith20out,arith24out,arith20out,"00000000" & win4(7 downto 0)	 ,count,inst,clk,arith22out);
--final operation                                                                                                     
arith23: booth port map(win4(15 downto 8 ),fil4(15 downto 8 ),arith21out,arith22out,arith21out,arith22out,count,inst,clk,arith23out);
--extra                                                                                                                        
arith24: booth port map(win4(7  downto 0 ),fil4(7  downto 0 ),zeros		,zeros	   ,zeros	   		  ,zeros	   		 ,count,inst,clk,arith24out);




END ARCH1;