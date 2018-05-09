LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.numeric_std.all;
USE WORK.PKG.ALL;

ENTITY ram IS
	PORT(
		clk : IN std_logic;
		rd_wt  : IN std_logic;
		ram_address : IN  ADDRESS;
		datain  : IN  BYTE;
		dataout : OUT five_bytes);
END ENTITY ram;

ARCHITECTURE syncrama OF ram IS

	TYPE ram_type IS ARRAY(0 TO 65791) OF BYTE;
	SIGNAL ram : ram_type;
	BEGIN
		PROCESS(clk) IS
			BEGIN
				IF rising_edge(clk) THEN  
					IF rd_wt = '1' THEN
						ram(to_integer(unsigned(ram_address))) <= datain;
					END IF;
				END IF;
		END PROCESS;
		dataout(0) <= ram(to_integer(unsigned(ram_address) + 0));
		dataout(1) <= ram(to_integer(unsigned(ram_address) + 1));
		dataout(2) <= ram(to_integer(unsigned(ram_address) + 2));
		dataout(3) <= ram(to_integer(unsigned(ram_address) + 3));
		dataout(4) <= ram(to_integer(unsigned(ram_address) + 4));
END syncrama;
