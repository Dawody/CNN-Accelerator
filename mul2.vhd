library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;


entity booth is
port ( mpcd, mplr: in std_logic_vector(7 downto 0); 
booth1,booth2,pool1,pool2 : in std_logic_vector(15 downto 0);
count : in std_logic_vector(3 downto 0);
inst : in std_logic;
clk : in std_logic;
result : out std_logic_vector(15 downto 0);
addresult : out std_logic_vector(15 downto 0));
end entity;

architecture booth_arch of booth is
signal rst : std_logic;
begin
process(clk,count,inst)
 variable br,nbr,op1 : std_logic_vector(7 downto 0);
 variable acqr,op2,op3 : std_logic_vector(15 downto 0); 
 variable qn1 : std_logic;
 variable countprev : std_logic_vector(3 downto 0);
 begin

	if(count = "0000" and inst /= '1') then
		countprev := "0000";
		acqr( 15 downto 8):= (others=>'0');
		acqr(7 downto 0) := mpcd;
		br:= mplr;
		nbr := (not mplr) + '1' ;
		qn1 := '0' ;

  elsif(rising_edge(clk) or inst = '1') then

		
		if((count <="1001" and (count /= countprev) and inst = '0') or (inst ='1')) then
    		countprev :=count;
		if ( acqr(0) = '0' and qn1 = '1') then
			op1 := br;
		elsif(acqr(0) = '1' and qn1 = '0') then
			op1 := nbr;
		else
			op1 := x"00";
		end if;
	
	if(inst = '1') then
		op2 := pool1;
		op3 := pool2;
	elsif(count > "1000") then
		op2 := booth1;
		op3 := booth2;
	end if;
	
	
	if(inst ='1' or count > "1000") then
		addresult<= op2 + op3;
	else
		acqr(15 downto 8):= acqr(15 downto 8) + op1;
		qn1 := acqr(0);
		acqr(14 downto 0) := acqr(15 downto 1) ; 
	end if;

	end if;
  end if;
   result <= acqr ;
 end process ;
end booth_arch;
