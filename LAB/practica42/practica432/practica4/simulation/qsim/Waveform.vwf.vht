-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "03/24/2023 15:41:39"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Practica4
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Practica4_vhd_vec_tst IS
END Practica4_vhd_vec_tst;
ARCHITECTURE Practica4_arch OF Practica4_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL AUX : STD_LOGIC;
SIGNAL CLK : STD_LOGIC;
SIGNAL edoPresente : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL liga : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL prueba : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL RESET : STD_LOGIC;
SIGNAL Salida : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL W : STD_LOGIC;
SIGNAL X : STD_LOGIC;
SIGNAL Y : STD_LOGIC;
SIGNAL Z : STD_LOGIC;
COMPONENT Practica4
	PORT (
	AUX : IN STD_LOGIC;
	CLK : IN STD_LOGIC;
	edoPresente : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	liga : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	prueba : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	RESET : IN STD_LOGIC;
	Salida : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	W : IN STD_LOGIC;
	X : IN STD_LOGIC;
	Y : IN STD_LOGIC;
	Z : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Practica4
	PORT MAP (
-- list connections between master ports and signals
	AUX => AUX,
	CLK => CLK,
	edoPresente => edoPresente,
	liga => liga,
	prueba => prueba,
	RESET => RESET,
	Salida => Salida,
	W => W,
	X => X,
	Y => Y,
	Z => Z
	);

-- AUX
t_prcs_AUX: PROCESS
BEGIN
	AUX <= '0';
WAIT;
END PROCESS t_prcs_AUX;

-- CLK
t_prcs_CLK: PROCESS
BEGIN
LOOP
	CLK <= '0';
	WAIT FOR 5000 ps;
	CLK <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK;

-- RESET
t_prcs_RESET: PROCESS
BEGIN
	RESET <= '0';
WAIT;
END PROCESS t_prcs_RESET;

-- W
t_prcs_W: PROCESS
BEGIN
	W <= '0';
WAIT;
END PROCESS t_prcs_W;

-- X
t_prcs_X: PROCESS
BEGIN
	X <= '0';
WAIT;
END PROCESS t_prcs_X;

-- Y
t_prcs_Y: PROCESS
BEGIN
	Y <= '0';
WAIT;
END PROCESS t_prcs_Y;

-- Z
t_prcs_Z: PROCESS
BEGIN
	Z <= '0';
WAIT;
END PROCESS t_prcs_Z;
END Practica4_arch;
