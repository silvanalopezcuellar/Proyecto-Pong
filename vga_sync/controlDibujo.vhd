LIBRARY IEEE;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
USE ieee.numeric_std.all;
----------------------------------------------------------------------------------------------------
ENTITY controlDibujo IS
	GENERIC	( 	  Nv						:			INTEGER  := 11;
					  Nh						:			INTEGER  := 11);
	PORT		( 	  clk	               :	IN 	STD_LOGIC;
					  rst	               :	IN 	STD_LOGIC;
					  video_on				:	IN		STD_LOGIC;
					  MaxTickFrame			:	IN		STD_LOGIC;
					  JoyStick1				:	IN		STD_LOGIC_VECTOR(1 DOWNTO 0):="10";
					  JoyStick2				:	IN		STD_LOGIC_VECTOR(1 DOWNTO 0):="10";
					  countv					:	IN		STD_LOGIC_VECTOR(Nv-1 DOWNTO 0);
					  counth					:	IN		STD_LOGIC_VECTOR(Nh-1 DOWNTO 0);
					  pixel					:	OUT	STD_LOGIC_VECTOR(11 DOWNTO 0);
					  Pplayer1				:	OUT	STD_LOGIC_VECTOR(3 DOWNTO 0);
					  Pplayer2				:	OUT	STD_LOGIC_VECTOR(3 DOWNTO 0)
					  ); 
	END ENTITY;
-----------------------------------------------------------------------------------------------------
ARCHITECTURE controlDibujoARCH OF controlDibujo IS

	TYPE state IS (black,white);
	
	SIGNAL pr_state, nx_state: state;
	
	SIGNAL Lim2Mitad : STD_LOGIC_VECTOR(Nv-1 DOWNTO 0);
	SIGNAL Lim1Mitad : STD_LOGIC_VECTOR(Nv-1 DOWNTO 0);
	SIGNAL LimSupBarraL : STD_LOGIC_VECTOR(Nv-1 DOWNTO 0);
	SIGNAL LimInfBarraL : STD_LOGIC_VECTOR(Nv-1 DOWNTO 0);
	SIGNAL LimSupBarraR : STD_LOGIC_VECTOR(Nv-1 DOWNTO 0);
	SIGNAL LimInfBarraR : STD_LOGIC_VECTOR(Nv-1 DOWNTO 0);
	SIGNAL BarraGrosor2 : STD_LOGIC_VECTOR(Nv-1 DOWNTO 0);
	SIGNAL BarraGrosor1 : STD_LOGIC_VECTOR(Nv-1 DOWNTO 0);
	SIGNAL BarraGrosor4 : STD_LOGIC_VECTOR(Nv-1 DOWNTO 0);
	SIGNAL BarraGrosor3 : STD_LOGIC_VECTOR(Nv-1 DOWNTO 0);
	SIGNAL LimiteBolaUp : STD_LOGIC_VECTOR(Nv-1 DOWNTO 0);
	SIGNAL LimiteBolaDown : STD_LOGIC_VECTOR(Nv-1 DOWNTO 0);
	SIGNAL LimiteBolaRight : STD_LOGIC_VECTOR(Nv-1 DOWNTO 0);
	SIGNAL LimiteBolaLeft : STD_LOGIC_VECTOR(Nv-1 DOWNTO 0);
	SIGNAL LimitePantalla : STD_LOGIC_VECTOR(Nv-1 DOWNTO 0);	
	SIGNAL controlBarraRE :	STD_LOGIC_VECTOR(2 DOWNTO 0);
	SIGNAL  controlBolitaE		:		STD_LOGIC_VECTOR(6 DOWNTO 0);
	SIGNAL BarraSupL	: INTEGER:=290;
	SIGNAL BarraInfL	: INTEGER:=190;
	SIGNAL BarraSupR	: INTEGER:=290;
	SIGNAL BarraInfR	: INTEGER:=190;
	SIGNAL Bup			: INTEGER:=245;
	SIGNAL Bdown		: INTEGER:=235;
	SIGNAL Bright		: INTEGER:=648;
	SIGNAL Bleft		: INTEGER:=632;
	SIGNAL InicioBolita : STD_LOGIC;
	
	
BEGIN
-----------------------------------------------------------------------------------------------------
	PROCESS(JoyStick1,JoyStick2)
	BEGIN
	IF(JoyStick1="11" OR JoyStick1="00" OR JoyStick2="11" OR JoyStick2="00") THEN
	InicioBolita <= '1';
	ELSE
	InicioBolita <= '0';
	END IF;
	END PROCESS;

	PROCESS(rst,clk)
	BEGIN
		IF	(rst='1') THEN
			pr_state <= black;
		ELSIF (rising_edge(clk)) THEN
			pr_state <= nx_state;
		END IF;
	END PROCESS;
	
	BarraLBLK: ENTITY work.ControlBarraL 
	GENERIC	MAP( 	  Nv 						=> Nv)
	PORT MAP	( 	 	  clk	               =>	MaxTickFrame,
						  rst	               =>	rst,
						  JoyStick1		      =>	JoyStick1,
						  LimSupBarraL			=>	LimSupBarraL,
						  LimInfBarraL			=>	LimInfBarraL,
						  BarraInfL		   	=>	BarraInfL,
						  BarraSupL  			=>	BarraSupL
					);
	
	BarraRBLK: ENTITY work.ControlBarraR 
	GENERIC	MAP( 	  Nv 						=> Nv)
	PORT MAP	( 	 	  clk	               =>	MaxTickFrame,
						  rst	               =>	rst,
						  JoyStick2		      =>	JoyStick2,
						  LimSupBarraR			=>	LimSupBarraR,
						  LimInfBarraR			=>	LimInfBarraR,
						  BarraInfR		   	=>	BarraInfR,
						  BarraSupR  			=>	BarraSupR,
						  controlBarraRE		=> CONtrolBarraRE
					);
	
	BolitaBLK: ENTITY work.ControlBolita	
	GENERIC	MAP(	Nv							=> Nv)
	PORT		MAP( clk	                  =>	MaxTickFrame,
					  rst	              		=>	rst,
					  InicioBolita				=>	InicioBolita,
					  LimSupBarraR				=>	LimSupBarraR,
					  LimInfBarraR				=>	LimInfBarraR,
					  LimSupBarraL				=>	LimSupBarraL,
					  LimInfBarraL				=>	LimInfBarraL,
					  LimiteBolaUp				=>	LimiteBolaUp,
					  LimiteBolaDown			=>	LimiteBolaDown,
					  LimiteBolaRight			=>	LimiteBolaRight,
					  LimiteBolaLeft			=>	LimiteBolaLeft,
					  Bup		   				=>	Bup,
					  Bdown  		   		=>	Bdown,
					  Bright						=>	Bright,
					  Bleft						=>	Bleft,
					  Pplayer1					=>	Pplayer1,
					  Pplayer2					=>	Pplayer2,
					  controlBolitaE			=> controlBolitaE
					  ); 
					  

	 
	-----------------------------------------
	combinational: PROCESS(pr_state, counth, countv)
	BEGIN
				
				
				LimSupBarraL <= STD_LOGIC_VECTOR(TO_UNSIGNED(BarraSupL,Nv));
				LimInfBarraL <= STD_LOGIC_VECTOR(TO_UNSIGNED(BarraInfL,Nv));
				LimSupBarraR <= STD_LOGIC_VECTOR(TO_UNSIGNED(BarraSupR,Nv));
				LimInfBarraR <= STD_LOGIC_VECTOR(TO_UNSIGNED(BarraInfR,Nv));
				
				LimiteBolaUp	<= STD_LOGIC_VECTOR(TO_UNSIGNED(Bup,Nv));
				LimiteBolaDown	<= STD_LOGIC_VECTOR(TO_UNSIGNED(Bdown,Nv));
				LimiteBolaRight<= STD_LOGIC_VECTOR(TO_UNSIGNED(Bright,Nv));
				LimiteBolaLeft	<= STD_LOGIC_VECTOR(TO_UNSIGNED(Bleft,Nv));
		---------------------------------
Lim2Mitad 		<= STD_LOGIC_VECTOR(TO_UNSIGNED(642,Nv));
Lim1Mitad 		<= STD_LOGIC_VECTOR(TO_UNSIGNED(638,Nv));
BarraGrosor2	<= STD_LOGIC_VECTOR(TO_UNSIGNED(24,Nv));
BarraGrosor1 	<= STD_LOGIC_VECTOR(TO_UNSIGNED(4,Nv));
BarraGrosor4	<= STD_LOGIC_VECTOR(TO_UNSIGNED(1276,Nv));
BarraGrosor3 	<= STD_LOGIC_VECTOR(TO_UNSIGNED(1256,Nv));
LimitePantalla <= STD_LOGIC_VECTOR(TO_UNSIGNED(480,Nv));


		
		IF(video_on = '1' ) THEN
		CASE pr_state IS
		
			WHEN white	=>
					pixel				 	<=	"101101101101" ;
					IF 	((counth < Lim2Mitad AND counth >= Lim1Mitad) OR ((countv < LimSupBarraL AND countv >= LimInfBarraL) AND (counth < BarraGrosor2 AND counth >= BarraGrosor1)) OR ((countv < LimSupBarraR AND countv >= LimInfBarraR) AND (counth < BarraGrosor4 AND counth >= BarraGrosor3)) OR ((countv < LimiteBolaUp AND countv >= LimiteBolaDown) AND (counth < LimiteBolaRight AND counth >= LimiteBolaLeft))) THEN
							nx_state 			<= white;
					ELSIF (NOT ((counth < Lim2Mitad AND counth >= Lim1Mitad) OR ((countv < LimSupBarraL AND countv >= LimInfBarraL) AND (counth < BarraGrosor2 AND counth >= BarraGrosor1)) OR ((countv < LimSupBarraR AND countv >= LimInfBarraR) AND (counth < BarraGrosor4 AND counth >= BarraGrosor3)) OR ((countv < LimiteBolaUp AND countv >= LimiteBolaDown) AND (counth < LimiteBolaRight AND counth >= LimiteBolaLeft)))) THEN
							nx_state 			<= black;
					END IF;
				
					
			WHEN black	=>
					pixel				 	<=	"000000000000";
					IF 	(NOT ((counth < Lim2Mitad AND counth >= Lim1Mitad) OR ((countv < LimSupBarraL AND countv >= LimInfBarraL) AND (counth < BarraGrosor2 AND counth >= BarraGrosor1)) OR ((countv < LimSupBarraR AND countv >= LimInfBarraR) AND (counth < BarraGrosor4 AND counth >= BarraGrosor3)) OR ((countv < LimiteBolaUp AND countv >= LimiteBolaDown) AND (counth < LimiteBolaRight AND counth >= LimiteBolaLeft)))) THEN
					nx_state 			<= black;
					ELSIF ((counth < Lim2Mitad AND counth >= Lim1Mitad) OR ((countv < LimSupBarraL AND countv >= LimInfBarraL) AND (counth < BarraGrosor2 AND counth >= BarraGrosor1)) OR ((countv < LimSupBarraR AND countv >= LimInfBarraR) AND (counth < BarraGrosor4 AND counth >= BarraGrosor3)) OR ((countv < LimiteBolaUp AND countv >= LimiteBolaDown) AND (counth < LimiteBolaRight AND counth >= LimiteBolaLeft))) THEN
					nx_state 			<= white;
					END IF;
					
				END CASE;
		END IF;	
	END PROCESS combinational;
END ARCHITECTURE;