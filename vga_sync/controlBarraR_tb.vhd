LIBRARY IEEE;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
----------------------------------------------------------------------------------------------------
ENTITY controlBarraR_tb IS
	GENERIC	(	Nv						:	INTEGER  := 11);
END ENTITY controlBarraR_tb;
----------------------------------
ARCHITECTURE testbench2 OF controlBarraR_tb IS
	
SIGNAL  clk	               : 	STD_LOGIC;
SIGNAL  rst	               : 	STD_LOGIC;
SIGNAL  JoyStick2		      : 	STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL  LimSupBarraR			:	STD_LOGIC_VECTOR(Nv-1 DOWNTO 0):="00111011010";
SIGNAL  LimInfBarraR			:	STD_LOGIC_VECTOR(Nv-1 DOWNTO 0):="00000000100";
SIGNAL  BarraInfR		   	:	INTEGER:=190;
SIGNAL  BarraSupR  		   :	INTEGER:=290;
SIGNAL  controlBarraRE		:	STD_LOGIC_VECTOR(2 DOWNTO 0):= "010";

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
		
		JoyStick2 <= "00";
		WAIT FOR 150 ns;	
		JoyStick2 <= "11";
		WAIT FOR 100 ns;
		JoyStick2 <= "01";
		WAIT FOR 100 ns;
		JoyStick2 <= "10";
		WAIT FOR  100 ns;
		
		LimSupBarraR <= "00111011010";
		LimInfBarraR <= "00000000100";

		
		
	END PROCESS inGeneration;
	
controlBarraRBLK_tb: ENTITY work.controlBarraR
	GENERIC MAP	( 	Nv => Nv)
	PORT	  MAP (  clk	              =>	 clk,
						rst	              =>	 rst,
						JoyStick2		     =>	 JoyStick2,
						LimSupBarraR		  =>	 LimSupBarraR,
						LimInfBarraR		  =>	 LimInfBarraR,
						BarraInfR		     =>   BarraInfR,
						BarraSupR  		     =>   BarraSupR,
						controlBarraRE		  =>	 controlBarraRE);
	--------------------------------------------------					  
END ARCHITECTURE testbench2;	