library IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.NUMERIC_STD.ALL;

entity mux_2to1 is
	generic (n:integer:=8);
    Port ( SEL : in  STD_LOGIC;
           A,B   : in  STD_LOGIC_VECTOR ((2*n)-1 downto 0);
           X   : out STD_LOGIC_VECTOR ((2*n)-1 downto 0));
end mux_2to1;

architecture arch_mux2 of mux_2to1 is
begin
    X <= A when (SEL = '1') else B;
end arch_mux2;

library IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.NUMERIC_STD.ALL;

entity mux_4to1 is
	generic (n:integer:=8);
    Port ( SEL : in  STD_LOGIC_VECTOR (1 downto 0);
           A,B,C : in  STD_LOGIC_VECTOR ((2*n)-1 downto 0);
           X : out STD_LOGIC_VECTOR ((2*n)-1 downto 0));                       
end mux_4to1;

architecture arch_mux4 of mux_4to1 is
begin
with SEL select
    X <= A when "00",
         B when "01",
         C when "10",
         (others => '0')  when others;
end arch_mux4;

library IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.NUMERIC_STD.ALL;

entity tri_state_buffer is
	generic (n:integer:=8);
    Port ( A    : in  STD_LOGIC_VECTOR ((2*n)-1 downto 0);
           EN   : in  STD_LOGIC;
           Y    : out STD_LOGIC_VECTOR ((2*n)-1 downto 0));
end tri_state_buffer;

architecture arch_buffer of tri_state_buffer is

begin

    Y <= A when (EN = '1') else (others => 'Z');

end arch_buffer;

library IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.NUMERIC_STD.ALL;

entity counter is 
	 port(Clock, CLR : in  std_logic;
	 Q : out std_logic_vector(3 downto 0));
end counter;

architecture arch_counter of counter is  

signal tmp: std_logic_vector(3 downto 0);

begin

process (Clock, CLR) 
begin   

   if (CLR='1') then tmp <= "0000";  
   elsif (rising_edge(Clock)) then tmp <= tmp + 1;
   end if;     
   
end process; 
Q <= tmp;
        
end arch_counter;