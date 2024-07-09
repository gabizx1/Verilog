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

-- DATE "07/09/2024 05:54:38"

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

ENTITY 	RegDesloc IS
    PORT (
	q : OUT std_logic_vector(3 DOWNTO 0);
	d : IN std_logic_vector(3 DOWNTO 0);
	clk : IN std_logic;
	clr : IN std_logic;
	ld : IN std_logic;
	esq : IN std_logic;
	dir : IN std_logic
	);
END RegDesloc;

-- Design Ports Information
-- q[0]	=>  Location: PIN_AD10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- q[1]	=>  Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- q[2]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- q[3]	=>  Location: PIN_AC10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- d[0]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ld	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clr	=>  Location: PIN_C3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- dir	=>  Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- esq	=>  Location: PIN_AF9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- d[1]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- d[2]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- d[3]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF RegDesloc IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_q : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_d : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_clk : std_logic;
SIGNAL ww_clr : std_logic;
SIGNAL ww_ld : std_logic;
SIGNAL ww_esq : std_logic;
SIGNAL ww_dir : std_logic;
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \q[2]~0_combout\ : std_logic;
SIGNAL \Mux3~6_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \clr~combout\ : std_logic;
SIGNAL \dir~combout\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \esq~combout\ : std_logic;
SIGNAL \ld~combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \q[2]~1_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \q[2]~reg0_regout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \Mux3~5_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \q[1]~reg0_regout\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \q[0]~reg0_regout\ : std_logic;
SIGNAL \q[3]~2_combout\ : std_logic;
SIGNAL \q[3]~3_combout\ : std_logic;
SIGNAL \q[3]~reg0_regout\ : std_logic;
SIGNAL \d~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_clk~clkctrl_outclk\ : std_logic;

BEGIN

q <= ww_q;
ww_d <= d;
ww_clk <= clk;
ww_clr <= clr;
ww_ld <= ld;
ww_esq <= esq;
ww_dir <= dir;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\ALT_INV_clk~clkctrl_outclk\ <= NOT \clk~clkctrl_outclk\;

-- Location: LCCOMB_X22_Y35_N10
\q[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \q[2]~0_combout\ = (\ld~combout\ & ((!\clr~combout\))) # (!\ld~combout\ & (\esq~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \esq~combout\,
	datac => \clr~combout\,
	datad => \ld~combout\,
	combout => \q[2]~0_combout\);

-- Location: LCCOMB_X22_Y35_N16
\Mux3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~6_combout\ = (!\clr~combout\ & \q[3]~reg0_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clr~combout\,
	datad => \q[3]~reg0_regout\,
	combout => \Mux3~6_combout\);

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d[3]~I\ : cycloneii_io
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
	padio => ww_d(3),
	combout => \d~combout\(3));

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: CLKCTRL_G3
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

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d[0]~I\ : cycloneii_io
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
	padio => ww_d(0),
	combout => \d~combout\(0));

-- Location: PIN_C3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clr~I\ : cycloneii_io
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
	padio => ww_clr,
	combout => \clr~combout\);

-- Location: PIN_U12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dir~I\ : cycloneii_io
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
	padio => ww_dir,
	combout => \dir~combout\);

-- Location: LCCOMB_X22_Y35_N30
\Mux3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~4_combout\ = (!\clr~combout\ & \q[1]~reg0_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clr~combout\,
	datad => \q[1]~reg0_regout\,
	combout => \Mux3~4_combout\);

-- Location: PIN_AF9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\esq~I\ : cycloneii_io
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
	padio => ww_esq,
	combout => \esq~combout\);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ld~I\ : cycloneii_io
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
	padio => ww_ld,
	combout => \ld~combout\);

-- Location: LCCOMB_X22_Y35_N24
\Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (!\esq~combout\ & !\ld~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \esq~combout\,
	datad => \ld~combout\,
	combout => \Mux3~0_combout\);

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d[2]~I\ : cycloneii_io
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
	padio => ww_d(2),
	combout => \d~combout\(2));

-- Location: LCCOMB_X22_Y35_N4
\q[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \q[2]~1_combout\ = (\ld~combout\) # ((\dir~combout\ & !\esq~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dir~combout\,
	datac => \esq~combout\,
	datad => \ld~combout\,
	combout => \q[2]~1_combout\);

-- Location: LCCOMB_X22_Y35_N2
\Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\q[2]~0_combout\ & ((\q[2]~1_combout\ & (\d~combout\(2))) # (!\q[2]~1_combout\ & ((\Mux3~4_combout\))))) # (!\q[2]~0_combout\ & (((!\q[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[2]~0_combout\,
	datab => \d~combout\(2),
	datac => \q[2]~1_combout\,
	datad => \Mux3~4_combout\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X22_Y35_N12
\Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\Mux3~0_combout\ & ((\Mux1~0_combout\ & ((\Mux3~3_combout\))) # (!\Mux1~0_combout\ & (\Mux3~6_combout\)))) # (!\Mux3~0_combout\ & (((\Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~6_combout\,
	datab => \Mux3~0_combout\,
	datac => \Mux3~3_combout\,
	datad => \Mux1~0_combout\,
	combout => \Mux1~1_combout\);

-- Location: LCFF_X22_Y35_N13
\q[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \Mux1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \q[2]~reg0_regout\);

-- Location: LCCOMB_X22_Y35_N20
\Mux3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (!\clr~combout\ & \q[2]~reg0_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clr~combout\,
	datad => \q[2]~reg0_regout\,
	combout => \Mux3~3_combout\);

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\d[1]~I\ : cycloneii_io
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
	padio => ww_d(1),
	combout => \d~combout\(1));

-- Location: LCCOMB_X22_Y35_N0
\Mux3~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~5_combout\ = (!\clr~combout\ & \q[0]~reg0_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clr~combout\,
	datac => \q[0]~reg0_regout\,
	combout => \Mux3~5_combout\);

-- Location: LCCOMB_X22_Y35_N6
\Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\q[2]~0_combout\ & ((\q[2]~1_combout\ & (\d~combout\(1))) # (!\q[2]~1_combout\ & ((\Mux3~5_combout\))))) # (!\q[2]~0_combout\ & (((!\q[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[2]~0_combout\,
	datab => \d~combout\(1),
	datac => \q[2]~1_combout\,
	datad => \Mux3~5_combout\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X22_Y35_N18
\Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\Mux3~0_combout\ & ((\Mux2~0_combout\ & (\Mux3~4_combout\)) # (!\Mux2~0_combout\ & ((\Mux3~3_combout\))))) # (!\Mux3~0_combout\ & (((\Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~0_combout\,
	datab => \Mux3~4_combout\,
	datac => \Mux3~3_combout\,
	datad => \Mux2~0_combout\,
	combout => \Mux2~1_combout\);

-- Location: LCFF_X22_Y35_N19
\q[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \q[1]~reg0_regout\);

-- Location: LCCOMB_X22_Y35_N26
\Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\Mux3~0_combout\ & ((\dir~combout\ & ((\q[1]~reg0_regout\))) # (!\dir~combout\ & (\q[0]~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~0_combout\,
	datab => \dir~combout\,
	datac => \q[0]~reg0_regout\,
	datad => \q[1]~reg0_regout\,
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X22_Y35_N8
\Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (!\clr~combout\ & ((\Mux3~1_combout\) # ((\ld~combout\ & \d~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ld~combout\,
	datab => \d~combout\(0),
	datac => \clr~combout\,
	datad => \Mux3~1_combout\,
	combout => \Mux3~2_combout\);

-- Location: LCFF_X22_Y35_N9
\q[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \Mux3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \q[0]~reg0_regout\);

-- Location: LCCOMB_X22_Y35_N28
\q[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \q[3]~2_combout\ = (\esq~combout\ & (((\q[2]~reg0_regout\)))) # (!\esq~combout\ & (\q[3]~reg0_regout\ & (!\dir~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \esq~combout\,
	datab => \q[3]~reg0_regout\,
	datac => \dir~combout\,
	datad => \q[2]~reg0_regout\,
	combout => \q[3]~2_combout\);

-- Location: LCCOMB_X22_Y35_N22
\q[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \q[3]~3_combout\ = (!\clr~combout\ & ((\ld~combout\ & (\d~combout\(3))) # (!\ld~combout\ & ((\q[3]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d~combout\(3),
	datab => \ld~combout\,
	datac => \clr~combout\,
	datad => \q[3]~2_combout\,
	combout => \q[3]~3_combout\);

-- Location: LCFF_X22_Y35_N23
\q[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clk~clkctrl_outclk\,
	datain => \q[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \q[3]~reg0_regout\);

-- Location: PIN_AD10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\q[0]~I\ : cycloneii_io
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
	datain => \q[0]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_q(0));

-- Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\q[1]~I\ : cycloneii_io
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
	datain => \q[1]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_q(1));

-- Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\q[2]~I\ : cycloneii_io
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
	datain => \q[2]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_q(2));

-- Location: PIN_AC10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\q[3]~I\ : cycloneii_io
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
	datain => \q[3]~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_q(3));
END structure;


