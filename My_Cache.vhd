LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.numeric_std.all;
USE WORK.PKG.ALL;

ENTITY My_Cache IS
	PORT(
	       Clk,EN,Size: IN std_logic;
		Datain    : IN  std_logic_vector(39 downto 0);
		Dataout1  : out std_logic_vector(39 downto 0);
                Dataout2  : out std_logic_vector(39 downto 0);
                Dataout3  : out std_logic_vector(39 downto 0);
                Dataout4  : out std_logic_vector(39 downto 0);
		Dataout5  : out std_logic_vector(39 downto 0));
END ENTITY My_Cache;

ARCHITECTURE Arch_Cache OF My_Cache IS
SIGNAL Sout1,Sout2,Sout3,Sout4,Sout5:std_logic_vector(23 downto 0);

	TYPE Cache_type IS ARRAY(0 TO 4) OF std_logic_vector(39 downto 0);
	SIGNAL MyCache : Cache_type := (
   0     => X"0000000000",
   1     => X"0000000000",
   2     => X"0000000000",
   3     => X"0000000000",
   4     => X"0000000000"
	);

	
BEGIN


PROCESS(Clk,EN) IS
BEGIN
			
IF RISING_EDGE(Clk) and EN='1' THEN
								
  IF Size='1' THEN 

     MyCache(0)(39 downto 0) <=MyCache(1)(39 downto 0);
  else
     MyCache(0)(39 downto 0) <=MyCache(1)(39 downto 0);
     Sout1 <=MyCache(1)(39 downto 16);
								     
  END IF;
								 
   IF Size='1' THEN 
    
     MyCache(1)(39 downto 0) <=MyCache(2)(39 downto 0);
   else
     MyCache(1)(39 downto 0) <=MyCache(2)(39 downto 0);
     Sout2<=MyCache(2)(39 downto 16);
							        
   END IF;
							
    IF Size='1' THEN 
    
      MyCache(2)(39 downto 0) <=MyCache(3)(39 downto 0);
    else
      MyCache(2)(39 downto 0) <=MyCache(3)(39 downto 0);
      Sout3<=MyCache(3)(39 downto 16);
									 
     END IF;
								 
     IF Size='1' THEN 
       MyCache(3)(39 downto 0) <=MyCache(4)(39 downto 0);
     else
      MyCache(3)(39 downto 0) <=MyCache(4)(39 downto 0);
      Sout4<=MyCache(4)(39 downto 16);
									  
     END IF;
								 
     IF Size='1' THEN 
       MyCache(4)(39 downto 0) <=Datain(39 downto 0);
     else
       MyCache(4)(39 downto 0) <=Datain(39 downto 0);
       Sout5 <=Datain(39 downto 16);
                                      								  
     END IF;									
END IF;
END PROCESS;

Dataout1(39 downto 0)<=  MyCache(0)(39 downto 0) when Size='1' 
else Sout1 & "0000000000000000" when Size='0';
Dataout2(39 downto 0)<=  MyCache(1)(39 downto 0) when Size='1'
else Sout2 & "0000000000000000" when Size='0';
Dataout3(39 downto 0)<=  MyCache(2)(39 downto 0) when Size='1'
else  Sout3 & "0000000000000000" when Size='0';
Dataout4(39 downto 0)<=  MyCache(3)(39 downto 0) when Size='1'
else (others=>'0') when Size ='0';
Dataout5(39 downto 0)<=  MyCache(4)(39 downto 0) when Size='1'
else (others=>'0') when Size='0';

END Arch_Cache;

