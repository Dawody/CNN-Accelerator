
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE WORK.PKG.ALL;

ENTITY dma_controller IS
	PORT(
        rst             : IN std_logic;
		filter_data 	: IN std_logic;
		read_sig 		: IN std_logic;
        stride          : IN std_logic;
        clk             : IN std_logic;
		ram_address     : OUT ADDRESS;
        shift_signal    : OUT std_logic;
        shift_signal2   : OUT std_logic;
        DATA_ACK        : OUT std_logic);
END ENTITY dma_controller;


ARCHITECTURE architecture1 OF dma_controller IS
    SIGNAL counter   :std_logic_vector(2 DOWNTO 0):="000";
    -- SIGNAL ram_addr2  :ADDRESS:=x"10000";
      
    
	--SIGNAL start  :std_logic:='0';
	--SIGNAL first  :std_logic:='0';
   -- SIGNAL rising  :std_logic:='0';
    -- SIGNAL start  :std_logic:='0';
	BEGIN
	PROCESS (clk,read_sig)
    
    variable ram_addr  :ADDRESS:="00000000000000000";
	variable start :std_logic:='0';
	variable rising :std_logic:='0';
	variable first :std_logic:='0';
    variable first2 :std_logic:='0';
    variable start_filter :std_logic:='0';
	-- variable ram_addr  :ADDRESS:="00000000000000000";
	variable counter2  :ADDRESS:="00000000000000000"; 
	BEGIN
        

        IF rst = '1' then
		DATA_ACK <= '0';
            shift_signal <= '0';
            shift_signal2 <= '0';
	    start_filter := '0';
            start := '0';
            rising := '0';
            counter <= "000";
            counter2 := "00000000000000000";
	        ram_addr := "00000000000000000";
            first := '0';
            first2 := '0';
        ELSIF(rising_edge(clk)) THEN
            IF(read_sig = '1' and rising = '0' and first2 = '1') THEN
                    start := '1';
                    rising := '1';
            ELSIF(read_sig = '1' and rising = '0' and first2 = '0') THEN
                first2 := '1';
                rising := '1';
                IF (filter_data = '0') THEN
                    start_filter := '1';
                    ram_addr := "01111111111111011";
                ELSE
                    ram_addr := "00000000000000000";
                    start := '1';
                END IF;
            ELSIF(read_sig = '0') THEN   
                rising := '0';
            END IF;
            IF(start_filter = '1') THEN
                IF(ram_addr <= x"1000F") THEN
                    shift_signal2 <= '1';
                    ram_addr := ram_addr + 5;  
                else
                    shift_signal2 <= '0';
                    ram_addr := "00000000000000000";
                    start := '1';
                    start_filter := '0';
                end if;
            END IF;
                
            IF(start ='1') THEN
                IF (stride = '0') then
                    IF (counter = x"1" AND ram_addr > x"004FF" AND ram_addr <=  x"0FFFF") OR (counter = x"5" AND (ram_addr <= x"004FF" OR ram_addr > x"0FFFF")) THEN 
                        start := '0';
                        DATA_ACK <= '1';
                        counter <= "000";
			            shift_signal <= '0';
                    ELSE
                        shift_signal <= '1';
                        DATA_ACK <= '0';
                        if(ram_addr /= x"00000" or first = '1') then
                            if(ram_addr >= x"0FF00") then
                                counter2 := counter2 + 1;
                                ram_addr := counter2;
                            else 
                                ram_addr := ram_addr + 256;
                            end if;
                        else
                            first := '1';
                        end if;
                        counter <= counter + 1;
                        -- IF (ram_addr >= x"10000") THEN
                        --     counter2 := counter2 + 1;
                        --     ram_addr := counter2;
                        -- END if;
                    END IF;
                ELSE
                    IF (counter = x"2" AND ram_addr > x"004FF" AND ram_addr <=  x"0FFFF") OR (counter = x"5" AND (ram_addr <= x"004FF" OR ram_addr > x"0FFFF")) THEN 
                        start := '0';
                        DATA_ACK <= '1';
                        counter <= "000";
			            shift_signal <= '0';
                    ELSE
                        shift_signal <= '1';
                        DATA_ACK <= '0';
                        if(ram_addr /= x"00000" or first = '1') then
                            if(ram_addr >= x"0FE00") then
                                counter2 := counter2 + 2;
                                ram_addr := counter2;
                            else 
                                ram_addr := ram_addr + 256;
                            end if;
                        else
                            first := '1';
                        end if;
                        counter <= counter + 1;
                        -- IF (ram_addr >= x"10000") THEN
                        --     counter2 := counter2 + 1;
                        --     ram_addr := counter2;
                        -- END if;
                    END IF;
                END IF;
            ELSE
	        	DATA_ACK <= '0';
                shift_signal <= '0';
            END IF;

        END IF;
    ram_address <= ram_addr;
	END PROCESS;
	
			-- if op_mem >= "01100" and op_alu <= "11101" and op_alu /= "10001" and op_alu /= "11011" then
			
	
	
		
		
		
END architecture1;


