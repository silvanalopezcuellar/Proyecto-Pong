-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version"

-- DATE "03/23/2019 15:43:52"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	vga_sync IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	pixel : OUT std_logic_vector(11 DOWNTO 0);
	h_video_on_out : OUT std_logic;
	v_video_on_out : OUT std_logic;
	vsync_out : OUT std_logic;
	hsync_out : OUT std_logic
	);
END vga_sync;

-- Design Ports Information
-- pixel[0]	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel[1]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel[2]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel[3]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel[4]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel[5]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel[6]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel[7]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel[8]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel[9]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel[10]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pixel[11]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- h_video_on_out	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- v_video_on_out	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vsync_out	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- hsync_out	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF vga_sync IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_pixel : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_h_video_on_out : std_logic;
SIGNAL ww_v_video_on_out : std_logic;
SIGNAL ww_vsync_out : std_logic;
SIGNAL ww_hsync_out : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \horizontalBLK|BIST|Add0~6_combout\ : std_logic;
SIGNAL \horizontalBLK|BIST|Add0~10_combout\ : std_logic;
SIGNAL \horizontalBLK|BIST2|Add0~2_combout\ : std_logic;
SIGNAL \horizontalBLK|BIST2|Add0~8_combout\ : std_logic;
SIGNAL \horizontalBLK|BIST2|Add0~10_combout\ : std_logic;
SIGNAL \horizontalBLK|BIST2|Add0~18_combout\ : std_logic;
SIGNAL \verticalBLK|BIST|Add0~0_combout\ : std_logic;
SIGNAL \verticalBLK|BIST|Add0~6_combout\ : std_logic;
SIGNAL \verticalBLK|BIST|Add0~10_combout\ : std_logic;
SIGNAL \verticalBLK|BIST|Add0~12_combout\ : std_logic;
SIGNAL \verticalBLK|BIST|Add0~14_combout\ : std_logic;
SIGNAL \verticalBLK|BIST2|Add0~23_combout\ : std_logic;
SIGNAL \verticalBLK|BIST2|Add0~25_combout\ : std_logic;
SIGNAL \verticalBLK|BIST2|Add0~33_combout\ : std_logic;
SIGNAL \verticalBLK|BIST3|Add0~21\ : std_logic;
SIGNAL \verticalBLK|BIST3|Add0~22_combout\ : std_logic;
SIGNAL \verticalBLK|BIST3|Add0~23\ : std_logic;
SIGNAL \verticalBLK|BIST3|Add0~24_combout\ : std_logic;
SIGNAL \verticalBLK|BIST3|Add0~25\ : std_logic;
SIGNAL \verticalBLK|BIST3|Add0~26_combout\ : std_logic;
SIGNAL \verticalBLK|BIST3|Add0~27\ : std_logic;
SIGNAL \verticalBLK|BIST3|Add0~30_combout\ : std_logic;
SIGNAL \verticalBLK|BIST4|Add0~4_combout\ : std_logic;
SIGNAL \verticalBLK|BIST4|Add0~6_combout\ : std_logic;
SIGNAL \verticalBLK|BIST4|Add0~8_combout\ : std_logic;
SIGNAL \verticalBLK|BIST4|Add0~10_combout\ : std_logic;
SIGNAL \verticalBLK|BIST4|Add0~16_combout\ : std_logic;
SIGNAL \verticalBLK|BIST4|Add0~20_combout\ : std_logic;
SIGNAL \horizontalBLK|BIST3|Add0~10_combout\ : std_logic;
SIGNAL \horizontalBLK|BIST4|Add0~10_combout\ : std_logic;
SIGNAL \verticalBLK|BIST|Equal0~2_combout\ : std_logic;
SIGNAL \verticalBLK|BIST2|Equal0~2_combout\ : std_logic;
SIGNAL \verticalBLK|BIST3|Equal0~0_combout\ : std_logic;
SIGNAL \verticalBLK|BIST4|Equal0~2_combout\ : std_logic;
SIGNAL \horizontalBLK|BIST|Add0~15_combout\ : std_logic;
SIGNAL \horizontalBLK|BIST|Add0~21_combout\ : std_logic;
SIGNAL \horizontalBLK|BIST2|Add0~30_combout\ : std_logic;
SIGNAL \verticalBLK|BIST|Add0~43_combout\ : std_logic;
SIGNAL \verticalBLK|BIST|Add0~44_combout\ : std_logic;
SIGNAL \verticalBLK|BIST|Add0~45_combout\ : std_logic;
SIGNAL \verticalBLK|BIST|Add0~47_combout\ : std_logic;
SIGNAL \verticalBLK|BIST|Add0~50_combout\ : std_logic;
SIGNAL \verticalBLK|BIST2|Add0~52_combout\ : std_logic;
SIGNAL \verticalBLK|BIST2|Add0~53_combout\ : std_logic;
SIGNAL \verticalBLK|BIST2|Add0~55_combout\ : std_logic;
SIGNAL \verticalBLK|BIST3|Add0~28_combout\ : std_logic;
SIGNAL \verticalBLK|BIST3|Add0~29_combout\ : std_logic;
SIGNAL \verticalBLK|BIST3|Add0~32_combout\ : std_logic;
SIGNAL \verticalBLK|BIST3|Add0~33_combout\ : std_logic;
SIGNAL \verticalBLK|BIST4|Add0~29_combout\ : std_logic;
SIGNAL \verticalBLK|BIST4|Add0~31_combout\ : std_logic;
SIGNAL \verticalBLK|BIST4|Add0~34_combout\ : std_logic;
SIGNAL \verticalBLK|BIST4|Add0~35_combout\ : std_logic;
SIGNAL \verticalBLK|BIST4|Add0~36_combout\ : std_logic;
SIGNAL \verticalBLK|BIST4|Add0~37_combout\ : std_logic;
SIGNAL \horizontalBLK|BIST3|Add0~12_combout\ : std_logic;
SIGNAL \horizontalBLK|BIST4|Add0~22_combout\ : std_logic;
SIGNAL \pixel[0]~output_o\ : std_logic;
SIGNAL \pixel[1]~output_o\ : std_logic;
SIGNAL \pixel[2]~output_o\ : std_logic;
SIGNAL \pixel[3]~output_o\ : std_logic;
SIGNAL \pixel[4]~output_o\ : std_logic;
SIGNAL \pixel[5]~output_o\ : std_logic;
SIGNAL \pixel[6]~output_o\ : std_logic;
SIGNAL \pixel[7]~output_o\ : std_logic;
SIGNAL \pixel[8]~output_o\ : std_logic;
SIGNAL \pixel[9]~output_o\ : std_logic;
SIGNAL \pixel[10]~output_o\ : std_logic;
SIGNAL \pixel[11]~output_o\ : std_logic;
SIGNAL \h_video_on_out~output_o\ : std_logic;
SIGNAL \v_video_on_out~output_o\ : std_logic;
SIGNAL \vsync_out~output_o\ : std_logic;
SIGNAL \hsync_out~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \horizontalBLK|DUT|Selector2~0_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \horizontalBLK|DUT|pr_state.tres~q\ : std_logic;
SIGNAL \horizontalBLK|BIST3|Add0~0_combout\ : std_logic;
SIGNAL \horizontalBLK|BIST3|Add0~13_combout\ : std_logic;
SIGNAL \horizontalBLK|BIST3|Add0~1\ : std_logic;
SIGNAL \horizontalBLK|BIST3|Add0~2_combout\ : std_logic;
SIGNAL \horizontalBLK|BIST3|Add0~20_combout\ : std_logic;
SIGNAL \horizontalBLK|BIST3|Add0~3\ : std_logic;
SIGNAL \horizontalBLK|BIST3|Add0~4_combout\ : std_logic;
SIGNAL \horizontalBLK|BIST3|Add0~19_combout\ : std_logic;
SIGNAL \horizontalBLK|BIST3|Add0~5\ : std_logic;
SIGNAL \horizontalBLK|BIST3|Add0~6_combout\ : std_logic;
SIGNAL \horizontalBLK|BIST3|Add0~18_combout\ : std_logic;
SIGNAL \horizontalBLK|BIST3|Add0~7\ : std_logic;
SIGNAL \horizontalBLK|BIST3|Add0~8_combout\ : std_logic;
SIGNAL \horizontalBLK|BIST3|Add0~17_combout\ : std_logic;
SIGNAL \horizontalBLK|BIST3|Add0~9\ : std_logic;
SIGNAL \horizontalBLK|BIST3|Add0~11\ : std_logic;
SIGNAL \horizontalBLK|BIST3|Add0~14_combout\ : std_logic;
SIGNAL \horizontalBLK|BIST3|Add0~16_combout\ : std_logic;
SIGNAL \horizontalBLK|BIST3|Equal0~0_combout\ : std_logic;
SIGNAL \horizontalBLK|BIST3|Equal0~1_combout\ : std_logic;
SIGNAL \horizontalBLK|DUT|Selector3~0_combout\ : std_logic;
SIGNAL \horizontalBLK|DUT|pr_state.cuatro~q\ : std_logic;
SIGNAL \horizontalBLK|BIST4|Add0~0_combout\ : std_logic;
SIGNAL \horizontalBLK|BIST4|Add0~18_combout\ : std_logic;
SIGNAL \horizontalBLK|BIST4|Add0~1\ : std_logic;
SIGNAL \horizontalBLK|BIST4|Add0~2_combout\ : std_logic;
SIGNAL \horizontalBLK|BIST4|Add0~26_combout\ : std_logic;
SIGNAL \horizontalBLK|BIST4|Add0~3\ : std_logic;
SIGNAL \horizontalBLK|BIST4|Add0~4_combout\ : std_logic;
SIGNAL \horizontalBLK|BIST4|Add0~25_combout\ : std_logic;
SIGNAL \horizontalBLK|BIST4|Add0~5\ : std_logic;
SIGNAL \horizontalBLK|BIST4|Add0~6_combout\ : std_logic;
SIGNAL \horizontalBLK|BIST4|Add0~24_combout\ : std_logic;
SIGNAL \horizontalBLK|BIST4|Add0~7\ : std_logic;
SIGNAL \horizontalBLK|BIST4|Add0~8_combout\ : std_logic;
SIGNAL \horizontalBLK|BIST4|Add0~23_combout\ : std_logic;
SIGNAL \horizontalBLK|BIST4|Equal0~1_combout\ : std_logic;
SIGNAL \horizontalBLK|BIST4|Add0~9\ : std_logic;
SIGNAL \horizontalBLK|BIST4|Add0~11\ : std_logic;
SIGNAL \horizontalBLK|BIST4|Add0~12_combout\ : std_logic;
SIGNAL \horizontalBLK|BIST4|Add0~17_combout\ : std_logic;
SIGNAL \horizontalBLK|BIST4|Add0~13\ : std_logic;
SIGNAL \horizontalBLK|BIST4|Add0~14_combout\ : std_logic;
SIGNAL \horizontalBLK|BIST4|Add0~16_combout\ : std_logic;
SIGNAL \horizontalBLK|BIST4|Add0~15\ : std_logic;
SIGNAL \horizontalBLK|BIST4|Add0~19_combout\ : std_logic;
SIGNAL \horizontalBLK|BIST4|Add0~21_combout\ : std_logic;
SIGNAL \horizontalBLK|BIST4|Equal0~0_combout\ : std_logic;
SIGNAL \horizontalBLK|BIST4|Equal0~2_combout\ : std_logic;
SIGNAL \horizontalBLK|DUT|Selector0~0_combout\ : std_logic;
SIGNAL \horizontalBLK|DUT|pr_state.uno~q\ : std_logic;
SIGNAL \horizontalBLK|BIST|Add0~1\ : std_logic;
SIGNAL \horizontalBLK|BIST|Add0~3\ : std_logic;
SIGNAL \horizontalBLK|BIST|Add0~5\ : std_logic;
SIGNAL \horizontalBLK|BIST|Add0~7\ : std_logic;
SIGNAL \horizontalBLK|BIST|Add0~9\ : std_logic;
SIGNAL \horizontalBLK|BIST|Add0~11\ : std_logic;
SIGNAL \horizontalBLK|BIST|Add0~12_combout\ : std_logic;
SIGNAL \horizontalBLK|BIST|Add0~14_combout\ : std_logic;
SIGNAL \horizontalBLK|BIST|Add0~13\ : std_logic;
SIGNAL \horizontalBLK|BIST|Add0~17_combout\ : std_logic;
SIGNAL \horizontalBLK|BIST|Add0~19_combout\ : std_logic;
SIGNAL \horizontalBLK|BIST|Add0~0_combout\ : std_logic;
SIGNAL \horizontalBLK|BIST|Add0~16_combout\ : std_logic;
SIGNAL \horizontalBLK|BIST|Equal0~0_combout\ : std_logic;
SIGNAL \horizontalBLK|BIST|Add0~8_combout\ : std_logic;
SIGNAL \horizontalBLK|BIST|Add0~20_combout\ : std_logic;
SIGNAL \horizontalBLK|BIST|Add0~4_combout\ : std_logic;
SIGNAL \horizontalBLK|BIST|Add0~22_combout\ : std_logic;
SIGNAL \horizontalBLK|BIST|Add0~2_combout\ : std_logic;
SIGNAL \horizontalBLK|BIST|Add0~23_combout\ : std_logic;
SIGNAL \horizontalBLK|BIST|Equal0~1_combout\ : std_logic;
SIGNAL \horizontalBLK|BIST|Equal0~2_combout\ : std_logic;
SIGNAL \horizontalBLK|DUT|Selector1~0_combout\ : std_logic;
SIGNAL \horizontalBLK|DUT|pr_state.dos~q\ : std_logic;
SIGNAL \horizontalBLK|BIST2|Add0~33_combout\ : std_logic;
SIGNAL \horizontalBLK|BIST2|Add0~1\ : std_logic;
SIGNAL \horizontalBLK|BIST2|Add0~3\ : std_logic;
SIGNAL \horizontalBLK|BIST2|Add0~5\ : std_logic;
SIGNAL \horizontalBLK|BIST2|Add0~7\ : std_logic;
SIGNAL \horizontalBLK|BIST2|Add0~9\ : std_logic;
SIGNAL \horizontalBLK|BIST2|Add0~11\ : std_logic;
SIGNAL \horizontalBLK|BIST2|Add0~12_combout\ : std_logic;
SIGNAL \horizontalBLK|BIST2|Add0~32_combout\ : std_logic;
SIGNAL \horizontalBLK|BIST2|Add0~13\ : std_logic;
SIGNAL \horizontalBLK|BIST2|Add0~15\ : std_logic;
SIGNAL \horizontalBLK|BIST2|Add0~17\ : std_logic;
SIGNAL \horizontalBLK|BIST2|Add0~19\ : std_logic;
SIGNAL \horizontalBLK|BIST2|Add0~20_combout\ : std_logic;
SIGNAL \horizontalBLK|BIST2|Add0~28_combout\ : std_logic;
SIGNAL \horizontalBLK|BIST2|Add0~14_combout\ : std_logic;
SIGNAL \horizontalBLK|BIST2|Add0~31_combout\ : std_logic;
SIGNAL \horizontalBLK|BIST2|Add0~16_combout\ : std_logic;
SIGNAL \horizontalBLK|BIST2|Add0~29_combout\ : std_logic;
SIGNAL \horizontalBLK|BIST2|Equal0~1_combout\ : std_logic;
SIGNAL \horizontalBLK|BIST2|Add0~34_combout\ : std_logic;
SIGNAL \horizontalBLK|BIST2|Equal0~2_combout\ : std_logic;
SIGNAL \horizontalBLK|BIST2|Add0~21\ : std_logic;
SIGNAL \horizontalBLK|BIST2|Add0~22_combout\ : std_logic;
SIGNAL \horizontalBLK|BIST2|Add0~24_combout\ : std_logic;
SIGNAL \horizontalBLK|BIST2|Add0~4_combout\ : std_logic;
SIGNAL \horizontalBLK|BIST2|Add0~27_combout\ : std_logic;
SIGNAL \horizontalBLK|BIST2|Equal0~0_combout\ : std_logic;
SIGNAL \horizontalBLK|BIST2|Equal0~3_combout\ : std_logic;
SIGNAL \horizontalBLK|BIST2|Add0~0_combout\ : std_logic;
SIGNAL \horizontalBLK|BIST2|Add0~26_combout\ : std_logic;
SIGNAL \horizontalBLK|BIST2|Add0~25_combout\ : std_logic;
SIGNAL \controlDibujoBLK|combinational~0_combout\ : std_logic;
SIGNAL \verticalBLK|BIST|Add0~1\ : std_logic;
SIGNAL \verticalBLK|BIST|Add0~3\ : std_logic;
SIGNAL \verticalBLK|BIST|Add0~4_combout\ : std_logic;
SIGNAL \verticalBLK|BIST2|Add0~0_combout\ : std_logic;
SIGNAL \verticalBLK|BIST2|Add0~42_combout\ : std_logic;
SIGNAL \verticalBLK|BIST2|Add0~1\ : std_logic;
SIGNAL \verticalBLK|BIST2|Add0~2_combout\ : std_logic;
SIGNAL \verticalBLK|BIST2|Add0~49_combout\ : std_logic;
SIGNAL \verticalBLK|BIST2|Add0~3\ : std_logic;
SIGNAL \verticalBLK|BIST2|Add0~4_combout\ : std_logic;
SIGNAL \verticalBLK|BIST2|Add0~54_combout\ : std_logic;
SIGNAL \verticalBLK|BIST2|Add0~5\ : std_logic;
SIGNAL \verticalBLK|BIST2|Add0~6_combout\ : std_logic;
SIGNAL \verticalBLK|BIST2|Add0~8_combout\ : std_logic;
SIGNAL \verticalBLK|BIST2|Add0~7\ : std_logic;
SIGNAL \verticalBLK|BIST2|Add0~9_combout\ : std_logic;
SIGNAL \verticalBLK|BIST2|Add0~48_combout\ : std_logic;
SIGNAL \verticalBLK|BIST2|Equal0~1_combout\ : std_logic;
SIGNAL \verticalBLK|BIST2|Add0~10\ : std_logic;
SIGNAL \verticalBLK|BIST2|Add0~12\ : std_logic;
SIGNAL \verticalBLK|BIST2|Add0~13_combout\ : std_logic;
SIGNAL \verticalBLK|BIST2|Add0~46_combout\ : std_logic;
SIGNAL \verticalBLK|BIST2|Add0~14\ : std_logic;
SIGNAL \verticalBLK|BIST2|Add0~15_combout\ : std_logic;
SIGNAL \verticalBLK|BIST2|Add0~62_combout\ : std_logic;
SIGNAL \verticalBLK|BIST2|Add0~16\ : std_logic;
SIGNAL \verticalBLK|BIST2|Add0~17_combout\ : std_logic;
SIGNAL \verticalBLK|BIST2|Add0~61_combout\ : std_logic;
SIGNAL \verticalBLK|BIST2|Add0~18\ : std_logic;
SIGNAL \verticalBLK|BIST2|Add0~19_combout\ : std_logic;
SIGNAL \verticalBLK|BIST2|Add0~60_combout\ : std_logic;
SIGNAL \verticalBLK|BIST2|Add0~20\ : std_logic;
SIGNAL \verticalBLK|BIST2|Add0~22\ : std_logic;
SIGNAL \verticalBLK|BIST2|Add0~24\ : std_logic;
SIGNAL \verticalBLK|BIST2|Add0~26\ : std_logic;
SIGNAL \verticalBLK|BIST2|Add0~27_combout\ : std_logic;
SIGNAL \verticalBLK|BIST2|Add0~51_combout\ : std_logic;
SIGNAL \verticalBLK|BIST2|Add0~28\ : std_logic;
SIGNAL \verticalBLK|BIST2|Add0~29_combout\ : std_logic;
SIGNAL \verticalBLK|BIST2|Add0~50_combout\ : std_logic;
SIGNAL \verticalBLK|BIST2|Add0~30\ : std_logic;
SIGNAL \verticalBLK|BIST2|Add0~32\ : std_logic;
SIGNAL \verticalBLK|BIST2|Add0~34\ : std_logic;
SIGNAL \verticalBLK|BIST2|Add0~36\ : std_logic;
SIGNAL \verticalBLK|BIST2|Add0~38\ : std_logic;
SIGNAL \verticalBLK|BIST2|Add0~39_combout\ : std_logic;
SIGNAL \verticalBLK|BIST2|Add0~41_combout\ : std_logic;
SIGNAL \verticalBLK|BIST2|Add0~40\ : std_logic;
SIGNAL \verticalBLK|BIST2|Add0~43_combout\ : std_logic;
SIGNAL \verticalBLK|BIST2|Add0~45_combout\ : std_logic;
SIGNAL \verticalBLK|BIST2|Equal0~0_combout\ : std_logic;
SIGNAL \verticalBLK|BIST2|Add0~21_combout\ : std_logic;
SIGNAL \verticalBLK|BIST2|Add0~59_combout\ : std_logic;
SIGNAL \verticalBLK|BIST2|Equal0~4_combout\ : std_logic;
SIGNAL \verticalBLK|BIST2|Add0~37_combout\ : std_logic;
SIGNAL \verticalBLK|BIST2|Add0~56_combout\ : std_logic;
SIGNAL \verticalBLK|BIST2|Add0~35_combout\ : std_logic;
SIGNAL \verticalBLK|BIST2|Add0~57_combout\ : std_logic;
SIGNAL \verticalBLK|BIST2|Add0~31_combout\ : std_logic;
SIGNAL \verticalBLK|BIST2|Add0~58_combout\ : std_logic;
SIGNAL \verticalBLK|BIST2|Equal0~3_combout\ : std_logic;
SIGNAL \verticalBLK|BIST2|Equal0~5_combout\ : std_logic;
SIGNAL \verticalBLK|BIST2|Equal0~6_combout\ : std_logic;
SIGNAL \verticalBLK|DUT|Selector2~0_combout\ : std_logic;
SIGNAL \verticalBLK|DUT|pr_state.tres~q\ : std_logic;
SIGNAL \verticalBLK|BIST3|Add0~0_combout\ : std_logic;
SIGNAL \verticalBLK|BIST3|Add0~44_combout\ : std_logic;
SIGNAL \verticalBLK|BIST3|Add0~1\ : std_logic;
SIGNAL \verticalBLK|BIST3|Add0~2_combout\ : std_logic;
SIGNAL \verticalBLK|BIST3|Add0~43_combout\ : std_logic;
SIGNAL \verticalBLK|BIST3|Add0~3\ : std_logic;
SIGNAL \verticalBLK|BIST3|Add0~4_combout\ : std_logic;
SIGNAL \verticalBLK|BIST3|Add0~42_combout\ : std_logic;
SIGNAL \verticalBLK|BIST3|Add0~5\ : std_logic;
SIGNAL \verticalBLK|BIST3|Add0~6_combout\ : std_logic;
SIGNAL \verticalBLK|BIST3|Add0~41_combout\ : std_logic;
SIGNAL \verticalBLK|BIST3|Add0~7\ : std_logic;
SIGNAL \verticalBLK|BIST3|Add0~8_combout\ : std_logic;
SIGNAL \verticalBLK|BIST3|Add0~40_combout\ : std_logic;
SIGNAL \verticalBLK|BIST3|Add0~9\ : std_logic;
SIGNAL \verticalBLK|BIST3|Add0~10_combout\ : std_logic;
SIGNAL \verticalBLK|BIST3|Add0~39_combout\ : std_logic;
SIGNAL \verticalBLK|BIST3|Add0~11\ : std_logic;
SIGNAL \verticalBLK|BIST3|Add0~12_combout\ : std_logic;
SIGNAL \verticalBLK|BIST3|Add0~38_combout\ : std_logic;
SIGNAL \verticalBLK|BIST3|Add0~13\ : std_logic;
SIGNAL \verticalBLK|BIST3|Add0~14_combout\ : std_logic;
SIGNAL \verticalBLK|BIST3|Add0~37_combout\ : std_logic;
SIGNAL \verticalBLK|BIST3|Add0~15\ : std_logic;
SIGNAL \verticalBLK|BIST3|Add0~16_combout\ : std_logic;
SIGNAL \verticalBLK|BIST3|Add0~36_combout\ : std_logic;
SIGNAL \verticalBLK|BIST3|Add0~17\ : std_logic;
SIGNAL \verticalBLK|BIST3|Add0~18_combout\ : std_logic;
SIGNAL \verticalBLK|BIST3|Add0~34_combout\ : std_logic;
SIGNAL \verticalBLK|BIST3|Add0~19\ : std_logic;
SIGNAL \verticalBLK|BIST3|Add0~20_combout\ : std_logic;
SIGNAL \verticalBLK|BIST3|Add0~35_combout\ : std_logic;
SIGNAL \verticalBLK|BIST3|Equal0~1_combout\ : std_logic;
SIGNAL \verticalBLK|BIST3|Equal0~3_combout\ : std_logic;
SIGNAL \verticalBLK|BIST3|Equal0~2_combout\ : std_logic;
SIGNAL \verticalBLK|BIST3|Equal0~4_combout\ : std_logic;
SIGNAL \verticalBLK|DUT|Selector3~0_combout\ : std_logic;
SIGNAL \verticalBLK|DUT|pr_state.cuatro~q\ : std_logic;
SIGNAL \verticalBLK|BIST4|Add0~1\ : std_logic;
SIGNAL \verticalBLK|BIST4|Add0~2_combout\ : std_logic;
SIGNAL \verticalBLK|BIST4|Add0~38_combout\ : std_logic;
SIGNAL \verticalBLK|BIST4|Add0~3\ : std_logic;
SIGNAL \verticalBLK|BIST4|Add0~5\ : std_logic;
SIGNAL \verticalBLK|BIST4|Add0~7\ : std_logic;
SIGNAL \verticalBLK|BIST4|Add0~9\ : std_logic;
SIGNAL \verticalBLK|BIST4|Add0~11\ : std_logic;
SIGNAL \verticalBLK|BIST4|Add0~13\ : std_logic;
SIGNAL \verticalBLK|BIST4|Add0~15\ : std_logic;
SIGNAL \verticalBLK|BIST4|Add0~17\ : std_logic;
SIGNAL \verticalBLK|BIST4|Add0~18_combout\ : std_logic;
SIGNAL \verticalBLK|BIST4|Add0~30_combout\ : std_logic;
SIGNAL \verticalBLK|BIST4|Add0~19\ : std_logic;
SIGNAL \verticalBLK|BIST4|Add0~21\ : std_logic;
SIGNAL \verticalBLK|BIST4|Add0~22_combout\ : std_logic;
SIGNAL \verticalBLK|BIST4|Add0~24_combout\ : std_logic;
SIGNAL \verticalBLK|BIST4|Add0~23\ : std_logic;
SIGNAL \verticalBLK|BIST4|Add0~26_combout\ : std_logic;
SIGNAL \verticalBLK|BIST4|Add0~28_combout\ : std_logic;
SIGNAL \verticalBLK|BIST4|Add0~0_combout\ : std_logic;
SIGNAL \verticalBLK|BIST4|Add0~25_combout\ : std_logic;
SIGNAL \verticalBLK|BIST4|Equal0~0_combout\ : std_logic;
SIGNAL \verticalBLK|BIST4|Add0~12_combout\ : std_logic;
SIGNAL \verticalBLK|BIST4|Add0~33_combout\ : std_logic;
SIGNAL \verticalBLK|BIST4|Add0~14_combout\ : std_logic;
SIGNAL \verticalBLK|BIST4|Add0~32_combout\ : std_logic;
SIGNAL \verticalBLK|BIST4|Equal0~1_combout\ : std_logic;
SIGNAL \verticalBLK|BIST4|Equal0~3_combout\ : std_logic;
SIGNAL \verticalBLK|DUT|Selector0~0_combout\ : std_logic;
SIGNAL \verticalBLK|DUT|pr_state.uno~q\ : std_logic;
SIGNAL \verticalBLK|BIST|Add0~48_combout\ : std_logic;
SIGNAL \verticalBLK|BIST|Add0~2_combout\ : std_logic;
SIGNAL \verticalBLK|BIST|Add0~49_combout\ : std_logic;
SIGNAL \verticalBLK|BIST|Add0~5\ : std_logic;
SIGNAL \verticalBLK|BIST|Add0~7\ : std_logic;
SIGNAL \verticalBLK|BIST|Add0~8_combout\ : std_logic;
SIGNAL \verticalBLK|BIST|Add0~46_combout\ : std_logic;
SIGNAL \verticalBLK|BIST|Equal0~3_combout\ : std_logic;
SIGNAL \verticalBLK|BIST|Add0~9\ : std_logic;
SIGNAL \verticalBLK|BIST|Add0~11\ : std_logic;
SIGNAL \verticalBLK|BIST|Add0~13\ : std_logic;
SIGNAL \verticalBLK|BIST|Add0~15\ : std_logic;
SIGNAL \verticalBLK|BIST|Add0~16_combout\ : std_logic;
SIGNAL \verticalBLK|BIST|Add0~42_combout\ : std_logic;
SIGNAL \verticalBLK|BIST|Add0~17\ : std_logic;
SIGNAL \verticalBLK|BIST|Add0~18_combout\ : std_logic;
SIGNAL \verticalBLK|BIST|Add0~41_combout\ : std_logic;
SIGNAL \verticalBLK|BIST|Add0~19\ : std_logic;
SIGNAL \verticalBLK|BIST|Add0~21\ : std_logic;
SIGNAL \verticalBLK|BIST|Add0~22_combout\ : std_logic;
SIGNAL \verticalBLK|BIST|Add0~40_combout\ : std_logic;
SIGNAL \verticalBLK|BIST|Add0~23\ : std_logic;
SIGNAL \verticalBLK|BIST|Add0~24_combout\ : std_logic;
SIGNAL \verticalBLK|BIST|Add0~39_combout\ : std_logic;
SIGNAL \verticalBLK|BIST|Add0~25\ : std_logic;
SIGNAL \verticalBLK|BIST|Add0~26_combout\ : std_logic;
SIGNAL \verticalBLK|BIST|Add0~33_combout\ : std_logic;
SIGNAL \verticalBLK|BIST|Add0~27\ : std_logic;
SIGNAL \verticalBLK|BIST|Add0~28_combout\ : std_logic;
SIGNAL \verticalBLK|BIST|Add0~37_combout\ : std_logic;
SIGNAL \verticalBLK|BIST|Add0~29\ : std_logic;
SIGNAL \verticalBLK|BIST|Add0~31\ : std_logic;
SIGNAL \verticalBLK|BIST|Add0~34_combout\ : std_logic;
SIGNAL \verticalBLK|BIST|Add0~36_combout\ : std_logic;
SIGNAL \verticalBLK|BIST|Add0~30_combout\ : std_logic;
SIGNAL \verticalBLK|BIST|Add0~32_combout\ : std_logic;
SIGNAL \verticalBLK|BIST|Equal0~0_combout\ : std_logic;
SIGNAL \verticalBLK|BIST|Add0~20_combout\ : std_logic;
SIGNAL \verticalBLK|BIST|Add0~38_combout\ : std_logic;
SIGNAL \verticalBLK|BIST|Equal0~1_combout\ : std_logic;
SIGNAL \verticalBLK|BIST|Equal0~4_combout\ : std_logic;
SIGNAL \verticalBLK|BIST|Equal0~5_combout\ : std_logic;
SIGNAL \verticalBLK|DUT|Selector1~0_combout\ : std_logic;
SIGNAL \verticalBLK|DUT|pr_state.dos~q\ : std_logic;
SIGNAL \verticalBLK|BIST2|Add0~11_combout\ : std_logic;
SIGNAL \verticalBLK|BIST2|Add0~47_combout\ : std_logic;
SIGNAL \controlDibujoBLK|nx_state~3_combout\ : std_logic;
SIGNAL \controlDibujoBLK|nx_state~2_combout\ : std_logic;
SIGNAL \horizontalBLK|BIST2|Add0~6_combout\ : std_logic;
SIGNAL \horizontalBLK|BIST2|Add0~35_combout\ : std_logic;
SIGNAL \controlDibujoBLK|nx_state~1_combout\ : std_logic;
SIGNAL \controlDibujoBLK|nx_state~4_combout\ : std_logic;
SIGNAL \controlDibujoBLK|nx_state~6_combout\ : std_logic;
SIGNAL \controlDibujoBLK|combinational~1_combout\ : std_logic;
SIGNAL \controlDibujoBLK|combinational~2_combout\ : std_logic;
SIGNAL \controlDibujoBLK|nx_state~0_combout\ : std_logic;
SIGNAL \controlDibujoBLK|nx_state~5_combout\ : std_logic;
SIGNAL \controlDibujoBLK|nx_state~combout\ : std_logic;
SIGNAL \controlDibujoBLK|pr_state~q\ : std_logic;
SIGNAL \verticalBLK|BIST2|temp\ : std_logic_vector(20 DOWNTO 0);
SIGNAL \verticalBLK|BIST4|temp\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \verticalBLK|BIST|temp\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \horizontalBLK|BIST|temp\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \horizontalBLK|BIST4|temp\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \horizontalBLK|BIST3|temp\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \horizontalBLK|BIST2|temp\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \verticalBLK|BIST3|temp\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \ALT_INV_rst~input_o\ : std_logic;
SIGNAL \horizontalBLK|DUT|ALT_INV_pr_state.cuatro~q\ : std_logic;
SIGNAL \verticalBLK|DUT|ALT_INV_pr_state.cuatro~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
pixel <= ww_pixel;
h_video_on_out <= ww_h_video_on_out;
v_video_on_out <= ww_v_video_on_out;
vsync_out <= ww_vsync_out;
hsync_out <= ww_hsync_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_rst~input_o\ <= NOT \rst~input_o\;
\horizontalBLK|DUT|ALT_INV_pr_state.cuatro~q\ <= NOT \horizontalBLK|DUT|pr_state.cuatro~q\;
\verticalBLK|DUT|ALT_INV_pr_state.cuatro~q\ <= NOT \verticalBLK|DUT|pr_state.cuatro~q\;

-- Location: LCCOMB_X24_Y19_N10
\horizontalBLK|BIST|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \horizontalBLK|BIST|Add0~6_combout\ = (\horizontalBLK|BIST|temp\(3) & (((!\horizontalBLK|BIST|Add0~5\)))) # (!\horizontalBLK|BIST|temp\(3) & ((\horizontalBLK|BIST|Equal0~2_combout\ & (!\horizontalBLK|BIST|Add0~5\)) # 
-- (!\horizontalBLK|BIST|Equal0~2_combout\ & ((\horizontalBLK|BIST|Add0~5\) # (GND)))))
-- \horizontalBLK|BIST|Add0~7\ = CARRY(((!\horizontalBLK|BIST|temp\(3) & !\horizontalBLK|BIST|Equal0~2_combout\)) # (!\horizontalBLK|BIST|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \horizontalBLK|BIST|temp\(3),
	datab => \horizontalBLK|BIST|Equal0~2_combout\,
	datad => VCC,
	cin => \horizontalBLK|BIST|Add0~5\,
	combout => \horizontalBLK|BIST|Add0~6_combout\,
	cout => \horizontalBLK|BIST|Add0~7\);

-- Location: LCCOMB_X24_Y19_N14
\horizontalBLK|BIST|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \horizontalBLK|BIST|Add0~10_combout\ = (\horizontalBLK|BIST|temp\(5) & (!\horizontalBLK|BIST|Add0~9\)) # (!\horizontalBLK|BIST|temp\(5) & ((\horizontalBLK|BIST|Add0~9\) # (GND)))
-- \horizontalBLK|BIST|Add0~11\ = CARRY((!\horizontalBLK|BIST|Add0~9\) # (!\horizontalBLK|BIST|temp\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \horizontalBLK|BIST|temp\(5),
	datad => VCC,
	cin => \horizontalBLK|BIST|Add0~9\,
	combout => \horizontalBLK|BIST|Add0~10_combout\,
	cout => \horizontalBLK|BIST|Add0~11\);

-- Location: LCCOMB_X27_Y20_N8
\horizontalBLK|BIST2|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \horizontalBLK|BIST2|Add0~2_combout\ = (\horizontalBLK|BIST2|temp\(1) & (((!\horizontalBLK|BIST2|Add0~1\)))) # (!\horizontalBLK|BIST2|temp\(1) & ((\horizontalBLK|BIST2|Equal0~3_combout\ & (!\horizontalBLK|BIST2|Add0~1\)) # 
-- (!\horizontalBLK|BIST2|Equal0~3_combout\ & ((\horizontalBLK|BIST2|Add0~1\) # (GND)))))
-- \horizontalBLK|BIST2|Add0~3\ = CARRY(((!\horizontalBLK|BIST2|temp\(1) & !\horizontalBLK|BIST2|Equal0~3_combout\)) # (!\horizontalBLK|BIST2|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \horizontalBLK|BIST2|temp\(1),
	datab => \horizontalBLK|BIST2|Equal0~3_combout\,
	datad => VCC,
	cin => \horizontalBLK|BIST2|Add0~1\,
	combout => \horizontalBLK|BIST2|Add0~2_combout\,
	cout => \horizontalBLK|BIST2|Add0~3\);

-- Location: LCCOMB_X27_Y20_N14
\horizontalBLK|BIST2|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \horizontalBLK|BIST2|Add0~8_combout\ = (\horizontalBLK|BIST2|Add0~7\ & (((\horizontalBLK|BIST2|temp\(4)) # (\horizontalBLK|BIST2|Equal0~3_combout\)))) # (!\horizontalBLK|BIST2|Add0~7\ & ((((\horizontalBLK|BIST2|temp\(4)) # 
-- (\horizontalBLK|BIST2|Equal0~3_combout\)))))
-- \horizontalBLK|BIST2|Add0~9\ = CARRY((!\horizontalBLK|BIST2|Add0~7\ & ((\horizontalBLK|BIST2|temp\(4)) # (\horizontalBLK|BIST2|Equal0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \horizontalBLK|BIST2|temp\(4),
	datab => \horizontalBLK|BIST2|Equal0~3_combout\,
	datad => VCC,
	cin => \horizontalBLK|BIST2|Add0~7\,
	combout => \horizontalBLK|BIST2|Add0~8_combout\,
	cout => \horizontalBLK|BIST2|Add0~9\);

-- Location: LCCOMB_X27_Y20_N16
\horizontalBLK|BIST2|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \horizontalBLK|BIST2|Add0~10_combout\ = (\horizontalBLK|BIST2|Equal0~3_combout\ & (((!\horizontalBLK|BIST2|Add0~9\)))) # (!\horizontalBLK|BIST2|Equal0~3_combout\ & ((\horizontalBLK|BIST2|temp\(5) & (!\horizontalBLK|BIST2|Add0~9\)) # 
-- (!\horizontalBLK|BIST2|temp\(5) & ((\horizontalBLK|BIST2|Add0~9\) # (GND)))))
-- \horizontalBLK|BIST2|Add0~11\ = CARRY(((!\horizontalBLK|BIST2|Equal0~3_combout\ & !\horizontalBLK|BIST2|temp\(5))) # (!\horizontalBLK|BIST2|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \horizontalBLK|BIST2|Equal0~3_combout\,
	datab => \horizontalBLK|BIST2|temp\(5),
	datad => VCC,
	cin => \horizontalBLK|BIST2|Add0~9\,
	combout => \horizontalBLK|BIST2|Add0~10_combout\,
	cout => \horizontalBLK|BIST2|Add0~11\);

-- Location: LCCOMB_X27_Y20_N24
\horizontalBLK|BIST2|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \horizontalBLK|BIST2|Add0~18_combout\ = (\horizontalBLK|BIST2|temp\(9) & (((!\horizontalBLK|BIST2|Add0~17\)))) # (!\horizontalBLK|BIST2|temp\(9) & ((\horizontalBLK|BIST2|Equal0~3_combout\ & (!\horizontalBLK|BIST2|Add0~17\)) # 
-- (!\horizontalBLK|BIST2|Equal0~3_combout\ & ((\horizontalBLK|BIST2|Add0~17\) # (GND)))))
-- \horizontalBLK|BIST2|Add0~19\ = CARRY(((!\horizontalBLK|BIST2|temp\(9) & !\horizontalBLK|BIST2|Equal0~3_combout\)) # (!\horizontalBLK|BIST2|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \horizontalBLK|BIST2|temp\(9),
	datab => \horizontalBLK|BIST2|Equal0~3_combout\,
	datad => VCC,
	cin => \horizontalBLK|BIST2|Add0~17\,
	combout => \horizontalBLK|BIST2|Add0~18_combout\,
	cout => \horizontalBLK|BIST2|Add0~19\);

-- Location: LCCOMB_X24_Y23_N16
\verticalBLK|BIST|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST|Add0~0_combout\ = (((\verticalBLK|BIST|temp\(0)) # (\verticalBLK|BIST|Equal0~5_combout\)))
-- \verticalBLK|BIST|Add0~1\ = CARRY((\verticalBLK|BIST|temp\(0)) # (\verticalBLK|BIST|Equal0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \verticalBLK|BIST|temp\(0),
	datab => \verticalBLK|BIST|Equal0~5_combout\,
	datad => VCC,
	combout => \verticalBLK|BIST|Add0~0_combout\,
	cout => \verticalBLK|BIST|Add0~1\);

-- Location: LCCOMB_X24_Y23_N22
\verticalBLK|BIST|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST|Add0~6_combout\ = (\verticalBLK|BIST|temp\(3) & (((!\verticalBLK|BIST|Add0~5\)))) # (!\verticalBLK|BIST|temp\(3) & ((\verticalBLK|BIST|Equal0~5_combout\ & (!\verticalBLK|BIST|Add0~5\)) # (!\verticalBLK|BIST|Equal0~5_combout\ & 
-- ((\verticalBLK|BIST|Add0~5\) # (GND)))))
-- \verticalBLK|BIST|Add0~7\ = CARRY(((!\verticalBLK|BIST|temp\(3) & !\verticalBLK|BIST|Equal0~5_combout\)) # (!\verticalBLK|BIST|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \verticalBLK|BIST|temp\(3),
	datab => \verticalBLK|BIST|Equal0~5_combout\,
	datad => VCC,
	cin => \verticalBLK|BIST|Add0~5\,
	combout => \verticalBLK|BIST|Add0~6_combout\,
	cout => \verticalBLK|BIST|Add0~7\);

-- Location: LCCOMB_X24_Y23_N26
\verticalBLK|BIST|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST|Add0~10_combout\ = (\verticalBLK|BIST|temp\(5) & (((!\verticalBLK|BIST|Add0~9\)))) # (!\verticalBLK|BIST|temp\(5) & ((\verticalBLK|BIST|Equal0~5_combout\ & (!\verticalBLK|BIST|Add0~9\)) # (!\verticalBLK|BIST|Equal0~5_combout\ & 
-- ((\verticalBLK|BIST|Add0~9\) # (GND)))))
-- \verticalBLK|BIST|Add0~11\ = CARRY(((!\verticalBLK|BIST|temp\(5) & !\verticalBLK|BIST|Equal0~5_combout\)) # (!\verticalBLK|BIST|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \verticalBLK|BIST|temp\(5),
	datab => \verticalBLK|BIST|Equal0~5_combout\,
	datad => VCC,
	cin => \verticalBLK|BIST|Add0~9\,
	combout => \verticalBLK|BIST|Add0~10_combout\,
	cout => \verticalBLK|BIST|Add0~11\);

-- Location: LCCOMB_X24_Y23_N28
\verticalBLK|BIST|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST|Add0~12_combout\ = (\verticalBLK|BIST|Add0~11\ & (((\verticalBLK|BIST|temp\(6)) # (\verticalBLK|BIST|Equal0~5_combout\)))) # (!\verticalBLK|BIST|Add0~11\ & ((((\verticalBLK|BIST|temp\(6)) # (\verticalBLK|BIST|Equal0~5_combout\)))))
-- \verticalBLK|BIST|Add0~13\ = CARRY((!\verticalBLK|BIST|Add0~11\ & ((\verticalBLK|BIST|temp\(6)) # (\verticalBLK|BIST|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \verticalBLK|BIST|temp\(6),
	datab => \verticalBLK|BIST|Equal0~5_combout\,
	datad => VCC,
	cin => \verticalBLK|BIST|Add0~11\,
	combout => \verticalBLK|BIST|Add0~12_combout\,
	cout => \verticalBLK|BIST|Add0~13\);

-- Location: LCCOMB_X24_Y23_N30
\verticalBLK|BIST|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST|Add0~14_combout\ = (\verticalBLK|BIST|temp\(7) & (((!\verticalBLK|BIST|Add0~13\)))) # (!\verticalBLK|BIST|temp\(7) & ((\verticalBLK|BIST|Equal0~5_combout\ & (!\verticalBLK|BIST|Add0~13\)) # (!\verticalBLK|BIST|Equal0~5_combout\ & 
-- ((\verticalBLK|BIST|Add0~13\) # (GND)))))
-- \verticalBLK|BIST|Add0~15\ = CARRY(((!\verticalBLK|BIST|temp\(7) & !\verticalBLK|BIST|Equal0~5_combout\)) # (!\verticalBLK|BIST|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \verticalBLK|BIST|temp\(7),
	datab => \verticalBLK|BIST|Equal0~5_combout\,
	datad => VCC,
	cin => \verticalBLK|BIST|Add0~13\,
	combout => \verticalBLK|BIST|Add0~14_combout\,
	cout => \verticalBLK|BIST|Add0~15\);

-- Location: LCCOMB_X27_Y18_N2
\verticalBLK|BIST2|Add0~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST2|Add0~23_combout\ = (\verticalBLK|BIST2|temp\(11) & (((!\verticalBLK|BIST2|Add0~22\)))) # (!\verticalBLK|BIST2|temp\(11) & ((\verticalBLK|BIST2|Equal0~6_combout\ & (!\verticalBLK|BIST2|Add0~22\)) # (!\verticalBLK|BIST2|Equal0~6_combout\ 
-- & ((\verticalBLK|BIST2|Add0~22\) # (GND)))))
-- \verticalBLK|BIST2|Add0~24\ = CARRY(((!\verticalBLK|BIST2|temp\(11) & !\verticalBLK|BIST2|Equal0~6_combout\)) # (!\verticalBLK|BIST2|Add0~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \verticalBLK|BIST2|temp\(11),
	datab => \verticalBLK|BIST2|Equal0~6_combout\,
	datad => VCC,
	cin => \verticalBLK|BIST2|Add0~22\,
	combout => \verticalBLK|BIST2|Add0~23_combout\,
	cout => \verticalBLK|BIST2|Add0~24\);

-- Location: LCCOMB_X27_Y18_N4
\verticalBLK|BIST2|Add0~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST2|Add0~25_combout\ = (\verticalBLK|BIST2|Add0~24\ & (((\verticalBLK|BIST2|temp\(12)) # (\verticalBLK|BIST2|Equal0~6_combout\)))) # (!\verticalBLK|BIST2|Add0~24\ & ((((\verticalBLK|BIST2|temp\(12)) # 
-- (\verticalBLK|BIST2|Equal0~6_combout\)))))
-- \verticalBLK|BIST2|Add0~26\ = CARRY((!\verticalBLK|BIST2|Add0~24\ & ((\verticalBLK|BIST2|temp\(12)) # (\verticalBLK|BIST2|Equal0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \verticalBLK|BIST2|temp\(12),
	datab => \verticalBLK|BIST2|Equal0~6_combout\,
	datad => VCC,
	cin => \verticalBLK|BIST2|Add0~24\,
	combout => \verticalBLK|BIST2|Add0~25_combout\,
	cout => \verticalBLK|BIST2|Add0~26\);

-- Location: LCCOMB_X27_Y18_N12
\verticalBLK|BIST2|Add0~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST2|Add0~33_combout\ = (\verticalBLK|BIST2|temp\(16) & (\verticalBLK|BIST2|Add0~32\ $ (GND))) # (!\verticalBLK|BIST2|temp\(16) & (!\verticalBLK|BIST2|Add0~32\ & VCC))
-- \verticalBLK|BIST2|Add0~34\ = CARRY((\verticalBLK|BIST2|temp\(16) & !\verticalBLK|BIST2|Add0~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \verticalBLK|BIST2|temp\(16),
	datad => VCC,
	cin => \verticalBLK|BIST2|Add0~32\,
	combout => \verticalBLK|BIST2|Add0~33_combout\,
	cout => \verticalBLK|BIST2|Add0~34\);

-- Location: LCCOMB_X22_Y22_N20
\verticalBLK|BIST3|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST3|Add0~20_combout\ = (\verticalBLK|BIST3|Add0~19\ & (((\verticalBLK|BIST3|Equal0~4_combout\) # (\verticalBLK|BIST3|temp\(10))))) # (!\verticalBLK|BIST3|Add0~19\ & ((((\verticalBLK|BIST3|Equal0~4_combout\) # 
-- (\verticalBLK|BIST3|temp\(10))))))
-- \verticalBLK|BIST3|Add0~21\ = CARRY((!\verticalBLK|BIST3|Add0~19\ & ((\verticalBLK|BIST3|Equal0~4_combout\) # (\verticalBLK|BIST3|temp\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \verticalBLK|BIST3|Equal0~4_combout\,
	datab => \verticalBLK|BIST3|temp\(10),
	datad => VCC,
	cin => \verticalBLK|BIST3|Add0~19\,
	combout => \verticalBLK|BIST3|Add0~20_combout\,
	cout => \verticalBLK|BIST3|Add0~21\);

-- Location: LCCOMB_X22_Y22_N22
\verticalBLK|BIST3|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST3|Add0~22_combout\ = (\verticalBLK|BIST3|Equal0~4_combout\ & (((!\verticalBLK|BIST3|Add0~21\)))) # (!\verticalBLK|BIST3|Equal0~4_combout\ & ((\verticalBLK|BIST3|temp\(11) & (!\verticalBLK|BIST3|Add0~21\)) # (!\verticalBLK|BIST3|temp\(11) 
-- & ((\verticalBLK|BIST3|Add0~21\) # (GND)))))
-- \verticalBLK|BIST3|Add0~23\ = CARRY(((!\verticalBLK|BIST3|Equal0~4_combout\ & !\verticalBLK|BIST3|temp\(11))) # (!\verticalBLK|BIST3|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \verticalBLK|BIST3|Equal0~4_combout\,
	datab => \verticalBLK|BIST3|temp\(11),
	datad => VCC,
	cin => \verticalBLK|BIST3|Add0~21\,
	combout => \verticalBLK|BIST3|Add0~22_combout\,
	cout => \verticalBLK|BIST3|Add0~23\);

-- Location: LCCOMB_X22_Y22_N24
\verticalBLK|BIST3|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST3|Add0~24_combout\ = (\verticalBLK|BIST3|temp\(12) & (\verticalBLK|BIST3|Add0~23\ $ (GND))) # (!\verticalBLK|BIST3|temp\(12) & (!\verticalBLK|BIST3|Add0~23\ & VCC))
-- \verticalBLK|BIST3|Add0~25\ = CARRY((\verticalBLK|BIST3|temp\(12) & !\verticalBLK|BIST3|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \verticalBLK|BIST3|temp\(12),
	datad => VCC,
	cin => \verticalBLK|BIST3|Add0~23\,
	combout => \verticalBLK|BIST3|Add0~24_combout\,
	cout => \verticalBLK|BIST3|Add0~25\);

-- Location: LCCOMB_X22_Y22_N26
\verticalBLK|BIST3|Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST3|Add0~26_combout\ = (\verticalBLK|BIST3|temp\(13) & (!\verticalBLK|BIST3|Add0~25\)) # (!\verticalBLK|BIST3|temp\(13) & ((\verticalBLK|BIST3|Add0~25\) # (GND)))
-- \verticalBLK|BIST3|Add0~27\ = CARRY((!\verticalBLK|BIST3|Add0~25\) # (!\verticalBLK|BIST3|temp\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \verticalBLK|BIST3|temp\(13),
	datad => VCC,
	cin => \verticalBLK|BIST3|Add0~25\,
	combout => \verticalBLK|BIST3|Add0~26_combout\,
	cout => \verticalBLK|BIST3|Add0~27\);

-- Location: LCCOMB_X22_Y22_N28
\verticalBLK|BIST3|Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST3|Add0~30_combout\ = \verticalBLK|BIST3|Add0~27\ $ (((!\verticalBLK|BIST3|Equal0~4_combout\ & !\verticalBLK|BIST3|temp\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \verticalBLK|BIST3|Equal0~4_combout\,
	datad => \verticalBLK|BIST3|temp\(14),
	cin => \verticalBLK|BIST3|Add0~27\,
	combout => \verticalBLK|BIST3|Add0~30_combout\);

-- Location: LCCOMB_X27_Y22_N8
\verticalBLK|BIST4|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST4|Add0~4_combout\ = (\verticalBLK|BIST4|Add0~3\ & (((\verticalBLK|BIST4|temp\(2)) # (\verticalBLK|BIST4|Equal0~3_combout\)))) # (!\verticalBLK|BIST4|Add0~3\ & ((((\verticalBLK|BIST4|temp\(2)) # (\verticalBLK|BIST4|Equal0~3_combout\)))))
-- \verticalBLK|BIST4|Add0~5\ = CARRY((!\verticalBLK|BIST4|Add0~3\ & ((\verticalBLK|BIST4|temp\(2)) # (\verticalBLK|BIST4|Equal0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \verticalBLK|BIST4|temp\(2),
	datab => \verticalBLK|BIST4|Equal0~3_combout\,
	datad => VCC,
	cin => \verticalBLK|BIST4|Add0~3\,
	combout => \verticalBLK|BIST4|Add0~4_combout\,
	cout => \verticalBLK|BIST4|Add0~5\);

-- Location: LCCOMB_X27_Y22_N10
\verticalBLK|BIST4|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST4|Add0~6_combout\ = (\verticalBLK|BIST4|temp\(3) & (((!\verticalBLK|BIST4|Add0~5\)))) # (!\verticalBLK|BIST4|temp\(3) & ((\verticalBLK|BIST4|Equal0~3_combout\ & (!\verticalBLK|BIST4|Add0~5\)) # (!\verticalBLK|BIST4|Equal0~3_combout\ & 
-- ((\verticalBLK|BIST4|Add0~5\) # (GND)))))
-- \verticalBLK|BIST4|Add0~7\ = CARRY(((!\verticalBLK|BIST4|temp\(3) & !\verticalBLK|BIST4|Equal0~3_combout\)) # (!\verticalBLK|BIST4|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \verticalBLK|BIST4|temp\(3),
	datab => \verticalBLK|BIST4|Equal0~3_combout\,
	datad => VCC,
	cin => \verticalBLK|BIST4|Add0~5\,
	combout => \verticalBLK|BIST4|Add0~6_combout\,
	cout => \verticalBLK|BIST4|Add0~7\);

-- Location: LCCOMB_X27_Y22_N12
\verticalBLK|BIST4|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST4|Add0~8_combout\ = (\verticalBLK|BIST4|Add0~7\ & (((\verticalBLK|BIST4|temp\(4)) # (\verticalBLK|BIST4|Equal0~3_combout\)))) # (!\verticalBLK|BIST4|Add0~7\ & ((((\verticalBLK|BIST4|temp\(4)) # (\verticalBLK|BIST4|Equal0~3_combout\)))))
-- \verticalBLK|BIST4|Add0~9\ = CARRY((!\verticalBLK|BIST4|Add0~7\ & ((\verticalBLK|BIST4|temp\(4)) # (\verticalBLK|BIST4|Equal0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \verticalBLK|BIST4|temp\(4),
	datab => \verticalBLK|BIST4|Equal0~3_combout\,
	datad => VCC,
	cin => \verticalBLK|BIST4|Add0~7\,
	combout => \verticalBLK|BIST4|Add0~8_combout\,
	cout => \verticalBLK|BIST4|Add0~9\);

-- Location: LCCOMB_X27_Y22_N14
\verticalBLK|BIST4|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST4|Add0~10_combout\ = (\verticalBLK|BIST4|temp\(5) & (((!\verticalBLK|BIST4|Add0~9\)))) # (!\verticalBLK|BIST4|temp\(5) & ((\verticalBLK|BIST4|Equal0~3_combout\ & (!\verticalBLK|BIST4|Add0~9\)) # (!\verticalBLK|BIST4|Equal0~3_combout\ & 
-- ((\verticalBLK|BIST4|Add0~9\) # (GND)))))
-- \verticalBLK|BIST4|Add0~11\ = CARRY(((!\verticalBLK|BIST4|temp\(5) & !\verticalBLK|BIST4|Equal0~3_combout\)) # (!\verticalBLK|BIST4|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \verticalBLK|BIST4|temp\(5),
	datab => \verticalBLK|BIST4|Equal0~3_combout\,
	datad => VCC,
	cin => \verticalBLK|BIST4|Add0~9\,
	combout => \verticalBLK|BIST4|Add0~10_combout\,
	cout => \verticalBLK|BIST4|Add0~11\);

-- Location: LCCOMB_X27_Y22_N20
\verticalBLK|BIST4|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST4|Add0~16_combout\ = (\verticalBLK|BIST4|Add0~15\ & (((\verticalBLK|BIST4|temp\(8)) # (\verticalBLK|BIST4|Equal0~3_combout\)))) # (!\verticalBLK|BIST4|Add0~15\ & ((((\verticalBLK|BIST4|temp\(8)) # 
-- (\verticalBLK|BIST4|Equal0~3_combout\)))))
-- \verticalBLK|BIST4|Add0~17\ = CARRY((!\verticalBLK|BIST4|Add0~15\ & ((\verticalBLK|BIST4|temp\(8)) # (\verticalBLK|BIST4|Equal0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \verticalBLK|BIST4|temp\(8),
	datab => \verticalBLK|BIST4|Equal0~3_combout\,
	datad => VCC,
	cin => \verticalBLK|BIST4|Add0~15\,
	combout => \verticalBLK|BIST4|Add0~16_combout\,
	cout => \verticalBLK|BIST4|Add0~17\);

-- Location: LCCOMB_X27_Y22_N24
\verticalBLK|BIST4|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST4|Add0~20_combout\ = (\verticalBLK|BIST4|Add0~19\ & (((\verticalBLK|BIST4|temp\(10)) # (\verticalBLK|BIST4|Equal0~3_combout\)))) # (!\verticalBLK|BIST4|Add0~19\ & ((((\verticalBLK|BIST4|temp\(10)) # 
-- (\verticalBLK|BIST4|Equal0~3_combout\)))))
-- \verticalBLK|BIST4|Add0~21\ = CARRY((!\verticalBLK|BIST4|Add0~19\ & ((\verticalBLK|BIST4|temp\(10)) # (\verticalBLK|BIST4|Equal0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \verticalBLK|BIST4|temp\(10),
	datab => \verticalBLK|BIST4|Equal0~3_combout\,
	datad => VCC,
	cin => \verticalBLK|BIST4|Add0~19\,
	combout => \verticalBLK|BIST4|Add0~20_combout\,
	cout => \verticalBLK|BIST4|Add0~21\);

-- Location: LCCOMB_X26_Y20_N26
\horizontalBLK|BIST3|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \horizontalBLK|BIST3|Add0~10_combout\ = (\horizontalBLK|BIST3|temp\(5) & (!\horizontalBLK|BIST3|Add0~9\)) # (!\horizontalBLK|BIST3|temp\(5) & ((\horizontalBLK|BIST3|Add0~9\) # (GND)))
-- \horizontalBLK|BIST3|Add0~11\ = CARRY((!\horizontalBLK|BIST3|Add0~9\) # (!\horizontalBLK|BIST3|temp\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \horizontalBLK|BIST3|temp\(5),
	datad => VCC,
	cin => \horizontalBLK|BIST3|Add0~9\,
	combout => \horizontalBLK|BIST3|Add0~10_combout\,
	cout => \horizontalBLK|BIST3|Add0~11\);

-- Location: LCCOMB_X23_Y20_N20
\horizontalBLK|BIST4|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \horizontalBLK|BIST4|Add0~10_combout\ = (\horizontalBLK|BIST4|temp\(5) & (((!\horizontalBLK|BIST4|Add0~9\)))) # (!\horizontalBLK|BIST4|temp\(5) & ((\horizontalBLK|BIST4|Equal0~2_combout\ & (!\horizontalBLK|BIST4|Add0~9\)) # 
-- (!\horizontalBLK|BIST4|Equal0~2_combout\ & ((\horizontalBLK|BIST4|Add0~9\) # (GND)))))
-- \horizontalBLK|BIST4|Add0~11\ = CARRY(((!\horizontalBLK|BIST4|temp\(5) & !\horizontalBLK|BIST4|Equal0~2_combout\)) # (!\horizontalBLK|BIST4|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \horizontalBLK|BIST4|temp\(5),
	datab => \horizontalBLK|BIST4|Equal0~2_combout\,
	datad => VCC,
	cin => \horizontalBLK|BIST4|Add0~9\,
	combout => \horizontalBLK|BIST4|Add0~10_combout\,
	cout => \horizontalBLK|BIST4|Add0~11\);

-- Location: FF_X24_Y19_N27
\horizontalBLK|BIST|temp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \horizontalBLK|BIST|Add0~15_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \horizontalBLK|BIST|temp\(5));

-- Location: FF_X24_Y19_N23
\horizontalBLK|BIST|temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \horizontalBLK|BIST|Add0~21_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \horizontalBLK|BIST|temp\(3));

-- Location: FF_X28_Y20_N27
\horizontalBLK|BIST2|temp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \horizontalBLK|BIST2|Add0~30_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \horizontalBLK|BIST2|temp\(9));

-- Location: FF_X24_Y23_N5
\verticalBLK|BIST|temp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \verticalBLK|BIST|Add0~43_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \verticalBLK|BIST|temp\(7));

-- Location: FF_X24_Y23_N11
\verticalBLK|BIST|temp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \verticalBLK|BIST|Add0~44_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \verticalBLK|BIST|temp\(6));

-- Location: FF_X24_Y23_N13
\verticalBLK|BIST|temp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \verticalBLK|BIST|Add0~45_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \verticalBLK|BIST|temp\(5));

-- Location: LCCOMB_X24_Y23_N6
\verticalBLK|BIST|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST|Equal0~2_combout\ = (!\verticalBLK|BIST|temp\(6) & (!\verticalBLK|BIST|temp\(7) & (!\verticalBLK|BIST|temp\(5) & \verticalBLK|BIST|temp\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \verticalBLK|BIST|temp\(6),
	datab => \verticalBLK|BIST|temp\(7),
	datac => \verticalBLK|BIST|temp\(5),
	datad => \verticalBLK|BIST|temp\(8),
	combout => \verticalBLK|BIST|Equal0~2_combout\);

-- Location: FF_X23_Y23_N27
\verticalBLK|BIST|temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \verticalBLK|BIST|Add0~47_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \verticalBLK|BIST|temp\(3));

-- Location: FF_X23_Y23_N3
\verticalBLK|BIST|temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \verticalBLK|BIST|Add0~50_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \verticalBLK|BIST|temp\(0));

-- Location: FF_X26_Y19_N23
\verticalBLK|BIST2|temp[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \verticalBLK|BIST2|Add0~52_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \verticalBLK|BIST2|temp\(12));

-- Location: FF_X26_Y19_N21
\verticalBLK|BIST2|temp[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \verticalBLK|BIST2|Add0~53_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \verticalBLK|BIST2|temp\(11));

-- Location: LCCOMB_X26_Y19_N14
\verticalBLK|BIST2|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST2|Equal0~2_combout\ = (!\verticalBLK|BIST2|temp\(12) & (!\verticalBLK|BIST2|temp\(11) & (\verticalBLK|BIST2|temp\(14) & \verticalBLK|BIST2|temp\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \verticalBLK|BIST2|temp\(12),
	datab => \verticalBLK|BIST2|temp\(11),
	datac => \verticalBLK|BIST2|temp\(14),
	datad => \verticalBLK|BIST2|temp\(13),
	combout => \verticalBLK|BIST2|Equal0~2_combout\);

-- Location: FF_X26_Y19_N17
\verticalBLK|BIST2|temp[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \verticalBLK|BIST2|Add0~55_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \verticalBLK|BIST2|temp\(16));

-- Location: FF_X21_Y22_N21
\verticalBLK|BIST3|temp[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \verticalBLK|BIST3|Add0~28_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \verticalBLK|BIST3|temp\(13));

-- Location: FF_X21_Y22_N23
\verticalBLK|BIST3|temp[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \verticalBLK|BIST3|Add0~29_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \verticalBLK|BIST3|temp\(12));

-- Location: FF_X21_Y22_N9
\verticalBLK|BIST3|temp[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \verticalBLK|BIST3|Add0~32_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \verticalBLK|BIST3|temp\(14));

-- Location: FF_X21_Y22_N19
\verticalBLK|BIST3|temp[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \verticalBLK|BIST3|Add0~33_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \verticalBLK|BIST3|temp\(11));

-- Location: LCCOMB_X21_Y22_N16
\verticalBLK|BIST3|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST3|Equal0~0_combout\ = (\verticalBLK|BIST3|temp\(12) & (!\verticalBLK|BIST3|temp\(11) & (!\verticalBLK|BIST3|temp\(14) & \verticalBLK|BIST3|temp\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \verticalBLK|BIST3|temp\(12),
	datab => \verticalBLK|BIST3|temp\(11),
	datac => \verticalBLK|BIST3|temp\(14),
	datad => \verticalBLK|BIST3|temp\(13),
	combout => \verticalBLK|BIST3|Equal0~0_combout\);

-- Location: FF_X26_Y22_N27
\verticalBLK|BIST4|temp[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \verticalBLK|BIST4|Add0~29_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \verticalBLK|BIST4|temp\(10));

-- Location: FF_X27_Y22_N31
\verticalBLK|BIST4|temp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \verticalBLK|BIST4|Add0~31_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \verticalBLK|BIST4|temp\(8));

-- Location: FF_X26_Y22_N11
\verticalBLK|BIST4|temp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \verticalBLK|BIST4|Add0~34_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \verticalBLK|BIST4|temp\(5));

-- Location: FF_X26_Y22_N13
\verticalBLK|BIST4|temp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \verticalBLK|BIST4|Add0~35_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \verticalBLK|BIST4|temp\(4));

-- Location: FF_X26_Y22_N31
\verticalBLK|BIST4|temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \verticalBLK|BIST4|Add0~36_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \verticalBLK|BIST4|temp\(3));

-- Location: FF_X26_Y22_N25
\verticalBLK|BIST4|temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \verticalBLK|BIST4|Add0~37_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \verticalBLK|BIST4|temp\(2));

-- Location: LCCOMB_X26_Y22_N22
\verticalBLK|BIST4|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST4|Equal0~2_combout\ = (!\verticalBLK|BIST4|temp\(5) & (!\verticalBLK|BIST4|temp\(2) & (!\verticalBLK|BIST4|temp\(3) & !\verticalBLK|BIST4|temp\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \verticalBLK|BIST4|temp\(5),
	datab => \verticalBLK|BIST4|temp\(2),
	datac => \verticalBLK|BIST4|temp\(3),
	datad => \verticalBLK|BIST4|temp\(4),
	combout => \verticalBLK|BIST4|Equal0~2_combout\);

-- Location: FF_X26_Y20_N13
\horizontalBLK|BIST3|temp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \horizontalBLK|BIST3|Add0~12_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \horizontalBLK|BIST3|temp\(5));

-- Location: FF_X23_Y20_N31
\horizontalBLK|BIST4|temp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \horizontalBLK|BIST4|Add0~22_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \horizontalBLK|BIST4|temp\(5));

-- Location: LCCOMB_X24_Y19_N26
\horizontalBLK|BIST|Add0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \horizontalBLK|BIST|Add0~15_combout\ = (!\horizontalBLK|DUT|pr_state.uno~q\ & \horizontalBLK|BIST|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \horizontalBLK|DUT|pr_state.uno~q\,
	datac => \horizontalBLK|BIST|Add0~10_combout\,
	combout => \horizontalBLK|BIST|Add0~15_combout\);

-- Location: LCCOMB_X24_Y19_N22
\horizontalBLK|BIST|Add0~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \horizontalBLK|BIST|Add0~21_combout\ = (!\horizontalBLK|DUT|pr_state.uno~q\ & \horizontalBLK|BIST|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \horizontalBLK|DUT|pr_state.uno~q\,
	datad => \horizontalBLK|BIST|Add0~6_combout\,
	combout => \horizontalBLK|BIST|Add0~21_combout\);

-- Location: LCCOMB_X28_Y20_N26
\horizontalBLK|BIST2|Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \horizontalBLK|BIST2|Add0~30_combout\ = (\horizontalBLK|DUT|pr_state.dos~q\ & \horizontalBLK|BIST2|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \horizontalBLK|DUT|pr_state.dos~q\,
	datad => \horizontalBLK|BIST2|Add0~18_combout\,
	combout => \horizontalBLK|BIST2|Add0~30_combout\);

-- Location: LCCOMB_X24_Y23_N4
\verticalBLK|BIST|Add0~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST|Add0~43_combout\ = (\verticalBLK|BIST|Add0~14_combout\ & !\verticalBLK|DUT|pr_state.uno~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \verticalBLK|BIST|Add0~14_combout\,
	datad => \verticalBLK|DUT|pr_state.uno~q\,
	combout => \verticalBLK|BIST|Add0~43_combout\);

-- Location: LCCOMB_X24_Y23_N10
\verticalBLK|BIST|Add0~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST|Add0~44_combout\ = (!\verticalBLK|DUT|pr_state.uno~q\ & \verticalBLK|BIST|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \verticalBLK|DUT|pr_state.uno~q\,
	datad => \verticalBLK|BIST|Add0~12_combout\,
	combout => \verticalBLK|BIST|Add0~44_combout\);

-- Location: LCCOMB_X24_Y23_N12
\verticalBLK|BIST|Add0~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST|Add0~45_combout\ = (\verticalBLK|BIST|Add0~10_combout\ & !\verticalBLK|DUT|pr_state.uno~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \verticalBLK|BIST|Add0~10_combout\,
	datad => \verticalBLK|DUT|pr_state.uno~q\,
	combout => \verticalBLK|BIST|Add0~45_combout\);

-- Location: LCCOMB_X23_Y23_N26
\verticalBLK|BIST|Add0~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST|Add0~47_combout\ = (!\verticalBLK|DUT|pr_state.uno~q\ & \verticalBLK|BIST|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \verticalBLK|DUT|pr_state.uno~q\,
	datad => \verticalBLK|BIST|Add0~6_combout\,
	combout => \verticalBLK|BIST|Add0~47_combout\);

-- Location: LCCOMB_X23_Y23_N2
\verticalBLK|BIST|Add0~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST|Add0~50_combout\ = (!\verticalBLK|DUT|pr_state.uno~q\ & \verticalBLK|BIST|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \verticalBLK|DUT|pr_state.uno~q\,
	datad => \verticalBLK|BIST|Add0~0_combout\,
	combout => \verticalBLK|BIST|Add0~50_combout\);

-- Location: LCCOMB_X26_Y19_N22
\verticalBLK|BIST2|Add0~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST2|Add0~52_combout\ = (\verticalBLK|DUT|pr_state.dos~q\ & \verticalBLK|BIST2|Add0~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \verticalBLK|DUT|pr_state.dos~q\,
	datad => \verticalBLK|BIST2|Add0~25_combout\,
	combout => \verticalBLK|BIST2|Add0~52_combout\);

-- Location: LCCOMB_X26_Y19_N20
\verticalBLK|BIST2|Add0~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST2|Add0~53_combout\ = (\verticalBLK|DUT|pr_state.dos~q\ & \verticalBLK|BIST2|Add0~23_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \verticalBLK|DUT|pr_state.dos~q\,
	datad => \verticalBLK|BIST2|Add0~23_combout\,
	combout => \verticalBLK|BIST2|Add0~53_combout\);

-- Location: LCCOMB_X26_Y19_N16
\verticalBLK|BIST2|Add0~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST2|Add0~55_combout\ = (\verticalBLK|DUT|pr_state.dos~q\ & \verticalBLK|BIST2|Add0~33_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \verticalBLK|DUT|pr_state.dos~q\,
	datad => \verticalBLK|BIST2|Add0~33_combout\,
	combout => \verticalBLK|BIST2|Add0~55_combout\);

-- Location: LCCOMB_X21_Y22_N20
\verticalBLK|BIST3|Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST3|Add0~28_combout\ = (\verticalBLK|DUT|pr_state.tres~q\ & \verticalBLK|BIST3|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \verticalBLK|DUT|pr_state.tres~q\,
	datad => \verticalBLK|BIST3|Add0~26_combout\,
	combout => \verticalBLK|BIST3|Add0~28_combout\);

-- Location: LCCOMB_X21_Y22_N22
\verticalBLK|BIST3|Add0~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST3|Add0~29_combout\ = (\verticalBLK|DUT|pr_state.tres~q\ & \verticalBLK|BIST3|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \verticalBLK|DUT|pr_state.tres~q\,
	datad => \verticalBLK|BIST3|Add0~24_combout\,
	combout => \verticalBLK|BIST3|Add0~29_combout\);

-- Location: LCCOMB_X21_Y22_N8
\verticalBLK|BIST3|Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST3|Add0~32_combout\ = (\verticalBLK|DUT|pr_state.tres~q\ & \verticalBLK|BIST3|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \verticalBLK|DUT|pr_state.tres~q\,
	datad => \verticalBLK|BIST3|Add0~30_combout\,
	combout => \verticalBLK|BIST3|Add0~32_combout\);

-- Location: LCCOMB_X21_Y22_N18
\verticalBLK|BIST3|Add0~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST3|Add0~33_combout\ = (\verticalBLK|DUT|pr_state.tres~q\ & \verticalBLK|BIST3|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \verticalBLK|DUT|pr_state.tres~q\,
	datad => \verticalBLK|BIST3|Add0~22_combout\,
	combout => \verticalBLK|BIST3|Add0~33_combout\);

-- Location: LCCOMB_X26_Y22_N26
\verticalBLK|BIST4|Add0~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST4|Add0~29_combout\ = (\verticalBLK|DUT|pr_state.cuatro~q\ & \verticalBLK|BIST4|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \verticalBLK|DUT|pr_state.cuatro~q\,
	datad => \verticalBLK|BIST4|Add0~20_combout\,
	combout => \verticalBLK|BIST4|Add0~29_combout\);

-- Location: LCCOMB_X27_Y22_N30
\verticalBLK|BIST4|Add0~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST4|Add0~31_combout\ = (\verticalBLK|DUT|pr_state.cuatro~q\ & \verticalBLK|BIST4|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \verticalBLK|DUT|pr_state.cuatro~q\,
	datad => \verticalBLK|BIST4|Add0~16_combout\,
	combout => \verticalBLK|BIST4|Add0~31_combout\);

-- Location: LCCOMB_X26_Y22_N10
\verticalBLK|BIST4|Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST4|Add0~34_combout\ = (\verticalBLK|DUT|pr_state.cuatro~q\ & \verticalBLK|BIST4|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \verticalBLK|DUT|pr_state.cuatro~q\,
	datac => \verticalBLK|BIST4|Add0~10_combout\,
	combout => \verticalBLK|BIST4|Add0~34_combout\);

-- Location: LCCOMB_X26_Y22_N12
\verticalBLK|BIST4|Add0~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST4|Add0~35_combout\ = (\verticalBLK|DUT|pr_state.cuatro~q\ & \verticalBLK|BIST4|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \verticalBLK|DUT|pr_state.cuatro~q\,
	datac => \verticalBLK|BIST4|Add0~8_combout\,
	combout => \verticalBLK|BIST4|Add0~35_combout\);

-- Location: LCCOMB_X26_Y22_N30
\verticalBLK|BIST4|Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST4|Add0~36_combout\ = (\verticalBLK|DUT|pr_state.cuatro~q\ & \verticalBLK|BIST4|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \verticalBLK|DUT|pr_state.cuatro~q\,
	datac => \verticalBLK|BIST4|Add0~6_combout\,
	combout => \verticalBLK|BIST4|Add0~36_combout\);

-- Location: LCCOMB_X26_Y22_N24
\verticalBLK|BIST4|Add0~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST4|Add0~37_combout\ = (\verticalBLK|DUT|pr_state.cuatro~q\ & \verticalBLK|BIST4|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \verticalBLK|DUT|pr_state.cuatro~q\,
	datac => \verticalBLK|BIST4|Add0~4_combout\,
	combout => \verticalBLK|BIST4|Add0~37_combout\);

-- Location: LCCOMB_X26_Y20_N12
\horizontalBLK|BIST3|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \horizontalBLK|BIST3|Add0~12_combout\ = (\horizontalBLK|DUT|pr_state.tres~q\ & \horizontalBLK|BIST3|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \horizontalBLK|DUT|pr_state.tres~q\,
	datac => \horizontalBLK|BIST3|Add0~10_combout\,
	combout => \horizontalBLK|BIST3|Add0~12_combout\);

-- Location: LCCOMB_X23_Y20_N30
\horizontalBLK|BIST4|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \horizontalBLK|BIST4|Add0~22_combout\ = (\horizontalBLK|DUT|pr_state.cuatro~q\ & \horizontalBLK|BIST4|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \horizontalBLK|DUT|pr_state.cuatro~q\,
	datad => \horizontalBLK|BIST4|Add0~10_combout\,
	combout => \horizontalBLK|BIST4|Add0~22_combout\);

-- Location: IOOBUF_X41_Y21_N9
\pixel[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlDibujoBLK|pr_state~q\,
	devoe => ww_devoe,
	o => \pixel[0]~output_o\);

-- Location: IOOBUF_X41_Y19_N2
\pixel[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlDibujoBLK|pr_state~q\,
	devoe => ww_devoe,
	o => \pixel[1]~output_o\);

-- Location: IOOBUF_X41_Y19_N9
\pixel[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlDibujoBLK|pr_state~q\,
	devoe => ww_devoe,
	o => \pixel[2]~output_o\);

-- Location: IOOBUF_X41_Y19_N16
\pixel[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlDibujoBLK|pr_state~q\,
	devoe => ww_devoe,
	o => \pixel[3]~output_o\);

-- Location: IOOBUF_X41_Y20_N23
\pixel[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlDibujoBLK|pr_state~q\,
	devoe => ww_devoe,
	o => \pixel[4]~output_o\);

-- Location: IOOBUF_X41_Y21_N16
\pixel[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlDibujoBLK|pr_state~q\,
	devoe => ww_devoe,
	o => \pixel[5]~output_o\);

-- Location: IOOBUF_X41_Y24_N23
\pixel[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlDibujoBLK|pr_state~q\,
	devoe => ww_devoe,
	o => \pixel[6]~output_o\);

-- Location: IOOBUF_X41_Y20_N2
\pixel[7]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlDibujoBLK|pr_state~q\,
	devoe => ww_devoe,
	o => \pixel[7]~output_o\);

-- Location: IOOBUF_X41_Y21_N23
\pixel[8]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlDibujoBLK|pr_state~q\,
	devoe => ww_devoe,
	o => \pixel[8]~output_o\);

-- Location: IOOBUF_X41_Y22_N2
\pixel[9]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlDibujoBLK|pr_state~q\,
	devoe => ww_devoe,
	o => \pixel[9]~output_o\);

-- Location: IOOBUF_X41_Y25_N2
\pixel[10]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlDibujoBLK|pr_state~q\,
	devoe => ww_devoe,
	o => \pixel[10]~output_o\);

-- Location: IOOBUF_X41_Y23_N23
\pixel[11]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controlDibujoBLK|pr_state~q\,
	devoe => ww_devoe,
	o => \pixel[11]~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\h_video_on_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \horizontalBLK|DUT|pr_state.dos~q\,
	devoe => ww_devoe,
	o => \h_video_on_out~output_o\);

-- Location: IOOBUF_X41_Y22_N16
\v_video_on_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \verticalBLK|DUT|pr_state.dos~q\,
	devoe => ww_devoe,
	o => \v_video_on_out~output_o\);

-- Location: IOOBUF_X41_Y18_N23
\vsync_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \verticalBLK|DUT|ALT_INV_pr_state.cuatro~q\,
	devoe => ww_devoe,
	o => \vsync_out~output_o\);

-- Location: IOOBUF_X41_Y18_N16
\hsync_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \horizontalBLK|DUT|ALT_INV_pr_state.cuatro~q\,
	devoe => ww_devoe,
	o => \hsync_out~output_o\);

-- Location: IOIBUF_X41_Y15_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G9
\clk~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X24_Y20_N10
\horizontalBLK|DUT|Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \horizontalBLK|DUT|Selector2~0_combout\ = (\horizontalBLK|BIST3|Equal0~1_combout\ & (\horizontalBLK|DUT|pr_state.dos~q\ & ((\horizontalBLK|BIST2|Equal0~3_combout\)))) # (!\horizontalBLK|BIST3|Equal0~1_combout\ & ((\horizontalBLK|DUT|pr_state.tres~q\) # 
-- ((\horizontalBLK|DUT|pr_state.dos~q\ & \horizontalBLK|BIST2|Equal0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \horizontalBLK|BIST3|Equal0~1_combout\,
	datab => \horizontalBLK|DUT|pr_state.dos~q\,
	datac => \horizontalBLK|DUT|pr_state.tres~q\,
	datad => \horizontalBLK|BIST2|Equal0~3_combout\,
	combout => \horizontalBLK|DUT|Selector2~0_combout\);

-- Location: IOIBUF_X0_Y24_N1
\rst~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: FF_X24_Y20_N11
\horizontalBLK|DUT|pr_state.tres\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \horizontalBLK|DUT|Selector2~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \horizontalBLK|DUT|pr_state.tres~q\);

-- Location: LCCOMB_X26_Y20_N16
\horizontalBLK|BIST3|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \horizontalBLK|BIST3|Add0~0_combout\ = (((\horizontalBLK|BIST3|Equal0~1_combout\) # (\horizontalBLK|BIST3|temp\(0))))
-- \horizontalBLK|BIST3|Add0~1\ = CARRY((\horizontalBLK|BIST3|Equal0~1_combout\) # (\horizontalBLK|BIST3|temp\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \horizontalBLK|BIST3|Equal0~1_combout\,
	datab => \horizontalBLK|BIST3|temp\(0),
	datad => VCC,
	combout => \horizontalBLK|BIST3|Add0~0_combout\,
	cout => \horizontalBLK|BIST3|Add0~1\);

-- Location: LCCOMB_X26_Y20_N2
\horizontalBLK|BIST3|Add0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \horizontalBLK|BIST3|Add0~13_combout\ = (\horizontalBLK|DUT|pr_state.tres~q\ & \horizontalBLK|BIST3|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \horizontalBLK|DUT|pr_state.tres~q\,
	datad => \horizontalBLK|BIST3|Add0~0_combout\,
	combout => \horizontalBLK|BIST3|Add0~13_combout\);

-- Location: FF_X26_Y20_N3
\horizontalBLK|BIST3|temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \horizontalBLK|BIST3|Add0~13_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \horizontalBLK|BIST3|temp\(0));

-- Location: LCCOMB_X26_Y20_N18
\horizontalBLK|BIST3|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \horizontalBLK|BIST3|Add0~2_combout\ = (\horizontalBLK|BIST3|Equal0~1_combout\ & (((!\horizontalBLK|BIST3|Add0~1\)))) # (!\horizontalBLK|BIST3|Equal0~1_combout\ & ((\horizontalBLK|BIST3|temp\(1) & (!\horizontalBLK|BIST3|Add0~1\)) # 
-- (!\horizontalBLK|BIST3|temp\(1) & ((\horizontalBLK|BIST3|Add0~1\) # (GND)))))
-- \horizontalBLK|BIST3|Add0~3\ = CARRY(((!\horizontalBLK|BIST3|Equal0~1_combout\ & !\horizontalBLK|BIST3|temp\(1))) # (!\horizontalBLK|BIST3|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \horizontalBLK|BIST3|Equal0~1_combout\,
	datab => \horizontalBLK|BIST3|temp\(1),
	datad => VCC,
	cin => \horizontalBLK|BIST3|Add0~1\,
	combout => \horizontalBLK|BIST3|Add0~2_combout\,
	cout => \horizontalBLK|BIST3|Add0~3\);

-- Location: LCCOMB_X26_Y20_N30
\horizontalBLK|BIST3|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \horizontalBLK|BIST3|Add0~20_combout\ = (\horizontalBLK|DUT|pr_state.tres~q\ & \horizontalBLK|BIST3|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \horizontalBLK|DUT|pr_state.tres~q\,
	datad => \horizontalBLK|BIST3|Add0~2_combout\,
	combout => \horizontalBLK|BIST3|Add0~20_combout\);

-- Location: FF_X26_Y20_N31
\horizontalBLK|BIST3|temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \horizontalBLK|BIST3|Add0~20_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \horizontalBLK|BIST3|temp\(1));

-- Location: LCCOMB_X26_Y20_N20
\horizontalBLK|BIST3|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \horizontalBLK|BIST3|Add0~4_combout\ = (\horizontalBLK|BIST3|Add0~3\ & (((\horizontalBLK|BIST3|Equal0~1_combout\) # (\horizontalBLK|BIST3|temp\(2))))) # (!\horizontalBLK|BIST3|Add0~3\ & ((((\horizontalBLK|BIST3|Equal0~1_combout\) # 
-- (\horizontalBLK|BIST3|temp\(2))))))
-- \horizontalBLK|BIST3|Add0~5\ = CARRY((!\horizontalBLK|BIST3|Add0~3\ & ((\horizontalBLK|BIST3|Equal0~1_combout\) # (\horizontalBLK|BIST3|temp\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \horizontalBLK|BIST3|Equal0~1_combout\,
	datab => \horizontalBLK|BIST3|temp\(2),
	datad => VCC,
	cin => \horizontalBLK|BIST3|Add0~3\,
	combout => \horizontalBLK|BIST3|Add0~4_combout\,
	cout => \horizontalBLK|BIST3|Add0~5\);

-- Location: LCCOMB_X26_Y20_N0
\horizontalBLK|BIST3|Add0~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \horizontalBLK|BIST3|Add0~19_combout\ = (\horizontalBLK|DUT|pr_state.tres~q\ & \horizontalBLK|BIST3|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \horizontalBLK|DUT|pr_state.tres~q\,
	datad => \horizontalBLK|BIST3|Add0~4_combout\,
	combout => \horizontalBLK|BIST3|Add0~19_combout\);

-- Location: FF_X26_Y20_N1
\horizontalBLK|BIST3|temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \horizontalBLK|BIST3|Add0~19_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \horizontalBLK|BIST3|temp\(2));

-- Location: LCCOMB_X26_Y20_N22
\horizontalBLK|BIST3|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \horizontalBLK|BIST3|Add0~6_combout\ = (\horizontalBLK|BIST3|Equal0~1_combout\ & (((!\horizontalBLK|BIST3|Add0~5\)))) # (!\horizontalBLK|BIST3|Equal0~1_combout\ & ((\horizontalBLK|BIST3|temp\(3) & (!\horizontalBLK|BIST3|Add0~5\)) # 
-- (!\horizontalBLK|BIST3|temp\(3) & ((\horizontalBLK|BIST3|Add0~5\) # (GND)))))
-- \horizontalBLK|BIST3|Add0~7\ = CARRY(((!\horizontalBLK|BIST3|Equal0~1_combout\ & !\horizontalBLK|BIST3|temp\(3))) # (!\horizontalBLK|BIST3|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \horizontalBLK|BIST3|Equal0~1_combout\,
	datab => \horizontalBLK|BIST3|temp\(3),
	datad => VCC,
	cin => \horizontalBLK|BIST3|Add0~5\,
	combout => \horizontalBLK|BIST3|Add0~6_combout\,
	cout => \horizontalBLK|BIST3|Add0~7\);

-- Location: LCCOMB_X26_Y20_N6
\horizontalBLK|BIST3|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \horizontalBLK|BIST3|Add0~18_combout\ = (\horizontalBLK|DUT|pr_state.tres~q\ & \horizontalBLK|BIST3|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \horizontalBLK|DUT|pr_state.tres~q\,
	datad => \horizontalBLK|BIST3|Add0~6_combout\,
	combout => \horizontalBLK|BIST3|Add0~18_combout\);

-- Location: FF_X26_Y20_N7
\horizontalBLK|BIST3|temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \horizontalBLK|BIST3|Add0~18_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \horizontalBLK|BIST3|temp\(3));

-- Location: LCCOMB_X26_Y20_N24
\horizontalBLK|BIST3|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \horizontalBLK|BIST3|Add0~8_combout\ = (\horizontalBLK|BIST3|Add0~7\ & (((\horizontalBLK|BIST3|Equal0~1_combout\) # (\horizontalBLK|BIST3|temp\(4))))) # (!\horizontalBLK|BIST3|Add0~7\ & ((((\horizontalBLK|BIST3|Equal0~1_combout\) # 
-- (\horizontalBLK|BIST3|temp\(4))))))
-- \horizontalBLK|BIST3|Add0~9\ = CARRY((!\horizontalBLK|BIST3|Add0~7\ & ((\horizontalBLK|BIST3|Equal0~1_combout\) # (\horizontalBLK|BIST3|temp\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \horizontalBLK|BIST3|Equal0~1_combout\,
	datab => \horizontalBLK|BIST3|temp\(4),
	datad => VCC,
	cin => \horizontalBLK|BIST3|Add0~7\,
	combout => \horizontalBLK|BIST3|Add0~8_combout\,
	cout => \horizontalBLK|BIST3|Add0~9\);

-- Location: LCCOMB_X26_Y20_N14
\horizontalBLK|BIST3|Add0~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \horizontalBLK|BIST3|Add0~17_combout\ = (\horizontalBLK|DUT|pr_state.tres~q\ & \horizontalBLK|BIST3|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \horizontalBLK|DUT|pr_state.tres~q\,
	datad => \horizontalBLK|BIST3|Add0~8_combout\,
	combout => \horizontalBLK|BIST3|Add0~17_combout\);

-- Location: FF_X26_Y20_N15
\horizontalBLK|BIST3|temp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \horizontalBLK|BIST3|Add0~17_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \horizontalBLK|BIST3|temp\(4));

-- Location: LCCOMB_X26_Y20_N28
\horizontalBLK|BIST3|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \horizontalBLK|BIST3|Add0~14_combout\ = \horizontalBLK|BIST3|Add0~11\ $ (((!\horizontalBLK|BIST3|temp\(6) & !\horizontalBLK|BIST3|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \horizontalBLK|BIST3|temp\(6),
	datad => \horizontalBLK|BIST3|Equal0~1_combout\,
	cin => \horizontalBLK|BIST3|Add0~11\,
	combout => \horizontalBLK|BIST3|Add0~14_combout\);

-- Location: LCCOMB_X26_Y20_N4
\horizontalBLK|BIST3|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \horizontalBLK|BIST3|Add0~16_combout\ = (\horizontalBLK|DUT|pr_state.tres~q\ & \horizontalBLK|BIST3|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \horizontalBLK|DUT|pr_state.tres~q\,
	datad => \horizontalBLK|BIST3|Add0~14_combout\,
	combout => \horizontalBLK|BIST3|Add0~16_combout\);

-- Location: FF_X26_Y20_N5
\horizontalBLK|BIST3|temp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \horizontalBLK|BIST3|Add0~16_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \horizontalBLK|BIST3|temp\(6));

-- Location: LCCOMB_X26_Y20_N8
\horizontalBLK|BIST3|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \horizontalBLK|BIST3|Equal0~0_combout\ = (\horizontalBLK|BIST3|temp\(5) & (!\horizontalBLK|BIST3|temp\(6) & (!\horizontalBLK|BIST3|temp\(4) & !\horizontalBLK|BIST3|temp\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \horizontalBLK|BIST3|temp\(5),
	datab => \horizontalBLK|BIST3|temp\(6),
	datac => \horizontalBLK|BIST3|temp\(4),
	datad => \horizontalBLK|BIST3|temp\(0),
	combout => \horizontalBLK|BIST3|Equal0~0_combout\);

-- Location: LCCOMB_X26_Y20_N10
\horizontalBLK|BIST3|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \horizontalBLK|BIST3|Equal0~1_combout\ = (!\horizontalBLK|BIST3|temp\(3) & (\horizontalBLK|BIST3|Equal0~0_combout\ & (!\horizontalBLK|BIST3|temp\(1) & !\horizontalBLK|BIST3|temp\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \horizontalBLK|BIST3|temp\(3),
	datab => \horizontalBLK|BIST3|Equal0~0_combout\,
	datac => \horizontalBLK|BIST3|temp\(1),
	datad => \horizontalBLK|BIST3|temp\(2),
	combout => \horizontalBLK|BIST3|Equal0~1_combout\);

-- Location: LCCOMB_X24_Y20_N22
\horizontalBLK|DUT|Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \horizontalBLK|DUT|Selector3~0_combout\ = (\horizontalBLK|DUT|pr_state.tres~q\ & ((\horizontalBLK|BIST3|Equal0~1_combout\) # ((!\horizontalBLK|BIST4|Equal0~2_combout\ & \horizontalBLK|DUT|pr_state.cuatro~q\)))) # (!\horizontalBLK|DUT|pr_state.tres~q\ & 
-- (!\horizontalBLK|BIST4|Equal0~2_combout\ & (\horizontalBLK|DUT|pr_state.cuatro~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \horizontalBLK|DUT|pr_state.tres~q\,
	datab => \horizontalBLK|BIST4|Equal0~2_combout\,
	datac => \horizontalBLK|DUT|pr_state.cuatro~q\,
	datad => \horizontalBLK|BIST3|Equal0~1_combout\,
	combout => \horizontalBLK|DUT|Selector3~0_combout\);

-- Location: FF_X24_Y20_N23
\horizontalBLK|DUT|pr_state.cuatro\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \horizontalBLK|DUT|Selector3~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \horizontalBLK|DUT|pr_state.cuatro~q\);

-- Location: LCCOMB_X23_Y20_N10
\horizontalBLK|BIST4|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \horizontalBLK|BIST4|Add0~0_combout\ = (((\horizontalBLK|BIST4|Equal0~2_combout\) # (\horizontalBLK|BIST4|temp\(0))))
-- \horizontalBLK|BIST4|Add0~1\ = CARRY((\horizontalBLK|BIST4|Equal0~2_combout\) # (\horizontalBLK|BIST4|temp\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \horizontalBLK|BIST4|Equal0~2_combout\,
	datab => \horizontalBLK|BIST4|temp\(0),
	datad => VCC,
	combout => \horizontalBLK|BIST4|Add0~0_combout\,
	cout => \horizontalBLK|BIST4|Add0~1\);

-- Location: LCCOMB_X24_Y20_N26
\horizontalBLK|BIST4|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \horizontalBLK|BIST4|Add0~18_combout\ = (\horizontalBLK|DUT|pr_state.cuatro~q\ & \horizontalBLK|BIST4|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \horizontalBLK|DUT|pr_state.cuatro~q\,
	datad => \horizontalBLK|BIST4|Add0~0_combout\,
	combout => \horizontalBLK|BIST4|Add0~18_combout\);

-- Location: FF_X24_Y20_N27
\horizontalBLK|BIST4|temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \horizontalBLK|BIST4|Add0~18_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \horizontalBLK|BIST4|temp\(0));

-- Location: LCCOMB_X23_Y20_N12
\horizontalBLK|BIST4|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \horizontalBLK|BIST4|Add0~2_combout\ = (\horizontalBLK|BIST4|Equal0~2_combout\ & (((!\horizontalBLK|BIST4|Add0~1\)))) # (!\horizontalBLK|BIST4|Equal0~2_combout\ & ((\horizontalBLK|BIST4|temp\(1) & (!\horizontalBLK|BIST4|Add0~1\)) # 
-- (!\horizontalBLK|BIST4|temp\(1) & ((\horizontalBLK|BIST4|Add0~1\) # (GND)))))
-- \horizontalBLK|BIST4|Add0~3\ = CARRY(((!\horizontalBLK|BIST4|Equal0~2_combout\ & !\horizontalBLK|BIST4|temp\(1))) # (!\horizontalBLK|BIST4|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \horizontalBLK|BIST4|Equal0~2_combout\,
	datab => \horizontalBLK|BIST4|temp\(1),
	datad => VCC,
	cin => \horizontalBLK|BIST4|Add0~1\,
	combout => \horizontalBLK|BIST4|Add0~2_combout\,
	cout => \horizontalBLK|BIST4|Add0~3\);

-- Location: LCCOMB_X24_Y20_N8
\horizontalBLK|BIST4|Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \horizontalBLK|BIST4|Add0~26_combout\ = (\horizontalBLK|BIST4|Add0~2_combout\ & \horizontalBLK|DUT|pr_state.cuatro~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \horizontalBLK|BIST4|Add0~2_combout\,
	datac => \horizontalBLK|DUT|pr_state.cuatro~q\,
	combout => \horizontalBLK|BIST4|Add0~26_combout\);

-- Location: FF_X24_Y20_N9
\horizontalBLK|BIST4|temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \horizontalBLK|BIST4|Add0~26_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \horizontalBLK|BIST4|temp\(1));

-- Location: LCCOMB_X23_Y20_N14
\horizontalBLK|BIST4|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \horizontalBLK|BIST4|Add0~4_combout\ = (\horizontalBLK|BIST4|Add0~3\ & (((\horizontalBLK|BIST4|Equal0~2_combout\) # (\horizontalBLK|BIST4|temp\(2))))) # (!\horizontalBLK|BIST4|Add0~3\ & ((((\horizontalBLK|BIST4|Equal0~2_combout\) # 
-- (\horizontalBLK|BIST4|temp\(2))))))
-- \horizontalBLK|BIST4|Add0~5\ = CARRY((!\horizontalBLK|BIST4|Add0~3\ & ((\horizontalBLK|BIST4|Equal0~2_combout\) # (\horizontalBLK|BIST4|temp\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \horizontalBLK|BIST4|Equal0~2_combout\,
	datab => \horizontalBLK|BIST4|temp\(2),
	datad => VCC,
	cin => \horizontalBLK|BIST4|Add0~3\,
	combout => \horizontalBLK|BIST4|Add0~4_combout\,
	cout => \horizontalBLK|BIST4|Add0~5\);

-- Location: LCCOMB_X23_Y20_N28
\horizontalBLK|BIST4|Add0~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \horizontalBLK|BIST4|Add0~25_combout\ = (\horizontalBLK|BIST4|Add0~4_combout\ & \horizontalBLK|DUT|pr_state.cuatro~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \horizontalBLK|BIST4|Add0~4_combout\,
	datad => \horizontalBLK|DUT|pr_state.cuatro~q\,
	combout => \horizontalBLK|BIST4|Add0~25_combout\);

-- Location: FF_X23_Y20_N29
\horizontalBLK|BIST4|temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \horizontalBLK|BIST4|Add0~25_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \horizontalBLK|BIST4|temp\(2));

-- Location: LCCOMB_X23_Y20_N16
\horizontalBLK|BIST4|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \horizontalBLK|BIST4|Add0~6_combout\ = (\horizontalBLK|BIST4|Equal0~2_combout\ & (((!\horizontalBLK|BIST4|Add0~5\)))) # (!\horizontalBLK|BIST4|Equal0~2_combout\ & ((\horizontalBLK|BIST4|temp\(3) & (!\horizontalBLK|BIST4|Add0~5\)) # 
-- (!\horizontalBLK|BIST4|temp\(3) & ((\horizontalBLK|BIST4|Add0~5\) # (GND)))))
-- \horizontalBLK|BIST4|Add0~7\ = CARRY(((!\horizontalBLK|BIST4|Equal0~2_combout\ & !\horizontalBLK|BIST4|temp\(3))) # (!\horizontalBLK|BIST4|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \horizontalBLK|BIST4|Equal0~2_combout\,
	datab => \horizontalBLK|BIST4|temp\(3),
	datad => VCC,
	cin => \horizontalBLK|BIST4|Add0~5\,
	combout => \horizontalBLK|BIST4|Add0~6_combout\,
	cout => \horizontalBLK|BIST4|Add0~7\);

-- Location: LCCOMB_X23_Y20_N2
\horizontalBLK|BIST4|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \horizontalBLK|BIST4|Add0~24_combout\ = (\horizontalBLK|DUT|pr_state.cuatro~q\ & \horizontalBLK|BIST4|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \horizontalBLK|DUT|pr_state.cuatro~q\,
	datad => \horizontalBLK|BIST4|Add0~6_combout\,
	combout => \horizontalBLK|BIST4|Add0~24_combout\);

-- Location: FF_X23_Y20_N3
\horizontalBLK|BIST4|temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \horizontalBLK|BIST4|Add0~24_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \horizontalBLK|BIST4|temp\(3));

-- Location: LCCOMB_X23_Y20_N18
\horizontalBLK|BIST4|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \horizontalBLK|BIST4|Add0~8_combout\ = (\horizontalBLK|BIST4|Add0~7\ & (((\horizontalBLK|BIST4|Equal0~2_combout\) # (\horizontalBLK|BIST4|temp\(4))))) # (!\horizontalBLK|BIST4|Add0~7\ & ((((\horizontalBLK|BIST4|Equal0~2_combout\) # 
-- (\horizontalBLK|BIST4|temp\(4))))))
-- \horizontalBLK|BIST4|Add0~9\ = CARRY((!\horizontalBLK|BIST4|Add0~7\ & ((\horizontalBLK|BIST4|Equal0~2_combout\) # (\horizontalBLK|BIST4|temp\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \horizontalBLK|BIST4|Equal0~2_combout\,
	datab => \horizontalBLK|BIST4|temp\(4),
	datad => VCC,
	cin => \horizontalBLK|BIST4|Add0~7\,
	combout => \horizontalBLK|BIST4|Add0~8_combout\,
	cout => \horizontalBLK|BIST4|Add0~9\);

-- Location: LCCOMB_X23_Y20_N4
\horizontalBLK|BIST4|Add0~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \horizontalBLK|BIST4|Add0~23_combout\ = (\horizontalBLK|DUT|pr_state.cuatro~q\ & \horizontalBLK|BIST4|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \horizontalBLK|DUT|pr_state.cuatro~q\,
	datad => \horizontalBLK|BIST4|Add0~8_combout\,
	combout => \horizontalBLK|BIST4|Add0~23_combout\);

-- Location: FF_X23_Y20_N5
\horizontalBLK|BIST4|temp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \horizontalBLK|BIST4|Add0~23_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \horizontalBLK|BIST4|temp\(4));

-- Location: LCCOMB_X23_Y20_N0
\horizontalBLK|BIST4|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \horizontalBLK|BIST4|Equal0~1_combout\ = (!\horizontalBLK|BIST4|temp\(5) & (!\horizontalBLK|BIST4|temp\(2) & (!\horizontalBLK|BIST4|temp\(4) & !\horizontalBLK|BIST4|temp\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \horizontalBLK|BIST4|temp\(5),
	datab => \horizontalBLK|BIST4|temp\(2),
	datac => \horizontalBLK|BIST4|temp\(4),
	datad => \horizontalBLK|BIST4|temp\(3),
	combout => \horizontalBLK|BIST4|Equal0~1_combout\);

-- Location: LCCOMB_X23_Y20_N22
\horizontalBLK|BIST4|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \horizontalBLK|BIST4|Add0~12_combout\ = (\horizontalBLK|BIST4|temp\(6) & (\horizontalBLK|BIST4|Add0~11\ $ (GND))) # (!\horizontalBLK|BIST4|temp\(6) & (!\horizontalBLK|BIST4|Add0~11\ & VCC))
-- \horizontalBLK|BIST4|Add0~13\ = CARRY((\horizontalBLK|BIST4|temp\(6) & !\horizontalBLK|BIST4|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \horizontalBLK|BIST4|temp\(6),
	datad => VCC,
	cin => \horizontalBLK|BIST4|Add0~11\,
	combout => \horizontalBLK|BIST4|Add0~12_combout\,
	cout => \horizontalBLK|BIST4|Add0~13\);

-- Location: LCCOMB_X23_Y20_N8
\horizontalBLK|BIST4|Add0~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \horizontalBLK|BIST4|Add0~17_combout\ = (\horizontalBLK|DUT|pr_state.cuatro~q\ & \horizontalBLK|BIST4|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \horizontalBLK|DUT|pr_state.cuatro~q\,
	datad => \horizontalBLK|BIST4|Add0~12_combout\,
	combout => \horizontalBLK|BIST4|Add0~17_combout\);

-- Location: FF_X23_Y20_N9
\horizontalBLK|BIST4|temp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \horizontalBLK|BIST4|Add0~17_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \horizontalBLK|BIST4|temp\(6));

-- Location: LCCOMB_X23_Y20_N24
\horizontalBLK|BIST4|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \horizontalBLK|BIST4|Add0~14_combout\ = (\horizontalBLK|BIST4|temp\(7) & (!\horizontalBLK|BIST4|Add0~13\)) # (!\horizontalBLK|BIST4|temp\(7) & ((\horizontalBLK|BIST4|Add0~13\) # (GND)))
-- \horizontalBLK|BIST4|Add0~15\ = CARRY((!\horizontalBLK|BIST4|Add0~13\) # (!\horizontalBLK|BIST4|temp\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \horizontalBLK|BIST4|temp\(7),
	datad => VCC,
	cin => \horizontalBLK|BIST4|Add0~13\,
	combout => \horizontalBLK|BIST4|Add0~14_combout\,
	cout => \horizontalBLK|BIST4|Add0~15\);

-- Location: LCCOMB_X24_Y20_N12
\horizontalBLK|BIST4|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \horizontalBLK|BIST4|Add0~16_combout\ = (\horizontalBLK|DUT|pr_state.cuatro~q\ & \horizontalBLK|BIST4|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \horizontalBLK|DUT|pr_state.cuatro~q\,
	datad => \horizontalBLK|BIST4|Add0~14_combout\,
	combout => \horizontalBLK|BIST4|Add0~16_combout\);

-- Location: FF_X24_Y20_N13
\horizontalBLK|BIST4|temp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \horizontalBLK|BIST4|Add0~16_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \horizontalBLK|BIST4|temp\(7));

-- Location: LCCOMB_X23_Y20_N26
\horizontalBLK|BIST4|Add0~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \horizontalBLK|BIST4|Add0~19_combout\ = \horizontalBLK|BIST4|Add0~15\ $ (((!\horizontalBLK|BIST4|Equal0~2_combout\ & !\horizontalBLK|BIST4|temp\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \horizontalBLK|BIST4|Equal0~2_combout\,
	datad => \horizontalBLK|BIST4|temp\(8),
	cin => \horizontalBLK|BIST4|Add0~15\,
	combout => \horizontalBLK|BIST4|Add0~19_combout\);

-- Location: LCCOMB_X24_Y20_N28
\horizontalBLK|BIST4|Add0~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \horizontalBLK|BIST4|Add0~21_combout\ = (\horizontalBLK|DUT|pr_state.cuatro~q\ & \horizontalBLK|BIST4|Add0~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \horizontalBLK|DUT|pr_state.cuatro~q\,
	datac => \horizontalBLK|BIST4|Add0~19_combout\,
	combout => \horizontalBLK|BIST4|Add0~21_combout\);

-- Location: FF_X24_Y20_N29
\horizontalBLK|BIST4|temp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \horizontalBLK|BIST4|Add0~21_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \horizontalBLK|BIST4|temp\(8));

-- Location: LCCOMB_X24_Y20_N6
\horizontalBLK|BIST4|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \horizontalBLK|BIST4|Equal0~0_combout\ = (\horizontalBLK|BIST4|temp\(7) & (!\horizontalBLK|BIST4|temp\(8) & (!\horizontalBLK|BIST4|temp\(0) & \horizontalBLK|BIST4|temp\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \horizontalBLK|BIST4|temp\(7),
	datab => \horizontalBLK|BIST4|temp\(8),
	datac => \horizontalBLK|BIST4|temp\(0),
	datad => \horizontalBLK|BIST4|temp\(6),
	combout => \horizontalBLK|BIST4|Equal0~0_combout\);

-- Location: LCCOMB_X23_Y20_N6
\horizontalBLK|BIST4|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \horizontalBLK|BIST4|Equal0~2_combout\ = (\horizontalBLK|BIST4|Equal0~1_combout\ & (!\horizontalBLK|BIST4|temp\(1) & \horizontalBLK|BIST4|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \horizontalBLK|BIST4|Equal0~1_combout\,
	datac => \horizontalBLK|BIST4|temp\(1),
	datad => \horizontalBLK|BIST4|Equal0~0_combout\,
	combout => \horizontalBLK|BIST4|Equal0~2_combout\);

-- Location: LCCOMB_X24_Y20_N20
\horizontalBLK|DUT|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \horizontalBLK|DUT|Selector0~0_combout\ = (\horizontalBLK|DUT|pr_state.cuatro~q\ & (!\horizontalBLK|BIST4|Equal0~2_combout\ & ((\horizontalBLK|DUT|pr_state.uno~q\) # (\horizontalBLK|BIST|Equal0~2_combout\)))) # (!\horizontalBLK|DUT|pr_state.cuatro~q\ & 
-- (((\horizontalBLK|DUT|pr_state.uno~q\) # (\horizontalBLK|BIST|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \horizontalBLK|DUT|pr_state.cuatro~q\,
	datab => \horizontalBLK|BIST4|Equal0~2_combout\,
	datac => \horizontalBLK|DUT|pr_state.uno~q\,
	datad => \horizontalBLK|BIST|Equal0~2_combout\,
	combout => \horizontalBLK|DUT|Selector0~0_combout\);

-- Location: FF_X24_Y20_N21
\horizontalBLK|DUT|pr_state.uno\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \horizontalBLK|DUT|Selector0~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \horizontalBLK|DUT|pr_state.uno~q\);

-- Location: LCCOMB_X24_Y19_N4
\horizontalBLK|BIST|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \horizontalBLK|BIST|Add0~0_combout\ = (((\horizontalBLK|BIST|temp\(0)) # (\horizontalBLK|BIST|Equal0~2_combout\)))
-- \horizontalBLK|BIST|Add0~1\ = CARRY((\horizontalBLK|BIST|temp\(0)) # (\horizontalBLK|BIST|Equal0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \horizontalBLK|BIST|temp\(0),
	datab => \horizontalBLK|BIST|Equal0~2_combout\,
	datad => VCC,
	combout => \horizontalBLK|BIST|Add0~0_combout\,
	cout => \horizontalBLK|BIST|Add0~1\);

-- Location: LCCOMB_X24_Y19_N6
\horizontalBLK|BIST|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \horizontalBLK|BIST|Add0~2_combout\ = (\horizontalBLK|BIST|temp\(1) & (((!\horizontalBLK|BIST|Add0~1\)))) # (!\horizontalBLK|BIST|temp\(1) & ((\horizontalBLK|BIST|Equal0~2_combout\ & (!\horizontalBLK|BIST|Add0~1\)) # 
-- (!\horizontalBLK|BIST|Equal0~2_combout\ & ((\horizontalBLK|BIST|Add0~1\) # (GND)))))
-- \horizontalBLK|BIST|Add0~3\ = CARRY(((!\horizontalBLK|BIST|temp\(1) & !\horizontalBLK|BIST|Equal0~2_combout\)) # (!\horizontalBLK|BIST|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \horizontalBLK|BIST|temp\(1),
	datab => \horizontalBLK|BIST|Equal0~2_combout\,
	datad => VCC,
	cin => \horizontalBLK|BIST|Add0~1\,
	combout => \horizontalBLK|BIST|Add0~2_combout\,
	cout => \horizontalBLK|BIST|Add0~3\);

-- Location: LCCOMB_X24_Y19_N8
\horizontalBLK|BIST|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \horizontalBLK|BIST|Add0~4_combout\ = (\horizontalBLK|BIST|Add0~3\ & (((\horizontalBLK|BIST|temp\(2)) # (\horizontalBLK|BIST|Equal0~2_combout\)))) # (!\horizontalBLK|BIST|Add0~3\ & ((((\horizontalBLK|BIST|temp\(2)) # 
-- (\horizontalBLK|BIST|Equal0~2_combout\)))))
-- \horizontalBLK|BIST|Add0~5\ = CARRY((!\horizontalBLK|BIST|Add0~3\ & ((\horizontalBLK|BIST|temp\(2)) # (\horizontalBLK|BIST|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \horizontalBLK|BIST|temp\(2),
	datab => \horizontalBLK|BIST|Equal0~2_combout\,
	datad => VCC,
	cin => \horizontalBLK|BIST|Add0~3\,
	combout => \horizontalBLK|BIST|Add0~4_combout\,
	cout => \horizontalBLK|BIST|Add0~5\);

-- Location: LCCOMB_X24_Y19_N12
\horizontalBLK|BIST|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \horizontalBLK|BIST|Add0~8_combout\ = (\horizontalBLK|BIST|Add0~7\ & (((\horizontalBLK|BIST|temp\(4)) # (\horizontalBLK|BIST|Equal0~2_combout\)))) # (!\horizontalBLK|BIST|Add0~7\ & ((((\horizontalBLK|BIST|temp\(4)) # 
-- (\horizontalBLK|BIST|Equal0~2_combout\)))))
-- \horizontalBLK|BIST|Add0~9\ = CARRY((!\horizontalBLK|BIST|Add0~7\ & ((\horizontalBLK|BIST|temp\(4)) # (\horizontalBLK|BIST|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \horizontalBLK|BIST|temp\(4),
	datab => \horizontalBLK|BIST|Equal0~2_combout\,
	datad => VCC,
	cin => \horizontalBLK|BIST|Add0~7\,
	combout => \horizontalBLK|BIST|Add0~8_combout\,
	cout => \horizontalBLK|BIST|Add0~9\);

-- Location: LCCOMB_X24_Y19_N16
\horizontalBLK|BIST|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \horizontalBLK|BIST|Add0~12_combout\ = (\horizontalBLK|BIST|temp\(6) & (\horizontalBLK|BIST|Add0~11\ $ (GND))) # (!\horizontalBLK|BIST|temp\(6) & (!\horizontalBLK|BIST|Add0~11\ & VCC))
-- \horizontalBLK|BIST|Add0~13\ = CARRY((\horizontalBLK|BIST|temp\(6) & !\horizontalBLK|BIST|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \horizontalBLK|BIST|temp\(6),
	datad => VCC,
	cin => \horizontalBLK|BIST|Add0~11\,
	combout => \horizontalBLK|BIST|Add0~12_combout\,
	cout => \horizontalBLK|BIST|Add0~13\);

-- Location: LCCOMB_X24_Y19_N20
\horizontalBLK|BIST|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \horizontalBLK|BIST|Add0~14_combout\ = (!\horizontalBLK|DUT|pr_state.uno~q\ & \horizontalBLK|BIST|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \horizontalBLK|DUT|pr_state.uno~q\,
	datad => \horizontalBLK|BIST|Add0~12_combout\,
	combout => \horizontalBLK|BIST|Add0~14_combout\);

-- Location: FF_X24_Y19_N21
\horizontalBLK|BIST|temp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \horizontalBLK|BIST|Add0~14_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \horizontalBLK|BIST|temp\(6));

-- Location: LCCOMB_X24_Y19_N18
\horizontalBLK|BIST|Add0~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \horizontalBLK|BIST|Add0~17_combout\ = \horizontalBLK|BIST|Add0~13\ $ (((\horizontalBLK|BIST|Equal0~2_combout\) # (\horizontalBLK|BIST|temp\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \horizontalBLK|BIST|Equal0~2_combout\,
	datad => \horizontalBLK|BIST|temp\(7),
	cin => \horizontalBLK|BIST|Add0~13\,
	combout => \horizontalBLK|BIST|Add0~17_combout\);

-- Location: LCCOMB_X24_Y19_N24
\horizontalBLK|BIST|Add0~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \horizontalBLK|BIST|Add0~19_combout\ = (!\horizontalBLK|DUT|pr_state.uno~q\ & \horizontalBLK|BIST|Add0~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \horizontalBLK|DUT|pr_state.uno~q\,
	datad => \horizontalBLK|BIST|Add0~17_combout\,
	combout => \horizontalBLK|BIST|Add0~19_combout\);

-- Location: FF_X24_Y19_N25
\horizontalBLK|BIST|temp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \horizontalBLK|BIST|Add0~19_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \horizontalBLK|BIST|temp\(7));

-- Location: LCCOMB_X23_Y19_N24
\horizontalBLK|BIST|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \horizontalBLK|BIST|Add0~16_combout\ = (!\horizontalBLK|DUT|pr_state.uno~q\ & \horizontalBLK|BIST|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \horizontalBLK|DUT|pr_state.uno~q\,
	datad => \horizontalBLK|BIST|Add0~0_combout\,
	combout => \horizontalBLK|BIST|Add0~16_combout\);

-- Location: FF_X23_Y19_N25
\horizontalBLK|BIST|temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \horizontalBLK|BIST|Add0~16_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \horizontalBLK|BIST|temp\(0));

-- Location: LCCOMB_X24_Y19_N30
\horizontalBLK|BIST|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \horizontalBLK|BIST|Equal0~0_combout\ = (\horizontalBLK|BIST|temp\(5) & (!\horizontalBLK|BIST|temp\(7) & (\horizontalBLK|BIST|temp\(6) & !\horizontalBLK|BIST|temp\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \horizontalBLK|BIST|temp\(5),
	datab => \horizontalBLK|BIST|temp\(7),
	datac => \horizontalBLK|BIST|temp\(6),
	datad => \horizontalBLK|BIST|temp\(0),
	combout => \horizontalBLK|BIST|Equal0~0_combout\);

-- Location: LCCOMB_X24_Y19_N0
\horizontalBLK|BIST|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \horizontalBLK|BIST|Add0~20_combout\ = (!\horizontalBLK|DUT|pr_state.uno~q\ & \horizontalBLK|BIST|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \horizontalBLK|DUT|pr_state.uno~q\,
	datad => \horizontalBLK|BIST|Add0~8_combout\,
	combout => \horizontalBLK|BIST|Add0~20_combout\);

-- Location: FF_X24_Y19_N1
\horizontalBLK|BIST|temp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \horizontalBLK|BIST|Add0~20_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \horizontalBLK|BIST|temp\(4));

-- Location: LCCOMB_X23_Y19_N6
\horizontalBLK|BIST|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \horizontalBLK|BIST|Add0~22_combout\ = (!\horizontalBLK|DUT|pr_state.uno~q\ & \horizontalBLK|BIST|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \horizontalBLK|DUT|pr_state.uno~q\,
	datac => \horizontalBLK|BIST|Add0~4_combout\,
	combout => \horizontalBLK|BIST|Add0~22_combout\);

-- Location: FF_X23_Y19_N7
\horizontalBLK|BIST|temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \horizontalBLK|BIST|Add0~22_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \horizontalBLK|BIST|temp\(2));

-- Location: LCCOMB_X23_Y19_N8
\horizontalBLK|BIST|Add0~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \horizontalBLK|BIST|Add0~23_combout\ = (!\horizontalBLK|DUT|pr_state.uno~q\ & \horizontalBLK|BIST|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \horizontalBLK|DUT|pr_state.uno~q\,
	datad => \horizontalBLK|BIST|Add0~2_combout\,
	combout => \horizontalBLK|BIST|Add0~23_combout\);

-- Location: FF_X23_Y19_N9
\horizontalBLK|BIST|temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \horizontalBLK|BIST|Add0~23_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \horizontalBLK|BIST|temp\(1));

-- Location: LCCOMB_X24_Y19_N28
\horizontalBLK|BIST|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \horizontalBLK|BIST|Equal0~1_combout\ = (!\horizontalBLK|BIST|temp\(3) & (!\horizontalBLK|BIST|temp\(4) & (!\horizontalBLK|BIST|temp\(2) & !\horizontalBLK|BIST|temp\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \horizontalBLK|BIST|temp\(3),
	datab => \horizontalBLK|BIST|temp\(4),
	datac => \horizontalBLK|BIST|temp\(2),
	datad => \horizontalBLK|BIST|temp\(1),
	combout => \horizontalBLK|BIST|Equal0~1_combout\);

-- Location: LCCOMB_X24_Y19_N2
\horizontalBLK|BIST|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \horizontalBLK|BIST|Equal0~2_combout\ = (\horizontalBLK|BIST|Equal0~0_combout\ & \horizontalBLK|BIST|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \horizontalBLK|BIST|Equal0~0_combout\,
	datad => \horizontalBLK|BIST|Equal0~1_combout\,
	combout => \horizontalBLK|BIST|Equal0~2_combout\);

-- Location: LCCOMB_X24_Y20_N24
\horizontalBLK|DUT|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \horizontalBLK|DUT|Selector1~0_combout\ = (\horizontalBLK|DUT|pr_state.uno~q\ & (((\horizontalBLK|DUT|pr_state.dos~q\ & !\horizontalBLK|BIST2|Equal0~3_combout\)))) # (!\horizontalBLK|DUT|pr_state.uno~q\ & ((\horizontalBLK|BIST|Equal0~2_combout\) # 
-- ((\horizontalBLK|DUT|pr_state.dos~q\ & !\horizontalBLK|BIST2|Equal0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \horizontalBLK|DUT|pr_state.uno~q\,
	datab => \horizontalBLK|BIST|Equal0~2_combout\,
	datac => \horizontalBLK|DUT|pr_state.dos~q\,
	datad => \horizontalBLK|BIST2|Equal0~3_combout\,
	combout => \horizontalBLK|DUT|Selector1~0_combout\);

-- Location: FF_X24_Y20_N25
\horizontalBLK|DUT|pr_state.dos\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \horizontalBLK|DUT|Selector1~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \horizontalBLK|DUT|pr_state.dos~q\);

-- Location: LCCOMB_X28_Y20_N22
\horizontalBLK|BIST2|Add0~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \horizontalBLK|BIST2|Add0~33_combout\ = (\horizontalBLK|BIST2|Add0~10_combout\ & \horizontalBLK|DUT|pr_state.dos~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \horizontalBLK|BIST2|Add0~10_combout\,
	datac => \horizontalBLK|DUT|pr_state.dos~q\,
	combout => \horizontalBLK|BIST2|Add0~33_combout\);

-- Location: FF_X28_Y20_N23
\horizontalBLK|BIST2|temp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \horizontalBLK|BIST2|Add0~33_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \horizontalBLK|BIST2|temp\(5));

-- Location: LCCOMB_X27_Y20_N6
\horizontalBLK|BIST2|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \horizontalBLK|BIST2|Add0~0_combout\ = (((\horizontalBLK|BIST2|temp\(0)) # (\horizontalBLK|BIST2|Equal0~3_combout\)))
-- \horizontalBLK|BIST2|Add0~1\ = CARRY((\horizontalBLK|BIST2|temp\(0)) # (\horizontalBLK|BIST2|Equal0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \horizontalBLK|BIST2|temp\(0),
	datab => \horizontalBLK|BIST2|Equal0~3_combout\,
	datad => VCC,
	combout => \horizontalBLK|BIST2|Add0~0_combout\,
	cout => \horizontalBLK|BIST2|Add0~1\);

-- Location: LCCOMB_X27_Y20_N10
\horizontalBLK|BIST2|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \horizontalBLK|BIST2|Add0~4_combout\ = (\horizontalBLK|BIST2|Add0~3\ & (((\horizontalBLK|BIST2|temp\(2)) # (\horizontalBLK|BIST2|Equal0~3_combout\)))) # (!\horizontalBLK|BIST2|Add0~3\ & ((((\horizontalBLK|BIST2|temp\(2)) # 
-- (\horizontalBLK|BIST2|Equal0~3_combout\)))))
-- \horizontalBLK|BIST2|Add0~5\ = CARRY((!\horizontalBLK|BIST2|Add0~3\ & ((\horizontalBLK|BIST2|temp\(2)) # (\horizontalBLK|BIST2|Equal0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \horizontalBLK|BIST2|temp\(2),
	datab => \horizontalBLK|BIST2|Equal0~3_combout\,
	datad => VCC,
	cin => \horizontalBLK|BIST2|Add0~3\,
	combout => \horizontalBLK|BIST2|Add0~4_combout\,
	cout => \horizontalBLK|BIST2|Add0~5\);

-- Location: LCCOMB_X27_Y20_N12
\horizontalBLK|BIST2|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \horizontalBLK|BIST2|Add0~6_combout\ = (\horizontalBLK|BIST2|temp\(3) & (((!\horizontalBLK|BIST2|Add0~5\)))) # (!\horizontalBLK|BIST2|temp\(3) & ((\horizontalBLK|BIST2|Equal0~3_combout\ & (!\horizontalBLK|BIST2|Add0~5\)) # 
-- (!\horizontalBLK|BIST2|Equal0~3_combout\ & ((\horizontalBLK|BIST2|Add0~5\) # (GND)))))
-- \horizontalBLK|BIST2|Add0~7\ = CARRY(((!\horizontalBLK|BIST2|temp\(3) & !\horizontalBLK|BIST2|Equal0~3_combout\)) # (!\horizontalBLK|BIST2|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \horizontalBLK|BIST2|temp\(3),
	datab => \horizontalBLK|BIST2|Equal0~3_combout\,
	datad => VCC,
	cin => \horizontalBLK|BIST2|Add0~5\,
	combout => \horizontalBLK|BIST2|Add0~6_combout\,
	cout => \horizontalBLK|BIST2|Add0~7\);

-- Location: LCCOMB_X27_Y20_N18
\horizontalBLK|BIST2|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \horizontalBLK|BIST2|Add0~12_combout\ = (\horizontalBLK|BIST2|Add0~11\ & (((\horizontalBLK|BIST2|Equal0~3_combout\) # (\horizontalBLK|BIST2|temp\(6))))) # (!\horizontalBLK|BIST2|Add0~11\ & ((((\horizontalBLK|BIST2|Equal0~3_combout\) # 
-- (\horizontalBLK|BIST2|temp\(6))))))
-- \horizontalBLK|BIST2|Add0~13\ = CARRY((!\horizontalBLK|BIST2|Add0~11\ & ((\horizontalBLK|BIST2|Equal0~3_combout\) # (\horizontalBLK|BIST2|temp\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \horizontalBLK|BIST2|Equal0~3_combout\,
	datab => \horizontalBLK|BIST2|temp\(6),
	datad => VCC,
	cin => \horizontalBLK|BIST2|Add0~11\,
	combout => \horizontalBLK|BIST2|Add0~12_combout\,
	cout => \horizontalBLK|BIST2|Add0~13\);

-- Location: LCCOMB_X28_Y20_N8
\horizontalBLK|BIST2|Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \horizontalBLK|BIST2|Add0~32_combout\ = (\horizontalBLK|DUT|pr_state.dos~q\ & \horizontalBLK|BIST2|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \horizontalBLK|DUT|pr_state.dos~q\,
	datac => \horizontalBLK|BIST2|Add0~12_combout\,
	combout => \horizontalBLK|BIST2|Add0~32_combout\);

-- Location: FF_X28_Y20_N9
\horizontalBLK|BIST2|temp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \horizontalBLK|BIST2|Add0~32_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \horizontalBLK|BIST2|temp\(6));

-- Location: LCCOMB_X27_Y20_N20
\horizontalBLK|BIST2|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \horizontalBLK|BIST2|Add0~14_combout\ = (\horizontalBLK|BIST2|temp\(7) & (((!\horizontalBLK|BIST2|Add0~13\)))) # (!\horizontalBLK|BIST2|temp\(7) & ((\horizontalBLK|BIST2|Equal0~3_combout\ & (!\horizontalBLK|BIST2|Add0~13\)) # 
-- (!\horizontalBLK|BIST2|Equal0~3_combout\ & ((\horizontalBLK|BIST2|Add0~13\) # (GND)))))
-- \horizontalBLK|BIST2|Add0~15\ = CARRY(((!\horizontalBLK|BIST2|temp\(7) & !\horizontalBLK|BIST2|Equal0~3_combout\)) # (!\horizontalBLK|BIST2|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \horizontalBLK|BIST2|temp\(7),
	datab => \horizontalBLK|BIST2|Equal0~3_combout\,
	datad => VCC,
	cin => \horizontalBLK|BIST2|Add0~13\,
	combout => \horizontalBLK|BIST2|Add0~14_combout\,
	cout => \horizontalBLK|BIST2|Add0~15\);

-- Location: LCCOMB_X27_Y20_N22
\horizontalBLK|BIST2|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \horizontalBLK|BIST2|Add0~16_combout\ = (\horizontalBLK|BIST2|temp\(8) & (\horizontalBLK|BIST2|Add0~15\ $ (GND))) # (!\horizontalBLK|BIST2|temp\(8) & (!\horizontalBLK|BIST2|Add0~15\ & VCC))
-- \horizontalBLK|BIST2|Add0~17\ = CARRY((\horizontalBLK|BIST2|temp\(8) & !\horizontalBLK|BIST2|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \horizontalBLK|BIST2|temp\(8),
	datad => VCC,
	cin => \horizontalBLK|BIST2|Add0~15\,
	combout => \horizontalBLK|BIST2|Add0~16_combout\,
	cout => \horizontalBLK|BIST2|Add0~17\);

-- Location: LCCOMB_X27_Y20_N26
\horizontalBLK|BIST2|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \horizontalBLK|BIST2|Add0~20_combout\ = (\horizontalBLK|BIST2|temp\(10) & (\horizontalBLK|BIST2|Add0~19\ $ (GND))) # (!\horizontalBLK|BIST2|temp\(10) & (!\horizontalBLK|BIST2|Add0~19\ & VCC))
-- \horizontalBLK|BIST2|Add0~21\ = CARRY((\horizontalBLK|BIST2|temp\(10) & !\horizontalBLK|BIST2|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \horizontalBLK|BIST2|temp\(10),
	datad => VCC,
	cin => \horizontalBLK|BIST2|Add0~19\,
	combout => \horizontalBLK|BIST2|Add0~20_combout\,
	cout => \horizontalBLK|BIST2|Add0~21\);

-- Location: LCCOMB_X28_Y20_N28
\horizontalBLK|BIST2|Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \horizontalBLK|BIST2|Add0~28_combout\ = (\horizontalBLK|DUT|pr_state.dos~q\ & \horizontalBLK|BIST2|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \horizontalBLK|DUT|pr_state.dos~q\,
	datac => \horizontalBLK|BIST2|Add0~20_combout\,
	combout => \horizontalBLK|BIST2|Add0~28_combout\);

-- Location: FF_X28_Y20_N29
\horizontalBLK|BIST2|temp[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \horizontalBLK|BIST2|Add0~28_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \horizontalBLK|BIST2|temp\(10));

-- Location: LCCOMB_X28_Y20_N4
\horizontalBLK|BIST2|Add0~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \horizontalBLK|BIST2|Add0~31_combout\ = (\horizontalBLK|DUT|pr_state.dos~q\ & \horizontalBLK|BIST2|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \horizontalBLK|DUT|pr_state.dos~q\,
	datac => \horizontalBLK|BIST2|Add0~14_combout\,
	combout => \horizontalBLK|BIST2|Add0~31_combout\);

-- Location: FF_X28_Y20_N5
\horizontalBLK|BIST2|temp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \horizontalBLK|BIST2|Add0~31_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \horizontalBLK|BIST2|temp\(7));

-- Location: LCCOMB_X28_Y20_N6
\horizontalBLK|BIST2|Add0~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \horizontalBLK|BIST2|Add0~29_combout\ = (\horizontalBLK|DUT|pr_state.dos~q\ & \horizontalBLK|BIST2|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \horizontalBLK|DUT|pr_state.dos~q\,
	datad => \horizontalBLK|BIST2|Add0~16_combout\,
	combout => \horizontalBLK|BIST2|Add0~29_combout\);

-- Location: FF_X28_Y20_N7
\horizontalBLK|BIST2|temp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \horizontalBLK|BIST2|Add0~29_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \horizontalBLK|BIST2|temp\(8));

-- Location: LCCOMB_X28_Y20_N12
\horizontalBLK|BIST2|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \horizontalBLK|BIST2|Equal0~1_combout\ = (!\horizontalBLK|BIST2|temp\(9) & (\horizontalBLK|BIST2|temp\(10) & (!\horizontalBLK|BIST2|temp\(7) & \horizontalBLK|BIST2|temp\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \horizontalBLK|BIST2|temp\(9),
	datab => \horizontalBLK|BIST2|temp\(10),
	datac => \horizontalBLK|BIST2|temp\(7),
	datad => \horizontalBLK|BIST2|temp\(8),
	combout => \horizontalBLK|BIST2|Equal0~1_combout\);

-- Location: LCCOMB_X28_Y20_N24
\horizontalBLK|BIST2|Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \horizontalBLK|BIST2|Add0~34_combout\ = (\horizontalBLK|BIST2|Add0~8_combout\ & \horizontalBLK|DUT|pr_state.dos~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \horizontalBLK|BIST2|Add0~8_combout\,
	datac => \horizontalBLK|DUT|pr_state.dos~q\,
	combout => \horizontalBLK|BIST2|Add0~34_combout\);

-- Location: FF_X28_Y20_N25
\horizontalBLK|BIST2|temp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \horizontalBLK|BIST2|Add0~34_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \horizontalBLK|BIST2|temp\(4));

-- Location: LCCOMB_X28_Y20_N14
\horizontalBLK|BIST2|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \horizontalBLK|BIST2|Equal0~2_combout\ = (!\horizontalBLK|BIST2|temp\(3) & (!\horizontalBLK|BIST2|temp\(5) & (!\horizontalBLK|BIST2|temp\(6) & !\horizontalBLK|BIST2|temp\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \horizontalBLK|BIST2|temp\(3),
	datab => \horizontalBLK|BIST2|temp\(5),
	datac => \horizontalBLK|BIST2|temp\(6),
	datad => \horizontalBLK|BIST2|temp\(4),
	combout => \horizontalBLK|BIST2|Equal0~2_combout\);

-- Location: LCCOMB_X27_Y20_N28
\horizontalBLK|BIST2|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \horizontalBLK|BIST2|Add0~22_combout\ = \horizontalBLK|BIST2|Add0~21\ $ (((\horizontalBLK|BIST2|temp\(11)) # (\horizontalBLK|BIST2|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \horizontalBLK|BIST2|temp\(11),
	datad => \horizontalBLK|BIST2|Equal0~3_combout\,
	cin => \horizontalBLK|BIST2|Add0~21\,
	combout => \horizontalBLK|BIST2|Add0~22_combout\);

-- Location: LCCOMB_X28_Y20_N10
\horizontalBLK|BIST2|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \horizontalBLK|BIST2|Add0~24_combout\ = (\horizontalBLK|DUT|pr_state.dos~q\ & \horizontalBLK|BIST2|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \horizontalBLK|DUT|pr_state.dos~q\,
	datad => \horizontalBLK|BIST2|Add0~22_combout\,
	combout => \horizontalBLK|BIST2|Add0~24_combout\);

-- Location: FF_X28_Y20_N11
\horizontalBLK|BIST2|temp[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \horizontalBLK|BIST2|Add0~24_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \horizontalBLK|BIST2|temp\(11));

-- Location: LCCOMB_X27_Y20_N2
\horizontalBLK|BIST2|Add0~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \horizontalBLK|BIST2|Add0~27_combout\ = (\horizontalBLK|BIST2|Add0~4_combout\ & \horizontalBLK|DUT|pr_state.dos~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \horizontalBLK|BIST2|Add0~4_combout\,
	datad => \horizontalBLK|DUT|pr_state.dos~q\,
	combout => \horizontalBLK|BIST2|Add0~27_combout\);

-- Location: FF_X27_Y20_N3
\horizontalBLK|BIST2|temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \horizontalBLK|BIST2|Add0~27_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \horizontalBLK|BIST2|temp\(2));

-- Location: LCCOMB_X27_Y20_N0
\horizontalBLK|BIST2|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \horizontalBLK|BIST2|Equal0~0_combout\ = (!\horizontalBLK|BIST2|temp\(1) & (!\horizontalBLK|BIST2|temp\(11) & (!\horizontalBLK|BIST2|temp\(0) & !\horizontalBLK|BIST2|temp\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \horizontalBLK|BIST2|temp\(1),
	datab => \horizontalBLK|BIST2|temp\(11),
	datac => \horizontalBLK|BIST2|temp\(0),
	datad => \horizontalBLK|BIST2|temp\(2),
	combout => \horizontalBLK|BIST2|Equal0~0_combout\);

-- Location: LCCOMB_X27_Y20_N4
\horizontalBLK|BIST2|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \horizontalBLK|BIST2|Equal0~3_combout\ = (\horizontalBLK|BIST2|Equal0~1_combout\ & (\horizontalBLK|BIST2|Equal0~2_combout\ & \horizontalBLK|BIST2|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \horizontalBLK|BIST2|Equal0~1_combout\,
	datac => \horizontalBLK|BIST2|Equal0~2_combout\,
	datad => \horizontalBLK|BIST2|Equal0~0_combout\,
	combout => \horizontalBLK|BIST2|Equal0~3_combout\);

-- Location: LCCOMB_X27_Y20_N30
\horizontalBLK|BIST2|Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \horizontalBLK|BIST2|Add0~26_combout\ = (\horizontalBLK|BIST2|Add0~0_combout\ & \horizontalBLK|DUT|pr_state.dos~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \horizontalBLK|BIST2|Add0~0_combout\,
	datad => \horizontalBLK|DUT|pr_state.dos~q\,
	combout => \horizontalBLK|BIST2|Add0~26_combout\);

-- Location: FF_X27_Y20_N31
\horizontalBLK|BIST2|temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \horizontalBLK|BIST2|Add0~26_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \horizontalBLK|BIST2|temp\(0));

-- Location: LCCOMB_X28_Y20_N16
\horizontalBLK|BIST2|Add0~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \horizontalBLK|BIST2|Add0~25_combout\ = (\horizontalBLK|BIST2|Add0~2_combout\ & \horizontalBLK|DUT|pr_state.dos~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \horizontalBLK|BIST2|Add0~2_combout\,
	datac => \horizontalBLK|DUT|pr_state.dos~q\,
	combout => \horizontalBLK|BIST2|Add0~25_combout\);

-- Location: FF_X28_Y20_N17
\horizontalBLK|BIST2|temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \horizontalBLK|BIST2|Add0~25_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \horizontalBLK|BIST2|temp\(1));

-- Location: LCCOMB_X28_Y19_N2
\controlDibujoBLK|combinational~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controlDibujoBLK|combinational~0_combout\ = (!\horizontalBLK|BIST2|temp\(0) & (!\horizontalBLK|BIST2|temp\(2) & (\horizontalBLK|BIST2|temp\(3) $ (\horizontalBLK|BIST2|temp\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \horizontalBLK|BIST2|temp\(3),
	datab => \horizontalBLK|BIST2|temp\(0),
	datac => \horizontalBLK|BIST2|temp\(2),
	datad => \horizontalBLK|BIST2|temp\(1),
	combout => \controlDibujoBLK|combinational~0_combout\);

-- Location: LCCOMB_X24_Y23_N18
\verticalBLK|BIST|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST|Add0~2_combout\ = (\verticalBLK|BIST|temp\(1) & (((!\verticalBLK|BIST|Add0~1\)))) # (!\verticalBLK|BIST|temp\(1) & ((\verticalBLK|BIST|Equal0~5_combout\ & (!\verticalBLK|BIST|Add0~1\)) # (!\verticalBLK|BIST|Equal0~5_combout\ & 
-- ((\verticalBLK|BIST|Add0~1\) # (GND)))))
-- \verticalBLK|BIST|Add0~3\ = CARRY(((!\verticalBLK|BIST|temp\(1) & !\verticalBLK|BIST|Equal0~5_combout\)) # (!\verticalBLK|BIST|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \verticalBLK|BIST|temp\(1),
	datab => \verticalBLK|BIST|Equal0~5_combout\,
	datad => VCC,
	cin => \verticalBLK|BIST|Add0~1\,
	combout => \verticalBLK|BIST|Add0~2_combout\,
	cout => \verticalBLK|BIST|Add0~3\);

-- Location: LCCOMB_X24_Y23_N20
\verticalBLK|BIST|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST|Add0~4_combout\ = (\verticalBLK|BIST|Add0~3\ & (((\verticalBLK|BIST|temp\(2)) # (\verticalBLK|BIST|Equal0~5_combout\)))) # (!\verticalBLK|BIST|Add0~3\ & ((((\verticalBLK|BIST|temp\(2)) # (\verticalBLK|BIST|Equal0~5_combout\)))))
-- \verticalBLK|BIST|Add0~5\ = CARRY((!\verticalBLK|BIST|Add0~3\ & ((\verticalBLK|BIST|temp\(2)) # (\verticalBLK|BIST|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \verticalBLK|BIST|temp\(2),
	datab => \verticalBLK|BIST|Equal0~5_combout\,
	datad => VCC,
	cin => \verticalBLK|BIST|Add0~3\,
	combout => \verticalBLK|BIST|Add0~4_combout\,
	cout => \verticalBLK|BIST|Add0~5\);

-- Location: LCCOMB_X27_Y19_N12
\verticalBLK|BIST2|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST2|Add0~0_combout\ = (((\verticalBLK|BIST2|Equal0~6_combout\) # (\verticalBLK|BIST2|temp\(0))))
-- \verticalBLK|BIST2|Add0~1\ = CARRY((\verticalBLK|BIST2|Equal0~6_combout\) # (\verticalBLK|BIST2|temp\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \verticalBLK|BIST2|Equal0~6_combout\,
	datab => \verticalBLK|BIST2|temp\(0),
	datad => VCC,
	combout => \verticalBLK|BIST2|Add0~0_combout\,
	cout => \verticalBLK|BIST2|Add0~1\);

-- Location: LCCOMB_X27_Y19_N6
\verticalBLK|BIST2|Add0~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST2|Add0~42_combout\ = (\verticalBLK|DUT|pr_state.dos~q\ & \verticalBLK|BIST2|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \verticalBLK|DUT|pr_state.dos~q\,
	datad => \verticalBLK|BIST2|Add0~0_combout\,
	combout => \verticalBLK|BIST2|Add0~42_combout\);

-- Location: FF_X27_Y19_N7
\verticalBLK|BIST2|temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \verticalBLK|BIST2|Add0~42_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \verticalBLK|BIST2|temp\(0));

-- Location: LCCOMB_X27_Y19_N14
\verticalBLK|BIST2|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST2|Add0~2_combout\ = (\verticalBLK|BIST2|Equal0~6_combout\ & (((!\verticalBLK|BIST2|Add0~1\)))) # (!\verticalBLK|BIST2|Equal0~6_combout\ & ((\verticalBLK|BIST2|temp\(1) & (!\verticalBLK|BIST2|Add0~1\)) # (!\verticalBLK|BIST2|temp\(1) & 
-- ((\verticalBLK|BIST2|Add0~1\) # (GND)))))
-- \verticalBLK|BIST2|Add0~3\ = CARRY(((!\verticalBLK|BIST2|Equal0~6_combout\ & !\verticalBLK|BIST2|temp\(1))) # (!\verticalBLK|BIST2|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \verticalBLK|BIST2|Equal0~6_combout\,
	datab => \verticalBLK|BIST2|temp\(1),
	datad => VCC,
	cin => \verticalBLK|BIST2|Add0~1\,
	combout => \verticalBLK|BIST2|Add0~2_combout\,
	cout => \verticalBLK|BIST2|Add0~3\);

-- Location: LCCOMB_X28_Y19_N14
\verticalBLK|BIST2|Add0~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST2|Add0~49_combout\ = (\verticalBLK|DUT|pr_state.dos~q\ & \verticalBLK|BIST2|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \verticalBLK|DUT|pr_state.dos~q\,
	datad => \verticalBLK|BIST2|Add0~2_combout\,
	combout => \verticalBLK|BIST2|Add0~49_combout\);

-- Location: FF_X28_Y19_N15
\verticalBLK|BIST2|temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \verticalBLK|BIST2|Add0~49_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \verticalBLK|BIST2|temp\(1));

-- Location: LCCOMB_X27_Y19_N16
\verticalBLK|BIST2|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST2|Add0~4_combout\ = (\verticalBLK|BIST2|Add0~3\ & (((\verticalBLK|BIST2|Equal0~6_combout\) # (\verticalBLK|BIST2|temp\(2))))) # (!\verticalBLK|BIST2|Add0~3\ & ((((\verticalBLK|BIST2|Equal0~6_combout\) # (\verticalBLK|BIST2|temp\(2))))))
-- \verticalBLK|BIST2|Add0~5\ = CARRY((!\verticalBLK|BIST2|Add0~3\ & ((\verticalBLK|BIST2|Equal0~6_combout\) # (\verticalBLK|BIST2|temp\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \verticalBLK|BIST2|Equal0~6_combout\,
	datab => \verticalBLK|BIST2|temp\(2),
	datad => VCC,
	cin => \verticalBLK|BIST2|Add0~3\,
	combout => \verticalBLK|BIST2|Add0~4_combout\,
	cout => \verticalBLK|BIST2|Add0~5\);

-- Location: LCCOMB_X28_Y19_N0
\verticalBLK|BIST2|Add0~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST2|Add0~54_combout\ = (\verticalBLK|BIST2|Add0~4_combout\ & \verticalBLK|DUT|pr_state.dos~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \verticalBLK|BIST2|Add0~4_combout\,
	datad => \verticalBLK|DUT|pr_state.dos~q\,
	combout => \verticalBLK|BIST2|Add0~54_combout\);

-- Location: FF_X28_Y19_N1
\verticalBLK|BIST2|temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \verticalBLK|BIST2|Add0~54_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \verticalBLK|BIST2|temp\(2));

-- Location: LCCOMB_X27_Y19_N18
\verticalBLK|BIST2|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST2|Add0~6_combout\ = (\verticalBLK|BIST2|Equal0~6_combout\ & (((!\verticalBLK|BIST2|Add0~5\)))) # (!\verticalBLK|BIST2|Equal0~6_combout\ & ((\verticalBLK|BIST2|temp\(3) & (!\verticalBLK|BIST2|Add0~5\)) # (!\verticalBLK|BIST2|temp\(3) & 
-- ((\verticalBLK|BIST2|Add0~5\) # (GND)))))
-- \verticalBLK|BIST2|Add0~7\ = CARRY(((!\verticalBLK|BIST2|Equal0~6_combout\ & !\verticalBLK|BIST2|temp\(3))) # (!\verticalBLK|BIST2|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \verticalBLK|BIST2|Equal0~6_combout\,
	datab => \verticalBLK|BIST2|temp\(3),
	datad => VCC,
	cin => \verticalBLK|BIST2|Add0~5\,
	combout => \verticalBLK|BIST2|Add0~6_combout\,
	cout => \verticalBLK|BIST2|Add0~7\);

-- Location: LCCOMB_X28_Y19_N22
\verticalBLK|BIST2|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST2|Add0~8_combout\ = (\verticalBLK|DUT|pr_state.dos~q\ & \verticalBLK|BIST2|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \verticalBLK|DUT|pr_state.dos~q\,
	datad => \verticalBLK|BIST2|Add0~6_combout\,
	combout => \verticalBLK|BIST2|Add0~8_combout\);

-- Location: FF_X28_Y19_N23
\verticalBLK|BIST2|temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \verticalBLK|BIST2|Add0~8_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \verticalBLK|BIST2|temp\(3));

-- Location: LCCOMB_X27_Y19_N20
\verticalBLK|BIST2|Add0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST2|Add0~9_combout\ = (\verticalBLK|BIST2|Add0~7\ & (((\verticalBLK|BIST2|Equal0~6_combout\) # (\verticalBLK|BIST2|temp\(4))))) # (!\verticalBLK|BIST2|Add0~7\ & ((((\verticalBLK|BIST2|Equal0~6_combout\) # (\verticalBLK|BIST2|temp\(4))))))
-- \verticalBLK|BIST2|Add0~10\ = CARRY((!\verticalBLK|BIST2|Add0~7\ & ((\verticalBLK|BIST2|Equal0~6_combout\) # (\verticalBLK|BIST2|temp\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \verticalBLK|BIST2|Equal0~6_combout\,
	datab => \verticalBLK|BIST2|temp\(4),
	datad => VCC,
	cin => \verticalBLK|BIST2|Add0~7\,
	combout => \verticalBLK|BIST2|Add0~9_combout\,
	cout => \verticalBLK|BIST2|Add0~10\);

-- Location: LCCOMB_X28_Y19_N6
\verticalBLK|BIST2|Add0~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST2|Add0~48_combout\ = (\verticalBLK|DUT|pr_state.dos~q\ & \verticalBLK|BIST2|Add0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \verticalBLK|DUT|pr_state.dos~q\,
	datad => \verticalBLK|BIST2|Add0~9_combout\,
	combout => \verticalBLK|BIST2|Add0~48_combout\);

-- Location: FF_X28_Y19_N7
\verticalBLK|BIST2|temp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \verticalBLK|BIST2|Add0~48_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \verticalBLK|BIST2|temp\(4));

-- Location: LCCOMB_X27_Y19_N4
\verticalBLK|BIST2|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST2|Equal0~1_combout\ = (!\verticalBLK|BIST2|temp\(6) & (!\verticalBLK|BIST2|temp\(5) & (!\verticalBLK|BIST2|temp\(1) & !\verticalBLK|BIST2|temp\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \verticalBLK|BIST2|temp\(6),
	datab => \verticalBLK|BIST2|temp\(5),
	datac => \verticalBLK|BIST2|temp\(1),
	datad => \verticalBLK|BIST2|temp\(4),
	combout => \verticalBLK|BIST2|Equal0~1_combout\);

-- Location: LCCOMB_X27_Y19_N22
\verticalBLK|BIST2|Add0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST2|Add0~11_combout\ = (\verticalBLK|BIST2|Equal0~6_combout\ & (((!\verticalBLK|BIST2|Add0~10\)))) # (!\verticalBLK|BIST2|Equal0~6_combout\ & ((\verticalBLK|BIST2|temp\(5) & (!\verticalBLK|BIST2|Add0~10\)) # (!\verticalBLK|BIST2|temp\(5) & 
-- ((\verticalBLK|BIST2|Add0~10\) # (GND)))))
-- \verticalBLK|BIST2|Add0~12\ = CARRY(((!\verticalBLK|BIST2|Equal0~6_combout\ & !\verticalBLK|BIST2|temp\(5))) # (!\verticalBLK|BIST2|Add0~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \verticalBLK|BIST2|Equal0~6_combout\,
	datab => \verticalBLK|BIST2|temp\(5),
	datad => VCC,
	cin => \verticalBLK|BIST2|Add0~10\,
	combout => \verticalBLK|BIST2|Add0~11_combout\,
	cout => \verticalBLK|BIST2|Add0~12\);

-- Location: LCCOMB_X27_Y19_N24
\verticalBLK|BIST2|Add0~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST2|Add0~13_combout\ = (\verticalBLK|BIST2|Add0~12\ & (((\verticalBLK|BIST2|Equal0~6_combout\) # (\verticalBLK|BIST2|temp\(6))))) # (!\verticalBLK|BIST2|Add0~12\ & ((((\verticalBLK|BIST2|Equal0~6_combout\) # 
-- (\verticalBLK|BIST2|temp\(6))))))
-- \verticalBLK|BIST2|Add0~14\ = CARRY((!\verticalBLK|BIST2|Add0~12\ & ((\verticalBLK|BIST2|Equal0~6_combout\) # (\verticalBLK|BIST2|temp\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \verticalBLK|BIST2|Equal0~6_combout\,
	datab => \verticalBLK|BIST2|temp\(6),
	datad => VCC,
	cin => \verticalBLK|BIST2|Add0~12\,
	combout => \verticalBLK|BIST2|Add0~13_combout\,
	cout => \verticalBLK|BIST2|Add0~14\);

-- Location: LCCOMB_X26_Y19_N0
\verticalBLK|BIST2|Add0~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST2|Add0~46_combout\ = (\verticalBLK|DUT|pr_state.dos~q\ & \verticalBLK|BIST2|Add0~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \verticalBLK|DUT|pr_state.dos~q\,
	datad => \verticalBLK|BIST2|Add0~13_combout\,
	combout => \verticalBLK|BIST2|Add0~46_combout\);

-- Location: FF_X26_Y19_N1
\verticalBLK|BIST2|temp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \verticalBLK|BIST2|Add0~46_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \verticalBLK|BIST2|temp\(6));

-- Location: LCCOMB_X27_Y19_N26
\verticalBLK|BIST2|Add0~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST2|Add0~15_combout\ = (\verticalBLK|BIST2|Equal0~6_combout\ & (((!\verticalBLK|BIST2|Add0~14\)))) # (!\verticalBLK|BIST2|Equal0~6_combout\ & ((\verticalBLK|BIST2|temp\(7) & (!\verticalBLK|BIST2|Add0~14\)) # (!\verticalBLK|BIST2|temp\(7) & 
-- ((\verticalBLK|BIST2|Add0~14\) # (GND)))))
-- \verticalBLK|BIST2|Add0~16\ = CARRY(((!\verticalBLK|BIST2|Equal0~6_combout\ & !\verticalBLK|BIST2|temp\(7))) # (!\verticalBLK|BIST2|Add0~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \verticalBLK|BIST2|Equal0~6_combout\,
	datab => \verticalBLK|BIST2|temp\(7),
	datad => VCC,
	cin => \verticalBLK|BIST2|Add0~14\,
	combout => \verticalBLK|BIST2|Add0~15_combout\,
	cout => \verticalBLK|BIST2|Add0~16\);

-- Location: LCCOMB_X26_Y19_N12
\verticalBLK|BIST2|Add0~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST2|Add0~62_combout\ = (\verticalBLK|DUT|pr_state.dos~q\ & \verticalBLK|BIST2|Add0~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \verticalBLK|DUT|pr_state.dos~q\,
	datad => \verticalBLK|BIST2|Add0~15_combout\,
	combout => \verticalBLK|BIST2|Add0~62_combout\);

-- Location: FF_X26_Y19_N13
\verticalBLK|BIST2|temp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \verticalBLK|BIST2|Add0~62_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \verticalBLK|BIST2|temp\(7));

-- Location: LCCOMB_X27_Y19_N28
\verticalBLK|BIST2|Add0~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST2|Add0~17_combout\ = (\verticalBLK|BIST2|Add0~16\ & (((\verticalBLK|BIST2|Equal0~6_combout\) # (\verticalBLK|BIST2|temp\(8))))) # (!\verticalBLK|BIST2|Add0~16\ & ((((\verticalBLK|BIST2|Equal0~6_combout\) # 
-- (\verticalBLK|BIST2|temp\(8))))))
-- \verticalBLK|BIST2|Add0~18\ = CARRY((!\verticalBLK|BIST2|Add0~16\ & ((\verticalBLK|BIST2|Equal0~6_combout\) # (\verticalBLK|BIST2|temp\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \verticalBLK|BIST2|Equal0~6_combout\,
	datab => \verticalBLK|BIST2|temp\(8),
	datad => VCC,
	cin => \verticalBLK|BIST2|Add0~16\,
	combout => \verticalBLK|BIST2|Add0~17_combout\,
	cout => \verticalBLK|BIST2|Add0~18\);

-- Location: LCCOMB_X26_Y19_N18
\verticalBLK|BIST2|Add0~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST2|Add0~61_combout\ = (\verticalBLK|DUT|pr_state.dos~q\ & \verticalBLK|BIST2|Add0~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \verticalBLK|DUT|pr_state.dos~q\,
	datad => \verticalBLK|BIST2|Add0~17_combout\,
	combout => \verticalBLK|BIST2|Add0~61_combout\);

-- Location: FF_X26_Y19_N19
\verticalBLK|BIST2|temp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \verticalBLK|BIST2|Add0~61_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \verticalBLK|BIST2|temp\(8));

-- Location: LCCOMB_X27_Y19_N30
\verticalBLK|BIST2|Add0~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST2|Add0~19_combout\ = (\verticalBLK|BIST2|Equal0~6_combout\ & (((!\verticalBLK|BIST2|Add0~18\)))) # (!\verticalBLK|BIST2|Equal0~6_combout\ & ((\verticalBLK|BIST2|temp\(9) & (!\verticalBLK|BIST2|Add0~18\)) # (!\verticalBLK|BIST2|temp\(9) & 
-- ((\verticalBLK|BIST2|Add0~18\) # (GND)))))
-- \verticalBLK|BIST2|Add0~20\ = CARRY(((!\verticalBLK|BIST2|Equal0~6_combout\ & !\verticalBLK|BIST2|temp\(9))) # (!\verticalBLK|BIST2|Add0~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \verticalBLK|BIST2|Equal0~6_combout\,
	datab => \verticalBLK|BIST2|temp\(9),
	datad => VCC,
	cin => \verticalBLK|BIST2|Add0~18\,
	combout => \verticalBLK|BIST2|Add0~19_combout\,
	cout => \verticalBLK|BIST2|Add0~20\);

-- Location: LCCOMB_X26_Y19_N24
\verticalBLK|BIST2|Add0~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST2|Add0~60_combout\ = (\verticalBLK|BIST2|Add0~19_combout\ & \verticalBLK|DUT|pr_state.dos~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \verticalBLK|BIST2|Add0~19_combout\,
	datad => \verticalBLK|DUT|pr_state.dos~q\,
	combout => \verticalBLK|BIST2|Add0~60_combout\);

-- Location: FF_X26_Y19_N25
\verticalBLK|BIST2|temp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \verticalBLK|BIST2|Add0~60_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \verticalBLK|BIST2|temp\(9));

-- Location: LCCOMB_X27_Y18_N0
\verticalBLK|BIST2|Add0~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST2|Add0~21_combout\ = (\verticalBLK|BIST2|Add0~20\ & (((\verticalBLK|BIST2|temp\(10)) # (\verticalBLK|BIST2|Equal0~6_combout\)))) # (!\verticalBLK|BIST2|Add0~20\ & ((((\verticalBLK|BIST2|temp\(10)) # 
-- (\verticalBLK|BIST2|Equal0~6_combout\)))))
-- \verticalBLK|BIST2|Add0~22\ = CARRY((!\verticalBLK|BIST2|Add0~20\ & ((\verticalBLK|BIST2|temp\(10)) # (\verticalBLK|BIST2|Equal0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \verticalBLK|BIST2|temp\(10),
	datab => \verticalBLK|BIST2|Equal0~6_combout\,
	datad => VCC,
	cin => \verticalBLK|BIST2|Add0~20\,
	combout => \verticalBLK|BIST2|Add0~21_combout\,
	cout => \verticalBLK|BIST2|Add0~22\);

-- Location: LCCOMB_X27_Y18_N6
\verticalBLK|BIST2|Add0~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST2|Add0~27_combout\ = (\verticalBLK|BIST2|temp\(13) & (!\verticalBLK|BIST2|Add0~26\)) # (!\verticalBLK|BIST2|temp\(13) & ((\verticalBLK|BIST2|Add0~26\) # (GND)))
-- \verticalBLK|BIST2|Add0~28\ = CARRY((!\verticalBLK|BIST2|Add0~26\) # (!\verticalBLK|BIST2|temp\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \verticalBLK|BIST2|temp\(13),
	datad => VCC,
	cin => \verticalBLK|BIST2|Add0~26\,
	combout => \verticalBLK|BIST2|Add0~27_combout\,
	cout => \verticalBLK|BIST2|Add0~28\);

-- Location: LCCOMB_X26_Y19_N28
\verticalBLK|BIST2|Add0~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST2|Add0~51_combout\ = (\verticalBLK|BIST2|Add0~27_combout\ & \verticalBLK|DUT|pr_state.dos~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \verticalBLK|BIST2|Add0~27_combout\,
	datad => \verticalBLK|DUT|pr_state.dos~q\,
	combout => \verticalBLK|BIST2|Add0~51_combout\);

-- Location: FF_X26_Y19_N29
\verticalBLK|BIST2|temp[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \verticalBLK|BIST2|Add0~51_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \verticalBLK|BIST2|temp\(13));

-- Location: LCCOMB_X27_Y18_N8
\verticalBLK|BIST2|Add0~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST2|Add0~29_combout\ = (\verticalBLK|BIST2|temp\(14) & (\verticalBLK|BIST2|Add0~28\ $ (GND))) # (!\verticalBLK|BIST2|temp\(14) & (!\verticalBLK|BIST2|Add0~28\ & VCC))
-- \verticalBLK|BIST2|Add0~30\ = CARRY((\verticalBLK|BIST2|temp\(14) & !\verticalBLK|BIST2|Add0~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \verticalBLK|BIST2|temp\(14),
	datad => VCC,
	cin => \verticalBLK|BIST2|Add0~28\,
	combout => \verticalBLK|BIST2|Add0~29_combout\,
	cout => \verticalBLK|BIST2|Add0~30\);

-- Location: LCCOMB_X26_Y19_N26
\verticalBLK|BIST2|Add0~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST2|Add0~50_combout\ = (\verticalBLK|BIST2|Add0~29_combout\ & \verticalBLK|DUT|pr_state.dos~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \verticalBLK|BIST2|Add0~29_combout\,
	datad => \verticalBLK|DUT|pr_state.dos~q\,
	combout => \verticalBLK|BIST2|Add0~50_combout\);

-- Location: FF_X26_Y19_N27
\verticalBLK|BIST2|temp[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \verticalBLK|BIST2|Add0~50_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \verticalBLK|BIST2|temp\(14));

-- Location: LCCOMB_X27_Y18_N10
\verticalBLK|BIST2|Add0~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST2|Add0~31_combout\ = (\verticalBLK|BIST2|temp\(15) & (((!\verticalBLK|BIST2|Add0~30\)))) # (!\verticalBLK|BIST2|temp\(15) & ((\verticalBLK|BIST2|Equal0~6_combout\ & (!\verticalBLK|BIST2|Add0~30\)) # (!\verticalBLK|BIST2|Equal0~6_combout\ 
-- & ((\verticalBLK|BIST2|Add0~30\) # (GND)))))
-- \verticalBLK|BIST2|Add0~32\ = CARRY(((!\verticalBLK|BIST2|temp\(15) & !\verticalBLK|BIST2|Equal0~6_combout\)) # (!\verticalBLK|BIST2|Add0~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \verticalBLK|BIST2|temp\(15),
	datab => \verticalBLK|BIST2|Equal0~6_combout\,
	datad => VCC,
	cin => \verticalBLK|BIST2|Add0~30\,
	combout => \verticalBLK|BIST2|Add0~31_combout\,
	cout => \verticalBLK|BIST2|Add0~32\);

-- Location: LCCOMB_X27_Y18_N14
\verticalBLK|BIST2|Add0~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST2|Add0~35_combout\ = (\verticalBLK|BIST2|temp\(17) & (((!\verticalBLK|BIST2|Add0~34\)))) # (!\verticalBLK|BIST2|temp\(17) & ((\verticalBLK|BIST2|Equal0~6_combout\ & (!\verticalBLK|BIST2|Add0~34\)) # (!\verticalBLK|BIST2|Equal0~6_combout\ 
-- & ((\verticalBLK|BIST2|Add0~34\) # (GND)))))
-- \verticalBLK|BIST2|Add0~36\ = CARRY(((!\verticalBLK|BIST2|temp\(17) & !\verticalBLK|BIST2|Equal0~6_combout\)) # (!\verticalBLK|BIST2|Add0~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \verticalBLK|BIST2|temp\(17),
	datab => \verticalBLK|BIST2|Equal0~6_combout\,
	datad => VCC,
	cin => \verticalBLK|BIST2|Add0~34\,
	combout => \verticalBLK|BIST2|Add0~35_combout\,
	cout => \verticalBLK|BIST2|Add0~36\);

-- Location: LCCOMB_X27_Y18_N16
\verticalBLK|BIST2|Add0~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST2|Add0~37_combout\ = (\verticalBLK|BIST2|Add0~36\ & (((\verticalBLK|BIST2|temp\(18)) # (\verticalBLK|BIST2|Equal0~6_combout\)))) # (!\verticalBLK|BIST2|Add0~36\ & ((((\verticalBLK|BIST2|temp\(18)) # 
-- (\verticalBLK|BIST2|Equal0~6_combout\)))))
-- \verticalBLK|BIST2|Add0~38\ = CARRY((!\verticalBLK|BIST2|Add0~36\ & ((\verticalBLK|BIST2|temp\(18)) # (\verticalBLK|BIST2|Equal0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \verticalBLK|BIST2|temp\(18),
	datab => \verticalBLK|BIST2|Equal0~6_combout\,
	datad => VCC,
	cin => \verticalBLK|BIST2|Add0~36\,
	combout => \verticalBLK|BIST2|Add0~37_combout\,
	cout => \verticalBLK|BIST2|Add0~38\);

-- Location: LCCOMB_X27_Y18_N18
\verticalBLK|BIST2|Add0~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST2|Add0~39_combout\ = (\verticalBLK|BIST2|temp\(19) & (!\verticalBLK|BIST2|Add0~38\)) # (!\verticalBLK|BIST2|temp\(19) & ((\verticalBLK|BIST2|Add0~38\) # (GND)))
-- \verticalBLK|BIST2|Add0~40\ = CARRY((!\verticalBLK|BIST2|Add0~38\) # (!\verticalBLK|BIST2|temp\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \verticalBLK|BIST2|temp\(19),
	datad => VCC,
	cin => \verticalBLK|BIST2|Add0~38\,
	combout => \verticalBLK|BIST2|Add0~39_combout\,
	cout => \verticalBLK|BIST2|Add0~40\);

-- Location: LCCOMB_X27_Y18_N26
\verticalBLK|BIST2|Add0~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST2|Add0~41_combout\ = (\verticalBLK|DUT|pr_state.dos~q\ & \verticalBLK|BIST2|Add0~39_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \verticalBLK|DUT|pr_state.dos~q\,
	datad => \verticalBLK|BIST2|Add0~39_combout\,
	combout => \verticalBLK|BIST2|Add0~41_combout\);

-- Location: FF_X27_Y18_N27
\verticalBLK|BIST2|temp[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \verticalBLK|BIST2|Add0~41_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \verticalBLK|BIST2|temp\(19));

-- Location: LCCOMB_X27_Y18_N20
\verticalBLK|BIST2|Add0~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST2|Add0~43_combout\ = \verticalBLK|BIST2|Add0~40\ $ (((!\verticalBLK|BIST2|Equal0~6_combout\ & !\verticalBLK|BIST2|temp\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \verticalBLK|BIST2|Equal0~6_combout\,
	datad => \verticalBLK|BIST2|temp\(20),
	cin => \verticalBLK|BIST2|Add0~40\,
	combout => \verticalBLK|BIST2|Add0~43_combout\);

-- Location: LCCOMB_X27_Y18_N28
\verticalBLK|BIST2|Add0~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST2|Add0~45_combout\ = (\verticalBLK|DUT|pr_state.dos~q\ & \verticalBLK|BIST2|Add0~43_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \verticalBLK|DUT|pr_state.dos~q\,
	datad => \verticalBLK|BIST2|Add0~43_combout\,
	combout => \verticalBLK|BIST2|Add0~45_combout\);

-- Location: FF_X27_Y18_N29
\verticalBLK|BIST2|temp[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \verticalBLK|BIST2|Add0~45_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \verticalBLK|BIST2|temp\(20));

-- Location: LCCOMB_X27_Y19_N8
\verticalBLK|BIST2|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST2|Equal0~0_combout\ = (!\verticalBLK|BIST2|temp\(0) & (!\verticalBLK|BIST2|temp\(3) & (\verticalBLK|BIST2|temp\(19) & !\verticalBLK|BIST2|temp\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \verticalBLK|BIST2|temp\(0),
	datab => \verticalBLK|BIST2|temp\(3),
	datac => \verticalBLK|BIST2|temp\(19),
	datad => \verticalBLK|BIST2|temp\(20),
	combout => \verticalBLK|BIST2|Equal0~0_combout\);

-- Location: LCCOMB_X26_Y19_N30
\verticalBLK|BIST2|Add0~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST2|Add0~59_combout\ = (\verticalBLK|DUT|pr_state.dos~q\ & \verticalBLK|BIST2|Add0~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \verticalBLK|DUT|pr_state.dos~q\,
	datac => \verticalBLK|BIST2|Add0~21_combout\,
	combout => \verticalBLK|BIST2|Add0~59_combout\);

-- Location: FF_X26_Y19_N31
\verticalBLK|BIST2|temp[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \verticalBLK|BIST2|Add0~59_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \verticalBLK|BIST2|temp\(10));

-- Location: LCCOMB_X26_Y19_N6
\verticalBLK|BIST2|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST2|Equal0~4_combout\ = (!\verticalBLK|BIST2|temp\(7) & (!\verticalBLK|BIST2|temp\(8) & (!\verticalBLK|BIST2|temp\(10) & !\verticalBLK|BIST2|temp\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \verticalBLK|BIST2|temp\(7),
	datab => \verticalBLK|BIST2|temp\(8),
	datac => \verticalBLK|BIST2|temp\(10),
	datad => \verticalBLK|BIST2|temp\(9),
	combout => \verticalBLK|BIST2|Equal0~4_combout\);

-- Location: LCCOMB_X27_Y18_N30
\verticalBLK|BIST2|Add0~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST2|Add0~56_combout\ = (\verticalBLK|DUT|pr_state.dos~q\ & \verticalBLK|BIST2|Add0~37_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \verticalBLK|DUT|pr_state.dos~q\,
	datad => \verticalBLK|BIST2|Add0~37_combout\,
	combout => \verticalBLK|BIST2|Add0~56_combout\);

-- Location: FF_X27_Y18_N31
\verticalBLK|BIST2|temp[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \verticalBLK|BIST2|Add0~56_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \verticalBLK|BIST2|temp\(18));

-- Location: LCCOMB_X27_Y18_N24
\verticalBLK|BIST2|Add0~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST2|Add0~57_combout\ = (\verticalBLK|DUT|pr_state.dos~q\ & \verticalBLK|BIST2|Add0~35_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \verticalBLK|DUT|pr_state.dos~q\,
	datac => \verticalBLK|BIST2|Add0~35_combout\,
	combout => \verticalBLK|BIST2|Add0~57_combout\);

-- Location: FF_X27_Y18_N25
\verticalBLK|BIST2|temp[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \verticalBLK|BIST2|Add0~57_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \verticalBLK|BIST2|temp\(17));

-- Location: LCCOMB_X27_Y18_N22
\verticalBLK|BIST2|Add0~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST2|Add0~58_combout\ = (\verticalBLK|DUT|pr_state.dos~q\ & \verticalBLK|BIST2|Add0~31_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \verticalBLK|DUT|pr_state.dos~q\,
	datad => \verticalBLK|BIST2|Add0~31_combout\,
	combout => \verticalBLK|BIST2|Add0~58_combout\);

-- Location: FF_X27_Y18_N23
\verticalBLK|BIST2|temp[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \verticalBLK|BIST2|Add0~58_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \verticalBLK|BIST2|temp\(15));

-- Location: LCCOMB_X27_Y19_N0
\verticalBLK|BIST2|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST2|Equal0~3_combout\ = (\verticalBLK|BIST2|temp\(16) & (!\verticalBLK|BIST2|temp\(18) & (!\verticalBLK|BIST2|temp\(17) & !\verticalBLK|BIST2|temp\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \verticalBLK|BIST2|temp\(16),
	datab => \verticalBLK|BIST2|temp\(18),
	datac => \verticalBLK|BIST2|temp\(17),
	datad => \verticalBLK|BIST2|temp\(15),
	combout => \verticalBLK|BIST2|Equal0~3_combout\);

-- Location: LCCOMB_X27_Y19_N2
\verticalBLK|BIST2|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST2|Equal0~5_combout\ = (!\verticalBLK|BIST2|temp\(2) & (\verticalBLK|BIST2|Equal0~4_combout\ & \verticalBLK|BIST2|Equal0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \verticalBLK|BIST2|temp\(2),
	datac => \verticalBLK|BIST2|Equal0~4_combout\,
	datad => \verticalBLK|BIST2|Equal0~3_combout\,
	combout => \verticalBLK|BIST2|Equal0~5_combout\);

-- Location: LCCOMB_X27_Y19_N10
\verticalBLK|BIST2|Equal0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST2|Equal0~6_combout\ = (\verticalBLK|BIST2|Equal0~2_combout\ & (\verticalBLK|BIST2|Equal0~1_combout\ & (\verticalBLK|BIST2|Equal0~0_combout\ & \verticalBLK|BIST2|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \verticalBLK|BIST2|Equal0~2_combout\,
	datab => \verticalBLK|BIST2|Equal0~1_combout\,
	datac => \verticalBLK|BIST2|Equal0~0_combout\,
	datad => \verticalBLK|BIST2|Equal0~5_combout\,
	combout => \verticalBLK|BIST2|Equal0~6_combout\);

-- Location: LCCOMB_X23_Y23_N30
\verticalBLK|DUT|Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|DUT|Selector2~0_combout\ = (\verticalBLK|DUT|pr_state.dos~q\ & ((\verticalBLK|BIST2|Equal0~6_combout\) # ((!\verticalBLK|BIST3|Equal0~4_combout\ & \verticalBLK|DUT|pr_state.tres~q\)))) # (!\verticalBLK|DUT|pr_state.dos~q\ & 
-- (!\verticalBLK|BIST3|Equal0~4_combout\ & (\verticalBLK|DUT|pr_state.tres~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \verticalBLK|DUT|pr_state.dos~q\,
	datab => \verticalBLK|BIST3|Equal0~4_combout\,
	datac => \verticalBLK|DUT|pr_state.tres~q\,
	datad => \verticalBLK|BIST2|Equal0~6_combout\,
	combout => \verticalBLK|DUT|Selector2~0_combout\);

-- Location: FF_X23_Y23_N31
\verticalBLK|DUT|pr_state.tres\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \verticalBLK|DUT|Selector2~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \verticalBLK|DUT|pr_state.tres~q\);

-- Location: LCCOMB_X22_Y22_N0
\verticalBLK|BIST3|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST3|Add0~0_combout\ = (((\verticalBLK|BIST3|Equal0~4_combout\) # (\verticalBLK|BIST3|temp\(0))))
-- \verticalBLK|BIST3|Add0~1\ = CARRY((\verticalBLK|BIST3|Equal0~4_combout\) # (\verticalBLK|BIST3|temp\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \verticalBLK|BIST3|Equal0~4_combout\,
	datab => \verticalBLK|BIST3|temp\(0),
	datad => VCC,
	combout => \verticalBLK|BIST3|Add0~0_combout\,
	cout => \verticalBLK|BIST3|Add0~1\);

-- Location: LCCOMB_X23_Y22_N22
\verticalBLK|BIST3|Add0~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST3|Add0~44_combout\ = (\verticalBLK|DUT|pr_state.tres~q\ & \verticalBLK|BIST3|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \verticalBLK|DUT|pr_state.tres~q\,
	datac => \verticalBLK|BIST3|Add0~0_combout\,
	combout => \verticalBLK|BIST3|Add0~44_combout\);

-- Location: FF_X23_Y22_N23
\verticalBLK|BIST3|temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \verticalBLK|BIST3|Add0~44_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \verticalBLK|BIST3|temp\(0));

-- Location: LCCOMB_X22_Y22_N2
\verticalBLK|BIST3|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST3|Add0~2_combout\ = (\verticalBLK|BIST3|Equal0~4_combout\ & (((!\verticalBLK|BIST3|Add0~1\)))) # (!\verticalBLK|BIST3|Equal0~4_combout\ & ((\verticalBLK|BIST3|temp\(1) & (!\verticalBLK|BIST3|Add0~1\)) # (!\verticalBLK|BIST3|temp\(1) & 
-- ((\verticalBLK|BIST3|Add0~1\) # (GND)))))
-- \verticalBLK|BIST3|Add0~3\ = CARRY(((!\verticalBLK|BIST3|Equal0~4_combout\ & !\verticalBLK|BIST3|temp\(1))) # (!\verticalBLK|BIST3|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \verticalBLK|BIST3|Equal0~4_combout\,
	datab => \verticalBLK|BIST3|temp\(1),
	datad => VCC,
	cin => \verticalBLK|BIST3|Add0~1\,
	combout => \verticalBLK|BIST3|Add0~2_combout\,
	cout => \verticalBLK|BIST3|Add0~3\);

-- Location: LCCOMB_X23_Y22_N24
\verticalBLK|BIST3|Add0~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST3|Add0~43_combout\ = (\verticalBLK|DUT|pr_state.tres~q\ & \verticalBLK|BIST3|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \verticalBLK|DUT|pr_state.tres~q\,
	datad => \verticalBLK|BIST3|Add0~2_combout\,
	combout => \verticalBLK|BIST3|Add0~43_combout\);

-- Location: FF_X23_Y22_N25
\verticalBLK|BIST3|temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \verticalBLK|BIST3|Add0~43_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \verticalBLK|BIST3|temp\(1));

-- Location: LCCOMB_X22_Y22_N4
\verticalBLK|BIST3|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST3|Add0~4_combout\ = (\verticalBLK|BIST3|Add0~3\ & (((\verticalBLK|BIST3|Equal0~4_combout\) # (\verticalBLK|BIST3|temp\(2))))) # (!\verticalBLK|BIST3|Add0~3\ & ((((\verticalBLK|BIST3|Equal0~4_combout\) # (\verticalBLK|BIST3|temp\(2))))))
-- \verticalBLK|BIST3|Add0~5\ = CARRY((!\verticalBLK|BIST3|Add0~3\ & ((\verticalBLK|BIST3|Equal0~4_combout\) # (\verticalBLK|BIST3|temp\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \verticalBLK|BIST3|Equal0~4_combout\,
	datab => \verticalBLK|BIST3|temp\(2),
	datad => VCC,
	cin => \verticalBLK|BIST3|Add0~3\,
	combout => \verticalBLK|BIST3|Add0~4_combout\,
	cout => \verticalBLK|BIST3|Add0~5\);

-- Location: LCCOMB_X23_Y22_N26
\verticalBLK|BIST3|Add0~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST3|Add0~42_combout\ = (\verticalBLK|DUT|pr_state.tres~q\ & \verticalBLK|BIST3|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \verticalBLK|DUT|pr_state.tres~q\,
	datac => \verticalBLK|BIST3|Add0~4_combout\,
	combout => \verticalBLK|BIST3|Add0~42_combout\);

-- Location: FF_X23_Y22_N27
\verticalBLK|BIST3|temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \verticalBLK|BIST3|Add0~42_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \verticalBLK|BIST3|temp\(2));

-- Location: LCCOMB_X22_Y22_N6
\verticalBLK|BIST3|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST3|Add0~6_combout\ = (\verticalBLK|BIST3|Equal0~4_combout\ & (((!\verticalBLK|BIST3|Add0~5\)))) # (!\verticalBLK|BIST3|Equal0~4_combout\ & ((\verticalBLK|BIST3|temp\(3) & (!\verticalBLK|BIST3|Add0~5\)) # (!\verticalBLK|BIST3|temp\(3) & 
-- ((\verticalBLK|BIST3|Add0~5\) # (GND)))))
-- \verticalBLK|BIST3|Add0~7\ = CARRY(((!\verticalBLK|BIST3|Equal0~4_combout\ & !\verticalBLK|BIST3|temp\(3))) # (!\verticalBLK|BIST3|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \verticalBLK|BIST3|Equal0~4_combout\,
	datab => \verticalBLK|BIST3|temp\(3),
	datad => VCC,
	cin => \verticalBLK|BIST3|Add0~5\,
	combout => \verticalBLK|BIST3|Add0~6_combout\,
	cout => \verticalBLK|BIST3|Add0~7\);

-- Location: LCCOMB_X23_Y22_N30
\verticalBLK|BIST3|Add0~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST3|Add0~41_combout\ = (\verticalBLK|DUT|pr_state.tres~q\ & \verticalBLK|BIST3|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \verticalBLK|DUT|pr_state.tres~q\,
	datac => \verticalBLK|BIST3|Add0~6_combout\,
	combout => \verticalBLK|BIST3|Add0~41_combout\);

-- Location: FF_X23_Y22_N31
\verticalBLK|BIST3|temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \verticalBLK|BIST3|Add0~41_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \verticalBLK|BIST3|temp\(3));

-- Location: LCCOMB_X22_Y22_N8
\verticalBLK|BIST3|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST3|Add0~8_combout\ = (\verticalBLK|BIST3|Add0~7\ & (((\verticalBLK|BIST3|Equal0~4_combout\) # (\verticalBLK|BIST3|temp\(4))))) # (!\verticalBLK|BIST3|Add0~7\ & ((((\verticalBLK|BIST3|Equal0~4_combout\) # (\verticalBLK|BIST3|temp\(4))))))
-- \verticalBLK|BIST3|Add0~9\ = CARRY((!\verticalBLK|BIST3|Add0~7\ & ((\verticalBLK|BIST3|Equal0~4_combout\) # (\verticalBLK|BIST3|temp\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \verticalBLK|BIST3|Equal0~4_combout\,
	datab => \verticalBLK|BIST3|temp\(4),
	datad => VCC,
	cin => \verticalBLK|BIST3|Add0~7\,
	combout => \verticalBLK|BIST3|Add0~8_combout\,
	cout => \verticalBLK|BIST3|Add0~9\);

-- Location: LCCOMB_X23_Y22_N16
\verticalBLK|BIST3|Add0~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST3|Add0~40_combout\ = (\verticalBLK|DUT|pr_state.tres~q\ & \verticalBLK|BIST3|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \verticalBLK|DUT|pr_state.tres~q\,
	datad => \verticalBLK|BIST3|Add0~8_combout\,
	combout => \verticalBLK|BIST3|Add0~40_combout\);

-- Location: FF_X23_Y22_N17
\verticalBLK|BIST3|temp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \verticalBLK|BIST3|Add0~40_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \verticalBLK|BIST3|temp\(4));

-- Location: LCCOMB_X22_Y22_N10
\verticalBLK|BIST3|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST3|Add0~10_combout\ = (\verticalBLK|BIST3|Equal0~4_combout\ & (((!\verticalBLK|BIST3|Add0~9\)))) # (!\verticalBLK|BIST3|Equal0~4_combout\ & ((\verticalBLK|BIST3|temp\(5) & (!\verticalBLK|BIST3|Add0~9\)) # (!\verticalBLK|BIST3|temp\(5) & 
-- ((\verticalBLK|BIST3|Add0~9\) # (GND)))))
-- \verticalBLK|BIST3|Add0~11\ = CARRY(((!\verticalBLK|BIST3|Equal0~4_combout\ & !\verticalBLK|BIST3|temp\(5))) # (!\verticalBLK|BIST3|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \verticalBLK|BIST3|Equal0~4_combout\,
	datab => \verticalBLK|BIST3|temp\(5),
	datad => VCC,
	cin => \verticalBLK|BIST3|Add0~9\,
	combout => \verticalBLK|BIST3|Add0~10_combout\,
	cout => \verticalBLK|BIST3|Add0~11\);

-- Location: LCCOMB_X23_Y22_N18
\verticalBLK|BIST3|Add0~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST3|Add0~39_combout\ = (\verticalBLK|DUT|pr_state.tres~q\ & \verticalBLK|BIST3|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \verticalBLK|DUT|pr_state.tres~q\,
	datad => \verticalBLK|BIST3|Add0~10_combout\,
	combout => \verticalBLK|BIST3|Add0~39_combout\);

-- Location: FF_X23_Y22_N19
\verticalBLK|BIST3|temp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \verticalBLK|BIST3|Add0~39_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \verticalBLK|BIST3|temp\(5));

-- Location: LCCOMB_X22_Y22_N12
\verticalBLK|BIST3|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST3|Add0~12_combout\ = (\verticalBLK|BIST3|Add0~11\ & (((\verticalBLK|BIST3|Equal0~4_combout\) # (\verticalBLK|BIST3|temp\(6))))) # (!\verticalBLK|BIST3|Add0~11\ & ((((\verticalBLK|BIST3|Equal0~4_combout\) # 
-- (\verticalBLK|BIST3|temp\(6))))))
-- \verticalBLK|BIST3|Add0~13\ = CARRY((!\verticalBLK|BIST3|Add0~11\ & ((\verticalBLK|BIST3|Equal0~4_combout\) # (\verticalBLK|BIST3|temp\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \verticalBLK|BIST3|Equal0~4_combout\,
	datab => \verticalBLK|BIST3|temp\(6),
	datad => VCC,
	cin => \verticalBLK|BIST3|Add0~11\,
	combout => \verticalBLK|BIST3|Add0~12_combout\,
	cout => \verticalBLK|BIST3|Add0~13\);

-- Location: LCCOMB_X23_Y22_N8
\verticalBLK|BIST3|Add0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST3|Add0~38_combout\ = (\verticalBLK|DUT|pr_state.tres~q\ & \verticalBLK|BIST3|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \verticalBLK|DUT|pr_state.tres~q\,
	datad => \verticalBLK|BIST3|Add0~12_combout\,
	combout => \verticalBLK|BIST3|Add0~38_combout\);

-- Location: FF_X23_Y22_N9
\verticalBLK|BIST3|temp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \verticalBLK|BIST3|Add0~38_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \verticalBLK|BIST3|temp\(6));

-- Location: LCCOMB_X22_Y22_N14
\verticalBLK|BIST3|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST3|Add0~14_combout\ = (\verticalBLK|BIST3|Equal0~4_combout\ & (((!\verticalBLK|BIST3|Add0~13\)))) # (!\verticalBLK|BIST3|Equal0~4_combout\ & ((\verticalBLK|BIST3|temp\(7) & (!\verticalBLK|BIST3|Add0~13\)) # (!\verticalBLK|BIST3|temp\(7) & 
-- ((\verticalBLK|BIST3|Add0~13\) # (GND)))))
-- \verticalBLK|BIST3|Add0~15\ = CARRY(((!\verticalBLK|BIST3|Equal0~4_combout\ & !\verticalBLK|BIST3|temp\(7))) # (!\verticalBLK|BIST3|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \verticalBLK|BIST3|Equal0~4_combout\,
	datab => \verticalBLK|BIST3|temp\(7),
	datad => VCC,
	cin => \verticalBLK|BIST3|Add0~13\,
	combout => \verticalBLK|BIST3|Add0~14_combout\,
	cout => \verticalBLK|BIST3|Add0~15\);

-- Location: LCCOMB_X21_Y22_N28
\verticalBLK|BIST3|Add0~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST3|Add0~37_combout\ = (\verticalBLK|DUT|pr_state.tres~q\ & \verticalBLK|BIST3|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \verticalBLK|DUT|pr_state.tres~q\,
	datac => \verticalBLK|BIST3|Add0~14_combout\,
	combout => \verticalBLK|BIST3|Add0~37_combout\);

-- Location: FF_X21_Y22_N29
\verticalBLK|BIST3|temp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \verticalBLK|BIST3|Add0~37_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \verticalBLK|BIST3|temp\(7));

-- Location: LCCOMB_X22_Y22_N16
\verticalBLK|BIST3|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST3|Add0~16_combout\ = (\verticalBLK|BIST3|Add0~15\ & (((\verticalBLK|BIST3|Equal0~4_combout\) # (\verticalBLK|BIST3|temp\(8))))) # (!\verticalBLK|BIST3|Add0~15\ & ((((\verticalBLK|BIST3|Equal0~4_combout\) # 
-- (\verticalBLK|BIST3|temp\(8))))))
-- \verticalBLK|BIST3|Add0~17\ = CARRY((!\verticalBLK|BIST3|Add0~15\ & ((\verticalBLK|BIST3|Equal0~4_combout\) # (\verticalBLK|BIST3|temp\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \verticalBLK|BIST3|Equal0~4_combout\,
	datab => \verticalBLK|BIST3|temp\(8),
	datad => VCC,
	cin => \verticalBLK|BIST3|Add0~15\,
	combout => \verticalBLK|BIST3|Add0~16_combout\,
	cout => \verticalBLK|BIST3|Add0~17\);

-- Location: LCCOMB_X21_Y22_N30
\verticalBLK|BIST3|Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST3|Add0~36_combout\ = (\verticalBLK|DUT|pr_state.tres~q\ & \verticalBLK|BIST3|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \verticalBLK|DUT|pr_state.tres~q\,
	datad => \verticalBLK|BIST3|Add0~16_combout\,
	combout => \verticalBLK|BIST3|Add0~36_combout\);

-- Location: FF_X21_Y22_N31
\verticalBLK|BIST3|temp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \verticalBLK|BIST3|Add0~36_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \verticalBLK|BIST3|temp\(8));

-- Location: LCCOMB_X22_Y22_N18
\verticalBLK|BIST3|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST3|Add0~18_combout\ = (\verticalBLK|BIST3|temp\(9) & (!\verticalBLK|BIST3|Add0~17\)) # (!\verticalBLK|BIST3|temp\(9) & ((\verticalBLK|BIST3|Add0~17\) # (GND)))
-- \verticalBLK|BIST3|Add0~19\ = CARRY((!\verticalBLK|BIST3|Add0~17\) # (!\verticalBLK|BIST3|temp\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \verticalBLK|BIST3|temp\(9),
	datad => VCC,
	cin => \verticalBLK|BIST3|Add0~17\,
	combout => \verticalBLK|BIST3|Add0~18_combout\,
	cout => \verticalBLK|BIST3|Add0~19\);

-- Location: LCCOMB_X21_Y22_N26
\verticalBLK|BIST3|Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST3|Add0~34_combout\ = (\verticalBLK|DUT|pr_state.tres~q\ & \verticalBLK|BIST3|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \verticalBLK|DUT|pr_state.tres~q\,
	datad => \verticalBLK|BIST3|Add0~18_combout\,
	combout => \verticalBLK|BIST3|Add0~34_combout\);

-- Location: FF_X21_Y22_N27
\verticalBLK|BIST3|temp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \verticalBLK|BIST3|Add0~34_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \verticalBLK|BIST3|temp\(9));

-- Location: LCCOMB_X21_Y22_N24
\verticalBLK|BIST3|Add0~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST3|Add0~35_combout\ = (\verticalBLK|DUT|pr_state.tres~q\ & \verticalBLK|BIST3|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \verticalBLK|DUT|pr_state.tres~q\,
	datac => \verticalBLK|BIST3|Add0~20_combout\,
	combout => \verticalBLK|BIST3|Add0~35_combout\);

-- Location: FF_X21_Y22_N25
\verticalBLK|BIST3|temp[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \verticalBLK|BIST3|Add0~35_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \verticalBLK|BIST3|temp\(10));

-- Location: LCCOMB_X21_Y22_N6
\verticalBLK|BIST3|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST3|Equal0~1_combout\ = (!\verticalBLK|BIST3|temp\(8) & (!\verticalBLK|BIST3|temp\(7) & (\verticalBLK|BIST3|temp\(9) & !\verticalBLK|BIST3|temp\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \verticalBLK|BIST3|temp\(8),
	datab => \verticalBLK|BIST3|temp\(7),
	datac => \verticalBLK|BIST3|temp\(9),
	datad => \verticalBLK|BIST3|temp\(10),
	combout => \verticalBLK|BIST3|Equal0~1_combout\);

-- Location: LCCOMB_X23_Y22_N20
\verticalBLK|BIST3|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST3|Equal0~3_combout\ = (!\verticalBLK|BIST3|temp\(2) & (!\verticalBLK|BIST3|temp\(0) & !\verticalBLK|BIST3|temp\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \verticalBLK|BIST3|temp\(2),
	datac => \verticalBLK|BIST3|temp\(0),
	datad => \verticalBLK|BIST3|temp\(1),
	combout => \verticalBLK|BIST3|Equal0~3_combout\);

-- Location: LCCOMB_X23_Y22_N28
\verticalBLK|BIST3|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST3|Equal0~2_combout\ = (!\verticalBLK|BIST3|temp\(3) & (!\verticalBLK|BIST3|temp\(5) & (!\verticalBLK|BIST3|temp\(6) & !\verticalBLK|BIST3|temp\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \verticalBLK|BIST3|temp\(3),
	datab => \verticalBLK|BIST3|temp\(5),
	datac => \verticalBLK|BIST3|temp\(6),
	datad => \verticalBLK|BIST3|temp\(4),
	combout => \verticalBLK|BIST3|Equal0~2_combout\);

-- Location: LCCOMB_X22_Y22_N30
\verticalBLK|BIST3|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST3|Equal0~4_combout\ = (\verticalBLK|BIST3|Equal0~0_combout\ & (\verticalBLK|BIST3|Equal0~1_combout\ & (\verticalBLK|BIST3|Equal0~3_combout\ & \verticalBLK|BIST3|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \verticalBLK|BIST3|Equal0~0_combout\,
	datab => \verticalBLK|BIST3|Equal0~1_combout\,
	datac => \verticalBLK|BIST3|Equal0~3_combout\,
	datad => \verticalBLK|BIST3|Equal0~2_combout\,
	combout => \verticalBLK|BIST3|Equal0~4_combout\);

-- Location: LCCOMB_X23_Y23_N22
\verticalBLK|DUT|Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|DUT|Selector3~0_combout\ = (\verticalBLK|DUT|pr_state.tres~q\ & ((\verticalBLK|BIST3|Equal0~4_combout\) # ((\verticalBLK|DUT|pr_state.cuatro~q\ & !\verticalBLK|BIST4|Equal0~3_combout\)))) # (!\verticalBLK|DUT|pr_state.tres~q\ & 
-- (((\verticalBLK|DUT|pr_state.cuatro~q\ & !\verticalBLK|BIST4|Equal0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \verticalBLK|DUT|pr_state.tres~q\,
	datab => \verticalBLK|BIST3|Equal0~4_combout\,
	datac => \verticalBLK|DUT|pr_state.cuatro~q\,
	datad => \verticalBLK|BIST4|Equal0~3_combout\,
	combout => \verticalBLK|DUT|Selector3~0_combout\);

-- Location: FF_X23_Y23_N23
\verticalBLK|DUT|pr_state.cuatro\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \verticalBLK|DUT|Selector3~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \verticalBLK|DUT|pr_state.cuatro~q\);

-- Location: LCCOMB_X27_Y22_N4
\verticalBLK|BIST4|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST4|Add0~0_combout\ = (((\verticalBLK|BIST4|temp\(0)) # (\verticalBLK|BIST4|Equal0~3_combout\)))
-- \verticalBLK|BIST4|Add0~1\ = CARRY((\verticalBLK|BIST4|temp\(0)) # (\verticalBLK|BIST4|Equal0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \verticalBLK|BIST4|temp\(0),
	datab => \verticalBLK|BIST4|Equal0~3_combout\,
	datad => VCC,
	combout => \verticalBLK|BIST4|Add0~0_combout\,
	cout => \verticalBLK|BIST4|Add0~1\);

-- Location: LCCOMB_X27_Y22_N6
\verticalBLK|BIST4|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST4|Add0~2_combout\ = (\verticalBLK|BIST4|temp\(1) & (((!\verticalBLK|BIST4|Add0~1\)))) # (!\verticalBLK|BIST4|temp\(1) & ((\verticalBLK|BIST4|Equal0~3_combout\ & (!\verticalBLK|BIST4|Add0~1\)) # (!\verticalBLK|BIST4|Equal0~3_combout\ & 
-- ((\verticalBLK|BIST4|Add0~1\) # (GND)))))
-- \verticalBLK|BIST4|Add0~3\ = CARRY(((!\verticalBLK|BIST4|temp\(1) & !\verticalBLK|BIST4|Equal0~3_combout\)) # (!\verticalBLK|BIST4|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \verticalBLK|BIST4|temp\(1),
	datab => \verticalBLK|BIST4|Equal0~3_combout\,
	datad => VCC,
	cin => \verticalBLK|BIST4|Add0~1\,
	combout => \verticalBLK|BIST4|Add0~2_combout\,
	cout => \verticalBLK|BIST4|Add0~3\);

-- Location: LCCOMB_X26_Y22_N16
\verticalBLK|BIST4|Add0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST4|Add0~38_combout\ = (\verticalBLK|DUT|pr_state.cuatro~q\ & \verticalBLK|BIST4|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \verticalBLK|DUT|pr_state.cuatro~q\,
	datad => \verticalBLK|BIST4|Add0~2_combout\,
	combout => \verticalBLK|BIST4|Add0~38_combout\);

-- Location: FF_X26_Y22_N17
\verticalBLK|BIST4|temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \verticalBLK|BIST4|Add0~38_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \verticalBLK|BIST4|temp\(1));

-- Location: LCCOMB_X27_Y22_N16
\verticalBLK|BIST4|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST4|Add0~12_combout\ = (\verticalBLK|BIST4|Add0~11\ & (((\verticalBLK|BIST4|temp\(6)) # (\verticalBLK|BIST4|Equal0~3_combout\)))) # (!\verticalBLK|BIST4|Add0~11\ & ((((\verticalBLK|BIST4|temp\(6)) # 
-- (\verticalBLK|BIST4|Equal0~3_combout\)))))
-- \verticalBLK|BIST4|Add0~13\ = CARRY((!\verticalBLK|BIST4|Add0~11\ & ((\verticalBLK|BIST4|temp\(6)) # (\verticalBLK|BIST4|Equal0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \verticalBLK|BIST4|temp\(6),
	datab => \verticalBLK|BIST4|Equal0~3_combout\,
	datad => VCC,
	cin => \verticalBLK|BIST4|Add0~11\,
	combout => \verticalBLK|BIST4|Add0~12_combout\,
	cout => \verticalBLK|BIST4|Add0~13\);

-- Location: LCCOMB_X27_Y22_N18
\verticalBLK|BIST4|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST4|Add0~14_combout\ = (\verticalBLK|BIST4|temp\(7) & (((!\verticalBLK|BIST4|Add0~13\)))) # (!\verticalBLK|BIST4|temp\(7) & ((\verticalBLK|BIST4|Equal0~3_combout\ & (!\verticalBLK|BIST4|Add0~13\)) # (!\verticalBLK|BIST4|Equal0~3_combout\ & 
-- ((\verticalBLK|BIST4|Add0~13\) # (GND)))))
-- \verticalBLK|BIST4|Add0~15\ = CARRY(((!\verticalBLK|BIST4|temp\(7) & !\verticalBLK|BIST4|Equal0~3_combout\)) # (!\verticalBLK|BIST4|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \verticalBLK|BIST4|temp\(7),
	datab => \verticalBLK|BIST4|Equal0~3_combout\,
	datad => VCC,
	cin => \verticalBLK|BIST4|Add0~13\,
	combout => \verticalBLK|BIST4|Add0~14_combout\,
	cout => \verticalBLK|BIST4|Add0~15\);

-- Location: LCCOMB_X27_Y22_N22
\verticalBLK|BIST4|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST4|Add0~18_combout\ = (\verticalBLK|BIST4|temp\(9) & (!\verticalBLK|BIST4|Add0~17\)) # (!\verticalBLK|BIST4|temp\(9) & ((\verticalBLK|BIST4|Add0~17\) # (GND)))
-- \verticalBLK|BIST4|Add0~19\ = CARRY((!\verticalBLK|BIST4|Add0~17\) # (!\verticalBLK|BIST4|temp\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \verticalBLK|BIST4|temp\(9),
	datad => VCC,
	cin => \verticalBLK|BIST4|Add0~17\,
	combout => \verticalBLK|BIST4|Add0~18_combout\,
	cout => \verticalBLK|BIST4|Add0~19\);

-- Location: LCCOMB_X27_Y22_N0
\verticalBLK|BIST4|Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST4|Add0~30_combout\ = (\verticalBLK|DUT|pr_state.cuatro~q\ & \verticalBLK|BIST4|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \verticalBLK|DUT|pr_state.cuatro~q\,
	datac => \verticalBLK|BIST4|Add0~18_combout\,
	combout => \verticalBLK|BIST4|Add0~30_combout\);

-- Location: FF_X27_Y22_N1
\verticalBLK|BIST4|temp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \verticalBLK|BIST4|Add0~30_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \verticalBLK|BIST4|temp\(9));

-- Location: LCCOMB_X27_Y22_N26
\verticalBLK|BIST4|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST4|Add0~22_combout\ = (\verticalBLK|BIST4|temp\(11) & (!\verticalBLK|BIST4|Add0~21\)) # (!\verticalBLK|BIST4|temp\(11) & ((\verticalBLK|BIST4|Add0~21\) # (GND)))
-- \verticalBLK|BIST4|Add0~23\ = CARRY((!\verticalBLK|BIST4|Add0~21\) # (!\verticalBLK|BIST4|temp\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \verticalBLK|BIST4|temp\(11),
	datad => VCC,
	cin => \verticalBLK|BIST4|Add0~21\,
	combout => \verticalBLK|BIST4|Add0~22_combout\,
	cout => \verticalBLK|BIST4|Add0~23\);

-- Location: LCCOMB_X26_Y22_N4
\verticalBLK|BIST4|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST4|Add0~24_combout\ = (\verticalBLK|DUT|pr_state.cuatro~q\ & \verticalBLK|BIST4|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \verticalBLK|DUT|pr_state.cuatro~q\,
	datad => \verticalBLK|BIST4|Add0~22_combout\,
	combout => \verticalBLK|BIST4|Add0~24_combout\);

-- Location: FF_X26_Y22_N5
\verticalBLK|BIST4|temp[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \verticalBLK|BIST4|Add0~24_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \verticalBLK|BIST4|temp\(11));

-- Location: LCCOMB_X27_Y22_N28
\verticalBLK|BIST4|Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST4|Add0~26_combout\ = \verticalBLK|BIST4|Add0~23\ $ (((!\verticalBLK|BIST4|Equal0~3_combout\ & !\verticalBLK|BIST4|temp\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \verticalBLK|BIST4|Equal0~3_combout\,
	datad => \verticalBLK|BIST4|temp\(12),
	cin => \verticalBLK|BIST4|Add0~23\,
	combout => \verticalBLK|BIST4|Add0~26_combout\);

-- Location: LCCOMB_X26_Y22_N20
\verticalBLK|BIST4|Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST4|Add0~28_combout\ = (\verticalBLK|DUT|pr_state.cuatro~q\ & \verticalBLK|BIST4|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \verticalBLK|DUT|pr_state.cuatro~q\,
	datad => \verticalBLK|BIST4|Add0~26_combout\,
	combout => \verticalBLK|BIST4|Add0~28_combout\);

-- Location: FF_X26_Y22_N21
\verticalBLK|BIST4|temp[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \verticalBLK|BIST4|Add0~28_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \verticalBLK|BIST4|temp\(12));

-- Location: LCCOMB_X26_Y22_N2
\verticalBLK|BIST4|Add0~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST4|Add0~25_combout\ = (\verticalBLK|DUT|pr_state.cuatro~q\ & \verticalBLK|BIST4|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \verticalBLK|DUT|pr_state.cuatro~q\,
	datad => \verticalBLK|BIST4|Add0~0_combout\,
	combout => \verticalBLK|BIST4|Add0~25_combout\);

-- Location: FF_X26_Y22_N3
\verticalBLK|BIST4|temp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \verticalBLK|BIST4|Add0~25_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \verticalBLK|BIST4|temp\(0));

-- Location: LCCOMB_X26_Y22_N8
\verticalBLK|BIST4|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST4|Equal0~0_combout\ = (!\verticalBLK|BIST4|temp\(10) & (!\verticalBLK|BIST4|temp\(12) & (\verticalBLK|BIST4|temp\(11) & !\verticalBLK|BIST4|temp\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \verticalBLK|BIST4|temp\(10),
	datab => \verticalBLK|BIST4|temp\(12),
	datac => \verticalBLK|BIST4|temp\(11),
	datad => \verticalBLK|BIST4|temp\(0),
	combout => \verticalBLK|BIST4|Equal0~0_combout\);

-- Location: LCCOMB_X26_Y22_N14
\verticalBLK|BIST4|Add0~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST4|Add0~33_combout\ = (\verticalBLK|DUT|pr_state.cuatro~q\ & \verticalBLK|BIST4|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \verticalBLK|DUT|pr_state.cuatro~q\,
	datad => \verticalBLK|BIST4|Add0~12_combout\,
	combout => \verticalBLK|BIST4|Add0~33_combout\);

-- Location: FF_X26_Y22_N15
\verticalBLK|BIST4|temp[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \verticalBLK|BIST4|Add0~33_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \verticalBLK|BIST4|temp\(6));

-- Location: LCCOMB_X27_Y22_N2
\verticalBLK|BIST4|Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST4|Add0~32_combout\ = (\verticalBLK|DUT|pr_state.cuatro~q\ & \verticalBLK|BIST4|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \verticalBLK|DUT|pr_state.cuatro~q\,
	datad => \verticalBLK|BIST4|Add0~14_combout\,
	combout => \verticalBLK|BIST4|Add0~32_combout\);

-- Location: FF_X27_Y22_N3
\verticalBLK|BIST4|temp[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \verticalBLK|BIST4|Add0~32_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \verticalBLK|BIST4|temp\(7));

-- Location: LCCOMB_X26_Y22_N28
\verticalBLK|BIST4|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST4|Equal0~1_combout\ = (!\verticalBLK|BIST4|temp\(8) & (!\verticalBLK|BIST4|temp\(6) & (\verticalBLK|BIST4|temp\(9) & !\verticalBLK|BIST4|temp\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \verticalBLK|BIST4|temp\(8),
	datab => \verticalBLK|BIST4|temp\(6),
	datac => \verticalBLK|BIST4|temp\(9),
	datad => \verticalBLK|BIST4|temp\(7),
	combout => \verticalBLK|BIST4|Equal0~1_combout\);

-- Location: LCCOMB_X26_Y22_N6
\verticalBLK|BIST4|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST4|Equal0~3_combout\ = (\verticalBLK|BIST4|Equal0~2_combout\ & (!\verticalBLK|BIST4|temp\(1) & (\verticalBLK|BIST4|Equal0~0_combout\ & \verticalBLK|BIST4|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \verticalBLK|BIST4|Equal0~2_combout\,
	datab => \verticalBLK|BIST4|temp\(1),
	datac => \verticalBLK|BIST4|Equal0~0_combout\,
	datad => \verticalBLK|BIST4|Equal0~1_combout\,
	combout => \verticalBLK|BIST4|Equal0~3_combout\);

-- Location: LCCOMB_X23_Y23_N28
\verticalBLK|DUT|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|DUT|Selector0~0_combout\ = (\verticalBLK|DUT|pr_state.cuatro~q\ & (!\verticalBLK|BIST4|Equal0~3_combout\ & ((\verticalBLK|BIST|Equal0~5_combout\) # (\verticalBLK|DUT|pr_state.uno~q\)))) # (!\verticalBLK|DUT|pr_state.cuatro~q\ & 
-- ((\verticalBLK|BIST|Equal0~5_combout\) # ((\verticalBLK|DUT|pr_state.uno~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \verticalBLK|DUT|pr_state.cuatro~q\,
	datab => \verticalBLK|BIST|Equal0~5_combout\,
	datac => \verticalBLK|DUT|pr_state.uno~q\,
	datad => \verticalBLK|BIST4|Equal0~3_combout\,
	combout => \verticalBLK|DUT|Selector0~0_combout\);

-- Location: FF_X23_Y23_N29
\verticalBLK|DUT|pr_state.uno\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \verticalBLK|DUT|Selector0~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \verticalBLK|DUT|pr_state.uno~q\);

-- Location: LCCOMB_X23_Y23_N24
\verticalBLK|BIST|Add0~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST|Add0~48_combout\ = (\verticalBLK|BIST|Add0~4_combout\ & !\verticalBLK|DUT|pr_state.uno~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \verticalBLK|BIST|Add0~4_combout\,
	datad => \verticalBLK|DUT|pr_state.uno~q\,
	combout => \verticalBLK|BIST|Add0~48_combout\);

-- Location: FF_X23_Y23_N25
\verticalBLK|BIST|temp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \verticalBLK|BIST|Add0~48_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \verticalBLK|BIST|temp\(2));

-- Location: LCCOMB_X23_Y23_N14
\verticalBLK|BIST|Add0~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST|Add0~49_combout\ = (!\verticalBLK|DUT|pr_state.uno~q\ & \verticalBLK|BIST|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \verticalBLK|DUT|pr_state.uno~q\,
	datad => \verticalBLK|BIST|Add0~2_combout\,
	combout => \verticalBLK|BIST|Add0~49_combout\);

-- Location: FF_X23_Y23_N15
\verticalBLK|BIST|temp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \verticalBLK|BIST|Add0~49_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \verticalBLK|BIST|temp\(1));

-- Location: LCCOMB_X24_Y23_N24
\verticalBLK|BIST|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST|Add0~8_combout\ = (\verticalBLK|BIST|Add0~7\ & (((\verticalBLK|BIST|temp\(4)) # (\verticalBLK|BIST|Equal0~5_combout\)))) # (!\verticalBLK|BIST|Add0~7\ & ((((\verticalBLK|BIST|temp\(4)) # (\verticalBLK|BIST|Equal0~5_combout\)))))
-- \verticalBLK|BIST|Add0~9\ = CARRY((!\verticalBLK|BIST|Add0~7\ & ((\verticalBLK|BIST|temp\(4)) # (\verticalBLK|BIST|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \verticalBLK|BIST|temp\(4),
	datab => \verticalBLK|BIST|Equal0~5_combout\,
	datad => VCC,
	cin => \verticalBLK|BIST|Add0~7\,
	combout => \verticalBLK|BIST|Add0~8_combout\,
	cout => \verticalBLK|BIST|Add0~9\);

-- Location: LCCOMB_X23_Y23_N16
\verticalBLK|BIST|Add0~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST|Add0~46_combout\ = (!\verticalBLK|DUT|pr_state.uno~q\ & \verticalBLK|BIST|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \verticalBLK|DUT|pr_state.uno~q\,
	datad => \verticalBLK|BIST|Add0~8_combout\,
	combout => \verticalBLK|BIST|Add0~46_combout\);

-- Location: FF_X23_Y23_N17
\verticalBLK|BIST|temp[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \verticalBLK|BIST|Add0~46_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \verticalBLK|BIST|temp\(4));

-- Location: LCCOMB_X23_Y23_N4
\verticalBLK|BIST|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST|Equal0~3_combout\ = (!\verticalBLK|BIST|temp\(3) & (!\verticalBLK|BIST|temp\(2) & (!\verticalBLK|BIST|temp\(1) & !\verticalBLK|BIST|temp\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \verticalBLK|BIST|temp\(3),
	datab => \verticalBLK|BIST|temp\(2),
	datac => \verticalBLK|BIST|temp\(1),
	datad => \verticalBLK|BIST|temp\(4),
	combout => \verticalBLK|BIST|Equal0~3_combout\);

-- Location: LCCOMB_X24_Y22_N0
\verticalBLK|BIST|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST|Add0~16_combout\ = (\verticalBLK|BIST|temp\(8) & (\verticalBLK|BIST|Add0~15\ $ (GND))) # (!\verticalBLK|BIST|temp\(8) & (!\verticalBLK|BIST|Add0~15\ & VCC))
-- \verticalBLK|BIST|Add0~17\ = CARRY((\verticalBLK|BIST|temp\(8) & !\verticalBLK|BIST|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \verticalBLK|BIST|temp\(8),
	datad => VCC,
	cin => \verticalBLK|BIST|Add0~15\,
	combout => \verticalBLK|BIST|Add0~16_combout\,
	cout => \verticalBLK|BIST|Add0~17\);

-- Location: LCCOMB_X23_Y23_N18
\verticalBLK|BIST|Add0~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST|Add0~42_combout\ = (!\verticalBLK|DUT|pr_state.uno~q\ & \verticalBLK|BIST|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \verticalBLK|DUT|pr_state.uno~q\,
	datad => \verticalBLK|BIST|Add0~16_combout\,
	combout => \verticalBLK|BIST|Add0~42_combout\);

-- Location: FF_X23_Y23_N19
\verticalBLK|BIST|temp[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \verticalBLK|BIST|Add0~42_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \verticalBLK|BIST|temp\(8));

-- Location: LCCOMB_X24_Y22_N2
\verticalBLK|BIST|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST|Add0~18_combout\ = (\verticalBLK|BIST|Equal0~5_combout\ & (((!\verticalBLK|BIST|Add0~17\)))) # (!\verticalBLK|BIST|Equal0~5_combout\ & ((\verticalBLK|BIST|temp\(9) & (!\verticalBLK|BIST|Add0~17\)) # (!\verticalBLK|BIST|temp\(9) & 
-- ((\verticalBLK|BIST|Add0~17\) # (GND)))))
-- \verticalBLK|BIST|Add0~19\ = CARRY(((!\verticalBLK|BIST|Equal0~5_combout\ & !\verticalBLK|BIST|temp\(9))) # (!\verticalBLK|BIST|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \verticalBLK|BIST|Equal0~5_combout\,
	datab => \verticalBLK|BIST|temp\(9),
	datad => VCC,
	cin => \verticalBLK|BIST|Add0~17\,
	combout => \verticalBLK|BIST|Add0~18_combout\,
	cout => \verticalBLK|BIST|Add0~19\);

-- Location: LCCOMB_X23_Y23_N0
\verticalBLK|BIST|Add0~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST|Add0~41_combout\ = (\verticalBLK|BIST|Add0~18_combout\ & !\verticalBLK|DUT|pr_state.uno~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \verticalBLK|BIST|Add0~18_combout\,
	datad => \verticalBLK|DUT|pr_state.uno~q\,
	combout => \verticalBLK|BIST|Add0~41_combout\);

-- Location: FF_X23_Y23_N1
\verticalBLK|BIST|temp[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \verticalBLK|BIST|Add0~41_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \verticalBLK|BIST|temp\(9));

-- Location: LCCOMB_X24_Y22_N4
\verticalBLK|BIST|Add0~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST|Add0~20_combout\ = (\verticalBLK|BIST|temp\(10) & (\verticalBLK|BIST|Add0~19\ $ (GND))) # (!\verticalBLK|BIST|temp\(10) & (!\verticalBLK|BIST|Add0~19\ & VCC))
-- \verticalBLK|BIST|Add0~21\ = CARRY((\verticalBLK|BIST|temp\(10) & !\verticalBLK|BIST|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \verticalBLK|BIST|temp\(10),
	datad => VCC,
	cin => \verticalBLK|BIST|Add0~19\,
	combout => \verticalBLK|BIST|Add0~20_combout\,
	cout => \verticalBLK|BIST|Add0~21\);

-- Location: LCCOMB_X24_Y22_N6
\verticalBLK|BIST|Add0~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST|Add0~22_combout\ = (\verticalBLK|BIST|Equal0~5_combout\ & (((!\verticalBLK|BIST|Add0~21\)))) # (!\verticalBLK|BIST|Equal0~5_combout\ & ((\verticalBLK|BIST|temp\(11) & (!\verticalBLK|BIST|Add0~21\)) # (!\verticalBLK|BIST|temp\(11) & 
-- ((\verticalBLK|BIST|Add0~21\) # (GND)))))
-- \verticalBLK|BIST|Add0~23\ = CARRY(((!\verticalBLK|BIST|Equal0~5_combout\ & !\verticalBLK|BIST|temp\(11))) # (!\verticalBLK|BIST|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \verticalBLK|BIST|Equal0~5_combout\,
	datab => \verticalBLK|BIST|temp\(11),
	datad => VCC,
	cin => \verticalBLK|BIST|Add0~21\,
	combout => \verticalBLK|BIST|Add0~22_combout\,
	cout => \verticalBLK|BIST|Add0~23\);

-- Location: LCCOMB_X24_Y22_N26
\verticalBLK|BIST|Add0~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST|Add0~40_combout\ = (!\verticalBLK|DUT|pr_state.uno~q\ & \verticalBLK|BIST|Add0~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \verticalBLK|DUT|pr_state.uno~q\,
	datad => \verticalBLK|BIST|Add0~22_combout\,
	combout => \verticalBLK|BIST|Add0~40_combout\);

-- Location: FF_X24_Y22_N27
\verticalBLK|BIST|temp[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \verticalBLK|BIST|Add0~40_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \verticalBLK|BIST|temp\(11));

-- Location: LCCOMB_X24_Y22_N8
\verticalBLK|BIST|Add0~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST|Add0~24_combout\ = (\verticalBLK|BIST|Add0~23\ & (((\verticalBLK|BIST|Equal0~5_combout\) # (\verticalBLK|BIST|temp\(12))))) # (!\verticalBLK|BIST|Add0~23\ & ((((\verticalBLK|BIST|Equal0~5_combout\) # (\verticalBLK|BIST|temp\(12))))))
-- \verticalBLK|BIST|Add0~25\ = CARRY((!\verticalBLK|BIST|Add0~23\ & ((\verticalBLK|BIST|Equal0~5_combout\) # (\verticalBLK|BIST|temp\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \verticalBLK|BIST|Equal0~5_combout\,
	datab => \verticalBLK|BIST|temp\(12),
	datad => VCC,
	cin => \verticalBLK|BIST|Add0~23\,
	combout => \verticalBLK|BIST|Add0~24_combout\,
	cout => \verticalBLK|BIST|Add0~25\);

-- Location: LCCOMB_X24_Y22_N28
\verticalBLK|BIST|Add0~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST|Add0~39_combout\ = (!\verticalBLK|DUT|pr_state.uno~q\ & \verticalBLK|BIST|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \verticalBLK|DUT|pr_state.uno~q\,
	datac => \verticalBLK|BIST|Add0~24_combout\,
	combout => \verticalBLK|BIST|Add0~39_combout\);

-- Location: FF_X24_Y22_N29
\verticalBLK|BIST|temp[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \verticalBLK|BIST|Add0~39_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \verticalBLK|BIST|temp\(12));

-- Location: LCCOMB_X24_Y22_N10
\verticalBLK|BIST|Add0~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST|Add0~26_combout\ = (\verticalBLK|BIST|temp\(13) & (!\verticalBLK|BIST|Add0~25\)) # (!\verticalBLK|BIST|temp\(13) & ((\verticalBLK|BIST|Add0~25\) # (GND)))
-- \verticalBLK|BIST|Add0~27\ = CARRY((!\verticalBLK|BIST|Add0~25\) # (!\verticalBLK|BIST|temp\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \verticalBLK|BIST|temp\(13),
	datad => VCC,
	cin => \verticalBLK|BIST|Add0~25\,
	combout => \verticalBLK|BIST|Add0~26_combout\,
	cout => \verticalBLK|BIST|Add0~27\);

-- Location: LCCOMB_X24_Y22_N24
\verticalBLK|BIST|Add0~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST|Add0~33_combout\ = (!\verticalBLK|DUT|pr_state.uno~q\ & \verticalBLK|BIST|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \verticalBLK|DUT|pr_state.uno~q\,
	datad => \verticalBLK|BIST|Add0~26_combout\,
	combout => \verticalBLK|BIST|Add0~33_combout\);

-- Location: FF_X24_Y22_N25
\verticalBLK|BIST|temp[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \verticalBLK|BIST|Add0~33_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \verticalBLK|BIST|temp\(13));

-- Location: LCCOMB_X24_Y22_N12
\verticalBLK|BIST|Add0~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST|Add0~28_combout\ = (\verticalBLK|BIST|Add0~27\ & (((\verticalBLK|BIST|Equal0~5_combout\) # (\verticalBLK|BIST|temp\(14))))) # (!\verticalBLK|BIST|Add0~27\ & ((((\verticalBLK|BIST|Equal0~5_combout\) # (\verticalBLK|BIST|temp\(14))))))
-- \verticalBLK|BIST|Add0~29\ = CARRY((!\verticalBLK|BIST|Add0~27\ & ((\verticalBLK|BIST|Equal0~5_combout\) # (\verticalBLK|BIST|temp\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \verticalBLK|BIST|Equal0~5_combout\,
	datab => \verticalBLK|BIST|temp\(14),
	datad => VCC,
	cin => \verticalBLK|BIST|Add0~27\,
	combout => \verticalBLK|BIST|Add0~28_combout\,
	cout => \verticalBLK|BIST|Add0~29\);

-- Location: LCCOMB_X24_Y22_N20
\verticalBLK|BIST|Add0~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST|Add0~37_combout\ = (!\verticalBLK|DUT|pr_state.uno~q\ & \verticalBLK|BIST|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \verticalBLK|DUT|pr_state.uno~q\,
	datad => \verticalBLK|BIST|Add0~28_combout\,
	combout => \verticalBLK|BIST|Add0~37_combout\);

-- Location: FF_X24_Y22_N21
\verticalBLK|BIST|temp[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \verticalBLK|BIST|Add0~37_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \verticalBLK|BIST|temp\(14));

-- Location: LCCOMB_X24_Y22_N14
\verticalBLK|BIST|Add0~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST|Add0~30_combout\ = (\verticalBLK|BIST|temp\(15) & (!\verticalBLK|BIST|Add0~29\)) # (!\verticalBLK|BIST|temp\(15) & ((\verticalBLK|BIST|Add0~29\) # (GND)))
-- \verticalBLK|BIST|Add0~31\ = CARRY((!\verticalBLK|BIST|Add0~29\) # (!\verticalBLK|BIST|temp\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \verticalBLK|BIST|temp\(15),
	datad => VCC,
	cin => \verticalBLK|BIST|Add0~29\,
	combout => \verticalBLK|BIST|Add0~30_combout\,
	cout => \verticalBLK|BIST|Add0~31\);

-- Location: LCCOMB_X24_Y22_N16
\verticalBLK|BIST|Add0~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST|Add0~34_combout\ = \verticalBLK|BIST|Add0~31\ $ (((!\verticalBLK|BIST|Equal0~5_combout\ & !\verticalBLK|BIST|temp\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \verticalBLK|BIST|Equal0~5_combout\,
	datad => \verticalBLK|BIST|temp\(16),
	cin => \verticalBLK|BIST|Add0~31\,
	combout => \verticalBLK|BIST|Add0~34_combout\);

-- Location: LCCOMB_X24_Y22_N18
\verticalBLK|BIST|Add0~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST|Add0~36_combout\ = (!\verticalBLK|DUT|pr_state.uno~q\ & \verticalBLK|BIST|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \verticalBLK|DUT|pr_state.uno~q\,
	datad => \verticalBLK|BIST|Add0~34_combout\,
	combout => \verticalBLK|BIST|Add0~36_combout\);

-- Location: FF_X24_Y22_N19
\verticalBLK|BIST|temp[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \verticalBLK|BIST|Add0~36_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \verticalBLK|BIST|temp\(16));

-- Location: LCCOMB_X24_Y22_N30
\verticalBLK|BIST|Add0~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST|Add0~32_combout\ = (!\verticalBLK|DUT|pr_state.uno~q\ & \verticalBLK|BIST|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \verticalBLK|DUT|pr_state.uno~q\,
	datac => \verticalBLK|BIST|Add0~30_combout\,
	combout => \verticalBLK|BIST|Add0~32_combout\);

-- Location: FF_X24_Y22_N31
\verticalBLK|BIST|temp[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \verticalBLK|BIST|Add0~32_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \verticalBLK|BIST|temp\(15));

-- Location: LCCOMB_X24_Y23_N8
\verticalBLK|BIST|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST|Equal0~0_combout\ = (\verticalBLK|BIST|temp\(13) & (!\verticalBLK|BIST|temp\(16) & (\verticalBLK|BIST|temp\(15) & !\verticalBLK|BIST|temp\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \verticalBLK|BIST|temp\(13),
	datab => \verticalBLK|BIST|temp\(16),
	datac => \verticalBLK|BIST|temp\(15),
	datad => \verticalBLK|BIST|temp\(14),
	combout => \verticalBLK|BIST|Equal0~0_combout\);

-- Location: LCCOMB_X24_Y22_N22
\verticalBLK|BIST|Add0~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST|Add0~38_combout\ = (!\verticalBLK|DUT|pr_state.uno~q\ & \verticalBLK|BIST|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \verticalBLK|DUT|pr_state.uno~q\,
	datac => \verticalBLK|BIST|Add0~20_combout\,
	combout => \verticalBLK|BIST|Add0~38_combout\);

-- Location: FF_X24_Y22_N23
\verticalBLK|BIST|temp[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \verticalBLK|BIST|Add0~38_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \verticalBLK|BIST|temp\(10));

-- Location: LCCOMB_X24_Y23_N2
\verticalBLK|BIST|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST|Equal0~1_combout\ = (!\verticalBLK|BIST|temp\(9) & (\verticalBLK|BIST|temp\(10) & (!\verticalBLK|BIST|temp\(11) & !\verticalBLK|BIST|temp\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \verticalBLK|BIST|temp\(9),
	datab => \verticalBLK|BIST|temp\(10),
	datac => \verticalBLK|BIST|temp\(11),
	datad => \verticalBLK|BIST|temp\(12),
	combout => \verticalBLK|BIST|Equal0~1_combout\);

-- Location: LCCOMB_X24_Y23_N0
\verticalBLK|BIST|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST|Equal0~4_combout\ = (\verticalBLK|BIST|Equal0~2_combout\ & (\verticalBLK|BIST|Equal0~3_combout\ & (\verticalBLK|BIST|Equal0~0_combout\ & \verticalBLK|BIST|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \verticalBLK|BIST|Equal0~2_combout\,
	datab => \verticalBLK|BIST|Equal0~3_combout\,
	datac => \verticalBLK|BIST|Equal0~0_combout\,
	datad => \verticalBLK|BIST|Equal0~1_combout\,
	combout => \verticalBLK|BIST|Equal0~4_combout\);

-- Location: LCCOMB_X24_Y23_N14
\verticalBLK|BIST|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST|Equal0~5_combout\ = (!\verticalBLK|BIST|temp\(0) & \verticalBLK|BIST|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \verticalBLK|BIST|temp\(0),
	datad => \verticalBLK|BIST|Equal0~4_combout\,
	combout => \verticalBLK|BIST|Equal0~5_combout\);

-- Location: LCCOMB_X23_Y23_N12
\verticalBLK|DUT|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|DUT|Selector1~0_combout\ = (\verticalBLK|BIST2|Equal0~6_combout\ & (\verticalBLK|BIST|Equal0~5_combout\ & ((!\verticalBLK|DUT|pr_state.uno~q\)))) # (!\verticalBLK|BIST2|Equal0~6_combout\ & ((\verticalBLK|DUT|pr_state.dos~q\) # 
-- ((\verticalBLK|BIST|Equal0~5_combout\ & !\verticalBLK|DUT|pr_state.uno~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \verticalBLK|BIST2|Equal0~6_combout\,
	datab => \verticalBLK|BIST|Equal0~5_combout\,
	datac => \verticalBLK|DUT|pr_state.dos~q\,
	datad => \verticalBLK|DUT|pr_state.uno~q\,
	combout => \verticalBLK|DUT|Selector1~0_combout\);

-- Location: FF_X23_Y23_N13
\verticalBLK|DUT|pr_state.dos\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \verticalBLK|DUT|Selector1~0_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \verticalBLK|DUT|pr_state.dos~q\);

-- Location: LCCOMB_X28_Y19_N12
\verticalBLK|BIST2|Add0~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \verticalBLK|BIST2|Add0~47_combout\ = (\verticalBLK|DUT|pr_state.dos~q\ & \verticalBLK|BIST2|Add0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \verticalBLK|DUT|pr_state.dos~q\,
	datad => \verticalBLK|BIST2|Add0~11_combout\,
	combout => \verticalBLK|BIST2|Add0~47_combout\);

-- Location: FF_X28_Y19_N13
\verticalBLK|BIST2|temp[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \verticalBLK|BIST2|Add0~47_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \verticalBLK|BIST2|temp\(5));

-- Location: LCCOMB_X28_Y19_N24
\controlDibujoBLK|nx_state~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controlDibujoBLK|nx_state~3_combout\ = (!\verticalBLK|BIST2|temp\(5) & ((\verticalBLK|BIST2|temp\(4)) # (\verticalBLK|BIST2|temp\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \verticalBLK|BIST2|temp\(5),
	datac => \verticalBLK|BIST2|temp\(4),
	datad => \verticalBLK|BIST2|temp\(3),
	combout => \controlDibujoBLK|nx_state~3_combout\);

-- Location: LCCOMB_X28_Y19_N4
\controlDibujoBLK|nx_state~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controlDibujoBLK|nx_state~2_combout\ = (\verticalBLK|BIST2|temp\(4) & (((!\verticalBLK|BIST2|temp\(2)) # (!\verticalBLK|BIST2|temp\(0))) # (!\verticalBLK|BIST2|temp\(1)))) # (!\verticalBLK|BIST2|temp\(4) & ((\verticalBLK|BIST2|temp\(2)) # 
-- ((\verticalBLK|BIST2|temp\(1) & \verticalBLK|BIST2|temp\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \verticalBLK|BIST2|temp\(1),
	datab => \verticalBLK|BIST2|temp\(0),
	datac => \verticalBLK|BIST2|temp\(4),
	datad => \verticalBLK|BIST2|temp\(2),
	combout => \controlDibujoBLK|nx_state~2_combout\);

-- Location: LCCOMB_X28_Y20_N30
\horizontalBLK|BIST2|Add0~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \horizontalBLK|BIST2|Add0~35_combout\ = (\horizontalBLK|BIST2|Add0~6_combout\ & \horizontalBLK|DUT|pr_state.dos~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \horizontalBLK|BIST2|Add0~6_combout\,
	datac => \horizontalBLK|DUT|pr_state.dos~q\,
	combout => \horizontalBLK|BIST2|Add0~35_combout\);

-- Location: FF_X28_Y20_N31
\horizontalBLK|BIST2|temp[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \horizontalBLK|BIST2|Add0~35_combout\,
	clrn => \ALT_INV_rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \horizontalBLK|BIST2|temp\(3));

-- Location: LCCOMB_X28_Y19_N10
\controlDibujoBLK|nx_state~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controlDibujoBLK|nx_state~1_combout\ = (\horizontalBLK|BIST2|temp\(0) & (!\horizontalBLK|BIST2|temp\(1) & (\horizontalBLK|BIST2|temp\(2) & !\horizontalBLK|BIST2|temp\(3)))) # (!\horizontalBLK|BIST2|temp\(0) & (!\horizontalBLK|BIST2|temp\(2) & 
-- (\horizontalBLK|BIST2|temp\(1) $ (\horizontalBLK|BIST2|temp\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \horizontalBLK|BIST2|temp\(1),
	datab => \horizontalBLK|BIST2|temp\(0),
	datac => \horizontalBLK|BIST2|temp\(2),
	datad => \horizontalBLK|BIST2|temp\(3),
	combout => \controlDibujoBLK|nx_state~1_combout\);

-- Location: LCCOMB_X28_Y19_N8
\controlDibujoBLK|nx_state~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controlDibujoBLK|nx_state~4_combout\ = (\controlDibujoBLK|nx_state~3_combout\ & (\controlDibujoBLK|nx_state~1_combout\ & ((\controlDibujoBLK|nx_state~2_combout\) # (!\verticalBLK|BIST2|temp\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \verticalBLK|BIST2|temp\(3),
	datab => \controlDibujoBLK|nx_state~3_combout\,
	datac => \controlDibujoBLK|nx_state~2_combout\,
	datad => \controlDibujoBLK|nx_state~1_combout\,
	combout => \controlDibujoBLK|nx_state~4_combout\);

-- Location: LCCOMB_X28_Y19_N30
\controlDibujoBLK|nx_state~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controlDibujoBLK|nx_state~6_combout\ = (\controlDibujoBLK|combinational~2_combout\) # ((\controlDibujoBLK|combinational~0_combout\) # (!\controlDibujoBLK|nx_state~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlDibujoBLK|combinational~2_combout\,
	datac => \controlDibujoBLK|combinational~0_combout\,
	datad => \controlDibujoBLK|nx_state~4_combout\,
	combout => \controlDibujoBLK|nx_state~6_combout\);

-- Location: LCCOMB_X28_Y19_N18
\controlDibujoBLK|combinational~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controlDibujoBLK|combinational~1_combout\ = (\verticalBLK|BIST2|temp\(1) & (\verticalBLK|BIST2|temp\(0) & \verticalBLK|BIST2|temp\(3))) # (!\verticalBLK|BIST2|temp\(1) & (!\verticalBLK|BIST2|temp\(0) & !\verticalBLK|BIST2|temp\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \verticalBLK|BIST2|temp\(1),
	datac => \verticalBLK|BIST2|temp\(0),
	datad => \verticalBLK|BIST2|temp\(3),
	combout => \controlDibujoBLK|combinational~1_combout\);

-- Location: LCCOMB_X28_Y19_N20
\controlDibujoBLK|combinational~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controlDibujoBLK|combinational~2_combout\ = (\verticalBLK|BIST2|temp\(3) & (!\verticalBLK|BIST2|temp\(4) & ((\verticalBLK|BIST2|temp\(2)) # (\controlDibujoBLK|combinational~1_combout\)))) # (!\verticalBLK|BIST2|temp\(3) & (\verticalBLK|BIST2|temp\(4) & 
-- ((\controlDibujoBLK|combinational~1_combout\) # (!\verticalBLK|BIST2|temp\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011000100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \verticalBLK|BIST2|temp\(3),
	datab => \verticalBLK|BIST2|temp\(4),
	datac => \verticalBLK|BIST2|temp\(2),
	datad => \controlDibujoBLK|combinational~1_combout\,
	combout => \controlDibujoBLK|combinational~2_combout\);

-- Location: LCCOMB_X28_Y19_N16
\controlDibujoBLK|nx_state~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controlDibujoBLK|nx_state~0_combout\ = (!\controlDibujoBLK|pr_state~q\ & ((\controlDibujoBLK|combinational~0_combout\) # ((!\verticalBLK|BIST2|temp\(5) & \controlDibujoBLK|combinational~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \verticalBLK|BIST2|temp\(5),
	datab => \controlDibujoBLK|combinational~2_combout\,
	datac => \controlDibujoBLK|pr_state~q\,
	datad => \controlDibujoBLK|combinational~0_combout\,
	combout => \controlDibujoBLK|nx_state~0_combout\);

-- Location: LCCOMB_X28_Y19_N28
\controlDibujoBLK|nx_state~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controlDibujoBLK|nx_state~5_combout\ = (\controlDibujoBLK|nx_state~0_combout\) # ((\controlDibujoBLK|pr_state~q\ & \controlDibujoBLK|nx_state~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlDibujoBLK|pr_state~q\,
	datac => \controlDibujoBLK|nx_state~4_combout\,
	datad => \controlDibujoBLK|nx_state~0_combout\,
	combout => \controlDibujoBLK|nx_state~5_combout\);

-- Location: LCCOMB_X28_Y19_N26
\controlDibujoBLK|nx_state\ : cycloneiii_lcell_comb
-- Equation(s):
-- \controlDibujoBLK|nx_state~combout\ = (\controlDibujoBLK|nx_state~6_combout\ & ((\controlDibujoBLK|nx_state~5_combout\))) # (!\controlDibujoBLK|nx_state~6_combout\ & (\controlDibujoBLK|nx_state~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controlDibujoBLK|nx_state~combout\,
	datac => \controlDibujoBLK|nx_state~6_combout\,
	datad => \controlDibujoBLK|nx_state~5_combout\,
	combout => \controlDibujoBLK|nx_state~combout\);

-- Location: FF_X28_Y19_N17
\controlDibujoBLK|pr_state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \controlDibujoBLK|nx_state~combout\,
	clrn => \ALT_INV_rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controlDibujoBLK|pr_state~q\);

ww_pixel(0) <= \pixel[0]~output_o\;

ww_pixel(1) <= \pixel[1]~output_o\;

ww_pixel(2) <= \pixel[2]~output_o\;

ww_pixel(3) <= \pixel[3]~output_o\;

ww_pixel(4) <= \pixel[4]~output_o\;

ww_pixel(5) <= \pixel[5]~output_o\;

ww_pixel(6) <= \pixel[6]~output_o\;

ww_pixel(7) <= \pixel[7]~output_o\;

ww_pixel(8) <= \pixel[8]~output_o\;

ww_pixel(9) <= \pixel[9]~output_o\;

ww_pixel(10) <= \pixel[10]~output_o\;

ww_pixel(11) <= \pixel[11]~output_o\;

ww_h_video_on_out <= \h_video_on_out~output_o\;

ww_v_video_on_out <= \v_video_on_out~output_o\;

ww_vsync_out <= \vsync_out~output_o\;

ww_hsync_out <= \hsync_out~output_o\;
END structure;


