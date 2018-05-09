LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
--USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.NUMERIC_STD.ALL;
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

SIGNAL	SUB_RES	:STD_LOGIC_VECTOR(7 DOWNTO 0);		--AT FIRST, I SUBTRACT IMAGE SIZE (256) - FILTER SIZE (3 OR 5)
SIGNAL	DIV_RES	:STD_LOGIC_VECTOR(7 DOWNTO 0);		--SECOND, I DIVIDE THE SUB_RES BY 2 
SIGNAL	W	:STD_LOGIC_VECTOR(7 DOWNTO 0);  	--THIRD, I CALCULATE THE WHRESHOLD VALUE (W) WHITCH EQUALS (DIV_RES+1 WHEN STRIDE=1)  OR (DIV_RES+2 WHEN STRIDE=2)
SIGNAL	COL_INC	:ADDRESS:="00000000000000000";		--COL_INC = COLUMN_INCREMENT : MOVE ON THE FIRST ROW IN THE IMAGE ONLY TO START NEW (ROW_INC) CYCLE
SIGNAL	ROW_INC :ADDRESS:="00000000000000000";		--ROW_INC = ROW_INCREMENT : MOVE ON THE COLUMN TILL IT'S END THEN GENERATE CARRY SIGNAL TO RUN THE (COL_INC)
SIGNAL	COL_CNT	:STD_LOGIC_VECTOR(7 DOWNTO 0):=X"00";	--COUNTER FOR THE (COL_INC) MOVE
SIGNAL	ROW_CNT	:STD_LOGIC_VECTOR(7 DOWNTO 0):=X"00";	--COUNTER FOR THE (ROW_COL) MOVE
SIGNAL	CARRY	:STD_LOGIC;				--CARRY SIGNAL RISE IN THE END OF THE COLUMN OF IMAGE
SIGNAL	WINDOW	:STD_LOGIC_VECTOR(7 DOWNTO 0):=X"FF";	--window size


BEGIN

	PROCESS(ENB)
	variable SUB :STD_LOGIC_VECTOR(7 DOWNTO 0);	--VARIABLE FOR SUB_RES
	variable DIV :STD_LOGIC_VECTOR(7 DOWNTO 0);	--VARIABLE FOR DIV_RES
	variable WWW :STD_LOGIC_VECTOR(7 DOWNTO 0);	--VARIABLE FOR W
	variable C_I :ADDRESS;				--VARIABLE FOR COL_INC
	variable R_I :ADDRESS;				--VARIABLE FOR ROW_INC	
	variable C_N :STD_LOGIC_VECTOR(7 DOWNTO 0);	--VARIABLE FOR COL_CNT 
	variable R_N :STD_LOGIC_VECTOR(7 DOWNTO 0);	--VARIABLE FOR ROW_CNT
--	variable WWW :STD_LOGIC_VECTOR(7 DOWNTO 0);


	BEGIN
		SUB 	:= WINDOW - FILTER;
		DIV	:= SUB(6 DOWNTO 0)&'0';
		WWW	:= DIV +1 WHEN STRIDE ='0'
		ELSE	   DIV +2 WHEN STRIDE ='1';

	
	
		IF(RISING_EDGE(ENB))THEN
			C_I	:= WWW + C_I;
			C_N 	:= C_N + 1;
			IF(C_N = X"FF")THEN
				CARRY <= '1';
				C_N := X"00";
			END IF;
		END IF;





		IF(RISING_EDGE(CARRY))THEN
			R_I	:= C_I + 1;
			C_I	:= R_I;
			R_N 	:= R_N + 1;
			IF(R_N = X"FF")THEN
				ACK <= '1';
				R_N :=X"00";
			END IF;
		END IF;


		SUB_RES	<= SUB;
		DIV_rES	<= DIV;
		W	<= WWW;
		COL_INC	<= C_I;
		ROW_INC	<= R_I;
		COL_CNT	<= C_N;
		ROW_CNT	<= R_N;
		ADRS <= COL_INC;


	END PROCESS;
	




END ARCHITECTURE SETTER_ARCH;