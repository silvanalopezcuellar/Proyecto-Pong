LIBRARY IEEE;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
----------------------------------------------------------------------------------------------------
ENTITY controlBolita_tb IS
	GENERIC	(	Nv						:	INTEGER  := 11);
END ENTITY controlBolita_tb;
----------------------------------
ARCHITECTURE testbench2 OF controlBolita_tb IS
	
SIGNAL  clk	               :	 	STD_LOGIC;
SIGNAL  rst	               :	 	STD_LOGIC;
SIGNAL  InicioBolita			: 		STD_LOGIC;
SIGNAL  LimSupBarraR			:		STD_LOGIC_VECTOR(Nv-1 DOWNTO 0);
SIGNAL  LimInfBarraR			:		STD_LOGIC_VECTOR(Nv-1 DOWNTO 0);
SIGNAL  LimSupBarraL			:		STD_LOGIC_VECTOR(Nv-1 DOWNTO 0);
SIGNAL  LimInfBarraL			:		STD_LOGIC_VECTOR(Nv-1 DOWNTO 0);
SIGNAL  LimiteBolaUp			:		STD_LOGIC_VECTOR(Nv-1 DOWNTO 0);
SIGNAL  LimiteBolaDown		:		STD_LOGIC_VECTOR(Nv-1 DOWNTO 0);
SIGNAL  LimiteBolaRight		:		STD_LOGIC_VECTOR(Nv-1 DOWNTO 0);
SIGNAL  LimiteBolaLeft		:		STD_LOGIC_VECTOR(Nv-1 DOWNTO 0);
SIGNAL  Bup		   			:		INTEGER:=245;
SIGNAL  Bdown  		   	:	 	INTEGER:=235;
SIGNAL  Bright					:	 	INTEGER:=648;
SIGNAL  Bleft					:		INTEGER:=632;
SIGNAL  Pplayer1				:		STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL  Pplayer2				:		STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL  controlBolitaE		:		STD_LOGIC_VECTOR(6 DOWNTO 0);

	
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
		--inicio
		inicioBolita <= '0';
		LimSupBarraR	<= 	STD_LOGIC_VECTOR(to_unsigned(290,11));
		LimInfBarraR	<=		STD_LOGIC_VECTOR(to_unsigned(190,11));
		LimSupBarraL	<=		STD_LOGIC_VECTOR(to_unsigned(290,11));
		LimInfBarraL	<=		STD_LOGIC_VECTOR(to_unsigned(190,11));
		WAIT FOR 60 ns;
		
		--normal
		inicioBolita <= '1';
		LimSupBarraR	<= 	STD_LOGIC_VECTOR(to_unsigned(290,11));
		LimInfBarraR	<=		STD_LOGIC_VECTOR(to_unsigned(190,11));
		LimSupBarraL	<=		STD_LOGIC_VECTOR(to_unsigned(290,11));
		LimInfBarraL	<=		STD_LOGIC_VECTOR(to_unsigned(190,11));
		WAIT FOR 100 ns;
		
		--Hit L bar
		inicioBolita <= '1';
		LimiteBolaUp 		<= STD_LOGIC_VECTOR(to_unsigned(245,11));
		LimiteBolaDown		<=	STD_LOGIC_VECTOR(to_unsigned(235,11));
		LimiteBolaRight 	<= STD_LOGIC_VECTOR(to_unsigned(28,11));
		LimiteBolaLeft		<= STD_LOGIC_VECTOR(to_unsigned(24,11));
		LimSupBarraR	<= 	STD_LOGIC_VECTOR(to_unsigned(290,11));
		LimInfBarraR	<=		STD_LOGIC_VECTOR(to_unsigned(190,11));
		LimSupBarraL	<=		STD_LOGIC_VECTOR(to_unsigned(290,11));
		LimInfBarraL	<=		STD_LOGIC_VECTOR(to_unsigned(190,11));
		WAIT FOR 40 ns;

		--Hit R bar
		inicioBolita <= '1';
		LimiteBolaUp		<=	STD_LOGIC_VECTOR(to_unsigned(245,11));
		LimiteBolaDown		<=	STD_LOGIC_VECTOR(to_unsigned(235,11));
		LimiteBolaRight	<=	STD_LOGIC_VECTOR(to_unsigned(1256,11));
		LimiteBolaLeft		<=	STD_LOGIC_VECTOR(to_unsigned(1252,11));
		LimSupBarraR	<= 	STD_LOGIC_VECTOR(to_unsigned(290,11));
		LimInfBarraR	<=		STD_LOGIC_VECTOR(to_unsigned(190,11));
		LimSupBarraL	<=		STD_LOGIC_VECTOR(to_unsigned(290,11));
		LimInfBarraL	<=		STD_LOGIC_VECTOR(to_unsigned(190,11));
		WAIT FOR 40 ns;
		
		--Lose
		inicioBolita <= '1';
		LimiteBolaUp		<=	STD_LOGIC_VECTOR(to_unsigned(120,11));
		LimiteBolaDown		<=	STD_LOGIC_VECTOR(to_unsigned(110,11));
		LimiteBolaRight	<=	STD_LOGIC_VECTOR(to_unsigned(1257,11));
		LimiteBolaLeft		<=	STD_LOGIC_VECTOR(to_unsigned(1253,11));
		LimSupBarraR	<= 	STD_LOGIC_VECTOR(to_unsigned(290,11));
		LimInfBarraR	<=		STD_LOGIC_VECTOR(to_unsigned(190,11));
		LimSupBarraL	<=		STD_LOGIC_VECTOR(to_unsigned(290,11));
		LimInfBarraL	<=		STD_LOGIC_VECTOR(to_unsigned(190,11));
		WAIT FOR 40 ns;
		
		
		--Poner señales
		
	END PROCESS inGeneration;
	
controlBolitaBLK_tb: ENTITY work.controlBolita
	GENERIC MAP	( 	  Nv => Nv)
	PORT	  MAP (  clk	               =>		clk,
						rst	               =>		rst,
						InicioBolita			=>		inicioBolita,
						LimSupBarraR			=>		limSupBarraR,
						LimInfBarraR			=>		limInfBarraR,
						LimSupBarraL			=>		LimSupBarraL,
						LimInfBarraL			=>		limInfBarraL,
						LimiteBolaUp			=>		limiteBolaUp,
						LimiteBolaDown			=>		limiteBolaDown,
						LimiteBolaRight		=>		LimiteBolaRight,
						LimiteBolaLeft			=>		LimiteBolaLeft,
						Bup		   			=>		Bup,
						Bdown  		   		=>		Bdown,
						Bright					=>		Bright,
						Bleft						=>		Bleft,
						Pplayer1					=>		Pplayer1,
						Pplayer2					=>		Pplayer2,
						controlBolitaE			=>		controlBolitaE);
	--------------------------------------------------					  
END ARCHITECTURE testbench2;	