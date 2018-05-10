LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.numeric_std.all;
USE WORK.PKG.ALL;

ENTITY My_Cache IS
	PORT(
		Clk,EN: IN std_logic;
		Datain : IN  std_logic_vector(39 downto 0);
		Dataout1  :out std_logic_vector(39 downto 0);
                Dataout2  :out std_logic_vector(39 downto 0);
                Dataout3  :out std_logic_vector(39 downto 0);
                Dataout4  :out std_logic_vector(39 downto 0);
		Dataout5  :out std_logic_vector(39 downto 0));
END ENTITY My_Cache;

ARCHITECTURE Arch_Cache OF My_Cache IS


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

                                 MyCache(0)(39 downto 0) <=MyCache(1)(39 downto 0);
                                     MyCache(1)(39 downto 0) <=MyCache(2)(39 downto 0);
                                     MyCache(2)(39 downto 0) <=MyCache(3)(39 downto 0);
                                      MyCache(3)(39 downto 0) <=MyCache(4)(39 downto 0);
                                    MyCache(4)(39 downto 0) <=Datain(39 downto 0);
                                 
				 END IF;
		END PROCESS;
		--MEMO <= Memory(to_integer(unsigned(A)));
                Dataout1(39 downto 0)<=  MyCache(0)(39 downto 0);
                Dataout2(39 downto 0)<=  MyCache(1)(39 downto 0);
                Dataout3(39 downto 0)<=  MyCache(2)(39 downto 0);
                Dataout4(39 downto 0)<=  MyCache(3)(39 downto 0);
                Dataout5(39 downto 0)<=  MyCache(4)(39 downto 0);

END Arch_Cache;

