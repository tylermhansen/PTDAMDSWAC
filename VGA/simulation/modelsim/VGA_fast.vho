-- Copyright (C) 1991-2012 Altera Corporation
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
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 12.1 Build 177 11/07/2012 SJ Full Version"

-- DATE "12/07/2019 21:07:55"

-- 
-- Device: Altera EP2C20F484C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	VGA IS
    PORT (
	CLOCK_24 : IN std_logic_vector(1 DOWNTO 0);
	PS2_CLK : IN std_logic;
	PS2_DAT : IN std_logic;
	VGA_HS : OUT std_logic;
	VGA_VS : OUT std_logic;
	SW : IN std_logic_vector(1 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0);
	VGA_R : OUT std_logic_vector(3 DOWNTO 0);
	VGA_B : OUT std_logic_vector(3 DOWNTO 0);
	VGA_G : OUT std_logic_vector(3 DOWNTO 0)
	);
END VGA;

-- Design Ports Information
-- CLOCK_24[1]	=>  Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- VGA_HS	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_VS	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- KEY[0]	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- VGA_R[0]	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_R[1]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_R[2]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_R[3]	=>  Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_B[0]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_B[1]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_B[2]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_B[3]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_G[0]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_G[1]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_G[2]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- VGA_G[3]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SW[1]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK_24[0]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PS2_CLK	=>  Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PS2_DAT	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF VGA IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_24 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_PS2_CLK : std_logic;
SIGNAL ww_PS2_DAT : std_logic;
SIGNAL ww_VGA_HS : std_logic;
SIGNAL ww_VGA_VS : std_logic;
SIGNAL ww_SW : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_VGA_R : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_VGA_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_VGA_G : std_logic_vector(3 DOWNTO 0);
SIGNAL \C|altpll_0|sd1|pll_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \C|altpll_0|sd1|pll_CLK_bus\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \C1|INST1|debounce_ps2_clk|result~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \C|altpll_0|sd1|_clk0~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \C|altpll_0|sd1|pll~CLK1\ : std_logic;
SIGNAL \C|altpll_0|sd1|pll~CLK2\ : std_logic;
SIGNAL \C1|Add0~0_combout\ : std_logic;
SIGNAL \C1|Add0~6_combout\ : std_logic;
SIGNAL \C1|Add0~8_combout\ : std_logic;
SIGNAL \C1|Add2~1\ : std_logic;
SIGNAL \C1|Add2~0_combout\ : std_logic;
SIGNAL \C1|Add2~3\ : std_logic;
SIGNAL \C1|Add2~2_combout\ : std_logic;
SIGNAL \C1|Add2~5\ : std_logic;
SIGNAL \C1|Add2~4_combout\ : std_logic;
SIGNAL \C1|Add2~7\ : std_logic;
SIGNAL \C1|Add2~6_combout\ : std_logic;
SIGNAL \C1|Add2~9\ : std_logic;
SIGNAL \C1|Add2~8_combout\ : std_logic;
SIGNAL \C1|Add2~11\ : std_logic;
SIGNAL \C1|Add2~10_combout\ : std_logic;
SIGNAL \C1|Add2~13\ : std_logic;
SIGNAL \C1|Add2~12_combout\ : std_logic;
SIGNAL \C1|Add2~15\ : std_logic;
SIGNAL \C1|Add2~14_combout\ : std_logic;
SIGNAL \C1|LessThan5~1_cout\ : std_logic;
SIGNAL \C1|LessThan5~3_cout\ : std_logic;
SIGNAL \C1|LessThan5~5_cout\ : std_logic;
SIGNAL \C1|LessThan5~7_cout\ : std_logic;
SIGNAL \C1|LessThan5~9_cout\ : std_logic;
SIGNAL \C1|LessThan5~11_cout\ : std_logic;
SIGNAL \C1|LessThan5~13_cout\ : std_logic;
SIGNAL \C1|LessThan5~15_cout\ : std_logic;
SIGNAL \C1|LessThan5~17_cout\ : std_logic;
SIGNAL \C1|LessThan5~19_cout\ : std_logic;
SIGNAL \C1|LessThan5~20_combout\ : std_logic;
SIGNAL \C1|Add2~16_combout\ : std_logic;
SIGNAL \C1|Add8~3_combout\ : std_logic;
SIGNAL \C1|Add8~13_combout\ : std_logic;
SIGNAL \C1|Add8~15_combout\ : std_logic;
SIGNAL \C1|Add8~20\ : std_logic;
SIGNAL \C1|Add8~21_combout\ : std_logic;
SIGNAL \C1|INST1|count_idle[3]~19_combout\ : std_logic;
SIGNAL \C1|INST1|count_idle[5]~23_combout\ : std_logic;
SIGNAL \C1|INST1|count_idle[10]~33_combout\ : std_logic;
SIGNAL \C1|INST1|debounce_ps2_clk|Add0~1\ : std_logic;
SIGNAL \C1|INST1|debounce_ps2_clk|Add0~0_combout\ : std_logic;
SIGNAL \C1|INST1|debounce_ps2_clk|Add0~3\ : std_logic;
SIGNAL \C1|INST1|debounce_ps2_clk|Add0~2_combout\ : std_logic;
SIGNAL \C1|INST1|debounce_ps2_clk|Add0~5\ : std_logic;
SIGNAL \C1|INST1|debounce_ps2_clk|Add0~4_combout\ : std_logic;
SIGNAL \C1|INST1|debounce_ps2_clk|Add0~7\ : std_logic;
SIGNAL \C1|INST1|debounce_ps2_clk|Add0~6_combout\ : std_logic;
SIGNAL \C1|INST1|debounce_ps2_clk|Add0~9\ : std_logic;
SIGNAL \C1|INST1|debounce_ps2_clk|Add0~8_combout\ : std_logic;
SIGNAL \C1|INST1|debounce_ps2_clk|Add0~11\ : std_logic;
SIGNAL \C1|INST1|debounce_ps2_clk|Add0~10_combout\ : std_logic;
SIGNAL \C1|INST1|debounce_ps2_clk|Add0~13\ : std_logic;
SIGNAL \C1|INST1|debounce_ps2_clk|Add0~12_combout\ : std_logic;
SIGNAL \C1|INST1|debounce_ps2_clk|Add0~15\ : std_logic;
SIGNAL \C1|INST1|debounce_ps2_clk|Add0~14_combout\ : std_logic;
SIGNAL \C1|INST1|debounce_ps2_clk|Add0~16_combout\ : std_logic;
SIGNAL \C1|INST1|debounce_ps2_data|Add0~2_combout\ : std_logic;
SIGNAL \C1|INST1|debounce_ps2_data|Add0~6_combout\ : std_logic;
SIGNAL \C1|INST1|debounce_ps2_data|Add0~14_combout\ : std_logic;
SIGNAL \C1|process_0~0_combout\ : std_logic;
SIGNAL \C1|process_0~4_combout\ : std_logic;
SIGNAL \C1|LessThan13~0_combout\ : std_logic;
SIGNAL \C1|process_0~10_combout\ : std_logic;
SIGNAL \C1|DRAW2~2_combout\ : std_logic;
SIGNAL \C1|DRAW1~0_combout\ : std_logic;
SIGNAL \C1|DRAW1~1_combout\ : std_logic;
SIGNAL \C1|DRAW1~2_combout\ : std_logic;
SIGNAL \C1|DRAW1~3_combout\ : std_logic;
SIGNAL \C1|DRAW1~4_combout\ : std_logic;
SIGNAL \C1|DRAW2~3_combout\ : std_logic;
SIGNAL \C1|DRAW2~4_combout\ : std_logic;
SIGNAL \C1|Add6~4_combout\ : std_logic;
SIGNAL \C1|INST1|ps2_code_new~regout\ : std_logic;
SIGNAL \C1|INST1|debounce_ps2_clk|result~1_combout\ : std_logic;
SIGNAL \C1|INST1|debounce_ps2_clk|counter_out[0]~1_combout\ : std_logic;
SIGNAL \C1|INST1|debounce_ps2_clk|counter_out[7]~2_combout\ : std_logic;
SIGNAL \C1|INST1|debounce_ps2_clk|counter_out[6]~3_combout\ : std_logic;
SIGNAL \C1|INST1|debounce_ps2_clk|counter_out[5]~4_combout\ : std_logic;
SIGNAL \C1|INST1|debounce_ps2_clk|counter_out[4]~5_combout\ : std_logic;
SIGNAL \C1|INST1|debounce_ps2_clk|counter_out[3]~6_combout\ : std_logic;
SIGNAL \C1|INST1|debounce_ps2_clk|counter_out[2]~7_combout\ : std_logic;
SIGNAL \C1|INST1|debounce_ps2_clk|counter_out[1]~8_combout\ : std_logic;
SIGNAL \C1|INST1|debounce_ps2_clk|counter_out[0]~9_combout\ : std_logic;
SIGNAL \C1|INST1|debounce_ps2_data|counter_out[3]~6_combout\ : std_logic;
SIGNAL \C1|INST1|debounce_ps2_data|counter_out[1]~8_combout\ : std_logic;
SIGNAL \C1|SQ_X2[6]~4_combout\ : std_logic;
SIGNAL \C1|INST1|debounce_ps2_clk|result~clkctrl_outclk\ : std_logic;
SIGNAL \C|altpll_0|sd1|_clk0\ : std_logic;
SIGNAL \C|altpll_0|sd1|_clk0~clkctrl_outclk\ : std_logic;
SIGNAL \C1|HPOS[0]~11_combout\ : std_logic;
SIGNAL \C1|HPOS[0]~12\ : std_logic;
SIGNAL \C1|HPOS[1]~14\ : std_logic;
SIGNAL \C1|HPOS[2]~16\ : std_logic;
SIGNAL \C1|HPOS[3]~17_combout\ : std_logic;
SIGNAL \C1|HPOS[3]~18\ : std_logic;
SIGNAL \C1|HPOS[4]~20\ : std_logic;
SIGNAL \C1|HPOS[5]~21_combout\ : std_logic;
SIGNAL \C1|HPOS[5]~22\ : std_logic;
SIGNAL \C1|HPOS[6]~24\ : std_logic;
SIGNAL \C1|HPOS[7]~25_combout\ : std_logic;
SIGNAL \C1|HPOS[7]~26\ : std_logic;
SIGNAL \C1|HPOS[8]~28\ : std_logic;
SIGNAL \C1|HPOS[9]~29_combout\ : std_logic;
SIGNAL \C1|HPOS[9]~30\ : std_logic;
SIGNAL \C1|HPOS[10]~31_combout\ : std_logic;
SIGNAL \C1|LessThan8~0_combout\ : std_logic;
SIGNAL \C1|HPOS[4]~19_combout\ : std_logic;
SIGNAL \C1|LessThan11~0_combout\ : std_logic;
SIGNAL \C1|LessThan8~1_combout\ : std_logic;
SIGNAL \C1|HPOS[2]~15_combout\ : std_logic;
SIGNAL \C1|HPOS[1]~13_combout\ : std_logic;
SIGNAL \C1|process_0~1_combout\ : std_logic;
SIGNAL \C1|process_0~2_combout\ : std_logic;
SIGNAL \C1|HPOS[6]~23_combout\ : std_logic;
SIGNAL \C1|process_0~3_combout\ : std_logic;
SIGNAL \C1|HSYNC~regout\ : std_logic;
SIGNAL \C1|VPOS[0]~12\ : std_logic;
SIGNAL \C1|VPOS[1]~13_combout\ : std_logic;
SIGNAL \C1|VPOS[9]~30\ : std_logic;
SIGNAL \C1|VPOS[10]~31_combout\ : std_logic;
SIGNAL \C1|LessThan9~0_combout\ : std_logic;
SIGNAL \C1|VPOS[1]~14\ : std_logic;
SIGNAL \C1|VPOS[2]~16\ : std_logic;
SIGNAL \C1|VPOS[3]~18\ : std_logic;
SIGNAL \C1|VPOS[4]~20\ : std_logic;
SIGNAL \C1|VPOS[5]~21_combout\ : std_logic;
SIGNAL \C1|VPOS[5]~22\ : std_logic;
SIGNAL \C1|VPOS[6]~24\ : std_logic;
SIGNAL \C1|VPOS[7]~26\ : std_logic;
SIGNAL \C1|VPOS[8]~28\ : std_logic;
SIGNAL \C1|VPOS[9]~29_combout\ : std_logic;
SIGNAL \C1|VPOS[6]~23_combout\ : std_logic;
SIGNAL \C1|VPOS[7]~25_combout\ : std_logic;
SIGNAL \C1|process_0~5_combout\ : std_logic;
SIGNAL \C1|VPOS[2]~15_combout\ : std_logic;
SIGNAL \C1|VPOS[3]~17_combout\ : std_logic;
SIGNAL \C1|VPOS[4]~19_combout\ : std_logic;
SIGNAL \C1|LessThan16~0_combout\ : std_logic;
SIGNAL \C1|process_0~6_combout\ : std_logic;
SIGNAL \C1|VSYNC~regout\ : std_logic;
SIGNAL \C1|VPOS[8]~27_combout\ : std_logic;
SIGNAL \C1|VPOS[0]~11_combout\ : std_logic;
SIGNAL \C1|LessThan16~1_combout\ : std_logic;
SIGNAL \C1|DRAW2~7_combout\ : std_logic;
SIGNAL \C1|DRAW2~5_combout\ : std_logic;
SIGNAL \PS2_DAT~combout\ : std_logic;
SIGNAL \C1|INST1|sync_ffs[1]~feeder_combout\ : std_logic;
SIGNAL \C1|INST1|debounce_ps2_data|flipflops[0]~feeder_combout\ : std_logic;
SIGNAL \C1|INST1|debounce_ps2_data|counter_out[0]~1_combout\ : std_logic;
SIGNAL \C1|INST1|debounce_ps2_data|result~1_combout\ : std_logic;
SIGNAL \C1|INST1|debounce_ps2_data|counter_out[7]~2_combout\ : std_logic;
SIGNAL \C1|INST1|debounce_ps2_data|Add0~0_combout\ : std_logic;
SIGNAL \C1|INST1|debounce_ps2_data|counter_out[0]~9_combout\ : std_logic;
SIGNAL \C1|INST1|debounce_ps2_data|Add0~1\ : std_logic;
SIGNAL \C1|INST1|debounce_ps2_data|Add0~3\ : std_logic;
SIGNAL \C1|INST1|debounce_ps2_data|Add0~4_combout\ : std_logic;
SIGNAL \C1|INST1|debounce_ps2_data|counter_out[2]~7_combout\ : std_logic;
SIGNAL \C1|INST1|debounce_ps2_data|Add0~5\ : std_logic;
SIGNAL \C1|INST1|debounce_ps2_data|Add0~7\ : std_logic;
SIGNAL \C1|INST1|debounce_ps2_data|Add0~8_combout\ : std_logic;
SIGNAL \C1|INST1|debounce_ps2_data|counter_out[4]~5_combout\ : std_logic;
SIGNAL \C1|INST1|debounce_ps2_data|Add0~9\ : std_logic;
SIGNAL \C1|INST1|debounce_ps2_data|Add0~10_combout\ : std_logic;
SIGNAL \C1|INST1|debounce_ps2_data|counter_out[5]~4_combout\ : std_logic;
SIGNAL \C1|INST1|debounce_ps2_data|Add0~11\ : std_logic;
SIGNAL \C1|INST1|debounce_ps2_data|Add0~12_combout\ : std_logic;
SIGNAL \C1|INST1|debounce_ps2_data|counter_out[6]~3_combout\ : std_logic;
SIGNAL \C1|INST1|debounce_ps2_data|Add0~13\ : std_logic;
SIGNAL \C1|INST1|debounce_ps2_data|Add0~15\ : std_logic;
SIGNAL \C1|INST1|debounce_ps2_data|Add0~16_combout\ : std_logic;
SIGNAL \C1|INST1|debounce_ps2_data|counter_out~0_combout\ : std_logic;
SIGNAL \C1|INST1|debounce_ps2_data|result~0_combout\ : std_logic;
SIGNAL \C1|INST1|debounce_ps2_data|result~regout\ : std_logic;
SIGNAL \C1|INST1|ps2_word[10]~feeder_combout\ : std_logic;
SIGNAL \C1|INST1|ps2_word[6]~feeder_combout\ : std_logic;
SIGNAL \C1|INST1|ps2_word[5]~feeder_combout\ : std_logic;
SIGNAL \C1|INST1|count_idle[0]~12_combout\ : std_logic;
SIGNAL \PS2_CLK~combout\ : std_logic;
SIGNAL \C1|INST1|sync_ffs[0]~feeder_combout\ : std_logic;
SIGNAL \C1|INST1|debounce_ps2_clk|flipflops[0]~feeder_combout\ : std_logic;
SIGNAL \C1|INST1|debounce_ps2_clk|counter_out~0_combout\ : std_logic;
SIGNAL \C1|INST1|debounce_ps2_clk|result~0_combout\ : std_logic;
SIGNAL \C1|INST1|debounce_ps2_clk|result~regout\ : std_logic;
SIGNAL \C1|INST1|count_idle[0]~13\ : std_logic;
SIGNAL \C1|INST1|count_idle[1]~15_combout\ : std_logic;
SIGNAL \C1|INST1|count_idle[1]~16\ : std_logic;
SIGNAL \C1|INST1|count_idle[2]~17_combout\ : std_logic;
SIGNAL \C1|INST1|count_idle[2]~18\ : std_logic;
SIGNAL \C1|INST1|count_idle[3]~20\ : std_logic;
SIGNAL \C1|INST1|count_idle[4]~21_combout\ : std_logic;
SIGNAL \C1|INST1|count_idle[4]~22\ : std_logic;
SIGNAL \C1|INST1|count_idle[5]~24\ : std_logic;
SIGNAL \C1|INST1|count_idle[6]~25_combout\ : std_logic;
SIGNAL \C1|INST1|count_idle[6]~26\ : std_logic;
SIGNAL \C1|INST1|count_idle[7]~27_combout\ : std_logic;
SIGNAL \C1|INST1|Equal0~1_combout\ : std_logic;
SIGNAL \C1|INST1|count_idle[8]~14_combout\ : std_logic;
SIGNAL \C1|INST1|Equal0~0_combout\ : std_logic;
SIGNAL \C1|INST1|count_idle[7]~28\ : std_logic;
SIGNAL \C1|INST1|count_idle[8]~30\ : std_logic;
SIGNAL \C1|INST1|count_idle[9]~31_combout\ : std_logic;
SIGNAL \C1|INST1|count_idle[8]~29_combout\ : std_logic;
SIGNAL \C1|INST1|count_idle[9]~32\ : std_logic;
SIGNAL \C1|INST1|count_idle[10]~34\ : std_logic;
SIGNAL \C1|INST1|count_idle[11]~35_combout\ : std_logic;
SIGNAL \C1|INST1|Equal0~2_combout\ : std_logic;
SIGNAL \C1|INST1|ps2_word[4]~feeder_combout\ : std_logic;
SIGNAL \C1|INST1|ps2_word[2]~feeder_combout\ : std_logic;
SIGNAL \C1|INST1|ps2_word[1]~feeder_combout\ : std_logic;
SIGNAL \C1|INST1|process_2~0_combout\ : std_logic;
SIGNAL \C1|INST1|error~0_combout\ : std_logic;
SIGNAL \C1|INST1|error~1_combout\ : std_logic;
SIGNAL \C1|INST1|process_2~1_combout\ : std_logic;
SIGNAL \C1|INST1|process_2~2_combout\ : std_logic;
SIGNAL \C1|INST1|ps2_code[0]~feeder_combout\ : std_logic;
SIGNAL \C1|Add6~1_combout\ : std_logic;
SIGNAL \C1|Add6~2_combout\ : std_logic;
SIGNAL \C1|Add8~1_combout\ : std_logic;
SIGNAL \C1|INST1|ps2_code[5]~feeder_combout\ : std_logic;
SIGNAL \C1|INST1|ps2_code[6]~feeder_combout\ : std_logic;
SIGNAL \C1|Equal0~0_combout\ : std_logic;
SIGNAL \C1|DEPRESSED~combout\ : std_logic;
SIGNAL \C1|SQ_X2[10]~0_combout\ : std_logic;
SIGNAL \C1|SQ_X2[10]~1_combout\ : std_logic;
SIGNAL \C1|SQ_X2[10]~2_combout\ : std_logic;
SIGNAL \C1|Add8~2\ : std_logic;
SIGNAL \C1|Add8~4\ : std_logic;
SIGNAL \C1|Add8~5_combout\ : std_logic;
SIGNAL \C1|Add8~6\ : std_logic;
SIGNAL \C1|Add8~8\ : std_logic;
SIGNAL \C1|Add8~10\ : std_logic;
SIGNAL \C1|Add8~12\ : std_logic;
SIGNAL \C1|Add8~14\ : std_logic;
SIGNAL \C1|Add8~16\ : std_logic;
SIGNAL \C1|Add8~18\ : std_logic;
SIGNAL \C1|Add8~19_combout\ : std_logic;
SIGNAL \C1|SQ_X2[9]~3_combout\ : std_logic;
SIGNAL \C1|Add8~17_combout\ : std_logic;
SIGNAL \C1|Add8~11_combout\ : std_logic;
SIGNAL \C1|Add8~9_combout\ : std_logic;
SIGNAL \C1|SQ_X2[4]~5_combout\ : std_logic;
SIGNAL \C1|Add8~7_combout\ : std_logic;
SIGNAL \C1|SQ_X2[3]~6_combout\ : std_logic;
SIGNAL \C1|LessThan4~1_cout\ : std_logic;
SIGNAL \C1|LessThan4~3_cout\ : std_logic;
SIGNAL \C1|LessThan4~5_cout\ : std_logic;
SIGNAL \C1|LessThan4~7_cout\ : std_logic;
SIGNAL \C1|LessThan4~9_cout\ : std_logic;
SIGNAL \C1|LessThan4~11_cout\ : std_logic;
SIGNAL \C1|LessThan4~13_cout\ : std_logic;
SIGNAL \C1|LessThan4~15_cout\ : std_logic;
SIGNAL \C1|LessThan4~17_cout\ : std_logic;
SIGNAL \C1|LessThan4~19_cout\ : std_logic;
SIGNAL \C1|LessThan4~20_combout\ : std_logic;
SIGNAL \C1|DRAW2~6_combout\ : std_logic;
SIGNAL \C1|HPOS[8]~27_combout\ : std_logic;
SIGNAL \C1|process_0~7_combout\ : std_logic;
SIGNAL \C1|process_0~8_combout\ : std_logic;
SIGNAL \C1|process_0~9_combout\ : std_logic;
SIGNAL \C1|G~0_combout\ : std_logic;
SIGNAL \C1|Add6~3_combout\ : std_logic;
SIGNAL \C1|Add6~5_combout\ : std_logic;
SIGNAL \C1|Add6~7\ : std_logic;
SIGNAL \C1|Add6~8_combout\ : std_logic;
SIGNAL \C1|SQ_X1[10]~0_combout\ : std_logic;
SIGNAL \C1|Add6~9\ : std_logic;
SIGNAL \C1|Add6~10_combout\ : std_logic;
SIGNAL \C1|SQ_X1[2]~6_combout\ : std_logic;
SIGNAL \C1|Add6~11\ : std_logic;
SIGNAL \C1|Add6~12_combout\ : std_logic;
SIGNAL \C1|Add6~13\ : std_logic;
SIGNAL \C1|Add6~14_combout\ : std_logic;
SIGNAL \C1|SQ_X1[4]~5_combout\ : std_logic;
SIGNAL \C1|Add6~15\ : std_logic;
SIGNAL \C1|Add6~16_combout\ : std_logic;
SIGNAL \C1|SQ_X1[5]~4_combout\ : std_logic;
SIGNAL \C1|Add6~17\ : std_logic;
SIGNAL \C1|Add6~18_combout\ : std_logic;
SIGNAL \C1|SQ_X1[6]~3_combout\ : std_logic;
SIGNAL \C1|Add6~19\ : std_logic;
SIGNAL \C1|Add6~20_combout\ : std_logic;
SIGNAL \C1|SQ_X1[7]~2_combout\ : std_logic;
SIGNAL \C1|Add6~21\ : std_logic;
SIGNAL \C1|Add6~22_combout\ : std_logic;
SIGNAL \C1|SQ_X1[8]~1_combout\ : std_logic;
SIGNAL \C1|Add6~23\ : std_logic;
SIGNAL \C1|Add6~24_combout\ : std_logic;
SIGNAL \C1|Add0~1\ : std_logic;
SIGNAL \C1|Add0~3\ : std_logic;
SIGNAL \C1|Add0~5\ : std_logic;
SIGNAL \C1|Add0~7\ : std_logic;
SIGNAL \C1|Add0~9\ : std_logic;
SIGNAL \C1|Add0~11\ : std_logic;
SIGNAL \C1|Add0~13\ : std_logic;
SIGNAL \C1|Add0~14_combout\ : std_logic;
SIGNAL \C1|Add0~12_combout\ : std_logic;
SIGNAL \C1|Add0~10_combout\ : std_logic;
SIGNAL \C1|Add0~4_combout\ : std_logic;
SIGNAL \C1|Add0~2_combout\ : std_logic;
SIGNAL \C1|Add6~6_combout\ : std_logic;
SIGNAL \C1|LessThan1~1_cout\ : std_logic;
SIGNAL \C1|LessThan1~3_cout\ : std_logic;
SIGNAL \C1|LessThan1~5_cout\ : std_logic;
SIGNAL \C1|LessThan1~7_cout\ : std_logic;
SIGNAL \C1|LessThan1~9_cout\ : std_logic;
SIGNAL \C1|LessThan1~11_cout\ : std_logic;
SIGNAL \C1|LessThan1~13_cout\ : std_logic;
SIGNAL \C1|LessThan1~15_cout\ : std_logic;
SIGNAL \C1|LessThan1~17_cout\ : std_logic;
SIGNAL \C1|LessThan1~19_cout\ : std_logic;
SIGNAL \C1|LessThan1~20_combout\ : std_logic;
SIGNAL \C1|Add0~15\ : std_logic;
SIGNAL \C1|Add0~16_combout\ : std_logic;
SIGNAL \C1|Add6~25\ : std_logic;
SIGNAL \C1|Add6~26_combout\ : std_logic;
SIGNAL \C1|LessThan0~1_cout\ : std_logic;
SIGNAL \C1|LessThan0~3_cout\ : std_logic;
SIGNAL \C1|LessThan0~5_cout\ : std_logic;
SIGNAL \C1|LessThan0~7_cout\ : std_logic;
SIGNAL \C1|LessThan0~9_cout\ : std_logic;
SIGNAL \C1|LessThan0~11_cout\ : std_logic;
SIGNAL \C1|LessThan0~13_cout\ : std_logic;
SIGNAL \C1|LessThan0~15_cout\ : std_logic;
SIGNAL \C1|LessThan0~17_cout\ : std_logic;
SIGNAL \C1|LessThan0~19_cout\ : std_logic;
SIGNAL \C1|LessThan0~20_combout\ : std_logic;
SIGNAL \C1|DRAW1~5_combout\ : std_logic;
SIGNAL \C1|R~0_combout\ : std_logic;
SIGNAL \C1|G~1_combout\ : std_logic;
SIGNAL \C1|G~2_combout\ : std_logic;
SIGNAL \C1|INST1|debounce_ps2_data|flipflops\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \C1|INST1|debounce_ps2_data|counter_out\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \C1|VPOS\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \C1|SQ_X2\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \C1|SQ_X1\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \C1|R\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \C1|HPOS\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \C1|B\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \C1|INST1|sync_ffs\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \C1|INST1|ps2_word\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \C1|INST1|ps2_code\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \C1|INST1|count_idle\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \C1|INST1|debounce_ps2_clk|flipflops\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \C1|INST1|debounce_ps2_clk|counter_out\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \SW~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \CLOCK_24~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \C1|INST1|debounce_ps2_clk|ALT_INV_result~clkctrl_outclk\ : std_logic;
SIGNAL \C1|INST1|debounce_ps2_clk|ALT_INV_result~regout\ : std_logic;

BEGIN

ww_CLOCK_24 <= CLOCK_24;
ww_PS2_CLK <= PS2_CLK;
ww_PS2_DAT <= PS2_DAT;
VGA_HS <= ww_VGA_HS;
VGA_VS <= ww_VGA_VS;
ww_SW <= SW;
ww_KEY <= KEY;
VGA_R <= ww_VGA_R;
VGA_B <= ww_VGA_B;
VGA_G <= ww_VGA_G;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\C|altpll_0|sd1|pll_INCLK_bus\ <= (gnd & \CLOCK_24~combout\(0));

\C|altpll_0|sd1|_clk0\ <= \C|altpll_0|sd1|pll_CLK_bus\(0);
\C|altpll_0|sd1|pll~CLK1\ <= \C|altpll_0|sd1|pll_CLK_bus\(1);
\C|altpll_0|sd1|pll~CLK2\ <= \C|altpll_0|sd1|pll_CLK_bus\(2);

\C1|INST1|debounce_ps2_clk|result~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \C1|INST1|debounce_ps2_clk|result~regout\);

\C|altpll_0|sd1|_clk0~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \C|altpll_0|sd1|_clk0\);
\C1|INST1|debounce_ps2_clk|ALT_INV_result~clkctrl_outclk\ <= NOT \C1|INST1|debounce_ps2_clk|result~clkctrl_outclk\;
\C1|INST1|debounce_ps2_clk|ALT_INV_result~regout\ <= NOT \C1|INST1|debounce_ps2_clk|result~regout\;

-- Location: LCCOMB_X36_Y23_N14
\C1|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add0~0_combout\ = (\C1|SQ_X1\(2) & (\C1|SQ_X1\(3) & VCC)) # (!\C1|SQ_X1\(2) & (\C1|SQ_X1\(3) $ (VCC)))
-- \C1|Add0~1\ = CARRY((!\C1|SQ_X1\(2) & \C1|SQ_X1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(2),
	datab => \C1|SQ_X1\(3),
	datad => VCC,
	combout => \C1|Add0~0_combout\,
	cout => \C1|Add0~1\);

-- Location: LCCOMB_X36_Y23_N20
\C1|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add0~6_combout\ = (\C1|SQ_X1\(6) & (!\C1|Add0~5\)) # (!\C1|SQ_X1\(6) & (\C1|Add0~5\ & VCC))
-- \C1|Add0~7\ = CARRY((\C1|SQ_X1\(6) & !\C1|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X1\(6),
	datad => VCC,
	cin => \C1|Add0~5\,
	combout => \C1|Add0~6_combout\,
	cout => \C1|Add0~7\);

-- Location: LCCOMB_X36_Y23_N22
\C1|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add0~8_combout\ = (\C1|SQ_X1\(7) & (!\C1|Add0~7\ & VCC)) # (!\C1|SQ_X1\(7) & (\C1|Add0~7\ $ (GND)))
-- \C1|Add0~9\ = CARRY((!\C1|SQ_X1\(7) & !\C1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X1\(7),
	datad => VCC,
	cin => \C1|Add0~7\,
	combout => \C1|Add0~8_combout\,
	cout => \C1|Add0~9\);

-- Location: LCCOMB_X35_Y24_N12
\C1|Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add2~0_combout\ = (\C1|SQ_X2\(2) & (\C1|SQ_X2\(3) $ (GND))) # (!\C1|SQ_X2\(2) & (!\C1|SQ_X2\(3) & VCC))
-- \C1|Add2~1\ = CARRY((\C1|SQ_X2\(2) & !\C1|SQ_X2\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(2),
	datab => \C1|SQ_X2\(3),
	datad => VCC,
	combout => \C1|Add2~0_combout\,
	cout => \C1|Add2~1\);

-- Location: LCCOMB_X35_Y24_N14
\C1|Add2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add2~2_combout\ = (\C1|SQ_X2\(4) & ((\C1|Add2~1\) # (GND))) # (!\C1|SQ_X2\(4) & (!\C1|Add2~1\))
-- \C1|Add2~3\ = CARRY((\C1|SQ_X2\(4)) # (!\C1|Add2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(4),
	datad => VCC,
	cin => \C1|Add2~1\,
	combout => \C1|Add2~2_combout\,
	cout => \C1|Add2~3\);

-- Location: LCCOMB_X35_Y24_N16
\C1|Add2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add2~4_combout\ = (\C1|SQ_X2\(5) & ((GND) # (!\C1|Add2~3\))) # (!\C1|SQ_X2\(5) & (\C1|Add2~3\ $ (GND)))
-- \C1|Add2~5\ = CARRY((\C1|SQ_X2\(5)) # (!\C1|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(5),
	datad => VCC,
	cin => \C1|Add2~3\,
	combout => \C1|Add2~4_combout\,
	cout => \C1|Add2~5\);

-- Location: LCCOMB_X35_Y24_N18
\C1|Add2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add2~6_combout\ = (\C1|SQ_X2\(6) & (!\C1|Add2~5\)) # (!\C1|SQ_X2\(6) & (\C1|Add2~5\ & VCC))
-- \C1|Add2~7\ = CARRY((\C1|SQ_X2\(6) & !\C1|Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X2\(6),
	datad => VCC,
	cin => \C1|Add2~5\,
	combout => \C1|Add2~6_combout\,
	cout => \C1|Add2~7\);

-- Location: LCCOMB_X35_Y24_N20
\C1|Add2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add2~8_combout\ = (\C1|SQ_X2\(7) & (\C1|Add2~7\ $ (GND))) # (!\C1|SQ_X2\(7) & (!\C1|Add2~7\ & VCC))
-- \C1|Add2~9\ = CARRY((\C1|SQ_X2\(7) & !\C1|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X2\(7),
	datad => VCC,
	cin => \C1|Add2~7\,
	combout => \C1|Add2~8_combout\,
	cout => \C1|Add2~9\);

-- Location: LCCOMB_X35_Y24_N22
\C1|Add2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add2~10_combout\ = (\C1|SQ_X2\(8) & (!\C1|Add2~9\)) # (!\C1|SQ_X2\(8) & ((\C1|Add2~9\) # (GND)))
-- \C1|Add2~11\ = CARRY((!\C1|Add2~9\) # (!\C1|SQ_X2\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(8),
	datad => VCC,
	cin => \C1|Add2~9\,
	combout => \C1|Add2~10_combout\,
	cout => \C1|Add2~11\);

-- Location: LCCOMB_X35_Y24_N24
\C1|Add2~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add2~12_combout\ = (\C1|SQ_X2\(9) & (!\C1|Add2~11\ & VCC)) # (!\C1|SQ_X2\(9) & (\C1|Add2~11\ $ (GND)))
-- \C1|Add2~13\ = CARRY((!\C1|SQ_X2\(9) & !\C1|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(9),
	datad => VCC,
	cin => \C1|Add2~11\,
	combout => \C1|Add2~12_combout\,
	cout => \C1|Add2~13\);

-- Location: LCCOMB_X35_Y24_N26
\C1|Add2~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add2~14_combout\ = (\C1|SQ_X2\(10) & (!\C1|Add2~13\)) # (!\C1|SQ_X2\(10) & ((\C1|Add2~13\) # (GND)))
-- \C1|Add2~15\ = CARRY((!\C1|Add2~13\) # (!\C1|SQ_X2\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X2\(10),
	datad => VCC,
	cin => \C1|Add2~13\,
	combout => \C1|Add2~14_combout\,
	cout => \C1|Add2~15\);

-- Location: LCCOMB_X36_Y24_N10
\C1|LessThan5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan5~1_cout\ = CARRY((!\C1|HPOS\(0) & \C1|SQ_X2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(0),
	datab => \C1|SQ_X2\(0),
	datad => VCC,
	cout => \C1|LessThan5~1_cout\);

-- Location: LCCOMB_X36_Y24_N12
\C1|LessThan5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan5~3_cout\ = CARRY((\C1|HPOS\(1) & ((!\C1|LessThan5~1_cout\) # (!\C1|SQ_X2\(1)))) # (!\C1|HPOS\(1) & (!\C1|SQ_X2\(1) & !\C1|LessThan5~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(1),
	datab => \C1|SQ_X2\(1),
	datad => VCC,
	cin => \C1|LessThan5~1_cout\,
	cout => \C1|LessThan5~3_cout\);

-- Location: LCCOMB_X36_Y24_N14
\C1|LessThan5~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan5~5_cout\ = CARRY((\C1|SQ_X2\(2) & (!\C1|HPOS\(2) & !\C1|LessThan5~3_cout\)) # (!\C1|SQ_X2\(2) & ((!\C1|LessThan5~3_cout\) # (!\C1|HPOS\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(2),
	datab => \C1|HPOS\(2),
	datad => VCC,
	cin => \C1|LessThan5~3_cout\,
	cout => \C1|LessThan5~5_cout\);

-- Location: LCCOMB_X36_Y24_N16
\C1|LessThan5~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan5~7_cout\ = CARRY((\C1|Add2~0_combout\ & (\C1|HPOS\(3) & !\C1|LessThan5~5_cout\)) # (!\C1|Add2~0_combout\ & ((\C1|HPOS\(3)) # (!\C1|LessThan5~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~0_combout\,
	datab => \C1|HPOS\(3),
	datad => VCC,
	cin => \C1|LessThan5~5_cout\,
	cout => \C1|LessThan5~7_cout\);

-- Location: LCCOMB_X36_Y24_N18
\C1|LessThan5~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan5~9_cout\ = CARRY((\C1|Add2~2_combout\ & ((!\C1|LessThan5~7_cout\) # (!\C1|HPOS\(4)))) # (!\C1|Add2~2_combout\ & (!\C1|HPOS\(4) & !\C1|LessThan5~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~2_combout\,
	datab => \C1|HPOS\(4),
	datad => VCC,
	cin => \C1|LessThan5~7_cout\,
	cout => \C1|LessThan5~9_cout\);

-- Location: LCCOMB_X36_Y24_N20
\C1|LessThan5~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan5~11_cout\ = CARRY((\C1|HPOS\(5) & ((!\C1|LessThan5~9_cout\) # (!\C1|Add2~4_combout\))) # (!\C1|HPOS\(5) & (!\C1|Add2~4_combout\ & !\C1|LessThan5~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(5),
	datab => \C1|Add2~4_combout\,
	datad => VCC,
	cin => \C1|LessThan5~9_cout\,
	cout => \C1|LessThan5~11_cout\);

-- Location: LCCOMB_X36_Y24_N22
\C1|LessThan5~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan5~13_cout\ = CARRY((\C1|HPOS\(6) & (\C1|Add2~6_combout\ & !\C1|LessThan5~11_cout\)) # (!\C1|HPOS\(6) & ((\C1|Add2~6_combout\) # (!\C1|LessThan5~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(6),
	datab => \C1|Add2~6_combout\,
	datad => VCC,
	cin => \C1|LessThan5~11_cout\,
	cout => \C1|LessThan5~13_cout\);

-- Location: LCCOMB_X36_Y24_N24
\C1|LessThan5~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan5~15_cout\ = CARRY((\C1|Add2~8_combout\ & (\C1|HPOS\(7) & !\C1|LessThan5~13_cout\)) # (!\C1|Add2~8_combout\ & ((\C1|HPOS\(7)) # (!\C1|LessThan5~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~8_combout\,
	datab => \C1|HPOS\(7),
	datad => VCC,
	cin => \C1|LessThan5~13_cout\,
	cout => \C1|LessThan5~15_cout\);

-- Location: LCCOMB_X36_Y24_N26
\C1|LessThan5~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan5~17_cout\ = CARRY((\C1|Add2~10_combout\ & ((!\C1|LessThan5~15_cout\) # (!\C1|HPOS\(8)))) # (!\C1|Add2~10_combout\ & (!\C1|HPOS\(8) & !\C1|LessThan5~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add2~10_combout\,
	datab => \C1|HPOS\(8),
	datad => VCC,
	cin => \C1|LessThan5~15_cout\,
	cout => \C1|LessThan5~17_cout\);

-- Location: LCCOMB_X36_Y24_N28
\C1|LessThan5~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan5~19_cout\ = CARRY((\C1|HPOS\(9) & ((!\C1|LessThan5~17_cout\) # (!\C1|Add2~12_combout\))) # (!\C1|HPOS\(9) & (!\C1|Add2~12_combout\ & !\C1|LessThan5~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(9),
	datab => \C1|Add2~12_combout\,
	datad => VCC,
	cin => \C1|LessThan5~17_cout\,
	cout => \C1|LessThan5~19_cout\);

-- Location: LCCOMB_X36_Y24_N30
\C1|LessThan5~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan5~20_combout\ = (\C1|HPOS\(10) & (!\C1|LessThan5~19_cout\ & \C1|Add2~14_combout\)) # (!\C1|HPOS\(10) & ((\C1|Add2~14_combout\) # (!\C1|LessThan5~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(10),
	datad => \C1|Add2~14_combout\,
	cin => \C1|LessThan5~19_cout\,
	combout => \C1|LessThan5~20_combout\);

-- Location: LCCOMB_X35_Y24_N28
\C1|Add2~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add2~16_combout\ = !\C1|Add2~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \C1|Add2~15\,
	combout => \C1|Add2~16_combout\);

-- Location: LCCOMB_X34_Y24_N6
\C1|Add8~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add8~3_combout\ = (\C1|SQ_X2\(1) & ((\C1|Add6~2_combout\ & (\C1|Add8~2\ & VCC)) # (!\C1|Add6~2_combout\ & (!\C1|Add8~2\)))) # (!\C1|SQ_X2\(1) & ((\C1|Add6~2_combout\ & (!\C1|Add8~2\)) # (!\C1|Add6~2_combout\ & ((\C1|Add8~2\) # (GND)))))
-- \C1|Add8~4\ = CARRY((\C1|SQ_X2\(1) & (!\C1|Add6~2_combout\ & !\C1|Add8~2\)) # (!\C1|SQ_X2\(1) & ((!\C1|Add8~2\) # (!\C1|Add6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(1),
	datab => \C1|Add6~2_combout\,
	datad => VCC,
	cin => \C1|Add8~2\,
	combout => \C1|Add8~3_combout\,
	cout => \C1|Add8~4\);

-- Location: LCCOMB_X34_Y24_N16
\C1|Add8~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add8~13_combout\ = ((\C1|SQ_X2\(6) $ (\C1|Add6~2_combout\ $ (\C1|Add8~12\)))) # (GND)
-- \C1|Add8~14\ = CARRY((\C1|SQ_X2\(6) & (\C1|Add6~2_combout\ & !\C1|Add8~12\)) # (!\C1|SQ_X2\(6) & ((\C1|Add6~2_combout\) # (!\C1|Add8~12\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(6),
	datab => \C1|Add6~2_combout\,
	datad => VCC,
	cin => \C1|Add8~12\,
	combout => \C1|Add8~13_combout\,
	cout => \C1|Add8~14\);

-- Location: LCCOMB_X34_Y24_N18
\C1|Add8~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add8~15_combout\ = (\C1|SQ_X2\(7) & ((\C1|Add6~2_combout\ & (\C1|Add8~14\ & VCC)) # (!\C1|Add6~2_combout\ & (!\C1|Add8~14\)))) # (!\C1|SQ_X2\(7) & ((\C1|Add6~2_combout\ & (!\C1|Add8~14\)) # (!\C1|Add6~2_combout\ & ((\C1|Add8~14\) # (GND)))))
-- \C1|Add8~16\ = CARRY((\C1|SQ_X2\(7) & (!\C1|Add6~2_combout\ & !\C1|Add8~14\)) # (!\C1|SQ_X2\(7) & ((!\C1|Add8~14\) # (!\C1|Add6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(7),
	datab => \C1|Add6~2_combout\,
	datad => VCC,
	cin => \C1|Add8~14\,
	combout => \C1|Add8~15_combout\,
	cout => \C1|Add8~16\);

-- Location: LCCOMB_X34_Y24_N22
\C1|Add8~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add8~19_combout\ = (\C1|SQ_X2\(9) & ((\C1|Add6~2_combout\ & (!\C1|Add8~18\)) # (!\C1|Add6~2_combout\ & ((\C1|Add8~18\) # (GND))))) # (!\C1|SQ_X2\(9) & ((\C1|Add6~2_combout\ & (\C1|Add8~18\ & VCC)) # (!\C1|Add6~2_combout\ & (!\C1|Add8~18\))))
-- \C1|Add8~20\ = CARRY((\C1|SQ_X2\(9) & ((!\C1|Add8~18\) # (!\C1|Add6~2_combout\))) # (!\C1|SQ_X2\(9) & (!\C1|Add6~2_combout\ & !\C1|Add8~18\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(9),
	datab => \C1|Add6~2_combout\,
	datad => VCC,
	cin => \C1|Add8~18\,
	combout => \C1|Add8~19_combout\,
	cout => \C1|Add8~20\);

-- Location: LCCOMB_X34_Y24_N24
\C1|Add8~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add8~21_combout\ = \C1|SQ_X2\(10) $ (\C1|Add8~20\ $ (!\C1|Add6~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(10),
	datad => \C1|Add6~2_combout\,
	cin => \C1|Add8~20\,
	combout => \C1|Add8~21_combout\);

-- Location: LCFF_X24_Y26_N7
\C1|INST1|count_idle[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|INST1|count_idle[3]~19_combout\,
	sclr => \C1|INST1|debounce_ps2_clk|ALT_INV_result~regout\,
	ena => \C1|INST1|count_idle[8]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|INST1|count_idle\(3));

-- Location: LCFF_X24_Y26_N11
\C1|INST1|count_idle[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|INST1|count_idle[5]~23_combout\,
	sclr => \C1|INST1|debounce_ps2_clk|ALT_INV_result~regout\,
	ena => \C1|INST1|count_idle[8]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|INST1|count_idle\(5));

-- Location: LCFF_X24_Y26_N21
\C1|INST1|count_idle[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|INST1|count_idle[10]~33_combout\,
	sclr => \C1|INST1|debounce_ps2_clk|ALT_INV_result~regout\,
	ena => \C1|INST1|count_idle[8]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|INST1|count_idle\(10));

-- Location: LCCOMB_X24_Y26_N6
\C1|INST1|count_idle[3]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|INST1|count_idle[3]~19_combout\ = (\C1|INST1|count_idle\(3) & (!\C1|INST1|count_idle[2]~18\)) # (!\C1|INST1|count_idle\(3) & ((\C1|INST1|count_idle[2]~18\) # (GND)))
-- \C1|INST1|count_idle[3]~20\ = CARRY((!\C1|INST1|count_idle[2]~18\) # (!\C1|INST1|count_idle\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|INST1|count_idle\(3),
	datad => VCC,
	cin => \C1|INST1|count_idle[2]~18\,
	combout => \C1|INST1|count_idle[3]~19_combout\,
	cout => \C1|INST1|count_idle[3]~20\);

-- Location: LCCOMB_X24_Y26_N10
\C1|INST1|count_idle[5]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|INST1|count_idle[5]~23_combout\ = (\C1|INST1|count_idle\(5) & (!\C1|INST1|count_idle[4]~22\)) # (!\C1|INST1|count_idle\(5) & ((\C1|INST1|count_idle[4]~22\) # (GND)))
-- \C1|INST1|count_idle[5]~24\ = CARRY((!\C1|INST1|count_idle[4]~22\) # (!\C1|INST1|count_idle\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|INST1|count_idle\(5),
	datad => VCC,
	cin => \C1|INST1|count_idle[4]~22\,
	combout => \C1|INST1|count_idle[5]~23_combout\,
	cout => \C1|INST1|count_idle[5]~24\);

-- Location: LCCOMB_X24_Y26_N20
\C1|INST1|count_idle[10]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|INST1|count_idle[10]~33_combout\ = (\C1|INST1|count_idle\(10) & (\C1|INST1|count_idle[9]~32\ $ (GND))) # (!\C1|INST1|count_idle\(10) & (!\C1|INST1|count_idle[9]~32\ & VCC))
-- \C1|INST1|count_idle[10]~34\ = CARRY((\C1|INST1|count_idle\(10) & !\C1|INST1|count_idle[9]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|INST1|count_idle\(10),
	datad => VCC,
	cin => \C1|INST1|count_idle[9]~32\,
	combout => \C1|INST1|count_idle[10]~33_combout\,
	cout => \C1|INST1|count_idle[10]~34\);

-- Location: LCCOMB_X26_Y26_N0
\C1|INST1|debounce_ps2_clk|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|INST1|debounce_ps2_clk|Add0~0_combout\ = \C1|INST1|debounce_ps2_clk|counter_out\(0) $ (VCC)
-- \C1|INST1|debounce_ps2_clk|Add0~1\ = CARRY(\C1|INST1|debounce_ps2_clk|counter_out\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|INST1|debounce_ps2_clk|counter_out\(0),
	datad => VCC,
	combout => \C1|INST1|debounce_ps2_clk|Add0~0_combout\,
	cout => \C1|INST1|debounce_ps2_clk|Add0~1\);

-- Location: LCCOMB_X26_Y26_N2
\C1|INST1|debounce_ps2_clk|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|INST1|debounce_ps2_clk|Add0~2_combout\ = (\C1|INST1|debounce_ps2_clk|counter_out\(1) & (!\C1|INST1|debounce_ps2_clk|Add0~1\)) # (!\C1|INST1|debounce_ps2_clk|counter_out\(1) & ((\C1|INST1|debounce_ps2_clk|Add0~1\) # (GND)))
-- \C1|INST1|debounce_ps2_clk|Add0~3\ = CARRY((!\C1|INST1|debounce_ps2_clk|Add0~1\) # (!\C1|INST1|debounce_ps2_clk|counter_out\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|INST1|debounce_ps2_clk|counter_out\(1),
	datad => VCC,
	cin => \C1|INST1|debounce_ps2_clk|Add0~1\,
	combout => \C1|INST1|debounce_ps2_clk|Add0~2_combout\,
	cout => \C1|INST1|debounce_ps2_clk|Add0~3\);

-- Location: LCCOMB_X26_Y26_N4
\C1|INST1|debounce_ps2_clk|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|INST1|debounce_ps2_clk|Add0~4_combout\ = (\C1|INST1|debounce_ps2_clk|counter_out\(2) & (\C1|INST1|debounce_ps2_clk|Add0~3\ $ (GND))) # (!\C1|INST1|debounce_ps2_clk|counter_out\(2) & (!\C1|INST1|debounce_ps2_clk|Add0~3\ & VCC))
-- \C1|INST1|debounce_ps2_clk|Add0~5\ = CARRY((\C1|INST1|debounce_ps2_clk|counter_out\(2) & !\C1|INST1|debounce_ps2_clk|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|INST1|debounce_ps2_clk|counter_out\(2),
	datad => VCC,
	cin => \C1|INST1|debounce_ps2_clk|Add0~3\,
	combout => \C1|INST1|debounce_ps2_clk|Add0~4_combout\,
	cout => \C1|INST1|debounce_ps2_clk|Add0~5\);

-- Location: LCCOMB_X26_Y26_N6
\C1|INST1|debounce_ps2_clk|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|INST1|debounce_ps2_clk|Add0~6_combout\ = (\C1|INST1|debounce_ps2_clk|counter_out\(3) & (!\C1|INST1|debounce_ps2_clk|Add0~5\)) # (!\C1|INST1|debounce_ps2_clk|counter_out\(3) & ((\C1|INST1|debounce_ps2_clk|Add0~5\) # (GND)))
-- \C1|INST1|debounce_ps2_clk|Add0~7\ = CARRY((!\C1|INST1|debounce_ps2_clk|Add0~5\) # (!\C1|INST1|debounce_ps2_clk|counter_out\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|INST1|debounce_ps2_clk|counter_out\(3),
	datad => VCC,
	cin => \C1|INST1|debounce_ps2_clk|Add0~5\,
	combout => \C1|INST1|debounce_ps2_clk|Add0~6_combout\,
	cout => \C1|INST1|debounce_ps2_clk|Add0~7\);

-- Location: LCCOMB_X26_Y26_N8
\C1|INST1|debounce_ps2_clk|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|INST1|debounce_ps2_clk|Add0~8_combout\ = (\C1|INST1|debounce_ps2_clk|counter_out\(4) & (\C1|INST1|debounce_ps2_clk|Add0~7\ $ (GND))) # (!\C1|INST1|debounce_ps2_clk|counter_out\(4) & (!\C1|INST1|debounce_ps2_clk|Add0~7\ & VCC))
-- \C1|INST1|debounce_ps2_clk|Add0~9\ = CARRY((\C1|INST1|debounce_ps2_clk|counter_out\(4) & !\C1|INST1|debounce_ps2_clk|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|INST1|debounce_ps2_clk|counter_out\(4),
	datad => VCC,
	cin => \C1|INST1|debounce_ps2_clk|Add0~7\,
	combout => \C1|INST1|debounce_ps2_clk|Add0~8_combout\,
	cout => \C1|INST1|debounce_ps2_clk|Add0~9\);

-- Location: LCCOMB_X26_Y26_N10
\C1|INST1|debounce_ps2_clk|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|INST1|debounce_ps2_clk|Add0~10_combout\ = (\C1|INST1|debounce_ps2_clk|counter_out\(5) & (!\C1|INST1|debounce_ps2_clk|Add0~9\)) # (!\C1|INST1|debounce_ps2_clk|counter_out\(5) & ((\C1|INST1|debounce_ps2_clk|Add0~9\) # (GND)))
-- \C1|INST1|debounce_ps2_clk|Add0~11\ = CARRY((!\C1|INST1|debounce_ps2_clk|Add0~9\) # (!\C1|INST1|debounce_ps2_clk|counter_out\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|INST1|debounce_ps2_clk|counter_out\(5),
	datad => VCC,
	cin => \C1|INST1|debounce_ps2_clk|Add0~9\,
	combout => \C1|INST1|debounce_ps2_clk|Add0~10_combout\,
	cout => \C1|INST1|debounce_ps2_clk|Add0~11\);

-- Location: LCCOMB_X26_Y26_N12
\C1|INST1|debounce_ps2_clk|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|INST1|debounce_ps2_clk|Add0~12_combout\ = (\C1|INST1|debounce_ps2_clk|counter_out\(6) & (\C1|INST1|debounce_ps2_clk|Add0~11\ $ (GND))) # (!\C1|INST1|debounce_ps2_clk|counter_out\(6) & (!\C1|INST1|debounce_ps2_clk|Add0~11\ & VCC))
-- \C1|INST1|debounce_ps2_clk|Add0~13\ = CARRY((\C1|INST1|debounce_ps2_clk|counter_out\(6) & !\C1|INST1|debounce_ps2_clk|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|INST1|debounce_ps2_clk|counter_out\(6),
	datad => VCC,
	cin => \C1|INST1|debounce_ps2_clk|Add0~11\,
	combout => \C1|INST1|debounce_ps2_clk|Add0~12_combout\,
	cout => \C1|INST1|debounce_ps2_clk|Add0~13\);

-- Location: LCCOMB_X26_Y26_N14
\C1|INST1|debounce_ps2_clk|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|INST1|debounce_ps2_clk|Add0~14_combout\ = (\C1|INST1|debounce_ps2_clk|counter_out\(7) & (!\C1|INST1|debounce_ps2_clk|Add0~13\)) # (!\C1|INST1|debounce_ps2_clk|counter_out\(7) & ((\C1|INST1|debounce_ps2_clk|Add0~13\) # (GND)))
-- \C1|INST1|debounce_ps2_clk|Add0~15\ = CARRY((!\C1|INST1|debounce_ps2_clk|Add0~13\) # (!\C1|INST1|debounce_ps2_clk|counter_out\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|INST1|debounce_ps2_clk|counter_out\(7),
	datad => VCC,
	cin => \C1|INST1|debounce_ps2_clk|Add0~13\,
	combout => \C1|INST1|debounce_ps2_clk|Add0~14_combout\,
	cout => \C1|INST1|debounce_ps2_clk|Add0~15\);

-- Location: LCCOMB_X26_Y26_N16
\C1|INST1|debounce_ps2_clk|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|INST1|debounce_ps2_clk|Add0~16_combout\ = \C1|INST1|debounce_ps2_clk|Add0~15\ $ (!\C1|INST1|debounce_ps2_clk|counter_out\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \C1|INST1|debounce_ps2_clk|counter_out\(8),
	cin => \C1|INST1|debounce_ps2_clk|Add0~15\,
	combout => \C1|INST1|debounce_ps2_clk|Add0~16_combout\);

-- Location: LCCOMB_X39_Y23_N4
\C1|INST1|debounce_ps2_data|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|INST1|debounce_ps2_data|Add0~2_combout\ = (\C1|INST1|debounce_ps2_data|counter_out\(1) & (!\C1|INST1|debounce_ps2_data|Add0~1\)) # (!\C1|INST1|debounce_ps2_data|counter_out\(1) & ((\C1|INST1|debounce_ps2_data|Add0~1\) # (GND)))
-- \C1|INST1|debounce_ps2_data|Add0~3\ = CARRY((!\C1|INST1|debounce_ps2_data|Add0~1\) # (!\C1|INST1|debounce_ps2_data|counter_out\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|INST1|debounce_ps2_data|counter_out\(1),
	datad => VCC,
	cin => \C1|INST1|debounce_ps2_data|Add0~1\,
	combout => \C1|INST1|debounce_ps2_data|Add0~2_combout\,
	cout => \C1|INST1|debounce_ps2_data|Add0~3\);

-- Location: LCCOMB_X39_Y23_N8
\C1|INST1|debounce_ps2_data|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|INST1|debounce_ps2_data|Add0~6_combout\ = (\C1|INST1|debounce_ps2_data|counter_out\(3) & (!\C1|INST1|debounce_ps2_data|Add0~5\)) # (!\C1|INST1|debounce_ps2_data|counter_out\(3) & ((\C1|INST1|debounce_ps2_data|Add0~5\) # (GND)))
-- \C1|INST1|debounce_ps2_data|Add0~7\ = CARRY((!\C1|INST1|debounce_ps2_data|Add0~5\) # (!\C1|INST1|debounce_ps2_data|counter_out\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|INST1|debounce_ps2_data|counter_out\(3),
	datad => VCC,
	cin => \C1|INST1|debounce_ps2_data|Add0~5\,
	combout => \C1|INST1|debounce_ps2_data|Add0~6_combout\,
	cout => \C1|INST1|debounce_ps2_data|Add0~7\);

-- Location: LCCOMB_X39_Y23_N16
\C1|INST1|debounce_ps2_data|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|INST1|debounce_ps2_data|Add0~14_combout\ = (\C1|INST1|debounce_ps2_data|counter_out\(7) & (!\C1|INST1|debounce_ps2_data|Add0~13\)) # (!\C1|INST1|debounce_ps2_data|counter_out\(7) & ((\C1|INST1|debounce_ps2_data|Add0~13\) # (GND)))
-- \C1|INST1|debounce_ps2_data|Add0~15\ = CARRY((!\C1|INST1|debounce_ps2_data|Add0~13\) # (!\C1|INST1|debounce_ps2_data|counter_out\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|INST1|debounce_ps2_data|counter_out\(7),
	datad => VCC,
	cin => \C1|INST1|debounce_ps2_data|Add0~13\,
	combout => \C1|INST1|debounce_ps2_data|Add0~14_combout\,
	cout => \C1|INST1|debounce_ps2_data|Add0~15\);

-- Location: LCCOMB_X36_Y24_N6
\C1|process_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|process_0~0_combout\ = (\C1|HPOS\(10)) # ((\C1|HPOS\(9)) # (\C1|HPOS\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(10),
	datac => \C1|HPOS\(9),
	datad => \C1|HPOS\(8),
	combout => \C1|process_0~0_combout\);

-- Location: LCCOMB_X31_Y23_N10
\C1|process_0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|process_0~4_combout\ = (\C1|VPOS\(10)) # ((!\C1|VPOS\(1) & !\C1|VPOS\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(1),
	datac => \C1|VPOS\(0),
	datad => \C1|VPOS\(10),
	combout => \C1|process_0~4_combout\);

-- Location: LCCOMB_X31_Y23_N6
\C1|LessThan13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan13~0_combout\ = (!\C1|VPOS\(4) & (((!\C1|VPOS\(2) & !\C1|VPOS\(1))) # (!\C1|VPOS\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(4),
	datab => \C1|VPOS\(2),
	datac => \C1|VPOS\(1),
	datad => \C1|VPOS\(3),
	combout => \C1|LessThan13~0_combout\);

-- Location: LCCOMB_X31_Y23_N8
\C1|process_0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|process_0~10_combout\ = ((\C1|VPOS\(10)) # ((!\C1|LessThan13~0_combout\ & \C1|VPOS\(5)))) # (!\C1|process_0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan13~0_combout\,
	datab => \C1|VPOS\(5),
	datac => \C1|process_0~5_combout\,
	datad => \C1|VPOS\(10),
	combout => \C1|process_0~10_combout\);

-- Location: LCCOMB_X31_Y23_N12
\C1|DRAW2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAW2~2_combout\ = (\C1|VPOS\(3) & \C1|VPOS\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(3),
	datac => \C1|VPOS\(4),
	combout => \C1|DRAW2~2_combout\);

-- Location: LCCOMB_X32_Y23_N30
\C1|DRAW1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAW1~0_combout\ = (\C1|VPOS\(3)) # ((\C1|VPOS\(2) & ((\C1|VPOS\(1)) # (\C1|VPOS\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(3),
	datab => \C1|VPOS\(1),
	datac => \C1|VPOS\(0),
	datad => \C1|VPOS\(2),
	combout => \C1|DRAW1~0_combout\);

-- Location: LCCOMB_X31_Y23_N18
\C1|DRAW1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAW1~1_combout\ = (\C1|VPOS\(5) & (((\C1|VPOS\(9)) # (\C1|DRAW1~0_combout\)))) # (!\C1|VPOS\(5) & (\C1|DRAW2~2_combout\ & (\C1|VPOS\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAW2~2_combout\,
	datab => \C1|VPOS\(5),
	datac => \C1|VPOS\(9),
	datad => \C1|DRAW1~0_combout\,
	combout => \C1|DRAW1~1_combout\);

-- Location: LCCOMB_X32_Y23_N4
\C1|DRAW1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAW1~2_combout\ = (\C1|VPOS\(9) & ((\C1|VPOS\(8)) # (\C1|VPOS\(7)))) # (!\C1|VPOS\(9) & (\C1|VPOS\(8) & \C1|VPOS\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(9),
	datac => \C1|VPOS\(8),
	datad => \C1|VPOS\(7),
	combout => \C1|DRAW1~2_combout\);

-- Location: LCCOMB_X32_Y23_N2
\C1|DRAW1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAW1~3_combout\ = (!\C1|VPOS\(10) & ((\C1|VPOS\(9) & (!\C1|DRAW1~2_combout\)) # (!\C1|VPOS\(9) & (\C1|DRAW1~2_combout\ & \C1|VPOS\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(9),
	datab => \C1|DRAW1~2_combout\,
	datac => \C1|VPOS\(4),
	datad => \C1|VPOS\(10),
	combout => \C1|DRAW1~3_combout\);

-- Location: LCCOMB_X32_Y23_N6
\C1|DRAW1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAW1~4_combout\ = (\C1|DRAW1~3_combout\ & (\C1|DRAW1~2_combout\ $ (((!\C1|DRAW1~1_combout\) # (!\C1|VPOS\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(6),
	datab => \C1|DRAW1~3_combout\,
	datac => \C1|DRAW1~2_combout\,
	datad => \C1|DRAW1~1_combout\,
	combout => \C1|DRAW1~4_combout\);

-- Location: LCFF_X34_Y24_N25
\C1|SQ_X2[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|Add8~21_combout\,
	ena => \C1|SQ_X2[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_X2\(10));

-- Location: LCFF_X34_Y24_N19
\C1|SQ_X2[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|Add8~15_combout\,
	ena => \C1|SQ_X2[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_X2\(7));

-- Location: LCFF_X34_Y24_N27
\C1|SQ_X2[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ_X2[6]~4_combout\,
	ena => \C1|SQ_X2[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_X2\(6));

-- Location: LCFF_X34_Y24_N7
\C1|SQ_X2[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|Add8~3_combout\,
	ena => \C1|SQ_X2[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_X2\(1));

-- Location: LCCOMB_X35_Y24_N10
\C1|DRAW2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAW2~3_combout\ = (\C1|VPOS\(9) & (!\C1|VPOS\(10) & ((\C1|Add2~16_combout\) # (\C1|LessThan5~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(9),
	datab => \C1|Add2~16_combout\,
	datac => \C1|VPOS\(10),
	datad => \C1|LessThan5~20_combout\,
	combout => \C1|DRAW2~3_combout\);

-- Location: LCCOMB_X31_Y23_N24
\C1|DRAW2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAW2~4_combout\ = (((!\C1|VPOS\(5)) # (!\C1|VPOS\(2))) # (!\C1|VPOS\(3))) # (!\C1|VPOS\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(4),
	datab => \C1|VPOS\(3),
	datac => \C1|VPOS\(2),
	datad => \C1|VPOS\(5),
	combout => \C1|DRAW2~4_combout\);

-- Location: LCCOMB_X34_Y23_N8
\C1|Add6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add6~4_combout\ = (\C1|Add6~3_combout\ & !\C1|INST1|ps2_code\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add6~3_combout\,
	datad => \C1|INST1|ps2_code\(4),
	combout => \C1|Add6~4_combout\);

-- Location: LCFF_X33_Y23_N15
\C1|INST1|ps2_code_new\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|INST1|process_2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|INST1|ps2_code_new~regout\);

-- Location: LCFF_X25_Y26_N25
\C1|INST1|debounce_ps2_clk|counter_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|INST1|debounce_ps2_clk|counter_out[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|INST1|debounce_ps2_clk|counter_out\(7));

-- Location: LCFF_X26_Y26_N31
\C1|INST1|debounce_ps2_clk|counter_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|INST1|debounce_ps2_clk|counter_out[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|INST1|debounce_ps2_clk|counter_out\(6));

-- Location: LCFF_X26_Y26_N29
\C1|INST1|debounce_ps2_clk|counter_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|INST1|debounce_ps2_clk|counter_out[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|INST1|debounce_ps2_clk|counter_out\(5));

-- Location: LCFF_X26_Y26_N23
\C1|INST1|debounce_ps2_clk|counter_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|INST1|debounce_ps2_clk|counter_out[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|INST1|debounce_ps2_clk|counter_out\(4));

-- Location: LCFF_X26_Y26_N21
\C1|INST1|debounce_ps2_clk|counter_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|INST1|debounce_ps2_clk|counter_out[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|INST1|debounce_ps2_clk|counter_out\(3));

-- Location: LCFF_X26_Y26_N19
\C1|INST1|debounce_ps2_clk|counter_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|INST1|debounce_ps2_clk|counter_out[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|INST1|debounce_ps2_clk|counter_out\(2));

-- Location: LCFF_X26_Y26_N25
\C1|INST1|debounce_ps2_clk|counter_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|INST1|debounce_ps2_clk|counter_out[1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|INST1|debounce_ps2_clk|counter_out\(1));

-- Location: LCFF_X26_Y26_N27
\C1|INST1|debounce_ps2_clk|counter_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|INST1|debounce_ps2_clk|counter_out[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|INST1|debounce_ps2_clk|counter_out\(0));

-- Location: LCFF_X39_Y23_N21
\C1|INST1|debounce_ps2_data|counter_out[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|INST1|debounce_ps2_data|counter_out[3]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|INST1|debounce_ps2_data|counter_out\(3));

-- Location: LCFF_X39_Y23_N25
\C1|INST1|debounce_ps2_data|counter_out[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|INST1|debounce_ps2_data|counter_out[1]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|INST1|debounce_ps2_data|counter_out\(1));

-- Location: LCCOMB_X25_Y26_N14
\C1|INST1|debounce_ps2_clk|result~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|INST1|debounce_ps2_clk|result~1_combout\ = (\C1|INST1|debounce_ps2_clk|counter_out\(8) & (\C1|INST1|debounce_ps2_clk|flipflops\(0) $ (!\C1|INST1|debounce_ps2_clk|flipflops\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|INST1|debounce_ps2_clk|counter_out\(8),
	datac => \C1|INST1|debounce_ps2_clk|flipflops\(0),
	datad => \C1|INST1|debounce_ps2_clk|flipflops\(1),
	combout => \C1|INST1|debounce_ps2_clk|result~1_combout\);

-- Location: LCCOMB_X25_Y26_N16
\C1|INST1|debounce_ps2_clk|counter_out[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|INST1|debounce_ps2_clk|counter_out[0]~1_combout\ = (!\C1|INST1|debounce_ps2_clk|counter_out\(8) & (\C1|INST1|debounce_ps2_clk|flipflops\(0) $ (!\C1|INST1|debounce_ps2_clk|flipflops\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|INST1|debounce_ps2_clk|counter_out\(8),
	datac => \C1|INST1|debounce_ps2_clk|flipflops\(0),
	datad => \C1|INST1|debounce_ps2_clk|flipflops\(1),
	combout => \C1|INST1|debounce_ps2_clk|counter_out[0]~1_combout\);

-- Location: LCCOMB_X25_Y26_N24
\C1|INST1|debounce_ps2_clk|counter_out[7]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|INST1|debounce_ps2_clk|counter_out[7]~2_combout\ = (\C1|INST1|debounce_ps2_clk|counter_out[0]~1_combout\ & ((\C1|INST1|debounce_ps2_clk|Add0~14_combout\) # ((\C1|INST1|debounce_ps2_clk|result~1_combout\ & \C1|INST1|debounce_ps2_clk|counter_out\(7))))) 
-- # (!\C1|INST1|debounce_ps2_clk|counter_out[0]~1_combout\ & (\C1|INST1|debounce_ps2_clk|result~1_combout\ & (\C1|INST1|debounce_ps2_clk|counter_out\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|INST1|debounce_ps2_clk|counter_out[0]~1_combout\,
	datab => \C1|INST1|debounce_ps2_clk|result~1_combout\,
	datac => \C1|INST1|debounce_ps2_clk|counter_out\(7),
	datad => \C1|INST1|debounce_ps2_clk|Add0~14_combout\,
	combout => \C1|INST1|debounce_ps2_clk|counter_out[7]~2_combout\);

-- Location: LCCOMB_X26_Y26_N30
\C1|INST1|debounce_ps2_clk|counter_out[6]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|INST1|debounce_ps2_clk|counter_out[6]~3_combout\ = (\C1|INST1|debounce_ps2_clk|result~1_combout\ & ((\C1|INST1|debounce_ps2_clk|counter_out\(6)) # ((\C1|INST1|debounce_ps2_clk|counter_out[0]~1_combout\ & \C1|INST1|debounce_ps2_clk|Add0~12_combout\)))) 
-- # (!\C1|INST1|debounce_ps2_clk|result~1_combout\ & (\C1|INST1|debounce_ps2_clk|counter_out[0]~1_combout\ & ((\C1|INST1|debounce_ps2_clk|Add0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|INST1|debounce_ps2_clk|result~1_combout\,
	datab => \C1|INST1|debounce_ps2_clk|counter_out[0]~1_combout\,
	datac => \C1|INST1|debounce_ps2_clk|counter_out\(6),
	datad => \C1|INST1|debounce_ps2_clk|Add0~12_combout\,
	combout => \C1|INST1|debounce_ps2_clk|counter_out[6]~3_combout\);

-- Location: LCCOMB_X26_Y26_N28
\C1|INST1|debounce_ps2_clk|counter_out[5]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|INST1|debounce_ps2_clk|counter_out[5]~4_combout\ = (\C1|INST1|debounce_ps2_clk|result~1_combout\ & ((\C1|INST1|debounce_ps2_clk|counter_out\(5)) # ((\C1|INST1|debounce_ps2_clk|counter_out[0]~1_combout\ & \C1|INST1|debounce_ps2_clk|Add0~10_combout\)))) 
-- # (!\C1|INST1|debounce_ps2_clk|result~1_combout\ & (\C1|INST1|debounce_ps2_clk|counter_out[0]~1_combout\ & ((\C1|INST1|debounce_ps2_clk|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|INST1|debounce_ps2_clk|result~1_combout\,
	datab => \C1|INST1|debounce_ps2_clk|counter_out[0]~1_combout\,
	datac => \C1|INST1|debounce_ps2_clk|counter_out\(5),
	datad => \C1|INST1|debounce_ps2_clk|Add0~10_combout\,
	combout => \C1|INST1|debounce_ps2_clk|counter_out[5]~4_combout\);

-- Location: LCCOMB_X26_Y26_N22
\C1|INST1|debounce_ps2_clk|counter_out[4]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|INST1|debounce_ps2_clk|counter_out[4]~5_combout\ = (\C1|INST1|debounce_ps2_clk|result~1_combout\ & ((\C1|INST1|debounce_ps2_clk|counter_out\(4)) # ((\C1|INST1|debounce_ps2_clk|Add0~8_combout\ & \C1|INST1|debounce_ps2_clk|counter_out[0]~1_combout\)))) 
-- # (!\C1|INST1|debounce_ps2_clk|result~1_combout\ & (\C1|INST1|debounce_ps2_clk|Add0~8_combout\ & ((\C1|INST1|debounce_ps2_clk|counter_out[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|INST1|debounce_ps2_clk|result~1_combout\,
	datab => \C1|INST1|debounce_ps2_clk|Add0~8_combout\,
	datac => \C1|INST1|debounce_ps2_clk|counter_out\(4),
	datad => \C1|INST1|debounce_ps2_clk|counter_out[0]~1_combout\,
	combout => \C1|INST1|debounce_ps2_clk|counter_out[4]~5_combout\);

-- Location: LCCOMB_X26_Y26_N20
\C1|INST1|debounce_ps2_clk|counter_out[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|INST1|debounce_ps2_clk|counter_out[3]~6_combout\ = (\C1|INST1|debounce_ps2_clk|result~1_combout\ & ((\C1|INST1|debounce_ps2_clk|counter_out\(3)) # ((\C1|INST1|debounce_ps2_clk|counter_out[0]~1_combout\ & \C1|INST1|debounce_ps2_clk|Add0~6_combout\)))) 
-- # (!\C1|INST1|debounce_ps2_clk|result~1_combout\ & (\C1|INST1|debounce_ps2_clk|counter_out[0]~1_combout\ & ((\C1|INST1|debounce_ps2_clk|Add0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|INST1|debounce_ps2_clk|result~1_combout\,
	datab => \C1|INST1|debounce_ps2_clk|counter_out[0]~1_combout\,
	datac => \C1|INST1|debounce_ps2_clk|counter_out\(3),
	datad => \C1|INST1|debounce_ps2_clk|Add0~6_combout\,
	combout => \C1|INST1|debounce_ps2_clk|counter_out[3]~6_combout\);

-- Location: LCCOMB_X26_Y26_N18
\C1|INST1|debounce_ps2_clk|counter_out[2]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|INST1|debounce_ps2_clk|counter_out[2]~7_combout\ = (\C1|INST1|debounce_ps2_clk|result~1_combout\ & ((\C1|INST1|debounce_ps2_clk|counter_out\(2)) # ((\C1|INST1|debounce_ps2_clk|Add0~4_combout\ & \C1|INST1|debounce_ps2_clk|counter_out[0]~1_combout\)))) 
-- # (!\C1|INST1|debounce_ps2_clk|result~1_combout\ & (\C1|INST1|debounce_ps2_clk|Add0~4_combout\ & ((\C1|INST1|debounce_ps2_clk|counter_out[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|INST1|debounce_ps2_clk|result~1_combout\,
	datab => \C1|INST1|debounce_ps2_clk|Add0~4_combout\,
	datac => \C1|INST1|debounce_ps2_clk|counter_out\(2),
	datad => \C1|INST1|debounce_ps2_clk|counter_out[0]~1_combout\,
	combout => \C1|INST1|debounce_ps2_clk|counter_out[2]~7_combout\);

-- Location: LCCOMB_X26_Y26_N24
\C1|INST1|debounce_ps2_clk|counter_out[1]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|INST1|debounce_ps2_clk|counter_out[1]~8_combout\ = (\C1|INST1|debounce_ps2_clk|result~1_combout\ & ((\C1|INST1|debounce_ps2_clk|counter_out\(1)) # ((\C1|INST1|debounce_ps2_clk|counter_out[0]~1_combout\ & \C1|INST1|debounce_ps2_clk|Add0~2_combout\)))) 
-- # (!\C1|INST1|debounce_ps2_clk|result~1_combout\ & (\C1|INST1|debounce_ps2_clk|counter_out[0]~1_combout\ & ((\C1|INST1|debounce_ps2_clk|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|INST1|debounce_ps2_clk|result~1_combout\,
	datab => \C1|INST1|debounce_ps2_clk|counter_out[0]~1_combout\,
	datac => \C1|INST1|debounce_ps2_clk|counter_out\(1),
	datad => \C1|INST1|debounce_ps2_clk|Add0~2_combout\,
	combout => \C1|INST1|debounce_ps2_clk|counter_out[1]~8_combout\);

-- Location: LCCOMB_X26_Y26_N26
\C1|INST1|debounce_ps2_clk|counter_out[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|INST1|debounce_ps2_clk|counter_out[0]~9_combout\ = (\C1|INST1|debounce_ps2_clk|result~1_combout\ & ((\C1|INST1|debounce_ps2_clk|counter_out\(0)) # ((\C1|INST1|debounce_ps2_clk|counter_out[0]~1_combout\ & \C1|INST1|debounce_ps2_clk|Add0~0_combout\)))) 
-- # (!\C1|INST1|debounce_ps2_clk|result~1_combout\ & (\C1|INST1|debounce_ps2_clk|counter_out[0]~1_combout\ & ((\C1|INST1|debounce_ps2_clk|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|INST1|debounce_ps2_clk|result~1_combout\,
	datab => \C1|INST1|debounce_ps2_clk|counter_out[0]~1_combout\,
	datac => \C1|INST1|debounce_ps2_clk|counter_out\(0),
	datad => \C1|INST1|debounce_ps2_clk|Add0~0_combout\,
	combout => \C1|INST1|debounce_ps2_clk|counter_out[0]~9_combout\);

-- Location: LCCOMB_X39_Y23_N20
\C1|INST1|debounce_ps2_data|counter_out[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|INST1|debounce_ps2_data|counter_out[3]~6_combout\ = (\C1|INST1|debounce_ps2_data|result~1_combout\ & ((\C1|INST1|debounce_ps2_data|counter_out\(3)) # ((\C1|INST1|debounce_ps2_data|Add0~6_combout\ & 
-- \C1|INST1|debounce_ps2_data|counter_out[0]~1_combout\)))) # (!\C1|INST1|debounce_ps2_data|result~1_combout\ & (\C1|INST1|debounce_ps2_data|Add0~6_combout\ & ((\C1|INST1|debounce_ps2_data|counter_out[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|INST1|debounce_ps2_data|result~1_combout\,
	datab => \C1|INST1|debounce_ps2_data|Add0~6_combout\,
	datac => \C1|INST1|debounce_ps2_data|counter_out\(3),
	datad => \C1|INST1|debounce_ps2_data|counter_out[0]~1_combout\,
	combout => \C1|INST1|debounce_ps2_data|counter_out[3]~6_combout\);

-- Location: LCCOMB_X39_Y23_N24
\C1|INST1|debounce_ps2_data|counter_out[1]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|INST1|debounce_ps2_data|counter_out[1]~8_combout\ = (\C1|INST1|debounce_ps2_data|result~1_combout\ & ((\C1|INST1|debounce_ps2_data|counter_out\(1)) # ((\C1|INST1|debounce_ps2_data|Add0~2_combout\ & 
-- \C1|INST1|debounce_ps2_data|counter_out[0]~1_combout\)))) # (!\C1|INST1|debounce_ps2_data|result~1_combout\ & (\C1|INST1|debounce_ps2_data|Add0~2_combout\ & ((\C1|INST1|debounce_ps2_data|counter_out[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|INST1|debounce_ps2_data|result~1_combout\,
	datab => \C1|INST1|debounce_ps2_data|Add0~2_combout\,
	datac => \C1|INST1|debounce_ps2_data|counter_out\(1),
	datad => \C1|INST1|debounce_ps2_data|counter_out[0]~1_combout\,
	combout => \C1|INST1|debounce_ps2_data|counter_out[1]~8_combout\);

-- Location: LCCOMB_X34_Y24_N26
\C1|SQ_X2[6]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X2[6]~4_combout\ = !\C1|Add8~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add8~13_combout\,
	combout => \C1|SQ_X2[6]~4_combout\);

-- Location: CLKCTRL_G9
\C1|INST1|debounce_ps2_clk|result~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \C1|INST1|debounce_ps2_clk|result~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \C1|INST1|debounce_ps2_clk|result~clkctrl_outclk\);

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLOCK_24[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CLOCK_24(0),
	combout => \CLOCK_24~combout\(0));

-- Location: PLL_3
\C|altpll_0|sd1|pll\ : cycloneii_pll
-- pragma translate_off
GENERIC MAP (
	bandwidth => 0,
	bandwidth_type => "low",
	c0_high => 3,
	c0_initial => 1,
	c0_low => 3,
	c0_mode => "even",
	c0_ph => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	charge_pump_current => 80,
	clk0_counter => "c0",
	clk0_divide_by => 2,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 9,
	clk0_phase_shift => "0",
	clk1_duty_cycle => 50,
	clk1_phase_shift => "0",
	clk2_duty_cycle => 50,
	clk2_phase_shift => "0",
	compensate_clock => "clk0",
	gate_lock_counter => 0,
	gate_lock_signal => "no",
	inclk0_input_frequency => 41666,
	inclk1_input_frequency => 41666,
	invalid_lock_multiplier => 5,
	loop_filter_c => 3,
	loop_filter_r => " 2.500000",
	m => 27,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 100000,
	pfd_min => 2484,
	pll_compensation_delay => 4185,
	self_reset_on_gated_loss_lock => "off",
	sim_gate_lock_device_behavior => "off",
	simulation_type => "timing",
	valid_lock_multiplier => 1,
	vco_center => 1333,
	vco_max => 2000,
	vco_min => 1000)
-- pragma translate_on
PORT MAP (
	areset => GND,
	inclk => \C|altpll_0|sd1|pll_INCLK_bus\,
	clk => \C|altpll_0|sd1|pll_CLK_bus\);

-- Location: CLKCTRL_G11
\C|altpll_0|sd1|_clk0~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \C|altpll_0|sd1|_clk0~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\);

-- Location: LCCOMB_X37_Y24_N4
\C1|HPOS[0]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|HPOS[0]~11_combout\ = \C1|HPOS\(0) $ (VCC)
-- \C1|HPOS[0]~12\ = CARRY(\C1|HPOS\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(0),
	datad => VCC,
	combout => \C1|HPOS[0]~11_combout\,
	cout => \C1|HPOS[0]~12\);

-- Location: LCCOMB_X37_Y24_N6
\C1|HPOS[1]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|HPOS[1]~13_combout\ = (\C1|HPOS\(1) & (!\C1|HPOS[0]~12\)) # (!\C1|HPOS\(1) & ((\C1|HPOS[0]~12\) # (GND)))
-- \C1|HPOS[1]~14\ = CARRY((!\C1|HPOS[0]~12\) # (!\C1|HPOS\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(1),
	datad => VCC,
	cin => \C1|HPOS[0]~12\,
	combout => \C1|HPOS[1]~13_combout\,
	cout => \C1|HPOS[1]~14\);

-- Location: LCCOMB_X37_Y24_N8
\C1|HPOS[2]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|HPOS[2]~15_combout\ = (\C1|HPOS\(2) & (\C1|HPOS[1]~14\ $ (GND))) # (!\C1|HPOS\(2) & (!\C1|HPOS[1]~14\ & VCC))
-- \C1|HPOS[2]~16\ = CARRY((\C1|HPOS\(2) & !\C1|HPOS[1]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(2),
	datad => VCC,
	cin => \C1|HPOS[1]~14\,
	combout => \C1|HPOS[2]~15_combout\,
	cout => \C1|HPOS[2]~16\);

-- Location: LCCOMB_X37_Y24_N10
\C1|HPOS[3]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|HPOS[3]~17_combout\ = (\C1|HPOS\(3) & (!\C1|HPOS[2]~16\)) # (!\C1|HPOS\(3) & ((\C1|HPOS[2]~16\) # (GND)))
-- \C1|HPOS[3]~18\ = CARRY((!\C1|HPOS[2]~16\) # (!\C1|HPOS\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(3),
	datad => VCC,
	cin => \C1|HPOS[2]~16\,
	combout => \C1|HPOS[3]~17_combout\,
	cout => \C1|HPOS[3]~18\);

-- Location: LCFF_X37_Y24_N11
\C1|HPOS[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|HPOS[3]~17_combout\,
	sclr => \C1|LessThan8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|HPOS\(3));

-- Location: LCCOMB_X37_Y24_N12
\C1|HPOS[4]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|HPOS[4]~19_combout\ = (\C1|HPOS\(4) & (\C1|HPOS[3]~18\ $ (GND))) # (!\C1|HPOS\(4) & (!\C1|HPOS[3]~18\ & VCC))
-- \C1|HPOS[4]~20\ = CARRY((\C1|HPOS\(4) & !\C1|HPOS[3]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(4),
	datad => VCC,
	cin => \C1|HPOS[3]~18\,
	combout => \C1|HPOS[4]~19_combout\,
	cout => \C1|HPOS[4]~20\);

-- Location: LCCOMB_X37_Y24_N14
\C1|HPOS[5]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|HPOS[5]~21_combout\ = (\C1|HPOS\(5) & (!\C1|HPOS[4]~20\)) # (!\C1|HPOS\(5) & ((\C1|HPOS[4]~20\) # (GND)))
-- \C1|HPOS[5]~22\ = CARRY((!\C1|HPOS[4]~20\) # (!\C1|HPOS\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(5),
	datad => VCC,
	cin => \C1|HPOS[4]~20\,
	combout => \C1|HPOS[5]~21_combout\,
	cout => \C1|HPOS[5]~22\);

-- Location: LCFF_X37_Y24_N15
\C1|HPOS[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|HPOS[5]~21_combout\,
	sclr => \C1|LessThan8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|HPOS\(5));

-- Location: LCCOMB_X37_Y24_N16
\C1|HPOS[6]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|HPOS[6]~23_combout\ = (\C1|HPOS\(6) & (\C1|HPOS[5]~22\ $ (GND))) # (!\C1|HPOS\(6) & (!\C1|HPOS[5]~22\ & VCC))
-- \C1|HPOS[6]~24\ = CARRY((\C1|HPOS\(6) & !\C1|HPOS[5]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(6),
	datad => VCC,
	cin => \C1|HPOS[5]~22\,
	combout => \C1|HPOS[6]~23_combout\,
	cout => \C1|HPOS[6]~24\);

-- Location: LCCOMB_X37_Y24_N18
\C1|HPOS[7]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|HPOS[7]~25_combout\ = (\C1|HPOS\(7) & (!\C1|HPOS[6]~24\)) # (!\C1|HPOS\(7) & ((\C1|HPOS[6]~24\) # (GND)))
-- \C1|HPOS[7]~26\ = CARRY((!\C1|HPOS[6]~24\) # (!\C1|HPOS\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(7),
	datad => VCC,
	cin => \C1|HPOS[6]~24\,
	combout => \C1|HPOS[7]~25_combout\,
	cout => \C1|HPOS[7]~26\);

-- Location: LCFF_X37_Y24_N19
\C1|HPOS[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|HPOS[7]~25_combout\,
	sclr => \C1|LessThan8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|HPOS\(7));

-- Location: LCCOMB_X37_Y24_N20
\C1|HPOS[8]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|HPOS[8]~27_combout\ = (\C1|HPOS\(8) & (\C1|HPOS[7]~26\ $ (GND))) # (!\C1|HPOS\(8) & (!\C1|HPOS[7]~26\ & VCC))
-- \C1|HPOS[8]~28\ = CARRY((\C1|HPOS\(8) & !\C1|HPOS[7]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(8),
	datad => VCC,
	cin => \C1|HPOS[7]~26\,
	combout => \C1|HPOS[8]~27_combout\,
	cout => \C1|HPOS[8]~28\);

-- Location: LCCOMB_X37_Y24_N22
\C1|HPOS[9]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|HPOS[9]~29_combout\ = (\C1|HPOS\(9) & (!\C1|HPOS[8]~28\)) # (!\C1|HPOS\(9) & ((\C1|HPOS[8]~28\) # (GND)))
-- \C1|HPOS[9]~30\ = CARRY((!\C1|HPOS[8]~28\) # (!\C1|HPOS\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(9),
	datad => VCC,
	cin => \C1|HPOS[8]~28\,
	combout => \C1|HPOS[9]~29_combout\,
	cout => \C1|HPOS[9]~30\);

-- Location: LCFF_X37_Y24_N23
\C1|HPOS[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|HPOS[9]~29_combout\,
	sclr => \C1|LessThan8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|HPOS\(9));

-- Location: LCCOMB_X37_Y24_N24
\C1|HPOS[10]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|HPOS[10]~31_combout\ = \C1|HPOS\(10) $ (!\C1|HPOS[9]~30\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(10),
	cin => \C1|HPOS[9]~30\,
	combout => \C1|HPOS[10]~31_combout\);

-- Location: LCFF_X37_Y24_N25
\C1|HPOS[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|HPOS[10]~31_combout\,
	sclr => \C1|LessThan8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|HPOS\(10));

-- Location: LCCOMB_X37_Y23_N28
\C1|LessThan8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan8~0_combout\ = (!\C1|HPOS\(10)) # (!\C1|HPOS\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|HPOS\(9),
	datad => \C1|HPOS\(10),
	combout => \C1|LessThan8~0_combout\);

-- Location: LCFF_X37_Y24_N13
\C1|HPOS[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|HPOS[4]~19_combout\,
	sclr => \C1|LessThan8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|HPOS\(4));

-- Location: LCCOMB_X36_Y24_N4
\C1|LessThan11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan11~0_combout\ = (!\C1|HPOS\(6) & (!\C1|HPOS\(5) & ((!\C1|HPOS\(3)) # (!\C1|HPOS\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(6),
	datab => \C1|HPOS\(4),
	datac => \C1|HPOS\(3),
	datad => \C1|HPOS\(5),
	combout => \C1|LessThan11~0_combout\);

-- Location: LCCOMB_X37_Y23_N26
\C1|LessThan8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan8~1_combout\ = (!\C1|LessThan8~0_combout\ & ((\C1|HPOS\(8)) # ((\C1|HPOS\(7) & !\C1|LessThan11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(8),
	datab => \C1|LessThan8~0_combout\,
	datac => \C1|HPOS\(7),
	datad => \C1|LessThan11~0_combout\,
	combout => \C1|LessThan8~1_combout\);

-- Location: LCFF_X37_Y24_N5
\C1|HPOS[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|HPOS[0]~11_combout\,
	sclr => \C1|LessThan8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|HPOS\(0));

-- Location: LCFF_X37_Y24_N9
\C1|HPOS[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|HPOS[2]~15_combout\,
	sclr => \C1|LessThan8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|HPOS\(2));

-- Location: LCFF_X37_Y24_N7
\C1|HPOS[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|HPOS[1]~13_combout\,
	sclr => \C1|LessThan8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|HPOS\(1));

-- Location: LCCOMB_X37_Y24_N0
\C1|process_0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|process_0~1_combout\ = (!\C1|HPOS\(3) & (!\C1|HPOS\(0) & (!\C1|HPOS\(2) & !\C1|HPOS\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(3),
	datab => \C1|HPOS\(0),
	datac => \C1|HPOS\(2),
	datad => \C1|HPOS\(1),
	combout => \C1|process_0~1_combout\);

-- Location: LCCOMB_X37_Y24_N30
\C1|process_0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|process_0~2_combout\ = (\C1|HPOS\(5) & ((\C1|HPOS\(7)) # ((\C1|HPOS\(4) & !\C1|process_0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(4),
	datab => \C1|process_0~1_combout\,
	datac => \C1|HPOS\(5),
	datad => \C1|HPOS\(7),
	combout => \C1|process_0~2_combout\);

-- Location: LCFF_X37_Y24_N17
\C1|HPOS[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|HPOS[6]~23_combout\,
	sclr => \C1|LessThan8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|HPOS\(6));

-- Location: LCCOMB_X36_Y24_N0
\C1|process_0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|process_0~3_combout\ = (\C1|process_0~0_combout\) # (\C1|HPOS\(7) $ (((!\C1|process_0~2_combout\ & !\C1|HPOS\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|process_0~0_combout\,
	datab => \C1|process_0~2_combout\,
	datac => \C1|HPOS\(6),
	datad => \C1|HPOS\(7),
	combout => \C1|process_0~3_combout\);

-- Location: LCFF_X36_Y24_N1
\C1|HSYNC\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|process_0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|HSYNC~regout\);

-- Location: LCCOMB_X32_Y23_N8
\C1|VPOS[0]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|VPOS[0]~11_combout\ = \C1|VPOS\(0) $ (VCC)
-- \C1|VPOS[0]~12\ = CARRY(\C1|VPOS\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(0),
	datad => VCC,
	combout => \C1|VPOS[0]~11_combout\,
	cout => \C1|VPOS[0]~12\);

-- Location: LCCOMB_X32_Y23_N10
\C1|VPOS[1]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|VPOS[1]~13_combout\ = (\C1|VPOS\(1) & (!\C1|VPOS[0]~12\)) # (!\C1|VPOS\(1) & ((\C1|VPOS[0]~12\) # (GND)))
-- \C1|VPOS[1]~14\ = CARRY((!\C1|VPOS[0]~12\) # (!\C1|VPOS\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(1),
	datad => VCC,
	cin => \C1|VPOS[0]~12\,
	combout => \C1|VPOS[1]~13_combout\,
	cout => \C1|VPOS[1]~14\);

-- Location: LCCOMB_X32_Y23_N26
\C1|VPOS[9]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|VPOS[9]~29_combout\ = (\C1|VPOS\(9) & (!\C1|VPOS[8]~28\)) # (!\C1|VPOS\(9) & ((\C1|VPOS[8]~28\) # (GND)))
-- \C1|VPOS[9]~30\ = CARRY((!\C1|VPOS[8]~28\) # (!\C1|VPOS\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(9),
	datad => VCC,
	cin => \C1|VPOS[8]~28\,
	combout => \C1|VPOS[9]~29_combout\,
	cout => \C1|VPOS[9]~30\);

-- Location: LCCOMB_X32_Y23_N28
\C1|VPOS[10]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|VPOS[10]~31_combout\ = \C1|VPOS[9]~30\ $ (!\C1|VPOS\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \C1|VPOS\(10),
	cin => \C1|VPOS[9]~30\,
	combout => \C1|VPOS[10]~31_combout\);

-- Location: LCFF_X32_Y23_N29
\C1|VPOS[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|VPOS[10]~31_combout\,
	sclr => \C1|LessThan9~0_combout\,
	ena => \C1|LessThan8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|VPOS\(10));

-- Location: LCCOMB_X31_Y23_N16
\C1|LessThan9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan9~0_combout\ = (\C1|VPOS\(10) & (((!\C1|LessThan13~0_combout\ & \C1|VPOS\(5))) # (!\C1|process_0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan13~0_combout\,
	datab => \C1|VPOS\(5),
	datac => \C1|process_0~5_combout\,
	datad => \C1|VPOS\(10),
	combout => \C1|LessThan9~0_combout\);

-- Location: LCFF_X32_Y23_N11
\C1|VPOS[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|VPOS[1]~13_combout\,
	sclr => \C1|LessThan9~0_combout\,
	ena => \C1|LessThan8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|VPOS\(1));

-- Location: LCCOMB_X32_Y23_N12
\C1|VPOS[2]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|VPOS[2]~15_combout\ = (\C1|VPOS\(2) & (\C1|VPOS[1]~14\ $ (GND))) # (!\C1|VPOS\(2) & (!\C1|VPOS[1]~14\ & VCC))
-- \C1|VPOS[2]~16\ = CARRY((\C1|VPOS\(2) & !\C1|VPOS[1]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(2),
	datad => VCC,
	cin => \C1|VPOS[1]~14\,
	combout => \C1|VPOS[2]~15_combout\,
	cout => \C1|VPOS[2]~16\);

-- Location: LCCOMB_X32_Y23_N14
\C1|VPOS[3]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|VPOS[3]~17_combout\ = (\C1|VPOS\(3) & (!\C1|VPOS[2]~16\)) # (!\C1|VPOS\(3) & ((\C1|VPOS[2]~16\) # (GND)))
-- \C1|VPOS[3]~18\ = CARRY((!\C1|VPOS[2]~16\) # (!\C1|VPOS\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(3),
	datad => VCC,
	cin => \C1|VPOS[2]~16\,
	combout => \C1|VPOS[3]~17_combout\,
	cout => \C1|VPOS[3]~18\);

-- Location: LCCOMB_X32_Y23_N16
\C1|VPOS[4]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|VPOS[4]~19_combout\ = (\C1|VPOS\(4) & (\C1|VPOS[3]~18\ $ (GND))) # (!\C1|VPOS\(4) & (!\C1|VPOS[3]~18\ & VCC))
-- \C1|VPOS[4]~20\ = CARRY((\C1|VPOS\(4) & !\C1|VPOS[3]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(4),
	datad => VCC,
	cin => \C1|VPOS[3]~18\,
	combout => \C1|VPOS[4]~19_combout\,
	cout => \C1|VPOS[4]~20\);

-- Location: LCCOMB_X32_Y23_N18
\C1|VPOS[5]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|VPOS[5]~21_combout\ = (\C1|VPOS\(5) & (!\C1|VPOS[4]~20\)) # (!\C1|VPOS\(5) & ((\C1|VPOS[4]~20\) # (GND)))
-- \C1|VPOS[5]~22\ = CARRY((!\C1|VPOS[4]~20\) # (!\C1|VPOS\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(5),
	datad => VCC,
	cin => \C1|VPOS[4]~20\,
	combout => \C1|VPOS[5]~21_combout\,
	cout => \C1|VPOS[5]~22\);

-- Location: LCFF_X32_Y23_N19
\C1|VPOS[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|VPOS[5]~21_combout\,
	sclr => \C1|LessThan9~0_combout\,
	ena => \C1|LessThan8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|VPOS\(5));

-- Location: LCCOMB_X32_Y23_N20
\C1|VPOS[6]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|VPOS[6]~23_combout\ = (\C1|VPOS\(6) & (\C1|VPOS[5]~22\ $ (GND))) # (!\C1|VPOS\(6) & (!\C1|VPOS[5]~22\ & VCC))
-- \C1|VPOS[6]~24\ = CARRY((\C1|VPOS\(6) & !\C1|VPOS[5]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(6),
	datad => VCC,
	cin => \C1|VPOS[5]~22\,
	combout => \C1|VPOS[6]~23_combout\,
	cout => \C1|VPOS[6]~24\);

-- Location: LCCOMB_X32_Y23_N22
\C1|VPOS[7]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|VPOS[7]~25_combout\ = (\C1|VPOS\(7) & (!\C1|VPOS[6]~24\)) # (!\C1|VPOS\(7) & ((\C1|VPOS[6]~24\) # (GND)))
-- \C1|VPOS[7]~26\ = CARRY((!\C1|VPOS[6]~24\) # (!\C1|VPOS\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(7),
	datad => VCC,
	cin => \C1|VPOS[6]~24\,
	combout => \C1|VPOS[7]~25_combout\,
	cout => \C1|VPOS[7]~26\);

-- Location: LCCOMB_X32_Y23_N24
\C1|VPOS[8]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|VPOS[8]~27_combout\ = (\C1|VPOS\(8) & (\C1|VPOS[7]~26\ $ (GND))) # (!\C1|VPOS\(8) & (!\C1|VPOS[7]~26\ & VCC))
-- \C1|VPOS[8]~28\ = CARRY((\C1|VPOS\(8) & !\C1|VPOS[7]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(8),
	datad => VCC,
	cin => \C1|VPOS[7]~26\,
	combout => \C1|VPOS[8]~27_combout\,
	cout => \C1|VPOS[8]~28\);

-- Location: LCFF_X32_Y23_N27
\C1|VPOS[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|VPOS[9]~29_combout\,
	sclr => \C1|LessThan9~0_combout\,
	ena => \C1|LessThan8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|VPOS\(9));

-- Location: LCFF_X32_Y23_N21
\C1|VPOS[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|VPOS[6]~23_combout\,
	sclr => \C1|LessThan9~0_combout\,
	ena => \C1|LessThan8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|VPOS\(6));

-- Location: LCFF_X32_Y23_N23
\C1|VPOS[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|VPOS[7]~25_combout\,
	sclr => \C1|LessThan9~0_combout\,
	ena => \C1|LessThan8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|VPOS\(7));

-- Location: LCCOMB_X32_Y23_N0
\C1|process_0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|process_0~5_combout\ = (!\C1|VPOS\(8) & (!\C1|VPOS\(9) & (!\C1|VPOS\(6) & !\C1|VPOS\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(8),
	datab => \C1|VPOS\(9),
	datac => \C1|VPOS\(6),
	datad => \C1|VPOS\(7),
	combout => \C1|process_0~5_combout\);

-- Location: LCFF_X32_Y23_N13
\C1|VPOS[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|VPOS[2]~15_combout\,
	sclr => \C1|LessThan9~0_combout\,
	ena => \C1|LessThan8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|VPOS\(2));

-- Location: LCFF_X32_Y23_N15
\C1|VPOS[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|VPOS[3]~17_combout\,
	sclr => \C1|LessThan9~0_combout\,
	ena => \C1|LessThan8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|VPOS\(3));

-- Location: LCFF_X32_Y23_N17
\C1|VPOS[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|VPOS[4]~19_combout\,
	sclr => \C1|LessThan9~0_combout\,
	ena => \C1|LessThan8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|VPOS\(4));

-- Location: LCCOMB_X31_Y23_N28
\C1|LessThan16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan16~0_combout\ = (!\C1|VPOS\(3) & (!\C1|VPOS\(4) & !\C1|VPOS\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(3),
	datac => \C1|VPOS\(4),
	datad => \C1|VPOS\(5),
	combout => \C1|LessThan16~0_combout\);

-- Location: LCCOMB_X31_Y23_N4
\C1|process_0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|process_0~6_combout\ = (\C1|process_0~4_combout\) # (((\C1|VPOS\(2)) # (!\C1|LessThan16~0_combout\)) # (!\C1|process_0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|process_0~4_combout\,
	datab => \C1|process_0~5_combout\,
	datac => \C1|VPOS\(2),
	datad => \C1|LessThan16~0_combout\,
	combout => \C1|process_0~6_combout\);

-- Location: LCFF_X31_Y23_N5
\C1|VSYNC\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|process_0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|VSYNC~regout\);

-- Location: LCFF_X32_Y23_N25
\C1|VPOS[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|VPOS[8]~27_combout\,
	sclr => \C1|LessThan9~0_combout\,
	ena => \C1|LessThan8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|VPOS\(8));

-- Location: LCFF_X32_Y23_N9
\C1|VPOS[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|VPOS[0]~11_combout\,
	sclr => \C1|LessThan9~0_combout\,
	ena => \C1|LessThan8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|VPOS\(0));

-- Location: LCCOMB_X31_Y23_N26
\C1|LessThan16~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan16~1_combout\ = (!\C1|VPOS\(1) & (!\C1|VPOS\(0) & !\C1|VPOS\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|VPOS\(1),
	datac => \C1|VPOS\(0),
	datad => \C1|VPOS\(2),
	combout => \C1|LessThan16~1_combout\);

-- Location: LCCOMB_X31_Y23_N14
\C1|DRAW2~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAW2~7_combout\ = (\C1|VPOS\(5)) # ((\C1|VPOS\(4) & (\C1|VPOS\(3) & !\C1|LessThan16~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|VPOS\(4),
	datab => \C1|VPOS\(5),
	datac => \C1|VPOS\(3),
	datad => \C1|LessThan16~1_combout\,
	combout => \C1|DRAW2~7_combout\);

-- Location: LCCOMB_X31_Y23_N2
\C1|DRAW2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAW2~5_combout\ = (\C1|VPOS\(7) & (\C1|DRAW2~4_combout\ & ((!\C1|VPOS\(6))))) # (!\C1|VPOS\(7) & (((\C1|DRAW2~7_combout\ & \C1|VPOS\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAW2~4_combout\,
	datab => \C1|VPOS\(7),
	datac => \C1|DRAW2~7_combout\,
	datad => \C1|VPOS\(6),
	combout => \C1|DRAW2~5_combout\);

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PS2_DAT~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_PS2_DAT,
	combout => \PS2_DAT~combout\);

-- Location: LCCOMB_X37_Y23_N24
\C1|INST1|sync_ffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|INST1|sync_ffs[1]~feeder_combout\ = \PS2_DAT~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PS2_DAT~combout\,
	combout => \C1|INST1|sync_ffs[1]~feeder_combout\);

-- Location: LCFF_X37_Y23_N25
\C1|INST1|sync_ffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|INST1|sync_ffs[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|INST1|sync_ffs\(1));

-- Location: LCCOMB_X36_Y23_N12
\C1|INST1|debounce_ps2_data|flipflops[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|INST1|debounce_ps2_data|flipflops[0]~feeder_combout\ = \C1|INST1|sync_ffs\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|INST1|sync_ffs\(1),
	combout => \C1|INST1|debounce_ps2_data|flipflops[0]~feeder_combout\);

-- Location: LCFF_X36_Y23_N13
\C1|INST1|debounce_ps2_data|flipflops[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|INST1|debounce_ps2_data|flipflops[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|INST1|debounce_ps2_data|flipflops\(0));

-- Location: LCFF_X33_Y23_N23
\C1|INST1|debounce_ps2_data|flipflops[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	sdata => \C1|INST1|debounce_ps2_data|flipflops\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|INST1|debounce_ps2_data|flipflops\(1));

-- Location: LCCOMB_X33_Y23_N22
\C1|INST1|debounce_ps2_data|counter_out[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|INST1|debounce_ps2_data|counter_out[0]~1_combout\ = (!\C1|INST1|debounce_ps2_data|counter_out\(8) & (\C1|INST1|debounce_ps2_data|flipflops\(0) $ (!\C1|INST1|debounce_ps2_data|flipflops\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|INST1|debounce_ps2_data|flipflops\(0),
	datac => \C1|INST1|debounce_ps2_data|flipflops\(1),
	datad => \C1|INST1|debounce_ps2_data|counter_out\(8),
	combout => \C1|INST1|debounce_ps2_data|counter_out[0]~1_combout\);

-- Location: LCCOMB_X33_Y23_N16
\C1|INST1|debounce_ps2_data|result~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|INST1|debounce_ps2_data|result~1_combout\ = (\C1|INST1|debounce_ps2_data|counter_out\(8) & (\C1|INST1|debounce_ps2_data|flipflops\(1) $ (!\C1|INST1|debounce_ps2_data|flipflops\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|INST1|debounce_ps2_data|flipflops\(1),
	datab => \C1|INST1|debounce_ps2_data|flipflops\(0),
	datad => \C1|INST1|debounce_ps2_data|counter_out\(8),
	combout => \C1|INST1|debounce_ps2_data|result~1_combout\);

-- Location: LCCOMB_X38_Y23_N4
\C1|INST1|debounce_ps2_data|counter_out[7]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|INST1|debounce_ps2_data|counter_out[7]~2_combout\ = (\C1|INST1|debounce_ps2_data|Add0~14_combout\ & ((\C1|INST1|debounce_ps2_data|counter_out[0]~1_combout\) # ((\C1|INST1|debounce_ps2_data|counter_out\(7) & 
-- \C1|INST1|debounce_ps2_data|result~1_combout\)))) # (!\C1|INST1|debounce_ps2_data|Add0~14_combout\ & (((\C1|INST1|debounce_ps2_data|counter_out\(7) & \C1|INST1|debounce_ps2_data|result~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|INST1|debounce_ps2_data|Add0~14_combout\,
	datab => \C1|INST1|debounce_ps2_data|counter_out[0]~1_combout\,
	datac => \C1|INST1|debounce_ps2_data|counter_out\(7),
	datad => \C1|INST1|debounce_ps2_data|result~1_combout\,
	combout => \C1|INST1|debounce_ps2_data|counter_out[7]~2_combout\);

-- Location: LCFF_X38_Y23_N5
\C1|INST1|debounce_ps2_data|counter_out[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|INST1|debounce_ps2_data|counter_out[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|INST1|debounce_ps2_data|counter_out\(7));

-- Location: LCCOMB_X39_Y23_N2
\C1|INST1|debounce_ps2_data|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|INST1|debounce_ps2_data|Add0~0_combout\ = \C1|INST1|debounce_ps2_data|counter_out\(0) $ (VCC)
-- \C1|INST1|debounce_ps2_data|Add0~1\ = CARRY(\C1|INST1|debounce_ps2_data|counter_out\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|INST1|debounce_ps2_data|counter_out\(0),
	datad => VCC,
	combout => \C1|INST1|debounce_ps2_data|Add0~0_combout\,
	cout => \C1|INST1|debounce_ps2_data|Add0~1\);

-- Location: LCCOMB_X39_Y23_N30
\C1|INST1|debounce_ps2_data|counter_out[0]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|INST1|debounce_ps2_data|counter_out[0]~9_combout\ = (\C1|INST1|debounce_ps2_data|result~1_combout\ & ((\C1|INST1|debounce_ps2_data|counter_out\(0)) # ((\C1|INST1|debounce_ps2_data|counter_out[0]~1_combout\ & 
-- \C1|INST1|debounce_ps2_data|Add0~0_combout\)))) # (!\C1|INST1|debounce_ps2_data|result~1_combout\ & (\C1|INST1|debounce_ps2_data|counter_out[0]~1_combout\ & ((\C1|INST1|debounce_ps2_data|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|INST1|debounce_ps2_data|result~1_combout\,
	datab => \C1|INST1|debounce_ps2_data|counter_out[0]~1_combout\,
	datac => \C1|INST1|debounce_ps2_data|counter_out\(0),
	datad => \C1|INST1|debounce_ps2_data|Add0~0_combout\,
	combout => \C1|INST1|debounce_ps2_data|counter_out[0]~9_combout\);

-- Location: LCFF_X39_Y23_N31
\C1|INST1|debounce_ps2_data|counter_out[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|INST1|debounce_ps2_data|counter_out[0]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|INST1|debounce_ps2_data|counter_out\(0));

-- Location: LCCOMB_X39_Y23_N6
\C1|INST1|debounce_ps2_data|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|INST1|debounce_ps2_data|Add0~4_combout\ = (\C1|INST1|debounce_ps2_data|counter_out\(2) & (\C1|INST1|debounce_ps2_data|Add0~3\ $ (GND))) # (!\C1|INST1|debounce_ps2_data|counter_out\(2) & (!\C1|INST1|debounce_ps2_data|Add0~3\ & VCC))
-- \C1|INST1|debounce_ps2_data|Add0~5\ = CARRY((\C1|INST1|debounce_ps2_data|counter_out\(2) & !\C1|INST1|debounce_ps2_data|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|INST1|debounce_ps2_data|counter_out\(2),
	datad => VCC,
	cin => \C1|INST1|debounce_ps2_data|Add0~3\,
	combout => \C1|INST1|debounce_ps2_data|Add0~4_combout\,
	cout => \C1|INST1|debounce_ps2_data|Add0~5\);

-- Location: LCCOMB_X39_Y23_N26
\C1|INST1|debounce_ps2_data|counter_out[2]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|INST1|debounce_ps2_data|counter_out[2]~7_combout\ = (\C1|INST1|debounce_ps2_data|result~1_combout\ & ((\C1|INST1|debounce_ps2_data|counter_out\(2)) # ((\C1|INST1|debounce_ps2_data|counter_out[0]~1_combout\ & 
-- \C1|INST1|debounce_ps2_data|Add0~4_combout\)))) # (!\C1|INST1|debounce_ps2_data|result~1_combout\ & (\C1|INST1|debounce_ps2_data|counter_out[0]~1_combout\ & ((\C1|INST1|debounce_ps2_data|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|INST1|debounce_ps2_data|result~1_combout\,
	datab => \C1|INST1|debounce_ps2_data|counter_out[0]~1_combout\,
	datac => \C1|INST1|debounce_ps2_data|counter_out\(2),
	datad => \C1|INST1|debounce_ps2_data|Add0~4_combout\,
	combout => \C1|INST1|debounce_ps2_data|counter_out[2]~7_combout\);

-- Location: LCFF_X39_Y23_N27
\C1|INST1|debounce_ps2_data|counter_out[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|INST1|debounce_ps2_data|counter_out[2]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|INST1|debounce_ps2_data|counter_out\(2));

-- Location: LCCOMB_X39_Y23_N10
\C1|INST1|debounce_ps2_data|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|INST1|debounce_ps2_data|Add0~8_combout\ = (\C1|INST1|debounce_ps2_data|counter_out\(4) & (\C1|INST1|debounce_ps2_data|Add0~7\ $ (GND))) # (!\C1|INST1|debounce_ps2_data|counter_out\(4) & (!\C1|INST1|debounce_ps2_data|Add0~7\ & VCC))
-- \C1|INST1|debounce_ps2_data|Add0~9\ = CARRY((\C1|INST1|debounce_ps2_data|counter_out\(4) & !\C1|INST1|debounce_ps2_data|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|INST1|debounce_ps2_data|counter_out\(4),
	datad => VCC,
	cin => \C1|INST1|debounce_ps2_data|Add0~7\,
	combout => \C1|INST1|debounce_ps2_data|Add0~8_combout\,
	cout => \C1|INST1|debounce_ps2_data|Add0~9\);

-- Location: LCCOMB_X39_Y23_N22
\C1|INST1|debounce_ps2_data|counter_out[4]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|INST1|debounce_ps2_data|counter_out[4]~5_combout\ = (\C1|INST1|debounce_ps2_data|result~1_combout\ & ((\C1|INST1|debounce_ps2_data|counter_out\(4)) # ((\C1|INST1|debounce_ps2_data|counter_out[0]~1_combout\ & 
-- \C1|INST1|debounce_ps2_data|Add0~8_combout\)))) # (!\C1|INST1|debounce_ps2_data|result~1_combout\ & (\C1|INST1|debounce_ps2_data|counter_out[0]~1_combout\ & ((\C1|INST1|debounce_ps2_data|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|INST1|debounce_ps2_data|result~1_combout\,
	datab => \C1|INST1|debounce_ps2_data|counter_out[0]~1_combout\,
	datac => \C1|INST1|debounce_ps2_data|counter_out\(4),
	datad => \C1|INST1|debounce_ps2_data|Add0~8_combout\,
	combout => \C1|INST1|debounce_ps2_data|counter_out[4]~5_combout\);

-- Location: LCFF_X39_Y23_N23
\C1|INST1|debounce_ps2_data|counter_out[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|INST1|debounce_ps2_data|counter_out[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|INST1|debounce_ps2_data|counter_out\(4));

-- Location: LCCOMB_X39_Y23_N12
\C1|INST1|debounce_ps2_data|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|INST1|debounce_ps2_data|Add0~10_combout\ = (\C1|INST1|debounce_ps2_data|counter_out\(5) & (!\C1|INST1|debounce_ps2_data|Add0~9\)) # (!\C1|INST1|debounce_ps2_data|counter_out\(5) & ((\C1|INST1|debounce_ps2_data|Add0~9\) # (GND)))
-- \C1|INST1|debounce_ps2_data|Add0~11\ = CARRY((!\C1|INST1|debounce_ps2_data|Add0~9\) # (!\C1|INST1|debounce_ps2_data|counter_out\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|INST1|debounce_ps2_data|counter_out\(5),
	datad => VCC,
	cin => \C1|INST1|debounce_ps2_data|Add0~9\,
	combout => \C1|INST1|debounce_ps2_data|Add0~10_combout\,
	cout => \C1|INST1|debounce_ps2_data|Add0~11\);

-- Location: LCCOMB_X39_Y23_N28
\C1|INST1|debounce_ps2_data|counter_out[5]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|INST1|debounce_ps2_data|counter_out[5]~4_combout\ = (\C1|INST1|debounce_ps2_data|result~1_combout\ & ((\C1|INST1|debounce_ps2_data|counter_out\(5)) # ((\C1|INST1|debounce_ps2_data|counter_out[0]~1_combout\ & 
-- \C1|INST1|debounce_ps2_data|Add0~10_combout\)))) # (!\C1|INST1|debounce_ps2_data|result~1_combout\ & (\C1|INST1|debounce_ps2_data|counter_out[0]~1_combout\ & ((\C1|INST1|debounce_ps2_data|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|INST1|debounce_ps2_data|result~1_combout\,
	datab => \C1|INST1|debounce_ps2_data|counter_out[0]~1_combout\,
	datac => \C1|INST1|debounce_ps2_data|counter_out\(5),
	datad => \C1|INST1|debounce_ps2_data|Add0~10_combout\,
	combout => \C1|INST1|debounce_ps2_data|counter_out[5]~4_combout\);

-- Location: LCFF_X39_Y23_N29
\C1|INST1|debounce_ps2_data|counter_out[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|INST1|debounce_ps2_data|counter_out[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|INST1|debounce_ps2_data|counter_out\(5));

-- Location: LCCOMB_X39_Y23_N14
\C1|INST1|debounce_ps2_data|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|INST1|debounce_ps2_data|Add0~12_combout\ = (\C1|INST1|debounce_ps2_data|counter_out\(6) & (\C1|INST1|debounce_ps2_data|Add0~11\ $ (GND))) # (!\C1|INST1|debounce_ps2_data|counter_out\(6) & (!\C1|INST1|debounce_ps2_data|Add0~11\ & VCC))
-- \C1|INST1|debounce_ps2_data|Add0~13\ = CARRY((\C1|INST1|debounce_ps2_data|counter_out\(6) & !\C1|INST1|debounce_ps2_data|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|INST1|debounce_ps2_data|counter_out\(6),
	datad => VCC,
	cin => \C1|INST1|debounce_ps2_data|Add0~11\,
	combout => \C1|INST1|debounce_ps2_data|Add0~12_combout\,
	cout => \C1|INST1|debounce_ps2_data|Add0~13\);

-- Location: LCCOMB_X39_Y23_N0
\C1|INST1|debounce_ps2_data|counter_out[6]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|INST1|debounce_ps2_data|counter_out[6]~3_combout\ = (\C1|INST1|debounce_ps2_data|result~1_combout\ & ((\C1|INST1|debounce_ps2_data|counter_out\(6)) # ((\C1|INST1|debounce_ps2_data|Add0~12_combout\ & 
-- \C1|INST1|debounce_ps2_data|counter_out[0]~1_combout\)))) # (!\C1|INST1|debounce_ps2_data|result~1_combout\ & (\C1|INST1|debounce_ps2_data|Add0~12_combout\ & ((\C1|INST1|debounce_ps2_data|counter_out[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|INST1|debounce_ps2_data|result~1_combout\,
	datab => \C1|INST1|debounce_ps2_data|Add0~12_combout\,
	datac => \C1|INST1|debounce_ps2_data|counter_out\(6),
	datad => \C1|INST1|debounce_ps2_data|counter_out[0]~1_combout\,
	combout => \C1|INST1|debounce_ps2_data|counter_out[6]~3_combout\);

-- Location: LCFF_X39_Y23_N1
\C1|INST1|debounce_ps2_data|counter_out[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|INST1|debounce_ps2_data|counter_out[6]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|INST1|debounce_ps2_data|counter_out\(6));

-- Location: LCCOMB_X39_Y23_N18
\C1|INST1|debounce_ps2_data|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|INST1|debounce_ps2_data|Add0~16_combout\ = \C1|INST1|debounce_ps2_data|Add0~15\ $ (!\C1|INST1|debounce_ps2_data|counter_out\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \C1|INST1|debounce_ps2_data|counter_out\(8),
	cin => \C1|INST1|debounce_ps2_data|Add0~15\,
	combout => \C1|INST1|debounce_ps2_data|Add0~16_combout\);

-- Location: LCCOMB_X33_Y23_N10
\C1|INST1|debounce_ps2_data|counter_out~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|INST1|debounce_ps2_data|counter_out~0_combout\ = (\C1|INST1|debounce_ps2_data|counter_out\(8) & (\C1|INST1|debounce_ps2_data|flipflops\(1) $ ((!\C1|INST1|debounce_ps2_data|flipflops\(0))))) # (!\C1|INST1|debounce_ps2_data|counter_out\(8) & 
-- (\C1|INST1|debounce_ps2_data|Add0~16_combout\ & (\C1|INST1|debounce_ps2_data|flipflops\(1) $ (!\C1|INST1|debounce_ps2_data|flipflops\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|INST1|debounce_ps2_data|flipflops\(1),
	datab => \C1|INST1|debounce_ps2_data|flipflops\(0),
	datac => \C1|INST1|debounce_ps2_data|counter_out\(8),
	datad => \C1|INST1|debounce_ps2_data|Add0~16_combout\,
	combout => \C1|INST1|debounce_ps2_data|counter_out~0_combout\);

-- Location: LCFF_X33_Y23_N11
\C1|INST1|debounce_ps2_data|counter_out[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|INST1|debounce_ps2_data|counter_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|INST1|debounce_ps2_data|counter_out\(8));

-- Location: LCCOMB_X33_Y23_N6
\C1|INST1|debounce_ps2_data|result~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|INST1|debounce_ps2_data|result~0_combout\ = (\C1|INST1|debounce_ps2_data|flipflops\(1) & ((\C1|INST1|debounce_ps2_data|result~regout\) # ((\C1|INST1|debounce_ps2_data|flipflops\(0) & \C1|INST1|debounce_ps2_data|counter_out\(8))))) # 
-- (!\C1|INST1|debounce_ps2_data|flipflops\(1) & (\C1|INST1|debounce_ps2_data|result~regout\ & ((\C1|INST1|debounce_ps2_data|flipflops\(0)) # (!\C1|INST1|debounce_ps2_data|counter_out\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|INST1|debounce_ps2_data|flipflops\(1),
	datab => \C1|INST1|debounce_ps2_data|flipflops\(0),
	datac => \C1|INST1|debounce_ps2_data|result~regout\,
	datad => \C1|INST1|debounce_ps2_data|counter_out\(8),
	combout => \C1|INST1|debounce_ps2_data|result~0_combout\);

-- Location: LCFF_X33_Y23_N7
\C1|INST1|debounce_ps2_data|result\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|INST1|debounce_ps2_data|result~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|INST1|debounce_ps2_data|result~regout\);

-- Location: LCCOMB_X33_Y23_N4
\C1|INST1|ps2_word[10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|INST1|ps2_word[10]~feeder_combout\ = \C1|INST1|debounce_ps2_data|result~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|INST1|debounce_ps2_data|result~regout\,
	combout => \C1|INST1|ps2_word[10]~feeder_combout\);

-- Location: LCFF_X33_Y23_N5
\C1|INST1|ps2_word[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C1|INST1|debounce_ps2_clk|ALT_INV_result~clkctrl_outclk\,
	datain => \C1|INST1|ps2_word[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|INST1|ps2_word\(10));

-- Location: LCFF_X33_Y23_N17
\C1|INST1|ps2_word[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C1|INST1|debounce_ps2_clk|ALT_INV_result~clkctrl_outclk\,
	sdata => \C1|INST1|ps2_word\(10),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|INST1|ps2_word\(9));

-- Location: LCFF_X33_Y23_N29
\C1|INST1|ps2_word[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C1|INST1|debounce_ps2_clk|ALT_INV_result~clkctrl_outclk\,
	sdata => \C1|INST1|ps2_word\(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|INST1|ps2_word\(8));

-- Location: LCFF_X33_Y23_N19
\C1|INST1|ps2_word[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C1|INST1|debounce_ps2_clk|ALT_INV_result~clkctrl_outclk\,
	sdata => \C1|INST1|ps2_word\(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|INST1|ps2_word\(7));

-- Location: LCCOMB_X33_Y23_N12
\C1|INST1|ps2_word[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|INST1|ps2_word[6]~feeder_combout\ = \C1|INST1|ps2_word\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|INST1|ps2_word\(7),
	combout => \C1|INST1|ps2_word[6]~feeder_combout\);

-- Location: LCFF_X33_Y23_N13
\C1|INST1|ps2_word[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C1|INST1|debounce_ps2_clk|ALT_INV_result~clkctrl_outclk\,
	datain => \C1|INST1|ps2_word[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|INST1|ps2_word\(6));

-- Location: LCCOMB_X33_Y23_N0
\C1|INST1|ps2_word[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|INST1|ps2_word[5]~feeder_combout\ = \C1|INST1|ps2_word\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|INST1|ps2_word\(6),
	combout => \C1|INST1|ps2_word[5]~feeder_combout\);

-- Location: LCFF_X33_Y23_N1
\C1|INST1|ps2_word[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C1|INST1|debounce_ps2_clk|ALT_INV_result~clkctrl_outclk\,
	datain => \C1|INST1|ps2_word[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|INST1|ps2_word\(5));

-- Location: LCCOMB_X24_Y26_N0
\C1|INST1|count_idle[0]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|INST1|count_idle[0]~12_combout\ = \C1|INST1|count_idle\(0) $ (VCC)
-- \C1|INST1|count_idle[0]~13\ = CARRY(\C1|INST1|count_idle\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|INST1|count_idle\(0),
	datad => VCC,
	combout => \C1|INST1|count_idle[0]~12_combout\,
	cout => \C1|INST1|count_idle[0]~13\);

-- Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PS2_CLK~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_PS2_CLK,
	combout => \PS2_CLK~combout\);

-- Location: LCCOMB_X29_Y26_N20
\C1|INST1|sync_ffs[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|INST1|sync_ffs[0]~feeder_combout\ = \PS2_CLK~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \PS2_CLK~combout\,
	combout => \C1|INST1|sync_ffs[0]~feeder_combout\);

-- Location: LCFF_X29_Y26_N21
\C1|INST1|sync_ffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|INST1|sync_ffs[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|INST1|sync_ffs\(0));

-- Location: LCCOMB_X25_Y26_N4
\C1|INST1|debounce_ps2_clk|flipflops[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|INST1|debounce_ps2_clk|flipflops[0]~feeder_combout\ = \C1|INST1|sync_ffs\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|INST1|sync_ffs\(0),
	combout => \C1|INST1|debounce_ps2_clk|flipflops[0]~feeder_combout\);

-- Location: LCFF_X25_Y26_N5
\C1|INST1|debounce_ps2_clk|flipflops[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|INST1|debounce_ps2_clk|flipflops[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|INST1|debounce_ps2_clk|flipflops\(0));

-- Location: LCFF_X25_Y26_N27
\C1|INST1|debounce_ps2_clk|flipflops[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	sdata => \C1|INST1|debounce_ps2_clk|flipflops\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|INST1|debounce_ps2_clk|flipflops\(1));

-- Location: LCCOMB_X25_Y26_N2
\C1|INST1|debounce_ps2_clk|counter_out~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|INST1|debounce_ps2_clk|counter_out~0_combout\ = (\C1|INST1|debounce_ps2_clk|Add0~16_combout\ & (\C1|INST1|debounce_ps2_clk|flipflops\(0) $ (((!\C1|INST1|debounce_ps2_clk|flipflops\(1)))))) # (!\C1|INST1|debounce_ps2_clk|Add0~16_combout\ & 
-- (\C1|INST1|debounce_ps2_clk|counter_out\(8) & (\C1|INST1|debounce_ps2_clk|flipflops\(0) $ (!\C1|INST1|debounce_ps2_clk|flipflops\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|INST1|debounce_ps2_clk|Add0~16_combout\,
	datab => \C1|INST1|debounce_ps2_clk|flipflops\(0),
	datac => \C1|INST1|debounce_ps2_clk|counter_out\(8),
	datad => \C1|INST1|debounce_ps2_clk|flipflops\(1),
	combout => \C1|INST1|debounce_ps2_clk|counter_out~0_combout\);

-- Location: LCFF_X25_Y26_N3
\C1|INST1|debounce_ps2_clk|counter_out[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|INST1|debounce_ps2_clk|counter_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|INST1|debounce_ps2_clk|counter_out\(8));

-- Location: LCCOMB_X24_Y26_N26
\C1|INST1|debounce_ps2_clk|result~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|INST1|debounce_ps2_clk|result~0_combout\ = (\C1|INST1|debounce_ps2_clk|flipflops\(1) & ((\C1|INST1|debounce_ps2_clk|result~regout\) # ((\C1|INST1|debounce_ps2_clk|counter_out\(8) & \C1|INST1|debounce_ps2_clk|flipflops\(0))))) # 
-- (!\C1|INST1|debounce_ps2_clk|flipflops\(1) & (\C1|INST1|debounce_ps2_clk|result~regout\ & ((\C1|INST1|debounce_ps2_clk|flipflops\(0)) # (!\C1|INST1|debounce_ps2_clk|counter_out\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|INST1|debounce_ps2_clk|flipflops\(1),
	datab => \C1|INST1|debounce_ps2_clk|counter_out\(8),
	datac => \C1|INST1|debounce_ps2_clk|result~regout\,
	datad => \C1|INST1|debounce_ps2_clk|flipflops\(0),
	combout => \C1|INST1|debounce_ps2_clk|result~0_combout\);

-- Location: LCFF_X24_Y26_N27
\C1|INST1|debounce_ps2_clk|result\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|INST1|debounce_ps2_clk|result~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|INST1|debounce_ps2_clk|result~regout\);

-- Location: LCCOMB_X24_Y26_N2
\C1|INST1|count_idle[1]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|INST1|count_idle[1]~15_combout\ = (\C1|INST1|count_idle\(1) & (!\C1|INST1|count_idle[0]~13\)) # (!\C1|INST1|count_idle\(1) & ((\C1|INST1|count_idle[0]~13\) # (GND)))
-- \C1|INST1|count_idle[1]~16\ = CARRY((!\C1|INST1|count_idle[0]~13\) # (!\C1|INST1|count_idle\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|INST1|count_idle\(1),
	datad => VCC,
	cin => \C1|INST1|count_idle[0]~13\,
	combout => \C1|INST1|count_idle[1]~15_combout\,
	cout => \C1|INST1|count_idle[1]~16\);

-- Location: LCFF_X24_Y26_N3
\C1|INST1|count_idle[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|INST1|count_idle[1]~15_combout\,
	sclr => \C1|INST1|debounce_ps2_clk|ALT_INV_result~regout\,
	ena => \C1|INST1|count_idle[8]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|INST1|count_idle\(1));

-- Location: LCCOMB_X24_Y26_N4
\C1|INST1|count_idle[2]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|INST1|count_idle[2]~17_combout\ = (\C1|INST1|count_idle\(2) & (\C1|INST1|count_idle[1]~16\ $ (GND))) # (!\C1|INST1|count_idle\(2) & (!\C1|INST1|count_idle[1]~16\ & VCC))
-- \C1|INST1|count_idle[2]~18\ = CARRY((\C1|INST1|count_idle\(2) & !\C1|INST1|count_idle[1]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|INST1|count_idle\(2),
	datad => VCC,
	cin => \C1|INST1|count_idle[1]~16\,
	combout => \C1|INST1|count_idle[2]~17_combout\,
	cout => \C1|INST1|count_idle[2]~18\);

-- Location: LCFF_X24_Y26_N5
\C1|INST1|count_idle[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|INST1|count_idle[2]~17_combout\,
	sclr => \C1|INST1|debounce_ps2_clk|ALT_INV_result~regout\,
	ena => \C1|INST1|count_idle[8]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|INST1|count_idle\(2));

-- Location: LCCOMB_X24_Y26_N8
\C1|INST1|count_idle[4]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|INST1|count_idle[4]~21_combout\ = (\C1|INST1|count_idle\(4) & (\C1|INST1|count_idle[3]~20\ $ (GND))) # (!\C1|INST1|count_idle\(4) & (!\C1|INST1|count_idle[3]~20\ & VCC))
-- \C1|INST1|count_idle[4]~22\ = CARRY((\C1|INST1|count_idle\(4) & !\C1|INST1|count_idle[3]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|INST1|count_idle\(4),
	datad => VCC,
	cin => \C1|INST1|count_idle[3]~20\,
	combout => \C1|INST1|count_idle[4]~21_combout\,
	cout => \C1|INST1|count_idle[4]~22\);

-- Location: LCFF_X24_Y26_N9
\C1|INST1|count_idle[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|INST1|count_idle[4]~21_combout\,
	sclr => \C1|INST1|debounce_ps2_clk|ALT_INV_result~regout\,
	ena => \C1|INST1|count_idle[8]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|INST1|count_idle\(4));

-- Location: LCCOMB_X24_Y26_N12
\C1|INST1|count_idle[6]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|INST1|count_idle[6]~25_combout\ = (\C1|INST1|count_idle\(6) & (\C1|INST1|count_idle[5]~24\ $ (GND))) # (!\C1|INST1|count_idle\(6) & (!\C1|INST1|count_idle[5]~24\ & VCC))
-- \C1|INST1|count_idle[6]~26\ = CARRY((\C1|INST1|count_idle\(6) & !\C1|INST1|count_idle[5]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|INST1|count_idle\(6),
	datad => VCC,
	cin => \C1|INST1|count_idle[5]~24\,
	combout => \C1|INST1|count_idle[6]~25_combout\,
	cout => \C1|INST1|count_idle[6]~26\);

-- Location: LCFF_X24_Y26_N13
\C1|INST1|count_idle[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|INST1|count_idle[6]~25_combout\,
	sclr => \C1|INST1|debounce_ps2_clk|ALT_INV_result~regout\,
	ena => \C1|INST1|count_idle[8]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|INST1|count_idle\(6));

-- Location: LCCOMB_X24_Y26_N14
\C1|INST1|count_idle[7]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|INST1|count_idle[7]~27_combout\ = (\C1|INST1|count_idle\(7) & (!\C1|INST1|count_idle[6]~26\)) # (!\C1|INST1|count_idle\(7) & ((\C1|INST1|count_idle[6]~26\) # (GND)))
-- \C1|INST1|count_idle[7]~28\ = CARRY((!\C1|INST1|count_idle[6]~26\) # (!\C1|INST1|count_idle\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|INST1|count_idle\(7),
	datad => VCC,
	cin => \C1|INST1|count_idle[6]~26\,
	combout => \C1|INST1|count_idle[7]~27_combout\,
	cout => \C1|INST1|count_idle[7]~28\);

-- Location: LCFF_X24_Y26_N15
\C1|INST1|count_idle[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|INST1|count_idle[7]~27_combout\,
	sclr => \C1|INST1|debounce_ps2_clk|ALT_INV_result~regout\,
	ena => \C1|INST1|count_idle[8]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|INST1|count_idle\(7));

-- Location: LCCOMB_X25_Y26_N20
\C1|INST1|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|INST1|Equal0~1_combout\ = (!\C1|INST1|count_idle\(5) & (\C1|INST1|count_idle\(6) & (\C1|INST1|count_idle\(7) & \C1|INST1|count_idle\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|INST1|count_idle\(5),
	datab => \C1|INST1|count_idle\(6),
	datac => \C1|INST1|count_idle\(7),
	datad => \C1|INST1|count_idle\(4),
	combout => \C1|INST1|Equal0~1_combout\);

-- Location: LCCOMB_X24_Y26_N30
\C1|INST1|count_idle[8]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|INST1|count_idle[8]~14_combout\ = (((!\C1|INST1|debounce_ps2_clk|result~regout\) # (!\C1|INST1|Equal0~1_combout\)) # (!\C1|INST1|Equal0~0_combout\)) # (!\C1|INST1|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|INST1|Equal0~2_combout\,
	datab => \C1|INST1|Equal0~0_combout\,
	datac => \C1|INST1|Equal0~1_combout\,
	datad => \C1|INST1|debounce_ps2_clk|result~regout\,
	combout => \C1|INST1|count_idle[8]~14_combout\);

-- Location: LCFF_X24_Y26_N1
\C1|INST1|count_idle[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|INST1|count_idle[0]~12_combout\,
	sclr => \C1|INST1|debounce_ps2_clk|ALT_INV_result~regout\,
	ena => \C1|INST1|count_idle[8]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|INST1|count_idle\(0));

-- Location: LCCOMB_X24_Y26_N28
\C1|INST1|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|INST1|Equal0~0_combout\ = (\C1|INST1|count_idle\(3) & (\C1|INST1|count_idle\(0) & (!\C1|INST1|count_idle\(2) & !\C1|INST1|count_idle\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|INST1|count_idle\(3),
	datab => \C1|INST1|count_idle\(0),
	datac => \C1|INST1|count_idle\(2),
	datad => \C1|INST1|count_idle\(1),
	combout => \C1|INST1|Equal0~0_combout\);

-- Location: LCCOMB_X24_Y26_N16
\C1|INST1|count_idle[8]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|INST1|count_idle[8]~29_combout\ = (\C1|INST1|count_idle\(8) & (\C1|INST1|count_idle[7]~28\ $ (GND))) # (!\C1|INST1|count_idle\(8) & (!\C1|INST1|count_idle[7]~28\ & VCC))
-- \C1|INST1|count_idle[8]~30\ = CARRY((\C1|INST1|count_idle\(8) & !\C1|INST1|count_idle[7]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|INST1|count_idle\(8),
	datad => VCC,
	cin => \C1|INST1|count_idle[7]~28\,
	combout => \C1|INST1|count_idle[8]~29_combout\,
	cout => \C1|INST1|count_idle[8]~30\);

-- Location: LCCOMB_X24_Y26_N18
\C1|INST1|count_idle[9]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|INST1|count_idle[9]~31_combout\ = (\C1|INST1|count_idle\(9) & (!\C1|INST1|count_idle[8]~30\)) # (!\C1|INST1|count_idle\(9) & ((\C1|INST1|count_idle[8]~30\) # (GND)))
-- \C1|INST1|count_idle[9]~32\ = CARRY((!\C1|INST1|count_idle[8]~30\) # (!\C1|INST1|count_idle\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|INST1|count_idle\(9),
	datad => VCC,
	cin => \C1|INST1|count_idle[8]~30\,
	combout => \C1|INST1|count_idle[9]~31_combout\,
	cout => \C1|INST1|count_idle[9]~32\);

-- Location: LCFF_X24_Y26_N19
\C1|INST1|count_idle[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|INST1|count_idle[9]~31_combout\,
	sclr => \C1|INST1|debounce_ps2_clk|ALT_INV_result~regout\,
	ena => \C1|INST1|count_idle[8]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|INST1|count_idle\(9));

-- Location: LCFF_X24_Y26_N17
\C1|INST1|count_idle[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|INST1|count_idle[8]~29_combout\,
	sclr => \C1|INST1|debounce_ps2_clk|ALT_INV_result~regout\,
	ena => \C1|INST1|count_idle[8]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|INST1|count_idle\(8));

-- Location: LCCOMB_X24_Y26_N22
\C1|INST1|count_idle[11]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|INST1|count_idle[11]~35_combout\ = \C1|INST1|count_idle[10]~34\ $ (\C1|INST1|count_idle\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \C1|INST1|count_idle\(11),
	cin => \C1|INST1|count_idle[10]~34\,
	combout => \C1|INST1|count_idle[11]~35_combout\);

-- Location: LCFF_X24_Y26_N23
\C1|INST1|count_idle[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|INST1|count_idle[11]~35_combout\,
	sclr => \C1|INST1|debounce_ps2_clk|ALT_INV_result~regout\,
	ena => \C1|INST1|count_idle[8]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|INST1|count_idle\(11));

-- Location: LCCOMB_X24_Y26_N24
\C1|INST1|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|INST1|Equal0~2_combout\ = (!\C1|INST1|count_idle\(10) & (\C1|INST1|count_idle\(9) & (!\C1|INST1|count_idle\(8) & \C1|INST1|count_idle\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|INST1|count_idle\(10),
	datab => \C1|INST1|count_idle\(9),
	datac => \C1|INST1|count_idle\(8),
	datad => \C1|INST1|count_idle\(11),
	combout => \C1|INST1|Equal0~2_combout\);

-- Location: LCCOMB_X33_Y23_N2
\C1|INST1|ps2_word[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|INST1|ps2_word[4]~feeder_combout\ = \C1|INST1|ps2_word\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|INST1|ps2_word\(5),
	combout => \C1|INST1|ps2_word[4]~feeder_combout\);

-- Location: LCFF_X33_Y23_N3
\C1|INST1|ps2_word[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C1|INST1|debounce_ps2_clk|ALT_INV_result~clkctrl_outclk\,
	datain => \C1|INST1|ps2_word[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|INST1|ps2_word\(4));

-- Location: LCFF_X33_Y23_N25
\C1|INST1|ps2_word[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C1|INST1|debounce_ps2_clk|ALT_INV_result~clkctrl_outclk\,
	sdata => \C1|INST1|ps2_word\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|INST1|ps2_word\(3));

-- Location: LCCOMB_X33_Y23_N26
\C1|INST1|ps2_word[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|INST1|ps2_word[2]~feeder_combout\ = \C1|INST1|ps2_word\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|INST1|ps2_word\(3),
	combout => \C1|INST1|ps2_word[2]~feeder_combout\);

-- Location: LCFF_X33_Y23_N27
\C1|INST1|ps2_word[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C1|INST1|debounce_ps2_clk|ALT_INV_result~clkctrl_outclk\,
	datain => \C1|INST1|ps2_word[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|INST1|ps2_word\(2));

-- Location: LCCOMB_X33_Y23_N20
\C1|INST1|ps2_word[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|INST1|ps2_word[1]~feeder_combout\ = \C1|INST1|ps2_word\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|INST1|ps2_word\(2),
	combout => \C1|INST1|ps2_word[1]~feeder_combout\);

-- Location: LCFF_X33_Y23_N21
\C1|INST1|ps2_word[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C1|INST1|debounce_ps2_clk|ALT_INV_result~clkctrl_outclk\,
	datain => \C1|INST1|ps2_word[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|INST1|ps2_word\(1));

-- Location: LCFF_X33_Y23_N9
\C1|INST1|ps2_word[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C1|INST1|debounce_ps2_clk|ALT_INV_result~clkctrl_outclk\,
	sdata => \C1|INST1|ps2_word\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|INST1|ps2_word\(0));

-- Location: LCCOMB_X33_Y23_N8
\C1|INST1|process_2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|INST1|process_2~0_combout\ = (!\C1|INST1|ps2_word\(0) & \C1|INST1|ps2_word\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|INST1|ps2_word\(0),
	datad => \C1|INST1|ps2_word\(10),
	combout => \C1|INST1|process_2~0_combout\);

-- Location: LCCOMB_X33_Y23_N24
\C1|INST1|error~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|INST1|error~0_combout\ = \C1|INST1|ps2_word\(1) $ (\C1|INST1|ps2_word\(2) $ (\C1|INST1|ps2_word\(3) $ (\C1|INST1|ps2_word\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|INST1|ps2_word\(1),
	datab => \C1|INST1|ps2_word\(2),
	datac => \C1|INST1|ps2_word\(3),
	datad => \C1|INST1|ps2_word\(4),
	combout => \C1|INST1|error~0_combout\);

-- Location: LCCOMB_X33_Y23_N28
\C1|INST1|error~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|INST1|error~1_combout\ = \C1|INST1|ps2_word\(5) $ (\C1|INST1|ps2_word\(7) $ (\C1|INST1|ps2_word\(8) $ (\C1|INST1|ps2_word\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|INST1|ps2_word\(5),
	datab => \C1|INST1|ps2_word\(7),
	datac => \C1|INST1|ps2_word\(8),
	datad => \C1|INST1|ps2_word\(6),
	combout => \C1|INST1|error~1_combout\);

-- Location: LCCOMB_X33_Y23_N30
\C1|INST1|process_2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|INST1|process_2~1_combout\ = (\C1|INST1|process_2~0_combout\ & (\C1|INST1|ps2_word\(9) $ (\C1|INST1|error~0_combout\ $ (\C1|INST1|error~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|INST1|ps2_word\(9),
	datab => \C1|INST1|process_2~0_combout\,
	datac => \C1|INST1|error~0_combout\,
	datad => \C1|INST1|error~1_combout\,
	combout => \C1|INST1|process_2~1_combout\);

-- Location: LCCOMB_X33_Y23_N14
\C1|INST1|process_2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|INST1|process_2~2_combout\ = (\C1|INST1|Equal0~1_combout\ & (\C1|INST1|Equal0~0_combout\ & (\C1|INST1|Equal0~2_combout\ & \C1|INST1|process_2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|INST1|Equal0~1_combout\,
	datab => \C1|INST1|Equal0~0_combout\,
	datac => \C1|INST1|Equal0~2_combout\,
	datad => \C1|INST1|process_2~1_combout\,
	combout => \C1|INST1|process_2~2_combout\);

-- Location: LCFF_X34_Y23_N23
\C1|INST1|ps2_code[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	sdata => \C1|INST1|ps2_word\(5),
	sload => VCC,
	ena => \C1|INST1|process_2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|INST1|ps2_code\(4));

-- Location: LCCOMB_X34_Y23_N4
\C1|INST1|ps2_code[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|INST1|ps2_code[0]~feeder_combout\ = \C1|INST1|ps2_word\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|INST1|ps2_word\(1),
	combout => \C1|INST1|ps2_code[0]~feeder_combout\);

-- Location: LCFF_X34_Y23_N5
\C1|INST1|ps2_code[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|INST1|ps2_code[0]~feeder_combout\,
	ena => \C1|INST1|process_2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|INST1|ps2_code\(0));

-- Location: LCFF_X34_Y23_N7
\C1|INST1|ps2_code[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	sdata => \C1|INST1|ps2_word\(2),
	sload => VCC,
	ena => \C1|INST1|process_2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|INST1|ps2_code\(1));

-- Location: LCFF_X34_Y23_N21
\C1|INST1|ps2_code[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	sdata => \C1|INST1|ps2_word\(3),
	sload => VCC,
	ena => \C1|INST1|process_2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|INST1|ps2_code\(2));

-- Location: LCCOMB_X34_Y23_N6
\C1|Add6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add6~1_combout\ = (\C1|INST1|ps2_code\(3) & (!\C1|INST1|ps2_code\(0) & (!\C1|INST1|ps2_code\(1) & \C1|INST1|ps2_code\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|INST1|ps2_code\(3),
	datab => \C1|INST1|ps2_code\(0),
	datac => \C1|INST1|ps2_code\(1),
	datad => \C1|INST1|ps2_code\(2),
	combout => \C1|Add6~1_combout\);

-- Location: LCCOMB_X34_Y23_N2
\C1|Add6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add6~2_combout\ = (\C1|INST1|ps2_code\(4) & \C1|Add6~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|INST1|ps2_code\(4),
	datad => \C1|Add6~1_combout\,
	combout => \C1|Add6~2_combout\);

-- Location: LCCOMB_X34_Y24_N4
\C1|Add8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add8~1_combout\ = (\C1|Add6~5_combout\ & (\C1|SQ_X2\(0) $ (VCC))) # (!\C1|Add6~5_combout\ & (\C1|SQ_X2\(0) & VCC))
-- \C1|Add8~2\ = CARRY((\C1|Add6~5_combout\ & \C1|SQ_X2\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add6~5_combout\,
	datab => \C1|SQ_X2\(0),
	datad => VCC,
	combout => \C1|Add8~1_combout\,
	cout => \C1|Add8~2\);

-- Location: LCCOMB_X34_Y23_N14
\C1|INST1|ps2_code[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|INST1|ps2_code[5]~feeder_combout\ = \C1|INST1|ps2_word\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|INST1|ps2_word\(6),
	combout => \C1|INST1|ps2_code[5]~feeder_combout\);

-- Location: LCFF_X34_Y23_N15
\C1|INST1|ps2_code[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|INST1|ps2_code[5]~feeder_combout\,
	ena => \C1|INST1|process_2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|INST1|ps2_code\(5));

-- Location: LCFF_X34_Y23_N3
\C1|INST1|ps2_code[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	sdata => \C1|INST1|ps2_word\(8),
	sload => VCC,
	ena => \C1|INST1|process_2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|INST1|ps2_code\(7));

-- Location: LCCOMB_X34_Y23_N18
\C1|INST1|ps2_code[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|INST1|ps2_code[6]~feeder_combout\ = \C1|INST1|ps2_word\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|INST1|ps2_word\(7),
	combout => \C1|INST1|ps2_code[6]~feeder_combout\);

-- Location: LCFF_X34_Y23_N19
\C1|INST1|ps2_code[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|INST1|ps2_code[6]~feeder_combout\,
	ena => \C1|INST1|process_2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|INST1|ps2_code\(6));

-- Location: LCCOMB_X34_Y23_N28
\C1|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Equal0~0_combout\ = (\C1|INST1|ps2_code\(4) & (\C1|INST1|ps2_code\(6) & (\C1|INST1|ps2_code\(5) & \C1|INST1|ps2_code\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|INST1|ps2_code\(4),
	datab => \C1|INST1|ps2_code\(6),
	datac => \C1|INST1|ps2_code\(5),
	datad => \C1|INST1|ps2_code\(7),
	combout => \C1|Equal0~0_combout\);

-- Location: LCCOMB_X34_Y23_N26
\C1|DEPRESSED\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DEPRESSED~combout\ = (\C1|INST1|ps2_code_new~regout\ & ((!\C1|Equal0~0_combout\))) # (!\C1|INST1|ps2_code_new~regout\ & (\C1|DEPRESSED~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|INST1|ps2_code_new~regout\,
	datab => \C1|DEPRESSED~combout\,
	datad => \C1|Equal0~0_combout\,
	combout => \C1|DEPRESSED~combout\);

-- Location: LCCOMB_X34_Y23_N12
\C1|SQ_X2[10]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X2[10]~0_combout\ = (!\C1|INST1|ps2_code\(7) & (!\C1|INST1|ps2_code\(6) & \C1|DEPRESSED~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|INST1|ps2_code\(7),
	datac => \C1|INST1|ps2_code\(6),
	datad => \C1|DEPRESSED~combout\,
	combout => \C1|SQ_X2[10]~0_combout\);

-- Location: LCCOMB_X34_Y23_N0
\C1|SQ_X2[10]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X2[10]~1_combout\ = (\C1|SQ_X2[10]~0_combout\ & ((\C1|INST1|ps2_code\(5) & (\C1|Add6~4_combout\)) # (!\C1|INST1|ps2_code\(5) & ((\C1|Add6~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add6~4_combout\,
	datab => \C1|INST1|ps2_code\(5),
	datac => \C1|Add6~2_combout\,
	datad => \C1|SQ_X2[10]~0_combout\,
	combout => \C1|SQ_X2[10]~1_combout\);

-- Location: LCCOMB_X34_Y24_N2
\C1|SQ_X2[10]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X2[10]~2_combout\ = (\SW~combout\(1) & (\C1|LessThan8~1_combout\ & (\C1|LessThan9~0_combout\ & \C1|SQ_X2[10]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(1),
	datab => \C1|LessThan8~1_combout\,
	datac => \C1|LessThan9~0_combout\,
	datad => \C1|SQ_X2[10]~1_combout\,
	combout => \C1|SQ_X2[10]~2_combout\);

-- Location: LCFF_X34_Y24_N5
\C1|SQ_X2[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|Add8~1_combout\,
	ena => \C1|SQ_X2[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_X2\(0));

-- Location: LCCOMB_X34_Y24_N8
\C1|Add8~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add8~5_combout\ = ((\C1|Add6~4_combout\ $ (\C1|SQ_X2\(2) $ (!\C1|Add8~4\)))) # (GND)
-- \C1|Add8~6\ = CARRY((\C1|Add6~4_combout\ & ((\C1|SQ_X2\(2)) # (!\C1|Add8~4\))) # (!\C1|Add6~4_combout\ & (\C1|SQ_X2\(2) & !\C1|Add8~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add6~4_combout\,
	datab => \C1|SQ_X2\(2),
	datad => VCC,
	cin => \C1|Add8~4\,
	combout => \C1|Add8~5_combout\,
	cout => \C1|Add8~6\);

-- Location: LCFF_X34_Y24_N9
\C1|SQ_X2[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|Add8~5_combout\,
	ena => \C1|SQ_X2[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_X2\(2));

-- Location: LCCOMB_X34_Y24_N10
\C1|Add8~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add8~7_combout\ = (\C1|SQ_X2\(3) & ((\C1|Add6~2_combout\ & (!\C1|Add8~6\)) # (!\C1|Add6~2_combout\ & ((\C1|Add8~6\) # (GND))))) # (!\C1|SQ_X2\(3) & ((\C1|Add6~2_combout\ & (\C1|Add8~6\ & VCC)) # (!\C1|Add6~2_combout\ & (!\C1|Add8~6\))))
-- \C1|Add8~8\ = CARRY((\C1|SQ_X2\(3) & ((!\C1|Add8~6\) # (!\C1|Add6~2_combout\))) # (!\C1|SQ_X2\(3) & (!\C1|Add6~2_combout\ & !\C1|Add8~6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(3),
	datab => \C1|Add6~2_combout\,
	datad => VCC,
	cin => \C1|Add8~6\,
	combout => \C1|Add8~7_combout\,
	cout => \C1|Add8~8\);

-- Location: LCCOMB_X34_Y24_N12
\C1|Add8~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add8~9_combout\ = ((\C1|SQ_X2\(4) $ (\C1|Add6~2_combout\ $ (\C1|Add8~8\)))) # (GND)
-- \C1|Add8~10\ = CARRY((\C1|SQ_X2\(4) & (\C1|Add6~2_combout\ & !\C1|Add8~8\)) # (!\C1|SQ_X2\(4) & ((\C1|Add6~2_combout\) # (!\C1|Add8~8\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(4),
	datab => \C1|Add6~2_combout\,
	datad => VCC,
	cin => \C1|Add8~8\,
	combout => \C1|Add8~9_combout\,
	cout => \C1|Add8~10\);

-- Location: LCCOMB_X34_Y24_N14
\C1|Add8~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add8~11_combout\ = (\C1|SQ_X2\(5) & ((\C1|Add6~2_combout\ & (\C1|Add8~10\ & VCC)) # (!\C1|Add6~2_combout\ & (!\C1|Add8~10\)))) # (!\C1|SQ_X2\(5) & ((\C1|Add6~2_combout\ & (!\C1|Add8~10\)) # (!\C1|Add6~2_combout\ & ((\C1|Add8~10\) # (GND)))))
-- \C1|Add8~12\ = CARRY((\C1|SQ_X2\(5) & (!\C1|Add6~2_combout\ & !\C1|Add8~10\)) # (!\C1|SQ_X2\(5) & ((!\C1|Add8~10\) # (!\C1|Add6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(5),
	datab => \C1|Add6~2_combout\,
	datad => VCC,
	cin => \C1|Add8~10\,
	combout => \C1|Add8~11_combout\,
	cout => \C1|Add8~12\);

-- Location: LCCOMB_X34_Y24_N20
\C1|Add8~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add8~17_combout\ = ((\C1|SQ_X2\(8) $ (\C1|Add6~2_combout\ $ (!\C1|Add8~16\)))) # (GND)
-- \C1|Add8~18\ = CARRY((\C1|SQ_X2\(8) & ((\C1|Add6~2_combout\) # (!\C1|Add8~16\))) # (!\C1|SQ_X2\(8) & (\C1|Add6~2_combout\ & !\C1|Add8~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(8),
	datab => \C1|Add6~2_combout\,
	datad => VCC,
	cin => \C1|Add8~16\,
	combout => \C1|Add8~17_combout\,
	cout => \C1|Add8~18\);

-- Location: LCCOMB_X34_Y24_N0
\C1|SQ_X2[9]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X2[9]~3_combout\ = !\C1|Add8~19_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|Add8~19_combout\,
	combout => \C1|SQ_X2[9]~3_combout\);

-- Location: LCFF_X34_Y24_N1
\C1|SQ_X2[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ_X2[9]~3_combout\,
	ena => \C1|SQ_X2[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_X2\(9));

-- Location: LCFF_X34_Y24_N21
\C1|SQ_X2[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|Add8~17_combout\,
	ena => \C1|SQ_X2[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_X2\(8));

-- Location: LCFF_X34_Y24_N15
\C1|SQ_X2[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|Add8~11_combout\,
	ena => \C1|SQ_X2[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_X2\(5));

-- Location: LCCOMB_X34_Y24_N30
\C1|SQ_X2[4]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X2[4]~5_combout\ = !\C1|Add8~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|Add8~9_combout\,
	combout => \C1|SQ_X2[4]~5_combout\);

-- Location: LCFF_X34_Y24_N31
\C1|SQ_X2[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ_X2[4]~5_combout\,
	ena => \C1|SQ_X2[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_X2\(4));

-- Location: LCCOMB_X34_Y24_N28
\C1|SQ_X2[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X2[3]~6_combout\ = !\C1|Add8~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|Add8~7_combout\,
	combout => \C1|SQ_X2[3]~6_combout\);

-- Location: LCFF_X34_Y24_N29
\C1|SQ_X2[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ_X2[3]~6_combout\,
	ena => \C1|SQ_X2[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_X2\(3));

-- Location: LCCOMB_X38_Y24_N8
\C1|LessThan4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan4~1_cout\ = CARRY((!\C1|SQ_X2\(0) & \C1|HPOS\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(0),
	datab => \C1|HPOS\(0),
	datad => VCC,
	cout => \C1|LessThan4~1_cout\);

-- Location: LCCOMB_X38_Y24_N10
\C1|LessThan4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan4~3_cout\ = CARRY((\C1|SQ_X2\(1) & ((!\C1|LessThan4~1_cout\) # (!\C1|HPOS\(1)))) # (!\C1|SQ_X2\(1) & (!\C1|HPOS\(1) & !\C1|LessThan4~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(1),
	datab => \C1|HPOS\(1),
	datad => VCC,
	cin => \C1|LessThan4~1_cout\,
	cout => \C1|LessThan4~3_cout\);

-- Location: LCCOMB_X38_Y24_N12
\C1|LessThan4~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan4~5_cout\ = CARRY((\C1|HPOS\(2) & ((!\C1|LessThan4~3_cout\) # (!\C1|SQ_X2\(2)))) # (!\C1|HPOS\(2) & (!\C1|SQ_X2\(2) & !\C1|LessThan4~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(2),
	datab => \C1|SQ_X2\(2),
	datad => VCC,
	cin => \C1|LessThan4~3_cout\,
	cout => \C1|LessThan4~5_cout\);

-- Location: LCCOMB_X38_Y24_N14
\C1|LessThan4~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan4~7_cout\ = CARRY((\C1|HPOS\(3) & (!\C1|SQ_X2\(3) & !\C1|LessThan4~5_cout\)) # (!\C1|HPOS\(3) & ((!\C1|LessThan4~5_cout\) # (!\C1|SQ_X2\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(3),
	datab => \C1|SQ_X2\(3),
	datad => VCC,
	cin => \C1|LessThan4~5_cout\,
	cout => \C1|LessThan4~7_cout\);

-- Location: LCCOMB_X38_Y24_N16
\C1|LessThan4~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan4~9_cout\ = CARRY((\C1|HPOS\(4) & ((\C1|SQ_X2\(4)) # (!\C1|LessThan4~7_cout\))) # (!\C1|HPOS\(4) & (\C1|SQ_X2\(4) & !\C1|LessThan4~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(4),
	datab => \C1|SQ_X2\(4),
	datad => VCC,
	cin => \C1|LessThan4~7_cout\,
	cout => \C1|LessThan4~9_cout\);

-- Location: LCCOMB_X38_Y24_N18
\C1|LessThan4~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan4~11_cout\ = CARRY((\C1|HPOS\(5) & (\C1|SQ_X2\(5) & !\C1|LessThan4~9_cout\)) # (!\C1|HPOS\(5) & ((\C1|SQ_X2\(5)) # (!\C1|LessThan4~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(5),
	datab => \C1|SQ_X2\(5),
	datad => VCC,
	cin => \C1|LessThan4~9_cout\,
	cout => \C1|LessThan4~11_cout\);

-- Location: LCCOMB_X38_Y24_N20
\C1|LessThan4~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan4~13_cout\ = CARRY((\C1|SQ_X2\(6) & ((\C1|HPOS\(6)) # (!\C1|LessThan4~11_cout\))) # (!\C1|SQ_X2\(6) & (\C1|HPOS\(6) & !\C1|LessThan4~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(6),
	datab => \C1|HPOS\(6),
	datad => VCC,
	cin => \C1|LessThan4~11_cout\,
	cout => \C1|LessThan4~13_cout\);

-- Location: LCCOMB_X38_Y24_N22
\C1|LessThan4~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan4~15_cout\ = CARRY((\C1|SQ_X2\(7) & ((!\C1|LessThan4~13_cout\) # (!\C1|HPOS\(7)))) # (!\C1|SQ_X2\(7) & (!\C1|HPOS\(7) & !\C1|LessThan4~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(7),
	datab => \C1|HPOS\(7),
	datad => VCC,
	cin => \C1|LessThan4~13_cout\,
	cout => \C1|LessThan4~15_cout\);

-- Location: LCCOMB_X38_Y24_N24
\C1|LessThan4~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan4~17_cout\ = CARRY((\C1|HPOS\(8) & ((!\C1|LessThan4~15_cout\) # (!\C1|SQ_X2\(8)))) # (!\C1|HPOS\(8) & (!\C1|SQ_X2\(8) & !\C1|LessThan4~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(8),
	datab => \C1|SQ_X2\(8),
	datad => VCC,
	cin => \C1|LessThan4~15_cout\,
	cout => \C1|LessThan4~17_cout\);

-- Location: LCCOMB_X38_Y24_N26
\C1|LessThan4~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan4~19_cout\ = CARRY((\C1|HPOS\(9) & (!\C1|SQ_X2\(9) & !\C1|LessThan4~17_cout\)) # (!\C1|HPOS\(9) & ((!\C1|LessThan4~17_cout\) # (!\C1|SQ_X2\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(9),
	datab => \C1|SQ_X2\(9),
	datad => VCC,
	cin => \C1|LessThan4~17_cout\,
	cout => \C1|LessThan4~19_cout\);

-- Location: LCCOMB_X38_Y24_N28
\C1|LessThan4~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan4~20_combout\ = (\C1|SQ_X2\(10) & (!\C1|LessThan4~19_cout\ & \C1|HPOS\(10))) # (!\C1|SQ_X2\(10) & ((\C1|HPOS\(10)) # (!\C1|LessThan4~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X2\(10),
	datad => \C1|HPOS\(10),
	cin => \C1|LessThan4~19_cout\,
	combout => \C1|LessThan4~20_combout\);

-- Location: LCCOMB_X35_Y24_N8
\C1|DRAW2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAW2~6_combout\ = (\C1|DRAW2~3_combout\ & (!\C1|VPOS\(8) & (\C1|DRAW2~5_combout\ & \C1|LessThan4~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAW2~3_combout\,
	datab => \C1|VPOS\(8),
	datac => \C1|DRAW2~5_combout\,
	datad => \C1|LessThan4~20_combout\,
	combout => \C1|DRAW2~6_combout\);

-- Location: LCFF_X37_Y24_N21
\C1|HPOS[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|HPOS[8]~27_combout\,
	sclr => \C1|LessThan8~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|HPOS\(8));

-- Location: LCCOMB_X37_Y24_N26
\C1|process_0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|process_0~7_combout\ = (!\C1|HPOS\(4) & (!\C1|HPOS\(5) & (!\C1|HPOS\(6) & \C1|process_0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(4),
	datab => \C1|HPOS\(5),
	datac => \C1|HPOS\(6),
	datad => \C1|process_0~1_combout\,
	combout => \C1|process_0~7_combout\);

-- Location: LCCOMB_X36_Y24_N2
\C1|process_0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|process_0~8_combout\ = (\C1|HPOS\(8) & (!\C1|LessThan11~0_combout\ & ((\C1|HPOS\(7))))) # (!\C1|HPOS\(8) & (((\C1|process_0~7_combout\ & !\C1|HPOS\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan11~0_combout\,
	datab => \C1|HPOS\(8),
	datac => \C1|process_0~7_combout\,
	datad => \C1|HPOS\(7),
	combout => \C1|process_0~8_combout\);

-- Location: LCCOMB_X36_Y24_N8
\C1|process_0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|process_0~9_combout\ = (\C1|process_0~8_combout\) # ((\C1|HPOS\(9)) # (\C1|HPOS\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|process_0~8_combout\,
	datac => \C1|HPOS\(9),
	datad => \C1|HPOS\(10),
	combout => \C1|process_0~9_combout\);

-- Location: LCCOMB_X34_Y23_N10
\C1|G~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|G~0_combout\ = (\C1|process_0~9_combout\ & ((\C1|process_0~10_combout\) # ((\C1|LessThan16~0_combout\ & \C1|LessThan16~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|process_0~10_combout\,
	datab => \C1|LessThan16~0_combout\,
	datac => \C1|process_0~9_combout\,
	datad => \C1|LessThan16~1_combout\,
	combout => \C1|G~0_combout\);

-- Location: LCFF_X34_Y23_N17
\C1|INST1|ps2_code[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	sdata => \C1|INST1|ps2_word\(4),
	sload => VCC,
	ena => \C1|INST1|process_2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|INST1|ps2_code\(3));

-- Location: LCCOMB_X34_Y23_N16
\C1|Add6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add6~3_combout\ = (\C1|INST1|ps2_code\(1) & (\C1|INST1|ps2_code\(0) & (!\C1|INST1|ps2_code\(3) & !\C1|INST1|ps2_code\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|INST1|ps2_code\(1),
	datab => \C1|INST1|ps2_code\(0),
	datac => \C1|INST1|ps2_code\(3),
	datad => \C1|INST1|ps2_code\(2),
	combout => \C1|Add6~3_combout\);

-- Location: LCCOMB_X34_Y23_N22
\C1|Add6~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add6~5_combout\ = (\C1|INST1|ps2_code\(4) & ((\C1|Add6~1_combout\))) # (!\C1|INST1|ps2_code\(4) & (\C1|Add6~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|Add6~3_combout\,
	datac => \C1|INST1|ps2_code\(4),
	datad => \C1|Add6~1_combout\,
	combout => \C1|Add6~5_combout\);

-- Location: LCCOMB_X35_Y23_N0
\C1|Add6~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add6~6_combout\ = (\C1|SQ_X1\(0) & (\C1|Add6~5_combout\ $ (VCC))) # (!\C1|SQ_X1\(0) & (\C1|Add6~5_combout\ & VCC))
-- \C1|Add6~7\ = CARRY((\C1|SQ_X1\(0) & \C1|Add6~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(0),
	datab => \C1|Add6~5_combout\,
	datad => VCC,
	combout => \C1|Add6~6_combout\,
	cout => \C1|Add6~7\);

-- Location: LCCOMB_X35_Y23_N2
\C1|Add6~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add6~8_combout\ = (\C1|Add6~2_combout\ & ((\C1|SQ_X1\(1) & (\C1|Add6~7\ & VCC)) # (!\C1|SQ_X1\(1) & (!\C1|Add6~7\)))) # (!\C1|Add6~2_combout\ & ((\C1|SQ_X1\(1) & (!\C1|Add6~7\)) # (!\C1|SQ_X1\(1) & ((\C1|Add6~7\) # (GND)))))
-- \C1|Add6~9\ = CARRY((\C1|Add6~2_combout\ & (!\C1|SQ_X1\(1) & !\C1|Add6~7\)) # (!\C1|Add6~2_combout\ & ((!\C1|Add6~7\) # (!\C1|SQ_X1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add6~2_combout\,
	datab => \C1|SQ_X1\(1),
	datad => VCC,
	cin => \C1|Add6~7\,
	combout => \C1|Add6~8_combout\,
	cout => \C1|Add6~9\);

-- Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(0),
	combout => \SW~combout\(0));

-- Location: LCCOMB_X34_Y23_N30
\C1|SQ_X1[10]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X1[10]~0_combout\ = (\C1|LessThan8~1_combout\ & (\C1|LessThan9~0_combout\ & (\SW~combout\(0) & \C1|SQ_X2[10]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|LessThan8~1_combout\,
	datab => \C1|LessThan9~0_combout\,
	datac => \SW~combout\(0),
	datad => \C1|SQ_X2[10]~1_combout\,
	combout => \C1|SQ_X1[10]~0_combout\);

-- Location: LCFF_X35_Y23_N3
\C1|SQ_X1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|Add6~8_combout\,
	ena => \C1|SQ_X1[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_X1\(1));

-- Location: LCCOMB_X35_Y23_N4
\C1|Add6~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add6~10_combout\ = ((\C1|Add6~4_combout\ $ (\C1|SQ_X1\(2) $ (\C1|Add6~9\)))) # (GND)
-- \C1|Add6~11\ = CARRY((\C1|Add6~4_combout\ & ((!\C1|Add6~9\) # (!\C1|SQ_X1\(2)))) # (!\C1|Add6~4_combout\ & (!\C1|SQ_X1\(2) & !\C1|Add6~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add6~4_combout\,
	datab => \C1|SQ_X1\(2),
	datad => VCC,
	cin => \C1|Add6~9\,
	combout => \C1|Add6~10_combout\,
	cout => \C1|Add6~11\);

-- Location: LCCOMB_X35_Y23_N30
\C1|SQ_X1[2]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X1[2]~6_combout\ = !\C1|Add6~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add6~10_combout\,
	combout => \C1|SQ_X1[2]~6_combout\);

-- Location: LCFF_X35_Y23_N31
\C1|SQ_X1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ_X1[2]~6_combout\,
	ena => \C1|SQ_X1[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_X1\(2));

-- Location: LCCOMB_X35_Y23_N6
\C1|Add6~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add6~12_combout\ = (\C1|Add6~2_combout\ & ((\C1|SQ_X1\(3) & (\C1|Add6~11\ & VCC)) # (!\C1|SQ_X1\(3) & (!\C1|Add6~11\)))) # (!\C1|Add6~2_combout\ & ((\C1|SQ_X1\(3) & (!\C1|Add6~11\)) # (!\C1|SQ_X1\(3) & ((\C1|Add6~11\) # (GND)))))
-- \C1|Add6~13\ = CARRY((\C1|Add6~2_combout\ & (!\C1|SQ_X1\(3) & !\C1|Add6~11\)) # (!\C1|Add6~2_combout\ & ((!\C1|Add6~11\) # (!\C1|SQ_X1\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add6~2_combout\,
	datab => \C1|SQ_X1\(3),
	datad => VCC,
	cin => \C1|Add6~11\,
	combout => \C1|Add6~12_combout\,
	cout => \C1|Add6~13\);

-- Location: LCFF_X35_Y23_N7
\C1|SQ_X1[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|Add6~12_combout\,
	ena => \C1|SQ_X1[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_X1\(3));

-- Location: LCCOMB_X35_Y23_N8
\C1|Add6~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add6~14_combout\ = ((\C1|Add6~2_combout\ $ (\C1|SQ_X1\(4) $ (\C1|Add6~13\)))) # (GND)
-- \C1|Add6~15\ = CARRY((\C1|Add6~2_combout\ & ((!\C1|Add6~13\) # (!\C1|SQ_X1\(4)))) # (!\C1|Add6~2_combout\ & (!\C1|SQ_X1\(4) & !\C1|Add6~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add6~2_combout\,
	datab => \C1|SQ_X1\(4),
	datad => VCC,
	cin => \C1|Add6~13\,
	combout => \C1|Add6~14_combout\,
	cout => \C1|Add6~15\);

-- Location: LCCOMB_X35_Y23_N28
\C1|SQ_X1[4]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X1[4]~5_combout\ = !\C1|Add6~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add6~14_combout\,
	combout => \C1|SQ_X1[4]~5_combout\);

-- Location: LCFF_X35_Y23_N29
\C1|SQ_X1[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ_X1[4]~5_combout\,
	ena => \C1|SQ_X1[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_X1\(4));

-- Location: LCCOMB_X35_Y23_N10
\C1|Add6~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add6~16_combout\ = (\C1|Add6~2_combout\ & ((\C1|SQ_X1\(5) & (!\C1|Add6~15\)) # (!\C1|SQ_X1\(5) & (\C1|Add6~15\ & VCC)))) # (!\C1|Add6~2_combout\ & ((\C1|SQ_X1\(5) & ((\C1|Add6~15\) # (GND))) # (!\C1|SQ_X1\(5) & (!\C1|Add6~15\))))
-- \C1|Add6~17\ = CARRY((\C1|Add6~2_combout\ & (\C1|SQ_X1\(5) & !\C1|Add6~15\)) # (!\C1|Add6~2_combout\ & ((\C1|SQ_X1\(5)) # (!\C1|Add6~15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add6~2_combout\,
	datab => \C1|SQ_X1\(5),
	datad => VCC,
	cin => \C1|Add6~15\,
	combout => \C1|Add6~16_combout\,
	cout => \C1|Add6~17\);

-- Location: LCCOMB_X35_Y23_N22
\C1|SQ_X1[5]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X1[5]~4_combout\ = !\C1|Add6~16_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|Add6~16_combout\,
	combout => \C1|SQ_X1[5]~4_combout\);

-- Location: LCFF_X35_Y23_N23
\C1|SQ_X1[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ_X1[5]~4_combout\,
	ena => \C1|SQ_X1[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_X1\(5));

-- Location: LCCOMB_X35_Y23_N12
\C1|Add6~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add6~18_combout\ = ((\C1|Add6~2_combout\ $ (\C1|SQ_X1\(6) $ (\C1|Add6~17\)))) # (GND)
-- \C1|Add6~19\ = CARRY((\C1|Add6~2_combout\ & ((!\C1|Add6~17\) # (!\C1|SQ_X1\(6)))) # (!\C1|Add6~2_combout\ & (!\C1|SQ_X1\(6) & !\C1|Add6~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add6~2_combout\,
	datab => \C1|SQ_X1\(6),
	datad => VCC,
	cin => \C1|Add6~17\,
	combout => \C1|Add6~18_combout\,
	cout => \C1|Add6~19\);

-- Location: LCCOMB_X36_Y23_N10
\C1|SQ_X1[6]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X1[6]~3_combout\ = !\C1|Add6~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|Add6~18_combout\,
	combout => \C1|SQ_X1[6]~3_combout\);

-- Location: LCFF_X35_Y23_N17
\C1|SQ_X1[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	sdata => \C1|SQ_X1[6]~3_combout\,
	sload => VCC,
	ena => \C1|SQ_X1[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_X1\(6));

-- Location: LCCOMB_X35_Y23_N14
\C1|Add6~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add6~20_combout\ = (\C1|Add6~2_combout\ & ((\C1|SQ_X1\(7) & (!\C1|Add6~19\)) # (!\C1|SQ_X1\(7) & (\C1|Add6~19\ & VCC)))) # (!\C1|Add6~2_combout\ & ((\C1|SQ_X1\(7) & ((\C1|Add6~19\) # (GND))) # (!\C1|SQ_X1\(7) & (!\C1|Add6~19\))))
-- \C1|Add6~21\ = CARRY((\C1|Add6~2_combout\ & (\C1|SQ_X1\(7) & !\C1|Add6~19\)) # (!\C1|Add6~2_combout\ & ((\C1|SQ_X1\(7)) # (!\C1|Add6~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add6~2_combout\,
	datab => \C1|SQ_X1\(7),
	datad => VCC,
	cin => \C1|Add6~19\,
	combout => \C1|Add6~20_combout\,
	cout => \C1|Add6~21\);

-- Location: LCCOMB_X35_Y23_N24
\C1|SQ_X1[7]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X1[7]~2_combout\ = !\C1|Add6~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \C1|Add6~20_combout\,
	combout => \C1|SQ_X1[7]~2_combout\);

-- Location: LCFF_X35_Y23_N25
\C1|SQ_X1[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ_X1[7]~2_combout\,
	ena => \C1|SQ_X1[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_X1\(7));

-- Location: LCCOMB_X35_Y23_N16
\C1|Add6~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add6~22_combout\ = ((\C1|Add6~2_combout\ $ (\C1|SQ_X1\(8) $ (\C1|Add6~21\)))) # (GND)
-- \C1|Add6~23\ = CARRY((\C1|Add6~2_combout\ & ((!\C1|Add6~21\) # (!\C1|SQ_X1\(8)))) # (!\C1|Add6~2_combout\ & (!\C1|SQ_X1\(8) & !\C1|Add6~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add6~2_combout\,
	datab => \C1|SQ_X1\(8),
	datad => VCC,
	cin => \C1|Add6~21\,
	combout => \C1|Add6~22_combout\,
	cout => \C1|Add6~23\);

-- Location: LCCOMB_X35_Y23_N26
\C1|SQ_X1[8]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|SQ_X1[8]~1_combout\ = !\C1|Add6~22_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \C1|Add6~22_combout\,
	combout => \C1|SQ_X1[8]~1_combout\);

-- Location: LCFF_X35_Y23_N27
\C1|SQ_X1[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|SQ_X1[8]~1_combout\,
	ena => \C1|SQ_X1[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_X1\(8));

-- Location: LCCOMB_X35_Y23_N18
\C1|Add6~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add6~24_combout\ = (\C1|Add6~2_combout\ & ((\C1|SQ_X1\(9) & (\C1|Add6~23\ & VCC)) # (!\C1|SQ_X1\(9) & (!\C1|Add6~23\)))) # (!\C1|Add6~2_combout\ & ((\C1|SQ_X1\(9) & (!\C1|Add6~23\)) # (!\C1|SQ_X1\(9) & ((\C1|Add6~23\) # (GND)))))
-- \C1|Add6~25\ = CARRY((\C1|Add6~2_combout\ & (!\C1|SQ_X1\(9) & !\C1|Add6~23\)) # (!\C1|Add6~2_combout\ & ((!\C1|Add6~23\) # (!\C1|SQ_X1\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add6~2_combout\,
	datab => \C1|SQ_X1\(9),
	datad => VCC,
	cin => \C1|Add6~23\,
	combout => \C1|Add6~24_combout\,
	cout => \C1|Add6~25\);

-- Location: LCFF_X35_Y23_N19
\C1|SQ_X1[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|Add6~24_combout\,
	ena => \C1|SQ_X1[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_X1\(9));

-- Location: LCCOMB_X36_Y23_N16
\C1|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add0~2_combout\ = (\C1|SQ_X1\(4) & ((\C1|Add0~1\) # (GND))) # (!\C1|SQ_X1\(4) & (!\C1|Add0~1\))
-- \C1|Add0~3\ = CARRY((\C1|SQ_X1\(4)) # (!\C1|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X1\(4),
	datad => VCC,
	cin => \C1|Add0~1\,
	combout => \C1|Add0~2_combout\,
	cout => \C1|Add0~3\);

-- Location: LCCOMB_X36_Y23_N18
\C1|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add0~4_combout\ = (\C1|SQ_X1\(5) & (\C1|Add0~3\ $ (GND))) # (!\C1|SQ_X1\(5) & ((GND) # (!\C1|Add0~3\)))
-- \C1|Add0~5\ = CARRY((!\C1|Add0~3\) # (!\C1|SQ_X1\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X1\(5),
	datad => VCC,
	cin => \C1|Add0~3\,
	combout => \C1|Add0~4_combout\,
	cout => \C1|Add0~5\);

-- Location: LCCOMB_X36_Y23_N24
\C1|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add0~10_combout\ = (\C1|SQ_X1\(8) & ((\C1|Add0~9\) # (GND))) # (!\C1|SQ_X1\(8) & (!\C1|Add0~9\))
-- \C1|Add0~11\ = CARRY((\C1|SQ_X1\(8)) # (!\C1|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X1\(8),
	datad => VCC,
	cin => \C1|Add0~9\,
	combout => \C1|Add0~10_combout\,
	cout => \C1|Add0~11\);

-- Location: LCCOMB_X36_Y23_N26
\C1|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add0~12_combout\ = (\C1|SQ_X1\(9) & (\C1|Add0~11\ $ (GND))) # (!\C1|SQ_X1\(9) & (!\C1|Add0~11\ & VCC))
-- \C1|Add0~13\ = CARRY((\C1|SQ_X1\(9) & !\C1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|SQ_X1\(9),
	datad => VCC,
	cin => \C1|Add0~11\,
	combout => \C1|Add0~12_combout\,
	cout => \C1|Add0~13\);

-- Location: LCCOMB_X36_Y23_N28
\C1|Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add0~14_combout\ = (\C1|SQ_X1\(10) & (!\C1|Add0~13\)) # (!\C1|SQ_X1\(10) & ((\C1|Add0~13\) # (GND)))
-- \C1|Add0~15\ = CARRY((!\C1|Add0~13\) # (!\C1|SQ_X1\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(10),
	datad => VCC,
	cin => \C1|Add0~13\,
	combout => \C1|Add0~14_combout\,
	cout => \C1|Add0~15\);

-- Location: LCFF_X35_Y23_N1
\C1|SQ_X1[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|Add6~6_combout\,
	ena => \C1|SQ_X1[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_X1\(0));

-- Location: LCCOMB_X37_Y23_N2
\C1|LessThan1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan1~1_cout\ = CARRY((!\C1|HPOS\(0) & \C1|SQ_X1\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(0),
	datab => \C1|SQ_X1\(0),
	datad => VCC,
	cout => \C1|LessThan1~1_cout\);

-- Location: LCCOMB_X37_Y23_N4
\C1|LessThan1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan1~3_cout\ = CARRY((\C1|SQ_X1\(1) & (\C1|HPOS\(1) & !\C1|LessThan1~1_cout\)) # (!\C1|SQ_X1\(1) & ((\C1|HPOS\(1)) # (!\C1|LessThan1~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(1),
	datab => \C1|HPOS\(1),
	datad => VCC,
	cin => \C1|LessThan1~1_cout\,
	cout => \C1|LessThan1~3_cout\);

-- Location: LCCOMB_X37_Y23_N6
\C1|LessThan1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan1~5_cout\ = CARRY((\C1|SQ_X1\(2) & ((!\C1|LessThan1~3_cout\) # (!\C1|HPOS\(2)))) # (!\C1|SQ_X1\(2) & (!\C1|HPOS\(2) & !\C1|LessThan1~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(2),
	datab => \C1|HPOS\(2),
	datad => VCC,
	cin => \C1|LessThan1~3_cout\,
	cout => \C1|LessThan1~5_cout\);

-- Location: LCCOMB_X37_Y23_N8
\C1|LessThan1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan1~7_cout\ = CARRY((\C1|Add0~0_combout\ & (\C1|HPOS\(3) & !\C1|LessThan1~5_cout\)) # (!\C1|Add0~0_combout\ & ((\C1|HPOS\(3)) # (!\C1|LessThan1~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~0_combout\,
	datab => \C1|HPOS\(3),
	datad => VCC,
	cin => \C1|LessThan1~5_cout\,
	cout => \C1|LessThan1~7_cout\);

-- Location: LCCOMB_X37_Y23_N10
\C1|LessThan1~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan1~9_cout\ = CARRY((\C1|HPOS\(4) & (\C1|Add0~2_combout\ & !\C1|LessThan1~7_cout\)) # (!\C1|HPOS\(4) & ((\C1|Add0~2_combout\) # (!\C1|LessThan1~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(4),
	datab => \C1|Add0~2_combout\,
	datad => VCC,
	cin => \C1|LessThan1~7_cout\,
	cout => \C1|LessThan1~9_cout\);

-- Location: LCCOMB_X37_Y23_N12
\C1|LessThan1~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan1~11_cout\ = CARRY((\C1|HPOS\(5) & ((!\C1|LessThan1~9_cout\) # (!\C1|Add0~4_combout\))) # (!\C1|HPOS\(5) & (!\C1|Add0~4_combout\ & !\C1|LessThan1~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(5),
	datab => \C1|Add0~4_combout\,
	datad => VCC,
	cin => \C1|LessThan1~9_cout\,
	cout => \C1|LessThan1~11_cout\);

-- Location: LCCOMB_X37_Y23_N14
\C1|LessThan1~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan1~13_cout\ = CARRY((\C1|Add0~6_combout\ & ((!\C1|LessThan1~11_cout\) # (!\C1|HPOS\(6)))) # (!\C1|Add0~6_combout\ & (!\C1|HPOS\(6) & !\C1|LessThan1~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~6_combout\,
	datab => \C1|HPOS\(6),
	datad => VCC,
	cin => \C1|LessThan1~11_cout\,
	cout => \C1|LessThan1~13_cout\);

-- Location: LCCOMB_X37_Y23_N16
\C1|LessThan1~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan1~15_cout\ = CARRY((\C1|Add0~8_combout\ & (\C1|HPOS\(7) & !\C1|LessThan1~13_cout\)) # (!\C1|Add0~8_combout\ & ((\C1|HPOS\(7)) # (!\C1|LessThan1~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|Add0~8_combout\,
	datab => \C1|HPOS\(7),
	datad => VCC,
	cin => \C1|LessThan1~13_cout\,
	cout => \C1|LessThan1~15_cout\);

-- Location: LCCOMB_X37_Y23_N18
\C1|LessThan1~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan1~17_cout\ = CARRY((\C1|HPOS\(8) & (\C1|Add0~10_combout\ & !\C1|LessThan1~15_cout\)) # (!\C1|HPOS\(8) & ((\C1|Add0~10_combout\) # (!\C1|LessThan1~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(8),
	datab => \C1|Add0~10_combout\,
	datad => VCC,
	cin => \C1|LessThan1~15_cout\,
	cout => \C1|LessThan1~17_cout\);

-- Location: LCCOMB_X37_Y23_N20
\C1|LessThan1~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan1~19_cout\ = CARRY((\C1|HPOS\(9) & ((!\C1|LessThan1~17_cout\) # (!\C1|Add0~12_combout\))) # (!\C1|HPOS\(9) & (!\C1|Add0~12_combout\ & !\C1|LessThan1~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(9),
	datab => \C1|Add0~12_combout\,
	datad => VCC,
	cin => \C1|LessThan1~17_cout\,
	cout => \C1|LessThan1~19_cout\);

-- Location: LCCOMB_X37_Y23_N22
\C1|LessThan1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan1~20_combout\ = (\C1|HPOS\(10) & (!\C1|LessThan1~19_cout\ & \C1|Add0~14_combout\)) # (!\C1|HPOS\(10) & ((\C1|Add0~14_combout\) # (!\C1|LessThan1~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \C1|HPOS\(10),
	datad => \C1|Add0~14_combout\,
	cin => \C1|LessThan1~19_cout\,
	combout => \C1|LessThan1~20_combout\);

-- Location: LCCOMB_X36_Y23_N30
\C1|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add0~16_combout\ = !\C1|Add0~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \C1|Add0~15\,
	combout => \C1|Add0~16_combout\);

-- Location: LCCOMB_X35_Y23_N20
\C1|Add6~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|Add6~26_combout\ = \C1|SQ_X1\(10) $ (\C1|Add6~25\ $ (!\C1|Add6~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(10),
	datad => \C1|Add6~2_combout\,
	cin => \C1|Add6~25\,
	combout => \C1|Add6~26_combout\);

-- Location: LCFF_X35_Y23_N21
\C1|SQ_X1[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|Add6~26_combout\,
	ena => \C1|SQ_X1[10]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|SQ_X1\(10));

-- Location: LCCOMB_X38_Y23_N10
\C1|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan0~1_cout\ = CARRY((!\C1|SQ_X1\(0) & \C1|HPOS\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(0),
	datab => \C1|HPOS\(0),
	datad => VCC,
	cout => \C1|LessThan0~1_cout\);

-- Location: LCCOMB_X38_Y23_N12
\C1|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan0~3_cout\ = CARRY((\C1|HPOS\(1) & (\C1|SQ_X1\(1) & !\C1|LessThan0~1_cout\)) # (!\C1|HPOS\(1) & ((\C1|SQ_X1\(1)) # (!\C1|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(1),
	datab => \C1|SQ_X1\(1),
	datad => VCC,
	cin => \C1|LessThan0~1_cout\,
	cout => \C1|LessThan0~3_cout\);

-- Location: LCCOMB_X38_Y23_N14
\C1|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan0~5_cout\ = CARRY((\C1|SQ_X1\(2) & ((\C1|HPOS\(2)) # (!\C1|LessThan0~3_cout\))) # (!\C1|SQ_X1\(2) & (\C1|HPOS\(2) & !\C1|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(2),
	datab => \C1|HPOS\(2),
	datad => VCC,
	cin => \C1|LessThan0~3_cout\,
	cout => \C1|LessThan0~5_cout\);

-- Location: LCCOMB_X38_Y23_N16
\C1|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan0~7_cout\ = CARRY((\C1|SQ_X1\(3) & ((!\C1|LessThan0~5_cout\) # (!\C1|HPOS\(3)))) # (!\C1|SQ_X1\(3) & (!\C1|HPOS\(3) & !\C1|LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(3),
	datab => \C1|HPOS\(3),
	datad => VCC,
	cin => \C1|LessThan0~5_cout\,
	cout => \C1|LessThan0~7_cout\);

-- Location: LCCOMB_X38_Y23_N18
\C1|LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan0~9_cout\ = CARRY((\C1|HPOS\(4) & ((\C1|SQ_X1\(4)) # (!\C1|LessThan0~7_cout\))) # (!\C1|HPOS\(4) & (\C1|SQ_X1\(4) & !\C1|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(4),
	datab => \C1|SQ_X1\(4),
	datad => VCC,
	cin => \C1|LessThan0~7_cout\,
	cout => \C1|LessThan0~9_cout\);

-- Location: LCCOMB_X38_Y23_N20
\C1|LessThan0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan0~11_cout\ = CARRY((\C1|SQ_X1\(5) & (!\C1|HPOS\(5) & !\C1|LessThan0~9_cout\)) # (!\C1|SQ_X1\(5) & ((!\C1|LessThan0~9_cout\) # (!\C1|HPOS\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(5),
	datab => \C1|HPOS\(5),
	datad => VCC,
	cin => \C1|LessThan0~9_cout\,
	cout => \C1|LessThan0~11_cout\);

-- Location: LCCOMB_X38_Y23_N22
\C1|LessThan0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan0~13_cout\ = CARRY((\C1|SQ_X1\(6) & ((\C1|HPOS\(6)) # (!\C1|LessThan0~11_cout\))) # (!\C1|SQ_X1\(6) & (\C1|HPOS\(6) & !\C1|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(6),
	datab => \C1|HPOS\(6),
	datad => VCC,
	cin => \C1|LessThan0~11_cout\,
	cout => \C1|LessThan0~13_cout\);

-- Location: LCCOMB_X38_Y23_N24
\C1|LessThan0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan0~15_cout\ = CARRY((\C1|HPOS\(7) & (!\C1|SQ_X1\(7) & !\C1|LessThan0~13_cout\)) # (!\C1|HPOS\(7) & ((!\C1|LessThan0~13_cout\) # (!\C1|SQ_X1\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(7),
	datab => \C1|SQ_X1\(7),
	datad => VCC,
	cin => \C1|LessThan0~13_cout\,
	cout => \C1|LessThan0~15_cout\);

-- Location: LCCOMB_X38_Y23_N26
\C1|LessThan0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan0~17_cout\ = CARRY((\C1|SQ_X1\(8) & ((\C1|HPOS\(8)) # (!\C1|LessThan0~15_cout\))) # (!\C1|SQ_X1\(8) & (\C1|HPOS\(8) & !\C1|LessThan0~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|SQ_X1\(8),
	datab => \C1|HPOS\(8),
	datad => VCC,
	cin => \C1|LessThan0~15_cout\,
	cout => \C1|LessThan0~17_cout\);

-- Location: LCCOMB_X38_Y23_N28
\C1|LessThan0~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan0~19_cout\ = CARRY((\C1|HPOS\(9) & (\C1|SQ_X1\(9) & !\C1|LessThan0~17_cout\)) # (!\C1|HPOS\(9) & ((\C1|SQ_X1\(9)) # (!\C1|LessThan0~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(9),
	datab => \C1|SQ_X1\(9),
	datad => VCC,
	cin => \C1|LessThan0~17_cout\,
	cout => \C1|LessThan0~19_cout\);

-- Location: LCCOMB_X38_Y23_N30
\C1|LessThan0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|LessThan0~20_combout\ = (\C1|HPOS\(10) & ((!\C1|SQ_X1\(10)) # (!\C1|LessThan0~19_cout\))) # (!\C1|HPOS\(10) & (!\C1|LessThan0~19_cout\ & !\C1|SQ_X1\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \C1|HPOS\(10),
	datad => \C1|SQ_X1\(10),
	cin => \C1|LessThan0~19_cout\,
	combout => \C1|LessThan0~20_combout\);

-- Location: LCCOMB_X37_Y23_N0
\C1|DRAW1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|DRAW1~5_combout\ = (\C1|DRAW1~4_combout\ & (\C1|LessThan0~20_combout\ & ((\C1|LessThan1~20_combout\) # (\C1|Add0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|DRAW1~4_combout\,
	datab => \C1|LessThan1~20_combout\,
	datac => \C1|Add0~16_combout\,
	datad => \C1|LessThan0~20_combout\,
	combout => \C1|DRAW1~5_combout\);

-- Location: LCCOMB_X35_Y24_N0
\C1|R~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|R~0_combout\ = (\C1|G~0_combout\ & ((\C1|DRAW2~6_combout\) # (\C1|DRAW1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \C1|DRAW2~6_combout\,
	datac => \C1|G~0_combout\,
	datad => \C1|DRAW1~5_combout\,
	combout => \C1|R~0_combout\);

-- Location: LCFF_X35_Y24_N1
\C1|R[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|R~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|R\(0));

-- Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(1),
	combout => \SW~combout\(1));

-- Location: LCCOMB_X34_Y23_N20
\C1|G~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|G~1_combout\ = (!\SW~combout\(0) & \C1|DRAW1~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW~combout\(0),
	datad => \C1|DRAW1~5_combout\,
	combout => \C1|G~1_combout\);

-- Location: LCCOMB_X34_Y23_N24
\C1|G~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \C1|G~2_combout\ = (\C1|G~0_combout\ & ((\C1|DRAW2~6_combout\ & (!\SW~combout\(1))) # (!\C1|DRAW2~6_combout\ & ((\C1|G~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \C1|G~0_combout\,
	datab => \SW~combout\(1),
	datac => \C1|G~1_combout\,
	datad => \C1|DRAW2~6_combout\,
	combout => \C1|G~2_combout\);

-- Location: LCFF_X34_Y23_N25
\C1|B[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \C|altpll_0|sd1|_clk0~clkctrl_outclk\,
	datain => \C1|G~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \C1|B\(0));

-- Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLOCK_24[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CLOCK_24(1));

-- Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_HS~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \C1|HSYNC~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_HS);

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_VS~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \C1|VSYNC~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_VS);

-- Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEY(0));

-- Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEY(1));

-- Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEY(2));

-- Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\KEY[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_KEY(3));

-- Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_R[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \C1|R\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_R(0));

-- Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_R[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \C1|R\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_R(1));

-- Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_R[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \C1|R\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_R(2));

-- Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_R[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \C1|R\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_R(3));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_B[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \C1|B\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_B(0));

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_B[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \C1|B\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_B(1));

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_B[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \C1|B\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_B(2));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_B[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \C1|B\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_B(3));

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_G[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \C1|B\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_G(0));

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_G[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \C1|B\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_G(1));

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_G[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \C1|B\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_G(2));

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\VGA_G[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \C1|B\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_VGA_G(3));
END structure;


