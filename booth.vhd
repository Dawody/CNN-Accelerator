library IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY booth IS
	generic (n:integer:=8);
	PORT(	window : in STD_LOGIC_VECTOR (n-1 downto 0);
			filter : in STD_LOGIC_VECTOR (n-1 downto 0);
			booth1,booth2,pool1,pool2 : in STD_LOGIC_VECTOR ((2*n)-1 downto 0);
			count : in STD_LOGIC_VECTOR (3 downto 0);
			reset,clk,inst : in STD_LOGIC;
			outbooth,outboothadd,outpooladd : out STD_LOGIC_VECTOR ((2*n)-1 downto 0));
END ENTITY booth;

ARCHITECTURE ARCH2 OF booth IS

Component mux_2to1 is
    Port ( SEL : in  STD_LOGIC;
           A,B   : in  STD_LOGIC_VECTOR ((2*n)-1 downto 0);
           X   : out STD_LOGIC_VECTOR ((2*n)-1 downto 0));
end component;

Component mux_4to1 is
    Port ( SEL : in  STD_LOGIC_VECTOR (1 downto 0);
           A,B,C : in  STD_LOGIC_VECTOR ((2*n)-1 downto 0);
           X : out STD_LOGIC_VECTOR ((2*n)-1 downto 0));                       
end component;

Component tri_state_buffer is
    Port ( A    : in  STD_LOGIC_VECTOR ((2*n)-1 downto 0);
           EN   : in  STD_LOGIC;
           Y    : out STD_LOGIC_VECTOR ((2*n)-1 downto 0));
end component;

signal regp : STD_LOGIC_VECTOR ((2*n)-1 downto 0);
signal q_neg_1 : std_logic;
signal zeros : STD_LOGIC_VECTOR ((2*n)-1 downto 0);
signal rega : STD_LOGIC_VECTOR ((2*n)-1 downto 0);
signal regs : STD_LOGIC_VECTOR ((2*n)-1 downto 0);
signal rega_or_regs : STD_LOGIC_VECTOR ((2*n)-1 downto 0);
signal comparator0,comparator1,comparator2 : STD_LOGIC_VECTOR (2 downto 0);
signal n_of_cycles : STD_LOGIC_VECTOR (3 downto 0);
signal s : STD_LOGIC_VECTOR (n-1 downto 0);
signal shifted_regp : STD_LOGIC_VECTOR ((2*n)-1 downto 0);
signal add_of_mux4 : STD_LOGIC_VECTOR ((2*n)-1 downto 0);
signal mux4_1out,mux4_2out,mux2_0out : STD_LOGIC_VECTOR ((2*n)-1 downto 0);


BEGIN

process(reset)
begin
	if(reset = '1') then
		zeros <= (others => '0');
		n_of_cycles <= "1000";
		shifted_regp <= (others => '0');
		regp <= (others => '0');
		q_neg_1 <= '0';
		rega <= (others => '0');
		regs <= (others => '0');
		s <= (others => '0');
		rega_or_regs <= (others => '0');
		comparator0 <= (others => '0');
		comparator1 <= (others => '0');
		comparator2 <= (others => '0');
		add_of_mux4 <= (others => '0');
		mux2_0out <= (others => '0');
		mux4_1out <= (others => '0');
		mux4_2out <= (others => '0');
	end if;
end process;

rega <= (filter&"00000000");
s <= (not filter) + 1;
regs <= (s&"00000000") ;

--comparator between count and 1
comparator1(2) <= '1' when (1 > to_integer(unsigned(count))) else '0';

regp <= ("00000000"&window) when (comparator1(2) = '1') else 
		shifted_regp when (comparator1(2) /= '1' and rising_edge(clk));
		
q_neg_1 <= mux2_0out(0) when (rising_edge(clk)) else q_neg_1;

--comparator between last bit in p and q-1 
comparator0(2) <= '1' when (q_neg_1 > regp(0)) else '0';
comparator0(1) <= '1' when (q_neg_1 < regp(0)) else '0';
comparator0(0) <= '1' when (q_neg_1 = regp(0)) else '0';

--comparator between n_of_cycles and count 
comparator2(2) <= '1' when (n_of_cycles > count) else '0';
comparator2(1) <= '1' when (n_of_cycles < count) else '0';
comparator2(0) <= '1' when (n_of_cycles = count) else '0';

--choose between a or s
mux4_0: mux_4to1 port map(comparator0(2 downto 1),zeros,rega,regs,rega_or_regs);

--choose among rega_or_regs, booth1, or pool1
mux4_1: mux_4to1 port map((comparator2(2)&inst),rega_or_regs,pool1,booth1,mux4_1out);

--choose among regp, booth2, or pool2
mux4_2: mux_4to1 port map((comparator2(2)&inst),regp,pool2,booth2,mux4_2out);

add_of_mux4 <= mux4_1out + mux4_2out;
outboothadd <= add_of_mux4 when (inst = '0' and comparator2(2) = '1') else (others => 'Z');
outpooladd <= add_of_mux4 when (inst = '1' and comparator1(2) = '1') else (others => 'Z');

mux2_0: mux_2to1 port map(comparator0(0),add_of_mux4,regp,mux2_0out);

shifted_regp <= mux2_0out srl 1;

buffer0: tri_state_buffer port map(shifted_regp,comparator2(0),outbooth);

END ARCH2;