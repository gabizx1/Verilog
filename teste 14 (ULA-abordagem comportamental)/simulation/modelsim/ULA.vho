-- Copyright (C) 1991-2011 Altera Corporation
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
-- VERSION "Version 11.1 Build 173 11/01/2011 SJ Web Edition"

-- DATE "07/09/2024 05:16:44"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ULA IS
    PORT (
	s : OUT std_logic_vector(3 DOWNTO 0);
	a : IN std_logic_vector(3 DOWNTO 0);
	b : IN std_logic_vector(3 DOWNTO 0);
	x : IN std_logic;
	y : IN std_logic;
	z : IN std_logic
	);
END ULA;

-- Design Ports Information
-- s[0]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s[1]	=>  Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s[2]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- s[3]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- x	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- z	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[0]	=>  Location: PIN_AC15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[0]	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- y	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[1]	=>  Location: PIN_AE16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[1]	=>  Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[2]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[3]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[3]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[2]	=>  Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF ULA IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_s : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_a : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_x : std_logic;
SIGNAL ww_y : std_logic;
SIGNAL ww_z : std_logic;
SIGNAL \ShiftRight0~0_combout\ : std_logic;
SIGNAL \ShiftLeft0~0_combout\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \y~combout\ : std_logic;
SIGNAL \z~combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Add0~7_combout\ : std_logic;
SIGNAL \Add0~9_cout\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux3~5_combout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux3~6_combout\ : std_logic;
SIGNAL \x~combout\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add0~33_combout\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~13_combout\ : std_logic;
SIGNAL \Mux2~5_combout\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \Mux2~7_combout\ : std_logic;
SIGNAL \ShiftRight0~1_combout\ : std_logic;
SIGNAL \Mux2~6_combout\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~29_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux1~4_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Add0~17_combout\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~19_combout\ : std_logic;
SIGNAL \Add0~21_combout\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~27_combout\ : std_logic;
SIGNAL \Add0~20\ : std_logic;
SIGNAL \Add0~25_combout\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Add0~23_combout\ : std_logic;
SIGNAL \Add0~31_combout\ : std_logic;
SIGNAL \a~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b~combout\ : std_logic_vector(3 DOWNTO 0);

BEGIN

s <= ww_s;
ww_a <= a;
ww_b <= b;
ww_x <= x;
ww_y <= y;
ww_z <= z;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: LCCOMB_X41_Y24_N10
\ShiftRight0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~0_combout\ = (\b~combout\(0) & (\a~combout\(3))) # (!\b~combout\(0) & ((\a~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\(3),
	datac => \b~combout\(0),
	datad => \a~combout\(2),
	combout => \ShiftRight0~0_combout\);

-- Location: LCCOMB_X40_Y23_N4
\ShiftLeft0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftLeft0~0_combout\ = (\b~combout\(0) & ((\a~combout\(0)))) # (!\b~combout\(0) & (\a~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(1),
	datac => \b~combout\(0),
	datad => \a~combout\(0),
	combout => \ShiftLeft0~0_combout\);

-- Location: LCCOMB_X40_Y23_N14
\Add0~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = \z~combout\ $ (\b~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \z~combout\,
	datac => \b~combout\(3),
	combout => \Add0~24_combout\);

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\y~I\ : cycloneii_io
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
	padio => ww_y,
	combout => \y~combout\);

-- Location: PIN_AC15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[0]~I\ : cycloneii_io
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
	padio => ww_b(0),
	combout => \b~combout\(0));

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\z~I\ : cycloneii_io
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
	padio => ww_z,
	combout => \z~combout\);

-- Location: LCCOMB_X41_Y23_N0
\Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\a~combout\(0) & (\y~combout\ $ (((\b~combout\(0)) # (\z~combout\))))) # (!\a~combout\(0) & ((\b~combout\(0) & ((\y~combout\) # (\z~combout\))) # (!\b~combout\(0) & (\y~combout\ & \z~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(0),
	datab => \b~combout\(0),
	datac => \y~combout\,
	datad => \z~combout\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X40_Y23_N16
\Add0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~7_combout\ = \z~combout\ $ (\b~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \z~combout\,
	datac => \b~combout\(0),
	combout => \Add0~7_combout\);

-- Location: LCCOMB_X41_Y23_N18
\Add0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~9_cout\ = CARRY(\z~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \z~combout\,
	datad => VCC,
	cout => \Add0~9_cout\);

-- Location: LCCOMB_X41_Y23_N20
\Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\a~combout\(0) & ((\Add0~7_combout\ & (\Add0~9_cout\ & VCC)) # (!\Add0~7_combout\ & (!\Add0~9_cout\)))) # (!\a~combout\(0) & ((\Add0~7_combout\ & (!\Add0~9_cout\)) # (!\Add0~7_combout\ & ((\Add0~9_cout\) # (GND)))))
-- \Add0~11\ = CARRY((\a~combout\(0) & (!\Add0~7_combout\ & !\Add0~9_cout\)) # (!\a~combout\(0) & ((!\Add0~9_cout\) # (!\Add0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(0),
	datab => \Add0~7_combout\,
	datad => VCC,
	cin => \Add0~9_cout\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[3]~I\ : cycloneii_io
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
	padio => ww_b(3),
	combout => \b~combout\(3));

-- Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[2]~I\ : cycloneii_io
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
	padio => ww_b(2),
	combout => \b~combout\(2));

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[1]~I\ : cycloneii_io
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
	padio => ww_b(1),
	combout => \b~combout\(1));

-- Location: LCCOMB_X41_Y24_N4
\Mux2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~4_combout\ = (!\b~combout\(3) & (!\b~combout\(2) & !\b~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b~combout\(3),
	datac => \b~combout\(2),
	datad => \b~combout\(1),
	combout => \Mux2~4_combout\);

-- Location: LCCOMB_X41_Y24_N2
\Mux3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~4_combout\ = (\z~combout\ & ((\b~combout\(0)) # (!\Mux2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(0),
	datab => \z~combout\,
	datac => \Mux2~4_combout\,
	combout => \Mux3~4_combout\);

-- Location: LCCOMB_X41_Y24_N24
\Mux3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = ((\b~combout\(1) & (!\b~combout\(2) & !\b~combout\(3)))) # (!\z~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(1),
	datab => \z~combout\,
	datac => \b~combout\(2),
	datad => \b~combout\(3),
	combout => \Mux3~3_combout\);

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[0]~I\ : cycloneii_io
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
	padio => ww_a(0),
	combout => \a~combout\(0));

-- Location: LCCOMB_X41_Y24_N30
\Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (!\b~combout\(0) & (\a~combout\(0) & \Mux2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(0),
	datab => \a~combout\(0),
	datac => \Mux2~4_combout\,
	combout => \Mux3~2_combout\);

-- Location: LCCOMB_X41_Y24_N12
\Mux3~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~5_combout\ = (\Mux3~4_combout\ & (\ShiftRight0~0_combout\ & (\Mux3~3_combout\))) # (!\Mux3~4_combout\ & (((\Mux3~2_combout\) # (!\Mux3~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~0_combout\,
	datab => \Mux3~4_combout\,
	datac => \Mux3~3_combout\,
	datad => \Mux3~2_combout\,
	combout => \Mux3~5_combout\);

-- Location: LCCOMB_X41_Y24_N16
\Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\b~combout\(1)) # (((\b~combout\(2)) # (\b~combout\(3))) # (!\z~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(1),
	datab => \z~combout\,
	datac => \b~combout\(2),
	datad => \b~combout\(3),
	combout => \Mux3~1_combout\);

-- Location: PIN_AE16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[1]~I\ : cycloneii_io
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
	padio => ww_a(1),
	combout => \a~combout\(1));

-- Location: LCCOMB_X41_Y23_N2
\Mux3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~6_combout\ = (\Mux3~5_combout\ & ((\a~combout\(0)) # ((\Mux3~1_combout\)))) # (!\Mux3~5_combout\ & (((!\Mux3~1_combout\ & \a~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(0),
	datab => \Mux3~5_combout\,
	datac => \Mux3~1_combout\,
	datad => \a~combout\(1),
	combout => \Mux3~6_combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\x~I\ : cycloneii_io
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
	padio => ww_x,
	combout => \x~combout\);

-- Location: LCCOMB_X41_Y23_N28
\Add0~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (\x~combout\ & (((\Mux3~0_combout\)))) # (!\x~combout\ & ((\y~combout\ & (\Mux3~6_combout\)) # (!\y~combout\ & ((!\Mux3~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y~combout\,
	datab => \Mux3~6_combout\,
	datac => \x~combout\,
	datad => \Mux3~0_combout\,
	combout => \Add0~32_combout\);

-- Location: LCCOMB_X41_Y23_N30
\Add0~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~33_combout\ = (\y~combout\ & (((\Add0~32_combout\)))) # (!\y~combout\ & ((\Mux3~0_combout\ & ((\Add0~10_combout\) # (\Add0~32_combout\))) # (!\Mux3~0_combout\ & (\Add0~10_combout\ & \Add0~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y~combout\,
	datab => \Mux3~0_combout\,
	datac => \Add0~10_combout\,
	datad => \Add0~32_combout\,
	combout => \Add0~33_combout\);

-- Location: LCCOMB_X40_Y23_N18
\Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = \z~combout\ $ (\b~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \z~combout\,
	datad => \b~combout\(1),
	combout => \Add0~12_combout\);

-- Location: LCCOMB_X41_Y23_N22
\Add0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~13_combout\ = ((\a~combout\(1) $ (\Add0~12_combout\ $ (!\Add0~11\)))) # (GND)
-- \Add0~14\ = CARRY((\a~combout\(1) & ((\Add0~12_combout\) # (!\Add0~11\))) # (!\a~combout\(1) & (\Add0~12_combout\ & !\Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(1),
	datab => \Add0~12_combout\,
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~13_combout\,
	cout => \Add0~14\);

-- Location: LCCOMB_X41_Y23_N12
\Mux2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~5_combout\ = (\y~combout\ & (\a~combout\(1) $ (((\z~combout\) # (\b~combout\(1)))))) # (!\y~combout\ & ((\z~combout\ & ((\b~combout\(1)) # (\a~combout\(1)))) # (!\z~combout\ & (\b~combout\(1) & \a~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \z~combout\,
	datab => \b~combout\(1),
	datac => \y~combout\,
	datad => \a~combout\(1),
	combout => \Mux2~5_combout\);

-- Location: LCCOMB_X41_Y23_N6
\Add0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~15_combout\ = (\x~combout\ & (((\Mux2~5_combout\)))) # (!\x~combout\ & (!\y~combout\ & (\Add0~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y~combout\,
	datab => \Add0~13_combout\,
	datac => \x~combout\,
	datad => \Mux2~5_combout\,
	combout => \Add0~15_combout\);

-- Location: LCCOMB_X41_Y24_N14
\Mux2~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~7_combout\ = (\ShiftLeft0~0_combout\ & (!\b~combout\(3) & (!\b~combout\(2) & !\b~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~0_combout\,
	datab => \b~combout\(3),
	datac => \b~combout\(2),
	datad => \b~combout\(1),
	combout => \Mux2~7_combout\);

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[3]~I\ : cycloneii_io
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
	padio => ww_a(3),
	combout => \a~combout\(3));

-- Location: LCCOMB_X41_Y24_N6
\ShiftRight0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ShiftRight0~1_combout\ = (\a~combout\(3) & !\b~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\(3),
	datac => \b~combout\(0),
	combout => \ShiftRight0~1_combout\);

-- Location: LCCOMB_X41_Y24_N8
\Mux2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~6_combout\ = (\Mux3~3_combout\ & ((\Mux3~4_combout\ & ((\ShiftRight0~1_combout\))) # (!\Mux3~4_combout\ & (\Mux2~7_combout\)))) # (!\Mux3~3_combout\ & (!\Mux3~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~3_combout\,
	datab => \Mux3~4_combout\,
	datac => \Mux2~7_combout\,
	datad => \ShiftRight0~1_combout\,
	combout => \Mux2~6_combout\);

-- Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[2]~I\ : cycloneii_io
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
	padio => ww_a(2),
	combout => \a~combout\(2));

-- Location: LCCOMB_X41_Y23_N8
\Add0~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (\Mux2~6_combout\ & ((\a~combout\(1)) # ((\Mux3~1_combout\)))) # (!\Mux2~6_combout\ & (((!\Mux3~1_combout\ & \a~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(1),
	datab => \Mux2~6_combout\,
	datac => \Mux3~1_combout\,
	datad => \a~combout\(2),
	combout => \Add0~16_combout\);

-- Location: LCCOMB_X40_Y23_N24
\Add0~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~29_combout\ = (\Add0~15_combout\) # ((\y~combout\ & (!\x~combout\ & \Add0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~15_combout\,
	datab => \y~combout\,
	datac => \x~combout\,
	datad => \Add0~16_combout\,
	combout => \Add0~29_combout\);

-- Location: LCCOMB_X41_Y24_N0
\Mux1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = (\z~combout\) # ((\b~combout\(0) & \Mux2~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(0),
	datab => \z~combout\,
	datac => \Mux2~4_combout\,
	combout => \Mux1~3_combout\);

-- Location: LCCOMB_X41_Y24_N28
\Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (!\b~combout\(0) & (\a~combout\(0) & (!\b~combout\(2) & !\b~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(0),
	datab => \a~combout\(0),
	datac => \b~combout\(2),
	datad => \b~combout\(3),
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X41_Y24_N22
\Mux1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = \z~combout\ $ (((\b~combout\(1)) # ((\b~combout\(2)) # (\b~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(1),
	datab => \z~combout\,
	datac => \b~combout\(2),
	datad => \b~combout\(3),
	combout => \Mux1~2_combout\);

-- Location: LCCOMB_X41_Y24_N26
\Mux1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~4_combout\ = (\Mux1~3_combout\ & (\ShiftRight0~0_combout\ & ((\Mux1~2_combout\)))) # (!\Mux1~3_combout\ & (((\Mux1~1_combout\) # (!\Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~0_combout\,
	datab => \Mux1~3_combout\,
	datac => \Mux1~1_combout\,
	datad => \Mux1~2_combout\,
	combout => \Mux1~4_combout\);

-- Location: LCCOMB_X41_Y24_N18
\Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\b~combout\(1)) # ((\z~combout\) # ((\b~combout\(2)) # (\b~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(1),
	datab => \z~combout\,
	datac => \b~combout\(2),
	datad => \b~combout\(3),
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X40_Y23_N6
\Add0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~17_combout\ = (\Mux1~4_combout\ & (((\Mux1~0_combout\) # (\a~combout\(2))))) # (!\Mux1~4_combout\ & (\a~combout\(1) & (!\Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(1),
	datab => \Mux1~4_combout\,
	datac => \Mux1~0_combout\,
	datad => \a~combout\(2),
	combout => \Add0~17_combout\);

-- Location: LCCOMB_X40_Y23_N8
\Add0~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = \z~combout\ $ (\b~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \z~combout\,
	datac => \b~combout\(2),
	combout => \Add0~18_combout\);

-- Location: LCCOMB_X41_Y23_N24
\Add0~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~19_combout\ = (\a~combout\(2) & ((\Add0~18_combout\ & (\Add0~14\ & VCC)) # (!\Add0~18_combout\ & (!\Add0~14\)))) # (!\a~combout\(2) & ((\Add0~18_combout\ & (!\Add0~14\)) # (!\Add0~18_combout\ & ((\Add0~14\) # (GND)))))
-- \Add0~20\ = CARRY((\a~combout\(2) & (!\Add0~18_combout\ & !\Add0~14\)) # (!\a~combout\(2) & ((!\Add0~14\) # (!\Add0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(2),
	datab => \Add0~18_combout\,
	datad => VCC,
	cin => \Add0~14\,
	combout => \Add0~19_combout\,
	cout => \Add0~20\);

-- Location: LCCOMB_X41_Y23_N10
\Add0~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~21_combout\ = (\y~combout\ & (\a~combout\(2) $ (((\b~combout\(2)) # (\z~combout\))))) # (!\y~combout\ & ((\b~combout\(2) & ((\z~combout\) # (\a~combout\(2)))) # (!\b~combout\(2) & (\z~combout\ & \a~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y~combout\,
	datab => \b~combout\(2),
	datac => \z~combout\,
	datad => \a~combout\(2),
	combout => \Add0~21_combout\);

-- Location: LCCOMB_X41_Y23_N4
\Add0~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (\x~combout\ & (((\Add0~21_combout\)))) # (!\x~combout\ & (!\y~combout\ & (\Add0~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y~combout\,
	datab => \x~combout\,
	datac => \Add0~19_combout\,
	datad => \Add0~21_combout\,
	combout => \Add0~22_combout\);

-- Location: LCCOMB_X40_Y23_N10
\Add0~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (\Add0~22_combout\) # ((\Add0~17_combout\ & (\y~combout\ & !\x~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~17_combout\,
	datab => \y~combout\,
	datac => \x~combout\,
	datad => \Add0~22_combout\,
	combout => \Add0~30_combout\);

-- Location: LCCOMB_X41_Y23_N14
\Add0~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~27_combout\ = (\y~combout\ & (\a~combout\(3) $ (((\z~combout\) # (\b~combout\(3)))))) # (!\y~combout\ & ((\a~combout\(3) & ((\z~combout\) # (\b~combout\(3)))) # (!\a~combout\(3) & (\z~combout\ & \b~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y~combout\,
	datab => \a~combout\(3),
	datac => \z~combout\,
	datad => \b~combout\(3),
	combout => \Add0~27_combout\);

-- Location: LCCOMB_X41_Y23_N26
\Add0~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~25_combout\ = \Add0~24_combout\ $ (\Add0~20\ $ (!\a~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~24_combout\,
	datad => \a~combout\(3),
	cin => \Add0~20\,
	combout => \Add0~25_combout\);

-- Location: LCCOMB_X41_Y23_N16
\Add0~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (\x~combout\ & (((\Add0~27_combout\)))) # (!\x~combout\ & (!\y~combout\ & ((\Add0~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \y~combout\,
	datab => \Add0~27_combout\,
	datac => \x~combout\,
	datad => \Add0~25_combout\,
	combout => \Add0~28_combout\);

-- Location: LCCOMB_X41_Y24_N20
\Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\ShiftLeft0~0_combout\ & (!\b~combout\(2) & !\b~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~0_combout\,
	datac => \b~combout\(2),
	datad => \b~combout\(3),
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X40_Y23_N2
\Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\Mux1~2_combout\ & ((\Mux1~3_combout\ & ((\ShiftRight0~1_combout\))) # (!\Mux1~3_combout\ & (\Mux0~0_combout\)))) # (!\Mux1~2_combout\ & (!\Mux1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~2_combout\,
	datab => \Mux1~3_combout\,
	datac => \Mux0~0_combout\,
	datad => \ShiftRight0~1_combout\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X40_Y23_N12
\Add0~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~23_combout\ = (\Mux0~1_combout\ & ((\a~combout\(3)) # ((\Mux1~0_combout\)))) # (!\Mux0~1_combout\ & (((!\Mux1~0_combout\ & \a~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(3),
	datab => \Mux0~1_combout\,
	datac => \Mux1~0_combout\,
	datad => \a~combout\(2),
	combout => \Add0~23_combout\);

-- Location: LCCOMB_X40_Y23_N20
\Add0~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~31_combout\ = (\Add0~28_combout\) # ((!\x~combout\ & (\y~combout\ & \Add0~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \x~combout\,
	datab => \y~combout\,
	datac => \Add0~28_combout\,
	datad => \Add0~23_combout\,
	combout => \Add0~31_combout\);

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[0]~I\ : cycloneii_io
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
	datain => \Add0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(0));

-- Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[1]~I\ : cycloneii_io
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
	datain => \Add0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(1));

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[2]~I\ : cycloneii_io
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
	datain => \Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(2));

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\s[3]~I\ : cycloneii_io
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
	datain => \Add0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_s(3));
END structure;


