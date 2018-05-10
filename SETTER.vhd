LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
--USE IEEE.STD_LOGIC_ARITH.ALL;
--USE IEEE.NUMERIC_STD.ALL;
USE WORK.PKG.ALL;

--@AUTHOR : MOHAMED DAWOD

ENTITY SETTER IS
	PORT(
		FILTER	: IN STD_LOGIC;	--(0)=3 & (1)=5
		STRIDE	: IN STD_LOGIC;	--(0)=1 & (1)=2
		ENB	: IN STD_LOGIC;	--IT JUST A SIGNAL TO PREPARE THE NEXT ADDRESS. (GETTER WORKS ON THE RISING EDGE OF "ENB" SIGNAL)
		ADRS	:OUT ADDRESS;
		ACK	:OUT STD_LOGIC
		

	);
END ENTITY SETTER;

ARCHITECTURE SETTER_ARCH OF SETTER IS

SIGNAL	W	:STD_LOGIC_VECTOR(9 DOWNTO 0);  	--THIRD, I CALCULATE THE WHRESHOLD VALUE (W) WHITCH EQUALS (DIV_RES+1 WHEN STRIDE=1)  OR (DIV_RES+2 WHEN STRIDE=2)
SIGNAL	COL_INC	:ADDRESS;				--COL_INC = COLUMN_INCREMENT : MOVE ON THE FIRST ROW IN THE IMAGE ONLY TO START NEW (ROW_INC) CYCLE
SIGNAL	ROW_INC :ADDRESS;				--ROW_INC = ROW_INCREMENT : MOVE ON THE COLUMN TILL IT'S END THEN GENERATE CARRY SIGNAL TO RUN THE (COL_INC)
SIGNAL	COL_CNT	:STD_LOGIC_VECTOR(9 DOWNTO 0);		--COUNTER FOR THE (COL_INC) MOVE
SIGNAL	ROW_CNT	:STD_LOGIC_VECTOR(9 DOWNTO 0);		--COUNTER FOR THE (ROW_COL) MOVE
SIGNAL	WINDOW	:STD_LOGIC_VECTOR(9 DOWNTO 0);		--window size
SIGNAL	WINDOW3	:STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL	WINDOW5	:STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL	FLAG	:STD_LOGIC;

BEGIN



	WINDOW3 <= WINDOW - 3;
	WINDOW5 <= WINDOW - 5;
	WINDOW	<="01"&X"00";




	PROCESS(ENB)
	BEGIN

	IF(falling_EDGE(ENB))THEN
		IF(FLAG /='1')THEN	
			COL_CNT	<=X"00"&"00";	
			ROW_CNT <=X"00"&"00";
			ACK	<='0';
			FLAG	<='1';
			ROW_INC <= "0000000" & X"00" & "00";


			IF(FILTER='0')THEN
				IF(STRIDE='0')THEN
					COL_INC	<= ("0000000" & (WINDOW3 +1));
					W	<= (WINDOW3 +1);
				ELSIF(STRIDE='1')THEN
					COL_INC	<= "00000000" & ((WINDOW3(9 DOWNTO 1))+ 2);
					W	<= '0' & ((WINDOW3(9 DOWNTO 1))+ 2);
				END IF;
			ELSIF(FILTER='1')THEN
				IF(STRIDE='0')THEN
					COL_INC	<= "0000000" & (WINDOW5 + 1);
					W	<= WINDOW5 + 1;
				ELSIF(STRIDE='1')THEN
					COL_INC <= "00000000" & ((WINDOW5(9 DOWNTO 1))+ 2);
					W	<= '0' & ((WINDOW5(9 DOWNTO 1))+ 2);
				END IF;
			END IF;



		ELSE
			ROW_INC	<= W + ROW_INC;
			ROW_CNT <= ROW_CNT + 1;
			IF(ROW_CNT(9 downto 0) = W)THEN
				ROW_CNT <= X"00"&"00";
				COL_INC	<= COL_INC + 1;
				ROW_INC	<= COL_INC + 1;
				COL_CNT <= COL_CNT + 1;

				IF(COL_CNT(9 downto 0) = W)THEN
					ACK <= '1';
				END IF;

			END IF;
		END IF;
	END IF;
	END PROCESS;


	ADRS <= COL_INC;
	




END ARCHITECTURE SETTER_ARCH;