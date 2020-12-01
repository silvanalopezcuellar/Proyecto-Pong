LIBRARY IEEE;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
----------------------------------------------------------------------------------------------------
ENTITY vga_sync_tb IS
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
				  N4					:			INTEGER  := 8);
END ENTITY vga_sync_tb;
----------------------------------
ARCHITECTURE testbench OF vga_sync_tb IS
	SIGNAL  clk	               :	STD_LOGIC:= '0';
	SIGNAL  rst	               :	STD_LOGIC:= '1';
	SIGNAL  pixel					:	STD_LOGIC_VECTOR(11 DOWNTO 0);
	SIGNAL  h_video_on_out		: 	STD_LOGIC;
	SIGNAL  v_video_on_out		:	STD_LOGIC;
	SIGNAL  vsync_out		 		:	STD_LOGIC;
	SIGNAL  linea2					:  STD_LOGIC;
	SIGNAL  hsync_out		 		:	STD_LOGIC;
	SIGNAL  JoyStick1          : 	STD_LOGIC_VECTOR(1 DOWNTO 0):="10";
	SIGNAL  JoyStick2          : 	STD_LOGIC_VECTOR(1 DOWNTO 0):="10";
	SIGNAL  Display1 				:	STD_LOGIC_VECTOR(6 DOWNTO 0);
	SIGNAL  Display2 				:	STD_LOGIC_VECTOR(6 DOWNTO 0);

	
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
	testGeneration: PROCESS
	BEGIN		
		------- RESET GENERATION
		rst		<= '1' AFTER 10 ns,
						'0' AFTER 30 ns;
		WAIT FOR 100000 ms;
	END PROCESS testGeneration;
	
		JoyStick1	<= "01" AFTER 500 us,
							"00" AFTER 30 ms,
							"11" AFTER 60 ms;
		JoyStick2	<= "01" AFTER 500 us,
							"00" AFTER 30 ms,
							"11" AFTER 60 ms;
	
	SemModule: ENTITY work.vga_sync
   GENERIC MAP( Con5       => Con5,  
					 N5			=> N5, 
					 Con6      	=> Con6, 
					 N6       	=> N6,
					  Con7        	=> Con7,
					  N7      		=> N7,
					  Con8        	=> Con8,
					  N8      		=> N8,
					  Con1        	=> Con1,
					  N1      		=> N1,
					  Con2        	=> Con2,
					  N2       		=> N2,
					  Con3        	=> Con3,
					  N3      		=> N3,
					  Con4        	=> Con4,
					  N4      		=> N4)
	PORT MAP(	clk			=> clk, 
					rst			=>	rst,
					JoyStick1	=> JoyStick1,
					JoyStick2	=> JoyStick2,
					pixel			=>	pixel,			
					h_video_on_out			=>	h_video_on_out,
					v_video_on_out			=>	v_video_on_out,
					linea2 					=> linea2,
					vsync_out				=>	vsync_out,
					hsync_out				=>	hsync_out,
					Display1					=> Display1,
					Display2					=> Display2
					
	);
	--------------------------------------------------					  
END ARCHITECTURE testbench;	