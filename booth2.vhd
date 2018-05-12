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
			inst,clk : in STD_LOGIC;
			outbooth : out STD_LOGIC_VECTOR ((2*n)-1 downto 0));
END ENTITY booth;

ARCHITECTURE ARCH2 OF booth IS

signal regp : STD_LOGIC_VECTOR ((2*n)-1 downto 0);
signal q_neg_1,qbit : std_logic;
signal rega : STD_LOGIC_VECTOR (n-1 downto 0);
signal regs : STD_LOGIC_VECTOR (n-1 downto 0);
signal rega_or_regs : STD_LOGIC_VECTOR (n-1 downto 0);
signal comparator0 : STD_LOGIC_VECTOR (2 downto 0);
signal n_of_cycles : STD_LOGIC_VECTOR (3 downto 0);
signal shifted_regp : STD_LOGIC_VECTOR ((2*n)-1 downto 0);
signal add_of_mux4 : STD_LOGIC_VECTOR ((2*n)-1 downto 0);
signal mux2_0out : STD_LOGIC_VECTOR ((2*n)-1 downto 0);


BEGIN
n_of_cycles <= "1000";

rega <= filter;
regs <= (not filter) + '1';

regp <= ("00000000"&window) when (count = "0000") else 
		shifted_regp when (rising_edge(clk));
		
q_neg_1 <= '0' when (count = "0000") 
else qbit when (rising_edge(clk));

--comparator between last bit in p and q-1 
comparator0(2) <= '1' when (q_neg_1 < regp(0)) else '0';
comparator0(1) <= '1' when (q_neg_1 > regp(0)) else '0';
comparator0(0) <= '1' when (q_neg_1 = regp(0)) else '0';

rega_or_regs <= rega when(comparator0(2 downto 1) = "01") else
				regs when(comparator0(2 downto 1) = "10");
				
qbit <= regp(0);

shifted_regp <= to_stdlogicvector(to_bitvector((rega_or_regs + regp(15 downto 8)) & regp(7 downto 0)) sra 1) when(q_neg_1 /= regp(0)) else
				to_stdlogicvector(to_bitvector(regp) sra 1) when(q_neg_1 = regp(0));

outbooth <= shifted_regp when(count = "1000" and inst = '0') else
			booth1 + booth2 when(n_of_cycles < count and inst = '0') else
			pool1 + pool2 when(inst = '1');
				
END ARCH2;