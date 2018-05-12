LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE WORK.PKG.ALL;

ENTITY My_Cache IS
	PORT(
		Clk,EN: IN std_logic;
		size : IN std_logic;
		Datain : IN  five_bytes;
		Dataout1  :out five_bytes;
                Dataout2  :out five_bytes;
                Dataout3  :out five_bytes;
                Dataout4  :out five_bytes;
		Dataout5  :out five_bytes);
END ENTITY My_Cache;

ARCHITECTURE Arch_Cache OF My_Cache IS


	TYPE Cache_type IS ARRAY(0 TO 4) OF five_bytes;
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
				
                                IF RISING_EDGE(Clk) THEN
					IF EN = '1' THEN
		                         	MyCache(0) <= MyCache(1);
		                             	MyCache(1) <= MyCache(2);
		                             	MyCache(2) <= MyCache(3);
		                             	MyCache(3) <= MyCache(4);
		                            	MyCache(4) <= Datain;
					END IF;
                                 
				 END IF;
		END PROCESS;
		--MEMO <= Memory(to_integer(unsigned(A)));
                Dataout1(39 downto 16) <=  MyCache(0)(39 downto 16);
                Dataout2(39 downto 16) <=  MyCache(1)(39 downto 16);
                Dataout3(39 downto 16) <=  MyCache(2)(39 downto 16);
                Dataout1(15 downto 0) <=  MyCache(0)(15 downto 0) when (size = '1') else (others => '0');
                Dataout2(15 downto 0) <=  MyCache(1)(15 downto 0) when (size = '1') else (others => '0');
                Dataout3(15 downto 0) <=  MyCache(2)(15 downto 0) when (size = '1') else (others => '0');
                Dataout4 <=  MyCache(3) when size = '1' else (others => '0');
                Dataout5 <=  MyCache(4) when size = '1' else (others => '0');

END Arch_Cache;

