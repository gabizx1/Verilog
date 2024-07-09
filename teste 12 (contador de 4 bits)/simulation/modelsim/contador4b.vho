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

-- DATE "07/08/2024 05:50:23"

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

ENTITY 	contador4b IS
    PORT (
	q : OUT std_logic_vector(3 DOWNTO 0);
	clk : IN std_logic
	);
END contador4b;

-- Design Ports Information
-- q[0]	=>  Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- q[1]	=>  Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- q[2]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- q[3]	=>  Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF contador4b IS
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
SIGNAL ww_clk : std_logic;
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \q[0]~3_combout\ : std_logic;
SIGNAL \q[0]~reg0_regout\ : std_logic;
SIGNAL \q[1]~0_combout\ : std_logic;
SIGNAL \q[1]~reg0_regout\ : std_logic;
SIGNAL \q[2]~1_combout\ : std_logic;
SIGNAL \q[2]~reg0_regout\ : std_logic;
SIGNAL \q[3]~2_combout\ : std_logic;
SIGNAL \q[3]~reg0_regout\ : std_logic;

BEGIN

q <= ww_q;
ww_clk <= clk;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

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

-- Location: LCCOMB_X1_Y23_N0
\q[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \q[0]~3_combout\ = !\q[0]~reg0_regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \q[0]~reg0_regout\,
	combout => \q[0]~3_combout\);

-- Location: LCFF_X1_Y23_N1
\q[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \q[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \q[0]~reg0_regout\);

-- Location: LCCOMB_X1_Y23_N26
\q[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \q[1]~0_combout\ = \q[1]~reg0_regout\ $ (\q[0]~reg0_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \q[1]~reg0_regout\,
	datad => \q[0]~reg0_regout\,
	combout => \q[1]~0_combout\);

-- Location: LCFF_X1_Y23_N27
\q[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \q[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \q[1]~reg0_regout\);

-- Location: LCCOMB_X1_Y23_N12
\q[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \q[2]~1_combout\ = \q[2]~reg0_regout\ $ (((\q[0]~reg0_regout\ & \q[1]~reg0_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \q[0]~reg0_regout\,
	datac => \q[2]~reg0_regout\,
	datad => \q[1]~reg0_regout\,
	combout => \q[2]~1_combout\);

-- Location: LCFF_X1_Y23_N13
\q[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \q[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \q[2]~reg0_regout\);

-- Location: LCCOMB_X1_Y23_N22
\q[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \q[3]~2_combout\ = \q[3]~reg0_regout\ $ (((\q[2]~reg0_regout\ & (\q[0]~reg0_regout\ & \q[1]~reg0_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \q[2]~reg0_regout\,
	datab => \q[0]~reg0_regout\,
	datac => \q[3]~reg0_regout\,
	datad => \q[1]~reg0_regout\,
	combout => \q[3]~2_combout\);

-- Location: LCFF_X1_Y23_N23
\q[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \q[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \q[3]~reg0_regout\);

-- Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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


