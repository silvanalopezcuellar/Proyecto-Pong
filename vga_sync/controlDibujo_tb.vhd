LIBRARY IEEE;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
----------------------------------------------------------------------------------------------------
ENTITY controlDibujo_tb IS
	GENERIC	( 	  Nv						:			INTEGER  := 11;
					  Nh						:			INTEGER  := 11); 
END ENTITY controlDibujo_tb;
----------------------------------
ARCHITECTURE testbench1 OF controlDibujo_tb IS
	
SIGNAL  clk	               :	STD_LOGIC;
SIGNAL  rst	               :	STD_LOGIC;
SIGNAL  video_on				:	STD_LOGIC:='1';
SIGNAL  MaxTickFrame			:	STD_LOGIC;
SIGNAL  JoyStick1				:	STD_LOGIC_VECTOR(1 DOWNTO 0):="10";
SIGNAL  JoyStick2				:	STD_LOGIC_VECTOR(1 DOWNTO 0):="10";
SIGNAL  countv					:	STD_LOGIC_VECTOR(Nv-1 DOWNTO 0);
SIGNAL  counth					:	STD_LOGIC_VECTOR(Nh-1 DOWNTO 0);
SIGNAL  pixel					:	STD_LOGIC_VECTOR(11 DOWNTO 0);

	
BEGIN
	-------------- CLK GENERATION-------------------
	ClkGeneration: PROCESS
	BEGIN
		clk <= '0'; 
		WAIT FOR 10 ns;
		clk <= '1';
		WAIT FOR 10 ns;
	END PROCESS ClkGeneration;
	------------------------------------------------
	rstGeneration: PROCESS
	BEGIN		
		------- RESET GENERATION
		rst		<= '1' AFTER 10 ns,
						'0' AFTER 30 ns;
		WAIT FOR 100000 ms;
	END PROCESS rstGeneration;
	
	inGeneration: PROCESS
	BEGIN
	
		FOR i IN 0 TO 524 LOOP
			countv <= STD_LOGIC_VECTOR(to_unsigned(i,Nh));
			FOR j IN 0 TO 1597 LOOP
				counth <= STD_LOGIC_VECTOR(to_unsigned(j,Nv));
				WAIT FOR 20 ns;
			END LOOP;
		END LOOP;
		
		JoyStick1	<= "01" AFTER 500 us,
							"01" AFTER 30 ms,
							"01" AFTER 60 ms;
		JoyStick1	<= "01" AFTER 500 us,
							"01" AFTER 30 ms,
							"01" AFTER 60 ms;
		
		MaxTickFrame <= '0';
		WAIT FOR 1 ms;
		MaxTickFrame <= '1';
		WAIT FOR 20 ns;
		
		
	END PROCESS inGeneration;
	
controlDibujoBLK_tb: ENTITY work.controlDibujo 
	GENERIC MAP	( 	  Nv => Nv,
						  Nh => Nh)
	PORT	  MAP ( 	  clk => clk,
						  rst => rst,
						  video_on => video_on,
						  MaxTickFrame => MaxTickFrame,
						  JoyStick1 => JoyStick1,
						  JoyStick2 => JoyStick2,
						  countv => countv,
						  counth => counth,
						  pixel  => pixel);
	--------------------------------------------------					  
END ARCHITECTURE testbench1;	