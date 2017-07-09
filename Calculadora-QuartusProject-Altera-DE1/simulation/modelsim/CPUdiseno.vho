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
-- VERSION "Version 12.1 Build 243 01/31/2013 Service Pack 1 SJ Web Edition"

-- DATE "05/12/2017 17:51:21"

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

ENTITY 	cpu IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	Pe0 : IN std_logic_vector(7 DOWNTO 0);
	Pe1 : IN std_logic_vector(7 DOWNTO 0);
	Pe2 : IN std_logic_vector(7 DOWNTO 0);
	Pe3 : IN std_logic_vector(7 DOWNTO 0);
	ps0 : OUT std_logic_vector(7 DOWNTO 0);
	ps1 : OUT std_logic_vector(7 DOWNTO 0);
	ps2 : OUT std_logic_vector(7 DOWNTO 0);
	ps3 : OUT std_logic_vector(7 DOWNTO 0);
	PC_out : OUT std_logic_vector(9 DOWNTO 0)
	);
END cpu;

-- Design Ports Information
-- Pe1[3]	=>  Location: PIN_V15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Pe1[4]	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Pe1[5]	=>  Location: PIN_AA4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Pe1[6]	=>  Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Pe1[7]	=>  Location: PIN_U8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Pe2[0]	=>  Location: PIN_G8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Pe2[1]	=>  Location: PIN_C18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Pe2[2]	=>  Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Pe2[3]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Pe2[4]	=>  Location: PIN_AB3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Pe2[5]	=>  Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Pe2[6]	=>  Location: PIN_AA19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Pe2[7]	=>  Location: PIN_AB4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ps0[0]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ps0[1]	=>  Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ps0[2]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ps0[3]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ps0[4]	=>  Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ps0[5]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ps0[6]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ps0[7]	=>  Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ps1[0]	=>  Location: PIN_M19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ps1[1]	=>  Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ps1[2]	=>  Location: PIN_N21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ps1[3]	=>  Location: PIN_E21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ps1[4]	=>  Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ps1[5]	=>  Location: PIN_F22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ps1[6]	=>  Location: PIN_N22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ps1[7]	=>  Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ps2[0]	=>  Location: PIN_N15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ps2[1]	=>  Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ps2[2]	=>  Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ps2[3]	=>  Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ps2[4]	=>  Location: PIN_J19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ps2[5]	=>  Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ps2[6]	=>  Location: PIN_L18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ps2[7]	=>  Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ps3[0]	=>  Location: PIN_M18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ps3[1]	=>  Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ps3[2]	=>  Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ps3[3]	=>  Location: PIN_H18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ps3[4]	=>  Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ps3[5]	=>  Location: PIN_J15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ps3[6]	=>  Location: PIN_P15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ps3[7]	=>  Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_out[0]	=>  Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_out[1]	=>  Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_out[2]	=>  Location: PIN_U19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_out[3]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_out[4]	=>  Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_out[5]	=>  Location: PIN_V19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_out[6]	=>  Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_out[7]	=>  Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_out[8]	=>  Location: PIN_R18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- PC_out[9]	=>  Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reset	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Pe3[0]	=>  Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Pe1[0]	=>  Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Pe0[0]	=>  Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Pe3[1]	=>  Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Pe1[1]	=>  Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Pe0[1]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Pe3[2]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Pe1[2]	=>  Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Pe0[2]	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Pe3[3]	=>  Location: PIN_K20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Pe0[3]	=>  Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Pe3[4]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Pe0[4]	=>  Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Pe3[5]	=>  Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Pe0[5]	=>  Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Pe3[6]	=>  Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Pe0[6]	=>  Location: PIN_U11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Pe3[7]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Pe0[7]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF cpu IS
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
SIGNAL ww_reset : std_logic;
SIGNAL ww_Pe0 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Pe1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Pe2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Pe3 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ps0 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ps1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ps2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ps3 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_PC_out : std_logic_vector(9 DOWNTO 0);
SIGNAL \reset~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \camino|banco|regb~16_regout\ : std_logic;
SIGNAL \camino|banco|regb~24_regout\ : std_logic;
SIGNAL \camino|banco|regb~112_regout\ : std_logic;
SIGNAL \camino|memory|mem~22_combout\ : std_logic;
SIGNAL \camino|banco|regb~17_regout\ : std_logic;
SIGNAL \camino|banco|regb~1_regout\ : std_logic;
SIGNAL \camino|banco|regb~148_combout\ : std_logic;
SIGNAL \camino|banco|regb~10_regout\ : std_logic;
SIGNAL \camino|banco|regb~19_regout\ : std_logic;
SIGNAL \camino|banco|regb~115_regout\ : std_logic;
SIGNAL \camino|banco|regb~76_regout\ : std_logic;
SIGNAL \camino|banco|regb~68_regout\ : std_logic;
SIGNAL \camino|banco|regb~168_combout\ : std_logic;
SIGNAL \camino|banco|regb~169_combout\ : std_logic;
SIGNAL \camino|banco|regb~52_regout\ : std_logic;
SIGNAL \camino|banco|regb~4_regout\ : std_logic;
SIGNAL \camino|banco|regb~28_regout\ : std_logic;
SIGNAL \camino|banco|regb~69_regout\ : std_logic;
SIGNAL \camino|banco|regb~188_combout\ : std_logic;
SIGNAL \camino|banco|regb~189_combout\ : std_logic;
SIGNAL \camino|banco|regb~6_regout\ : std_logic;
SIGNAL \camino|banco|regb~118_regout\ : std_logic;
SIGNAL \camino|banco|regb~79_regout\ : std_logic;
SIGNAL \camino|banco|regb~111_regout\ : std_logic;
SIGNAL \camino|banco|regb~87_regout\ : std_logic;
SIGNAL \camino|banco|regb~23_regout\ : std_logic;
SIGNAL \camino|banco|regb~7_regout\ : std_logic;
SIGNAL \camino|banco|regb~103_regout\ : std_logic;
SIGNAL \camino|banco|regb~63_regout\ : std_logic;
SIGNAL \camino|banco|regb~95_regout\ : std_logic;
SIGNAL \camino|banco|regb~31_regout\ : std_logic;
SIGNAL \camino|banco|regb~205_combout\ : std_logic;
SIGNAL \camino|banco|regb~127_regout\ : std_logic;
SIGNAL \camino|banco|regb~206_combout\ : std_logic;
SIGNAL \camino|sumadorPC|Add0~2_combout\ : std_logic;
SIGNAL \camino|sumadorPC|Add0~8_combout\ : std_logic;
SIGNAL \camino|sumadorPC|Add0~9_combout\ : std_logic;
SIGNAL \camino|alu0|Add0~13_combout\ : std_logic;
SIGNAL \camino|banco|regb~244_combout\ : std_logic;
SIGNAL \camino|alu0|Add0~19_combout\ : std_logic;
SIGNAL \camino|banco|regb~270_combout\ : std_logic;
SIGNAL \camino|banco|regb~271_combout\ : std_logic;
SIGNAL \camino|banco|regb~294_combout\ : std_logic;
SIGNAL \camino|banco|regb~295_combout\ : std_logic;
SIGNAL \camino|banco|regb~297_combout\ : std_logic;
SIGNAL \camino|banco|regb~298_combout\ : std_logic;
SIGNAL \camino|banco|regb~307_combout\ : std_logic;
SIGNAL \camino|banco|regb~308_combout\ : std_logic;
SIGNAL \camino|banco|regb~310_combout\ : std_logic;
SIGNAL \camino|banco|regb~311_combout\ : std_logic;
SIGNAL \camino|banco|regb~312_combout\ : std_logic;
SIGNAL \camino|banco|regb~313_combout\ : std_logic;
SIGNAL \camino|banco|regb~314_combout\ : std_logic;
SIGNAL \camino|banco|regb~315_combout\ : std_logic;
SIGNAL \camino|banco|regb~316_combout\ : std_logic;
SIGNAL \camino|banco|regb~317_combout\ : std_logic;
SIGNAL \camino|banco|regb~318_combout\ : std_logic;
SIGNAL \camino|banco|regb~319_combout\ : std_logic;
SIGNAL \camino|banco|rd1[7]~7_combout\ : std_logic;
SIGNAL \uc0|enable_jal~2_combout\ : std_logic;
SIGNAL \camino|alu0|Add0~41_combout\ : std_logic;
SIGNAL \camino|alu0|Add0~43_combout\ : std_logic;
SIGNAL \camino|alu0|Add0~45_combout\ : std_logic;
SIGNAL \camino|banco|regb~16feeder_combout\ : std_logic;
SIGNAL \camino|banco|regb~112feeder_combout\ : std_logic;
SIGNAL \camino|banco|regb~1feeder_combout\ : std_logic;
SIGNAL \camino|banco|regb~115feeder_combout\ : std_logic;
SIGNAL \camino|banco|regb~28feeder_combout\ : std_logic;
SIGNAL \camino|banco|regb~68feeder_combout\ : std_logic;
SIGNAL \camino|banco|regb~76feeder_combout\ : std_logic;
SIGNAL \camino|banco|regb~6feeder_combout\ : std_logic;
SIGNAL \camino|banco|regb~95feeder_combout\ : std_logic;
SIGNAL \camino|banco|regb~31feeder_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \reset~clkctrl_outclk\ : std_logic;
SIGNAL \camino|sumadorPC|Add0~10_combout\ : std_logic;
SIGNAL \camino|PC|q[0]~10_combout\ : std_logic;
SIGNAL \camino|PC|q[8]~28_combout\ : std_logic;
SIGNAL \camino|memory|mem~8_combout\ : std_logic;
SIGNAL \camino|PC|q[1]~14_combout\ : std_logic;
SIGNAL \camino|memory|mem~32_combout\ : std_logic;
SIGNAL \camino|memory|mem~31_combout\ : std_logic;
SIGNAL \camino|memory|mem~33_combout\ : std_logic;
SIGNAL \camino|memory|mem~45_combout\ : std_logic;
SIGNAL \camino|memory|mem~23_combout\ : std_logic;
SIGNAL \camino|memory|mem~24_combout\ : std_logic;
SIGNAL \camino|memory|mem~20_combout\ : std_logic;
SIGNAL \camino|memory|mem~21_combout\ : std_logic;
SIGNAL \camino|banco|Equal0~0_combout\ : std_logic;
SIGNAL \uc0|s_inm~0_combout\ : std_logic;
SIGNAL \camino|memory|mem~29_combout\ : std_logic;
SIGNAL \camino|memory|mem~28_combout\ : std_logic;
SIGNAL \camino|memory|mem~30_combout\ : std_logic;
SIGNAL \camino|decodificador|sal0~3_combout\ : std_logic;
SIGNAL \uc0|s_epe~0_combout\ : std_logic;
SIGNAL \uc0|s_epe~1_combout\ : std_logic;
SIGNAL \camino|epe|y[0]~1_combout\ : std_logic;
SIGNAL \camino|epe|y[0]~0_combout\ : std_logic;
SIGNAL \camino|epe|y[0]~2_combout\ : std_logic;
SIGNAL \camino|epe|y[1]~6_combout\ : std_logic;
SIGNAL \camino|epe|y[1]~7_combout\ : std_logic;
SIGNAL \camino|epe|y[1]~8_combout\ : std_logic;
SIGNAL \camino|banco|regb~121feeder_combout\ : std_logic;
SIGNAL \camino|memory|mem~34_combout\ : std_logic;
SIGNAL \camino|memory|mem~35_combout\ : std_logic;
SIGNAL \camino|memory|mem~37_combout\ : std_logic;
SIGNAL \camino|memory|mem~36_combout\ : std_logic;
SIGNAL \camino|memory|mem~38_combout\ : std_logic;
SIGNAL \camino|banco|regb~248_combout\ : std_logic;
SIGNAL \uc0|WideOr0~0_combout\ : std_logic;
SIGNAL \camino|banco|regb~249_combout\ : std_logic;
SIGNAL \camino|banco|regb~121_regout\ : std_logic;
SIGNAL \camino|banco|regb~232_combout\ : std_logic;
SIGNAL \camino|banco|regb~233_combout\ : std_logic;
SIGNAL \camino|banco|regb~57_regout\ : std_logic;
SIGNAL \camino|banco|regb~238_combout\ : std_logic;
SIGNAL \camino|banco|regb~239_combout\ : std_logic;
SIGNAL \camino|banco|regb~25_regout\ : std_logic;
SIGNAL \camino|banco|regb~224_combout\ : std_logic;
SIGNAL \camino|banco|regb~225_combout\ : std_logic;
SIGNAL \camino|banco|regb~89_regout\ : std_logic;
SIGNAL \camino|banco|regb~257_combout\ : std_logic;
SIGNAL \camino|banco|regb~258_combout\ : std_logic;
SIGNAL \camino|banco|regb~73feeder_combout\ : std_logic;
SIGNAL \camino|banco|regb~220_combout\ : std_logic;
SIGNAL \camino|banco|regb~221_combout\ : std_logic;
SIGNAL \camino|banco|regb~73_regout\ : std_logic;
SIGNAL \camino|banco|regb~240_combout\ : std_logic;
SIGNAL \camino|banco|regb~241_combout\ : std_logic;
SIGNAL \camino|banco|regb~9_regout\ : std_logic;
SIGNAL \camino|banco|regb~250_combout\ : std_logic;
SIGNAL \camino|banco|regb~251_combout\ : std_logic;
SIGNAL \camino|banco|regb~228_combout\ : std_logic;
SIGNAL \camino|banco|regb~229_combout\ : std_logic;
SIGNAL \camino|banco|regb~49_regout\ : std_logic;
SIGNAL \camino|banco|regb~218_combout\ : std_logic;
SIGNAL \camino|banco|regb~219_combout\ : std_logic;
SIGNAL \camino|banco|regb~81_regout\ : std_logic;
SIGNAL \camino|banco|regb~252_combout\ : std_logic;
SIGNAL \camino|banco|regb~253_combout\ : std_logic;
SIGNAL \camino|memory|mem~41_combout\ : std_logic;
SIGNAL \camino|memory|mem~42_combout\ : std_logic;
SIGNAL \camino|banco|regb~222_combout\ : std_logic;
SIGNAL \camino|banco|regb~223_combout\ : std_logic;
SIGNAL \camino|banco|regb~65_regout\ : std_logic;
SIGNAL \camino|banco|regb~246_combout\ : std_logic;
SIGNAL \camino|banco|regb~247_combout\ : std_logic;
SIGNAL \camino|banco|regb~97_regout\ : std_logic;
SIGNAL \camino|banco|regb~33feeder_combout\ : std_logic;
SIGNAL \camino|banco|regb~230_combout\ : std_logic;
SIGNAL \camino|banco|regb~231_combout\ : std_logic;
SIGNAL \camino|banco|regb~33_regout\ : std_logic;
SIGNAL \camino|banco|regb~254_combout\ : std_logic;
SIGNAL \camino|banco|regb~255_combout\ : std_logic;
SIGNAL \camino|banco|regb~256_combout\ : std_logic;
SIGNAL \camino|banco|regb~259_combout\ : std_logic;
SIGNAL \camino|banco|rd1[1]~1_combout\ : std_logic;
SIGNAL \camino|alu0|Add0~15_cout\ : std_logic;
SIGNAL \camino|alu0|Add0~16_combout\ : std_logic;
SIGNAL \camino|alu0|Add0~18_combout\ : std_logic;
SIGNAL \camino|epe|y[0]~3_combout\ : std_logic;
SIGNAL \camino|epe|y[0]~4_combout\ : std_logic;
SIGNAL \camino|epe|y[0]~5_combout\ : std_logic;
SIGNAL \camino|banco|regb~48feeder_combout\ : std_logic;
SIGNAL \camino|banco|regb~48_regout\ : std_logic;
SIGNAL \camino|banco|regb~80_regout\ : std_logic;
SIGNAL \camino|banco|regb~208_combout\ : std_logic;
SIGNAL \camino|banco|regb~209_combout\ : std_logic;
SIGNAL \camino|banco|regb~120feeder_combout\ : std_logic;
SIGNAL \camino|banco|regb~120_regout\ : std_logic;
SIGNAL \camino|banco|regb~88feeder_combout\ : std_logic;
SIGNAL \camino|banco|regb~88_regout\ : std_logic;
SIGNAL \camino|banco|regb~215_combout\ : std_logic;
SIGNAL \camino|banco|regb~216_combout\ : std_logic;
SIGNAL \camino|banco|regb~72_regout\ : std_logic;
SIGNAL \camino|banco|regb~226_combout\ : std_logic;
SIGNAL \camino|banco|regb~227_combout\ : std_logic;
SIGNAL \camino|banco|regb~40_regout\ : std_logic;
SIGNAL \camino|banco|regb~210_combout\ : std_logic;
SIGNAL \camino|banco|regb~211_combout\ : std_logic;
SIGNAL \camino|banco|regb~96feeder_combout\ : std_logic;
SIGNAL \camino|banco|regb~96_regout\ : std_logic;
SIGNAL \camino|banco|regb~32feeder_combout\ : std_logic;
SIGNAL \camino|banco|regb~32_regout\ : std_logic;
SIGNAL \camino|banco|regb~212_combout\ : std_logic;
SIGNAL \camino|banco|regb~213_combout\ : std_logic;
SIGNAL \camino|banco|regb~214_combout\ : std_logic;
SIGNAL \camino|banco|regb~217_combout\ : std_logic;
SIGNAL \camino|banco|rd1[0]~0_combout\ : std_logic;
SIGNAL \camino|alu0|Add0~17\ : std_logic;
SIGNAL \camino|alu0|Add0~20_combout\ : std_logic;
SIGNAL \camino|alu0|Add0~22_combout\ : std_logic;
SIGNAL \camino|epe|y[2]~9_combout\ : std_logic;
SIGNAL \camino|epe|y[2]~10_combout\ : std_logic;
SIGNAL \camino|epe|y[2]~11_combout\ : std_logic;
SIGNAL \camino|banco|regb~42_regout\ : std_logic;
SIGNAL \camino|banco|regb~58_regout\ : std_logic;
SIGNAL \camino|banco|regb~50_regout\ : std_logic;
SIGNAL \camino|banco|regb~34_regout\ : std_logic;
SIGNAL \camino|banco|regb~262_combout\ : std_logic;
SIGNAL \camino|banco|regb~263_combout\ : std_logic;
SIGNAL \camino|banco|regb~234_combout\ : std_logic;
SIGNAL \camino|banco|regb~235_combout\ : std_logic;
SIGNAL \camino|banco|regb~18_regout\ : std_logic;
SIGNAL \camino|banco|regb~236_combout\ : std_logic;
SIGNAL \camino|banco|regb~237_combout\ : std_logic;
SIGNAL \camino|banco|regb~2_regout\ : std_logic;
SIGNAL \camino|banco|regb~264_combout\ : std_logic;
SIGNAL \camino|banco|regb~265_combout\ : std_logic;
SIGNAL \camino|banco|regb~266_combout\ : std_logic;
SIGNAL \camino|banco|regb~82_regout\ : std_logic;
SIGNAL \camino|banco|regb~74_regout\ : std_logic;
SIGNAL \camino|banco|regb~260_combout\ : std_logic;
SIGNAL \camino|banco|regb~261_combout\ : std_logic;
SIGNAL \camino|banco|regb~122feeder_combout\ : std_logic;
SIGNAL \camino|banco|regb~122_regout\ : std_logic;
SIGNAL \camino|banco|regb~242_combout\ : std_logic;
SIGNAL \camino|banco|regb~243_combout\ : std_logic;
SIGNAL \camino|banco|regb~106_regout\ : std_logic;
SIGNAL \camino|banco|regb~245_combout\ : std_logic;
SIGNAL \camino|banco|regb~114_regout\ : std_logic;
SIGNAL \camino|banco|regb~267_combout\ : std_logic;
SIGNAL \camino|banco|regb~268_combout\ : std_logic;
SIGNAL \camino|banco|regb~269_combout\ : std_logic;
SIGNAL \camino|banco|rd1[2]~2_combout\ : std_logic;
SIGNAL \camino|alu0|Add0~21\ : std_logic;
SIGNAL \camino|alu0|Add0~23_combout\ : std_logic;
SIGNAL \camino|alu0|Add0~25_combout\ : std_logic;
SIGNAL \camino|memory|mem~43_combout\ : std_logic;
SIGNAL \camino|epe|y[5]~12_combout\ : std_logic;
SIGNAL \camino|epe|y[5]~13_combout\ : std_logic;
SIGNAL \camino|epe|y[3]~14_combout\ : std_logic;
SIGNAL \camino|banco|regb~123_regout\ : std_logic;
SIGNAL \camino|banco|regb~91_regout\ : std_logic;
SIGNAL \camino|banco|regb~27_regout\ : std_logic;
SIGNAL \camino|banco|regb~59_regout\ : std_logic;
SIGNAL \camino|banco|regb~277_combout\ : std_logic;
SIGNAL \camino|banco|regb~278_combout\ : std_logic;
SIGNAL \camino|banco|regb~35feeder_combout\ : std_logic;
SIGNAL \camino|banco|regb~35_regout\ : std_logic;
SIGNAL \camino|banco|regb~99_regout\ : std_logic;
SIGNAL \camino|banco|regb~67_regout\ : std_logic;
SIGNAL \camino|banco|regb~274_combout\ : std_logic;
SIGNAL \camino|banco|regb~275_combout\ : std_logic;
SIGNAL \camino|banco|regb~107feeder_combout\ : std_logic;
SIGNAL \camino|banco|regb~107_regout\ : std_logic;
SIGNAL \camino|banco|regb~43_regout\ : std_logic;
SIGNAL \camino|banco|regb~75_regout\ : std_logic;
SIGNAL \camino|banco|regb~272_combout\ : std_logic;
SIGNAL \camino|banco|regb~273_combout\ : std_logic;
SIGNAL \camino|banco|regb~276_combout\ : std_logic;
SIGNAL \camino|banco|regb~279_combout\ : std_logic;
SIGNAL \camino|banco|rd1[3]~3_combout\ : std_logic;
SIGNAL \camino|memory|mem~13_combout\ : std_logic;
SIGNAL \camino|memory|mem~14_combout\ : std_logic;
SIGNAL \camino|memory|mem~11_combout\ : std_logic;
SIGNAL \camino|memory|mem~12_combout\ : std_logic;
SIGNAL \camino|memory|mem~9_combout\ : std_logic;
SIGNAL \camino|memory|mem~6_combout\ : std_logic;
SIGNAL \camino|memory|mem~7_combout\ : std_logic;
SIGNAL \camino|memory|mem~10_combout\ : std_logic;
SIGNAL \camino|banco|Equal1~0_combout\ : std_logic;
SIGNAL \camino|banco|regb~165_combout\ : std_logic;
SIGNAL \camino|banco|regb~166_combout\ : std_logic;
SIGNAL \camino|banco|regb~11feeder_combout\ : std_logic;
SIGNAL \camino|banco|regb~11_regout\ : std_logic;
SIGNAL \camino|banco|regb~158_combout\ : std_logic;
SIGNAL \camino|banco|regb~159_combout\ : std_logic;
SIGNAL \camino|banco|regb~3feeder_combout\ : std_logic;
SIGNAL \camino|banco|regb~3_regout\ : std_logic;
SIGNAL \camino|banco|regb~162_combout\ : std_logic;
SIGNAL \camino|banco|regb~163_combout\ : std_logic;
SIGNAL \camino|banco|regb~83_regout\ : std_logic;
SIGNAL \camino|banco|regb~51_regout\ : std_logic;
SIGNAL \camino|banco|regb~160_combout\ : std_logic;
SIGNAL \camino|banco|regb~161_combout\ : std_logic;
SIGNAL \camino|banco|regb~164_combout\ : std_logic;
SIGNAL \camino|banco|regb~167_combout\ : std_logic;
SIGNAL \camino|alu0|Add0~42_combout\ : std_logic;
SIGNAL \camino|alu0|Add0~24\ : std_logic;
SIGNAL \camino|alu0|Add0~26_combout\ : std_logic;
SIGNAL \camino|alu0|Add0~28_combout\ : std_logic;
SIGNAL \uc0|zer~3_combout\ : std_logic;
SIGNAL \camino|memory|mem~4_combout\ : std_logic;
SIGNAL \camino|memory|mem~3_combout\ : std_logic;
SIGNAL \camino|memory|mem~5_combout\ : std_logic;
SIGNAL \camino|epe|y[7]~18_combout\ : std_logic;
SIGNAL \camino|banco|regb~47feeder_combout\ : std_logic;
SIGNAL \camino|banco|regb~47_regout\ : std_logic;
SIGNAL \camino|banco|regb~15_regout\ : std_logic;
SIGNAL \camino|banco|regb~198_combout\ : std_logic;
SIGNAL \camino|banco|regb~199_combout\ : std_logic;
SIGNAL \camino|banco|regb~71_regout\ : std_logic;
SIGNAL \camino|banco|regb~39_regout\ : std_logic;
SIGNAL \camino|banco|regb~202_combout\ : std_logic;
SIGNAL \camino|banco|regb~203_combout\ : std_logic;
SIGNAL \camino|banco|regb~119feeder_combout\ : std_logic;
SIGNAL \camino|banco|regb~119_regout\ : std_logic;
SIGNAL \camino|banco|regb~55_regout\ : std_logic;
SIGNAL \camino|banco|regb~200_combout\ : std_logic;
SIGNAL \camino|banco|regb~201_combout\ : std_logic;
SIGNAL \camino|banco|regb~204_combout\ : std_logic;
SIGNAL \camino|banco|regb~207_combout\ : std_logic;
SIGNAL \camino|alu0|Add0~46_combout\ : std_logic;
SIGNAL \camino|banco|regb~53_regout\ : std_logic;
SIGNAL \camino|banco|regb~21_regout\ : std_logic;
SIGNAL \camino|banco|regb~292_combout\ : std_logic;
SIGNAL \camino|banco|regb~293_combout\ : std_logic;
SIGNAL \camino|banco|regb~296_combout\ : std_logic;
SIGNAL \camino|banco|regb~77_regout\ : std_logic;
SIGNAL \camino|banco|regb~109_regout\ : std_logic;
SIGNAL \camino|banco|regb~45_regout\ : std_logic;
SIGNAL \camino|banco|regb~13_regout\ : std_logic;
SIGNAL \camino|banco|regb~290_combout\ : std_logic;
SIGNAL \camino|banco|regb~291_combout\ : std_logic;
SIGNAL \camino|banco|regb~299_combout\ : std_logic;
SIGNAL \camino|banco|rd1[5]~5_combout\ : std_logic;
SIGNAL \camino|alu0|Add0~27\ : std_logic;
SIGNAL \camino|alu0|Add0~29_combout\ : std_logic;
SIGNAL \camino|alu0|Add0~31_combout\ : std_logic;
SIGNAL \camino|epe|y[4]~15_combout\ : std_logic;
SIGNAL \camino|banco|regb~116_regout\ : std_logic;
SIGNAL \camino|banco|regb~108_regout\ : std_logic;
SIGNAL \camino|banco|regb~287_combout\ : std_logic;
SIGNAL \camino|banco|regb~288_combout\ : std_logic;
SIGNAL \camino|banco|regb~60_regout\ : std_logic;
SIGNAL \camino|banco|regb~44_regout\ : std_logic;
SIGNAL \camino|banco|regb~280_combout\ : std_logic;
SIGNAL \camino|banco|regb~281_combout\ : std_logic;
SIGNAL \camino|banco|regb~12_regout\ : std_logic;
SIGNAL \camino|banco|regb~20feeder_combout\ : std_logic;
SIGNAL \camino|banco|regb~20_regout\ : std_logic;
SIGNAL \camino|banco|regb~284_combout\ : std_logic;
SIGNAL \camino|banco|regb~285_combout\ : std_logic;
SIGNAL \camino|banco|regb~92feeder_combout\ : std_logic;
SIGNAL \camino|banco|regb~92_regout\ : std_logic;
SIGNAL \camino|banco|regb~84_regout\ : std_logic;
SIGNAL \camino|banco|regb~282_combout\ : std_logic;
SIGNAL \camino|banco|regb~283_combout\ : std_logic;
SIGNAL \camino|banco|regb~286_combout\ : std_logic;
SIGNAL \camino|banco|regb~289_combout\ : std_logic;
SIGNAL \camino|banco|rd1[4]~4_combout\ : std_logic;
SIGNAL \camino|alu0|Add0~30\ : std_logic;
SIGNAL \camino|alu0|Add0~32_combout\ : std_logic;
SIGNAL \camino|alu0|Add0~34_combout\ : std_logic;
SIGNAL \camino|epe|y[5]~16_combout\ : std_logic;
SIGNAL \camino|banco|regb~93feeder_combout\ : std_logic;
SIGNAL \camino|banco|regb~93_regout\ : std_logic;
SIGNAL \camino|banco|regb~125_regout\ : std_logic;
SIGNAL \camino|banco|regb~61feeder_combout\ : std_logic;
SIGNAL \camino|banco|regb~61_regout\ : std_logic;
SIGNAL \camino|banco|regb~29_regout\ : std_logic;
SIGNAL \camino|banco|regb~185_combout\ : std_logic;
SIGNAL \camino|banco|regb~186_combout\ : std_logic;
SIGNAL \camino|banco|regb~180_combout\ : std_logic;
SIGNAL \camino|banco|regb~181_combout\ : std_logic;
SIGNAL \camino|banco|regb~37_regout\ : std_logic;
SIGNAL \camino|banco|regb~101_regout\ : std_logic;
SIGNAL \camino|banco|regb~5feeder_combout\ : std_logic;
SIGNAL \camino|banco|regb~5_regout\ : std_logic;
SIGNAL \camino|banco|regb~182_combout\ : std_logic;
SIGNAL \camino|banco|regb~183_combout\ : std_logic;
SIGNAL \camino|banco|regb~184_combout\ : std_logic;
SIGNAL \camino|banco|regb~117_regout\ : std_logic;
SIGNAL \camino|banco|regb~85_regout\ : std_logic;
SIGNAL \camino|banco|regb~178_combout\ : std_logic;
SIGNAL \camino|banco|regb~179_combout\ : std_logic;
SIGNAL \camino|banco|regb~187_combout\ : std_logic;
SIGNAL \camino|alu0|Add0~44_combout\ : std_logic;
SIGNAL \camino|alu0|Add0~33\ : std_logic;
SIGNAL \camino|alu0|Add0~35_combout\ : std_logic;
SIGNAL \camino|alu0|Add0~37_combout\ : std_logic;
SIGNAL \camino|epe|y[6]~17_combout\ : std_logic;
SIGNAL \camino|banco|regb~30_regout\ : std_logic;
SIGNAL \camino|banco|regb~14_regout\ : std_logic;
SIGNAL \camino|banco|regb~304_combout\ : std_logic;
SIGNAL \camino|banco|regb~305_combout\ : std_logic;
SIGNAL \camino|banco|regb~46feeder_combout\ : std_logic;
SIGNAL \camino|banco|regb~46_regout\ : std_logic;
SIGNAL \camino|banco|regb~62_regout\ : std_logic;
SIGNAL \camino|banco|regb~54_regout\ : std_logic;
SIGNAL \camino|banco|regb~38_regout\ : std_logic;
SIGNAL \camino|banco|regb~302_combout\ : std_logic;
SIGNAL \camino|banco|regb~303_combout\ : std_logic;
SIGNAL \camino|banco|regb~306_combout\ : std_logic;
SIGNAL \camino|banco|regb~94_regout\ : std_logic;
SIGNAL \camino|banco|regb~70_regout\ : std_logic;
SIGNAL \camino|banco|regb~300_combout\ : std_logic;
SIGNAL \camino|banco|regb~301_combout\ : std_logic;
SIGNAL \camino|banco|regb~309_combout\ : std_logic;
SIGNAL \camino|banco|rd1[6]~6_combout\ : std_logic;
SIGNAL \camino|alu0|Add0~36\ : std_logic;
SIGNAL \camino|alu0|Add0~38_combout\ : std_logic;
SIGNAL \camino|alu0|Add0~40_combout\ : std_logic;
SIGNAL \uc0|zer~2_combout\ : std_logic;
SIGNAL \uc0|zer~4_combout\ : std_logic;
SIGNAL \camino|PC|q[1]~12_combout\ : std_logic;
SIGNAL \camino|PC|q[1]~13_combout\ : std_logic;
SIGNAL \camino|memory|mem~39_combout\ : std_logic;
SIGNAL \camino|memory|mem~40_combout\ : std_logic;
SIGNAL \camino|PC|q[7]~26_combout\ : std_logic;
SIGNAL \camino|memory|mem~2_combout\ : std_logic;
SIGNAL \camino|memory|mem~44_combout\ : std_logic;
SIGNAL \camino|sumadorPC|Add0~1_combout\ : std_logic;
SIGNAL \camino|PC|q[0]~11\ : std_logic;
SIGNAL \camino|PC|q[1]~15\ : std_logic;
SIGNAL \camino|PC|q[2]~17\ : std_logic;
SIGNAL \camino|PC|q[3]~19\ : std_logic;
SIGNAL \camino|PC|q[4]~20_combout\ : std_logic;
SIGNAL \camino|sumadorPC|Add0~5_combout\ : std_logic;
SIGNAL \camino|PC|q[4]~21\ : std_logic;
SIGNAL \camino|PC|q[5]~22_combout\ : std_logic;
SIGNAL \camino|sumadorPC|Add0~6_combout\ : std_logic;
SIGNAL \camino|PC|q[5]~23\ : std_logic;
SIGNAL \camino|PC|q[6]~24_combout\ : std_logic;
SIGNAL \camino|sumadorPC|Add0~7_combout\ : std_logic;
SIGNAL \camino|PC|q[6]~25\ : std_logic;
SIGNAL \camino|PC|q[7]~27\ : std_logic;
SIGNAL \camino|PC|q[8]~29\ : std_logic;
SIGNAL \camino|PC|q[9]~30_combout\ : std_logic;
SIGNAL \camino|memory|mem~15_combout\ : std_logic;
SIGNAL \camino|memory|mem~16_combout\ : std_logic;
SIGNAL \camino|memory|mem~46_combout\ : std_logic;
SIGNAL \uc0|s_jal~0_combout\ : std_logic;
SIGNAL \camino|sumadorPC|Add0~3_combout\ : std_logic;
SIGNAL \camino|PC|q[2]~16_combout\ : std_logic;
SIGNAL \camino|memory|mem~17_combout\ : std_logic;
SIGNAL \camino|memory|mem~18_combout\ : std_logic;
SIGNAL \camino|memory|mem~19_combout\ : std_logic;
SIGNAL \uc0|enable_jal~3_combout\ : std_logic;
SIGNAL \camino|sumadorPC|Add0~4_combout\ : std_logic;
SIGNAL \camino|PC|q[3]~18_combout\ : std_logic;
SIGNAL \camino|memory|mem~25_combout\ : std_logic;
SIGNAL \camino|memory|mem~26_combout\ : std_logic;
SIGNAL \camino|memory|mem~27_combout\ : std_logic;
SIGNAL \uc0|s_sps~0_combout\ : std_logic;
SIGNAL \camino|banco|regb~64_regout\ : std_logic;
SIGNAL \camino|banco|regb~128_combout\ : std_logic;
SIGNAL \camino|banco|regb~129_combout\ : std_logic;
SIGNAL \camino|banco|regb~104_regout\ : std_logic;
SIGNAL \camino|banco|regb~135_combout\ : std_logic;
SIGNAL \camino|banco|regb~136_combout\ : std_logic;
SIGNAL \camino|banco|regb~0feeder_combout\ : std_logic;
SIGNAL \camino|banco|regb~0_regout\ : std_logic;
SIGNAL \camino|banco|regb~8_regout\ : std_logic;
SIGNAL \camino|banco|regb~132_combout\ : std_logic;
SIGNAL \camino|banco|regb~133_combout\ : std_logic;
SIGNAL \camino|banco|regb~56_regout\ : std_logic;
SIGNAL \camino|banco|regb~130_combout\ : std_logic;
SIGNAL \camino|banco|regb~131_combout\ : std_logic;
SIGNAL \camino|banco|regb~134_combout\ : std_logic;
SIGNAL \camino|banco|regb~137_combout\ : std_logic;
SIGNAL \camino|sps|y[0]~0_combout\ : std_logic;
SIGNAL \camino|port_sal0|q[0]~feeder_combout\ : std_logic;
SIGNAL \uc0|dec_enable~0_combout\ : std_logic;
SIGNAL \camino|decodificador|sal0~2_combout\ : std_logic;
SIGNAL \camino|banco|regb~145_combout\ : std_logic;
SIGNAL \camino|banco|regb~146_combout\ : std_logic;
SIGNAL \camino|banco|regb~142_combout\ : std_logic;
SIGNAL \camino|banco|regb~143_combout\ : std_logic;
SIGNAL \camino|banco|regb~105feeder_combout\ : std_logic;
SIGNAL \camino|banco|regb~105_regout\ : std_logic;
SIGNAL \camino|banco|regb~41_regout\ : std_logic;
SIGNAL \camino|banco|regb~140_combout\ : std_logic;
SIGNAL \camino|banco|regb~141_combout\ : std_logic;
SIGNAL \camino|banco|regb~144_combout\ : std_logic;
SIGNAL \camino|banco|regb~113_regout\ : std_logic;
SIGNAL \camino|banco|regb~138_combout\ : std_logic;
SIGNAL \camino|banco|regb~139_combout\ : std_logic;
SIGNAL \camino|banco|regb~147_combout\ : std_logic;
SIGNAL \camino|sps|y[1]~1_combout\ : std_logic;
SIGNAL \camino|port_sal0|q[1]~feeder_combout\ : std_logic;
SIGNAL \camino|banco|regb~149_combout\ : std_logic;
SIGNAL \camino|banco|regb~98_regout\ : std_logic;
SIGNAL \camino|banco|regb~155_combout\ : std_logic;
SIGNAL \camino|banco|regb~156_combout\ : std_logic;
SIGNAL \camino|banco|regb~90feeder_combout\ : std_logic;
SIGNAL \camino|banco|regb~90_regout\ : std_logic;
SIGNAL \camino|banco|regb~66_regout\ : std_logic;
SIGNAL \camino|banco|regb~150_combout\ : std_logic;
SIGNAL \camino|banco|regb~151_combout\ : std_logic;
SIGNAL \camino|banco|regb~26feeder_combout\ : std_logic;
SIGNAL \camino|banco|regb~26_regout\ : std_logic;
SIGNAL \camino|banco|regb~152_combout\ : std_logic;
SIGNAL \camino|banco|regb~153_combout\ : std_logic;
SIGNAL \camino|banco|regb~154_combout\ : std_logic;
SIGNAL \camino|banco|regb~157_combout\ : std_logic;
SIGNAL \camino|sps|y[2]~2_combout\ : std_logic;
SIGNAL \camino|port_sal0|q[2]~feeder_combout\ : std_logic;
SIGNAL \camino|sps|y[3]~3_combout\ : std_logic;
SIGNAL \camino|port_sal0|q[3]~feeder_combout\ : std_logic;
SIGNAL \camino|banco|regb~124_regout\ : std_logic;
SIGNAL \camino|banco|regb~100feeder_combout\ : std_logic;
SIGNAL \camino|banco|regb~100_regout\ : std_logic;
SIGNAL \camino|banco|regb~175_combout\ : std_logic;
SIGNAL \camino|banco|regb~176_combout\ : std_logic;
SIGNAL \camino|banco|regb~172_combout\ : std_logic;
SIGNAL \camino|banco|regb~173_combout\ : std_logic;
SIGNAL \camino|banco|regb~36_regout\ : std_logic;
SIGNAL \camino|banco|regb~170_combout\ : std_logic;
SIGNAL \camino|banco|regb~171_combout\ : std_logic;
SIGNAL \camino|banco|regb~174_combout\ : std_logic;
SIGNAL \camino|banco|regb~177_combout\ : std_logic;
SIGNAL \camino|sps|y[4]~4_combout\ : std_logic;
SIGNAL \camino|sps|y[5]~5_combout\ : std_logic;
SIGNAL \camino|port_sal0|q[5]~feeder_combout\ : std_logic;
SIGNAL \camino|banco|regb~126_regout\ : std_logic;
SIGNAL \camino|banco|regb~110_regout\ : std_logic;
SIGNAL \camino|banco|regb~102feeder_combout\ : std_logic;
SIGNAL \camino|banco|regb~102_regout\ : std_logic;
SIGNAL \camino|banco|regb~195_combout\ : std_logic;
SIGNAL \camino|banco|regb~196_combout\ : std_logic;
SIGNAL \camino|banco|regb~22_regout\ : std_logic;
SIGNAL \camino|banco|regb~192_combout\ : std_logic;
SIGNAL \camino|banco|regb~193_combout\ : std_logic;
SIGNAL \camino|banco|regb~78_regout\ : std_logic;
SIGNAL \camino|banco|regb~86feeder_combout\ : std_logic;
SIGNAL \camino|banco|regb~86_regout\ : std_logic;
SIGNAL \camino|banco|regb~190_combout\ : std_logic;
SIGNAL \camino|banco|regb~191_combout\ : std_logic;
SIGNAL \camino|banco|regb~194_combout\ : std_logic;
SIGNAL \camino|banco|regb~197_combout\ : std_logic;
SIGNAL \camino|sps|y[6]~6_combout\ : std_logic;
SIGNAL \camino|port_sal0|q[6]~feeder_combout\ : std_logic;
SIGNAL \camino|sps|y[7]~7_combout\ : std_logic;
SIGNAL \camino|port_sal0|q[7]~feeder_combout\ : std_logic;
SIGNAL \camino|port_sal1|q[0]~feeder_combout\ : std_logic;
SIGNAL \camino|decodificador|sal1~0_combout\ : std_logic;
SIGNAL \camino|decodificador|sal1~1_combout\ : std_logic;
SIGNAL \camino|port_sal1|q[1]~feeder_combout\ : std_logic;
SIGNAL \camino|port_sal1|q[2]~feeder_combout\ : std_logic;
SIGNAL \camino|port_sal1|q[3]~feeder_combout\ : std_logic;
SIGNAL \camino|port_sal1|q[4]~feeder_combout\ : std_logic;
SIGNAL \camino|port_sal1|q[5]~feeder_combout\ : std_logic;
SIGNAL \camino|port_sal1|q[6]~feeder_combout\ : std_logic;
SIGNAL \camino|port_sal1|q[7]~feeder_combout\ : std_logic;
SIGNAL \camino|port_sal2|q[0]~feeder_combout\ : std_logic;
SIGNAL \camino|decodificador|sal2~0_combout\ : std_logic;
SIGNAL \camino|port_sal2|q[1]~feeder_combout\ : std_logic;
SIGNAL \camino|port_sal2|q[4]~feeder_combout\ : std_logic;
SIGNAL \camino|decodificador|sal3~0_combout\ : std_logic;
SIGNAL \camino|port_sal3|q[2]~feeder_combout\ : std_logic;
SIGNAL \camino|port_sal3|q[3]~feeder_combout\ : std_logic;
SIGNAL \camino|port_sal3|q[4]~feeder_combout\ : std_logic;
SIGNAL \camino|port_sal3|q[7]~feeder_combout\ : std_logic;
SIGNAL \camino|port_sal1|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \camino|port_sal2|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \camino|port_sal3|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \camino|epe|y\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \camino|PC|q\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \camino|reg_jal|q\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \camino|port_sal0|q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Pe3~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Pe1~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Pe0~combout\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_Pe0 <= Pe0;
ww_Pe1 <= Pe1;
ww_Pe2 <= Pe2;
ww_Pe3 <= Pe3;
ps0 <= ww_ps0;
ps1 <= ww_ps1;
ps2 <= ww_ps2;
ps3 <= ww_ps3;
PC_out <= ww_PC_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reset~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \reset~combout\);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

-- Location: LCFF_X37_Y17_N27
\camino|banco|regb~16\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \camino|banco|regb~16feeder_combout\,
	ena => \camino|banco|regb~235_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~16_regout\);

-- Location: LCFF_X38_Y18_N17
\camino|banco|regb~24\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \camino|epe|y[0]~5_combout\,
	sload => VCC,
	ena => \camino|banco|regb~239_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~24_regout\);

-- Location: LCFF_X36_Y18_N25
\camino|banco|regb~112\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \camino|banco|regb~112feeder_combout\,
	ena => \camino|banco|regb~245_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~112_regout\);

-- Location: LCCOMB_X38_Y18_N10
\camino|memory|mem~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|memory|mem~22_combout\ = (!\camino|PC|q\(0) & ((\camino|PC|q\(2) & ((\camino|PC|q\(4)))) # (!\camino|PC|q\(2) & (\camino|PC|q\(1) & !\camino|PC|q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|PC|q\(2),
	datab => \camino|PC|q\(1),
	datac => \camino|PC|q\(0),
	datad => \camino|PC|q\(4),
	combout => \camino|memory|mem~22_combout\);

-- Location: LCFF_X37_Y17_N5
\camino|banco|regb~17\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \camino|epe|y[1]~8_combout\,
	sload => VCC,
	ena => \camino|banco|regb~235_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~17_regout\);

-- Location: LCFF_X39_Y18_N13
\camino|banco|regb~1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \camino|banco|regb~1feeder_combout\,
	ena => \camino|banco|regb~237_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~1_regout\);

-- Location: LCCOMB_X38_Y16_N20
\camino|banco|regb~148\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~148_combout\ = (\camino|memory|mem~5_combout\ & (((\camino|banco|regb~42_regout\) # (\camino|memory|mem~10_combout\)))) # (!\camino|memory|mem~5_combout\ & (\camino|banco|regb~34_regout\ & ((!\camino|memory|mem~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~5_combout\,
	datab => \camino|banco|regb~34_regout\,
	datac => \camino|banco|regb~42_regout\,
	datad => \camino|memory|mem~10_combout\,
	combout => \camino|banco|regb~148_combout\);

-- Location: LCFF_X36_Y17_N7
\camino|banco|regb~10\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \camino|epe|y[2]~11_combout\,
	sload => VCC,
	ena => \camino|banco|regb~241_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~10_regout\);

-- Location: LCFF_X37_Y17_N23
\camino|banco|regb~19\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \camino|epe|y\(3),
	ena => \camino|banco|regb~235_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~19_regout\);

-- Location: LCFF_X36_Y18_N17
\camino|banco|regb~115\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \camino|banco|regb~115feeder_combout\,
	ena => \camino|banco|regb~245_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~115_regout\);

-- Location: LCFF_X37_Y18_N7
\camino|banco|regb~76\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \camino|banco|regb~76feeder_combout\,
	ena => \camino|banco|regb~221_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~76_regout\);

-- Location: LCFF_X37_Y20_N25
\camino|banco|regb~68\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \camino|banco|regb~68feeder_combout\,
	ena => \camino|banco|regb~223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~68_regout\);

-- Location: LCCOMB_X37_Y18_N16
\camino|banco|regb~168\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~168_combout\ = (\camino|memory|mem~5_combout\ & ((\camino|banco|regb~76_regout\) # ((\camino|memory|mem~10_combout\)))) # (!\camino|memory|mem~5_combout\ & (((\camino|banco|regb~68_regout\ & !\camino|memory|mem~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|regb~76_regout\,
	datab => \camino|banco|regb~68_regout\,
	datac => \camino|memory|mem~5_combout\,
	datad => \camino|memory|mem~10_combout\,
	combout => \camino|banco|regb~168_combout\);

-- Location: LCCOMB_X37_Y18_N14
\camino|banco|regb~169\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~169_combout\ = (\camino|banco|regb~168_combout\ & ((\camino|banco|regb~92_regout\) # ((!\camino|memory|mem~10_combout\)))) # (!\camino|banco|regb~168_combout\ & (((\camino|banco|regb~84_regout\ & \camino|memory|mem~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|regb~92_regout\,
	datab => \camino|banco|regb~84_regout\,
	datac => \camino|banco|regb~168_combout\,
	datad => \camino|memory|mem~10_combout\,
	combout => \camino|banco|regb~169_combout\);

-- Location: LCFF_X36_Y15_N13
\camino|banco|regb~52\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \camino|epe|y\(4),
	sload => VCC,
	ena => \camino|banco|regb~229_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~52_regout\);

-- Location: LCFF_X39_Y19_N21
\camino|banco|regb~4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \camino|epe|y\(4),
	sload => VCC,
	ena => \camino|banco|regb~237_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~4_regout\);

-- Location: LCFF_X38_Y19_N25
\camino|banco|regb~28\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \camino|banco|regb~28feeder_combout\,
	ena => \camino|banco|regb~239_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~28_regout\);

-- Location: LCFF_X37_Y20_N21
\camino|banco|regb~69\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \camino|epe|y\(5),
	sload => VCC,
	ena => \camino|banco|regb~223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~69_regout\);

-- Location: LCCOMB_X36_Y15_N30
\camino|banco|regb~188\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~188_combout\ = (\camino|memory|mem~5_combout\ & (((\camino|banco|regb~46_regout\) # (\camino|memory|mem~10_combout\)))) # (!\camino|memory|mem~5_combout\ & (\camino|banco|regb~38_regout\ & ((!\camino|memory|mem~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|regb~38_regout\,
	datab => \camino|banco|regb~46_regout\,
	datac => \camino|memory|mem~5_combout\,
	datad => \camino|memory|mem~10_combout\,
	combout => \camino|banco|regb~188_combout\);

-- Location: LCCOMB_X36_Y15_N20
\camino|banco|regb~189\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~189_combout\ = (\camino|memory|mem~10_combout\ & ((\camino|banco|regb~188_combout\ & (\camino|banco|regb~62_regout\)) # (!\camino|banco|regb~188_combout\ & ((\camino|banco|regb~54_regout\))))) # (!\camino|memory|mem~10_combout\ & 
-- (((\camino|banco|regb~188_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~10_combout\,
	datab => \camino|banco|regb~62_regout\,
	datac => \camino|banco|regb~54_regout\,
	datad => \camino|banco|regb~188_combout\,
	combout => \camino|banco|regb~189_combout\);

-- Location: LCFF_X36_Y20_N9
\camino|banco|regb~6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \camino|banco|regb~6feeder_combout\,
	ena => \camino|banco|regb~237_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~6_regout\);

-- Location: LCFF_X36_Y18_N31
\camino|banco|regb~118\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \camino|epe|y\(6),
	ena => \camino|banco|regb~245_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~118_regout\);

-- Location: LCFF_X34_Y18_N19
\camino|banco|regb~79\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \camino|epe|y\(7),
	sload => VCC,
	ena => \camino|banco|regb~221_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~79_regout\);

-- Location: LCFF_X36_Y17_N5
\camino|banco|regb~111\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \camino|epe|y\(7),
	sload => VCC,
	ena => \camino|banco|regb~243_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~111_regout\);

-- Location: LCFF_X35_Y19_N5
\camino|banco|regb~87\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \camino|epe|y\(7),
	ena => \camino|banco|regb~219_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~87_regout\);

-- Location: LCFF_X35_Y17_N27
\camino|banco|regb~23\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \camino|epe|y\(7),
	sload => VCC,
	ena => \camino|banco|regb~235_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~23_regout\);

-- Location: LCFF_X35_Y18_N19
\camino|banco|regb~7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \camino|epe|y\(7),
	sload => VCC,
	ena => \camino|banco|regb~237_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~7_regout\);

-- Location: LCFF_X35_Y18_N5
\camino|banco|regb~103\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \camino|epe|y\(7),
	sload => VCC,
	ena => \camino|banco|regb~247_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~103_regout\);

-- Location: LCFF_X35_Y20_N31
\camino|banco|regb~63\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \camino|epe|y\(7),
	sload => VCC,
	ena => \camino|banco|regb~233_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~63_regout\);

-- Location: LCFF_X34_Y19_N11
\camino|banco|regb~95\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \camino|banco|regb~95feeder_combout\,
	ena => \camino|banco|regb~225_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~95_regout\);

-- Location: LCFF_X34_Y19_N25
\camino|banco|regb~31\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \camino|banco|regb~31feeder_combout\,
	ena => \camino|banco|regb~239_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~31_regout\);

-- Location: LCCOMB_X34_Y17_N6
\camino|banco|regb~205\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~205_combout\ = (\camino|memory|mem~12_combout\ & (((\camino|banco|regb~95_regout\) # (\camino|memory|mem~14_combout\)))) # (!\camino|memory|mem~12_combout\ & (\camino|banco|regb~31_regout\ & ((!\camino|memory|mem~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|regb~31_regout\,
	datab => \camino|banco|regb~95_regout\,
	datac => \camino|memory|mem~12_combout\,
	datad => \camino|memory|mem~14_combout\,
	combout => \camino|banco|regb~205_combout\);

-- Location: LCFF_X35_Y20_N17
\camino|banco|regb~127\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \camino|epe|y\(7),
	sload => VCC,
	ena => \camino|banco|regb~249_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~127_regout\);

-- Location: LCCOMB_X34_Y17_N20
\camino|banco|regb~206\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~206_combout\ = (\camino|banco|regb~205_combout\ & (((\camino|banco|regb~127_regout\) # (!\camino|memory|mem~14_combout\)))) # (!\camino|banco|regb~205_combout\ & (\camino|banco|regb~63_regout\ & ((\camino|memory|mem~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|regb~205_combout\,
	datab => \camino|banco|regb~63_regout\,
	datac => \camino|banco|regb~127_regout\,
	datad => \camino|memory|mem~14_combout\,
	combout => \camino|banco|regb~206_combout\);

-- Location: LCFF_X35_Y16_N17
\camino|reg_jal|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \camino|PC|q\(1),
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \uc0|enable_jal~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|reg_jal|q\(1));

-- Location: LCCOMB_X35_Y16_N16
\camino|sumadorPC|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|sumadorPC|Add0~2_combout\ = (\uc0|s_jal~0_combout\ & ((\camino|reg_jal|q\(1)))) # (!\uc0|s_jal~0_combout\ & (\camino|PC|q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \camino|PC|q\(1),
	datac => \camino|reg_jal|q\(1),
	datad => \uc0|s_jal~0_combout\,
	combout => \camino|sumadorPC|Add0~2_combout\);

-- Location: LCFF_X35_Y16_N1
\camino|reg_jal|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \camino|PC|q\(7),
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \uc0|enable_jal~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|reg_jal|q\(7));

-- Location: LCCOMB_X35_Y16_N0
\camino|sumadorPC|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|sumadorPC|Add0~8_combout\ = (\camino|PC|q\(7)) # ((\camino|reg_jal|q\(7) & \uc0|s_jal~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|PC|q\(7),
	datac => \camino|reg_jal|q\(7),
	datad => \uc0|s_jal~0_combout\,
	combout => \camino|sumadorPC|Add0~8_combout\);

-- Location: LCFF_X35_Y16_N7
\camino|reg_jal|q[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \camino|PC|q\(8),
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \uc0|enable_jal~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|reg_jal|q\(8));

-- Location: LCCOMB_X35_Y16_N6
\camino|sumadorPC|Add0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|sumadorPC|Add0~9_combout\ = (\camino|PC|q\(8)) # ((\camino|reg_jal|q\(8) & \uc0|s_jal~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|PC|q\(8),
	datac => \camino|reg_jal|q\(8),
	datad => \uc0|s_jal~0_combout\,
	combout => \camino|sumadorPC|Add0~9_combout\);

-- Location: LCCOMB_X38_Y16_N4
\camino|alu0|Add0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|alu0|Add0~13_combout\ = (\camino|memory|mem~23_combout\ & (\camino|PC|q\(9) $ (((\camino|banco|Equal1~0_combout\) # (!\camino|banco|regb~137_combout\))))) # (!\camino|memory|mem~23_combout\ & (((!\camino|banco|Equal1~0_combout\ & 
-- \camino|banco|regb~137_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~23_combout\,
	datab => \camino|PC|q\(9),
	datac => \camino|banco|Equal1~0_combout\,
	datad => \camino|banco|regb~137_combout\,
	combout => \camino|alu0|Add0~13_combout\);

-- Location: LCCOMB_X35_Y20_N10
\camino|banco|regb~244\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~244_combout\ = (!\camino|memory|mem~35_combout\ & (\camino|memory|mem~40_combout\ & (\camino|memory|mem~42_combout\ & \camino|memory|mem~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~35_combout\,
	datab => \camino|memory|mem~40_combout\,
	datac => \camino|memory|mem~42_combout\,
	datad => \camino|memory|mem~38_combout\,
	combout => \camino|banco|regb~244_combout\);

-- Location: LCCOMB_X38_Y18_N26
\camino|alu0|Add0~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|alu0|Add0~19_combout\ = (\camino|PC|q\(9) & (((!\camino|banco|Equal1~0_combout\ & \camino|banco|regb~147_combout\)))) # (!\camino|PC|q\(9) & (\camino|memory|mem~23_combout\ $ (((!\camino|banco|Equal1~0_combout\ & 
-- \camino|banco|regb~147_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|PC|q\(9),
	datab => \camino|memory|mem~23_combout\,
	datac => \camino|banco|Equal1~0_combout\,
	datad => \camino|banco|regb~147_combout\,
	combout => \camino|alu0|Add0~19_combout\);

-- Location: LCCOMB_X37_Y17_N2
\camino|banco|regb~270\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~270_combout\ = (\camino|memory|mem~44_combout\ & (((\camino|banco|regb~51_regout\) # (\camino|memory|mem~45_combout\)))) # (!\camino|memory|mem~44_combout\ & (\camino|banco|regb~19_regout\ & ((!\camino|memory|mem~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~44_combout\,
	datab => \camino|banco|regb~19_regout\,
	datac => \camino|banco|regb~51_regout\,
	datad => \camino|memory|mem~45_combout\,
	combout => \camino|banco|regb~270_combout\);

-- Location: LCCOMB_X37_Y17_N20
\camino|banco|regb~271\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~271_combout\ = (\camino|memory|mem~45_combout\ & ((\camino|banco|regb~270_combout\ & ((\camino|banco|regb~115_regout\))) # (!\camino|banco|regb~270_combout\ & (\camino|banco|regb~83_regout\)))) # (!\camino|memory|mem~45_combout\ & 
-- (((\camino|banco|regb~270_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|regb~83_regout\,
	datab => \camino|banco|regb~115_regout\,
	datac => \camino|memory|mem~45_combout\,
	datad => \camino|banco|regb~270_combout\,
	combout => \camino|banco|regb~271_combout\);

-- Location: LCCOMB_X36_Y16_N30
\camino|banco|regb~294\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~294_combout\ = (\camino|memory|mem~45_combout\ & (((\camino|memory|mem~44_combout\)))) # (!\camino|memory|mem~45_combout\ & ((\camino|memory|mem~44_combout\ & ((\camino|banco|regb~37_regout\))) # (!\camino|memory|mem~44_combout\ & 
-- (\camino|banco|regb~5_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|regb~5_regout\,
	datab => \camino|banco|regb~37_regout\,
	datac => \camino|memory|mem~45_combout\,
	datad => \camino|memory|mem~44_combout\,
	combout => \camino|banco|regb~294_combout\);

-- Location: LCCOMB_X36_Y20_N10
\camino|banco|regb~295\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~295_combout\ = (\camino|banco|regb~294_combout\ & ((\camino|banco|regb~101_regout\) # ((!\camino|memory|mem~45_combout\)))) # (!\camino|banco|regb~294_combout\ & (((\camino|banco|regb~69_regout\ & \camino|memory|mem~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|regb~101_regout\,
	datab => \camino|banco|regb~69_regout\,
	datac => \camino|banco|regb~294_combout\,
	datad => \camino|memory|mem~45_combout\,
	combout => \camino|banco|regb~295_combout\);

-- Location: LCCOMB_X36_Y20_N18
\camino|banco|regb~297\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~297_combout\ = (\camino|memory|mem~45_combout\ & (((\camino|banco|regb~93_regout\) # (\camino|memory|mem~44_combout\)))) # (!\camino|memory|mem~45_combout\ & (\camino|banco|regb~29_regout\ & ((!\camino|memory|mem~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~45_combout\,
	datab => \camino|banco|regb~29_regout\,
	datac => \camino|banco|regb~93_regout\,
	datad => \camino|memory|mem~44_combout\,
	combout => \camino|banco|regb~297_combout\);

-- Location: LCCOMB_X36_Y20_N12
\camino|banco|regb~298\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~298_combout\ = (\camino|memory|mem~44_combout\ & ((\camino|banco|regb~297_combout\ & ((\camino|banco|regb~125_regout\))) # (!\camino|banco|regb~297_combout\ & (\camino|banco|regb~61_regout\)))) # (!\camino|memory|mem~44_combout\ & 
-- (((\camino|banco|regb~297_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|regb~61_regout\,
	datab => \camino|banco|regb~125_regout\,
	datac => \camino|memory|mem~44_combout\,
	datad => \camino|banco|regb~297_combout\,
	combout => \camino|banco|regb~298_combout\);

-- Location: LCCOMB_X36_Y17_N22
\camino|banco|regb~307\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~307_combout\ = (\camino|memory|mem~46_combout\ & (((\camino|memory|mem~27_combout\)))) # (!\camino|memory|mem~46_combout\ & ((\camino|memory|mem~27_combout\ & ((\camino|banco|regb~118_regout\))) # (!\camino|memory|mem~27_combout\ & 
-- (\camino|banco|regb~102_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|regb~102_regout\,
	datab => \camino|banco|regb~118_regout\,
	datac => \camino|memory|mem~46_combout\,
	datad => \camino|memory|mem~27_combout\,
	combout => \camino|banco|regb~307_combout\);

-- Location: LCCOMB_X36_Y17_N8
\camino|banco|regb~308\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~308_combout\ = (\camino|memory|mem~46_combout\ & ((\camino|banco|regb~307_combout\ & (\camino|banco|regb~126_regout\)) # (!\camino|banco|regb~307_combout\ & ((\camino|banco|regb~110_regout\))))) # (!\camino|memory|mem~46_combout\ & 
-- (((\camino|banco|regb~307_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~46_combout\,
	datab => \camino|banco|regb~126_regout\,
	datac => \camino|banco|regb~110_regout\,
	datad => \camino|banco|regb~307_combout\,
	combout => \camino|banco|regb~308_combout\);

-- Location: LCCOMB_X35_Y17_N24
\camino|banco|regb~310\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~310_combout\ = (\camino|memory|mem~44_combout\ & ((\camino|banco|regb~55_regout\) # ((\camino|memory|mem~45_combout\)))) # (!\camino|memory|mem~44_combout\ & (((\camino|banco|regb~23_regout\ & !\camino|memory|mem~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|regb~55_regout\,
	datab => \camino|banco|regb~23_regout\,
	datac => \camino|memory|mem~44_combout\,
	datad => \camino|memory|mem~45_combout\,
	combout => \camino|banco|regb~310_combout\);

-- Location: LCCOMB_X35_Y17_N30
\camino|banco|regb~311\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~311_combout\ = (\camino|banco|regb~310_combout\ & ((\camino|banco|regb~119_regout\) # ((!\camino|memory|mem~45_combout\)))) # (!\camino|banco|regb~310_combout\ & (((\camino|banco|regb~87_regout\ & \camino|memory|mem~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|regb~119_regout\,
	datab => \camino|banco|regb~87_regout\,
	datac => \camino|banco|regb~310_combout\,
	datad => \camino|memory|mem~45_combout\,
	combout => \camino|banco|regb~311_combout\);

-- Location: LCCOMB_X36_Y17_N26
\camino|banco|regb~312\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~312_combout\ = (\camino|memory|mem~44_combout\ & (((\camino|memory|mem~45_combout\)))) # (!\camino|memory|mem~44_combout\ & ((\camino|memory|mem~45_combout\ & (\camino|banco|regb~79_regout\)) # (!\camino|memory|mem~45_combout\ & 
-- ((\camino|banco|regb~15_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~44_combout\,
	datab => \camino|banco|regb~79_regout\,
	datac => \camino|banco|regb~15_regout\,
	datad => \camino|memory|mem~45_combout\,
	combout => \camino|banco|regb~312_combout\);

-- Location: LCCOMB_X36_Y17_N4
\camino|banco|regb~313\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~313_combout\ = (\camino|memory|mem~44_combout\ & ((\camino|banco|regb~312_combout\ & ((\camino|banco|regb~111_regout\))) # (!\camino|banco|regb~312_combout\ & (\camino|banco|regb~47_regout\)))) # (!\camino|memory|mem~44_combout\ & 
-- (((\camino|banco|regb~312_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|regb~47_regout\,
	datab => \camino|memory|mem~44_combout\,
	datac => \camino|banco|regb~111_regout\,
	datad => \camino|banco|regb~312_combout\,
	combout => \camino|banco|regb~313_combout\);

-- Location: LCCOMB_X35_Y18_N18
\camino|banco|regb~314\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~314_combout\ = (\camino|memory|mem~45_combout\ & ((\camino|banco|regb~71_regout\) # ((\camino|memory|mem~44_combout\)))) # (!\camino|memory|mem~45_combout\ & (((\camino|banco|regb~7_regout\ & !\camino|memory|mem~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~45_combout\,
	datab => \camino|banco|regb~71_regout\,
	datac => \camino|banco|regb~7_regout\,
	datad => \camino|memory|mem~44_combout\,
	combout => \camino|banco|regb~314_combout\);

-- Location: LCCOMB_X35_Y18_N4
\camino|banco|regb~315\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~315_combout\ = (\camino|memory|mem~44_combout\ & ((\camino|banco|regb~314_combout\ & ((\camino|banco|regb~103_regout\))) # (!\camino|banco|regb~314_combout\ & (\camino|banco|regb~39_regout\)))) # (!\camino|memory|mem~44_combout\ & 
-- (((\camino|banco|regb~314_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~44_combout\,
	datab => \camino|banco|regb~39_regout\,
	datac => \camino|banco|regb~103_regout\,
	datad => \camino|banco|regb~314_combout\,
	combout => \camino|banco|regb~315_combout\);

-- Location: LCCOMB_X35_Y18_N2
\camino|banco|regb~316\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~316_combout\ = (\camino|memory|mem~46_combout\ & ((\camino|memory|mem~27_combout\) # ((\camino|banco|regb~313_combout\)))) # (!\camino|memory|mem~46_combout\ & (!\camino|memory|mem~27_combout\ & (\camino|banco|regb~315_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~46_combout\,
	datab => \camino|memory|mem~27_combout\,
	datac => \camino|banco|regb~315_combout\,
	datad => \camino|banco|regb~313_combout\,
	combout => \camino|banco|regb~316_combout\);

-- Location: LCCOMB_X35_Y20_N6
\camino|banco|regb~317\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~317_combout\ = (\camino|memory|mem~44_combout\ & (((\camino|banco|regb~63_regout\) # (\camino|memory|mem~45_combout\)))) # (!\camino|memory|mem~44_combout\ & (\camino|banco|regb~31_regout\ & ((!\camino|memory|mem~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|regb~31_regout\,
	datab => \camino|banco|regb~63_regout\,
	datac => \camino|memory|mem~44_combout\,
	datad => \camino|memory|mem~45_combout\,
	combout => \camino|banco|regb~317_combout\);

-- Location: LCCOMB_X35_Y20_N16
\camino|banco|regb~318\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~318_combout\ = (\camino|memory|mem~45_combout\ & ((\camino|banco|regb~317_combout\ & ((\camino|banco|regb~127_regout\))) # (!\camino|banco|regb~317_combout\ & (\camino|banco|regb~95_regout\)))) # (!\camino|memory|mem~45_combout\ & 
-- (((\camino|banco|regb~317_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~45_combout\,
	datab => \camino|banco|regb~95_regout\,
	datac => \camino|banco|regb~127_regout\,
	datad => \camino|banco|regb~317_combout\,
	combout => \camino|banco|regb~318_combout\);

-- Location: LCCOMB_X35_Y18_N12
\camino|banco|regb~319\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~319_combout\ = (\camino|memory|mem~27_combout\ & ((\camino|banco|regb~316_combout\ & (\camino|banco|regb~318_combout\)) # (!\camino|banco|regb~316_combout\ & ((\camino|banco|regb~311_combout\))))) # (!\camino|memory|mem~27_combout\ & 
-- (((\camino|banco|regb~316_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|regb~318_combout\,
	datab => \camino|memory|mem~27_combout\,
	datac => \camino|banco|regb~311_combout\,
	datad => \camino|banco|regb~316_combout\,
	combout => \camino|banco|regb~319_combout\);

-- Location: LCCOMB_X35_Y18_N14
\camino|banco|rd1[7]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|rd1[7]~7_combout\ = (!\camino|banco|Equal0~0_combout\ & \camino|banco|regb~319_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \camino|banco|Equal0~0_combout\,
	datad => \camino|banco|regb~319_combout\,
	combout => \camino|banco|rd1[7]~7_combout\);

-- Location: LCCOMB_X38_Y15_N6
\uc0|enable_jal~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \uc0|enable_jal~2_combout\ = (!\reset~combout\ & (\camino|memory|mem~21_combout\ & (\camino|memory|mem~46_combout\ & \camino|memory|mem~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datab => \camino|memory|mem~21_combout\,
	datac => \camino|memory|mem~46_combout\,
	datad => \camino|memory|mem~27_combout\,
	combout => \uc0|enable_jal~2_combout\);

-- Location: LCCOMB_X38_Y16_N2
\camino|alu0|Add0~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|alu0|Add0~41_combout\ = (\camino|memory|mem~23_combout\ & (\camino|PC|q\(9) $ (((\camino|banco|Equal1~0_combout\) # (!\camino|banco|regb~157_combout\))))) # (!\camino|memory|mem~23_combout\ & (((!\camino|banco|Equal1~0_combout\ & 
-- \camino|banco|regb~157_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~23_combout\,
	datab => \camino|PC|q\(9),
	datac => \camino|banco|Equal1~0_combout\,
	datad => \camino|banco|regb~157_combout\,
	combout => \camino|alu0|Add0~41_combout\);

-- Location: LCCOMB_X38_Y19_N26
\camino|alu0|Add0~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|alu0|Add0~43_combout\ = (\camino|PC|q\(9) & (!\camino|banco|Equal1~0_combout\ & ((\camino|banco|regb~177_combout\)))) # (!\camino|PC|q\(9) & (\camino|memory|mem~23_combout\ $ (((!\camino|banco|Equal1~0_combout\ & 
-- \camino|banco|regb~177_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|PC|q\(9),
	datab => \camino|banco|Equal1~0_combout\,
	datac => \camino|memory|mem~23_combout\,
	datad => \camino|banco|regb~177_combout\,
	combout => \camino|alu0|Add0~43_combout\);

-- Location: LCCOMB_X36_Y18_N6
\camino|alu0|Add0~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|alu0|Add0~45_combout\ = (\camino|memory|mem~23_combout\ & (\camino|PC|q\(9) $ (((\camino|banco|Equal1~0_combout\) # (!\camino|banco|regb~197_combout\))))) # (!\camino|memory|mem~23_combout\ & (((!\camino|banco|Equal1~0_combout\ & 
-- \camino|banco|regb~197_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~23_combout\,
	datab => \camino|PC|q\(9),
	datac => \camino|banco|Equal1~0_combout\,
	datad => \camino|banco|regb~197_combout\,
	combout => \camino|alu0|Add0~45_combout\);

-- Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Pe3[0]~I\ : cycloneii_io
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
	padio => ww_Pe3(0),
	combout => \Pe3~combout\(0));

-- Location: PIN_L22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Pe0[0]~I\ : cycloneii_io
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
	padio => ww_Pe0(0),
	combout => \Pe0~combout\(0));

-- Location: PIN_R21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Pe1[1]~I\ : cycloneii_io
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
	padio => ww_Pe1(1),
	combout => \Pe1~combout\(1));

-- Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Pe0[1]~I\ : cycloneii_io
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
	padio => ww_Pe0(1),
	combout => \Pe0~combout\(1));

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Pe3[2]~I\ : cycloneii_io
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
	padio => ww_Pe3(2),
	combout => \Pe3~combout\(2));

-- Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Pe0[3]~I\ : cycloneii_io
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
	padio => ww_Pe0(3),
	combout => \Pe0~combout\(3));

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Pe3[4]~I\ : cycloneii_io
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
	padio => ww_Pe3(4),
	combout => \Pe3~combout\(4));

-- Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Pe3[5]~I\ : cycloneii_io
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
	padio => ww_Pe3(5),
	combout => \Pe3~combout\(5));

-- Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Pe3[6]~I\ : cycloneii_io
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
	padio => ww_Pe3(6),
	combout => \Pe3~combout\(6));

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Pe3[7]~I\ : cycloneii_io
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
	padio => ww_Pe3(7),
	combout => \Pe3~combout\(7));

-- Location: LCCOMB_X37_Y17_N26
\camino|banco|regb~16feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~16feeder_combout\ = \camino|epe|y[0]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \camino|epe|y[0]~5_combout\,
	combout => \camino|banco|regb~16feeder_combout\);

-- Location: LCCOMB_X36_Y18_N24
\camino|banco|regb~112feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~112feeder_combout\ = \camino|epe|y[0]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \camino|epe|y[0]~5_combout\,
	combout => \camino|banco|regb~112feeder_combout\);

-- Location: LCCOMB_X39_Y18_N12
\camino|banco|regb~1feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~1feeder_combout\ = \camino|epe|y[1]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \camino|epe|y[1]~8_combout\,
	combout => \camino|banco|regb~1feeder_combout\);

-- Location: LCCOMB_X36_Y18_N16
\camino|banco|regb~115feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~115feeder_combout\ = \camino|epe|y\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \camino|epe|y\(3),
	combout => \camino|banco|regb~115feeder_combout\);

-- Location: LCCOMB_X38_Y19_N24
\camino|banco|regb~28feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~28feeder_combout\ = \camino|epe|y\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \camino|epe|y\(4),
	combout => \camino|banco|regb~28feeder_combout\);

-- Location: LCCOMB_X37_Y20_N24
\camino|banco|regb~68feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~68feeder_combout\ = \camino|epe|y\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \camino|epe|y\(4),
	combout => \camino|banco|regb~68feeder_combout\);

-- Location: LCCOMB_X37_Y18_N6
\camino|banco|regb~76feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~76feeder_combout\ = \camino|epe|y\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \camino|epe|y\(4),
	combout => \camino|banco|regb~76feeder_combout\);

-- Location: LCCOMB_X36_Y20_N8
\camino|banco|regb~6feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~6feeder_combout\ = \camino|epe|y\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \camino|epe|y\(6),
	combout => \camino|banco|regb~6feeder_combout\);

-- Location: LCCOMB_X34_Y19_N10
\camino|banco|regb~95feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~95feeder_combout\ = \camino|epe|y\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \camino|epe|y\(7),
	combout => \camino|banco|regb~95feeder_combout\);

-- Location: LCCOMB_X34_Y19_N24
\camino|banco|regb~31feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~31feeder_combout\ = \camino|epe|y\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \camino|epe|y\(7),
	combout => \camino|banco|regb~31feeder_combout\);

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
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
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G11
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : cycloneii_io
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
	padio => ww_reset,
	combout => \reset~combout\);

-- Location: CLKCTRL_G3
\reset~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~clkctrl_outclk\);

-- Location: LCFF_X35_Y16_N15
\camino|reg_jal|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \camino|PC|q\(2),
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \uc0|enable_jal~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|reg_jal|q\(2));

-- Location: LCFF_X35_Y16_N29
\camino|reg_jal|q[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \camino|PC|q\(9),
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \uc0|enable_jal~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|reg_jal|q\(9));

-- Location: LCCOMB_X35_Y16_N28
\camino|sumadorPC|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|sumadorPC|Add0~10_combout\ = (\camino|PC|q\(9)) # ((\camino|reg_jal|q\(9) & \uc0|s_jal~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \camino|PC|q\(9),
	datac => \camino|reg_jal|q\(9),
	datad => \uc0|s_jal~0_combout\,
	combout => \camino|sumadorPC|Add0~10_combout\);

-- Location: LCCOMB_X37_Y16_N4
\camino|PC|q[0]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|PC|q[0]~10_combout\ = \camino|sumadorPC|Add0~1_combout\ $ (VCC)
-- \camino|PC|q[0]~11\ = CARRY(\camino|sumadorPC|Add0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \camino|sumadorPC|Add0~1_combout\,
	datad => VCC,
	combout => \camino|PC|q[0]~10_combout\,
	cout => \camino|PC|q[0]~11\);

-- Location: LCCOMB_X37_Y16_N20
\camino|PC|q[8]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|PC|q[8]~28_combout\ = (\camino|sumadorPC|Add0~9_combout\ & (\camino|PC|q[7]~27\ $ (GND))) # (!\camino|sumadorPC|Add0~9_combout\ & (!\camino|PC|q[7]~27\ & VCC))
-- \camino|PC|q[8]~29\ = CARRY((\camino|sumadorPC|Add0~9_combout\ & !\camino|PC|q[7]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \camino|sumadorPC|Add0~9_combout\,
	datad => VCC,
	cin => \camino|PC|q[7]~27\,
	combout => \camino|PC|q[8]~28_combout\,
	cout => \camino|PC|q[8]~29\);

-- Location: LCCOMB_X37_Y16_N30
\camino|memory|mem~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|memory|mem~8_combout\ = (!\camino|PC|q\(9) & \camino|memory|mem~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|PC|q\(9),
	datad => \camino|memory|mem~2_combout\,
	combout => \camino|memory|mem~8_combout\);

-- Location: LCCOMB_X37_Y16_N6
\camino|PC|q[1]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|PC|q[1]~14_combout\ = (\camino|sumadorPC|Add0~2_combout\ & (!\camino|PC|q[0]~11\)) # (!\camino|sumadorPC|Add0~2_combout\ & ((\camino|PC|q[0]~11\) # (GND)))
-- \camino|PC|q[1]~15\ = CARRY((!\camino|PC|q[0]~11\) # (!\camino|sumadorPC|Add0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \camino|sumadorPC|Add0~2_combout\,
	datad => VCC,
	cin => \camino|PC|q[0]~11\,
	combout => \camino|PC|q[1]~14_combout\,
	cout => \camino|PC|q[1]~15\);

-- Location: LCCOMB_X36_Y16_N4
\camino|memory|mem~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|memory|mem~32_combout\ = (\camino|PC|q\(2)) # ((\camino|PC|q\(3)) # ((\camino|PC|q\(0) & \camino|PC|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|PC|q\(0),
	datab => \camino|PC|q\(2),
	datac => \camino|PC|q\(3),
	datad => \camino|PC|q\(1),
	combout => \camino|memory|mem~32_combout\);

-- Location: LCCOMB_X36_Y16_N6
\camino|memory|mem~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|memory|mem~31_combout\ = (!\camino|PC|q\(0) & (\camino|PC|q\(2) & (\camino|PC|q\(3) & !\camino|PC|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|PC|q\(0),
	datab => \camino|PC|q\(2),
	datac => \camino|PC|q\(3),
	datad => \camino|PC|q\(1),
	combout => \camino|memory|mem~31_combout\);

-- Location: LCCOMB_X36_Y16_N26
\camino|memory|mem~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|memory|mem~33_combout\ = (\camino|PC|q\(4) & (!\camino|memory|mem~32_combout\)) # (!\camino|PC|q\(4) & ((\camino|memory|mem~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \camino|PC|q\(4),
	datac => \camino|memory|mem~32_combout\,
	datad => \camino|memory|mem~31_combout\,
	combout => \camino|memory|mem~33_combout\);

-- Location: LCCOMB_X36_Y16_N0
\camino|memory|mem~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|memory|mem~45_combout\ = (!\camino|PC|q\(9) & (\camino|memory|mem~2_combout\ & \camino|memory|mem~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \camino|PC|q\(9),
	datac => \camino|memory|mem~2_combout\,
	datad => \camino|memory|mem~33_combout\,
	combout => \camino|memory|mem~45_combout\);

-- Location: LCCOMB_X38_Y18_N28
\camino|memory|mem~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|memory|mem~23_combout\ = (!\camino|memory|mem~22_combout\ & (\camino|memory|mem~2_combout\ & (\camino|PC|q\(3) $ (\camino|PC|q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~22_combout\,
	datab => \camino|PC|q\(3),
	datac => \camino|PC|q\(4),
	datad => \camino|memory|mem~2_combout\,
	combout => \camino|memory|mem~23_combout\);

-- Location: LCCOMB_X38_Y18_N16
\camino|memory|mem~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|memory|mem~24_combout\ = (!\camino|PC|q\(9) & \camino|memory|mem~23_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|PC|q\(9),
	datad => \camino|memory|mem~23_combout\,
	combout => \camino|memory|mem~24_combout\);

-- Location: LCCOMB_X40_Y16_N8
\camino|memory|mem~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|memory|mem~20_combout\ = (\camino|PC|q\(3) & (\camino|PC|q\(0) $ (((\camino|PC|q\(2)) # (\camino|PC|q\(1)))))) # (!\camino|PC|q\(3) & (!\camino|PC|q\(0) & (\camino|PC|q\(2) $ (\camino|PC|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|PC|q\(2),
	datab => \camino|PC|q\(1),
	datac => \camino|PC|q\(3),
	datad => \camino|PC|q\(0),
	combout => \camino|memory|mem~20_combout\);

-- Location: LCCOMB_X40_Y16_N6
\camino|memory|mem~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|memory|mem~21_combout\ = (\camino|memory|mem~8_combout\ & ((\camino|memory|mem~20_combout\ & (!\camino|PC|q\(4))) # (!\camino|memory|mem~20_combout\ & ((!\camino|PC|q\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|PC|q\(4),
	datab => \camino|PC|q\(3),
	datac => \camino|memory|mem~20_combout\,
	datad => \camino|memory|mem~8_combout\,
	combout => \camino|memory|mem~21_combout\);

-- Location: LCCOMB_X38_Y17_N10
\camino|banco|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|Equal0~0_combout\ = (!\camino|memory|mem~27_combout\ & (!\camino|memory|mem~45_combout\ & (!\camino|memory|mem~44_combout\ & !\camino|memory|mem~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~27_combout\,
	datab => \camino|memory|mem~45_combout\,
	datac => \camino|memory|mem~44_combout\,
	datad => \camino|memory|mem~46_combout\,
	combout => \camino|banco|Equal0~0_combout\);

-- Location: LCCOMB_X37_Y19_N16
\uc0|s_inm~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uc0|s_inm~0_combout\ = (!\camino|memory|mem~24_combout\ & (!\reset~combout\ & (\camino|memory|mem~21_combout\ & !\camino|memory|mem~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~24_combout\,
	datab => \reset~combout\,
	datac => \camino|memory|mem~21_combout\,
	datad => \camino|memory|mem~19_combout\,
	combout => \uc0|s_inm~0_combout\);

-- Location: LCCOMB_X36_Y16_N14
\camino|memory|mem~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|memory|mem~29_combout\ = (\camino|PC|q\(3) & (((\camino|PC|q\(0) & !\camino|PC|q\(1))) # (!\camino|PC|q\(2)))) # (!\camino|PC|q\(3) & ((\camino|PC|q\(0) & (!\camino|PC|q\(2) & !\camino|PC|q\(1))) # (!\camino|PC|q\(0) & ((\camino|PC|q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010110110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|PC|q\(0),
	datab => \camino|PC|q\(2),
	datac => \camino|PC|q\(3),
	datad => \camino|PC|q\(1),
	combout => \camino|memory|mem~29_combout\);

-- Location: LCCOMB_X36_Y16_N12
\camino|memory|mem~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|memory|mem~28_combout\ = (!\camino|PC|q\(3) & ((\camino|PC|q\(2) & (\camino|PC|q\(0))) # (!\camino|PC|q\(2) & ((\camino|PC|q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|PC|q\(0),
	datab => \camino|PC|q\(2),
	datac => \camino|PC|q\(3),
	datad => \camino|PC|q\(1),
	combout => \camino|memory|mem~28_combout\);

-- Location: LCCOMB_X36_Y16_N28
\camino|memory|mem~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|memory|mem~30_combout\ = (\camino|PC|q\(4) & ((\camino|memory|mem~28_combout\))) # (!\camino|PC|q\(4) & (\camino|memory|mem~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \camino|PC|q\(4),
	datac => \camino|memory|mem~29_combout\,
	datad => \camino|memory|mem~28_combout\,
	combout => \camino|memory|mem~30_combout\);

-- Location: LCCOMB_X38_Y15_N28
\camino|decodificador|sal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|decodificador|sal0~3_combout\ = (!\camino|PC|q\(9) & (\camino|memory|mem~2_combout\ & ((\camino|memory|mem~30_combout\) # (\camino|memory|mem~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|PC|q\(9),
	datab => \camino|memory|mem~30_combout\,
	datac => \camino|memory|mem~2_combout\,
	datad => \camino|memory|mem~33_combout\,
	combout => \camino|decodificador|sal0~3_combout\);

-- Location: LCCOMB_X37_Y19_N28
\uc0|s_epe~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uc0|s_epe~0_combout\ = (!\reset~combout\ & (\camino|memory|mem~21_combout\ & (!\camino|memory|mem~24_combout\ & \camino|memory|mem~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datab => \camino|memory|mem~21_combout\,
	datac => \camino|memory|mem~24_combout\,
	datad => \camino|memory|mem~19_combout\,
	combout => \uc0|s_epe~0_combout\);

-- Location: LCCOMB_X38_Y15_N4
\uc0|s_epe~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \uc0|s_epe~1_combout\ = (\camino|memory|mem~46_combout\ & (\camino|memory|mem~27_combout\ & \uc0|s_epe~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~46_combout\,
	datac => \camino|memory|mem~27_combout\,
	datad => \uc0|s_epe~0_combout\,
	combout => \uc0|s_epe~1_combout\);

-- Location: LCCOMB_X37_Y19_N20
\camino|epe|y[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|epe|y[0]~1_combout\ = (\uc0|s_epe~1_combout\ & (((!\camino|memory|mem~45_combout\ & \camino|memory|mem~44_combout\)) # (!\camino|decodificador|sal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~45_combout\,
	datab => \camino|memory|mem~44_combout\,
	datac => \camino|decodificador|sal0~3_combout\,
	datad => \uc0|s_epe~1_combout\,
	combout => \camino|epe|y[0]~1_combout\);

-- Location: LCCOMB_X37_Y19_N26
\camino|epe|y[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|epe|y[0]~0_combout\ = (\camino|decodificador|sal0~3_combout\ & (\camino|memory|mem~46_combout\ & (\camino|memory|mem~27_combout\ & \uc0|s_epe~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|decodificador|sal0~3_combout\,
	datab => \camino|memory|mem~46_combout\,
	datac => \camino|memory|mem~27_combout\,
	datad => \uc0|s_epe~0_combout\,
	combout => \camino|epe|y[0]~0_combout\);

-- Location: LCCOMB_X37_Y19_N22
\camino|epe|y[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|epe|y[0]~2_combout\ = (\camino|epe|y[0]~0_combout\ & ((\camino|epe|y[0]~1_combout\) # ((\camino|memory|mem~43_combout\ & \camino|memory|mem~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~43_combout\,
	datab => \camino|memory|mem~44_combout\,
	datac => \camino|epe|y[0]~1_combout\,
	datad => \camino|epe|y[0]~0_combout\,
	combout => \camino|epe|y[0]~2_combout\);

-- Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Pe3[1]~I\ : cycloneii_io
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
	padio => ww_Pe3(1),
	combout => \Pe3~combout\(1));

-- Location: LCCOMB_X37_Y19_N0
\camino|epe|y[1]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|epe|y[1]~6_combout\ = (\camino|epe|y[0]~0_combout\ & (((\camino|epe|y[0]~1_combout\)))) # (!\camino|epe|y[0]~0_combout\ & ((\camino|epe|y[0]~1_combout\ & (\Pe0~combout\(1))) # (!\camino|epe|y[0]~1_combout\ & ((\camino|alu0|Add0~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pe0~combout\(1),
	datab => \camino|epe|y[0]~0_combout\,
	datac => \camino|epe|y[0]~1_combout\,
	datad => \camino|alu0|Add0~22_combout\,
	combout => \camino|epe|y[1]~6_combout\);

-- Location: LCCOMB_X37_Y19_N18
\camino|epe|y[1]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|epe|y[1]~7_combout\ = (\camino|epe|y[0]~2_combout\ & ((\camino|epe|y[1]~6_combout\ & (\Pe1~combout\(1))) # (!\camino|epe|y[1]~6_combout\ & ((\Pe3~combout\(1)))))) # (!\camino|epe|y[0]~2_combout\ & (((\camino|epe|y[1]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pe1~combout\(1),
	datab => \camino|epe|y[0]~2_combout\,
	datac => \Pe3~combout\(1),
	datad => \camino|epe|y[1]~6_combout\,
	combout => \camino|epe|y[1]~7_combout\);

-- Location: LCCOMB_X37_Y18_N0
\camino|epe|y[1]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|epe|y[1]~8_combout\ = (\uc0|s_inm~0_combout\ & (\camino|memory|mem~27_combout\)) # (!\uc0|s_inm~0_combout\ & ((\camino|epe|y[1]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \camino|memory|mem~27_combout\,
	datac => \uc0|s_inm~0_combout\,
	datad => \camino|epe|y[1]~7_combout\,
	combout => \camino|epe|y[1]~8_combout\);

-- Location: LCCOMB_X37_Y18_N24
\camino|banco|regb~121feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~121feeder_combout\ = \camino|epe|y[1]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \camino|epe|y[1]~8_combout\,
	combout => \camino|banco|regb~121feeder_combout\);

-- Location: LCCOMB_X40_Y16_N20
\camino|memory|mem~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|memory|mem~34_combout\ = (\camino|PC|q\(0) & ((\camino|PC|q\(1) & ((!\camino|PC|q\(3)))) # (!\camino|PC|q\(1) & (!\camino|PC|q\(2))))) # (!\camino|PC|q\(0) & ((\camino|PC|q\(2)) # ((\camino|PC|q\(3) & \camino|PC|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|PC|q\(0),
	datab => \camino|PC|q\(2),
	datac => \camino|PC|q\(3),
	datad => \camino|PC|q\(1),
	combout => \camino|memory|mem~34_combout\);

-- Location: LCCOMB_X40_Y16_N0
\camino|memory|mem~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|memory|mem~35_combout\ = (!\camino|PC|q\(4) & (!\camino|PC|q\(9) & (!\camino|memory|mem~34_combout\ & \camino|memory|mem~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|PC|q\(4),
	datab => \camino|PC|q\(9),
	datac => \camino|memory|mem~34_combout\,
	datad => \camino|memory|mem~2_combout\,
	combout => \camino|memory|mem~35_combout\);

-- Location: LCCOMB_X40_Y16_N24
\camino|memory|mem~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|memory|mem~37_combout\ = (\camino|PC|q\(0) & ((\camino|PC|q\(1)) # ((\camino|PC|q\(2) & \camino|PC|q\(3))))) # (!\camino|PC|q\(0) & ((\camino|PC|q\(2) & (!\camino|PC|q\(3))) # (!\camino|PC|q\(2) & ((\camino|PC|q\(3)) # (\camino|PC|q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|PC|q\(0),
	datab => \camino|PC|q\(2),
	datac => \camino|PC|q\(3),
	datad => \camino|PC|q\(1),
	combout => \camino|memory|mem~37_combout\);

-- Location: LCCOMB_X40_Y16_N22
\camino|memory|mem~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|memory|mem~36_combout\ = (!\camino|PC|q\(0) & (!\camino|PC|q\(3) & ((\camino|PC|q\(2)) # (\camino|PC|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|PC|q\(0),
	datab => \camino|PC|q\(2),
	datac => \camino|PC|q\(3),
	datad => \camino|PC|q\(1),
	combout => \camino|memory|mem~36_combout\);

-- Location: LCCOMB_X40_Y16_N30
\camino|memory|mem~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|memory|mem~38_combout\ = (\camino|memory|mem~8_combout\ & ((\camino|PC|q\(4) & ((\camino|memory|mem~36_combout\))) # (!\camino|PC|q\(4) & (\camino|memory|mem~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|PC|q\(4),
	datab => \camino|memory|mem~8_combout\,
	datac => \camino|memory|mem~37_combout\,
	datad => \camino|memory|mem~36_combout\,
	combout => \camino|memory|mem~38_combout\);

-- Location: LCCOMB_X35_Y20_N22
\camino|banco|regb~248\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~248_combout\ = (\camino|memory|mem~42_combout\ & (\camino|memory|mem~40_combout\ & (\camino|memory|mem~35_combout\ & \camino|memory|mem~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~42_combout\,
	datab => \camino|memory|mem~40_combout\,
	datac => \camino|memory|mem~35_combout\,
	datad => \camino|memory|mem~38_combout\,
	combout => \camino|banco|regb~248_combout\);

-- Location: LCCOMB_X37_Y19_N2
\uc0|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uc0|WideOr0~0_combout\ = (\camino|memory|mem~24_combout\) # ((\camino|memory|mem~19_combout\ & ((!\camino|memory|mem~27_combout\) # (!\camino|memory|mem~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~24_combout\,
	datab => \camino|memory|mem~46_combout\,
	datac => \camino|memory|mem~27_combout\,
	datad => \camino|memory|mem~19_combout\,
	combout => \uc0|WideOr0~0_combout\);

-- Location: LCCOMB_X35_Y20_N24
\camino|banco|regb~249\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~249_combout\ = (\camino|banco|regb~248_combout\ & (!\reset~combout\ & ((!\uc0|WideOr0~0_combout\) # (!\camino|memory|mem~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~21_combout\,
	datab => \camino|banco|regb~248_combout\,
	datac => \reset~combout\,
	datad => \uc0|WideOr0~0_combout\,
	combout => \camino|banco|regb~249_combout\);

-- Location: LCFF_X37_Y18_N25
\camino|banco|regb~121\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \camino|banco|regb~121feeder_combout\,
	ena => \camino|banco|regb~249_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~121_regout\);

-- Location: LCCOMB_X35_Y20_N2
\camino|banco|regb~232\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~232_combout\ = (!\camino|memory|mem~42_combout\ & (\camino|memory|mem~40_combout\ & (\camino|memory|mem~35_combout\ & \camino|memory|mem~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~42_combout\,
	datab => \camino|memory|mem~40_combout\,
	datac => \camino|memory|mem~35_combout\,
	datad => \camino|memory|mem~38_combout\,
	combout => \camino|banco|regb~232_combout\);

-- Location: LCCOMB_X35_Y20_N20
\camino|banco|regb~233\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~233_combout\ = (\camino|banco|regb~232_combout\ & (!\reset~combout\ & ((!\uc0|WideOr0~0_combout\) # (!\camino|memory|mem~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~21_combout\,
	datab => \camino|banco|regb~232_combout\,
	datac => \reset~combout\,
	datad => \uc0|WideOr0~0_combout\,
	combout => \camino|banco|regb~233_combout\);

-- Location: LCFF_X37_Y15_N19
\camino|banco|regb~57\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \camino|epe|y[1]~8_combout\,
	sload => VCC,
	ena => \camino|banco|regb~233_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~57_regout\);

-- Location: LCCOMB_X34_Y19_N2
\camino|banco|regb~238\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~238_combout\ = (!\camino|memory|mem~42_combout\ & (!\camino|memory|mem~40_combout\ & (\camino|memory|mem~38_combout\ & \camino|memory|mem~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~42_combout\,
	datab => \camino|memory|mem~40_combout\,
	datac => \camino|memory|mem~38_combout\,
	datad => \camino|memory|mem~35_combout\,
	combout => \camino|banco|regb~238_combout\);

-- Location: LCCOMB_X34_Y19_N16
\camino|banco|regb~239\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~239_combout\ = (!\reset~combout\ & (\camino|banco|regb~238_combout\ & ((!\uc0|WideOr0~0_combout\) # (!\camino|memory|mem~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datab => \camino|memory|mem~21_combout\,
	datac => \uc0|WideOr0~0_combout\,
	datad => \camino|banco|regb~238_combout\,
	combout => \camino|banco|regb~239_combout\);

-- Location: LCFF_X38_Y18_N21
\camino|banco|regb~25\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \camino|epe|y[1]~8_combout\,
	sload => VCC,
	ena => \camino|banco|regb~239_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~25_regout\);

-- Location: LCCOMB_X34_Y19_N18
\camino|banco|regb~224\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~224_combout\ = (\camino|memory|mem~42_combout\ & (!\camino|memory|mem~40_combout\ & (\camino|memory|mem~38_combout\ & \camino|memory|mem~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~42_combout\,
	datab => \camino|memory|mem~40_combout\,
	datac => \camino|memory|mem~38_combout\,
	datad => \camino|memory|mem~35_combout\,
	combout => \camino|banco|regb~224_combout\);

-- Location: LCCOMB_X34_Y19_N0
\camino|banco|regb~225\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~225_combout\ = (!\reset~combout\ & (\camino|banco|regb~224_combout\ & ((!\uc0|WideOr0~0_combout\) # (!\camino|memory|mem~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datab => \camino|memory|mem~21_combout\,
	datac => \uc0|WideOr0~0_combout\,
	datad => \camino|banco|regb~224_combout\,
	combout => \camino|banco|regb~225_combout\);

-- Location: LCFF_X37_Y17_N19
\camino|banco|regb~89\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \camino|epe|y[1]~8_combout\,
	sload => VCC,
	ena => \camino|banco|regb~225_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~89_regout\);

-- Location: LCCOMB_X37_Y17_N18
\camino|banco|regb~257\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~257_combout\ = (\camino|memory|mem~44_combout\ & (((\camino|memory|mem~45_combout\)))) # (!\camino|memory|mem~44_combout\ & ((\camino|memory|mem~45_combout\ & ((\camino|banco|regb~89_regout\))) # (!\camino|memory|mem~45_combout\ & 
-- (\camino|banco|regb~25_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~44_combout\,
	datab => \camino|banco|regb~25_regout\,
	datac => \camino|banco|regb~89_regout\,
	datad => \camino|memory|mem~45_combout\,
	combout => \camino|banco|regb~257_combout\);

-- Location: LCCOMB_X37_Y15_N18
\camino|banco|regb~258\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~258_combout\ = (\camino|memory|mem~44_combout\ & ((\camino|banco|regb~257_combout\ & (\camino|banco|regb~121_regout\)) # (!\camino|banco|regb~257_combout\ & ((\camino|banco|regb~57_regout\))))) # (!\camino|memory|mem~44_combout\ & 
-- (((\camino|banco|regb~257_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~44_combout\,
	datab => \camino|banco|regb~121_regout\,
	datac => \camino|banco|regb~57_regout\,
	datad => \camino|banco|regb~257_combout\,
	combout => \camino|banco|regb~258_combout\);

-- Location: LCCOMB_X37_Y18_N8
\camino|banco|regb~73feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~73feeder_combout\ = \camino|epe|y[1]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \camino|epe|y[1]~8_combout\,
	combout => \camino|banco|regb~73feeder_combout\);

-- Location: LCCOMB_X38_Y20_N16
\camino|banco|regb~220\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~220_combout\ = (\camino|memory|mem~42_combout\ & (!\camino|memory|mem~38_combout\ & (!\camino|memory|mem~40_combout\ & \camino|memory|mem~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~42_combout\,
	datab => \camino|memory|mem~38_combout\,
	datac => \camino|memory|mem~40_combout\,
	datad => \camino|memory|mem~35_combout\,
	combout => \camino|banco|regb~220_combout\);

-- Location: LCCOMB_X38_Y20_N6
\camino|banco|regb~221\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~221_combout\ = (\camino|banco|regb~220_combout\ & (!\reset~combout\ & ((!\camino|memory|mem~21_combout\) # (!\uc0|WideOr0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uc0|WideOr0~0_combout\,
	datab => \camino|memory|mem~21_combout\,
	datac => \camino|banco|regb~220_combout\,
	datad => \reset~combout\,
	combout => \camino|banco|regb~221_combout\);

-- Location: LCFF_X37_Y18_N9
\camino|banco|regb~73\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \camino|banco|regb~73feeder_combout\,
	ena => \camino|banco|regb~221_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~73_regout\);

-- Location: LCCOMB_X38_Y20_N20
\camino|banco|regb~240\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~240_combout\ = (!\camino|memory|mem~42_combout\ & (!\camino|memory|mem~38_combout\ & (!\camino|memory|mem~40_combout\ & \camino|memory|mem~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~42_combout\,
	datab => \camino|memory|mem~38_combout\,
	datac => \camino|memory|mem~40_combout\,
	datad => \camino|memory|mem~35_combout\,
	combout => \camino|banco|regb~240_combout\);

-- Location: LCCOMB_X38_Y20_N26
\camino|banco|regb~241\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~241_combout\ = (\camino|banco|regb~240_combout\ & (!\reset~combout\ & ((!\camino|memory|mem~21_combout\) # (!\uc0|WideOr0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uc0|WideOr0~0_combout\,
	datab => \camino|memory|mem~21_combout\,
	datac => \camino|banco|regb~240_combout\,
	datad => \reset~combout\,
	combout => \camino|banco|regb~241_combout\);

-- Location: LCFF_X38_Y18_N31
\camino|banco|regb~9\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \camino|epe|y[1]~8_combout\,
	sload => VCC,
	ena => \camino|banco|regb~241_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~9_regout\);

-- Location: LCCOMB_X37_Y15_N20
\camino|banco|regb~250\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~250_combout\ = (\camino|memory|mem~44_combout\ & ((\camino|banco|regb~41_regout\) # ((\camino|memory|mem~45_combout\)))) # (!\camino|memory|mem~44_combout\ & (((\camino|banco|regb~9_regout\ & !\camino|memory|mem~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|regb~41_regout\,
	datab => \camino|banco|regb~9_regout\,
	datac => \camino|memory|mem~44_combout\,
	datad => \camino|memory|mem~45_combout\,
	combout => \camino|banco|regb~250_combout\);

-- Location: LCCOMB_X37_Y15_N14
\camino|banco|regb~251\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~251_combout\ = (\camino|banco|regb~250_combout\ & ((\camino|banco|regb~105_regout\) # ((!\camino|memory|mem~45_combout\)))) # (!\camino|banco|regb~250_combout\ & (((\camino|banco|regb~73_regout\ & \camino|memory|mem~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|regb~105_regout\,
	datab => \camino|banco|regb~73_regout\,
	datac => \camino|banco|regb~250_combout\,
	datad => \camino|memory|mem~45_combout\,
	combout => \camino|banco|regb~251_combout\);

-- Location: LCCOMB_X38_Y20_N12
\camino|banco|regb~228\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~228_combout\ = (!\camino|memory|mem~42_combout\ & (\camino|memory|mem~38_combout\ & (\camino|memory|mem~40_combout\ & !\camino|memory|mem~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~42_combout\,
	datab => \camino|memory|mem~38_combout\,
	datac => \camino|memory|mem~40_combout\,
	datad => \camino|memory|mem~35_combout\,
	combout => \camino|banco|regb~228_combout\);

-- Location: LCCOMB_X38_Y20_N30
\camino|banco|regb~229\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~229_combout\ = (!\reset~combout\ & (\camino|banco|regb~228_combout\ & ((!\uc0|WideOr0~0_combout\) # (!\camino|memory|mem~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~21_combout\,
	datab => \reset~combout\,
	datac => \uc0|WideOr0~0_combout\,
	datad => \camino|banco|regb~228_combout\,
	combout => \camino|banco|regb~229_combout\);

-- Location: LCFF_X36_Y15_N7
\camino|banco|regb~49\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \camino|epe|y[1]~8_combout\,
	sload => VCC,
	ena => \camino|banco|regb~229_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~49_regout\);

-- Location: LCCOMB_X38_Y20_N8
\camino|banco|regb~218\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~218_combout\ = (\camino|memory|mem~42_combout\ & (\camino|memory|mem~38_combout\ & (!\camino|memory|mem~40_combout\ & !\camino|memory|mem~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~42_combout\,
	datab => \camino|memory|mem~38_combout\,
	datac => \camino|memory|mem~40_combout\,
	datad => \camino|memory|mem~35_combout\,
	combout => \camino|banco|regb~218_combout\);

-- Location: LCCOMB_X38_Y20_N18
\camino|banco|regb~219\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~219_combout\ = (\camino|banco|regb~218_combout\ & (!\reset~combout\ & ((!\camino|memory|mem~21_combout\) # (!\uc0|WideOr0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uc0|WideOr0~0_combout\,
	datab => \camino|memory|mem~21_combout\,
	datac => \camino|banco|regb~218_combout\,
	datad => \reset~combout\,
	combout => \camino|banco|regb~219_combout\);

-- Location: LCFF_X36_Y18_N1
\camino|banco|regb~81\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \camino|epe|y[1]~8_combout\,
	sload => VCC,
	ena => \camino|banco|regb~219_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~81_regout\);

-- Location: LCCOMB_X36_Y15_N18
\camino|banco|regb~252\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~252_combout\ = (\camino|memory|mem~44_combout\ & (((\camino|memory|mem~45_combout\)))) # (!\camino|memory|mem~44_combout\ & ((\camino|memory|mem~45_combout\ & ((\camino|banco|regb~81_regout\))) # (!\camino|memory|mem~45_combout\ & 
-- (\camino|banco|regb~17_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|regb~17_regout\,
	datab => \camino|banco|regb~81_regout\,
	datac => \camino|memory|mem~44_combout\,
	datad => \camino|memory|mem~45_combout\,
	combout => \camino|banco|regb~252_combout\);

-- Location: LCCOMB_X36_Y15_N6
\camino|banco|regb~253\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~253_combout\ = (\camino|memory|mem~44_combout\ & ((\camino|banco|regb~252_combout\ & (\camino|banco|regb~113_regout\)) # (!\camino|banco|regb~252_combout\ & ((\camino|banco|regb~49_regout\))))) # (!\camino|memory|mem~44_combout\ & 
-- (((\camino|banco|regb~252_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|regb~113_regout\,
	datab => \camino|memory|mem~44_combout\,
	datac => \camino|banco|regb~49_regout\,
	datad => \camino|banco|regb~252_combout\,
	combout => \camino|banco|regb~253_combout\);

-- Location: LCCOMB_X40_Y16_N14
\camino|memory|mem~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|memory|mem~41_combout\ = (\camino|PC|q\(2) & (\camino|PC|q\(0) $ (((!\camino|PC|q\(3) & !\camino|PC|q\(1)))))) # (!\camino|PC|q\(2) & (\camino|PC|q\(3) & (\camino|PC|q\(0) $ (!\camino|PC|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|PC|q\(0),
	datab => \camino|PC|q\(2),
	datac => \camino|PC|q\(3),
	datad => \camino|PC|q\(1),
	combout => \camino|memory|mem~41_combout\);

-- Location: LCCOMB_X40_Y16_N2
\camino|memory|mem~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|memory|mem~42_combout\ = (\camino|memory|mem~8_combout\ & ((\camino|PC|q\(4) & ((\camino|memory|mem~36_combout\))) # (!\camino|PC|q\(4) & (\camino|memory|mem~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|PC|q\(4),
	datab => \camino|memory|mem~8_combout\,
	datac => \camino|memory|mem~41_combout\,
	datad => \camino|memory|mem~36_combout\,
	combout => \camino|memory|mem~42_combout\);

-- Location: LCCOMB_X35_Y20_N18
\camino|banco|regb~222\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~222_combout\ = (!\camino|memory|mem~35_combout\ & (!\camino|memory|mem~40_combout\ & (\camino|memory|mem~42_combout\ & !\camino|memory|mem~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~35_combout\,
	datab => \camino|memory|mem~40_combout\,
	datac => \camino|memory|mem~42_combout\,
	datad => \camino|memory|mem~38_combout\,
	combout => \camino|banco|regb~222_combout\);

-- Location: LCCOMB_X35_Y20_N28
\camino|banco|regb~223\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~223_combout\ = (\camino|banco|regb~222_combout\ & (!\reset~combout\ & ((!\uc0|WideOr0~0_combout\) # (!\camino|memory|mem~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~21_combout\,
	datab => \camino|banco|regb~222_combout\,
	datac => \reset~combout\,
	datad => \uc0|WideOr0~0_combout\,
	combout => \camino|banco|regb~223_combout\);

-- Location: LCFF_X37_Y20_N5
\camino|banco|regb~65\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \camino|epe|y[1]~8_combout\,
	sload => VCC,
	ena => \camino|banco|regb~223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~65_regout\);

-- Location: LCCOMB_X38_Y20_N24
\camino|banco|regb~246\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~246_combout\ = (\camino|memory|mem~42_combout\ & (!\camino|memory|mem~38_combout\ & (\camino|memory|mem~40_combout\ & !\camino|memory|mem~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~42_combout\,
	datab => \camino|memory|mem~38_combout\,
	datac => \camino|memory|mem~40_combout\,
	datad => \camino|memory|mem~35_combout\,
	combout => \camino|banco|regb~246_combout\);

-- Location: LCCOMB_X38_Y20_N10
\camino|banco|regb~247\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~247_combout\ = (\camino|banco|regb~246_combout\ & (!\reset~combout\ & ((!\camino|memory|mem~21_combout\) # (!\uc0|WideOr0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uc0|WideOr0~0_combout\,
	datab => \camino|memory|mem~21_combout\,
	datac => \camino|banco|regb~246_combout\,
	datad => \reset~combout\,
	combout => \camino|banco|regb~247_combout\);

-- Location: LCFF_X37_Y20_N19
\camino|banco|regb~97\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \camino|epe|y[1]~8_combout\,
	sload => VCC,
	ena => \camino|banco|regb~247_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~97_regout\);

-- Location: LCCOMB_X36_Y20_N0
\camino|banco|regb~33feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~33feeder_combout\ = \camino|epe|y[1]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \camino|epe|y[1]~8_combout\,
	combout => \camino|banco|regb~33feeder_combout\);

-- Location: LCCOMB_X38_Y20_N0
\camino|banco|regb~230\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~230_combout\ = (!\camino|memory|mem~42_combout\ & (!\camino|memory|mem~38_combout\ & (\camino|memory|mem~40_combout\ & !\camino|memory|mem~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~42_combout\,
	datab => \camino|memory|mem~38_combout\,
	datac => \camino|memory|mem~40_combout\,
	datad => \camino|memory|mem~35_combout\,
	combout => \camino|banco|regb~230_combout\);

-- Location: LCCOMB_X38_Y20_N22
\camino|banco|regb~231\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~231_combout\ = (!\reset~combout\ & (\camino|banco|regb~230_combout\ & ((!\uc0|WideOr0~0_combout\) # (!\camino|memory|mem~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~21_combout\,
	datab => \reset~combout\,
	datac => \uc0|WideOr0~0_combout\,
	datad => \camino|banco|regb~230_combout\,
	combout => \camino|banco|regb~231_combout\);

-- Location: LCFF_X36_Y20_N1
\camino|banco|regb~33\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \camino|banco|regb~33feeder_combout\,
	ena => \camino|banco|regb~231_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~33_regout\);

-- Location: LCCOMB_X36_Y20_N14
\camino|banco|regb~254\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~254_combout\ = (\camino|memory|mem~45_combout\ & (((\camino|memory|mem~44_combout\)))) # (!\camino|memory|mem~45_combout\ & ((\camino|memory|mem~44_combout\ & ((\camino|banco|regb~33_regout\))) # (!\camino|memory|mem~44_combout\ & 
-- (\camino|banco|regb~1_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|regb~1_regout\,
	datab => \camino|banco|regb~33_regout\,
	datac => \camino|memory|mem~45_combout\,
	datad => \camino|memory|mem~44_combout\,
	combout => \camino|banco|regb~254_combout\);

-- Location: LCCOMB_X37_Y20_N18
\camino|banco|regb~255\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~255_combout\ = (\camino|memory|mem~45_combout\ & ((\camino|banco|regb~254_combout\ & ((\camino|banco|regb~97_regout\))) # (!\camino|banco|regb~254_combout\ & (\camino|banco|regb~65_regout\)))) # (!\camino|memory|mem~45_combout\ & 
-- (((\camino|banco|regb~254_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~45_combout\,
	datab => \camino|banco|regb~65_regout\,
	datac => \camino|banco|regb~97_regout\,
	datad => \camino|banco|regb~254_combout\,
	combout => \camino|banco|regb~255_combout\);

-- Location: LCCOMB_X37_Y15_N28
\camino|banco|regb~256\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~256_combout\ = (\camino|memory|mem~46_combout\ & (\camino|memory|mem~27_combout\)) # (!\camino|memory|mem~46_combout\ & ((\camino|memory|mem~27_combout\ & (\camino|banco|regb~253_combout\)) # (!\camino|memory|mem~27_combout\ & 
-- ((\camino|banco|regb~255_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~46_combout\,
	datab => \camino|memory|mem~27_combout\,
	datac => \camino|banco|regb~253_combout\,
	datad => \camino|banco|regb~255_combout\,
	combout => \camino|banco|regb~256_combout\);

-- Location: LCCOMB_X37_Y15_N6
\camino|banco|regb~259\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~259_combout\ = (\camino|memory|mem~46_combout\ & ((\camino|banco|regb~256_combout\ & (\camino|banco|regb~258_combout\)) # (!\camino|banco|regb~256_combout\ & ((\camino|banco|regb~251_combout\))))) # (!\camino|memory|mem~46_combout\ & 
-- (((\camino|banco|regb~256_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~46_combout\,
	datab => \camino|banco|regb~258_combout\,
	datac => \camino|banco|regb~251_combout\,
	datad => \camino|banco|regb~256_combout\,
	combout => \camino|banco|regb~259_combout\);

-- Location: LCCOMB_X37_Y15_N12
\camino|banco|rd1[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|rd1[1]~1_combout\ = (!\camino|banco|Equal0~0_combout\ & \camino|banco|regb~259_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \camino|banco|Equal0~0_combout\,
	datad => \camino|banco|regb~259_combout\,
	combout => \camino|banco|rd1[1]~1_combout\);

-- Location: PIN_R22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Pe1[0]~I\ : cycloneii_io
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
	padio => ww_Pe1(0),
	combout => \Pe1~combout\(0));

-- Location: LCCOMB_X35_Y19_N6
\camino|alu0|Add0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|alu0|Add0~15_cout\ = CARRY((!\camino|PC|q\(9) & \camino|memory|mem~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|PC|q\(9),
	datab => \camino|memory|mem~23_combout\,
	datad => VCC,
	cout => \camino|alu0|Add0~15_cout\);

-- Location: LCCOMB_X35_Y19_N8
\camino|alu0|Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|alu0|Add0~16_combout\ = (\camino|alu0|Add0~13_combout\ & ((\camino|banco|rd1[0]~0_combout\ & (\camino|alu0|Add0~15_cout\ & VCC)) # (!\camino|banco|rd1[0]~0_combout\ & (!\camino|alu0|Add0~15_cout\)))) # (!\camino|alu0|Add0~13_combout\ & 
-- ((\camino|banco|rd1[0]~0_combout\ & (!\camino|alu0|Add0~15_cout\)) # (!\camino|banco|rd1[0]~0_combout\ & ((\camino|alu0|Add0~15_cout\) # (GND)))))
-- \camino|alu0|Add0~17\ = CARRY((\camino|alu0|Add0~13_combout\ & (!\camino|banco|rd1[0]~0_combout\ & !\camino|alu0|Add0~15_cout\)) # (!\camino|alu0|Add0~13_combout\ & ((!\camino|alu0|Add0~15_cout\) # (!\camino|banco|rd1[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \camino|alu0|Add0~13_combout\,
	datab => \camino|banco|rd1[0]~0_combout\,
	datad => VCC,
	cin => \camino|alu0|Add0~15_cout\,
	combout => \camino|alu0|Add0~16_combout\,
	cout => \camino|alu0|Add0~17\);

-- Location: LCCOMB_X36_Y19_N24
\camino|alu0|Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|alu0|Add0~18_combout\ = (\camino|memory|mem~19_combout\ & (((\camino|alu0|Add0~16_combout\)))) # (!\camino|memory|mem~19_combout\ & (\camino|memory|mem~24_combout\ $ ((\camino|banco|rd1[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~19_combout\,
	datab => \camino|memory|mem~24_combout\,
	datac => \camino|banco|rd1[0]~0_combout\,
	datad => \camino|alu0|Add0~16_combout\,
	combout => \camino|alu0|Add0~18_combout\);

-- Location: LCCOMB_X37_Y19_N24
\camino|epe|y[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|epe|y[0]~3_combout\ = (\camino|epe|y[0]~0_combout\ & (((\camino|epe|y[0]~1_combout\)))) # (!\camino|epe|y[0]~0_combout\ & ((\camino|epe|y[0]~1_combout\ & (\Pe0~combout\(0))) # (!\camino|epe|y[0]~1_combout\ & ((\camino|alu0|Add0~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pe0~combout\(0),
	datab => \camino|epe|y[0]~0_combout\,
	datac => \camino|epe|y[0]~1_combout\,
	datad => \camino|alu0|Add0~18_combout\,
	combout => \camino|epe|y[0]~3_combout\);

-- Location: LCCOMB_X37_Y19_N6
\camino|epe|y[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|epe|y[0]~4_combout\ = (\camino|epe|y[0]~3_combout\ & (((\Pe1~combout\(0)) # (!\camino|epe|y[0]~2_combout\)))) # (!\camino|epe|y[0]~3_combout\ & (\Pe3~combout\(0) & ((\camino|epe|y[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pe3~combout\(0),
	datab => \Pe1~combout\(0),
	datac => \camino|epe|y[0]~3_combout\,
	datad => \camino|epe|y[0]~2_combout\,
	combout => \camino|epe|y[0]~4_combout\);

-- Location: LCCOMB_X37_Y19_N8
\camino|epe|y[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|epe|y[0]~5_combout\ = (\uc0|s_inm~0_combout\ & (\camino|memory|mem~46_combout\)) # (!\uc0|s_inm~0_combout\ & ((\camino|epe|y[0]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \camino|memory|mem~46_combout\,
	datac => \uc0|s_inm~0_combout\,
	datad => \camino|epe|y[0]~4_combout\,
	combout => \camino|epe|y[0]~5_combout\);

-- Location: LCCOMB_X36_Y15_N4
\camino|banco|regb~48feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~48feeder_combout\ = \camino|epe|y[0]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \camino|epe|y[0]~5_combout\,
	combout => \camino|banco|regb~48feeder_combout\);

-- Location: LCFF_X36_Y15_N5
\camino|banco|regb~48\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \camino|banco|regb~48feeder_combout\,
	ena => \camino|banco|regb~229_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~48_regout\);

-- Location: LCFF_X37_Y19_N9
\camino|banco|regb~80\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \camino|epe|y[0]~5_combout\,
	ena => \camino|banco|regb~219_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~80_regout\);

-- Location: LCCOMB_X36_Y15_N26
\camino|banco|regb~208\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~208_combout\ = (\camino|memory|mem~44_combout\ & (((\camino|memory|mem~45_combout\)))) # (!\camino|memory|mem~44_combout\ & ((\camino|memory|mem~45_combout\ & ((\camino|banco|regb~80_regout\))) # (!\camino|memory|mem~45_combout\ & 
-- (\camino|banco|regb~16_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|regb~16_regout\,
	datab => \camino|banco|regb~80_regout\,
	datac => \camino|memory|mem~44_combout\,
	datad => \camino|memory|mem~45_combout\,
	combout => \camino|banco|regb~208_combout\);

-- Location: LCCOMB_X36_Y15_N0
\camino|banco|regb~209\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~209_combout\ = (\camino|memory|mem~44_combout\ & ((\camino|banco|regb~208_combout\ & (\camino|banco|regb~112_regout\)) # (!\camino|banco|regb~208_combout\ & ((\camino|banco|regb~48_regout\))))) # (!\camino|memory|mem~44_combout\ & 
-- (((\camino|banco|regb~208_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|regb~112_regout\,
	datab => \camino|banco|regb~48_regout\,
	datac => \camino|memory|mem~44_combout\,
	datad => \camino|banco|regb~208_combout\,
	combout => \camino|banco|regb~209_combout\);

-- Location: LCCOMB_X36_Y19_N4
\camino|banco|regb~120feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~120feeder_combout\ = \camino|epe|y[0]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \camino|epe|y[0]~5_combout\,
	combout => \camino|banco|regb~120feeder_combout\);

-- Location: LCFF_X36_Y19_N5
\camino|banco|regb~120\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \camino|banco|regb~120feeder_combout\,
	ena => \camino|banco|regb~249_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~120_regout\);

-- Location: LCCOMB_X37_Y17_N16
\camino|banco|regb~88feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~88feeder_combout\ = \camino|epe|y[0]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \camino|epe|y[0]~5_combout\,
	combout => \camino|banco|regb~88feeder_combout\);

-- Location: LCFF_X37_Y17_N17
\camino|banco|regb~88\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \camino|banco|regb~88feeder_combout\,
	ena => \camino|banco|regb~225_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~88_regout\);

-- Location: LCCOMB_X35_Y16_N12
\camino|banco|regb~215\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~215_combout\ = (\camino|memory|mem~45_combout\ & (((\camino|memory|mem~44_combout\) # (\camino|banco|regb~88_regout\)))) # (!\camino|memory|mem~45_combout\ & (\camino|banco|regb~24_regout\ & (!\camino|memory|mem~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|regb~24_regout\,
	datab => \camino|memory|mem~45_combout\,
	datac => \camino|memory|mem~44_combout\,
	datad => \camino|banco|regb~88_regout\,
	combout => \camino|banco|regb~215_combout\);

-- Location: LCCOMB_X35_Y16_N30
\camino|banco|regb~216\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~216_combout\ = (\camino|memory|mem~44_combout\ & ((\camino|banco|regb~215_combout\ & ((\camino|banco|regb~120_regout\))) # (!\camino|banco|regb~215_combout\ & (\camino|banco|regb~56_regout\)))) # (!\camino|memory|mem~44_combout\ & 
-- (((\camino|banco|regb~215_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|regb~56_regout\,
	datab => \camino|banco|regb~120_regout\,
	datac => \camino|memory|mem~44_combout\,
	datad => \camino|banco|regb~215_combout\,
	combout => \camino|banco|regb~216_combout\);

-- Location: LCFF_X36_Y16_N9
\camino|banco|regb~72\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \camino|epe|y[0]~5_combout\,
	sload => VCC,
	ena => \camino|banco|regb~221_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~72_regout\);

-- Location: LCCOMB_X34_Y19_N26
\camino|banco|regb~226\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~226_combout\ = (!\camino|memory|mem~42_combout\ & (\camino|memory|mem~40_combout\ & (!\camino|memory|mem~38_combout\ & \camino|memory|mem~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~42_combout\,
	datab => \camino|memory|mem~40_combout\,
	datac => \camino|memory|mem~38_combout\,
	datad => \camino|memory|mem~35_combout\,
	combout => \camino|banco|regb~226_combout\);

-- Location: LCCOMB_X34_Y19_N28
\camino|banco|regb~227\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~227_combout\ = (!\reset~combout\ & (\camino|banco|regb~226_combout\ & ((!\uc0|WideOr0~0_combout\) # (!\camino|memory|mem~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datab => \camino|memory|mem~21_combout\,
	datac => \uc0|WideOr0~0_combout\,
	datad => \camino|banco|regb~226_combout\,
	combout => \camino|banco|regb~227_combout\);

-- Location: LCFF_X37_Y15_N5
\camino|banco|regb~40\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \camino|epe|y[0]~5_combout\,
	sload => VCC,
	ena => \camino|banco|regb~227_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~40_regout\);

-- Location: LCCOMB_X35_Y16_N2
\camino|banco|regb~210\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~210_combout\ = (\camino|memory|mem~45_combout\ & (((\camino|memory|mem~44_combout\)))) # (!\camino|memory|mem~45_combout\ & ((\camino|memory|mem~44_combout\ & ((\camino|banco|regb~40_regout\))) # (!\camino|memory|mem~44_combout\ & 
-- (\camino|banco|regb~8_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|regb~8_regout\,
	datab => \camino|memory|mem~45_combout\,
	datac => \camino|memory|mem~44_combout\,
	datad => \camino|banco|regb~40_regout\,
	combout => \camino|banco|regb~210_combout\);

-- Location: LCCOMB_X36_Y16_N8
\camino|banco|regb~211\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~211_combout\ = (\camino|memory|mem~45_combout\ & ((\camino|banco|regb~210_combout\ & (\camino|banco|regb~104_regout\)) # (!\camino|banco|regb~210_combout\ & ((\camino|banco|regb~72_regout\))))) # (!\camino|memory|mem~45_combout\ & 
-- (((\camino|banco|regb~210_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|regb~104_regout\,
	datab => \camino|memory|mem~45_combout\,
	datac => \camino|banco|regb~72_regout\,
	datad => \camino|banco|regb~210_combout\,
	combout => \camino|banco|regb~211_combout\);

-- Location: LCCOMB_X35_Y18_N30
\camino|banco|regb~96feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~96feeder_combout\ = \camino|epe|y[0]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \camino|epe|y[0]~5_combout\,
	combout => \camino|banco|regb~96feeder_combout\);

-- Location: LCFF_X35_Y18_N31
\camino|banco|regb~96\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \camino|banco|regb~96feeder_combout\,
	ena => \camino|banco|regb~247_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~96_regout\);

-- Location: LCCOMB_X36_Y15_N14
\camino|banco|regb~32feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~32feeder_combout\ = \camino|epe|y[0]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \camino|epe|y[0]~5_combout\,
	combout => \camino|banco|regb~32feeder_combout\);

-- Location: LCFF_X36_Y15_N15
\camino|banco|regb~32\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \camino|banco|regb~32feeder_combout\,
	ena => \camino|banco|regb~231_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~32_regout\);

-- Location: LCCOMB_X35_Y18_N6
\camino|banco|regb~212\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~212_combout\ = (\camino|memory|mem~45_combout\ & (((\camino|memory|mem~44_combout\)))) # (!\camino|memory|mem~45_combout\ & ((\camino|memory|mem~44_combout\ & ((\camino|banco|regb~32_regout\))) # (!\camino|memory|mem~44_combout\ & 
-- (\camino|banco|regb~0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|regb~0_regout\,
	datab => \camino|banco|regb~32_regout\,
	datac => \camino|memory|mem~45_combout\,
	datad => \camino|memory|mem~44_combout\,
	combout => \camino|banco|regb~212_combout\);

-- Location: LCCOMB_X35_Y18_N16
\camino|banco|regb~213\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~213_combout\ = (\camino|memory|mem~45_combout\ & ((\camino|banco|regb~212_combout\ & ((\camino|banco|regb~96_regout\))) # (!\camino|banco|regb~212_combout\ & (\camino|banco|regb~64_regout\)))) # (!\camino|memory|mem~45_combout\ & 
-- (((\camino|banco|regb~212_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|regb~64_regout\,
	datab => \camino|banco|regb~96_regout\,
	datac => \camino|memory|mem~45_combout\,
	datad => \camino|banco|regb~212_combout\,
	combout => \camino|banco|regb~213_combout\);

-- Location: LCCOMB_X36_Y16_N22
\camino|banco|regb~214\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~214_combout\ = (\camino|memory|mem~46_combout\ & ((\camino|banco|regb~211_combout\) # ((\camino|memory|mem~27_combout\)))) # (!\camino|memory|mem~46_combout\ & (((!\camino|memory|mem~27_combout\ & \camino|banco|regb~213_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~46_combout\,
	datab => \camino|banco|regb~211_combout\,
	datac => \camino|memory|mem~27_combout\,
	datad => \camino|banco|regb~213_combout\,
	combout => \camino|banco|regb~214_combout\);

-- Location: LCCOMB_X36_Y16_N24
\camino|banco|regb~217\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~217_combout\ = (\camino|memory|mem~27_combout\ & ((\camino|banco|regb~214_combout\ & ((\camino|banco|regb~216_combout\))) # (!\camino|banco|regb~214_combout\ & (\camino|banco|regb~209_combout\)))) # (!\camino|memory|mem~27_combout\ & 
-- (((\camino|banco|regb~214_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~27_combout\,
	datab => \camino|banco|regb~209_combout\,
	datac => \camino|banco|regb~216_combout\,
	datad => \camino|banco|regb~214_combout\,
	combout => \camino|banco|regb~217_combout\);

-- Location: LCCOMB_X35_Y19_N26
\camino|banco|rd1[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|rd1[0]~0_combout\ = (!\camino|banco|Equal0~0_combout\ & \camino|banco|regb~217_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \camino|banco|Equal0~0_combout\,
	datad => \camino|banco|regb~217_combout\,
	combout => \camino|banco|rd1[0]~0_combout\);

-- Location: LCCOMB_X35_Y19_N10
\camino|alu0|Add0~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|alu0|Add0~20_combout\ = ((\camino|alu0|Add0~19_combout\ $ (\camino|banco|rd1[1]~1_combout\ $ (!\camino|alu0|Add0~17\)))) # (GND)
-- \camino|alu0|Add0~21\ = CARRY((\camino|alu0|Add0~19_combout\ & ((\camino|banco|rd1[1]~1_combout\) # (!\camino|alu0|Add0~17\))) # (!\camino|alu0|Add0~19_combout\ & (\camino|banco|rd1[1]~1_combout\ & !\camino|alu0|Add0~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \camino|alu0|Add0~19_combout\,
	datab => \camino|banco|rd1[1]~1_combout\,
	datad => VCC,
	cin => \camino|alu0|Add0~17\,
	combout => \camino|alu0|Add0~20_combout\,
	cout => \camino|alu0|Add0~21\);

-- Location: LCCOMB_X36_Y19_N14
\camino|alu0|Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|alu0|Add0~22_combout\ = (\camino|memory|mem~19_combout\ & (((\camino|alu0|Add0~20_combout\)))) # (!\camino|memory|mem~19_combout\ & (\camino|banco|rd1[1]~1_combout\ $ ((\camino|memory|mem~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~19_combout\,
	datab => \camino|banco|rd1[1]~1_combout\,
	datac => \camino|memory|mem~24_combout\,
	datad => \camino|alu0|Add0~20_combout\,
	combout => \camino|alu0|Add0~22_combout\);

-- Location: PIN_T22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Pe1[2]~I\ : cycloneii_io
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
	padio => ww_Pe1(2),
	combout => \Pe1~combout\(2));

-- Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Pe0[2]~I\ : cycloneii_io
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
	padio => ww_Pe0(2),
	combout => \Pe0~combout\(2));

-- Location: LCCOMB_X37_Y19_N12
\camino|epe|y[2]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|epe|y[2]~9_combout\ = (\camino|epe|y[0]~1_combout\ & ((\camino|epe|y[0]~0_combout\) # ((\Pe0~combout\(2))))) # (!\camino|epe|y[0]~1_combout\ & (!\camino|epe|y[0]~0_combout\ & (\camino|alu0|Add0~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|epe|y[0]~1_combout\,
	datab => \camino|epe|y[0]~0_combout\,
	datac => \camino|alu0|Add0~25_combout\,
	datad => \Pe0~combout\(2),
	combout => \camino|epe|y[2]~9_combout\);

-- Location: LCCOMB_X37_Y19_N10
\camino|epe|y[2]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|epe|y[2]~10_combout\ = (\camino|epe|y[0]~2_combout\ & ((\camino|epe|y[2]~9_combout\ & ((\Pe1~combout\(2)))) # (!\camino|epe|y[2]~9_combout\ & (\Pe3~combout\(2))))) # (!\camino|epe|y[0]~2_combout\ & (((\camino|epe|y[2]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pe3~combout\(2),
	datab => \camino|epe|y[0]~2_combout\,
	datac => \Pe1~combout\(2),
	datad => \camino|epe|y[2]~9_combout\,
	combout => \camino|epe|y[2]~10_combout\);

-- Location: LCCOMB_X37_Y19_N4
\camino|epe|y[2]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|epe|y[2]~11_combout\ = (\uc0|s_inm~0_combout\ & (\camino|memory|mem~44_combout\)) # (!\uc0|s_inm~0_combout\ & ((\camino|epe|y[2]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \camino|memory|mem~44_combout\,
	datac => \uc0|s_inm~0_combout\,
	datad => \camino|epe|y[2]~10_combout\,
	combout => \camino|epe|y[2]~11_combout\);

-- Location: LCFF_X38_Y16_N21
\camino|banco|regb~42\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \camino|epe|y[2]~11_combout\,
	sload => VCC,
	ena => \camino|banco|regb~227_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~42_regout\);

-- Location: LCFF_X38_Y17_N9
\camino|banco|regb~58\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \camino|epe|y[2]~11_combout\,
	sload => VCC,
	ena => \camino|banco|regb~233_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~58_regout\);

-- Location: LCFF_X38_Y16_N31
\camino|banco|regb~50\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \camino|epe|y[2]~11_combout\,
	sload => VCC,
	ena => \camino|banco|regb~229_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~50_regout\);

-- Location: LCFF_X38_Y17_N19
\camino|banco|regb~34\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \camino|epe|y[2]~11_combout\,
	sload => VCC,
	ena => \camino|banco|regb~231_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~34_regout\);

-- Location: LCCOMB_X38_Y17_N18
\camino|banco|regb~262\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~262_combout\ = (\camino|memory|mem~27_combout\ & ((\camino|banco|regb~50_regout\) # ((\camino|memory|mem~46_combout\)))) # (!\camino|memory|mem~27_combout\ & (((\camino|banco|regb~34_regout\ & !\camino|memory|mem~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~27_combout\,
	datab => \camino|banco|regb~50_regout\,
	datac => \camino|banco|regb~34_regout\,
	datad => \camino|memory|mem~46_combout\,
	combout => \camino|banco|regb~262_combout\);

-- Location: LCCOMB_X38_Y17_N8
\camino|banco|regb~263\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~263_combout\ = (\camino|memory|mem~46_combout\ & ((\camino|banco|regb~262_combout\ & ((\camino|banco|regb~58_regout\))) # (!\camino|banco|regb~262_combout\ & (\camino|banco|regb~42_regout\)))) # (!\camino|memory|mem~46_combout\ & 
-- (((\camino|banco|regb~262_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~46_combout\,
	datab => \camino|banco|regb~42_regout\,
	datac => \camino|banco|regb~58_regout\,
	datad => \camino|banco|regb~262_combout\,
	combout => \camino|banco|regb~263_combout\);

-- Location: LCCOMB_X34_Y19_N22
\camino|banco|regb~234\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~234_combout\ = (!\camino|memory|mem~42_combout\ & (!\camino|memory|mem~40_combout\ & (\camino|memory|mem~38_combout\ & !\camino|memory|mem~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~42_combout\,
	datab => \camino|memory|mem~40_combout\,
	datac => \camino|memory|mem~38_combout\,
	datad => \camino|memory|mem~35_combout\,
	combout => \camino|banco|regb~234_combout\);

-- Location: LCCOMB_X34_Y19_N12
\camino|banco|regb~235\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~235_combout\ = (!\reset~combout\ & (\camino|banco|regb~234_combout\ & ((!\uc0|WideOr0~0_combout\) # (!\camino|memory|mem~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datab => \camino|memory|mem~21_combout\,
	datac => \uc0|WideOr0~0_combout\,
	datad => \camino|banco|regb~234_combout\,
	combout => \camino|banco|regb~235_combout\);

-- Location: LCFF_X37_Y17_N9
\camino|banco|regb~18\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \camino|epe|y[2]~11_combout\,
	sload => VCC,
	ena => \camino|banco|regb~235_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~18_regout\);

-- Location: LCCOMB_X35_Y20_N26
\camino|banco|regb~236\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~236_combout\ = (!\camino|memory|mem~42_combout\ & (!\camino|memory|mem~40_combout\ & (!\camino|memory|mem~35_combout\ & !\camino|memory|mem~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~42_combout\,
	datab => \camino|memory|mem~40_combout\,
	datac => \camino|memory|mem~35_combout\,
	datad => \camino|memory|mem~38_combout\,
	combout => \camino|banco|regb~236_combout\);

-- Location: LCCOMB_X35_Y20_N0
\camino|banco|regb~237\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~237_combout\ = (\camino|banco|regb~236_combout\ & (!\reset~combout\ & ((!\uc0|WideOr0~0_combout\) # (!\camino|memory|mem~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~21_combout\,
	datab => \camino|banco|regb~236_combout\,
	datac => \reset~combout\,
	datad => \uc0|WideOr0~0_combout\,
	combout => \camino|banco|regb~237_combout\);

-- Location: LCFF_X38_Y15_N31
\camino|banco|regb~2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \camino|epe|y[2]~11_combout\,
	sload => VCC,
	ena => \camino|banco|regb~237_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~2_regout\);

-- Location: LCCOMB_X37_Y17_N12
\camino|banco|regb~264\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~264_combout\ = (\camino|memory|mem~46_combout\ & ((\camino|banco|regb~10_regout\) # ((\camino|memory|mem~27_combout\)))) # (!\camino|memory|mem~46_combout\ & (((\camino|banco|regb~2_regout\ & !\camino|memory|mem~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|regb~10_regout\,
	datab => \camino|banco|regb~2_regout\,
	datac => \camino|memory|mem~46_combout\,
	datad => \camino|memory|mem~27_combout\,
	combout => \camino|banco|regb~264_combout\);

-- Location: LCCOMB_X37_Y17_N8
\camino|banco|regb~265\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~265_combout\ = (\camino|memory|mem~27_combout\ & ((\camino|banco|regb~264_combout\ & (\camino|banco|regb~26_regout\)) # (!\camino|banco|regb~264_combout\ & ((\camino|banco|regb~18_regout\))))) # (!\camino|memory|mem~27_combout\ & 
-- (((\camino|banco|regb~264_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|regb~26_regout\,
	datab => \camino|memory|mem~27_combout\,
	datac => \camino|banco|regb~18_regout\,
	datad => \camino|banco|regb~264_combout\,
	combout => \camino|banco|regb~265_combout\);

-- Location: LCCOMB_X38_Y17_N30
\camino|banco|regb~266\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~266_combout\ = (\camino|memory|mem~45_combout\ & (\camino|memory|mem~44_combout\)) # (!\camino|memory|mem~45_combout\ & ((\camino|memory|mem~44_combout\ & (\camino|banco|regb~263_combout\)) # (!\camino|memory|mem~44_combout\ & 
-- ((\camino|banco|regb~265_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~45_combout\,
	datab => \camino|memory|mem~44_combout\,
	datac => \camino|banco|regb~263_combout\,
	datad => \camino|banco|regb~265_combout\,
	combout => \camino|banco|regb~266_combout\);

-- Location: LCFF_X37_Y19_N31
\camino|banco|regb~82\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \camino|epe|y[2]~11_combout\,
	sload => VCC,
	ena => \camino|banco|regb~219_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~82_regout\);

-- Location: LCFF_X36_Y16_N21
\camino|banco|regb~74\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \camino|epe|y[2]~11_combout\,
	sload => VCC,
	ena => \camino|banco|regb~221_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~74_regout\);

-- Location: LCCOMB_X38_Y17_N12
\camino|banco|regb~260\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~260_combout\ = (\camino|memory|mem~27_combout\ & (((\camino|memory|mem~46_combout\)))) # (!\camino|memory|mem~27_combout\ & ((\camino|memory|mem~46_combout\ & ((\camino|banco|regb~74_regout\))) # (!\camino|memory|mem~46_combout\ & 
-- (\camino|banco|regb~66_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|regb~66_regout\,
	datab => \camino|banco|regb~74_regout\,
	datac => \camino|memory|mem~27_combout\,
	datad => \camino|memory|mem~46_combout\,
	combout => \camino|banco|regb~260_combout\);

-- Location: LCCOMB_X37_Y19_N30
\camino|banco|regb~261\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~261_combout\ = (\camino|memory|mem~27_combout\ & ((\camino|banco|regb~260_combout\ & (\camino|banco|regb~90_regout\)) # (!\camino|banco|regb~260_combout\ & ((\camino|banco|regb~82_regout\))))) # (!\camino|memory|mem~27_combout\ & 
-- (((\camino|banco|regb~260_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|regb~90_regout\,
	datab => \camino|memory|mem~27_combout\,
	datac => \camino|banco|regb~82_regout\,
	datad => \camino|banco|regb~260_combout\,
	combout => \camino|banco|regb~261_combout\);

-- Location: LCCOMB_X38_Y19_N10
\camino|banco|regb~122feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~122feeder_combout\ = \camino|epe|y[2]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \camino|epe|y[2]~11_combout\,
	combout => \camino|banco|regb~122feeder_combout\);

-- Location: LCFF_X38_Y19_N11
\camino|banco|regb~122\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \camino|banco|regb~122feeder_combout\,
	ena => \camino|banco|regb~249_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~122_regout\);

-- Location: LCCOMB_X35_Y20_N14
\camino|banco|regb~242\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~242_combout\ = (\camino|memory|mem~35_combout\ & (\camino|memory|mem~40_combout\ & (\camino|memory|mem~42_combout\ & !\camino|memory|mem~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~35_combout\,
	datab => \camino|memory|mem~40_combout\,
	datac => \camino|memory|mem~42_combout\,
	datad => \camino|memory|mem~38_combout\,
	combout => \camino|banco|regb~242_combout\);

-- Location: LCCOMB_X35_Y20_N12
\camino|banco|regb~243\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~243_combout\ = (\camino|banco|regb~242_combout\ & (!\reset~combout\ & ((!\uc0|WideOr0~0_combout\) # (!\camino|memory|mem~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~21_combout\,
	datab => \camino|banco|regb~242_combout\,
	datac => \reset~combout\,
	datad => \uc0|WideOr0~0_combout\,
	combout => \camino|banco|regb~243_combout\);

-- Location: LCFF_X37_Y19_N5
\camino|banco|regb~106\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \camino|epe|y[2]~11_combout\,
	ena => \camino|banco|regb~243_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~106_regout\);

-- Location: LCCOMB_X35_Y20_N4
\camino|banco|regb~245\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~245_combout\ = (\camino|banco|regb~244_combout\ & (!\reset~combout\ & ((!\uc0|WideOr0~0_combout\) # (!\camino|memory|mem~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|regb~244_combout\,
	datab => \reset~combout\,
	datac => \camino|memory|mem~21_combout\,
	datad => \uc0|WideOr0~0_combout\,
	combout => \camino|banco|regb~245_combout\);

-- Location: LCFF_X38_Y20_N29
\camino|banco|regb~114\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \camino|epe|y[2]~11_combout\,
	sload => VCC,
	ena => \camino|banco|regb~245_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~114_regout\);

-- Location: LCCOMB_X38_Y20_N28
\camino|banco|regb~267\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~267_combout\ = (\camino|memory|mem~46_combout\ & (((\camino|memory|mem~27_combout\)))) # (!\camino|memory|mem~46_combout\ & ((\camino|memory|mem~27_combout\ & ((\camino|banco|regb~114_regout\))) # (!\camino|memory|mem~27_combout\ & 
-- (\camino|banco|regb~98_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|regb~98_regout\,
	datab => \camino|memory|mem~46_combout\,
	datac => \camino|banco|regb~114_regout\,
	datad => \camino|memory|mem~27_combout\,
	combout => \camino|banco|regb~267_combout\);

-- Location: LCCOMB_X38_Y17_N28
\camino|banco|regb~268\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~268_combout\ = (\camino|memory|mem~46_combout\ & ((\camino|banco|regb~267_combout\ & (\camino|banco|regb~122_regout\)) # (!\camino|banco|regb~267_combout\ & ((\camino|banco|regb~106_regout\))))) # (!\camino|memory|mem~46_combout\ & 
-- (((\camino|banco|regb~267_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~46_combout\,
	datab => \camino|banco|regb~122_regout\,
	datac => \camino|banco|regb~106_regout\,
	datad => \camino|banco|regb~267_combout\,
	combout => \camino|banco|regb~268_combout\);

-- Location: LCCOMB_X38_Y17_N26
\camino|banco|regb~269\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~269_combout\ = (\camino|memory|mem~45_combout\ & ((\camino|banco|regb~266_combout\ & ((\camino|banco|regb~268_combout\))) # (!\camino|banco|regb~266_combout\ & (\camino|banco|regb~261_combout\)))) # (!\camino|memory|mem~45_combout\ & 
-- (\camino|banco|regb~266_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~45_combout\,
	datab => \camino|banco|regb~266_combout\,
	datac => \camino|banco|regb~261_combout\,
	datad => \camino|banco|regb~268_combout\,
	combout => \camino|banco|regb~269_combout\);

-- Location: LCCOMB_X38_Y17_N16
\camino|banco|rd1[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|rd1[2]~2_combout\ = (!\camino|banco|Equal0~0_combout\ & \camino|banco|regb~269_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|Equal0~0_combout\,
	datad => \camino|banco|regb~269_combout\,
	combout => \camino|banco|rd1[2]~2_combout\);

-- Location: LCCOMB_X35_Y19_N12
\camino|alu0|Add0~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|alu0|Add0~23_combout\ = (\camino|alu0|Add0~41_combout\ & ((\camino|banco|rd1[2]~2_combout\ & (\camino|alu0|Add0~21\ & VCC)) # (!\camino|banco|rd1[2]~2_combout\ & (!\camino|alu0|Add0~21\)))) # (!\camino|alu0|Add0~41_combout\ & 
-- ((\camino|banco|rd1[2]~2_combout\ & (!\camino|alu0|Add0~21\)) # (!\camino|banco|rd1[2]~2_combout\ & ((\camino|alu0|Add0~21\) # (GND)))))
-- \camino|alu0|Add0~24\ = CARRY((\camino|alu0|Add0~41_combout\ & (!\camino|banco|rd1[2]~2_combout\ & !\camino|alu0|Add0~21\)) # (!\camino|alu0|Add0~41_combout\ & ((!\camino|alu0|Add0~21\) # (!\camino|banco|rd1[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \camino|alu0|Add0~41_combout\,
	datab => \camino|banco|rd1[2]~2_combout\,
	datad => VCC,
	cin => \camino|alu0|Add0~21\,
	combout => \camino|alu0|Add0~23_combout\,
	cout => \camino|alu0|Add0~24\);

-- Location: LCCOMB_X35_Y19_N0
\camino|alu0|Add0~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|alu0|Add0~25_combout\ = (\camino|memory|mem~19_combout\ & (((\camino|alu0|Add0~23_combout\)))) # (!\camino|memory|mem~19_combout\ & (\camino|memory|mem~24_combout\ $ ((\camino|banco|rd1[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~19_combout\,
	datab => \camino|memory|mem~24_combout\,
	datac => \camino|banco|rd1[2]~2_combout\,
	datad => \camino|alu0|Add0~23_combout\,
	combout => \camino|alu0|Add0~25_combout\);

-- Location: PIN_K20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Pe3[3]~I\ : cycloneii_io
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
	padio => ww_Pe3(3),
	combout => \Pe3~combout\(3));

-- Location: LCCOMB_X40_Y16_N26
\camino|memory|mem~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|memory|mem~43_combout\ = (\camino|memory|mem~2_combout\ & ((\camino|PC|q\(4) & (!\camino|memory|mem~32_combout\)) # (!\camino|PC|q\(4) & ((\camino|memory|mem~31_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|PC|q\(4),
	datab => \camino|memory|mem~2_combout\,
	datac => \camino|memory|mem~32_combout\,
	datad => \camino|memory|mem~31_combout\,
	combout => \camino|memory|mem~43_combout\);

-- Location: LCCOMB_X38_Y15_N18
\camino|epe|y[5]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|epe|y[5]~12_combout\ = (\uc0|s_epe~1_combout\ & ((!\camino|decodificador|sal0~3_combout\))) # (!\uc0|s_epe~1_combout\ & (\uc0|s_inm~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uc0|s_inm~0_combout\,
	datac => \uc0|s_epe~1_combout\,
	datad => \camino|decodificador|sal0~3_combout\,
	combout => \camino|epe|y[5]~12_combout\);

-- Location: LCCOMB_X38_Y15_N8
\camino|epe|y[5]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|epe|y[5]~13_combout\ = (\uc0|s_epe~1_combout\ & ((\camino|epe|y[5]~12_combout\) # ((\camino|memory|mem~44_combout\ & \camino|memory|mem~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~44_combout\,
	datab => \uc0|s_epe~1_combout\,
	datac => \camino|memory|mem~43_combout\,
	datad => \camino|epe|y[5]~12_combout\,
	combout => \camino|epe|y[5]~13_combout\);

-- Location: LCCOMB_X36_Y19_N18
\camino|epe|y[3]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|epe|y[3]~14_combout\ = (\camino|epe|y[5]~12_combout\ & ((\camino|memory|mem~45_combout\) # ((\uc0|s_epe~1_combout\)))) # (!\camino|epe|y[5]~12_combout\ & (((!\uc0|s_epe~1_combout\ & \camino|alu0|Add0~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|epe|y[5]~12_combout\,
	datab => \camino|memory|mem~45_combout\,
	datac => \uc0|s_epe~1_combout\,
	datad => \camino|alu0|Add0~28_combout\,
	combout => \camino|epe|y[3]~14_combout\);

-- Location: LCCOMB_X37_Y17_N22
\camino|epe|y[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|epe|y\(3) = (\camino|epe|y[5]~13_combout\ & ((\camino|epe|y[3]~14_combout\ & (\Pe0~combout\(3))) # (!\camino|epe|y[3]~14_combout\ & ((\Pe3~combout\(3)))))) # (!\camino|epe|y[5]~13_combout\ & (((\camino|epe|y[3]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pe0~combout\(3),
	datab => \Pe3~combout\(3),
	datac => \camino|epe|y[5]~13_combout\,
	datad => \camino|epe|y[3]~14_combout\,
	combout => \camino|epe|y\(3));

-- Location: LCFF_X38_Y19_N9
\camino|banco|regb~123\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \camino|epe|y\(3),
	sload => VCC,
	ena => \camino|banco|regb~249_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~123_regout\);

-- Location: LCFF_X37_Y17_N25
\camino|banco|regb~91\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \camino|epe|y\(3),
	sload => VCC,
	ena => \camino|banco|regb~225_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~91_regout\);

-- Location: LCFF_X38_Y19_N13
\camino|banco|regb~27\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \camino|epe|y\(3),
	sload => VCC,
	ena => \camino|banco|regb~239_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~27_regout\);

-- Location: LCFF_X37_Y15_N3
\camino|banco|regb~59\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \camino|epe|y\(3),
	sload => VCC,
	ena => \camino|banco|regb~233_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~59_regout\);

-- Location: LCCOMB_X37_Y15_N2
\camino|banco|regb~277\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~277_combout\ = (\camino|memory|mem~44_combout\ & (((\camino|banco|regb~59_regout\) # (\camino|memory|mem~45_combout\)))) # (!\camino|memory|mem~44_combout\ & (\camino|banco|regb~27_regout\ & ((!\camino|memory|mem~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~44_combout\,
	datab => \camino|banco|regb~27_regout\,
	datac => \camino|banco|regb~59_regout\,
	datad => \camino|memory|mem~45_combout\,
	combout => \camino|banco|regb~277_combout\);

-- Location: LCCOMB_X37_Y17_N24
\camino|banco|regb~278\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~278_combout\ = (\camino|memory|mem~45_combout\ & ((\camino|banco|regb~277_combout\ & (\camino|banco|regb~123_regout\)) # (!\camino|banco|regb~277_combout\ & ((\camino|banco|regb~91_regout\))))) # (!\camino|memory|mem~45_combout\ & 
-- (((\camino|banco|regb~277_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~45_combout\,
	datab => \camino|banco|regb~123_regout\,
	datac => \camino|banco|regb~91_regout\,
	datad => \camino|banco|regb~277_combout\,
	combout => \camino|banco|regb~278_combout\);

-- Location: LCCOMB_X36_Y20_N30
\camino|banco|regb~35feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~35feeder_combout\ = \camino|epe|y\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \camino|epe|y\(3),
	combout => \camino|banco|regb~35feeder_combout\);

-- Location: LCFF_X36_Y20_N31
\camino|banco|regb~35\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \camino|banco|regb~35feeder_combout\,
	ena => \camino|banco|regb~231_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~35_regout\);

-- Location: LCFF_X37_Y20_N15
\camino|banco|regb~99\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \camino|epe|y\(3),
	sload => VCC,
	ena => \camino|banco|regb~247_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~99_regout\);

-- Location: LCFF_X36_Y16_N17
\camino|banco|regb~67\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \camino|epe|y\(3),
	sload => VCC,
	ena => \camino|banco|regb~223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~67_regout\);

-- Location: LCCOMB_X36_Y16_N16
\camino|banco|regb~274\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~274_combout\ = (\camino|memory|mem~45_combout\ & (((\camino|banco|regb~67_regout\) # (\camino|memory|mem~44_combout\)))) # (!\camino|memory|mem~45_combout\ & (\camino|banco|regb~3_regout\ & ((!\camino|memory|mem~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|regb~3_regout\,
	datab => \camino|memory|mem~45_combout\,
	datac => \camino|banco|regb~67_regout\,
	datad => \camino|memory|mem~44_combout\,
	combout => \camino|banco|regb~274_combout\);

-- Location: LCCOMB_X36_Y20_N4
\camino|banco|regb~275\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~275_combout\ = (\camino|memory|mem~44_combout\ & ((\camino|banco|regb~274_combout\ & ((\camino|banco|regb~99_regout\))) # (!\camino|banco|regb~274_combout\ & (\camino|banco|regb~35_regout\)))) # (!\camino|memory|mem~44_combout\ & 
-- (((\camino|banco|regb~274_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~44_combout\,
	datab => \camino|banco|regb~35_regout\,
	datac => \camino|banco|regb~99_regout\,
	datad => \camino|banco|regb~274_combout\,
	combout => \camino|banco|regb~275_combout\);

-- Location: LCCOMB_X36_Y17_N14
\camino|banco|regb~107feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~107feeder_combout\ = \camino|epe|y\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \camino|epe|y\(3),
	combout => \camino|banco|regb~107feeder_combout\);

-- Location: LCFF_X36_Y17_N15
\camino|banco|regb~107\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \camino|banco|regb~107feeder_combout\,
	ena => \camino|banco|regb~243_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~107_regout\);

-- Location: LCFF_X37_Y15_N1
\camino|banco|regb~43\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \camino|epe|y\(3),
	sload => VCC,
	ena => \camino|banco|regb~227_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~43_regout\);

-- Location: LCFF_X37_Y18_N23
\camino|banco|regb~75\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \camino|epe|y\(3),
	sload => VCC,
	ena => \camino|banco|regb~221_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~75_regout\);

-- Location: LCCOMB_X36_Y17_N18
\camino|banco|regb~272\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~272_combout\ = (\camino|memory|mem~44_combout\ & (((\camino|memory|mem~45_combout\)))) # (!\camino|memory|mem~44_combout\ & ((\camino|memory|mem~45_combout\ & ((\camino|banco|regb~75_regout\))) # (!\camino|memory|mem~45_combout\ & 
-- (\camino|banco|regb~11_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|regb~11_regout\,
	datab => \camino|banco|regb~75_regout\,
	datac => \camino|memory|mem~44_combout\,
	datad => \camino|memory|mem~45_combout\,
	combout => \camino|banco|regb~272_combout\);

-- Location: LCCOMB_X37_Y15_N0
\camino|banco|regb~273\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~273_combout\ = (\camino|memory|mem~44_combout\ & ((\camino|banco|regb~272_combout\ & (\camino|banco|regb~107_regout\)) # (!\camino|banco|regb~272_combout\ & ((\camino|banco|regb~43_regout\))))) # (!\camino|memory|mem~44_combout\ & 
-- (((\camino|banco|regb~272_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~44_combout\,
	datab => \camino|banco|regb~107_regout\,
	datac => \camino|banco|regb~43_regout\,
	datad => \camino|banco|regb~272_combout\,
	combout => \camino|banco|regb~273_combout\);

-- Location: LCCOMB_X37_Y17_N10
\camino|banco|regb~276\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~276_combout\ = (\camino|memory|mem~46_combout\ & ((\camino|memory|mem~27_combout\) # ((\camino|banco|regb~273_combout\)))) # (!\camino|memory|mem~46_combout\ & (!\camino|memory|mem~27_combout\ & (\camino|banco|regb~275_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~46_combout\,
	datab => \camino|memory|mem~27_combout\,
	datac => \camino|banco|regb~275_combout\,
	datad => \camino|banco|regb~273_combout\,
	combout => \camino|banco|regb~276_combout\);

-- Location: LCCOMB_X37_Y17_N28
\camino|banco|regb~279\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~279_combout\ = (\camino|memory|mem~27_combout\ & ((\camino|banco|regb~276_combout\ & ((\camino|banco|regb~278_combout\))) # (!\camino|banco|regb~276_combout\ & (\camino|banco|regb~271_combout\)))) # (!\camino|memory|mem~27_combout\ & 
-- (((\camino|banco|regb~276_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|regb~271_combout\,
	datab => \camino|memory|mem~27_combout\,
	datac => \camino|banco|regb~278_combout\,
	datad => \camino|banco|regb~276_combout\,
	combout => \camino|banco|regb~279_combout\);

-- Location: LCCOMB_X37_Y17_N6
\camino|banco|rd1[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|rd1[3]~3_combout\ = (!\camino|banco|Equal0~0_combout\ & \camino|banco|regb~279_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \camino|banco|Equal0~0_combout\,
	datad => \camino|banco|regb~279_combout\,
	combout => \camino|banco|rd1[3]~3_combout\);

-- Location: LCCOMB_X38_Y16_N6
\camino|memory|mem~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|memory|mem~13_combout\ = (\camino|PC|q\(1) & (!\camino|PC|q\(4) & (\camino|PC|q\(3) $ (\camino|PC|q\(0))))) # (!\camino|PC|q\(1) & (!\camino|PC|q\(0) & (\camino|PC|q\(3) $ (\camino|PC|q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|PC|q\(3),
	datab => \camino|PC|q\(0),
	datac => \camino|PC|q\(1),
	datad => \camino|PC|q\(4),
	combout => \camino|memory|mem~13_combout\);

-- Location: LCCOMB_X38_Y16_N0
\camino|memory|mem~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|memory|mem~14_combout\ = (\camino|memory|mem~8_combout\ & ((\camino|PC|q\(2) & ((\camino|memory|mem~13_combout\))) # (!\camino|PC|q\(2) & (\camino|memory|mem~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~9_combout\,
	datab => \camino|PC|q\(2),
	datac => \camino|memory|mem~8_combout\,
	datad => \camino|memory|mem~13_combout\,
	combout => \camino|memory|mem~14_combout\);

-- Location: LCCOMB_X38_Y18_N12
\camino|memory|mem~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|memory|mem~11_combout\ = (\camino|PC|q\(2) & ((\camino|PC|q\(1) & (\camino|PC|q\(0) & !\camino|PC|q\(4))) # (!\camino|PC|q\(1) & (!\camino|PC|q\(0) & \camino|PC|q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|PC|q\(2),
	datab => \camino|PC|q\(1),
	datac => \camino|PC|q\(0),
	datad => \camino|PC|q\(4),
	combout => \camino|memory|mem~11_combout\);

-- Location: LCCOMB_X38_Y18_N6
\camino|memory|mem~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|memory|mem~12_combout\ = (!\camino|PC|q\(9) & (!\camino|PC|q\(3) & (\camino|memory|mem~2_combout\ & \camino|memory|mem~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|PC|q\(9),
	datab => \camino|PC|q\(3),
	datac => \camino|memory|mem~2_combout\,
	datad => \camino|memory|mem~11_combout\,
	combout => \camino|memory|mem~12_combout\);

-- Location: LCCOMB_X37_Y16_N2
\camino|memory|mem~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|memory|mem~9_combout\ = (!\camino|PC|q\(1) & (!\camino|PC|q\(0) & (!\camino|PC|q\(3) & \camino|PC|q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|PC|q\(1),
	datab => \camino|PC|q\(0),
	datac => \camino|PC|q\(3),
	datad => \camino|PC|q\(4),
	combout => \camino|memory|mem~9_combout\);

-- Location: LCCOMB_X37_Y16_N26
\camino|memory|mem~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|memory|mem~6_combout\ = (\camino|PC|q\(3) & (\camino|PC|q\(0) $ (((!\camino|PC|q\(2) & !\camino|PC|q\(1)))))) # (!\camino|PC|q\(3) & (\camino|PC|q\(0) & (\camino|PC|q\(2) & \camino|PC|q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|PC|q\(3),
	datab => \camino|PC|q\(0),
	datac => \camino|PC|q\(2),
	datad => \camino|PC|q\(1),
	combout => \camino|memory|mem~6_combout\);

-- Location: LCCOMB_X37_Y16_N24
\camino|memory|mem~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|memory|mem~7_combout\ = (!\camino|PC|q\(4) & (\camino|memory|mem~6_combout\ & (!\camino|PC|q\(9) & \camino|memory|mem~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|PC|q\(4),
	datab => \camino|memory|mem~6_combout\,
	datac => \camino|PC|q\(9),
	datad => \camino|memory|mem~2_combout\,
	combout => \camino|memory|mem~7_combout\);

-- Location: LCCOMB_X37_Y16_N28
\camino|memory|mem~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|memory|mem~10_combout\ = (\camino|memory|mem~7_combout\) # ((\camino|PC|q\(2) & (\camino|memory|mem~9_combout\ & \camino|memory|mem~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|PC|q\(2),
	datab => \camino|memory|mem~9_combout\,
	datac => \camino|memory|mem~7_combout\,
	datad => \camino|memory|mem~8_combout\,
	combout => \camino|memory|mem~10_combout\);

-- Location: LCCOMB_X38_Y16_N24
\camino|banco|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|Equal1~0_combout\ = (!\camino|memory|mem~5_combout\ & (!\camino|memory|mem~14_combout\ & (!\camino|memory|mem~12_combout\ & !\camino|memory|mem~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~5_combout\,
	datab => \camino|memory|mem~14_combout\,
	datac => \camino|memory|mem~12_combout\,
	datad => \camino|memory|mem~10_combout\,
	combout => \camino|banco|Equal1~0_combout\);

-- Location: LCCOMB_X38_Y19_N2
\camino|banco|regb~165\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~165_combout\ = (\camino|memory|mem~14_combout\ & (((\camino|memory|mem~12_combout\)))) # (!\camino|memory|mem~14_combout\ & ((\camino|memory|mem~12_combout\ & ((\camino|banco|regb~91_regout\))) # (!\camino|memory|mem~12_combout\ & 
-- (\camino|banco|regb~27_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|regb~27_regout\,
	datab => \camino|banco|regb~91_regout\,
	datac => \camino|memory|mem~14_combout\,
	datad => \camino|memory|mem~12_combout\,
	combout => \camino|banco|regb~165_combout\);

-- Location: LCCOMB_X38_Y19_N8
\camino|banco|regb~166\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~166_combout\ = (\camino|memory|mem~14_combout\ & ((\camino|banco|regb~165_combout\ & ((\camino|banco|regb~123_regout\))) # (!\camino|banco|regb~165_combout\ & (\camino|banco|regb~59_regout\)))) # (!\camino|memory|mem~14_combout\ & 
-- (((\camino|banco|regb~165_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~14_combout\,
	datab => \camino|banco|regb~59_regout\,
	datac => \camino|banco|regb~123_regout\,
	datad => \camino|banco|regb~165_combout\,
	combout => \camino|banco|regb~166_combout\);

-- Location: LCCOMB_X36_Y17_N16
\camino|banco|regb~11feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~11feeder_combout\ = \camino|epe|y\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \camino|epe|y\(3),
	combout => \camino|banco|regb~11feeder_combout\);

-- Location: LCFF_X36_Y17_N17
\camino|banco|regb~11\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \camino|banco|regb~11feeder_combout\,
	ena => \camino|banco|regb~241_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~11_regout\);

-- Location: LCCOMB_X37_Y18_N4
\camino|banco|regb~158\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~158_combout\ = (\camino|memory|mem~12_combout\ & ((\camino|banco|regb~75_regout\) # ((\camino|memory|mem~14_combout\)))) # (!\camino|memory|mem~12_combout\ & (((\camino|banco|regb~11_regout\ & !\camino|memory|mem~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~12_combout\,
	datab => \camino|banco|regb~75_regout\,
	datac => \camino|banco|regb~11_regout\,
	datad => \camino|memory|mem~14_combout\,
	combout => \camino|banco|regb~158_combout\);

-- Location: LCCOMB_X38_Y19_N4
\camino|banco|regb~159\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~159_combout\ = (\camino|memory|mem~14_combout\ & ((\camino|banco|regb~158_combout\ & ((\camino|banco|regb~107_regout\))) # (!\camino|banco|regb~158_combout\ & (\camino|banco|regb~43_regout\)))) # (!\camino|memory|mem~14_combout\ & 
-- (((\camino|banco|regb~158_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|regb~43_regout\,
	datab => \camino|banco|regb~107_regout\,
	datac => \camino|memory|mem~14_combout\,
	datad => \camino|banco|regb~158_combout\,
	combout => \camino|banco|regb~159_combout\);

-- Location: LCCOMB_X36_Y20_N24
\camino|banco|regb~3feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~3feeder_combout\ = \camino|epe|y\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \camino|epe|y\(3),
	combout => \camino|banco|regb~3feeder_combout\);

-- Location: LCFF_X36_Y20_N25
\camino|banco|regb~3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \camino|banco|regb~3feeder_combout\,
	ena => \camino|banco|regb~237_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~3_regout\);

-- Location: LCCOMB_X37_Y20_N28
\camino|banco|regb~162\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~162_combout\ = (\camino|memory|mem~12_combout\ & (((\camino|memory|mem~14_combout\)))) # (!\camino|memory|mem~12_combout\ & ((\camino|memory|mem~14_combout\ & (\camino|banco|regb~35_regout\)) # (!\camino|memory|mem~14_combout\ & 
-- ((\camino|banco|regb~3_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|regb~35_regout\,
	datab => \camino|memory|mem~12_combout\,
	datac => \camino|memory|mem~14_combout\,
	datad => \camino|banco|regb~3_regout\,
	combout => \camino|banco|regb~162_combout\);

-- Location: LCCOMB_X37_Y20_N14
\camino|banco|regb~163\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~163_combout\ = (\camino|memory|mem~12_combout\ & ((\camino|banco|regb~162_combout\ & ((\camino|banco|regb~99_regout\))) # (!\camino|banco|regb~162_combout\ & (\camino|banco|regb~67_regout\)))) # (!\camino|memory|mem~12_combout\ & 
-- (((\camino|banco|regb~162_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|regb~67_regout\,
	datab => \camino|memory|mem~12_combout\,
	datac => \camino|banco|regb~99_regout\,
	datad => \camino|banco|regb~162_combout\,
	combout => \camino|banco|regb~163_combout\);

-- Location: LCFF_X36_Y18_N19
\camino|banco|regb~83\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \camino|epe|y\(3),
	sload => VCC,
	ena => \camino|banco|regb~219_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~83_regout\);

-- Location: LCFF_X38_Y16_N11
\camino|banco|regb~51\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \camino|epe|y\(3),
	sload => VCC,
	ena => \camino|banco|regb~229_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~51_regout\);

-- Location: LCCOMB_X38_Y16_N10
\camino|banco|regb~160\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~160_combout\ = (\camino|memory|mem~14_combout\ & (((\camino|banco|regb~51_regout\) # (\camino|memory|mem~12_combout\)))) # (!\camino|memory|mem~14_combout\ & (\camino|banco|regb~19_regout\ & ((!\camino|memory|mem~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|regb~19_regout\,
	datab => \camino|memory|mem~14_combout\,
	datac => \camino|banco|regb~51_regout\,
	datad => \camino|memory|mem~12_combout\,
	combout => \camino|banco|regb~160_combout\);

-- Location: LCCOMB_X36_Y18_N18
\camino|banco|regb~161\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~161_combout\ = (\camino|memory|mem~12_combout\ & ((\camino|banco|regb~160_combout\ & (\camino|banco|regb~115_regout\)) # (!\camino|banco|regb~160_combout\ & ((\camino|banco|regb~83_regout\))))) # (!\camino|memory|mem~12_combout\ & 
-- (((\camino|banco|regb~160_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|regb~115_regout\,
	datab => \camino|memory|mem~12_combout\,
	datac => \camino|banco|regb~83_regout\,
	datad => \camino|banco|regb~160_combout\,
	combout => \camino|banco|regb~161_combout\);

-- Location: LCCOMB_X38_Y19_N30
\camino|banco|regb~164\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~164_combout\ = (\camino|memory|mem~5_combout\ & (\camino|memory|mem~10_combout\)) # (!\camino|memory|mem~5_combout\ & ((\camino|memory|mem~10_combout\ & ((\camino|banco|regb~161_combout\))) # (!\camino|memory|mem~10_combout\ & 
-- (\camino|banco|regb~163_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~5_combout\,
	datab => \camino|memory|mem~10_combout\,
	datac => \camino|banco|regb~163_combout\,
	datad => \camino|banco|regb~161_combout\,
	combout => \camino|banco|regb~164_combout\);

-- Location: LCCOMB_X38_Y19_N6
\camino|banco|regb~167\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~167_combout\ = (\camino|memory|mem~5_combout\ & ((\camino|banco|regb~164_combout\ & (\camino|banco|regb~166_combout\)) # (!\camino|banco|regb~164_combout\ & ((\camino|banco|regb~159_combout\))))) # (!\camino|memory|mem~5_combout\ & 
-- (((\camino|banco|regb~164_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~5_combout\,
	datab => \camino|banco|regb~166_combout\,
	datac => \camino|banco|regb~159_combout\,
	datad => \camino|banco|regb~164_combout\,
	combout => \camino|banco|regb~167_combout\);

-- Location: LCCOMB_X38_Y19_N0
\camino|alu0|Add0~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|alu0|Add0~42_combout\ = (\camino|PC|q\(9) & (!\camino|banco|Equal1~0_combout\ & ((\camino|banco|regb~167_combout\)))) # (!\camino|PC|q\(9) & (\camino|memory|mem~23_combout\ $ (((!\camino|banco|Equal1~0_combout\ & 
-- \camino|banco|regb~167_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|PC|q\(9),
	datab => \camino|banco|Equal1~0_combout\,
	datac => \camino|memory|mem~23_combout\,
	datad => \camino|banco|regb~167_combout\,
	combout => \camino|alu0|Add0~42_combout\);

-- Location: LCCOMB_X35_Y19_N14
\camino|alu0|Add0~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|alu0|Add0~26_combout\ = ((\camino|banco|rd1[3]~3_combout\ $ (\camino|alu0|Add0~42_combout\ $ (!\camino|alu0|Add0~24\)))) # (GND)
-- \camino|alu0|Add0~27\ = CARRY((\camino|banco|rd1[3]~3_combout\ & ((\camino|alu0|Add0~42_combout\) # (!\camino|alu0|Add0~24\))) # (!\camino|banco|rd1[3]~3_combout\ & (\camino|alu0|Add0~42_combout\ & !\camino|alu0|Add0~24\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|rd1[3]~3_combout\,
	datab => \camino|alu0|Add0~42_combout\,
	datad => VCC,
	cin => \camino|alu0|Add0~24\,
	combout => \camino|alu0|Add0~26_combout\,
	cout => \camino|alu0|Add0~27\);

-- Location: LCCOMB_X36_Y19_N12
\camino|alu0|Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|alu0|Add0~28_combout\ = (\camino|memory|mem~19_combout\ & (((\camino|alu0|Add0~26_combout\)))) # (!\camino|memory|mem~19_combout\ & (\camino|banco|rd1[3]~3_combout\ $ ((\camino|memory|mem~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~19_combout\,
	datab => \camino|banco|rd1[3]~3_combout\,
	datac => \camino|memory|mem~24_combout\,
	datad => \camino|alu0|Add0~26_combout\,
	combout => \camino|alu0|Add0~28_combout\);

-- Location: LCCOMB_X36_Y19_N20
\uc0|zer~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \uc0|zer~3_combout\ = (\camino|alu0|Add0~18_combout\) # ((\camino|alu0|Add0~22_combout\) # ((\camino|alu0|Add0~25_combout\) # (\camino|alu0|Add0~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|alu0|Add0~18_combout\,
	datab => \camino|alu0|Add0~22_combout\,
	datac => \camino|alu0|Add0~25_combout\,
	datad => \camino|alu0|Add0~28_combout\,
	combout => \uc0|zer~3_combout\);

-- Location: LCCOMB_X38_Y16_N22
\camino|memory|mem~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|memory|mem~4_combout\ = \camino|PC|q\(3) $ (\camino|PC|q\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|PC|q\(3),
	datad => \camino|PC|q\(4),
	combout => \camino|memory|mem~4_combout\);

-- Location: LCCOMB_X38_Y16_N8
\camino|memory|mem~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|memory|mem~3_combout\ = (\camino|PC|q\(2) & ((\camino|PC|q\(0) & ((\camino|PC|q\(4)))) # (!\camino|PC|q\(0) & (\camino|PC|q\(1) & !\camino|PC|q\(4))))) # (!\camino|PC|q\(2) & ((\camino|PC|q\(4)) # ((\camino|PC|q\(0) & !\camino|PC|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|PC|q\(2),
	datab => \camino|PC|q\(0),
	datac => \camino|PC|q\(1),
	datad => \camino|PC|q\(4),
	combout => \camino|memory|mem~3_combout\);

-- Location: LCCOMB_X38_Y16_N16
\camino|memory|mem~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|memory|mem~5_combout\ = (\camino|memory|mem~2_combout\ & (\camino|memory|mem~4_combout\ & (\camino|memory|mem~3_combout\ & !\camino|PC|q\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~2_combout\,
	datab => \camino|memory|mem~4_combout\,
	datac => \camino|memory|mem~3_combout\,
	datad => \camino|PC|q\(9),
	combout => \camino|memory|mem~5_combout\);

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Pe0[7]~I\ : cycloneii_io
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
	padio => ww_Pe0(7),
	combout => \Pe0~combout\(7));

-- Location: LCCOMB_X35_Y19_N30
\camino|epe|y[7]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|epe|y[7]~18_combout\ = (\uc0|s_epe~1_combout\ & (((\camino|epe|y[5]~12_combout\)))) # (!\uc0|s_epe~1_combout\ & ((\camino|epe|y[5]~12_combout\ & (\camino|memory|mem~12_combout\)) # (!\camino|epe|y[5]~12_combout\ & 
-- ((\camino|alu0|Add0~40_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~12_combout\,
	datab => \uc0|s_epe~1_combout\,
	datac => \camino|alu0|Add0~40_combout\,
	datad => \camino|epe|y[5]~12_combout\,
	combout => \camino|epe|y[7]~18_combout\);

-- Location: LCCOMB_X35_Y19_N4
\camino|epe|y[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|epe|y\(7) = (\camino|epe|y[5]~13_combout\ & ((\camino|epe|y[7]~18_combout\ & ((\Pe0~combout\(7)))) # (!\camino|epe|y[7]~18_combout\ & (\Pe3~combout\(7))))) # (!\camino|epe|y[5]~13_combout\ & (((\camino|epe|y[7]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pe3~combout\(7),
	datab => \Pe0~combout\(7),
	datac => \camino|epe|y[5]~13_combout\,
	datad => \camino|epe|y[7]~18_combout\,
	combout => \camino|epe|y\(7));

-- Location: LCCOMB_X34_Y17_N28
\camino|banco|regb~47feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~47feeder_combout\ = \camino|epe|y\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \camino|epe|y\(7),
	combout => \camino|banco|regb~47feeder_combout\);

-- Location: LCFF_X34_Y17_N29
\camino|banco|regb~47\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \camino|banco|regb~47feeder_combout\,
	ena => \camino|banco|regb~227_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~47_regout\);

-- Location: LCFF_X36_Y17_N27
\camino|banco|regb~15\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \camino|epe|y\(7),
	sload => VCC,
	ena => \camino|banco|regb~241_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~15_regout\);

-- Location: LCCOMB_X34_Y17_N14
\camino|banco|regb~198\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~198_combout\ = (\camino|memory|mem~12_combout\ & ((\camino|banco|regb~79_regout\) # ((\camino|memory|mem~14_combout\)))) # (!\camino|memory|mem~12_combout\ & (((\camino|banco|regb~15_regout\ & !\camino|memory|mem~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|regb~79_regout\,
	datab => \camino|banco|regb~15_regout\,
	datac => \camino|memory|mem~12_combout\,
	datad => \camino|memory|mem~14_combout\,
	combout => \camino|banco|regb~198_combout\);

-- Location: LCCOMB_X34_Y17_N24
\camino|banco|regb~199\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~199_combout\ = (\camino|banco|regb~198_combout\ & ((\camino|banco|regb~111_regout\) # ((!\camino|memory|mem~14_combout\)))) # (!\camino|banco|regb~198_combout\ & (((\camino|banco|regb~47_regout\ & \camino|memory|mem~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|regb~111_regout\,
	datab => \camino|banco|regb~47_regout\,
	datac => \camino|banco|regb~198_combout\,
	datad => \camino|memory|mem~14_combout\,
	combout => \camino|banco|regb~199_combout\);

-- Location: LCFF_X35_Y16_N25
\camino|banco|regb~71\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \camino|epe|y\(7),
	sload => VCC,
	ena => \camino|banco|regb~223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~71_regout\);

-- Location: LCFF_X36_Y19_N31
\camino|banco|regb~39\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \camino|epe|y\(7),
	sload => VCC,
	ena => \camino|banco|regb~231_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~39_regout\);

-- Location: LCCOMB_X35_Y16_N18
\camino|banco|regb~202\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~202_combout\ = (\camino|memory|mem~14_combout\ & (((\camino|banco|regb~39_regout\) # (\camino|memory|mem~12_combout\)))) # (!\camino|memory|mem~14_combout\ & (\camino|banco|regb~7_regout\ & ((!\camino|memory|mem~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|regb~7_regout\,
	datab => \camino|banco|regb~39_regout\,
	datac => \camino|memory|mem~14_combout\,
	datad => \camino|memory|mem~12_combout\,
	combout => \camino|banco|regb~202_combout\);

-- Location: LCCOMB_X35_Y16_N24
\camino|banco|regb~203\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~203_combout\ = (\camino|memory|mem~12_combout\ & ((\camino|banco|regb~202_combout\ & (\camino|banco|regb~103_regout\)) # (!\camino|banco|regb~202_combout\ & ((\camino|banco|regb~71_regout\))))) # (!\camino|memory|mem~12_combout\ & 
-- (((\camino|banco|regb~202_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|regb~103_regout\,
	datab => \camino|memory|mem~12_combout\,
	datac => \camino|banco|regb~71_regout\,
	datad => \camino|banco|regb~202_combout\,
	combout => \camino|banco|regb~203_combout\);

-- Location: LCCOMB_X34_Y17_N4
\camino|banco|regb~119feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~119feeder_combout\ = \camino|epe|y\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \camino|epe|y\(7),
	combout => \camino|banco|regb~119feeder_combout\);

-- Location: LCFF_X34_Y17_N5
\camino|banco|regb~119\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \camino|banco|regb~119feeder_combout\,
	ena => \camino|banco|regb~245_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~119_regout\);

-- Location: LCFF_X35_Y17_N21
\camino|banco|regb~55\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \camino|epe|y\(7),
	sload => VCC,
	ena => \camino|banco|regb~229_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~55_regout\);

-- Location: LCCOMB_X34_Y17_N22
\camino|banco|regb~200\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~200_combout\ = (\camino|memory|mem~12_combout\ & (((\camino|memory|mem~14_combout\)))) # (!\camino|memory|mem~12_combout\ & ((\camino|memory|mem~14_combout\ & ((\camino|banco|regb~55_regout\))) # (!\camino|memory|mem~14_combout\ & 
-- (\camino|banco|regb~23_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|regb~23_regout\,
	datab => \camino|banco|regb~55_regout\,
	datac => \camino|memory|mem~12_combout\,
	datad => \camino|memory|mem~14_combout\,
	combout => \camino|banco|regb~200_combout\);

-- Location: LCCOMB_X34_Y17_N18
\camino|banco|regb~201\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~201_combout\ = (\camino|memory|mem~12_combout\ & ((\camino|banco|regb~200_combout\ & ((\camino|banco|regb~119_regout\))) # (!\camino|banco|regb~200_combout\ & (\camino|banco|regb~87_regout\)))) # (!\camino|memory|mem~12_combout\ & 
-- (((\camino|banco|regb~200_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|regb~87_regout\,
	datab => \camino|banco|regb~119_regout\,
	datac => \camino|memory|mem~12_combout\,
	datad => \camino|banco|regb~200_combout\,
	combout => \camino|banco|regb~201_combout\);

-- Location: LCCOMB_X34_Y17_N12
\camino|banco|regb~204\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~204_combout\ = (\camino|memory|mem~10_combout\ & ((\camino|memory|mem~5_combout\) # ((\camino|banco|regb~201_combout\)))) # (!\camino|memory|mem~10_combout\ & (!\camino|memory|mem~5_combout\ & (\camino|banco|regb~203_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~10_combout\,
	datab => \camino|memory|mem~5_combout\,
	datac => \camino|banco|regb~203_combout\,
	datad => \camino|banco|regb~201_combout\,
	combout => \camino|banco|regb~204_combout\);

-- Location: LCCOMB_X34_Y17_N10
\camino|banco|regb~207\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~207_combout\ = (\camino|memory|mem~5_combout\ & ((\camino|banco|regb~204_combout\ & (\camino|banco|regb~206_combout\)) # (!\camino|banco|regb~204_combout\ & ((\camino|banco|regb~199_combout\))))) # (!\camino|memory|mem~5_combout\ & 
-- (((\camino|banco|regb~204_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|regb~206_combout\,
	datab => \camino|memory|mem~5_combout\,
	datac => \camino|banco|regb~199_combout\,
	datad => \camino|banco|regb~204_combout\,
	combout => \camino|banco|regb~207_combout\);

-- Location: LCCOMB_X34_Y17_N16
\camino|alu0|Add0~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|alu0|Add0~46_combout\ = (\camino|PC|q\(9) & (!\camino|banco|Equal1~0_combout\ & ((\camino|banco|regb~207_combout\)))) # (!\camino|PC|q\(9) & (\camino|memory|mem~23_combout\ $ (((!\camino|banco|Equal1~0_combout\ & 
-- \camino|banco|regb~207_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|PC|q\(9),
	datab => \camino|banco|Equal1~0_combout\,
	datac => \camino|memory|mem~23_combout\,
	datad => \camino|banco|regb~207_combout\,
	combout => \camino|alu0|Add0~46_combout\);

-- Location: PIN_U11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Pe0[6]~I\ : cycloneii_io
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
	padio => ww_Pe0(6),
	combout => \Pe0~combout\(6));

-- Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Pe0[5]~I\ : cycloneii_io
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
	padio => ww_Pe0(5),
	combout => \Pe0~combout\(5));

-- Location: LCFF_X35_Y17_N23
\camino|banco|regb~53\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \camino|epe|y\(5),
	sload => VCC,
	ena => \camino|banco|regb~229_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~53_regout\);

-- Location: LCFF_X35_Y17_N1
\camino|banco|regb~21\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \camino|epe|y\(5),
	sload => VCC,
	ena => \camino|banco|regb~235_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~21_regout\);

-- Location: LCCOMB_X35_Y17_N28
\camino|banco|regb~292\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~292_combout\ = (\camino|memory|mem~44_combout\ & (((\camino|memory|mem~45_combout\)))) # (!\camino|memory|mem~44_combout\ & ((\camino|memory|mem~45_combout\ & (\camino|banco|regb~85_regout\)) # (!\camino|memory|mem~45_combout\ & 
-- ((\camino|banco|regb~21_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|regb~85_regout\,
	datab => \camino|banco|regb~21_regout\,
	datac => \camino|memory|mem~44_combout\,
	datad => \camino|memory|mem~45_combout\,
	combout => \camino|banco|regb~292_combout\);

-- Location: LCCOMB_X35_Y17_N10
\camino|banco|regb~293\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~293_combout\ = (\camino|memory|mem~44_combout\ & ((\camino|banco|regb~292_combout\ & (\camino|banco|regb~117_regout\)) # (!\camino|banco|regb~292_combout\ & ((\camino|banco|regb~53_regout\))))) # (!\camino|memory|mem~44_combout\ & 
-- (((\camino|banco|regb~292_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|regb~117_regout\,
	datab => \camino|banco|regb~53_regout\,
	datac => \camino|memory|mem~44_combout\,
	datad => \camino|banco|regb~292_combout\,
	combout => \camino|banco|regb~293_combout\);

-- Location: LCCOMB_X36_Y20_N20
\camino|banco|regb~296\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~296_combout\ = (\camino|memory|mem~27_combout\ & (((\camino|memory|mem~46_combout\) # (\camino|banco|regb~293_combout\)))) # (!\camino|memory|mem~27_combout\ & (\camino|banco|regb~295_combout\ & (!\camino|memory|mem~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|regb~295_combout\,
	datab => \camino|memory|mem~27_combout\,
	datac => \camino|memory|mem~46_combout\,
	datad => \camino|banco|regb~293_combout\,
	combout => \camino|banco|regb~296_combout\);

-- Location: LCFF_X37_Y18_N13
\camino|banco|regb~77\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \camino|epe|y\(5),
	sload => VCC,
	ena => \camino|banco|regb~221_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~77_regout\);

-- Location: LCFF_X36_Y17_N25
\camino|banco|regb~109\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \camino|epe|y\(5),
	sload => VCC,
	ena => \camino|banco|regb~243_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~109_regout\);

-- Location: LCFF_X37_Y15_N17
\camino|banco|regb~45\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \camino|epe|y\(5),
	sload => VCC,
	ena => \camino|banco|regb~227_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~45_regout\);

-- Location: LCFF_X38_Y18_N19
\camino|banco|regb~13\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \camino|epe|y\(5),
	sload => VCC,
	ena => \camino|banco|regb~241_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~13_regout\);

-- Location: LCCOMB_X36_Y17_N12
\camino|banco|regb~290\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~290_combout\ = (\camino|memory|mem~44_combout\ & ((\camino|banco|regb~45_regout\) # ((\camino|memory|mem~45_combout\)))) # (!\camino|memory|mem~44_combout\ & (((\camino|banco|regb~13_regout\ & !\camino|memory|mem~45_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~44_combout\,
	datab => \camino|banco|regb~45_regout\,
	datac => \camino|banco|regb~13_regout\,
	datad => \camino|memory|mem~45_combout\,
	combout => \camino|banco|regb~290_combout\);

-- Location: LCCOMB_X36_Y17_N24
\camino|banco|regb~291\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~291_combout\ = (\camino|memory|mem~45_combout\ & ((\camino|banco|regb~290_combout\ & ((\camino|banco|regb~109_regout\))) # (!\camino|banco|regb~290_combout\ & (\camino|banco|regb~77_regout\)))) # (!\camino|memory|mem~45_combout\ & 
-- (((\camino|banco|regb~290_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~45_combout\,
	datab => \camino|banco|regb~77_regout\,
	datac => \camino|banco|regb~109_regout\,
	datad => \camino|banco|regb~290_combout\,
	combout => \camino|banco|regb~291_combout\);

-- Location: LCCOMB_X36_Y20_N2
\camino|banco|regb~299\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~299_combout\ = (\camino|memory|mem~46_combout\ & ((\camino|banco|regb~296_combout\ & (\camino|banco|regb~298_combout\)) # (!\camino|banco|regb~296_combout\ & ((\camino|banco|regb~291_combout\))))) # (!\camino|memory|mem~46_combout\ & 
-- (((\camino|banco|regb~296_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|regb~298_combout\,
	datab => \camino|memory|mem~46_combout\,
	datac => \camino|banco|regb~296_combout\,
	datad => \camino|banco|regb~291_combout\,
	combout => \camino|banco|regb~299_combout\);

-- Location: LCCOMB_X36_Y20_N16
\camino|banco|rd1[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|rd1[5]~5_combout\ = (!\camino|banco|Equal0~0_combout\ & \camino|banco|regb~299_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \camino|banco|Equal0~0_combout\,
	datad => \camino|banco|regb~299_combout\,
	combout => \camino|banco|rd1[5]~5_combout\);

-- Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Pe0[4]~I\ : cycloneii_io
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
	padio => ww_Pe0(4),
	combout => \Pe0~combout\(4));

-- Location: LCCOMB_X35_Y19_N16
\camino|alu0|Add0~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|alu0|Add0~29_combout\ = (\camino|alu0|Add0~43_combout\ & ((\camino|banco|rd1[4]~4_combout\ & (\camino|alu0|Add0~27\ & VCC)) # (!\camino|banco|rd1[4]~4_combout\ & (!\camino|alu0|Add0~27\)))) # (!\camino|alu0|Add0~43_combout\ & 
-- ((\camino|banco|rd1[4]~4_combout\ & (!\camino|alu0|Add0~27\)) # (!\camino|banco|rd1[4]~4_combout\ & ((\camino|alu0|Add0~27\) # (GND)))))
-- \camino|alu0|Add0~30\ = CARRY((\camino|alu0|Add0~43_combout\ & (!\camino|banco|rd1[4]~4_combout\ & !\camino|alu0|Add0~27\)) # (!\camino|alu0|Add0~43_combout\ & ((!\camino|alu0|Add0~27\) # (!\camino|banco|rd1[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \camino|alu0|Add0~43_combout\,
	datab => \camino|banco|rd1[4]~4_combout\,
	datad => VCC,
	cin => \camino|alu0|Add0~27\,
	combout => \camino|alu0|Add0~29_combout\,
	cout => \camino|alu0|Add0~30\);

-- Location: LCCOMB_X36_Y19_N0
\camino|alu0|Add0~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|alu0|Add0~31_combout\ = (\camino|memory|mem~19_combout\ & (((\camino|alu0|Add0~29_combout\)))) # (!\camino|memory|mem~19_combout\ & (\camino|banco|rd1[4]~4_combout\ $ ((\camino|memory|mem~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~19_combout\,
	datab => \camino|banco|rd1[4]~4_combout\,
	datac => \camino|memory|mem~24_combout\,
	datad => \camino|alu0|Add0~29_combout\,
	combout => \camino|alu0|Add0~31_combout\);

-- Location: LCCOMB_X36_Y19_N10
\camino|epe|y[4]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|epe|y[4]~15_combout\ = (\camino|epe|y[5]~12_combout\ & ((\uc0|s_epe~1_combout\) # ((\camino|memory|mem~5_combout\)))) # (!\camino|epe|y[5]~12_combout\ & (!\uc0|s_epe~1_combout\ & ((\camino|alu0|Add0~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|epe|y[5]~12_combout\,
	datab => \uc0|s_epe~1_combout\,
	datac => \camino|memory|mem~5_combout\,
	datad => \camino|alu0|Add0~31_combout\,
	combout => \camino|epe|y[4]~15_combout\);

-- Location: LCCOMB_X36_Y19_N6
\camino|epe|y[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|epe|y\(4) = (\camino|epe|y[5]~13_combout\ & ((\camino|epe|y[4]~15_combout\ & ((\Pe0~combout\(4)))) # (!\camino|epe|y[4]~15_combout\ & (\Pe3~combout\(4))))) # (!\camino|epe|y[5]~13_combout\ & (((\camino|epe|y[4]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pe3~combout\(4),
	datab => \camino|epe|y[5]~13_combout\,
	datac => \Pe0~combout\(4),
	datad => \camino|epe|y[4]~15_combout\,
	combout => \camino|epe|y\(4));

-- Location: LCFF_X36_Y18_N29
\camino|banco|regb~116\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \camino|epe|y\(4),
	sload => VCC,
	ena => \camino|banco|regb~245_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~116_regout\);

-- Location: LCFF_X36_Y17_N11
\camino|banco|regb~108\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \camino|epe|y\(4),
	sload => VCC,
	ena => \camino|banco|regb~243_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~108_regout\);

-- Location: LCCOMB_X36_Y17_N10
\camino|banco|regb~287\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~287_combout\ = (\camino|memory|mem~27_combout\ & (((\camino|memory|mem~46_combout\)))) # (!\camino|memory|mem~27_combout\ & ((\camino|memory|mem~46_combout\ & ((\camino|banco|regb~108_regout\))) # (!\camino|memory|mem~46_combout\ & 
-- (\camino|banco|regb~100_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|regb~100_regout\,
	datab => \camino|memory|mem~27_combout\,
	datac => \camino|banco|regb~108_regout\,
	datad => \camino|memory|mem~46_combout\,
	combout => \camino|banco|regb~287_combout\);

-- Location: LCCOMB_X36_Y18_N28
\camino|banco|regb~288\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~288_combout\ = (\camino|memory|mem~27_combout\ & ((\camino|banco|regb~287_combout\ & (\camino|banco|regb~124_regout\)) # (!\camino|banco|regb~287_combout\ & ((\camino|banco|regb~116_regout\))))) # (!\camino|memory|mem~27_combout\ & 
-- (((\camino|banco|regb~287_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|regb~124_regout\,
	datab => \camino|memory|mem~27_combout\,
	datac => \camino|banco|regb~116_regout\,
	datad => \camino|banco|regb~287_combout\,
	combout => \camino|banco|regb~288_combout\);

-- Location: LCFF_X37_Y15_N27
\camino|banco|regb~60\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \camino|epe|y\(4),
	sload => VCC,
	ena => \camino|banco|regb~233_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~60_regout\);

-- Location: LCFF_X37_Y15_N9
\camino|banco|regb~44\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \camino|epe|y\(4),
	sload => VCC,
	ena => \camino|banco|regb~227_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~44_regout\);

-- Location: LCCOMB_X37_Y15_N30
\camino|banco|regb~280\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~280_combout\ = (\camino|memory|mem~27_combout\ & (((\camino|memory|mem~46_combout\)))) # (!\camino|memory|mem~27_combout\ & ((\camino|memory|mem~46_combout\ & ((\camino|banco|regb~44_regout\))) # (!\camino|memory|mem~46_combout\ & 
-- (\camino|banco|regb~36_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|regb~36_regout\,
	datab => \camino|banco|regb~44_regout\,
	datac => \camino|memory|mem~27_combout\,
	datad => \camino|memory|mem~46_combout\,
	combout => \camino|banco|regb~280_combout\);

-- Location: LCCOMB_X36_Y15_N28
\camino|banco|regb~281\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~281_combout\ = (\camino|memory|mem~27_combout\ & ((\camino|banco|regb~280_combout\ & ((\camino|banco|regb~60_regout\))) # (!\camino|banco|regb~280_combout\ & (\camino|banco|regb~52_regout\)))) # (!\camino|memory|mem~27_combout\ & 
-- (((\camino|banco|regb~280_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|regb~52_regout\,
	datab => \camino|memory|mem~27_combout\,
	datac => \camino|banco|regb~60_regout\,
	datad => \camino|banco|regb~280_combout\,
	combout => \camino|banco|regb~281_combout\);

-- Location: LCFF_X36_Y17_N29
\camino|banco|regb~12\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \camino|epe|y\(4),
	sload => VCC,
	ena => \camino|banco|regb~241_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~12_regout\);

-- Location: LCCOMB_X35_Y17_N4
\camino|banco|regb~20feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~20feeder_combout\ = \camino|epe|y\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \camino|epe|y\(4),
	combout => \camino|banco|regb~20feeder_combout\);

-- Location: LCFF_X35_Y17_N5
\camino|banco|regb~20\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \camino|banco|regb~20feeder_combout\,
	ena => \camino|banco|regb~235_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~20_regout\);

-- Location: LCCOMB_X35_Y17_N12
\camino|banco|regb~284\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~284_combout\ = (\camino|memory|mem~46_combout\ & (((\camino|memory|mem~27_combout\)))) # (!\camino|memory|mem~46_combout\ & ((\camino|memory|mem~27_combout\ & ((\camino|banco|regb~20_regout\))) # (!\camino|memory|mem~27_combout\ & 
-- (\camino|banco|regb~4_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|regb~4_regout\,
	datab => \camino|banco|regb~20_regout\,
	datac => \camino|memory|mem~46_combout\,
	datad => \camino|memory|mem~27_combout\,
	combout => \camino|banco|regb~284_combout\);

-- Location: LCCOMB_X35_Y17_N6
\camino|banco|regb~285\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~285_combout\ = (\camino|memory|mem~46_combout\ & ((\camino|banco|regb~284_combout\ & (\camino|banco|regb~28_regout\)) # (!\camino|banco|regb~284_combout\ & ((\camino|banco|regb~12_regout\))))) # (!\camino|memory|mem~46_combout\ & 
-- (((\camino|banco|regb~284_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|regb~28_regout\,
	datab => \camino|banco|regb~12_regout\,
	datac => \camino|memory|mem~46_combout\,
	datad => \camino|banco|regb~284_combout\,
	combout => \camino|banco|regb~285_combout\);

-- Location: LCCOMB_X37_Y17_N30
\camino|banco|regb~92feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~92feeder_combout\ = \camino|epe|y\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \camino|epe|y\(4),
	combout => \camino|banco|regb~92feeder_combout\);

-- Location: LCFF_X37_Y17_N31
\camino|banco|regb~92\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \camino|banco|regb~92feeder_combout\,
	ena => \camino|banco|regb~225_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~92_regout\);

-- Location: LCFF_X36_Y18_N15
\camino|banco|regb~84\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \camino|epe|y\(4),
	sload => VCC,
	ena => \camino|banco|regb~219_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~84_regout\);

-- Location: LCCOMB_X37_Y20_N12
\camino|banco|regb~282\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~282_combout\ = (\camino|memory|mem~46_combout\ & (((\camino|memory|mem~27_combout\)))) # (!\camino|memory|mem~46_combout\ & ((\camino|memory|mem~27_combout\ & ((\camino|banco|regb~84_regout\))) # (!\camino|memory|mem~27_combout\ & 
-- (\camino|banco|regb~68_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|regb~68_regout\,
	datab => \camino|banco|regb~84_regout\,
	datac => \camino|memory|mem~46_combout\,
	datad => \camino|memory|mem~27_combout\,
	combout => \camino|banco|regb~282_combout\);

-- Location: LCCOMB_X37_Y20_N10
\camino|banco|regb~283\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~283_combout\ = (\camino|memory|mem~46_combout\ & ((\camino|banco|regb~282_combout\ & ((\camino|banco|regb~92_regout\))) # (!\camino|banco|regb~282_combout\ & (\camino|banco|regb~76_regout\)))) # (!\camino|memory|mem~46_combout\ & 
-- (((\camino|banco|regb~282_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|regb~76_regout\,
	datab => \camino|banco|regb~92_regout\,
	datac => \camino|memory|mem~46_combout\,
	datad => \camino|banco|regb~282_combout\,
	combout => \camino|banco|regb~283_combout\);

-- Location: LCCOMB_X35_Y18_N22
\camino|banco|regb~286\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~286_combout\ = (\camino|memory|mem~44_combout\ & (\camino|memory|mem~45_combout\)) # (!\camino|memory|mem~44_combout\ & ((\camino|memory|mem~45_combout\ & ((\camino|banco|regb~283_combout\))) # (!\camino|memory|mem~45_combout\ & 
-- (\camino|banco|regb~285_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~44_combout\,
	datab => \camino|memory|mem~45_combout\,
	datac => \camino|banco|regb~285_combout\,
	datad => \camino|banco|regb~283_combout\,
	combout => \camino|banco|regb~286_combout\);

-- Location: LCCOMB_X35_Y18_N28
\camino|banco|regb~289\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~289_combout\ = (\camino|memory|mem~44_combout\ & ((\camino|banco|regb~286_combout\ & (\camino|banco|regb~288_combout\)) # (!\camino|banco|regb~286_combout\ & ((\camino|banco|regb~281_combout\))))) # (!\camino|memory|mem~44_combout\ & 
-- (((\camino|banco|regb~286_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~44_combout\,
	datab => \camino|banco|regb~288_combout\,
	datac => \camino|banco|regb~281_combout\,
	datad => \camino|banco|regb~286_combout\,
	combout => \camino|banco|regb~289_combout\);

-- Location: LCCOMB_X35_Y18_N10
\camino|banco|rd1[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|rd1[4]~4_combout\ = (!\camino|banco|Equal0~0_combout\ & \camino|banco|regb~289_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \camino|banco|Equal0~0_combout\,
	datad => \camino|banco|regb~289_combout\,
	combout => \camino|banco|rd1[4]~4_combout\);

-- Location: LCCOMB_X35_Y19_N18
\camino|alu0|Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|alu0|Add0~32_combout\ = ((\camino|banco|rd1[5]~5_combout\ $ (\camino|alu0|Add0~44_combout\ $ (!\camino|alu0|Add0~30\)))) # (GND)
-- \camino|alu0|Add0~33\ = CARRY((\camino|banco|rd1[5]~5_combout\ & ((\camino|alu0|Add0~44_combout\) # (!\camino|alu0|Add0~30\))) # (!\camino|banco|rd1[5]~5_combout\ & (\camino|alu0|Add0~44_combout\ & !\camino|alu0|Add0~30\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|rd1[5]~5_combout\,
	datab => \camino|alu0|Add0~44_combout\,
	datad => VCC,
	cin => \camino|alu0|Add0~30\,
	combout => \camino|alu0|Add0~32_combout\,
	cout => \camino|alu0|Add0~33\);

-- Location: LCCOMB_X36_Y19_N8
\camino|alu0|Add0~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|alu0|Add0~34_combout\ = (\camino|memory|mem~19_combout\ & (((\camino|alu0|Add0~32_combout\)))) # (!\camino|memory|mem~19_combout\ & (\camino|memory|mem~24_combout\ $ ((\camino|banco|rd1[5]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~19_combout\,
	datab => \camino|memory|mem~24_combout\,
	datac => \camino|banco|rd1[5]~5_combout\,
	datad => \camino|alu0|Add0~32_combout\,
	combout => \camino|alu0|Add0~34_combout\);

-- Location: LCCOMB_X36_Y19_N22
\camino|epe|y[5]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|epe|y[5]~16_combout\ = (\camino|epe|y[5]~12_combout\ & ((\uc0|s_epe~1_combout\) # ((\camino|memory|mem~10_combout\)))) # (!\camino|epe|y[5]~12_combout\ & (!\uc0|s_epe~1_combout\ & (\camino|alu0|Add0~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|epe|y[5]~12_combout\,
	datab => \uc0|s_epe~1_combout\,
	datac => \camino|alu0|Add0~34_combout\,
	datad => \camino|memory|mem~10_combout\,
	combout => \camino|epe|y[5]~16_combout\);

-- Location: LCCOMB_X36_Y19_N16
\camino|epe|y[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|epe|y\(5) = (\camino|epe|y[5]~13_combout\ & ((\camino|epe|y[5]~16_combout\ & ((\Pe0~combout\(5)))) # (!\camino|epe|y[5]~16_combout\ & (\Pe3~combout\(5))))) # (!\camino|epe|y[5]~13_combout\ & (((\camino|epe|y[5]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pe3~combout\(5),
	datab => \camino|epe|y[5]~13_combout\,
	datac => \Pe0~combout\(5),
	datad => \camino|epe|y[5]~16_combout\,
	combout => \camino|epe|y\(5));

-- Location: LCCOMB_X37_Y17_N0
\camino|banco|regb~93feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~93feeder_combout\ = \camino|epe|y\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \camino|epe|y\(5),
	combout => \camino|banco|regb~93feeder_combout\);

-- Location: LCFF_X37_Y17_N1
\camino|banco|regb~93\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \camino|banco|regb~93feeder_combout\,
	ena => \camino|banco|regb~225_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~93_regout\);

-- Location: LCFF_X37_Y18_N27
\camino|banco|regb~125\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \camino|epe|y\(5),
	sload => VCC,
	ena => \camino|banco|regb~249_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~125_regout\);

-- Location: LCCOMB_X35_Y20_N8
\camino|banco|regb~61feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~61feeder_combout\ = \camino|epe|y\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \camino|epe|y\(5),
	combout => \camino|banco|regb~61feeder_combout\);

-- Location: LCFF_X35_Y20_N9
\camino|banco|regb~61\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \camino|banco|regb~61feeder_combout\,
	ena => \camino|banco|regb~233_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~61_regout\);

-- Location: LCFF_X38_Y18_N25
\camino|banco|regb~29\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \camino|epe|y\(5),
	sload => VCC,
	ena => \camino|banco|regb~239_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~29_regout\);

-- Location: LCCOMB_X38_Y18_N24
\camino|banco|regb~185\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~185_combout\ = (\camino|memory|mem~12_combout\ & (((\camino|memory|mem~14_combout\)))) # (!\camino|memory|mem~12_combout\ & ((\camino|memory|mem~14_combout\ & (\camino|banco|regb~61_regout\)) # (!\camino|memory|mem~14_combout\ & 
-- ((\camino|banco|regb~29_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~12_combout\,
	datab => \camino|banco|regb~61_regout\,
	datac => \camino|banco|regb~29_regout\,
	datad => \camino|memory|mem~14_combout\,
	combout => \camino|banco|regb~185_combout\);

-- Location: LCCOMB_X37_Y18_N26
\camino|banco|regb~186\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~186_combout\ = (\camino|memory|mem~12_combout\ & ((\camino|banco|regb~185_combout\ & ((\camino|banco|regb~125_regout\))) # (!\camino|banco|regb~185_combout\ & (\camino|banco|regb~93_regout\)))) # (!\camino|memory|mem~12_combout\ & 
-- (((\camino|banco|regb~185_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~12_combout\,
	datab => \camino|banco|regb~93_regout\,
	datac => \camino|banco|regb~125_regout\,
	datad => \camino|banco|regb~185_combout\,
	combout => \camino|banco|regb~186_combout\);

-- Location: LCCOMB_X38_Y18_N18
\camino|banco|regb~180\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~180_combout\ = (\camino|memory|mem~12_combout\ & (((\camino|memory|mem~14_combout\)))) # (!\camino|memory|mem~12_combout\ & ((\camino|memory|mem~14_combout\ & (\camino|banco|regb~45_regout\)) # (!\camino|memory|mem~14_combout\ & 
-- ((\camino|banco|regb~13_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~12_combout\,
	datab => \camino|banco|regb~45_regout\,
	datac => \camino|banco|regb~13_regout\,
	datad => \camino|memory|mem~14_combout\,
	combout => \camino|banco|regb~180_combout\);

-- Location: LCCOMB_X37_Y18_N12
\camino|banco|regb~181\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~181_combout\ = (\camino|memory|mem~12_combout\ & ((\camino|banco|regb~180_combout\ & (\camino|banco|regb~109_regout\)) # (!\camino|banco|regb~180_combout\ & ((\camino|banco|regb~77_regout\))))) # (!\camino|memory|mem~12_combout\ & 
-- (((\camino|banco|regb~180_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~12_combout\,
	datab => \camino|banco|regb~109_regout\,
	datac => \camino|banco|regb~77_regout\,
	datad => \camino|banco|regb~180_combout\,
	combout => \camino|banco|regb~181_combout\);

-- Location: LCFF_X36_Y19_N29
\camino|banco|regb~37\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \camino|epe|y\(5),
	sload => VCC,
	ena => \camino|banco|regb~231_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~37_regout\);

-- Location: LCFF_X37_Y20_N17
\camino|banco|regb~101\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \camino|epe|y\(5),
	sload => VCC,
	ena => \camino|banco|regb~247_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~101_regout\);

-- Location: LCCOMB_X36_Y20_N26
\camino|banco|regb~5feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~5feeder_combout\ = \camino|epe|y\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \camino|epe|y\(5),
	combout => \camino|banco|regb~5feeder_combout\);

-- Location: LCFF_X36_Y20_N27
\camino|banco|regb~5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \camino|banco|regb~5feeder_combout\,
	ena => \camino|banco|regb~237_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~5_regout\);

-- Location: LCCOMB_X37_Y20_N30
\camino|banco|regb~182\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~182_combout\ = (\camino|memory|mem~14_combout\ & (((\camino|memory|mem~12_combout\)))) # (!\camino|memory|mem~14_combout\ & ((\camino|memory|mem~12_combout\ & (\camino|banco|regb~69_regout\)) # (!\camino|memory|mem~12_combout\ & 
-- ((\camino|banco|regb~5_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|regb~69_regout\,
	datab => \camino|banco|regb~5_regout\,
	datac => \camino|memory|mem~14_combout\,
	datad => \camino|memory|mem~12_combout\,
	combout => \camino|banco|regb~182_combout\);

-- Location: LCCOMB_X37_Y20_N16
\camino|banco|regb~183\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~183_combout\ = (\camino|memory|mem~14_combout\ & ((\camino|banco|regb~182_combout\ & ((\camino|banco|regb~101_regout\))) # (!\camino|banco|regb~182_combout\ & (\camino|banco|regb~37_regout\)))) # (!\camino|memory|mem~14_combout\ & 
-- (((\camino|banco|regb~182_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~14_combout\,
	datab => \camino|banco|regb~37_regout\,
	datac => \camino|banco|regb~101_regout\,
	datad => \camino|banco|regb~182_combout\,
	combout => \camino|banco|regb~183_combout\);

-- Location: LCCOMB_X36_Y15_N8
\camino|banco|regb~184\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~184_combout\ = (\camino|memory|mem~10_combout\ & (\camino|memory|mem~5_combout\)) # (!\camino|memory|mem~10_combout\ & ((\camino|memory|mem~5_combout\ & (\camino|banco|regb~181_combout\)) # (!\camino|memory|mem~5_combout\ & 
-- ((\camino|banco|regb~183_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~10_combout\,
	datab => \camino|memory|mem~5_combout\,
	datac => \camino|banco|regb~181_combout\,
	datad => \camino|banco|regb~183_combout\,
	combout => \camino|banco|regb~184_combout\);

-- Location: LCFF_X36_Y18_N27
\camino|banco|regb~117\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \camino|epe|y\(5),
	sload => VCC,
	ena => \camino|banco|regb~245_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~117_regout\);

-- Location: LCFF_X36_Y18_N23
\camino|banco|regb~85\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \camino|epe|y\(5),
	sload => VCC,
	ena => \camino|banco|regb~219_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~85_regout\);

-- Location: LCCOMB_X36_Y18_N12
\camino|banco|regb~178\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~178_combout\ = (\camino|memory|mem~12_combout\ & (((\camino|banco|regb~85_regout\) # (\camino|memory|mem~14_combout\)))) # (!\camino|memory|mem~12_combout\ & (\camino|banco|regb~21_regout\ & ((!\camino|memory|mem~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|regb~21_regout\,
	datab => \camino|banco|regb~85_regout\,
	datac => \camino|memory|mem~12_combout\,
	datad => \camino|memory|mem~14_combout\,
	combout => \camino|banco|regb~178_combout\);

-- Location: LCCOMB_X36_Y18_N26
\camino|banco|regb~179\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~179_combout\ = (\camino|memory|mem~14_combout\ & ((\camino|banco|regb~178_combout\ & ((\camino|banco|regb~117_regout\))) # (!\camino|banco|regb~178_combout\ & (\camino|banco|regb~53_regout\)))) # (!\camino|memory|mem~14_combout\ & 
-- (((\camino|banco|regb~178_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|regb~53_regout\,
	datab => \camino|memory|mem~14_combout\,
	datac => \camino|banco|regb~117_regout\,
	datad => \camino|banco|regb~178_combout\,
	combout => \camino|banco|regb~179_combout\);

-- Location: LCCOMB_X36_Y15_N2
\camino|banco|regb~187\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~187_combout\ = (\camino|memory|mem~10_combout\ & ((\camino|banco|regb~184_combout\ & (\camino|banco|regb~186_combout\)) # (!\camino|banco|regb~184_combout\ & ((\camino|banco|regb~179_combout\))))) # (!\camino|memory|mem~10_combout\ & 
-- (((\camino|banco|regb~184_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~10_combout\,
	datab => \camino|banco|regb~186_combout\,
	datac => \camino|banco|regb~184_combout\,
	datad => \camino|banco|regb~179_combout\,
	combout => \camino|banco|regb~187_combout\);

-- Location: LCCOMB_X36_Y15_N22
\camino|alu0|Add0~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|alu0|Add0~44_combout\ = (\camino|memory|mem~23_combout\ & (\camino|PC|q\(9) $ (((\camino|banco|Equal1~0_combout\) # (!\camino|banco|regb~187_combout\))))) # (!\camino|memory|mem~23_combout\ & (!\camino|banco|Equal1~0_combout\ & 
-- ((\camino|banco|regb~187_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~23_combout\,
	datab => \camino|banco|Equal1~0_combout\,
	datac => \camino|PC|q\(9),
	datad => \camino|banco|regb~187_combout\,
	combout => \camino|alu0|Add0~44_combout\);

-- Location: LCCOMB_X35_Y19_N20
\camino|alu0|Add0~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|alu0|Add0~35_combout\ = (\camino|alu0|Add0~45_combout\ & ((\camino|banco|rd1[6]~6_combout\ & (\camino|alu0|Add0~33\ & VCC)) # (!\camino|banco|rd1[6]~6_combout\ & (!\camino|alu0|Add0~33\)))) # (!\camino|alu0|Add0~45_combout\ & 
-- ((\camino|banco|rd1[6]~6_combout\ & (!\camino|alu0|Add0~33\)) # (!\camino|banco|rd1[6]~6_combout\ & ((\camino|alu0|Add0~33\) # (GND)))))
-- \camino|alu0|Add0~36\ = CARRY((\camino|alu0|Add0~45_combout\ & (!\camino|banco|rd1[6]~6_combout\ & !\camino|alu0|Add0~33\)) # (!\camino|alu0|Add0~45_combout\ & ((!\camino|alu0|Add0~33\) # (!\camino|banco|rd1[6]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \camino|alu0|Add0~45_combout\,
	datab => \camino|banco|rd1[6]~6_combout\,
	datad => VCC,
	cin => \camino|alu0|Add0~33\,
	combout => \camino|alu0|Add0~35_combout\,
	cout => \camino|alu0|Add0~36\);

-- Location: LCCOMB_X35_Y19_N28
\camino|alu0|Add0~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|alu0|Add0~37_combout\ = (\camino|memory|mem~19_combout\ & (((\camino|alu0|Add0~35_combout\)))) # (!\camino|memory|mem~19_combout\ & (\camino|memory|mem~24_combout\ $ (((\camino|banco|rd1[6]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~19_combout\,
	datab => \camino|memory|mem~24_combout\,
	datac => \camino|alu0|Add0~35_combout\,
	datad => \camino|banco|rd1[6]~6_combout\,
	combout => \camino|alu0|Add0~37_combout\);

-- Location: LCCOMB_X35_Y19_N2
\camino|epe|y[6]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|epe|y[6]~17_combout\ = (\camino|epe|y[5]~12_combout\ & ((\camino|memory|mem~14_combout\) # ((\uc0|s_epe~1_combout\)))) # (!\camino|epe|y[5]~12_combout\ & (((!\uc0|s_epe~1_combout\ & \camino|alu0|Add0~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~14_combout\,
	datab => \camino|epe|y[5]~12_combout\,
	datac => \uc0|s_epe~1_combout\,
	datad => \camino|alu0|Add0~37_combout\,
	combout => \camino|epe|y[6]~17_combout\);

-- Location: LCCOMB_X36_Y18_N30
\camino|epe|y[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|epe|y\(6) = (\camino|epe|y[5]~13_combout\ & ((\camino|epe|y[6]~17_combout\ & ((\Pe0~combout\(6)))) # (!\camino|epe|y[6]~17_combout\ & (\Pe3~combout\(6))))) # (!\camino|epe|y[5]~13_combout\ & (((\camino|epe|y[6]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Pe3~combout\(6),
	datab => \Pe0~combout\(6),
	datac => \camino|epe|y[5]~13_combout\,
	datad => \camino|epe|y[6]~17_combout\,
	combout => \camino|epe|y\(6));

-- Location: LCFF_X34_Y18_N17
\camino|banco|regb~30\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \camino|epe|y\(6),
	sload => VCC,
	ena => \camino|banco|regb~239_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~30_regout\);

-- Location: LCFF_X36_Y17_N31
\camino|banco|regb~14\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \camino|epe|y\(6),
	sload => VCC,
	ena => \camino|banco|regb~241_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~14_regout\);

-- Location: LCCOMB_X36_Y17_N2
\camino|banco|regb~304\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~304_combout\ = (\camino|memory|mem~46_combout\ & (((\camino|banco|regb~14_regout\) # (\camino|memory|mem~27_combout\)))) # (!\camino|memory|mem~46_combout\ & (\camino|banco|regb~6_regout\ & ((!\camino|memory|mem~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|regb~6_regout\,
	datab => \camino|banco|regb~14_regout\,
	datac => \camino|memory|mem~46_combout\,
	datad => \camino|memory|mem~27_combout\,
	combout => \camino|banco|regb~304_combout\);

-- Location: LCCOMB_X36_Y17_N0
\camino|banco|regb~305\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~305_combout\ = (\camino|memory|mem~27_combout\ & ((\camino|banco|regb~304_combout\ & ((\camino|banco|regb~30_regout\))) # (!\camino|banco|regb~304_combout\ & (\camino|banco|regb~22_regout\)))) # (!\camino|memory|mem~27_combout\ & 
-- (((\camino|banco|regb~304_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|regb~22_regout\,
	datab => \camino|memory|mem~27_combout\,
	datac => \camino|banco|regb~30_regout\,
	datad => \camino|banco|regb~304_combout\,
	combout => \camino|banco|regb~305_combout\);

-- Location: LCCOMB_X37_Y15_N22
\camino|banco|regb~46feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~46feeder_combout\ = \camino|epe|y\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \camino|epe|y\(6),
	combout => \camino|banco|regb~46feeder_combout\);

-- Location: LCFF_X37_Y15_N23
\camino|banco|regb~46\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \camino|banco|regb~46feeder_combout\,
	ena => \camino|banco|regb~227_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~46_regout\);

-- Location: LCFF_X38_Y17_N1
\camino|banco|regb~62\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \camino|epe|y\(6),
	sload => VCC,
	ena => \camino|banco|regb~233_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~62_regout\);

-- Location: LCFF_X36_Y15_N17
\camino|banco|regb~54\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \camino|epe|y\(6),
	sload => VCC,
	ena => \camino|banco|regb~229_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~54_regout\);

-- Location: LCFF_X38_Y17_N23
\camino|banco|regb~38\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \camino|epe|y\(6),
	sload => VCC,
	ena => \camino|banco|regb~231_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~38_regout\);

-- Location: LCCOMB_X38_Y17_N22
\camino|banco|regb~302\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~302_combout\ = (\camino|memory|mem~27_combout\ & ((\camino|banco|regb~54_regout\) # ((\camino|memory|mem~46_combout\)))) # (!\camino|memory|mem~27_combout\ & (((\camino|banco|regb~38_regout\ & !\camino|memory|mem~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~27_combout\,
	datab => \camino|banco|regb~54_regout\,
	datac => \camino|banco|regb~38_regout\,
	datad => \camino|memory|mem~46_combout\,
	combout => \camino|banco|regb~302_combout\);

-- Location: LCCOMB_X38_Y17_N0
\camino|banco|regb~303\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~303_combout\ = (\camino|memory|mem~46_combout\ & ((\camino|banco|regb~302_combout\ & ((\camino|banco|regb~62_regout\))) # (!\camino|banco|regb~302_combout\ & (\camino|banco|regb~46_regout\)))) # (!\camino|memory|mem~46_combout\ & 
-- (((\camino|banco|regb~302_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~46_combout\,
	datab => \camino|banco|regb~46_regout\,
	datac => \camino|banco|regb~62_regout\,
	datad => \camino|banco|regb~302_combout\,
	combout => \camino|banco|regb~303_combout\);

-- Location: LCCOMB_X35_Y18_N8
\camino|banco|regb~306\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~306_combout\ = (\camino|memory|mem~44_combout\ & ((\camino|memory|mem~45_combout\) # ((\camino|banco|regb~303_combout\)))) # (!\camino|memory|mem~44_combout\ & (!\camino|memory|mem~45_combout\ & (\camino|banco|regb~305_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~44_combout\,
	datab => \camino|memory|mem~45_combout\,
	datac => \camino|banco|regb~305_combout\,
	datad => \camino|banco|regb~303_combout\,
	combout => \camino|banco|regb~306_combout\);

-- Location: LCFF_X37_Y17_N15
\camino|banco|regb~94\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \camino|epe|y\(6),
	sload => VCC,
	ena => \camino|banco|regb~225_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~94_regout\);

-- Location: LCFF_X37_Y20_N23
\camino|banco|regb~70\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \camino|epe|y\(6),
	sload => VCC,
	ena => \camino|banco|regb~223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~70_regout\);

-- Location: LCCOMB_X37_Y18_N30
\camino|banco|regb~300\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~300_combout\ = (\camino|memory|mem~27_combout\ & (((\camino|memory|mem~46_combout\)))) # (!\camino|memory|mem~27_combout\ & ((\camino|memory|mem~46_combout\ & (\camino|banco|regb~78_regout\)) # (!\camino|memory|mem~46_combout\ & 
-- ((\camino|banco|regb~70_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|regb~78_regout\,
	datab => \camino|banco|regb~70_regout\,
	datac => \camino|memory|mem~27_combout\,
	datad => \camino|memory|mem~46_combout\,
	combout => \camino|banco|regb~300_combout\);

-- Location: LCCOMB_X36_Y18_N4
\camino|banco|regb~301\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~301_combout\ = (\camino|memory|mem~27_combout\ & ((\camino|banco|regb~300_combout\ & ((\camino|banco|regb~94_regout\))) # (!\camino|banco|regb~300_combout\ & (\camino|banco|regb~86_regout\)))) # (!\camino|memory|mem~27_combout\ & 
-- (((\camino|banco|regb~300_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|regb~86_regout\,
	datab => \camino|memory|mem~27_combout\,
	datac => \camino|banco|regb~94_regout\,
	datad => \camino|banco|regb~300_combout\,
	combout => \camino|banco|regb~301_combout\);

-- Location: LCCOMB_X35_Y18_N26
\camino|banco|regb~309\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~309_combout\ = (\camino|memory|mem~45_combout\ & ((\camino|banco|regb~306_combout\ & (\camino|banco|regb~308_combout\)) # (!\camino|banco|regb~306_combout\ & ((\camino|banco|regb~301_combout\))))) # (!\camino|memory|mem~45_combout\ & 
-- (((\camino|banco|regb~306_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|regb~308_combout\,
	datab => \camino|memory|mem~45_combout\,
	datac => \camino|banco|regb~306_combout\,
	datad => \camino|banco|regb~301_combout\,
	combout => \camino|banco|regb~309_combout\);

-- Location: LCCOMB_X35_Y18_N0
\camino|banco|rd1[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|rd1[6]~6_combout\ = (!\camino|banco|Equal0~0_combout\ & \camino|banco|regb~309_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \camino|banco|Equal0~0_combout\,
	datad => \camino|banco|regb~309_combout\,
	combout => \camino|banco|rd1[6]~6_combout\);

-- Location: LCCOMB_X35_Y19_N22
\camino|alu0|Add0~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|alu0|Add0~38_combout\ = \camino|banco|rd1[7]~7_combout\ $ (\camino|alu0|Add0~36\ $ (!\camino|alu0|Add0~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|rd1[7]~7_combout\,
	datad => \camino|alu0|Add0~46_combout\,
	cin => \camino|alu0|Add0~36\,
	combout => \camino|alu0|Add0~38_combout\);

-- Location: LCCOMB_X35_Y19_N24
\camino|alu0|Add0~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|alu0|Add0~40_combout\ = (\camino|memory|mem~19_combout\ & (((\camino|alu0|Add0~38_combout\)))) # (!\camino|memory|mem~19_combout\ & (\camino|banco|rd1[7]~7_combout\ $ ((\camino|memory|mem~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|rd1[7]~7_combout\,
	datab => \camino|memory|mem~24_combout\,
	datac => \camino|memory|mem~19_combout\,
	datad => \camino|alu0|Add0~38_combout\,
	combout => \camino|alu0|Add0~40_combout\);

-- Location: LCCOMB_X36_Y19_N26
\uc0|zer~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \uc0|zer~2_combout\ = (!\camino|alu0|Add0~31_combout\ & (!\camino|alu0|Add0~40_combout\ & (!\camino|alu0|Add0~34_combout\ & !\camino|alu0|Add0~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|alu0|Add0~31_combout\,
	datab => \camino|alu0|Add0~40_combout\,
	datac => \camino|alu0|Add0~34_combout\,
	datad => \camino|alu0|Add0~37_combout\,
	combout => \uc0|zer~2_combout\);

-- Location: LCCOMB_X36_Y19_N2
\uc0|zer~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \uc0|zer~4_combout\ = (\camino|memory|mem~21_combout\ & (\uc0|zer~4_combout\)) # (!\camino|memory|mem~21_combout\ & (((!\uc0|zer~3_combout\ & \uc0|zer~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~21_combout\,
	datab => \uc0|zer~4_combout\,
	datac => \uc0|zer~3_combout\,
	datad => \uc0|zer~2_combout\,
	combout => \uc0|zer~4_combout\);

-- Location: LCCOMB_X34_Y19_N6
\camino|PC|q[1]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|PC|q[1]~12_combout\ = (\camino|memory|mem~21_combout\ & ((\camino|memory|mem~46_combout\ & ((\camino|memory|mem~27_combout\) # (!\uc0|zer~4_combout\))) # (!\camino|memory|mem~46_combout\ & ((\uc0|zer~4_combout\) # 
-- (!\camino|memory|mem~27_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~46_combout\,
	datab => \camino|memory|mem~21_combout\,
	datac => \uc0|zer~4_combout\,
	datad => \camino|memory|mem~27_combout\,
	combout => \camino|PC|q[1]~12_combout\);

-- Location: LCCOMB_X34_Y19_N4
\camino|PC|q[1]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|PC|q[1]~13_combout\ = (!\camino|memory|mem~19_combout\ & (!\reset~combout\ & (\camino|memory|mem~24_combout\ & \camino|PC|q[1]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~19_combout\,
	datab => \reset~combout\,
	datac => \camino|memory|mem~24_combout\,
	datad => \camino|PC|q[1]~12_combout\,
	combout => \camino|PC|q[1]~13_combout\);

-- Location: LCFF_X37_Y16_N7
\camino|PC|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \camino|PC|q[1]~14_combout\,
	sdata => \camino|memory|mem~45_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \camino|PC|q[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|PC|q\(1));

-- Location: LCCOMB_X40_Y16_N16
\camino|memory|mem~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|memory|mem~39_combout\ = (\camino|PC|q\(0) & (!\camino|PC|q\(1) & (\camino|PC|q\(2) $ (\camino|PC|q\(3))))) # (!\camino|PC|q\(0) & ((\camino|PC|q\(3) & (\camino|PC|q\(2))) # (!\camino|PC|q\(3) & ((\camino|PC|q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|PC|q\(0),
	datab => \camino|PC|q\(2),
	datac => \camino|PC|q\(3),
	datad => \camino|PC|q\(1),
	combout => \camino|memory|mem~39_combout\);

-- Location: LCCOMB_X40_Y16_N12
\camino|memory|mem~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|memory|mem~40_combout\ = (\camino|memory|mem~8_combout\ & ((\camino|PC|q\(4) & ((\camino|memory|mem~36_combout\))) # (!\camino|PC|q\(4) & (!\camino|memory|mem~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|PC|q\(4),
	datab => \camino|memory|mem~8_combout\,
	datac => \camino|memory|mem~39_combout\,
	datad => \camino|memory|mem~36_combout\,
	combout => \camino|memory|mem~40_combout\);

-- Location: LCFF_X37_Y16_N21
\camino|PC|q[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \camino|PC|q[8]~28_combout\,
	sdata => \camino|memory|mem~40_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \camino|PC|q[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|PC|q\(8));

-- Location: LCCOMB_X37_Y16_N18
\camino|PC|q[7]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|PC|q[7]~26_combout\ = (\camino|sumadorPC|Add0~8_combout\ & (!\camino|PC|q[6]~25\)) # (!\camino|sumadorPC|Add0~8_combout\ & ((\camino|PC|q[6]~25\) # (GND)))
-- \camino|PC|q[7]~27\ = CARRY((!\camino|PC|q[6]~25\) # (!\camino|sumadorPC|Add0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \camino|sumadorPC|Add0~8_combout\,
	datad => VCC,
	cin => \camino|PC|q[6]~25\,
	combout => \camino|PC|q[7]~26_combout\,
	cout => \camino|PC|q[7]~27\);

-- Location: LCFF_X37_Y16_N19
\camino|PC|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \camino|PC|q[7]~26_combout\,
	sdata => \camino|memory|mem~38_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \camino|PC|q[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|PC|q\(7));

-- Location: LCCOMB_X37_Y16_N0
\camino|memory|mem~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|memory|mem~2_combout\ = (!\camino|PC|q\(6) & (!\camino|PC|q\(5) & (!\camino|PC|q\(8) & !\camino|PC|q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|PC|q\(6),
	datab => \camino|PC|q\(5),
	datac => \camino|PC|q\(8),
	datad => \camino|PC|q\(7),
	combout => \camino|memory|mem~2_combout\);

-- Location: LCCOMB_X36_Y16_N10
\camino|memory|mem~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|memory|mem~44_combout\ = (!\camino|PC|q\(9) & (\camino|memory|mem~2_combout\ & \camino|memory|mem~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \camino|PC|q\(9),
	datac => \camino|memory|mem~2_combout\,
	datad => \camino|memory|mem~30_combout\,
	combout => \camino|memory|mem~44_combout\);

-- Location: LCFF_X37_Y16_N5
\camino|PC|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \camino|PC|q[0]~10_combout\,
	sdata => \camino|memory|mem~44_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \camino|PC|q[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|PC|q\(0));

-- Location: LCFF_X35_Y16_N21
\camino|reg_jal|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \camino|PC|q\(0),
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \uc0|enable_jal~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|reg_jal|q\(0));

-- Location: LCCOMB_X35_Y16_N20
\camino|sumadorPC|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|sumadorPC|Add0~1_combout\ = (\uc0|s_jal~0_combout\ & ((\camino|reg_jal|q\(0)))) # (!\uc0|s_jal~0_combout\ & (\camino|PC|q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \camino|PC|q\(0),
	datac => \camino|reg_jal|q\(0),
	datad => \uc0|s_jal~0_combout\,
	combout => \camino|sumadorPC|Add0~1_combout\);

-- Location: LCCOMB_X37_Y16_N8
\camino|PC|q[2]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|PC|q[2]~16_combout\ = (\camino|sumadorPC|Add0~3_combout\ & (\camino|PC|q[1]~15\ $ (GND))) # (!\camino|sumadorPC|Add0~3_combout\ & (!\camino|PC|q[1]~15\ & VCC))
-- \camino|PC|q[2]~17\ = CARRY((\camino|sumadorPC|Add0~3_combout\ & !\camino|PC|q[1]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \camino|sumadorPC|Add0~3_combout\,
	datad => VCC,
	cin => \camino|PC|q[1]~15\,
	combout => \camino|PC|q[2]~16_combout\,
	cout => \camino|PC|q[2]~17\);

-- Location: LCCOMB_X37_Y16_N10
\camino|PC|q[3]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|PC|q[3]~18_combout\ = (\camino|sumadorPC|Add0~4_combout\ & (!\camino|PC|q[2]~17\)) # (!\camino|sumadorPC|Add0~4_combout\ & ((\camino|PC|q[2]~17\) # (GND)))
-- \camino|PC|q[3]~19\ = CARRY((!\camino|PC|q[2]~17\) # (!\camino|sumadorPC|Add0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \camino|sumadorPC|Add0~4_combout\,
	datad => VCC,
	cin => \camino|PC|q[2]~17\,
	combout => \camino|PC|q[3]~18_combout\,
	cout => \camino|PC|q[3]~19\);

-- Location: LCCOMB_X37_Y16_N12
\camino|PC|q[4]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|PC|q[4]~20_combout\ = (\camino|sumadorPC|Add0~5_combout\ & (\camino|PC|q[3]~19\ $ (GND))) # (!\camino|sumadorPC|Add0~5_combout\ & (!\camino|PC|q[3]~19\ & VCC))
-- \camino|PC|q[4]~21\ = CARRY((\camino|sumadorPC|Add0~5_combout\ & !\camino|PC|q[3]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \camino|sumadorPC|Add0~5_combout\,
	datad => VCC,
	cin => \camino|PC|q[3]~19\,
	combout => \camino|PC|q[4]~20_combout\,
	cout => \camino|PC|q[4]~21\);

-- Location: LCFF_X37_Y16_N13
\camino|PC|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \camino|PC|q[4]~20_combout\,
	sdata => \camino|memory|mem~14_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \camino|PC|q[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|PC|q\(4));

-- Location: LCFF_X35_Y16_N23
\camino|reg_jal|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \camino|PC|q\(4),
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \uc0|enable_jal~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|reg_jal|q\(4));

-- Location: LCCOMB_X35_Y16_N22
\camino|sumadorPC|Add0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|sumadorPC|Add0~5_combout\ = (\uc0|s_jal~0_combout\ & ((\camino|reg_jal|q\(4)))) # (!\uc0|s_jal~0_combout\ & (\camino|PC|q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|PC|q\(4),
	datac => \camino|reg_jal|q\(4),
	datad => \uc0|s_jal~0_combout\,
	combout => \camino|sumadorPC|Add0~5_combout\);

-- Location: LCCOMB_X37_Y16_N14
\camino|PC|q[5]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|PC|q[5]~22_combout\ = (\camino|sumadorPC|Add0~6_combout\ & (!\camino|PC|q[4]~21\)) # (!\camino|sumadorPC|Add0~6_combout\ & ((\camino|PC|q[4]~21\) # (GND)))
-- \camino|PC|q[5]~23\ = CARRY((!\camino|PC|q[4]~21\) # (!\camino|sumadorPC|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \camino|sumadorPC|Add0~6_combout\,
	datad => VCC,
	cin => \camino|PC|q[4]~21\,
	combout => \camino|PC|q[5]~22_combout\,
	cout => \camino|PC|q[5]~23\);

-- Location: LCFF_X37_Y16_N15
\camino|PC|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \camino|PC|q[5]~22_combout\,
	sdata => \camino|memory|mem~12_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \camino|PC|q[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|PC|q\(5));

-- Location: LCFF_X35_Y16_N5
\camino|reg_jal|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \camino|PC|q\(5),
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \uc0|enable_jal~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|reg_jal|q\(5));

-- Location: LCCOMB_X35_Y16_N4
\camino|sumadorPC|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|sumadorPC|Add0~6_combout\ = (\camino|PC|q\(5)) # ((\camino|reg_jal|q\(5) & \uc0|s_jal~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \camino|PC|q\(5),
	datac => \camino|reg_jal|q\(5),
	datad => \uc0|s_jal~0_combout\,
	combout => \camino|sumadorPC|Add0~6_combout\);

-- Location: LCCOMB_X37_Y16_N16
\camino|PC|q[6]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|PC|q[6]~24_combout\ = (\camino|sumadorPC|Add0~7_combout\ & (\camino|PC|q[5]~23\ $ (GND))) # (!\camino|sumadorPC|Add0~7_combout\ & (!\camino|PC|q[5]~23\ & VCC))
-- \camino|PC|q[6]~25\ = CARRY((\camino|sumadorPC|Add0~7_combout\ & !\camino|PC|q[5]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \camino|sumadorPC|Add0~7_combout\,
	datad => VCC,
	cin => \camino|PC|q[5]~23\,
	combout => \camino|PC|q[6]~24_combout\,
	cout => \camino|PC|q[6]~25\);

-- Location: LCFF_X37_Y16_N17
\camino|PC|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \camino|PC|q[6]~24_combout\,
	sdata => \camino|memory|mem~35_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \camino|PC|q[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|PC|q\(6));

-- Location: LCFF_X35_Y16_N27
\camino|reg_jal|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \camino|PC|q\(6),
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \uc0|enable_jal~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|reg_jal|q\(6));

-- Location: LCCOMB_X35_Y16_N26
\camino|sumadorPC|Add0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|sumadorPC|Add0~7_combout\ = (\camino|PC|q\(6)) # ((\camino|reg_jal|q\(6) & \uc0|s_jal~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|PC|q\(6),
	datac => \camino|reg_jal|q\(6),
	datad => \uc0|s_jal~0_combout\,
	combout => \camino|sumadorPC|Add0~7_combout\);

-- Location: LCCOMB_X37_Y16_N22
\camino|PC|q[9]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|PC|q[9]~30_combout\ = \camino|PC|q[8]~29\ $ (\camino|sumadorPC|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \camino|sumadorPC|Add0~10_combout\,
	cin => \camino|PC|q[8]~29\,
	combout => \camino|PC|q[9]~30_combout\);

-- Location: LCFF_X37_Y16_N23
\camino|PC|q[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \camino|PC|q[9]~30_combout\,
	sdata => \camino|memory|mem~42_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \camino|PC|q[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|PC|q\(9));

-- Location: LCCOMB_X38_Y17_N20
\camino|memory|mem~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|memory|mem~15_combout\ = (\camino|PC|q\(3) & (((!\camino|PC|q\(0) & \camino|PC|q\(2))) # (!\camino|PC|q\(1)))) # (!\camino|PC|q\(3) & ((\camino|PC|q\(1) & ((!\camino|PC|q\(2)))) # (!\camino|PC|q\(1) & (!\camino|PC|q\(0) & \camino|PC|q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|PC|q\(0),
	datab => \camino|PC|q\(3),
	datac => \camino|PC|q\(1),
	datad => \camino|PC|q\(2),
	combout => \camino|memory|mem~15_combout\);

-- Location: LCCOMB_X38_Y17_N2
\camino|memory|mem~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|memory|mem~16_combout\ = (\camino|PC|q\(2) & ((\camino|memory|mem~9_combout\) # ((!\camino|PC|q\(4) & !\camino|memory|mem~15_combout\)))) # (!\camino|PC|q\(2) & (!\camino|PC|q\(4) & (!\camino|memory|mem~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|PC|q\(2),
	datab => \camino|PC|q\(4),
	datac => \camino|memory|mem~15_combout\,
	datad => \camino|memory|mem~9_combout\,
	combout => \camino|memory|mem~16_combout\);

-- Location: LCCOMB_X38_Y17_N6
\camino|memory|mem~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|memory|mem~46_combout\ = (!\camino|PC|q\(9) & (\camino|memory|mem~2_combout\ & \camino|memory|mem~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \camino|PC|q\(9),
	datac => \camino|memory|mem~2_combout\,
	datad => \camino|memory|mem~16_combout\,
	combout => \camino|memory|mem~46_combout\);

-- Location: LCCOMB_X35_Y16_N10
\uc0|s_jal~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uc0|s_jal~0_combout\ = (!\camino|memory|mem~27_combout\ & (!\camino|memory|mem~46_combout\ & \uc0|s_epe~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~27_combout\,
	datab => \camino|memory|mem~46_combout\,
	datad => \uc0|s_epe~0_combout\,
	combout => \uc0|s_jal~0_combout\);

-- Location: LCCOMB_X35_Y16_N14
\camino|sumadorPC|Add0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|sumadorPC|Add0~3_combout\ = (\uc0|s_jal~0_combout\ & ((\camino|reg_jal|q\(2)))) # (!\uc0|s_jal~0_combout\ & (\camino|PC|q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \camino|PC|q\(2),
	datac => \camino|reg_jal|q\(2),
	datad => \uc0|s_jal~0_combout\,
	combout => \camino|sumadorPC|Add0~3_combout\);

-- Location: LCFF_X37_Y16_N9
\camino|PC|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \camino|PC|q[2]~16_combout\,
	sdata => \camino|memory|mem~5_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \camino|PC|q[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|PC|q\(2));

-- Location: LCCOMB_X40_Y16_N28
\camino|memory|mem~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|memory|mem~17_combout\ = (!\camino|PC|q\(0) & (!\camino|PC|q\(3) & (\camino|PC|q\(2) $ (\camino|PC|q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|PC|q\(0),
	datab => \camino|PC|q\(3),
	datac => \camino|PC|q\(2),
	datad => \camino|PC|q\(1),
	combout => \camino|memory|mem~17_combout\);

-- Location: LCCOMB_X40_Y16_N4
\camino|memory|mem~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|memory|mem~18_combout\ = (\camino|PC|q\(2) & ((\camino|PC|q\(0)) # ((!\camino|PC|q\(3) & \camino|PC|q\(1))))) # (!\camino|PC|q\(2) & (\camino|PC|q\(3) & ((\camino|PC|q\(1)) # (!\camino|PC|q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|PC|q\(0),
	datab => \camino|PC|q\(3),
	datac => \camino|PC|q\(2),
	datad => \camino|PC|q\(1),
	combout => \camino|memory|mem~18_combout\);

-- Location: LCCOMB_X40_Y16_N10
\camino|memory|mem~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|memory|mem~19_combout\ = (\camino|memory|mem~8_combout\ & ((\camino|PC|q\(4) & (\camino|memory|mem~17_combout\)) # (!\camino|PC|q\(4) & ((\camino|memory|mem~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|PC|q\(4),
	datab => \camino|memory|mem~17_combout\,
	datac => \camino|memory|mem~18_combout\,
	datad => \camino|memory|mem~8_combout\,
	combout => \camino|memory|mem~19_combout\);

-- Location: LCCOMB_X38_Y15_N26
\uc0|enable_jal~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \uc0|enable_jal~3_combout\ = (\uc0|enable_jal~2_combout\ & (!\camino|memory|mem~19_combout\ & (\camino|memory|mem~23_combout\ & !\camino|PC|q\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uc0|enable_jal~2_combout\,
	datab => \camino|memory|mem~19_combout\,
	datac => \camino|memory|mem~23_combout\,
	datad => \camino|PC|q\(9),
	combout => \uc0|enable_jal~3_combout\);

-- Location: LCFF_X35_Y16_N9
\camino|reg_jal|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \camino|PC|q\(3),
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \uc0|enable_jal~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|reg_jal|q\(3));

-- Location: LCCOMB_X35_Y16_N8
\camino|sumadorPC|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|sumadorPC|Add0~4_combout\ = (\uc0|s_jal~0_combout\ & ((\camino|reg_jal|q\(3)))) # (!\uc0|s_jal~0_combout\ & (\camino|PC|q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|PC|q\(3),
	datac => \camino|reg_jal|q\(3),
	datad => \uc0|s_jal~0_combout\,
	combout => \camino|sumadorPC|Add0~4_combout\);

-- Location: LCFF_X37_Y16_N11
\camino|PC|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~combout\,
	datain => \camino|PC|q[3]~18_combout\,
	sdata => \camino|memory|mem~10_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \camino|PC|q[1]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|PC|q\(3));

-- Location: LCCOMB_X38_Y17_N4
\camino|memory|mem~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|memory|mem~25_combout\ = (!\camino|PC|q\(2) & (!\camino|PC|q\(3) & (!\camino|PC|q\(0) & \camino|PC|q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|PC|q\(2),
	datab => \camino|PC|q\(3),
	datac => \camino|PC|q\(0),
	datad => \camino|PC|q\(4),
	combout => \camino|memory|mem~25_combout\);

-- Location: LCCOMB_X38_Y17_N14
\camino|memory|mem~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|memory|mem~26_combout\ = (\camino|PC|q\(3) & (\camino|PC|q\(0) & (\camino|PC|q\(1) $ (\camino|PC|q\(2))))) # (!\camino|PC|q\(3) & (\camino|PC|q\(0) $ (((!\camino|PC|q\(1) & \camino|PC|q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|PC|q\(0),
	datab => \camino|PC|q\(3),
	datac => \camino|PC|q\(1),
	datad => \camino|PC|q\(2),
	combout => \camino|memory|mem~26_combout\);

-- Location: LCCOMB_X38_Y17_N24
\camino|memory|mem~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|memory|mem~27_combout\ = (\camino|memory|mem~8_combout\ & ((\camino|memory|mem~25_combout\) # ((!\camino|PC|q\(4) & !\camino|memory|mem~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|PC|q\(4),
	datab => \camino|memory|mem~25_combout\,
	datac => \camino|memory|mem~26_combout\,
	datad => \camino|memory|mem~8_combout\,
	combout => \camino|memory|mem~27_combout\);

-- Location: LCCOMB_X38_Y15_N30
\uc0|s_sps~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uc0|s_sps~0_combout\ = (\camino|memory|mem~46_combout\ & (!\camino|memory|mem~27_combout\ & \uc0|s_epe~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~46_combout\,
	datab => \camino|memory|mem~27_combout\,
	datad => \uc0|s_epe~0_combout\,
	combout => \uc0|s_sps~0_combout\);

-- Location: LCFF_X36_Y16_N3
\camino|banco|regb~64\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \camino|epe|y[0]~5_combout\,
	sload => VCC,
	ena => \camino|banco|regb~223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~64_regout\);

-- Location: LCCOMB_X36_Y16_N2
\camino|banco|regb~128\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~128_combout\ = (\camino|memory|mem~5_combout\ & ((\camino|banco|regb~72_regout\) # ((\camino|memory|mem~10_combout\)))) # (!\camino|memory|mem~5_combout\ & (((\camino|banco|regb~64_regout\ & !\camino|memory|mem~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|regb~72_regout\,
	datab => \camino|memory|mem~5_combout\,
	datac => \camino|banco|regb~64_regout\,
	datad => \camino|memory|mem~10_combout\,
	combout => \camino|banco|regb~128_combout\);

-- Location: LCCOMB_X39_Y16_N8
\camino|banco|regb~129\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~129_combout\ = (\camino|memory|mem~10_combout\ & ((\camino|banco|regb~128_combout\ & (\camino|banco|regb~88_regout\)) # (!\camino|banco|regb~128_combout\ & ((\camino|banco|regb~80_regout\))))) # (!\camino|memory|mem~10_combout\ & 
-- (((\camino|banco|regb~128_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|regb~88_regout\,
	datab => \camino|banco|regb~80_regout\,
	datac => \camino|memory|mem~10_combout\,
	datad => \camino|banco|regb~128_combout\,
	combout => \camino|banco|regb~129_combout\);

-- Location: LCFF_X37_Y19_N15
\camino|banco|regb~104\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \camino|epe|y[0]~5_combout\,
	sload => VCC,
	ena => \camino|banco|regb~243_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~104_regout\);

-- Location: LCCOMB_X36_Y18_N10
\camino|banco|regb~135\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~135_combout\ = (\camino|memory|mem~10_combout\ & ((\camino|banco|regb~112_regout\) # ((\camino|memory|mem~5_combout\)))) # (!\camino|memory|mem~10_combout\ & (((\camino|banco|regb~96_regout\ & !\camino|memory|mem~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|regb~112_regout\,
	datab => \camino|banco|regb~96_regout\,
	datac => \camino|memory|mem~10_combout\,
	datad => \camino|memory|mem~5_combout\,
	combout => \camino|banco|regb~135_combout\);

-- Location: LCCOMB_X37_Y19_N14
\camino|banco|regb~136\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~136_combout\ = (\camino|memory|mem~5_combout\ & ((\camino|banco|regb~135_combout\ & (\camino|banco|regb~120_regout\)) # (!\camino|banco|regb~135_combout\ & ((\camino|banco|regb~104_regout\))))) # (!\camino|memory|mem~5_combout\ & 
-- (((\camino|banco|regb~135_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~5_combout\,
	datab => \camino|banco|regb~120_regout\,
	datac => \camino|banco|regb~104_regout\,
	datad => \camino|banco|regb~135_combout\,
	combout => \camino|banco|regb~136_combout\);

-- Location: LCCOMB_X35_Y18_N24
\camino|banco|regb~0feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~0feeder_combout\ = \camino|epe|y[0]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \camino|epe|y[0]~5_combout\,
	combout => \camino|banco|regb~0feeder_combout\);

-- Location: LCFF_X35_Y18_N25
\camino|banco|regb~0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \camino|banco|regb~0feeder_combout\,
	ena => \camino|banco|regb~237_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~0_regout\);

-- Location: LCFF_X38_Y18_N23
\camino|banco|regb~8\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \camino|epe|y[0]~5_combout\,
	sload => VCC,
	ena => \camino|banco|regb~241_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~8_regout\);

-- Location: LCCOMB_X38_Y18_N8
\camino|banco|regb~132\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~132_combout\ = (\camino|memory|mem~5_combout\ & ((\camino|memory|mem~10_combout\ & (\camino|banco|regb~24_regout\)) # (!\camino|memory|mem~10_combout\ & ((\camino|banco|regb~8_regout\))))) # (!\camino|memory|mem~5_combout\ & 
-- (((\camino|memory|mem~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|regb~24_regout\,
	datab => \camino|banco|regb~8_regout\,
	datac => \camino|memory|mem~5_combout\,
	datad => \camino|memory|mem~10_combout\,
	combout => \camino|banco|regb~132_combout\);

-- Location: LCCOMB_X38_Y16_N14
\camino|banco|regb~133\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~133_combout\ = (\camino|memory|mem~5_combout\ & (((\camino|banco|regb~132_combout\)))) # (!\camino|memory|mem~5_combout\ & ((\camino|banco|regb~132_combout\ & (\camino|banco|regb~16_regout\)) # (!\camino|banco|regb~132_combout\ & 
-- ((\camino|banco|regb~0_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|regb~16_regout\,
	datab => \camino|banco|regb~0_regout\,
	datac => \camino|memory|mem~5_combout\,
	datad => \camino|banco|regb~132_combout\,
	combout => \camino|banco|regb~133_combout\);

-- Location: LCFF_X37_Y15_N11
\camino|banco|regb~56\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \camino|epe|y[0]~5_combout\,
	sload => VCC,
	ena => \camino|banco|regb~233_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~56_regout\);

-- Location: LCCOMB_X36_Y15_N24
\camino|banco|regb~130\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~130_combout\ = (\camino|memory|mem~5_combout\ & (((\camino|memory|mem~10_combout\)))) # (!\camino|memory|mem~5_combout\ & ((\camino|memory|mem~10_combout\ & ((\camino|banco|regb~48_regout\))) # (!\camino|memory|mem~10_combout\ & 
-- (\camino|banco|regb~32_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|regb~32_regout\,
	datab => \camino|banco|regb~48_regout\,
	datac => \camino|memory|mem~5_combout\,
	datad => \camino|memory|mem~10_combout\,
	combout => \camino|banco|regb~130_combout\);

-- Location: LCCOMB_X37_Y15_N10
\camino|banco|regb~131\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~131_combout\ = (\camino|memory|mem~5_combout\ & ((\camino|banco|regb~130_combout\ & ((\camino|banco|regb~56_regout\))) # (!\camino|banco|regb~130_combout\ & (\camino|banco|regb~40_regout\)))) # (!\camino|memory|mem~5_combout\ & 
-- (((\camino|banco|regb~130_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|regb~40_regout\,
	datab => \camino|memory|mem~5_combout\,
	datac => \camino|banco|regb~56_regout\,
	datad => \camino|banco|regb~130_combout\,
	combout => \camino|banco|regb~131_combout\);

-- Location: LCCOMB_X38_Y16_N12
\camino|banco|regb~134\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~134_combout\ = (\camino|memory|mem~12_combout\ & (\camino|memory|mem~14_combout\)) # (!\camino|memory|mem~12_combout\ & ((\camino|memory|mem~14_combout\ & ((\camino|banco|regb~131_combout\))) # (!\camino|memory|mem~14_combout\ & 
-- (\camino|banco|regb~133_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~12_combout\,
	datab => \camino|memory|mem~14_combout\,
	datac => \camino|banco|regb~133_combout\,
	datad => \camino|banco|regb~131_combout\,
	combout => \camino|banco|regb~134_combout\);

-- Location: LCCOMB_X38_Y16_N26
\camino|banco|regb~137\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~137_combout\ = (\camino|memory|mem~12_combout\ & ((\camino|banco|regb~134_combout\ & ((\camino|banco|regb~136_combout\))) # (!\camino|banco|regb~134_combout\ & (\camino|banco|regb~129_combout\)))) # (!\camino|memory|mem~12_combout\ & 
-- (((\camino|banco|regb~134_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~12_combout\,
	datab => \camino|banco|regb~129_combout\,
	datac => \camino|banco|regb~136_combout\,
	datad => \camino|banco|regb~134_combout\,
	combout => \camino|banco|regb~137_combout\);

-- Location: LCCOMB_X42_Y15_N0
\camino|sps|y[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|sps|y[0]~0_combout\ = (\uc0|s_sps~0_combout\ & (!\camino|banco|Equal1~0_combout\ & ((\camino|banco|regb~137_combout\)))) # (!\uc0|s_sps~0_combout\ & (((\camino|memory|mem~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|Equal1~0_combout\,
	datab => \uc0|s_sps~0_combout\,
	datac => \camino|memory|mem~5_combout\,
	datad => \camino|banco|regb~137_combout\,
	combout => \camino|sps|y[0]~0_combout\);

-- Location: LCCOMB_X46_Y15_N24
\camino|port_sal0|q[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|port_sal0|q[0]~feeder_combout\ = \camino|sps|y[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \camino|sps|y[0]~0_combout\,
	combout => \camino|port_sal0|q[0]~feeder_combout\);

-- Location: LCCOMB_X38_Y15_N16
\uc0|dec_enable~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \uc0|dec_enable~0_combout\ = (\camino|memory|mem~21_combout\ & (!\camino|memory|mem~24_combout\ & (\camino|memory|mem~46_combout\ $ (\camino|memory|mem~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~21_combout\,
	datab => \camino|memory|mem~24_combout\,
	datac => \camino|memory|mem~46_combout\,
	datad => \camino|memory|mem~27_combout\,
	combout => \uc0|dec_enable~0_combout\);

-- Location: LCCOMB_X38_Y15_N14
\camino|decodificador|sal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|decodificador|sal0~2_combout\ = (!\reset~combout\ & (!\camino|decodificador|sal0~3_combout\ & (\uc0|dec_enable~0_combout\ & \camino|memory|mem~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~combout\,
	datab => \camino|decodificador|sal0~3_combout\,
	datac => \uc0|dec_enable~0_combout\,
	datad => \camino|memory|mem~19_combout\,
	combout => \camino|decodificador|sal0~2_combout\);

-- Location: LCFF_X46_Y15_N25
\camino|port_sal0|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \camino|port_sal0|q[0]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \camino|decodificador|sal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|port_sal0|q\(0));

-- Location: LCCOMB_X38_Y18_N20
\camino|banco|regb~145\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~145_combout\ = (\camino|memory|mem~12_combout\ & (((\camino|memory|mem~14_combout\)))) # (!\camino|memory|mem~12_combout\ & ((\camino|memory|mem~14_combout\ & (\camino|banco|regb~57_regout\)) # (!\camino|memory|mem~14_combout\ & 
-- ((\camino|banco|regb~25_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~12_combout\,
	datab => \camino|banco|regb~57_regout\,
	datac => \camino|banco|regb~25_regout\,
	datad => \camino|memory|mem~14_combout\,
	combout => \camino|banco|regb~145_combout\);

-- Location: LCCOMB_X38_Y18_N2
\camino|banco|regb~146\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~146_combout\ = (\camino|banco|regb~145_combout\ & (((\camino|banco|regb~121_regout\) # (!\camino|memory|mem~12_combout\)))) # (!\camino|banco|regb~145_combout\ & (\camino|banco|regb~89_regout\ & ((\camino|memory|mem~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|regb~89_regout\,
	datab => \camino|banco|regb~121_regout\,
	datac => \camino|banco|regb~145_combout\,
	datad => \camino|memory|mem~12_combout\,
	combout => \camino|banco|regb~146_combout\);

-- Location: LCCOMB_X39_Y18_N30
\camino|banco|regb~142\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~142_combout\ = (\camino|memory|mem~12_combout\ & (((\camino|memory|mem~14_combout\) # (\camino|banco|regb~65_regout\)))) # (!\camino|memory|mem~12_combout\ & (\camino|banco|regb~1_regout\ & (!\camino|memory|mem~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|regb~1_regout\,
	datab => \camino|memory|mem~12_combout\,
	datac => \camino|memory|mem~14_combout\,
	datad => \camino|banco|regb~65_regout\,
	combout => \camino|banco|regb~142_combout\);

-- Location: LCCOMB_X38_Y18_N4
\camino|banco|regb~143\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~143_combout\ = (\camino|memory|mem~14_combout\ & ((\camino|banco|regb~142_combout\ & (\camino|banco|regb~97_regout\)) # (!\camino|banco|regb~142_combout\ & ((\camino|banco|regb~33_regout\))))) # (!\camino|memory|mem~14_combout\ & 
-- (((\camino|banco|regb~142_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|regb~97_regout\,
	datab => \camino|banco|regb~33_regout\,
	datac => \camino|memory|mem~14_combout\,
	datad => \camino|banco|regb~142_combout\,
	combout => \camino|banco|regb~143_combout\);

-- Location: LCCOMB_X36_Y17_N20
\camino|banco|regb~105feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~105feeder_combout\ = \camino|epe|y[1]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \camino|epe|y[1]~8_combout\,
	combout => \camino|banco|regb~105feeder_combout\);

-- Location: LCFF_X36_Y17_N21
\camino|banco|regb~105\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \camino|banco|regb~105feeder_combout\,
	ena => \camino|banco|regb~243_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~105_regout\);

-- Location: LCFF_X37_Y15_N25
\camino|banco|regb~41\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \camino|epe|y[1]~8_combout\,
	sload => VCC,
	ena => \camino|banco|regb~227_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~41_regout\);

-- Location: LCCOMB_X38_Y18_N30
\camino|banco|regb~140\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~140_combout\ = (\camino|memory|mem~12_combout\ & (((\camino|memory|mem~14_combout\)))) # (!\camino|memory|mem~12_combout\ & ((\camino|memory|mem~14_combout\ & (\camino|banco|regb~41_regout\)) # (!\camino|memory|mem~14_combout\ & 
-- ((\camino|banco|regb~9_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~12_combout\,
	datab => \camino|banco|regb~41_regout\,
	datac => \camino|banco|regb~9_regout\,
	datad => \camino|memory|mem~14_combout\,
	combout => \camino|banco|regb~140_combout\);

-- Location: LCCOMB_X37_Y18_N2
\camino|banco|regb~141\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~141_combout\ = (\camino|memory|mem~12_combout\ & ((\camino|banco|regb~140_combout\ & ((\camino|banco|regb~105_regout\))) # (!\camino|banco|regb~140_combout\ & (\camino|banco|regb~73_regout\)))) # (!\camino|memory|mem~12_combout\ & 
-- (((\camino|banco|regb~140_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~12_combout\,
	datab => \camino|banco|regb~73_regout\,
	datac => \camino|banco|regb~105_regout\,
	datad => \camino|banco|regb~140_combout\,
	combout => \camino|banco|regb~141_combout\);

-- Location: LCCOMB_X38_Y18_N14
\camino|banco|regb~144\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~144_combout\ = (\camino|memory|mem~10_combout\ & (\camino|memory|mem~5_combout\)) # (!\camino|memory|mem~10_combout\ & ((\camino|memory|mem~5_combout\ & ((\camino|banco|regb~141_combout\))) # (!\camino|memory|mem~5_combout\ & 
-- (\camino|banco|regb~143_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~10_combout\,
	datab => \camino|memory|mem~5_combout\,
	datac => \camino|banco|regb~143_combout\,
	datad => \camino|banco|regb~141_combout\,
	combout => \camino|banco|regb~144_combout\);

-- Location: LCFF_X36_Y18_N9
\camino|banco|regb~113\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \camino|epe|y[1]~8_combout\,
	sload => VCC,
	ena => \camino|banco|regb~245_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~113_regout\);

-- Location: LCCOMB_X36_Y18_N2
\camino|banco|regb~138\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~138_combout\ = (\camino|memory|mem~12_combout\ & (((\camino|banco|regb~81_regout\) # (\camino|memory|mem~14_combout\)))) # (!\camino|memory|mem~12_combout\ & (\camino|banco|regb~17_regout\ & ((!\camino|memory|mem~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|regb~17_regout\,
	datab => \camino|banco|regb~81_regout\,
	datac => \camino|memory|mem~12_combout\,
	datad => \camino|memory|mem~14_combout\,
	combout => \camino|banco|regb~138_combout\);

-- Location: LCCOMB_X36_Y18_N8
\camino|banco|regb~139\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~139_combout\ = (\camino|memory|mem~14_combout\ & ((\camino|banco|regb~138_combout\ & ((\camino|banco|regb~113_regout\))) # (!\camino|banco|regb~138_combout\ & (\camino|banco|regb~49_regout\)))) # (!\camino|memory|mem~14_combout\ & 
-- (((\camino|banco|regb~138_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|regb~49_regout\,
	datab => \camino|memory|mem~14_combout\,
	datac => \camino|banco|regb~113_regout\,
	datad => \camino|banco|regb~138_combout\,
	combout => \camino|banco|regb~139_combout\);

-- Location: LCCOMB_X38_Y18_N0
\camino|banco|regb~147\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~147_combout\ = (\camino|memory|mem~10_combout\ & ((\camino|banco|regb~144_combout\ & (\camino|banco|regb~146_combout\)) # (!\camino|banco|regb~144_combout\ & ((\camino|banco|regb~139_combout\))))) # (!\camino|memory|mem~10_combout\ & 
-- (((\camino|banco|regb~144_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~10_combout\,
	datab => \camino|banco|regb~146_combout\,
	datac => \camino|banco|regb~144_combout\,
	datad => \camino|banco|regb~139_combout\,
	combout => \camino|banco|regb~147_combout\);

-- Location: LCCOMB_X42_Y15_N10
\camino|sps|y[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|sps|y[1]~1_combout\ = (\uc0|s_sps~0_combout\ & (!\camino|banco|Equal1~0_combout\ & ((\camino|banco|regb~147_combout\)))) # (!\uc0|s_sps~0_combout\ & (((\camino|memory|mem~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|Equal1~0_combout\,
	datab => \camino|memory|mem~10_combout\,
	datac => \camino|banco|regb~147_combout\,
	datad => \uc0|s_sps~0_combout\,
	combout => \camino|sps|y[1]~1_combout\);

-- Location: LCCOMB_X46_Y15_N26
\camino|port_sal0|q[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|port_sal0|q[1]~feeder_combout\ = \camino|sps|y[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \camino|sps|y[1]~1_combout\,
	combout => \camino|port_sal0|q[1]~feeder_combout\);

-- Location: LCFF_X46_Y15_N27
\camino|port_sal0|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \camino|port_sal0|q[1]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \camino|decodificador|sal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|port_sal0|q\(1));

-- Location: LCCOMB_X38_Y16_N30
\camino|banco|regb~149\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~149_combout\ = (\camino|banco|regb~148_combout\ & ((\camino|banco|regb~58_regout\) # ((!\camino|memory|mem~10_combout\)))) # (!\camino|banco|regb~148_combout\ & (((\camino|banco|regb~50_regout\ & \camino|memory|mem~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|regb~148_combout\,
	datab => \camino|banco|regb~58_regout\,
	datac => \camino|banco|regb~50_regout\,
	datad => \camino|memory|mem~10_combout\,
	combout => \camino|banco|regb~149_combout\);

-- Location: LCFF_X38_Y20_N3
\camino|banco|regb~98\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \camino|epe|y[2]~11_combout\,
	sload => VCC,
	ena => \camino|banco|regb~247_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~98_regout\);

-- Location: LCCOMB_X38_Y20_N4
\camino|banco|regb~155\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~155_combout\ = (\camino|memory|mem~5_combout\ & ((\camino|banco|regb~106_regout\) # ((\camino|memory|mem~10_combout\)))) # (!\camino|memory|mem~5_combout\ & (((\camino|banco|regb~98_regout\ & !\camino|memory|mem~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|regb~106_regout\,
	datab => \camino|memory|mem~5_combout\,
	datac => \camino|banco|regb~98_regout\,
	datad => \camino|memory|mem~10_combout\,
	combout => \camino|banco|regb~155_combout\);

-- Location: LCCOMB_X38_Y20_N14
\camino|banco|regb~156\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~156_combout\ = (\camino|banco|regb~155_combout\ & ((\camino|banco|regb~122_regout\) # ((!\camino|memory|mem~10_combout\)))) # (!\camino|banco|regb~155_combout\ & (((\camino|banco|regb~114_regout\ & \camino|memory|mem~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|regb~122_regout\,
	datab => \camino|banco|regb~114_regout\,
	datac => \camino|banco|regb~155_combout\,
	datad => \camino|memory|mem~10_combout\,
	combout => \camino|banco|regb~156_combout\);

-- Location: LCCOMB_X34_Y19_N8
\camino|banco|regb~90feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~90feeder_combout\ = \camino|epe|y[2]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \camino|epe|y[2]~11_combout\,
	combout => \camino|banco|regb~90feeder_combout\);

-- Location: LCFF_X34_Y19_N9
\camino|banco|regb~90\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \camino|banco|regb~90feeder_combout\,
	ena => \camino|banco|regb~225_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~90_regout\);

-- Location: LCFF_X36_Y16_N19
\camino|banco|regb~66\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \camino|epe|y[2]~11_combout\,
	sload => VCC,
	ena => \camino|banco|regb~223_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~66_regout\);

-- Location: LCCOMB_X36_Y16_N18
\camino|banco|regb~150\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~150_combout\ = (\camino|memory|mem~5_combout\ & (((\camino|memory|mem~10_combout\)))) # (!\camino|memory|mem~5_combout\ & ((\camino|memory|mem~10_combout\ & (\camino|banco|regb~82_regout\)) # (!\camino|memory|mem~10_combout\ & 
-- ((\camino|banco|regb~66_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~5_combout\,
	datab => \camino|banco|regb~82_regout\,
	datac => \camino|banco|regb~66_regout\,
	datad => \camino|memory|mem~10_combout\,
	combout => \camino|banco|regb~150_combout\);

-- Location: LCCOMB_X36_Y16_N20
\camino|banco|regb~151\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~151_combout\ = (\camino|memory|mem~5_combout\ & ((\camino|banco|regb~150_combout\ & (\camino|banco|regb~90_regout\)) # (!\camino|banco|regb~150_combout\ & ((\camino|banco|regb~74_regout\))))) # (!\camino|memory|mem~5_combout\ & 
-- (((\camino|banco|regb~150_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~5_combout\,
	datab => \camino|banco|regb~90_regout\,
	datac => \camino|banco|regb~74_regout\,
	datad => \camino|banco|regb~150_combout\,
	combout => \camino|banco|regb~151_combout\);

-- Location: LCCOMB_X38_Y19_N20
\camino|banco|regb~26feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~26feeder_combout\ = \camino|epe|y[2]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \camino|epe|y[2]~11_combout\,
	combout => \camino|banco|regb~26feeder_combout\);

-- Location: LCFF_X38_Y19_N21
\camino|banco|regb~26\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \camino|banco|regb~26feeder_combout\,
	ena => \camino|banco|regb~239_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~26_regout\);

-- Location: LCCOMB_X38_Y15_N12
\camino|banco|regb~152\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~152_combout\ = (\camino|memory|mem~5_combout\ & (((\camino|memory|mem~10_combout\)))) # (!\camino|memory|mem~5_combout\ & ((\camino|memory|mem~10_combout\ & (\camino|banco|regb~18_regout\)) # (!\camino|memory|mem~10_combout\ & 
-- ((\camino|banco|regb~2_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~5_combout\,
	datab => \camino|banco|regb~18_regout\,
	datac => \camino|banco|regb~2_regout\,
	datad => \camino|memory|mem~10_combout\,
	combout => \camino|banco|regb~152_combout\);

-- Location: LCCOMB_X38_Y15_N22
\camino|banco|regb~153\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~153_combout\ = (\camino|memory|mem~5_combout\ & ((\camino|banco|regb~152_combout\ & ((\camino|banco|regb~26_regout\))) # (!\camino|banco|regb~152_combout\ & (\camino|banco|regb~10_regout\)))) # (!\camino|memory|mem~5_combout\ & 
-- (((\camino|banco|regb~152_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|regb~10_regout\,
	datab => \camino|banco|regb~26_regout\,
	datac => \camino|memory|mem~5_combout\,
	datad => \camino|banco|regb~152_combout\,
	combout => \camino|banco|regb~153_combout\);

-- Location: LCCOMB_X38_Y16_N18
\camino|banco|regb~154\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~154_combout\ = (\camino|memory|mem~12_combout\ & ((\camino|memory|mem~14_combout\) # ((\camino|banco|regb~151_combout\)))) # (!\camino|memory|mem~12_combout\ & (!\camino|memory|mem~14_combout\ & ((\camino|banco|regb~153_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~12_combout\,
	datab => \camino|memory|mem~14_combout\,
	datac => \camino|banco|regb~151_combout\,
	datad => \camino|banco|regb~153_combout\,
	combout => \camino|banco|regb~154_combout\);

-- Location: LCCOMB_X38_Y16_N28
\camino|banco|regb~157\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~157_combout\ = (\camino|memory|mem~14_combout\ & ((\camino|banco|regb~154_combout\ & ((\camino|banco|regb~156_combout\))) # (!\camino|banco|regb~154_combout\ & (\camino|banco|regb~149_combout\)))) # (!\camino|memory|mem~14_combout\ & 
-- (((\camino|banco|regb~154_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~14_combout\,
	datab => \camino|banco|regb~149_combout\,
	datac => \camino|banco|regb~156_combout\,
	datad => \camino|banco|regb~154_combout\,
	combout => \camino|banco|regb~157_combout\);

-- Location: LCCOMB_X42_Y15_N28
\camino|sps|y[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|sps|y[2]~2_combout\ = (\uc0|s_sps~0_combout\ & (!\camino|banco|Equal1~0_combout\ & ((\camino|banco|regb~157_combout\)))) # (!\uc0|s_sps~0_combout\ & (((\camino|memory|mem~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|Equal1~0_combout\,
	datab => \camino|memory|mem~14_combout\,
	datac => \camino|banco|regb~157_combout\,
	datad => \uc0|s_sps~0_combout\,
	combout => \camino|sps|y[2]~2_combout\);

-- Location: LCCOMB_X46_Y15_N12
\camino|port_sal0|q[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|port_sal0|q[2]~feeder_combout\ = \camino|sps|y[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \camino|sps|y[2]~2_combout\,
	combout => \camino|port_sal0|q[2]~feeder_combout\);

-- Location: LCFF_X46_Y15_N13
\camino|port_sal0|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \camino|port_sal0|q[2]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \camino|decodificador|sal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|port_sal0|q\(2));

-- Location: LCCOMB_X42_Y15_N18
\camino|sps|y[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|sps|y[3]~3_combout\ = (\uc0|s_sps~0_combout\ & (!\camino|banco|Equal1~0_combout\ & ((\camino|banco|regb~167_combout\)))) # (!\uc0|s_sps~0_combout\ & (((\camino|memory|mem~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|Equal1~0_combout\,
	datab => \camino|memory|mem~12_combout\,
	datac => \camino|banco|regb~167_combout\,
	datad => \uc0|s_sps~0_combout\,
	combout => \camino|sps|y[3]~3_combout\);

-- Location: LCCOMB_X46_Y15_N2
\camino|port_sal0|q[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|port_sal0|q[3]~feeder_combout\ = \camino|sps|y[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \camino|sps|y[3]~3_combout\,
	combout => \camino|port_sal0|q[3]~feeder_combout\);

-- Location: LCFF_X46_Y15_N3
\camino|port_sal0|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \camino|port_sal0|q[3]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \camino|decodificador|sal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|port_sal0|q\(3));

-- Location: LCFF_X36_Y19_N7
\camino|banco|regb~124\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \camino|epe|y\(4),
	ena => \camino|banco|regb~249_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~124_regout\);

-- Location: LCCOMB_X37_Y20_N26
\camino|banco|regb~100feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~100feeder_combout\ = \camino|epe|y\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \camino|epe|y\(4),
	combout => \camino|banco|regb~100feeder_combout\);

-- Location: LCFF_X37_Y20_N27
\camino|banco|regb~100\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \camino|banco|regb~100feeder_combout\,
	ena => \camino|banco|regb~247_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~100_regout\);

-- Location: LCCOMB_X38_Y19_N18
\camino|banco|regb~175\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~175_combout\ = (\camino|memory|mem~5_combout\ & (((\camino|memory|mem~10_combout\)))) # (!\camino|memory|mem~5_combout\ & ((\camino|memory|mem~10_combout\ & ((\camino|banco|regb~116_regout\))) # (!\camino|memory|mem~10_combout\ & 
-- (\camino|banco|regb~100_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~5_combout\,
	datab => \camino|banco|regb~100_regout\,
	datac => \camino|memory|mem~10_combout\,
	datad => \camino|banco|regb~116_regout\,
	combout => \camino|banco|regb~175_combout\);

-- Location: LCCOMB_X38_Y19_N16
\camino|banco|regb~176\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~176_combout\ = (\camino|memory|mem~5_combout\ & ((\camino|banco|regb~175_combout\ & (\camino|banco|regb~124_regout\)) # (!\camino|banco|regb~175_combout\ & ((\camino|banco|regb~108_regout\))))) # (!\camino|memory|mem~5_combout\ & 
-- (((\camino|banco|regb~175_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~5_combout\,
	datab => \camino|banco|regb~124_regout\,
	datac => \camino|banco|regb~108_regout\,
	datad => \camino|banco|regb~175_combout\,
	combout => \camino|banco|regb~176_combout\);

-- Location: LCCOMB_X39_Y19_N30
\camino|banco|regb~172\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~172_combout\ = (\camino|memory|mem~10_combout\ & (((\camino|memory|mem~5_combout\)))) # (!\camino|memory|mem~10_combout\ & ((\camino|memory|mem~5_combout\ & ((\camino|banco|regb~12_regout\))) # (!\camino|memory|mem~5_combout\ & 
-- (\camino|banco|regb~4_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|regb~4_regout\,
	datab => \camino|banco|regb~12_regout\,
	datac => \camino|memory|mem~10_combout\,
	datad => \camino|memory|mem~5_combout\,
	combout => \camino|banco|regb~172_combout\);

-- Location: LCCOMB_X38_Y19_N14
\camino|banco|regb~173\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~173_combout\ = (\camino|memory|mem~10_combout\ & ((\camino|banco|regb~172_combout\ & (\camino|banco|regb~28_regout\)) # (!\camino|banco|regb~172_combout\ & ((\camino|banco|regb~20_regout\))))) # (!\camino|memory|mem~10_combout\ & 
-- (((\camino|banco|regb~172_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|regb~28_regout\,
	datab => \camino|banco|regb~20_regout\,
	datac => \camino|memory|mem~10_combout\,
	datad => \camino|banco|regb~172_combout\,
	combout => \camino|banco|regb~173_combout\);

-- Location: LCFF_X36_Y15_N11
\camino|banco|regb~36\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \camino|epe|y\(4),
	sload => VCC,
	ena => \camino|banco|regb~231_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~36_regout\);

-- Location: LCCOMB_X36_Y15_N10
\camino|banco|regb~170\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~170_combout\ = (\camino|memory|mem~5_combout\ & (((\camino|memory|mem~10_combout\)))) # (!\camino|memory|mem~5_combout\ & ((\camino|memory|mem~10_combout\ & (\camino|banco|regb~52_regout\)) # (!\camino|memory|mem~10_combout\ & 
-- ((\camino|banco|regb~36_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|regb~52_regout\,
	datab => \camino|memory|mem~5_combout\,
	datac => \camino|banco|regb~36_regout\,
	datad => \camino|memory|mem~10_combout\,
	combout => \camino|banco|regb~170_combout\);

-- Location: LCCOMB_X37_Y15_N26
\camino|banco|regb~171\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~171_combout\ = (\camino|memory|mem~5_combout\ & ((\camino|banco|regb~170_combout\ & ((\camino|banco|regb~60_regout\))) # (!\camino|banco|regb~170_combout\ & (\camino|banco|regb~44_regout\)))) # (!\camino|memory|mem~5_combout\ & 
-- (((\camino|banco|regb~170_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|regb~44_regout\,
	datab => \camino|memory|mem~5_combout\,
	datac => \camino|banco|regb~60_regout\,
	datad => \camino|banco|regb~170_combout\,
	combout => \camino|banco|regb~171_combout\);

-- Location: LCCOMB_X38_Y19_N28
\camino|banco|regb~174\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~174_combout\ = (\camino|memory|mem~14_combout\ & ((\camino|memory|mem~12_combout\) # ((\camino|banco|regb~171_combout\)))) # (!\camino|memory|mem~14_combout\ & (!\camino|memory|mem~12_combout\ & (\camino|banco|regb~173_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~14_combout\,
	datab => \camino|memory|mem~12_combout\,
	datac => \camino|banco|regb~173_combout\,
	datad => \camino|banco|regb~171_combout\,
	combout => \camino|banco|regb~174_combout\);

-- Location: LCCOMB_X38_Y19_N22
\camino|banco|regb~177\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~177_combout\ = (\camino|memory|mem~12_combout\ & ((\camino|banco|regb~174_combout\ & ((\camino|banco|regb~176_combout\))) # (!\camino|banco|regb~174_combout\ & (\camino|banco|regb~169_combout\)))) # (!\camino|memory|mem~12_combout\ & 
-- (((\camino|banco|regb~174_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|regb~169_combout\,
	datab => \camino|memory|mem~12_combout\,
	datac => \camino|banco|regb~176_combout\,
	datad => \camino|banco|regb~174_combout\,
	combout => \camino|banco|regb~177_combout\);

-- Location: LCCOMB_X38_Y15_N20
\camino|sps|y[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|sps|y[4]~4_combout\ = (\uc0|s_sps~0_combout\ & (((!\camino|banco|Equal1~0_combout\ & \camino|banco|regb~177_combout\)))) # (!\uc0|s_sps~0_combout\ & (\camino|memory|mem~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~35_combout\,
	datab => \camino|banco|Equal1~0_combout\,
	datac => \camino|banco|regb~177_combout\,
	datad => \uc0|s_sps~0_combout\,
	combout => \camino|sps|y[4]~4_combout\);

-- Location: LCFF_X38_Y15_N21
\camino|port_sal0|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \camino|sps|y[4]~4_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \camino|decodificador|sal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|port_sal0|q\(4));

-- Location: LCCOMB_X42_Y15_N14
\camino|sps|y[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|sps|y[5]~5_combout\ = (\uc0|s_sps~0_combout\ & (((\camino|banco|regb~187_combout\ & !\camino|banco|Equal1~0_combout\)))) # (!\uc0|s_sps~0_combout\ & (\camino|memory|mem~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~38_combout\,
	datab => \camino|banco|regb~187_combout\,
	datac => \camino|banco|Equal1~0_combout\,
	datad => \uc0|s_sps~0_combout\,
	combout => \camino|sps|y[5]~5_combout\);

-- Location: LCCOMB_X46_Y15_N20
\camino|port_sal0|q[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|port_sal0|q[5]~feeder_combout\ = \camino|sps|y[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \camino|sps|y[5]~5_combout\,
	combout => \camino|port_sal0|q[5]~feeder_combout\);

-- Location: LCFF_X46_Y15_N21
\camino|port_sal0|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \camino|port_sal0|q[5]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \camino|decodificador|sal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|port_sal0|q\(5));

-- Location: LCFF_X37_Y18_N29
\camino|banco|regb~126\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \camino|epe|y\(6),
	sload => VCC,
	ena => \camino|banco|regb~249_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~126_regout\);

-- Location: LCFF_X36_Y17_N9
\camino|banco|regb~110\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \camino|epe|y\(6),
	sload => VCC,
	ena => \camino|banco|regb~243_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~110_regout\);

-- Location: LCCOMB_X35_Y18_N20
\camino|banco|regb~102feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~102feeder_combout\ = \camino|epe|y\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \camino|epe|y\(6),
	combout => \camino|banco|regb~102feeder_combout\);

-- Location: LCFF_X35_Y18_N21
\camino|banco|regb~102\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \camino|banco|regb~102feeder_combout\,
	ena => \camino|banco|regb~247_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~102_regout\);

-- Location: LCCOMB_X37_Y18_N10
\camino|banco|regb~195\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~195_combout\ = (\camino|memory|mem~5_combout\ & ((\camino|banco|regb~110_regout\) # ((\camino|memory|mem~10_combout\)))) # (!\camino|memory|mem~5_combout\ & (((!\camino|memory|mem~10_combout\ & \camino|banco|regb~102_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~5_combout\,
	datab => \camino|banco|regb~110_regout\,
	datac => \camino|memory|mem~10_combout\,
	datad => \camino|banco|regb~102_regout\,
	combout => \camino|banco|regb~195_combout\);

-- Location: LCCOMB_X37_Y18_N28
\camino|banco|regb~196\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~196_combout\ = (\camino|memory|mem~10_combout\ & ((\camino|banco|regb~195_combout\ & ((\camino|banco|regb~126_regout\))) # (!\camino|banco|regb~195_combout\ & (\camino|banco|regb~118_regout\)))) # (!\camino|memory|mem~10_combout\ & 
-- (((\camino|banco|regb~195_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|regb~118_regout\,
	datab => \camino|memory|mem~10_combout\,
	datac => \camino|banco|regb~126_regout\,
	datad => \camino|banco|regb~195_combout\,
	combout => \camino|banco|regb~196_combout\);

-- Location: LCFF_X35_Y17_N3
\camino|banco|regb~22\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \camino|epe|y\(6),
	sload => VCC,
	ena => \camino|banco|regb~235_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~22_regout\);

-- Location: LCCOMB_X37_Y20_N2
\camino|banco|regb~192\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~192_combout\ = (\camino|memory|mem~5_combout\ & (((\camino|memory|mem~10_combout\)))) # (!\camino|memory|mem~5_combout\ & ((\camino|memory|mem~10_combout\ & ((\camino|banco|regb~22_regout\))) # (!\camino|memory|mem~10_combout\ & 
-- (\camino|banco|regb~6_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|regb~6_regout\,
	datab => \camino|banco|regb~22_regout\,
	datac => \camino|memory|mem~5_combout\,
	datad => \camino|memory|mem~10_combout\,
	combout => \camino|banco|regb~192_combout\);

-- Location: LCCOMB_X37_Y20_N8
\camino|banco|regb~193\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~193_combout\ = (\camino|memory|mem~5_combout\ & ((\camino|banco|regb~192_combout\ & ((\camino|banco|regb~30_regout\))) # (!\camino|banco|regb~192_combout\ & (\camino|banco|regb~14_regout\)))) # (!\camino|memory|mem~5_combout\ & 
-- (((\camino|banco|regb~192_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|regb~14_regout\,
	datab => \camino|banco|regb~30_regout\,
	datac => \camino|memory|mem~5_combout\,
	datad => \camino|banco|regb~192_combout\,
	combout => \camino|banco|regb~193_combout\);

-- Location: LCFF_X37_Y18_N21
\camino|banco|regb~78\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \camino|epe|y\(6),
	sload => VCC,
	ena => \camino|banco|regb~221_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~78_regout\);

-- Location: LCCOMB_X36_Y18_N20
\camino|banco|regb~86feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~86feeder_combout\ = \camino|epe|y\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \camino|epe|y\(6),
	combout => \camino|banco|regb~86feeder_combout\);

-- Location: LCFF_X36_Y18_N21
\camino|banco|regb~86\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \camino|banco|regb~86feeder_combout\,
	ena => \camino|banco|regb~219_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|banco|regb~86_regout\);

-- Location: LCCOMB_X37_Y20_N22
\camino|banco|regb~190\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~190_combout\ = (\camino|memory|mem~5_combout\ & (((\camino|memory|mem~10_combout\)))) # (!\camino|memory|mem~5_combout\ & ((\camino|memory|mem~10_combout\ & (\camino|banco|regb~86_regout\)) # (!\camino|memory|mem~10_combout\ & 
-- ((\camino|banco|regb~70_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~5_combout\,
	datab => \camino|banco|regb~86_regout\,
	datac => \camino|banco|regb~70_regout\,
	datad => \camino|memory|mem~10_combout\,
	combout => \camino|banco|regb~190_combout\);

-- Location: LCCOMB_X37_Y20_N0
\camino|banco|regb~191\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~191_combout\ = (\camino|memory|mem~5_combout\ & ((\camino|banco|regb~190_combout\ & (\camino|banco|regb~94_regout\)) # (!\camino|banco|regb~190_combout\ & ((\camino|banco|regb~78_regout\))))) # (!\camino|memory|mem~5_combout\ & 
-- (((\camino|banco|regb~190_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|regb~94_regout\,
	datab => \camino|banco|regb~78_regout\,
	datac => \camino|memory|mem~5_combout\,
	datad => \camino|banco|regb~190_combout\,
	combout => \camino|banco|regb~191_combout\);

-- Location: LCCOMB_X37_Y20_N6
\camino|banco|regb~194\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~194_combout\ = (\camino|memory|mem~14_combout\ & (\camino|memory|mem~12_combout\)) # (!\camino|memory|mem~14_combout\ & ((\camino|memory|mem~12_combout\ & ((\camino|banco|regb~191_combout\))) # (!\camino|memory|mem~12_combout\ & 
-- (\camino|banco|regb~193_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~14_combout\,
	datab => \camino|memory|mem~12_combout\,
	datac => \camino|banco|regb~193_combout\,
	datad => \camino|banco|regb~191_combout\,
	combout => \camino|banco|regb~194_combout\);

-- Location: LCCOMB_X37_Y18_N18
\camino|banco|regb~197\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|banco|regb~197_combout\ = (\camino|banco|regb~194_combout\ & (((\camino|banco|regb~196_combout\) # (!\camino|memory|mem~14_combout\)))) # (!\camino|banco|regb~194_combout\ & (\camino|banco|regb~189_combout\ & ((\camino|memory|mem~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|regb~189_combout\,
	datab => \camino|banco|regb~196_combout\,
	datac => \camino|banco|regb~194_combout\,
	datad => \camino|memory|mem~14_combout\,
	combout => \camino|banco|regb~197_combout\);

-- Location: LCCOMB_X42_Y15_N8
\camino|sps|y[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|sps|y[6]~6_combout\ = (\uc0|s_sps~0_combout\ & (!\camino|banco|Equal1~0_combout\ & (\camino|banco|regb~197_combout\))) # (!\uc0|s_sps~0_combout\ & (((\camino|memory|mem~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|banco|Equal1~0_combout\,
	datab => \camino|banco|regb~197_combout\,
	datac => \camino|memory|mem~40_combout\,
	datad => \uc0|s_sps~0_combout\,
	combout => \camino|sps|y[6]~6_combout\);

-- Location: LCCOMB_X46_Y15_N14
\camino|port_sal0|q[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|port_sal0|q[6]~feeder_combout\ = \camino|sps|y[6]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \camino|sps|y[6]~6_combout\,
	combout => \camino|port_sal0|q[6]~feeder_combout\);

-- Location: LCFF_X46_Y15_N15
\camino|port_sal0|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \camino|port_sal0|q[6]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \camino|decodificador|sal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|port_sal0|q\(6));

-- Location: LCCOMB_X42_Y15_N26
\camino|sps|y[7]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|sps|y[7]~7_combout\ = (\uc0|s_sps~0_combout\ & (((\camino|banco|regb~207_combout\ & !\camino|banco|Equal1~0_combout\)))) # (!\uc0|s_sps~0_combout\ & (\camino|memory|mem~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~42_combout\,
	datab => \camino|banco|regb~207_combout\,
	datac => \camino|banco|Equal1~0_combout\,
	datad => \uc0|s_sps~0_combout\,
	combout => \camino|sps|y[7]~7_combout\);

-- Location: LCCOMB_X46_Y15_N16
\camino|port_sal0|q[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|port_sal0|q[7]~feeder_combout\ = \camino|sps|y[7]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \camino|sps|y[7]~7_combout\,
	combout => \camino|port_sal0|q[7]~feeder_combout\);

-- Location: LCFF_X46_Y15_N17
\camino|port_sal0|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \camino|port_sal0|q[7]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \camino|decodificador|sal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|port_sal0|q\(7));

-- Location: LCCOMB_X46_Y15_N22
\camino|port_sal1|q[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|port_sal1|q[0]~feeder_combout\ = \camino|sps|y[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \camino|sps|y[0]~0_combout\,
	combout => \camino|port_sal1|q[0]~feeder_combout\);

-- Location: LCCOMB_X38_Y15_N0
\camino|decodificador|sal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|decodificador|sal1~0_combout\ = (!\camino|PC|q\(9) & (\camino|memory|mem~19_combout\ & (\uc0|dec_enable~0_combout\ & !\reset~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|PC|q\(9),
	datab => \camino|memory|mem~19_combout\,
	datac => \uc0|dec_enable~0_combout\,
	datad => \reset~combout\,
	combout => \camino|decodificador|sal1~0_combout\);

-- Location: LCCOMB_X38_Y15_N2
\camino|decodificador|sal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|decodificador|sal1~1_combout\ = (!\camino|memory|mem~44_combout\ & (\camino|memory|mem~43_combout\ & \camino|decodificador|sal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~44_combout\,
	datac => \camino|memory|mem~43_combout\,
	datad => \camino|decodificador|sal1~0_combout\,
	combout => \camino|decodificador|sal1~1_combout\);

-- Location: LCFF_X46_Y15_N23
\camino|port_sal1|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \camino|port_sal1|q[0]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \camino|decodificador|sal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|port_sal1|q\(0));

-- Location: LCCOMB_X46_Y15_N8
\camino|port_sal1|q[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|port_sal1|q[1]~feeder_combout\ = \camino|sps|y[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \camino|sps|y[1]~1_combout\,
	combout => \camino|port_sal1|q[1]~feeder_combout\);

-- Location: LCFF_X46_Y15_N9
\camino|port_sal1|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \camino|port_sal1|q[1]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \camino|decodificador|sal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|port_sal1|q\(1));

-- Location: LCCOMB_X46_Y15_N10
\camino|port_sal1|q[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|port_sal1|q[2]~feeder_combout\ = \camino|sps|y[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \camino|sps|y[2]~2_combout\,
	combout => \camino|port_sal1|q[2]~feeder_combout\);

-- Location: LCFF_X46_Y15_N11
\camino|port_sal1|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \camino|port_sal1|q[2]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \camino|decodificador|sal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|port_sal1|q\(2));

-- Location: LCCOMB_X46_Y15_N28
\camino|port_sal1|q[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|port_sal1|q[3]~feeder_combout\ = \camino|sps|y[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \camino|sps|y[3]~3_combout\,
	combout => \camino|port_sal1|q[3]~feeder_combout\);

-- Location: LCFF_X46_Y15_N29
\camino|port_sal1|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \camino|port_sal1|q[3]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \camino|decodificador|sal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|port_sal1|q\(3));

-- Location: LCCOMB_X46_Y15_N6
\camino|port_sal1|q[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|port_sal1|q[4]~feeder_combout\ = \camino|sps|y[4]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \camino|sps|y[4]~4_combout\,
	combout => \camino|port_sal1|q[4]~feeder_combout\);

-- Location: LCFF_X46_Y15_N7
\camino|port_sal1|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \camino|port_sal1|q[4]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \camino|decodificador|sal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|port_sal1|q\(4));

-- Location: LCCOMB_X46_Y15_N0
\camino|port_sal1|q[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|port_sal1|q[5]~feeder_combout\ = \camino|sps|y[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \camino|sps|y[5]~5_combout\,
	combout => \camino|port_sal1|q[5]~feeder_combout\);

-- Location: LCFF_X46_Y15_N1
\camino|port_sal1|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \camino|port_sal1|q[5]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \camino|decodificador|sal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|port_sal1|q\(5));

-- Location: LCCOMB_X46_Y15_N18
\camino|port_sal1|q[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|port_sal1|q[6]~feeder_combout\ = \camino|sps|y[6]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \camino|sps|y[6]~6_combout\,
	combout => \camino|port_sal1|q[6]~feeder_combout\);

-- Location: LCFF_X46_Y15_N19
\camino|port_sal1|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \camino|port_sal1|q[6]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \camino|decodificador|sal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|port_sal1|q\(6));

-- Location: LCCOMB_X46_Y15_N4
\camino|port_sal1|q[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|port_sal1|q[7]~feeder_combout\ = \camino|sps|y[7]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \camino|sps|y[7]~7_combout\,
	combout => \camino|port_sal1|q[7]~feeder_combout\);

-- Location: LCFF_X46_Y15_N5
\camino|port_sal1|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \camino|port_sal1|q[7]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \camino|decodificador|sal1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|port_sal1|q\(7));

-- Location: LCCOMB_X42_Y15_N12
\camino|port_sal2|q[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|port_sal2|q[0]~feeder_combout\ = \camino|sps|y[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \camino|sps|y[0]~0_combout\,
	combout => \camino|port_sal2|q[0]~feeder_combout\);

-- Location: LCCOMB_X38_Y15_N24
\camino|decodificador|sal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|decodificador|sal2~0_combout\ = (\camino|memory|mem~2_combout\ & (!\camino|memory|mem~45_combout\ & (\camino|memory|mem~30_combout\ & \camino|decodificador|sal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~2_combout\,
	datab => \camino|memory|mem~45_combout\,
	datac => \camino|memory|mem~30_combout\,
	datad => \camino|decodificador|sal1~0_combout\,
	combout => \camino|decodificador|sal2~0_combout\);

-- Location: LCFF_X42_Y15_N13
\camino|port_sal2|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \camino|port_sal2|q[0]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \camino|decodificador|sal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|port_sal2|q\(0));

-- Location: LCCOMB_X42_Y15_N30
\camino|port_sal2|q[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|port_sal2|q[1]~feeder_combout\ = \camino|sps|y[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \camino|sps|y[1]~1_combout\,
	combout => \camino|port_sal2|q[1]~feeder_combout\);

-- Location: LCFF_X42_Y15_N31
\camino|port_sal2|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \camino|port_sal2|q[1]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \camino|decodificador|sal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|port_sal2|q\(1));

-- Location: LCFF_X42_Y15_N29
\camino|port_sal2|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \camino|sps|y[2]~2_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \camino|decodificador|sal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|port_sal2|q\(2));

-- Location: LCFF_X42_Y15_N19
\camino|port_sal2|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \camino|sps|y[3]~3_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \camino|decodificador|sal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|port_sal2|q\(3));

-- Location: LCCOMB_X42_Y15_N16
\camino|port_sal2|q[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|port_sal2|q[4]~feeder_combout\ = \camino|sps|y[4]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \camino|sps|y[4]~4_combout\,
	combout => \camino|port_sal2|q[4]~feeder_combout\);

-- Location: LCFF_X42_Y15_N17
\camino|port_sal2|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \camino|port_sal2|q[4]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \camino|decodificador|sal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|port_sal2|q\(4));

-- Location: LCFF_X42_Y15_N15
\camino|port_sal2|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \camino|sps|y[5]~5_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \camino|decodificador|sal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|port_sal2|q\(5));

-- Location: LCFF_X42_Y15_N9
\camino|port_sal2|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \camino|sps|y[6]~6_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \camino|decodificador|sal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|port_sal2|q\(6));

-- Location: LCFF_X42_Y15_N27
\camino|port_sal2|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \camino|sps|y[7]~7_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \camino|decodificador|sal2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|port_sal2|q\(7));

-- Location: LCCOMB_X38_Y15_N10
\camino|decodificador|sal3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|decodificador|sal3~0_combout\ = (\camino|memory|mem~43_combout\ & (\camino|memory|mem~30_combout\ & (\camino|memory|mem~2_combout\ & \camino|decodificador|sal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camino|memory|mem~43_combout\,
	datab => \camino|memory|mem~30_combout\,
	datac => \camino|memory|mem~2_combout\,
	datad => \camino|decodificador|sal1~0_combout\,
	combout => \camino|decodificador|sal3~0_combout\);

-- Location: LCFF_X42_Y15_N1
\camino|port_sal3|q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \camino|sps|y[0]~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \camino|decodificador|sal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|port_sal3|q\(0));

-- Location: LCFF_X42_Y15_N11
\camino|port_sal3|q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \camino|sps|y[1]~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \camino|decodificador|sal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|port_sal3|q\(1));

-- Location: LCCOMB_X42_Y15_N4
\camino|port_sal3|q[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|port_sal3|q[2]~feeder_combout\ = \camino|sps|y[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \camino|sps|y[2]~2_combout\,
	combout => \camino|port_sal3|q[2]~feeder_combout\);

-- Location: LCFF_X42_Y15_N5
\camino|port_sal3|q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \camino|port_sal3|q[2]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \camino|decodificador|sal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|port_sal3|q\(2));

-- Location: LCCOMB_X42_Y15_N22
\camino|port_sal3|q[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|port_sal3|q[3]~feeder_combout\ = \camino|sps|y[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \camino|sps|y[3]~3_combout\,
	combout => \camino|port_sal3|q[3]~feeder_combout\);

-- Location: LCFF_X42_Y15_N23
\camino|port_sal3|q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \camino|port_sal3|q[3]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \camino|decodificador|sal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|port_sal3|q\(3));

-- Location: LCCOMB_X42_Y15_N24
\camino|port_sal3|q[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|port_sal3|q[4]~feeder_combout\ = \camino|sps|y[4]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \camino|sps|y[4]~4_combout\,
	combout => \camino|port_sal3|q[4]~feeder_combout\);

-- Location: LCFF_X42_Y15_N25
\camino|port_sal3|q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \camino|port_sal3|q[4]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \camino|decodificador|sal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|port_sal3|q\(4));

-- Location: LCFF_X42_Y15_N7
\camino|port_sal3|q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \camino|sps|y[5]~5_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \camino|decodificador|sal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|port_sal3|q\(5));

-- Location: LCFF_X42_Y15_N21
\camino|port_sal3|q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \camino|sps|y[6]~6_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \camino|decodificador|sal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|port_sal3|q\(6));

-- Location: LCCOMB_X42_Y15_N2
\camino|port_sal3|q[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \camino|port_sal3|q[7]~feeder_combout\ = \camino|sps|y[7]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \camino|sps|y[7]~7_combout\,
	combout => \camino|port_sal3|q[7]~feeder_combout\);

-- Location: LCFF_X42_Y15_N3
\camino|port_sal3|q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \camino|port_sal3|q[7]~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \camino|decodificador|sal3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \camino|port_sal3|q\(7));

-- Location: PIN_V15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Pe1[3]~I\ : cycloneii_io
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
	padio => ww_Pe1(3));

-- Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Pe1[4]~I\ : cycloneii_io
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
	padio => ww_Pe1(4));

-- Location: PIN_AA4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Pe1[5]~I\ : cycloneii_io
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
	padio => ww_Pe1(5));

-- Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Pe1[6]~I\ : cycloneii_io
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
	padio => ww_Pe1(6));

-- Location: PIN_U8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Pe1[7]~I\ : cycloneii_io
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
	padio => ww_Pe1(7));

-- Location: PIN_G8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Pe2[0]~I\ : cycloneii_io
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
	padio => ww_Pe2(0));

-- Location: PIN_C18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Pe2[1]~I\ : cycloneii_io
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
	padio => ww_Pe2(1));

-- Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Pe2[2]~I\ : cycloneii_io
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
	padio => ww_Pe2(2));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Pe2[3]~I\ : cycloneii_io
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
	padio => ww_Pe2(3));

-- Location: PIN_AB3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Pe2[4]~I\ : cycloneii_io
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
	padio => ww_Pe2(4));

-- Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Pe2[5]~I\ : cycloneii_io
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
	padio => ww_Pe2(5));

-- Location: PIN_AA19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Pe2[6]~I\ : cycloneii_io
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
	padio => ww_Pe2(6));

-- Location: PIN_AB4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Pe2[7]~I\ : cycloneii_io
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
	padio => ww_Pe2(7));

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ps0[0]~I\ : cycloneii_io
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
	datain => \camino|port_sal0|q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ps0(0));

-- Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ps0[1]~I\ : cycloneii_io
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
	datain => \camino|port_sal0|q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ps0(1));

-- Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ps0[2]~I\ : cycloneii_io
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
	datain => \camino|port_sal0|q\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ps0(2));

-- Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ps0[3]~I\ : cycloneii_io
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
	datain => \camino|port_sal0|q\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ps0(3));

-- Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ps0[4]~I\ : cycloneii_io
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
	datain => \camino|port_sal0|q\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ps0(4));

-- Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ps0[5]~I\ : cycloneii_io
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
	datain => \camino|port_sal0|q\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ps0(5));

-- Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ps0[6]~I\ : cycloneii_io
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
	datain => \camino|port_sal0|q\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ps0(6));

-- Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ps0[7]~I\ : cycloneii_io
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
	datain => \camino|port_sal0|q\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ps0(7));

-- Location: PIN_M19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ps1[0]~I\ : cycloneii_io
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
	datain => \camino|port_sal1|q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ps1(0));

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ps1[1]~I\ : cycloneii_io
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
	datain => \camino|port_sal1|q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ps1(1));

-- Location: PIN_N21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ps1[2]~I\ : cycloneii_io
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
	datain => \camino|port_sal1|q\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ps1(2));

-- Location: PIN_E21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ps1[3]~I\ : cycloneii_io
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
	datain => \camino|port_sal1|q\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ps1(3));

-- Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ps1[4]~I\ : cycloneii_io
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
	datain => \camino|port_sal1|q\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ps1(4));

-- Location: PIN_F22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ps1[5]~I\ : cycloneii_io
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
	datain => \camino|port_sal1|q\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ps1(5));

-- Location: PIN_N22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ps1[6]~I\ : cycloneii_io
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
	datain => \camino|port_sal1|q\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ps1(6));

-- Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ps1[7]~I\ : cycloneii_io
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
	datain => \camino|port_sal1|q\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ps1(7));

-- Location: PIN_N15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ps2[0]~I\ : cycloneii_io
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
	datain => \camino|port_sal2|q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ps2(0));

-- Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ps2[1]~I\ : cycloneii_io
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
	datain => \camino|port_sal2|q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ps2(1));

-- Location: PIN_H17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ps2[2]~I\ : cycloneii_io
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
	datain => \camino|port_sal2|q\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ps2(2));

-- Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ps2[3]~I\ : cycloneii_io
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
	datain => \camino|port_sal2|q\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ps2(3));

-- Location: PIN_J19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ps2[4]~I\ : cycloneii_io
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
	datain => \camino|port_sal2|q\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ps2(4));

-- Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ps2[5]~I\ : cycloneii_io
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
	datain => \camino|port_sal2|q\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ps2(5));

-- Location: PIN_L18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ps2[6]~I\ : cycloneii_io
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
	datain => \camino|port_sal2|q\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ps2(6));

-- Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ps2[7]~I\ : cycloneii_io
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
	datain => \camino|port_sal2|q\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ps2(7));

-- Location: PIN_M18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ps3[0]~I\ : cycloneii_io
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
	datain => \camino|port_sal3|q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ps3(0));

-- Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ps3[1]~I\ : cycloneii_io
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
	datain => \camino|port_sal3|q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ps3(1));

-- Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ps3[2]~I\ : cycloneii_io
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
	datain => \camino|port_sal3|q\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ps3(2));

-- Location: PIN_H18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ps3[3]~I\ : cycloneii_io
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
	datain => \camino|port_sal3|q\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ps3(3));

-- Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ps3[4]~I\ : cycloneii_io
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
	datain => \camino|port_sal3|q\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ps3(4));

-- Location: PIN_J15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ps3[5]~I\ : cycloneii_io
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
	datain => \camino|port_sal3|q\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ps3(5));

-- Location: PIN_P15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ps3[6]~I\ : cycloneii_io
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
	datain => \camino|port_sal3|q\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ps3(6));

-- Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ps3[7]~I\ : cycloneii_io
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
	datain => \camino|port_sal3|q\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ps3(7));

-- Location: PIN_R20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC_out[0]~I\ : cycloneii_io
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
	datain => \camino|PC|q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC_out(0));

-- Location: PIN_R19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC_out[1]~I\ : cycloneii_io
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
	datain => \camino|PC|q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC_out(1));

-- Location: PIN_U19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC_out[2]~I\ : cycloneii_io
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
	datain => \camino|PC|q\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC_out(2));

-- Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC_out[3]~I\ : cycloneii_io
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
	datain => \camino|PC|q\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC_out(3));

-- Location: PIN_T18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC_out[4]~I\ : cycloneii_io
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
	datain => \camino|PC|q\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC_out(4));

-- Location: PIN_V19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC_out[5]~I\ : cycloneii_io
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
	datain => \camino|PC|q\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC_out(5));

-- Location: PIN_Y18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC_out[6]~I\ : cycloneii_io
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
	datain => \camino|PC|q\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC_out(6));

-- Location: PIN_U18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC_out[7]~I\ : cycloneii_io
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
	datain => \camino|PC|q\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC_out(7));

-- Location: PIN_R18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC_out[8]~I\ : cycloneii_io
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
	datain => \camino|PC|q\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC_out(8));

-- Location: PIN_R17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\PC_out[9]~I\ : cycloneii_io
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
	datain => \camino|PC|q\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PC_out(9));
END structure;


