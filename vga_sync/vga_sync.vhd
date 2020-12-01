LIBRARY IEEE;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
----------------------------------------------------------------------------------------------------
ENTITY vga_sync IS
	GENERIC	( Con5      		:			INTEGER  := 33;  
				  N5					:			INTEGER  := 6;
				  Con6      		:			INTEGER  := 480;  
				  N6					:			INTEGER  := 9; 
				  Con7      		:			INTEGER  := 10;  
				  N7					:			INTEGER  := 4;
				  Con8      		:			INTEGER  := 2;  
				  N8					:			INTEGER  := 2;
				  Con1      		:			INTEGER  := 96;  
				  N1					:			INTEGER  := 7;
				  Con2      		:			INTEGER  := 1280;  
				  N2					:			INTEGER  := 11; 
				  Con3      		:			INTEGER  := 32;  
				  N3					:			INTEGER  := 6;
				  Con4      		:			INTEGER  := 192;  
				  N4					:			INTEGER  := 8;
				  Conh      		:			INTEGER  := 1600;  
				  Nh					:			INTEGER  := 11; 
				  Conv      		:			INTEGER  := 1048;  
				  Nv					:			INTEGER  := 11);
	PORT		(	  clk	               :	IN 	STD_LOGIC;
					  rst	               :	IN 	STD_LOGIC;
					  JoyStick1          :	IN 	STD_LOGIC_VECTOR(1 DOWNTO 0):="10";
					  JoyStick2          :	IN 	STD_LOGIC_VECTOR(1 DOWNTO 0):="10";
					  pixel					:	OUT	STD_LOGIC_VECTOR(11 DOWNTO 0);
					  h_video_on_out		:	OUT 	STD_LOGIC;
					  v_video_on_out		:  OUT	STD_LOGIC;
					  linea2					:	BUFFER STD_LOGIC;
					  vsync_out		 		:	OUT	STD_LOGIC;
					  hsync_out		 		:	OUT	STD_LOGIC;
					  Display1 				:	OUT	STD_LOGIC_VECTOR(6 DOWNTO 0);
					  Display2 				:	OUT	STD_LOGIC_VECTOR(6 DOWNTO 0)
				); 
	END ENTITY;
-----------------------------------------------------------------------------------------------------
ARCHITECTURE vga_syncARCH OF vga_sync IS
	
SIGNAL countv										:	STD_LOGIC_VECTOR(Nv-1 DOWNTO 0);	
SIGNAL counth										:	STD_LOGIC_VECTOR(Nh-1 DOWNTO 0);
SIGNAL reloj 										:  STD_LOGIC;
SIGNAL video_on, vh, vv, MaxTickFrame   	:	STD_LOGIC;
SIGNAL Pplayer1, Pplayer2						:  STD_LOGIC_VECTOR(3 DOWNTO 0);

BEGIN
-----------------------------------------------------------------------------------------------------
reloj <= linea2;
video_on <=  vh AND vv;
h_video_on_out <= vh;
v_video_on_out <= vv;

controlDibujoBLK: ENTITY work.controlDibujo 
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
						  pixel  => pixel,
						  Pplayer1=>Pplayer1,
						  Pplayer2=>Pplayer2);
						  
horizontalBLK : ENTITY work.horizontal
	GENERIC	MAP( 	 	Con1 => Con1,
						N1 => N1,
						Con2 => Con2,
						N2 => N2,
						Con3 => Con3,
						N3 => N3,
						Con4 => Con4,
						N4 => N4,
						Conh => Conh,
						Nh	 => Nh)
	 PORT		MAP(	clk => clk,
						rst => rst,
						h_video_on_out => vh,
						hsync_out => hsync_out,
						counth => counth,
						linea => linea2
					);
					
verticalBLK : ENTITY work.vertical
		GENERIC	MAP( 	Con5 => Con5,
							N5 => N5,
							Con6 => Con6,
							N6 => N6,
							Con7 => Con7,
							N7 => N7,
							Con8 => Con8,
							N8 => N8,
							Conv => Conv,
						   Nv	 => Nv)
		PORT	 MAP	(	clk => reloj,
							rst => rst,
							v_video_on_out => vv,
							vsync_out => vsync_out,
							countv => countv,
							MaxTickFrame => MaxTickFrame
						);

Display1BLK	:	ENTITY work.bin_to_sseg
		PORT	 MAP( Player	=> Pplayer1,
						Display	=> Display1
						);
						
Display2BLK	:	ENTITY work.bin_to_sseg
		PORT	 MAP( Player	=> Pplayer2,
						Display	=> Display2
						);
							
END ARCHITECTURE;