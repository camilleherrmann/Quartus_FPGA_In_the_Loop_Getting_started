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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "12/11/2022 19:36:31"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	in_adapt IS
    PORT (
	clk_a : IN std_logic;
	clk_b : IN std_logic;
	enb : IN std_logic;
	reset : IN std_logic;
	din : IN std_logic_vector(31 DOWNTO 0);
	ast_source_ready : IN std_logic;
	ast_source_channel : IN std_logic_vector(5 DOWNTO 0);
	ast_sink_valid : BUFFER std_logic;
	ast_sink_sop : BUFFER std_logic;
	ast_sink_eop : BUFFER std_logic;
	ast_sink_ready : BUFFER std_logic;
	ast_sink_data : BUFFER std_logic_vector(31 DOWNTO 0);
	ast_sink_channel : BUFFER std_logic_vector(5 DOWNTO 0)
	);
END in_adapt;

-- Design Ports Information
-- ast_sink_valid	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_sop	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_eop	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_ready	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[0]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[1]	=>  Location: PIN_Y15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[2]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[3]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[4]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[5]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[6]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[7]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[8]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[9]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[10]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[11]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[12]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[13]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[14]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[15]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[16]	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[17]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[18]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[19]	=>  Location: PIN_Y9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[20]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[21]	=>  Location: PIN_Y11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[22]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[23]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[24]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[25]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[26]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[27]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[28]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[29]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[30]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_data[31]	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_channel[0]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_channel[1]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_channel[2]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_channel[3]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_channel[4]	=>  Location: PIN_U12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_sink_channel[5]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enb	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_b	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_ready	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_channel[0]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_channel[1]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_channel[2]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_channel[3]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_channel[4]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ast_source_channel[5]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_a	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[0]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[1]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[2]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[3]	=>  Location: PIN_AB18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[4]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[5]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[6]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[7]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[8]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[9]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[10]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[11]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[12]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[13]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[14]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[15]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[16]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[17]	=>  Location: PIN_U11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[18]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[19]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[20]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[21]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[22]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[23]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[24]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[25]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[26]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[27]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[28]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[29]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[30]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din[31]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF in_adapt IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk_a : std_logic;
SIGNAL ww_clk_b : std_logic;
SIGNAL ww_enb : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_din : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_ast_source_ready : std_logic;
SIGNAL ww_ast_source_channel : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_ast_sink_valid : std_logic;
SIGNAL ww_ast_sink_sop : std_logic;
SIGNAL ww_ast_sink_eop : std_logic;
SIGNAL ww_ast_sink_ready : std_logic;
SIGNAL ww_ast_sink_data : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_ast_sink_channel : std_logic_vector(5 DOWNTO 0);
SIGNAL \ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ram|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ram|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ram|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ram|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ram|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ram|altsyncram_component|auto_generated|ram_block1a2_PORTBDATAIN_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ram|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ram|altsyncram_component|auto_generated|ram_block1a2_PORTBADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ram|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ram|altsyncram_component|auto_generated|ram_block1a2_PORTBDATAOUT_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ram|altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ram|altsyncram_component|auto_generated|ram_block1a12_PORTBDATAIN_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ram|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ram|altsyncram_component|auto_generated|ram_block1a12_PORTBADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ram|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ram|altsyncram_component|auto_generated|ram_block1a12_PORTBDATAOUT_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ram|altsyncram_component|auto_generated|ram_block1a22_PORTADATAIN_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ram|altsyncram_component|auto_generated|ram_block1a22_PORTBDATAIN_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ram|altsyncram_component|auto_generated|ram_block1a22_PORTAADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ram|altsyncram_component|auto_generated|ram_block1a22_PORTBADDR_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ram|altsyncram_component|auto_generated|ram_block1a22_PORTADATAOUT_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ram|altsyncram_component|auto_generated|ram_block1a22_PORTBDATAOUT_bus\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \clk_b~input_o\ : std_logic;
SIGNAL \clk_b~inputCLKENA0_outclk\ : std_logic;
SIGNAL \enb~input_o\ : std_logic;
SIGNAL \output|addr[0]~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \ast_source_ready~input_o\ : std_logic;
SIGNAL \clk_a~input_o\ : std_logic;
SIGNAL \clk_a~inputCLKENA0_outclk\ : std_logic;
SIGNAL \entry|u_data_addr:curr_head[0]~0_combout\ : std_logic;
SIGNAL \entry|u_data_addr~0_combout\ : std_logic;
SIGNAL \entry|u_data_addr:curr_head[0]~q\ : std_logic;
SIGNAL \entry|Add0~5_sumout\ : std_logic;
SIGNAL \entry|u_data_addr:curr_head[1]~q\ : std_logic;
SIGNAL \entry|Add0~6\ : std_logic;
SIGNAL \entry|Add0~9_sumout\ : std_logic;
SIGNAL \entry|u_data_addr:curr_head[2]~q\ : std_logic;
SIGNAL \entry|Add0~10\ : std_logic;
SIGNAL \entry|Add0~13_sumout\ : std_logic;
SIGNAL \entry|u_data_addr:curr_head[3]~q\ : std_logic;
SIGNAL \entry|Add0~14\ : std_logic;
SIGNAL \entry|Add0~17_sumout\ : std_logic;
SIGNAL \entry|u_data_addr:curr_head[4]~q\ : std_logic;
SIGNAL \entry|Add0~18\ : std_logic;
SIGNAL \entry|Add0~21_sumout\ : std_logic;
SIGNAL \entry|u_data_addr:curr_head[5]~q\ : std_logic;
SIGNAL \entry|Add0~22\ : std_logic;
SIGNAL \entry|Add0~1_sumout\ : std_logic;
SIGNAL \entry|u_data_addr:curr_head[6]~q\ : std_logic;
SIGNAL \entry|Add0~2\ : std_logic;
SIGNAL \entry|Add0~25_sumout\ : std_logic;
SIGNAL \entry|u_data_addr:curr_head[7]~q\ : std_logic;
SIGNAL \entry|Add0~26\ : std_logic;
SIGNAL \entry|Add0~29_sumout\ : std_logic;
SIGNAL \entry|u_data_addr:curr_head[8]~q\ : std_logic;
SIGNAL \entry|Add0~30\ : std_logic;
SIGNAL \entry|Add0~33_sumout\ : std_logic;
SIGNAL \entry|u_data_addr:curr_head[9]~q\ : std_logic;
SIGNAL \entry|Equal0~0_combout\ : std_logic;
SIGNAL \entry|addr[2]~feeder_combout\ : std_logic;
SIGNAL \entry|Equal0~1_combout\ : std_logic;
SIGNAL \entry|Equal0~2_combout\ : std_logic;
SIGNAL \entry|s_wren~q\ : std_logic;
SIGNAL \din[0]~input_o\ : std_logic;
SIGNAL \entry|data_a[0]~feeder_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \output|Add0~33_sumout\ : std_logic;
SIGNAL \output|Add0~6\ : std_logic;
SIGNAL \output|Add0~1_sumout\ : std_logic;
SIGNAL \output|Add0~2\ : std_logic;
SIGNAL \output|Add0~21_sumout\ : std_logic;
SIGNAL \output|Add0~22\ : std_logic;
SIGNAL \output|Add0~17_sumout\ : std_logic;
SIGNAL \output|Add0~18\ : std_logic;
SIGNAL \output|Add0~13_sumout\ : std_logic;
SIGNAL \output|Add0~14\ : std_logic;
SIGNAL \output|Add0~9_sumout\ : std_logic;
SIGNAL \din[1]~input_o\ : std_logic;
SIGNAL \entry|data_a[1]~feeder_combout\ : std_logic;
SIGNAL \output|out_ready~1_combout\ : std_logic;
SIGNAL \output|out_ready~2_combout\ : std_logic;
SIGNAL \output|out_ready~0_combout\ : std_logic;
SIGNAL \output|state~0_combout\ : std_logic;
SIGNAL \output|state~q\ : std_logic;
SIGNAL \output|ast_sink_data[0]~0_combout\ : std_logic;
SIGNAL \output|Add0~34\ : std_logic;
SIGNAL \output|Add0~29_sumout\ : std_logic;
SIGNAL \output|Add0~30\ : std_logic;
SIGNAL \output|Add0~25_sumout\ : std_logic;
SIGNAL \output|Add0~26\ : std_logic;
SIGNAL \output|Add0~5_sumout\ : std_logic;
SIGNAL \output|Equal0~0_combout\ : std_logic;
SIGNAL \output|Equal0~1_combout\ : std_logic;
SIGNAL \output|u_ast_valid~0_combout\ : std_logic;
SIGNAL \output|s_rden~q\ : std_logic;
SIGNAL \output|s_sop~0_combout\ : std_logic;
SIGNAL \output|s_sop~q\ : std_logic;
SIGNAL \output|out_ready~3_combout\ : std_logic;
SIGNAL \output|s_eop~q\ : std_logic;
SIGNAL \output|out_ready~4_combout\ : std_logic;
SIGNAL \output|out_ready~q\ : std_logic;
SIGNAL \output|ast_sink_data[0]~1_combout\ : std_logic;
SIGNAL \output|ast_sink_data[1]~feeder_combout\ : std_logic;
SIGNAL \din[2]~input_o\ : std_logic;
SIGNAL \din[3]~input_o\ : std_logic;
SIGNAL \entry|data_a[3]~feeder_combout\ : std_logic;
SIGNAL \din[4]~input_o\ : std_logic;
SIGNAL \entry|data_a[4]~feeder_combout\ : std_logic;
SIGNAL \din[5]~input_o\ : std_logic;
SIGNAL \din[6]~input_o\ : std_logic;
SIGNAL \entry|data_a[6]~feeder_combout\ : std_logic;
SIGNAL \din[7]~input_o\ : std_logic;
SIGNAL \entry|data_a[7]~feeder_combout\ : std_logic;
SIGNAL \din[8]~input_o\ : std_logic;
SIGNAL \entry|data_a[8]~feeder_combout\ : std_logic;
SIGNAL \din[9]~input_o\ : std_logic;
SIGNAL \entry|data_a[9]~feeder_combout\ : std_logic;
SIGNAL \din[10]~input_o\ : std_logic;
SIGNAL \entry|data_a[10]~feeder_combout\ : std_logic;
SIGNAL \din[11]~input_o\ : std_logic;
SIGNAL \output|ast_sink_data[2]~feeder_combout\ : std_logic;
SIGNAL \output|ast_sink_data[3]~feeder_combout\ : std_logic;
SIGNAL \output|ast_sink_data[6]~feeder_combout\ : std_logic;
SIGNAL \output|ast_sink_data[7]~feeder_combout\ : std_logic;
SIGNAL \output|ast_sink_data[10]~feeder_combout\ : std_logic;
SIGNAL \output|ast_sink_data[11]~feeder_combout\ : std_logic;
SIGNAL \din[12]~input_o\ : std_logic;
SIGNAL \entry|data_a[12]~feeder_combout\ : std_logic;
SIGNAL \din[13]~input_o\ : std_logic;
SIGNAL \din[14]~input_o\ : std_logic;
SIGNAL \din[15]~input_o\ : std_logic;
SIGNAL \entry|data_a[15]~feeder_combout\ : std_logic;
SIGNAL \din[16]~input_o\ : std_logic;
SIGNAL \entry|data_a[16]~feeder_combout\ : std_logic;
SIGNAL \din[17]~input_o\ : std_logic;
SIGNAL \din[18]~input_o\ : std_logic;
SIGNAL \entry|data_a[18]~feeder_combout\ : std_logic;
SIGNAL \din[19]~input_o\ : std_logic;
SIGNAL \entry|data_a[19]~feeder_combout\ : std_logic;
SIGNAL \din[20]~input_o\ : std_logic;
SIGNAL \entry|data_a[20]~feeder_combout\ : std_logic;
SIGNAL \din[21]~input_o\ : std_logic;
SIGNAL \output|ast_sink_data[13]~feeder_combout\ : std_logic;
SIGNAL \output|ast_sink_data[16]~feeder_combout\ : std_logic;
SIGNAL \output|ast_sink_data[18]~feeder_combout\ : std_logic;
SIGNAL \output|ast_sink_data[19]~feeder_combout\ : std_logic;
SIGNAL \output|ast_sink_data[20]~feeder_combout\ : std_logic;
SIGNAL \output|ast_sink_data[21]~feeder_combout\ : std_logic;
SIGNAL \din[22]~input_o\ : std_logic;
SIGNAL \din[23]~input_o\ : std_logic;
SIGNAL \entry|data_a[23]~feeder_combout\ : std_logic;
SIGNAL \din[24]~input_o\ : std_logic;
SIGNAL \din[25]~input_o\ : std_logic;
SIGNAL \din[26]~input_o\ : std_logic;
SIGNAL \entry|data_a[26]~feeder_combout\ : std_logic;
SIGNAL \din[27]~input_o\ : std_logic;
SIGNAL \din[28]~input_o\ : std_logic;
SIGNAL \entry|data_a[28]~feeder_combout\ : std_logic;
SIGNAL \din[29]~input_o\ : std_logic;
SIGNAL \din[30]~input_o\ : std_logic;
SIGNAL \din[31]~input_o\ : std_logic;
SIGNAL \output|ast_sink_data[22]~feeder_combout\ : std_logic;
SIGNAL \output|ast_sink_data[24]~feeder_combout\ : std_logic;
SIGNAL \output|ast_sink_data[30]~feeder_combout\ : std_logic;
SIGNAL \output|ast_sink_data[31]~feeder_combout\ : std_logic;
SIGNAL \ast_source_channel[0]~input_o\ : std_logic;
SIGNAL \ast_source_channel[1]~input_o\ : std_logic;
SIGNAL \ast_source_channel[2]~input_o\ : std_logic;
SIGNAL \output|s_channel[2]~feeder_combout\ : std_logic;
SIGNAL \ast_source_channel[3]~input_o\ : std_logic;
SIGNAL \output|s_channel[3]~feeder_combout\ : std_logic;
SIGNAL \ast_source_channel[4]~input_o\ : std_logic;
SIGNAL \output|s_channel[4]~feeder_combout\ : std_logic;
SIGNAL \ast_source_channel[5]~input_o\ : std_logic;
SIGNAL \output|s_channel[5]~feeder_combout\ : std_logic;
SIGNAL \ram|altsyncram_component|auto_generated|q_a\ : std_logic_vector(39 DOWNTO 0);
SIGNAL \ram|altsyncram_component|auto_generated|q_b\ : std_logic_vector(39 DOWNTO 0);
SIGNAL \output|ast_sink_data\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \output|s_channel\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \output|addr\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \entry|addr\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \entry|data_a\ : std_logic_vector(39 DOWNTO 0);
SIGNAL \output|ALT_INV_s_sop~q\ : std_logic;
SIGNAL \output|ALT_INV_s_rden~q\ : std_logic;
SIGNAL \ram|altsyncram_component|auto_generated|ALT_INV_q_b\ : std_logic_vector(39 DOWNTO 1);
SIGNAL \ALT_INV_din[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_din[26]~input_o\ : std_logic;
SIGNAL \ALT_INV_din[23]~input_o\ : std_logic;
SIGNAL \ALT_INV_din[20]~input_o\ : std_logic;
SIGNAL \ALT_INV_din[19]~input_o\ : std_logic;
SIGNAL \ALT_INV_din[18]~input_o\ : std_logic;
SIGNAL \ALT_INV_din[16]~input_o\ : std_logic;
SIGNAL \ALT_INV_din[15]~input_o\ : std_logic;
SIGNAL \ALT_INV_din[12]~input_o\ : std_logic;
SIGNAL \ALT_INV_din[10]~input_o\ : std_logic;
SIGNAL \ALT_INV_din[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_din[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_din[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_din[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_din[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_din[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_din[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_din[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_ast_source_channel[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_ast_source_channel[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_ast_source_channel[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_ast_source_channel[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_ast_source_ready~input_o\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_enb~input_o\ : std_logic;
SIGNAL \entry|ALT_INV_u_data_addr:curr_head[9]~q\ : std_logic;
SIGNAL \entry|ALT_INV_u_data_addr:curr_head[8]~q\ : std_logic;
SIGNAL \entry|ALT_INV_u_data_addr:curr_head[7]~q\ : std_logic;
SIGNAL \entry|ALT_INV_u_data_addr:curr_head[5]~q\ : std_logic;
SIGNAL \entry|ALT_INV_u_data_addr:curr_head[4]~q\ : std_logic;
SIGNAL \entry|ALT_INV_u_data_addr:curr_head[3]~q\ : std_logic;
SIGNAL \entry|ALT_INV_u_data_addr:curr_head[2]~q\ : std_logic;
SIGNAL \entry|ALT_INV_u_data_addr:curr_head[1]~q\ : std_logic;
SIGNAL \entry|ALT_INV_u_data_addr:curr_head[0]~q\ : std_logic;
SIGNAL \entry|ALT_INV_u_data_addr:curr_head[6]~q\ : std_logic;
SIGNAL \entry|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \entry|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \entry|ALT_INV_addr\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \entry|ALT_INV_s_wren~q\ : std_logic;
SIGNAL \output|ALT_INV_ast_sink_data[0]~0_combout\ : std_logic;
SIGNAL \output|ALT_INV_out_ready~2_combout\ : std_logic;
SIGNAL \output|ALT_INV_out_ready~1_combout\ : std_logic;
SIGNAL \output|ALT_INV_out_ready~0_combout\ : std_logic;
SIGNAL \output|ALT_INV_state~q\ : std_logic;
SIGNAL \output|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \output|ALT_INV_addr\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \output|ALT_INV_Equal0~0_combout\ : std_logic;

BEGIN

ww_clk_a <= clk_a;
ww_clk_b <= clk_b;
ww_enb <= enb;
ww_reset <= reset;
ww_din <= din;
ww_ast_source_ready <= ast_source_ready;
ww_ast_source_channel <= ast_source_channel;
ast_sink_valid <= ww_ast_sink_valid;
ast_sink_sop <= ww_ast_sink_sop;
ast_sink_eop <= ww_ast_sink_eop;
ast_sink_ready <= ww_ast_sink_ready;
ast_sink_data <= ww_ast_sink_data;
ast_sink_channel <= ww_ast_sink_channel;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\entry|addr\(7) & \entry|addr\(6) & \entry|addr\(5) & \entry|addr\(4) & \entry|addr\(3) & \entry|addr\(2) & \entry|addr\(1) & \entry|addr\(0) & \entry|data_a\(1)
& \entry|data_a\(0));

\ram|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\ram|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\entry|addr\(9) & \entry|addr\(8) & \entry|addr\(7) & \entry|addr\(6) & \entry|addr\(5) & \entry|addr\(4) & \entry|addr\(3) & \entry|addr\(2) & \entry|addr\(1) & 
\entry|addr\(0));

\ram|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\output|addr\(9) & \output|addr\(8) & \output|addr\(7) & \output|addr\(6) & \output|addr\(5) & \output|addr\(4) & \output|addr\(3) & \output|addr\(2) & 
\output|addr\(1) & \output|addr\(0));

\ram|altsyncram_component|auto_generated|q_a\(0) <= \ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\ram|altsyncram_component|auto_generated|q_a\(1) <= \ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\ram|altsyncram_component|auto_generated|q_a\(32) <= \ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\ram|altsyncram_component|auto_generated|q_a\(33) <= \ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\ram|altsyncram_component|auto_generated|q_a\(34) <= \ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\ram|altsyncram_component|auto_generated|q_a\(35) <= \ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\ram|altsyncram_component|auto_generated|q_a\(36) <= \ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\ram|altsyncram_component|auto_generated|q_a\(37) <= \ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\ram|altsyncram_component|auto_generated|q_a\(38) <= \ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\ram|altsyncram_component|auto_generated|q_a\(39) <= \ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);

\ram|altsyncram_component|auto_generated|q_b\(0) <= \ram|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\ram|altsyncram_component|auto_generated|q_b\(1) <= \ram|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\ram|altsyncram_component|auto_generated|q_b\(32) <= \ram|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\ram|altsyncram_component|auto_generated|q_b\(33) <= \ram|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\ram|altsyncram_component|auto_generated|q_b\(34) <= \ram|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\ram|altsyncram_component|auto_generated|q_b\(35) <= \ram|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\ram|altsyncram_component|auto_generated|q_b\(36) <= \ram|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\ram|altsyncram_component|auto_generated|q_b\(37) <= \ram|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);
\ram|altsyncram_component|auto_generated|q_b\(38) <= \ram|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(8);
\ram|altsyncram_component|auto_generated|q_b\(39) <= \ram|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(9);

\ram|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\ <= (\entry|data_a\(11) & \entry|data_a\(10) & \entry|data_a\(9) & \entry|data_a\(8) & \entry|data_a\(7) & \entry|data_a\(6) & \entry|data_a\(5) & \entry|data_a\(4) & 
\entry|data_a\(3) & \entry|data_a\(2));

\ram|altsyncram_component|auto_generated|ram_block1a2_PORTBDATAIN_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\ram|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\ <= (\entry|addr\(9) & \entry|addr\(8) & \entry|addr\(7) & \entry|addr\(6) & \entry|addr\(5) & \entry|addr\(4) & \entry|addr\(3) & \entry|addr\(2) & \entry|addr\(1) & 
\entry|addr\(0));

\ram|altsyncram_component|auto_generated|ram_block1a2_PORTBADDR_bus\ <= (\output|addr\(9) & \output|addr\(8) & \output|addr\(7) & \output|addr\(6) & \output|addr\(5) & \output|addr\(4) & \output|addr\(3) & \output|addr\(2) & 
\output|addr\(1) & \output|addr\(0));

\ram|altsyncram_component|auto_generated|q_a\(2) <= \ram|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(0);
\ram|altsyncram_component|auto_generated|q_a\(3) <= \ram|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(1);
\ram|altsyncram_component|auto_generated|q_a\(4) <= \ram|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(2);
\ram|altsyncram_component|auto_generated|q_a\(5) <= \ram|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(3);
\ram|altsyncram_component|auto_generated|q_a\(6) <= \ram|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(4);
\ram|altsyncram_component|auto_generated|q_a\(7) <= \ram|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(5);
\ram|altsyncram_component|auto_generated|q_a\(8) <= \ram|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(6);
\ram|altsyncram_component|auto_generated|q_a\(9) <= \ram|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(7);
\ram|altsyncram_component|auto_generated|q_a\(10) <= \ram|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(8);
\ram|altsyncram_component|auto_generated|q_a\(11) <= \ram|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\(9);

\ram|altsyncram_component|auto_generated|q_b\(2) <= \ram|altsyncram_component|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(0);
\ram|altsyncram_component|auto_generated|q_b\(3) <= \ram|altsyncram_component|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(1);
\ram|altsyncram_component|auto_generated|q_b\(4) <= \ram|altsyncram_component|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(2);
\ram|altsyncram_component|auto_generated|q_b\(5) <= \ram|altsyncram_component|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(3);
\ram|altsyncram_component|auto_generated|q_b\(6) <= \ram|altsyncram_component|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(4);
\ram|altsyncram_component|auto_generated|q_b\(7) <= \ram|altsyncram_component|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(5);
\ram|altsyncram_component|auto_generated|q_b\(8) <= \ram|altsyncram_component|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(6);
\ram|altsyncram_component|auto_generated|q_b\(9) <= \ram|altsyncram_component|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(7);
\ram|altsyncram_component|auto_generated|q_b\(10) <= \ram|altsyncram_component|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(8);
\ram|altsyncram_component|auto_generated|q_b\(11) <= \ram|altsyncram_component|auto_generated|ram_block1a2_PORTBDATAOUT_bus\(9);

\ram|altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\ <= (\entry|data_a\(21) & \entry|data_a\(20) & \entry|data_a\(19) & \entry|data_a\(18) & \entry|data_a\(17) & \entry|data_a\(16) & \entry|data_a\(15) & \entry|data_a\(14) & 
\entry|data_a\(13) & \entry|data_a\(12));

\ram|altsyncram_component|auto_generated|ram_block1a12_PORTBDATAIN_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\ram|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\ <= (\entry|addr\(9) & \entry|addr\(8) & \entry|addr\(7) & \entry|addr\(6) & \entry|addr\(5) & \entry|addr\(4) & \entry|addr\(3) & \entry|addr\(2) & \entry|addr\(1) & 
\entry|addr\(0));

\ram|altsyncram_component|auto_generated|ram_block1a12_PORTBADDR_bus\ <= (\output|addr\(9) & \output|addr\(8) & \output|addr\(7) & \output|addr\(6) & \output|addr\(5) & \output|addr\(4) & \output|addr\(3) & \output|addr\(2) & 
\output|addr\(1) & \output|addr\(0));

\ram|altsyncram_component|auto_generated|q_a\(12) <= \ram|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(0);
\ram|altsyncram_component|auto_generated|q_a\(13) <= \ram|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(1);
\ram|altsyncram_component|auto_generated|q_a\(14) <= \ram|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(2);
\ram|altsyncram_component|auto_generated|q_a\(15) <= \ram|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(3);
\ram|altsyncram_component|auto_generated|q_a\(16) <= \ram|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(4);
\ram|altsyncram_component|auto_generated|q_a\(17) <= \ram|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(5);
\ram|altsyncram_component|auto_generated|q_a\(18) <= \ram|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(6);
\ram|altsyncram_component|auto_generated|q_a\(19) <= \ram|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(7);
\ram|altsyncram_component|auto_generated|q_a\(20) <= \ram|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(8);
\ram|altsyncram_component|auto_generated|q_a\(21) <= \ram|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\(9);

\ram|altsyncram_component|auto_generated|q_b\(12) <= \ram|altsyncram_component|auto_generated|ram_block1a12_PORTBDATAOUT_bus\(0);
\ram|altsyncram_component|auto_generated|q_b\(13) <= \ram|altsyncram_component|auto_generated|ram_block1a12_PORTBDATAOUT_bus\(1);
\ram|altsyncram_component|auto_generated|q_b\(14) <= \ram|altsyncram_component|auto_generated|ram_block1a12_PORTBDATAOUT_bus\(2);
\ram|altsyncram_component|auto_generated|q_b\(15) <= \ram|altsyncram_component|auto_generated|ram_block1a12_PORTBDATAOUT_bus\(3);
\ram|altsyncram_component|auto_generated|q_b\(16) <= \ram|altsyncram_component|auto_generated|ram_block1a12_PORTBDATAOUT_bus\(4);
\ram|altsyncram_component|auto_generated|q_b\(17) <= \ram|altsyncram_component|auto_generated|ram_block1a12_PORTBDATAOUT_bus\(5);
\ram|altsyncram_component|auto_generated|q_b\(18) <= \ram|altsyncram_component|auto_generated|ram_block1a12_PORTBDATAOUT_bus\(6);
\ram|altsyncram_component|auto_generated|q_b\(19) <= \ram|altsyncram_component|auto_generated|ram_block1a12_PORTBDATAOUT_bus\(7);
\ram|altsyncram_component|auto_generated|q_b\(20) <= \ram|altsyncram_component|auto_generated|ram_block1a12_PORTBDATAOUT_bus\(8);
\ram|altsyncram_component|auto_generated|q_b\(21) <= \ram|altsyncram_component|auto_generated|ram_block1a12_PORTBDATAOUT_bus\(9);

\ram|altsyncram_component|auto_generated|ram_block1a22_PORTADATAIN_bus\ <= (\entry|data_a\(31) & \entry|data_a\(30) & \entry|data_a\(29) & \entry|data_a\(28) & \entry|data_a\(27) & \entry|data_a\(26) & \entry|data_a\(25) & \entry|data_a\(24) & 
\entry|data_a\(23) & \entry|data_a\(22));

\ram|altsyncram_component|auto_generated|ram_block1a22_PORTBDATAIN_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\ram|altsyncram_component|auto_generated|ram_block1a22_PORTAADDR_bus\ <= (\entry|addr\(9) & \entry|addr\(8) & \entry|addr\(7) & \entry|addr\(6) & \entry|addr\(5) & \entry|addr\(4) & \entry|addr\(3) & \entry|addr\(2) & \entry|addr\(1) & 
\entry|addr\(0));

\ram|altsyncram_component|auto_generated|ram_block1a22_PORTBADDR_bus\ <= (\output|addr\(9) & \output|addr\(8) & \output|addr\(7) & \output|addr\(6) & \output|addr\(5) & \output|addr\(4) & \output|addr\(3) & \output|addr\(2) & 
\output|addr\(1) & \output|addr\(0));

\ram|altsyncram_component|auto_generated|q_a\(22) <= \ram|altsyncram_component|auto_generated|ram_block1a22_PORTADATAOUT_bus\(0);
\ram|altsyncram_component|auto_generated|q_a\(23) <= \ram|altsyncram_component|auto_generated|ram_block1a22_PORTADATAOUT_bus\(1);
\ram|altsyncram_component|auto_generated|q_a\(24) <= \ram|altsyncram_component|auto_generated|ram_block1a22_PORTADATAOUT_bus\(2);
\ram|altsyncram_component|auto_generated|q_a\(25) <= \ram|altsyncram_component|auto_generated|ram_block1a22_PORTADATAOUT_bus\(3);
\ram|altsyncram_component|auto_generated|q_a\(26) <= \ram|altsyncram_component|auto_generated|ram_block1a22_PORTADATAOUT_bus\(4);
\ram|altsyncram_component|auto_generated|q_a\(27) <= \ram|altsyncram_component|auto_generated|ram_block1a22_PORTADATAOUT_bus\(5);
\ram|altsyncram_component|auto_generated|q_a\(28) <= \ram|altsyncram_component|auto_generated|ram_block1a22_PORTADATAOUT_bus\(6);
\ram|altsyncram_component|auto_generated|q_a\(29) <= \ram|altsyncram_component|auto_generated|ram_block1a22_PORTADATAOUT_bus\(7);
\ram|altsyncram_component|auto_generated|q_a\(30) <= \ram|altsyncram_component|auto_generated|ram_block1a22_PORTADATAOUT_bus\(8);
\ram|altsyncram_component|auto_generated|q_a\(31) <= \ram|altsyncram_component|auto_generated|ram_block1a22_PORTADATAOUT_bus\(9);

\ram|altsyncram_component|auto_generated|q_b\(22) <= \ram|altsyncram_component|auto_generated|ram_block1a22_PORTBDATAOUT_bus\(0);
\ram|altsyncram_component|auto_generated|q_b\(23) <= \ram|altsyncram_component|auto_generated|ram_block1a22_PORTBDATAOUT_bus\(1);
\ram|altsyncram_component|auto_generated|q_b\(24) <= \ram|altsyncram_component|auto_generated|ram_block1a22_PORTBDATAOUT_bus\(2);
\ram|altsyncram_component|auto_generated|q_b\(25) <= \ram|altsyncram_component|auto_generated|ram_block1a22_PORTBDATAOUT_bus\(3);
\ram|altsyncram_component|auto_generated|q_b\(26) <= \ram|altsyncram_component|auto_generated|ram_block1a22_PORTBDATAOUT_bus\(4);
\ram|altsyncram_component|auto_generated|q_b\(27) <= \ram|altsyncram_component|auto_generated|ram_block1a22_PORTBDATAOUT_bus\(5);
\ram|altsyncram_component|auto_generated|q_b\(28) <= \ram|altsyncram_component|auto_generated|ram_block1a22_PORTBDATAOUT_bus\(6);
\ram|altsyncram_component|auto_generated|q_b\(29) <= \ram|altsyncram_component|auto_generated|ram_block1a22_PORTBDATAOUT_bus\(7);
\ram|altsyncram_component|auto_generated|q_b\(30) <= \ram|altsyncram_component|auto_generated|ram_block1a22_PORTBDATAOUT_bus\(8);
\ram|altsyncram_component|auto_generated|q_b\(31) <= \ram|altsyncram_component|auto_generated|ram_block1a22_PORTBDATAOUT_bus\(9);
\output|ALT_INV_s_sop~q\ <= NOT \output|s_sop~q\;
\output|ALT_INV_s_rden~q\ <= NOT \output|s_rden~q\;
\ram|altsyncram_component|auto_generated|ALT_INV_q_b\(24) <= NOT \ram|altsyncram_component|auto_generated|q_b\(24);
\ram|altsyncram_component|auto_generated|ALT_INV_q_b\(30) <= NOT \ram|altsyncram_component|auto_generated|q_b\(30);
\ram|altsyncram_component|auto_generated|ALT_INV_q_b\(31) <= NOT \ram|altsyncram_component|auto_generated|q_b\(31);
\ram|altsyncram_component|auto_generated|ALT_INV_q_b\(22) <= NOT \ram|altsyncram_component|auto_generated|q_b\(22);
\ram|altsyncram_component|auto_generated|ALT_INV_q_b\(13) <= NOT \ram|altsyncram_component|auto_generated|q_b\(13);
\ram|altsyncram_component|auto_generated|ALT_INV_q_b\(16) <= NOT \ram|altsyncram_component|auto_generated|q_b\(16);
\ram|altsyncram_component|auto_generated|ALT_INV_q_b\(18) <= NOT \ram|altsyncram_component|auto_generated|q_b\(18);
\ram|altsyncram_component|auto_generated|ALT_INV_q_b\(19) <= NOT \ram|altsyncram_component|auto_generated|q_b\(19);
\ram|altsyncram_component|auto_generated|ALT_INV_q_b\(20) <= NOT \ram|altsyncram_component|auto_generated|q_b\(20);
\ram|altsyncram_component|auto_generated|ALT_INV_q_b\(21) <= NOT \ram|altsyncram_component|auto_generated|q_b\(21);
\ram|altsyncram_component|auto_generated|ALT_INV_q_b\(3) <= NOT \ram|altsyncram_component|auto_generated|q_b\(3);
\ram|altsyncram_component|auto_generated|ALT_INV_q_b\(6) <= NOT \ram|altsyncram_component|auto_generated|q_b\(6);
\ram|altsyncram_component|auto_generated|ALT_INV_q_b\(7) <= NOT \ram|altsyncram_component|auto_generated|q_b\(7);
\ram|altsyncram_component|auto_generated|ALT_INV_q_b\(10) <= NOT \ram|altsyncram_component|auto_generated|q_b\(10);
\ram|altsyncram_component|auto_generated|ALT_INV_q_b\(11) <= NOT \ram|altsyncram_component|auto_generated|q_b\(11);
\ram|altsyncram_component|auto_generated|ALT_INV_q_b\(2) <= NOT \ram|altsyncram_component|auto_generated|q_b\(2);
\ram|altsyncram_component|auto_generated|ALT_INV_q_b\(1) <= NOT \ram|altsyncram_component|auto_generated|q_b\(1);
\ram|altsyncram_component|auto_generated|ALT_INV_q_b\(32) <= NOT \ram|altsyncram_component|auto_generated|q_b\(32);
\ram|altsyncram_component|auto_generated|ALT_INV_q_b\(33) <= NOT \ram|altsyncram_component|auto_generated|q_b\(33);
\ram|altsyncram_component|auto_generated|ALT_INV_q_b\(34) <= NOT \ram|altsyncram_component|auto_generated|q_b\(34);
\ram|altsyncram_component|auto_generated|ALT_INV_q_b\(35) <= NOT \ram|altsyncram_component|auto_generated|q_b\(35);
\ram|altsyncram_component|auto_generated|ALT_INV_q_b\(36) <= NOT \ram|altsyncram_component|auto_generated|q_b\(36);
\ram|altsyncram_component|auto_generated|ALT_INV_q_b\(37) <= NOT \ram|altsyncram_component|auto_generated|q_b\(37);
\ram|altsyncram_component|auto_generated|ALT_INV_q_b\(38) <= NOT \ram|altsyncram_component|auto_generated|q_b\(38);
\ram|altsyncram_component|auto_generated|ALT_INV_q_b\(39) <= NOT \ram|altsyncram_component|auto_generated|q_b\(39);
\ALT_INV_din[28]~input_o\ <= NOT \din[28]~input_o\;
\ALT_INV_din[26]~input_o\ <= NOT \din[26]~input_o\;
\ALT_INV_din[23]~input_o\ <= NOT \din[23]~input_o\;
\ALT_INV_din[20]~input_o\ <= NOT \din[20]~input_o\;
\ALT_INV_din[19]~input_o\ <= NOT \din[19]~input_o\;
\ALT_INV_din[18]~input_o\ <= NOT \din[18]~input_o\;
\ALT_INV_din[16]~input_o\ <= NOT \din[16]~input_o\;
\ALT_INV_din[15]~input_o\ <= NOT \din[15]~input_o\;
\ALT_INV_din[12]~input_o\ <= NOT \din[12]~input_o\;
\ALT_INV_din[10]~input_o\ <= NOT \din[10]~input_o\;
\ALT_INV_din[9]~input_o\ <= NOT \din[9]~input_o\;
\ALT_INV_din[8]~input_o\ <= NOT \din[8]~input_o\;
\ALT_INV_din[7]~input_o\ <= NOT \din[7]~input_o\;
\ALT_INV_din[6]~input_o\ <= NOT \din[6]~input_o\;
\ALT_INV_din[4]~input_o\ <= NOT \din[4]~input_o\;
\ALT_INV_din[3]~input_o\ <= NOT \din[3]~input_o\;
\ALT_INV_din[1]~input_o\ <= NOT \din[1]~input_o\;
\ALT_INV_din[0]~input_o\ <= NOT \din[0]~input_o\;
\ALT_INV_ast_source_channel[5]~input_o\ <= NOT \ast_source_channel[5]~input_o\;
\ALT_INV_ast_source_channel[4]~input_o\ <= NOT \ast_source_channel[4]~input_o\;
\ALT_INV_ast_source_channel[3]~input_o\ <= NOT \ast_source_channel[3]~input_o\;
\ALT_INV_ast_source_channel[2]~input_o\ <= NOT \ast_source_channel[2]~input_o\;
\ALT_INV_ast_source_ready~input_o\ <= NOT \ast_source_ready~input_o\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_enb~input_o\ <= NOT \enb~input_o\;
\entry|ALT_INV_u_data_addr:curr_head[9]~q\ <= NOT \entry|u_data_addr:curr_head[9]~q\;
\entry|ALT_INV_u_data_addr:curr_head[8]~q\ <= NOT \entry|u_data_addr:curr_head[8]~q\;
\entry|ALT_INV_u_data_addr:curr_head[7]~q\ <= NOT \entry|u_data_addr:curr_head[7]~q\;
\entry|ALT_INV_u_data_addr:curr_head[5]~q\ <= NOT \entry|u_data_addr:curr_head[5]~q\;
\entry|ALT_INV_u_data_addr:curr_head[4]~q\ <= NOT \entry|u_data_addr:curr_head[4]~q\;
\entry|ALT_INV_u_data_addr:curr_head[3]~q\ <= NOT \entry|u_data_addr:curr_head[3]~q\;
\entry|ALT_INV_u_data_addr:curr_head[2]~q\ <= NOT \entry|u_data_addr:curr_head[2]~q\;
\entry|ALT_INV_u_data_addr:curr_head[1]~q\ <= NOT \entry|u_data_addr:curr_head[1]~q\;
\entry|ALT_INV_u_data_addr:curr_head[0]~q\ <= NOT \entry|u_data_addr:curr_head[0]~q\;
\entry|ALT_INV_u_data_addr:curr_head[6]~q\ <= NOT \entry|u_data_addr:curr_head[6]~q\;
\entry|ALT_INV_Equal0~1_combout\ <= NOT \entry|Equal0~1_combout\;
\entry|ALT_INV_Equal0~0_combout\ <= NOT \entry|Equal0~0_combout\;
\entry|ALT_INV_addr\(9) <= NOT \entry|addr\(9);
\entry|ALT_INV_addr\(8) <= NOT \entry|addr\(8);
\entry|ALT_INV_addr\(7) <= NOT \entry|addr\(7);
\entry|ALT_INV_addr\(5) <= NOT \entry|addr\(5);
\entry|ALT_INV_addr\(4) <= NOT \entry|addr\(4);
\entry|ALT_INV_addr\(3) <= NOT \entry|addr\(3);
\entry|ALT_INV_addr\(2) <= NOT \entry|addr\(2);
\entry|ALT_INV_addr\(1) <= NOT \entry|addr\(1);
\entry|ALT_INV_addr\(0) <= NOT \entry|addr\(0);
\entry|ALT_INV_addr\(6) <= NOT \entry|addr\(6);
\entry|ALT_INV_s_wren~q\ <= NOT \entry|s_wren~q\;
\output|ALT_INV_ast_sink_data[0]~0_combout\ <= NOT \output|ast_sink_data[0]~0_combout\;
\output|ALT_INV_out_ready~2_combout\ <= NOT \output|out_ready~2_combout\;
\output|ALT_INV_out_ready~1_combout\ <= NOT \output|out_ready~1_combout\;
\output|ALT_INV_out_ready~0_combout\ <= NOT \output|out_ready~0_combout\;
\output|ALT_INV_state~q\ <= NOT \output|state~q\;
\output|ALT_INV_Equal0~1_combout\ <= NOT \output|Equal0~1_combout\;
\output|ALT_INV_addr\(0) <= NOT \output|addr\(0);
\output|ALT_INV_addr\(1) <= NOT \output|addr\(1);
\output|ALT_INV_addr\(2) <= NOT \output|addr\(2);
\output|ALT_INV_addr\(3) <= NOT \output|addr\(3);
\output|ALT_INV_Equal0~0_combout\ <= NOT \output|Equal0~0_combout\;
\output|ALT_INV_addr\(6) <= NOT \output|addr\(6);
\output|ALT_INV_addr\(7) <= NOT \output|addr\(7);
\output|ALT_INV_addr\(8) <= NOT \output|addr\(8);
\output|ALT_INV_addr\(9) <= NOT \output|addr\(9);
\output|ALT_INV_addr\(4) <= NOT \output|addr\(4);
\output|ALT_INV_addr\(5) <= NOT \output|addr\(5);

-- Location: IOOBUF_X26_Y0_N93
\ast_sink_valid~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output|s_rden~q\,
	devoe => ww_devoe,
	o => ww_ast_sink_valid);

-- Location: IOOBUF_X56_Y0_N53
\ast_sink_sop~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output|s_sop~q\,
	devoe => ww_devoe,
	o => ww_ast_sink_sop);

-- Location: IOOBUF_X66_Y0_N59
\ast_sink_eop~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output|s_eop~q\,
	devoe => ww_devoe,
	o => ww_ast_sink_eop);

-- Location: IOOBUF_X56_Y0_N2
\ast_sink_ready~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output|out_ready~q\,
	devoe => ww_devoe,
	o => ww_ast_sink_ready);

-- Location: IOOBUF_X30_Y0_N36
\ast_sink_data[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output|ast_sink_data\(0),
	devoe => ww_devoe,
	o => ww_ast_sink_data(0));

-- Location: IOOBUF_X54_Y0_N2
\ast_sink_data[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output|ast_sink_data\(1),
	devoe => ww_devoe,
	o => ww_ast_sink_data(1));

-- Location: IOOBUF_X40_Y0_N2
\ast_sink_data[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output|ast_sink_data\(2),
	devoe => ww_devoe,
	o => ww_ast_sink_data(2));

-- Location: IOOBUF_X8_Y0_N2
\ast_sink_data[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output|ast_sink_data\(3),
	devoe => ww_devoe,
	o => ww_ast_sink_data(3));

-- Location: IOOBUF_X54_Y0_N19
\ast_sink_data[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output|ast_sink_data\(4),
	devoe => ww_devoe,
	o => ww_ast_sink_data(4));

-- Location: IOOBUF_X28_Y0_N19
\ast_sink_data[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output|ast_sink_data\(5),
	devoe => ww_devoe,
	o => ww_ast_sink_data(5));

-- Location: IOOBUF_X56_Y0_N19
\ast_sink_data[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output|ast_sink_data\(6),
	devoe => ww_devoe,
	o => ww_ast_sink_data(6));

-- Location: IOOBUF_X68_Y0_N36
\ast_sink_data[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output|ast_sink_data\(7),
	devoe => ww_devoe,
	o => ww_ast_sink_data(7));

-- Location: IOOBUF_X54_Y0_N53
\ast_sink_data[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output|ast_sink_data\(8),
	devoe => ww_devoe,
	o => ww_ast_sink_data(8));

-- Location: IOOBUF_X30_Y0_N2
\ast_sink_data[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output|ast_sink_data\(9),
	devoe => ww_devoe,
	o => ww_ast_sink_data(9));

-- Location: IOOBUF_X30_Y0_N19
\ast_sink_data[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output|ast_sink_data\(10),
	devoe => ww_devoe,
	o => ww_ast_sink_data(10));

-- Location: IOOBUF_X36_Y0_N36
\ast_sink_data[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output|ast_sink_data\(11),
	devoe => ww_devoe,
	o => ww_ast_sink_data(11));

-- Location: IOOBUF_X6_Y0_N19
\ast_sink_data[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output|ast_sink_data\(12),
	devoe => ww_devoe,
	o => ww_ast_sink_data(12));

-- Location: IOOBUF_X8_Y0_N53
\ast_sink_data[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output|ast_sink_data\(13),
	devoe => ww_devoe,
	o => ww_ast_sink_data(13));

-- Location: IOOBUF_X40_Y0_N19
\ast_sink_data[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output|ast_sink_data\(14),
	devoe => ww_devoe,
	o => ww_ast_sink_data(14));

-- Location: IOOBUF_X4_Y0_N2
\ast_sink_data[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output|ast_sink_data\(15),
	devoe => ww_devoe,
	o => ww_ast_sink_data(15));

-- Location: IOOBUF_X62_Y0_N36
\ast_sink_data[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output|ast_sink_data\(16),
	devoe => ww_devoe,
	o => ww_ast_sink_data(16));

-- Location: IOOBUF_X58_Y0_N59
\ast_sink_data[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output|ast_sink_data\(17),
	devoe => ww_devoe,
	o => ww_ast_sink_data(17));

-- Location: IOOBUF_X8_Y0_N19
\ast_sink_data[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output|ast_sink_data\(18),
	devoe => ww_devoe,
	o => ww_ast_sink_data(18));

-- Location: IOOBUF_X34_Y0_N76
\ast_sink_data[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output|ast_sink_data\(19),
	devoe => ww_devoe,
	o => ww_ast_sink_data(19));

-- Location: IOOBUF_X8_Y0_N36
\ast_sink_data[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output|ast_sink_data\(20),
	devoe => ww_devoe,
	o => ww_ast_sink_data(20));

-- Location: IOOBUF_X40_Y0_N53
\ast_sink_data[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output|ast_sink_data\(21),
	devoe => ww_devoe,
	o => ww_ast_sink_data(21));

-- Location: IOOBUF_X64_Y0_N2
\ast_sink_data[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output|ast_sink_data\(22),
	devoe => ww_devoe,
	o => ww_ast_sink_data(22));

-- Location: IOOBUF_X62_Y0_N53
\ast_sink_data[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output|ast_sink_data\(23),
	devoe => ww_devoe,
	o => ww_ast_sink_data(23));

-- Location: IOOBUF_X52_Y0_N2
\ast_sink_data[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output|ast_sink_data\(24),
	devoe => ww_devoe,
	o => ww_ast_sink_data(24));

-- Location: IOOBUF_X54_Y0_N36
\ast_sink_data[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output|ast_sink_data\(25),
	devoe => ww_devoe,
	o => ww_ast_sink_data(25));

-- Location: IOOBUF_X62_Y0_N2
\ast_sink_data[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output|ast_sink_data\(26),
	devoe => ww_devoe,
	o => ww_ast_sink_data(26));

-- Location: IOOBUF_X2_Y0_N59
\ast_sink_data[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output|ast_sink_data\(27),
	devoe => ww_devoe,
	o => ww_ast_sink_data(27));

-- Location: IOOBUF_X30_Y0_N53
\ast_sink_data[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output|ast_sink_data\(28),
	devoe => ww_devoe,
	o => ww_ast_sink_data(28));

-- Location: IOOBUF_X2_Y0_N76
\ast_sink_data[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output|ast_sink_data\(29),
	devoe => ww_devoe,
	o => ww_ast_sink_data(29));

-- Location: IOOBUF_X40_Y0_N36
\ast_sink_data[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output|ast_sink_data\(30),
	devoe => ww_devoe,
	o => ww_ast_sink_data(30));

-- Location: IOOBUF_X4_Y0_N36
\ast_sink_data[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output|ast_sink_data\(31),
	devoe => ww_devoe,
	o => ww_ast_sink_data(31));

-- Location: IOOBUF_X28_Y0_N2
\ast_sink_channel[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output|s_channel\(0),
	devoe => ww_devoe,
	o => ww_ast_sink_channel(0));

-- Location: IOOBUF_X6_Y0_N2
\ast_sink_channel[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output|s_channel\(1),
	devoe => ww_devoe,
	o => ww_ast_sink_channel(1));

-- Location: IOOBUF_X6_Y0_N53
\ast_sink_channel[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output|s_channel\(2),
	devoe => ww_devoe,
	o => ww_ast_sink_channel(2));

-- Location: IOOBUF_X6_Y0_N36
\ast_sink_channel[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output|s_channel\(3),
	devoe => ww_devoe,
	o => ww_ast_sink_channel(3));

-- Location: IOOBUF_X36_Y0_N2
\ast_sink_channel[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output|s_channel\(4),
	devoe => ww_devoe,
	o => ww_ast_sink_channel(4));

-- Location: IOOBUF_X28_Y0_N53
\ast_sink_channel[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \output|s_channel\(5),
	devoe => ww_devoe,
	o => ww_ast_sink_channel(5));

-- Location: IOIBUF_X89_Y35_N61
\clk_b~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_b,
	o => \clk_b~input_o\);

-- Location: CLKCTRL_G10
\clk_b~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk_b~input_o\,
	outclk => \clk_b~inputCLKENA0_outclk\);

-- Location: IOIBUF_X64_Y0_N35
\enb~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enb,
	o => \enb~input_o\);

-- Location: MLABCELL_X25_Y6_N18
\output|addr[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \output|addr[0]~0_combout\ = ( !\output|addr\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \output|ALT_INV_addr\(0),
	combout => \output|addr[0]~0_combout\);

-- Location: IOIBUF_X26_Y0_N41
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X64_Y0_N52
\ast_source_ready~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ast_source_ready,
	o => \ast_source_ready~input_o\);

-- Location: IOIBUF_X89_Y35_N44
\clk_a~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_a,
	o => \clk_a~input_o\);

-- Location: CLKCTRL_G8
\clk_a~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk_a~input_o\,
	outclk => \clk_a~inputCLKENA0_outclk\);

-- Location: MLABCELL_X25_Y5_N24
\entry|u_data_addr:curr_head[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \entry|u_data_addr:curr_head[0]~0_combout\ = ( !\entry|u_data_addr:curr_head[0]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \entry|ALT_INV_u_data_addr:curr_head[0]~q\,
	combout => \entry|u_data_addr:curr_head[0]~0_combout\);

-- Location: LABCELL_X27_Y5_N6
\entry|u_data_addr~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \entry|u_data_addr~0_combout\ = ( \entry|s_wren~q\ & ( \enb~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_enb~input_o\,
	dataf => \entry|ALT_INV_s_wren~q\,
	combout => \entry|u_data_addr~0_combout\);

-- Location: FF_X25_Y5_N26
\entry|u_data_addr:curr_head[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	d => \entry|u_data_addr:curr_head[0]~0_combout\,
	clrn => \reset~input_o\,
	ena => \entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|u_data_addr:curr_head[0]~q\);

-- Location: LABCELL_X27_Y5_N30
\entry|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \entry|Add0~5_sumout\ = SUM(( \entry|u_data_addr:curr_head[1]~q\ ) + ( \entry|u_data_addr:curr_head[0]~q\ ) + ( !VCC ))
-- \entry|Add0~6\ = CARRY(( \entry|u_data_addr:curr_head[1]~q\ ) + ( \entry|u_data_addr:curr_head[0]~q\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \entry|ALT_INV_u_data_addr:curr_head[0]~q\,
	datad => \entry|ALT_INV_u_data_addr:curr_head[1]~q\,
	cin => GND,
	sumout => \entry|Add0~5_sumout\,
	cout => \entry|Add0~6\);

-- Location: FF_X27_Y5_N32
\entry|u_data_addr:curr_head[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	d => \entry|Add0~5_sumout\,
	clrn => \reset~input_o\,
	ena => \entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|u_data_addr:curr_head[1]~q\);

-- Location: LABCELL_X27_Y5_N33
\entry|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \entry|Add0~9_sumout\ = SUM(( \entry|u_data_addr:curr_head[2]~q\ ) + ( GND ) + ( \entry|Add0~6\ ))
-- \entry|Add0~10\ = CARRY(( \entry|u_data_addr:curr_head[2]~q\ ) + ( GND ) + ( \entry|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \entry|ALT_INV_u_data_addr:curr_head[2]~q\,
	cin => \entry|Add0~6\,
	sumout => \entry|Add0~9_sumout\,
	cout => \entry|Add0~10\);

-- Location: FF_X27_Y5_N34
\entry|u_data_addr:curr_head[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	d => \entry|Add0~9_sumout\,
	clrn => \reset~input_o\,
	ena => \entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|u_data_addr:curr_head[2]~q\);

-- Location: LABCELL_X27_Y5_N36
\entry|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \entry|Add0~13_sumout\ = SUM(( \entry|u_data_addr:curr_head[3]~q\ ) + ( GND ) + ( \entry|Add0~10\ ))
-- \entry|Add0~14\ = CARRY(( \entry|u_data_addr:curr_head[3]~q\ ) + ( GND ) + ( \entry|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \entry|ALT_INV_u_data_addr:curr_head[3]~q\,
	cin => \entry|Add0~10\,
	sumout => \entry|Add0~13_sumout\,
	cout => \entry|Add0~14\);

-- Location: FF_X27_Y5_N38
\entry|u_data_addr:curr_head[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	d => \entry|Add0~13_sumout\,
	clrn => \reset~input_o\,
	ena => \entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|u_data_addr:curr_head[3]~q\);

-- Location: LABCELL_X27_Y5_N39
\entry|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \entry|Add0~17_sumout\ = SUM(( \entry|u_data_addr:curr_head[4]~q\ ) + ( GND ) + ( \entry|Add0~14\ ))
-- \entry|Add0~18\ = CARRY(( \entry|u_data_addr:curr_head[4]~q\ ) + ( GND ) + ( \entry|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \entry|ALT_INV_u_data_addr:curr_head[4]~q\,
	cin => \entry|Add0~14\,
	sumout => \entry|Add0~17_sumout\,
	cout => \entry|Add0~18\);

-- Location: FF_X27_Y5_N40
\entry|u_data_addr:curr_head[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	d => \entry|Add0~17_sumout\,
	clrn => \reset~input_o\,
	ena => \entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|u_data_addr:curr_head[4]~q\);

-- Location: FF_X27_Y5_N20
\entry|addr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	asdata => \entry|u_data_addr:curr_head[4]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|addr\(4));

-- Location: LABCELL_X27_Y5_N42
\entry|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \entry|Add0~21_sumout\ = SUM(( \entry|u_data_addr:curr_head[5]~q\ ) + ( GND ) + ( \entry|Add0~18\ ))
-- \entry|Add0~22\ = CARRY(( \entry|u_data_addr:curr_head[5]~q\ ) + ( GND ) + ( \entry|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \entry|ALT_INV_u_data_addr:curr_head[5]~q\,
	cin => \entry|Add0~18\,
	sumout => \entry|Add0~21_sumout\,
	cout => \entry|Add0~22\);

-- Location: FF_X27_Y5_N44
\entry|u_data_addr:curr_head[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	d => \entry|Add0~21_sumout\,
	clrn => \reset~input_o\,
	ena => \entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|u_data_addr:curr_head[5]~q\);

-- Location: FF_X27_Y5_N29
\entry|addr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	asdata => \entry|u_data_addr:curr_head[5]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|addr\(5));

-- Location: LABCELL_X27_Y5_N45
\entry|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \entry|Add0~1_sumout\ = SUM(( \entry|u_data_addr:curr_head[6]~q\ ) + ( GND ) + ( \entry|Add0~22\ ))
-- \entry|Add0~2\ = CARRY(( \entry|u_data_addr:curr_head[6]~q\ ) + ( GND ) + ( \entry|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \entry|ALT_INV_u_data_addr:curr_head[6]~q\,
	cin => \entry|Add0~22\,
	sumout => \entry|Add0~1_sumout\,
	cout => \entry|Add0~2\);

-- Location: FF_X27_Y5_N46
\entry|u_data_addr:curr_head[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	d => \entry|Add0~1_sumout\,
	clrn => \reset~input_o\,
	ena => \entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|u_data_addr:curr_head[6]~q\);

-- Location: LABCELL_X27_Y5_N48
\entry|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \entry|Add0~25_sumout\ = SUM(( \entry|u_data_addr:curr_head[7]~q\ ) + ( GND ) + ( \entry|Add0~2\ ))
-- \entry|Add0~26\ = CARRY(( \entry|u_data_addr:curr_head[7]~q\ ) + ( GND ) + ( \entry|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \entry|ALT_INV_u_data_addr:curr_head[7]~q\,
	cin => \entry|Add0~2\,
	sumout => \entry|Add0~25_sumout\,
	cout => \entry|Add0~26\);

-- Location: FF_X27_Y5_N49
\entry|u_data_addr:curr_head[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	d => \entry|Add0~25_sumout\,
	clrn => \reset~input_o\,
	ena => \entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|u_data_addr:curr_head[7]~q\);

-- Location: FF_X27_Y5_N26
\entry|addr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	asdata => \entry|u_data_addr:curr_head[7]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|addr\(7));

-- Location: LABCELL_X27_Y5_N51
\entry|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \entry|Add0~29_sumout\ = SUM(( \entry|u_data_addr:curr_head[8]~q\ ) + ( GND ) + ( \entry|Add0~26\ ))
-- \entry|Add0~30\ = CARRY(( \entry|u_data_addr:curr_head[8]~q\ ) + ( GND ) + ( \entry|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \entry|ALT_INV_u_data_addr:curr_head[8]~q\,
	cin => \entry|Add0~26\,
	sumout => \entry|Add0~29_sumout\,
	cout => \entry|Add0~30\);

-- Location: FF_X27_Y5_N52
\entry|u_data_addr:curr_head[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	d => \entry|Add0~29_sumout\,
	clrn => \reset~input_o\,
	ena => \entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|u_data_addr:curr_head[8]~q\);

-- Location: LABCELL_X27_Y5_N54
\entry|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \entry|Add0~33_sumout\ = SUM(( \entry|u_data_addr:curr_head[9]~q\ ) + ( GND ) + ( \entry|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \entry|ALT_INV_u_data_addr:curr_head[9]~q\,
	cin => \entry|Add0~30\,
	sumout => \entry|Add0~33_sumout\);

-- Location: FF_X27_Y5_N55
\entry|u_data_addr:curr_head[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	d => \entry|Add0~33_sumout\,
	clrn => \reset~input_o\,
	ena => \entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|u_data_addr:curr_head[9]~q\);

-- Location: FF_X27_Y5_N23
\entry|addr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	asdata => \entry|u_data_addr:curr_head[9]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|addr\(9));

-- Location: FF_X27_Y5_N11
\entry|addr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	asdata => \entry|u_data_addr:curr_head[6]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|addr\(6));

-- Location: FF_X27_Y5_N8
\entry|addr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	asdata => \entry|u_data_addr:curr_head[8]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|addr\(8));

-- Location: LABCELL_X27_Y5_N9
\entry|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \entry|Equal0~0_combout\ = ( \entry|addr\(8) & ( (\entry|addr\(7) & (\entry|addr\(9) & \entry|addr\(6))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \entry|ALT_INV_addr\(7),
	datac => \entry|ALT_INV_addr\(9),
	datad => \entry|ALT_INV_addr\(6),
	dataf => \entry|ALT_INV_addr\(8),
	combout => \entry|Equal0~0_combout\);

-- Location: FF_X25_Y5_N29
\entry|addr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	asdata => \entry|u_data_addr:curr_head[0]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|addr\(0));

-- Location: FF_X27_Y5_N59
\entry|addr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	asdata => \entry|u_data_addr:curr_head[1]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|addr\(1));

-- Location: FF_X27_Y5_N5
\entry|addr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	asdata => \entry|u_data_addr:curr_head[3]~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|addr\(3));

-- Location: MLABCELL_X25_Y5_N39
\entry|addr[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \entry|addr[2]~feeder_combout\ = ( \entry|u_data_addr:curr_head[2]~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \entry|ALT_INV_u_data_addr:curr_head[2]~q\,
	combout => \entry|addr[2]~feeder_combout\);

-- Location: FF_X25_Y5_N41
\entry|addr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	d => \entry|addr[2]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|addr\(2));

-- Location: LABCELL_X27_Y5_N15
\entry|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \entry|Equal0~1_combout\ = ( \entry|addr\(2) & ( (\entry|addr\(0) & (\entry|addr\(1) & \entry|addr\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \entry|ALT_INV_addr\(0),
	datac => \entry|ALT_INV_addr\(1),
	datad => \entry|ALT_INV_addr\(3),
	dataf => \entry|ALT_INV_addr\(2),
	combout => \entry|Equal0~1_combout\);

-- Location: LABCELL_X27_Y5_N12
\entry|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \entry|Equal0~2_combout\ = ( \entry|Equal0~1_combout\ & ( (!\entry|addr\(4)) # ((!\entry|addr\(5)) # (!\entry|Equal0~0_combout\)) ) ) # ( !\entry|Equal0~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111110101111111111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \entry|ALT_INV_addr\(4),
	datac => \entry|ALT_INV_addr\(5),
	datad => \entry|ALT_INV_Equal0~0_combout\,
	dataf => \entry|ALT_INV_Equal0~1_combout\,
	combout => \entry|Equal0~2_combout\);

-- Location: FF_X27_Y5_N14
\entry|s_wren\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	d => \entry|Equal0~2_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|s_wren~q\);

-- Location: IOIBUF_X60_Y0_N1
\din[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(0),
	o => \din[0]~input_o\);

-- Location: LABCELL_X27_Y6_N0
\entry|data_a[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \entry|data_a[0]~feeder_combout\ = ( \din[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_din[0]~input_o\,
	combout => \entry|data_a[0]~feeder_combout\);

-- Location: FF_X27_Y6_N1
\entry|data_a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	d => \entry|data_a[0]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|data_a\(0));

-- Location: LABCELL_X27_Y3_N12
\~GND\ : cyclonev_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: MLABCELL_X25_Y6_N30
\output|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \output|Add0~33_sumout\ = SUM(( \output|addr\(1) ) + ( \output|addr\(0) ) + ( !VCC ))
-- \output|Add0~34\ = CARRY(( \output|addr\(1) ) + ( \output|addr\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \output|ALT_INV_addr\(0),
	datad => \output|ALT_INV_addr\(1),
	cin => GND,
	sumout => \output|Add0~33_sumout\,
	cout => \output|Add0~34\);

-- Location: FF_X25_Y6_N32
\output|addr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	d => \output|Add0~33_sumout\,
	clrn => \reset~input_o\,
	ena => \output|ast_sink_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|addr\(1));

-- Location: MLABCELL_X25_Y6_N39
\output|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \output|Add0~5_sumout\ = SUM(( \output|addr\(4) ) + ( GND ) + ( \output|Add0~26\ ))
-- \output|Add0~6\ = CARRY(( \output|addr\(4) ) + ( GND ) + ( \output|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \output|ALT_INV_addr\(4),
	cin => \output|Add0~26\,
	sumout => \output|Add0~5_sumout\,
	cout => \output|Add0~6\);

-- Location: MLABCELL_X25_Y6_N42
\output|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \output|Add0~1_sumout\ = SUM(( \output|addr\(5) ) + ( GND ) + ( \output|Add0~6\ ))
-- \output|Add0~2\ = CARRY(( \output|addr\(5) ) + ( GND ) + ( \output|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \output|ALT_INV_addr\(5),
	cin => \output|Add0~6\,
	sumout => \output|Add0~1_sumout\,
	cout => \output|Add0~2\);

-- Location: FF_X25_Y6_N44
\output|addr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	d => \output|Add0~1_sumout\,
	clrn => \reset~input_o\,
	ena => \output|ast_sink_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|addr\(5));

-- Location: MLABCELL_X25_Y6_N45
\output|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \output|Add0~21_sumout\ = SUM(( \output|addr\(6) ) + ( GND ) + ( \output|Add0~2\ ))
-- \output|Add0~22\ = CARRY(( \output|addr\(6) ) + ( GND ) + ( \output|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \output|ALT_INV_addr\(6),
	cin => \output|Add0~2\,
	sumout => \output|Add0~21_sumout\,
	cout => \output|Add0~22\);

-- Location: FF_X25_Y6_N47
\output|addr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	d => \output|Add0~21_sumout\,
	clrn => \reset~input_o\,
	ena => \output|ast_sink_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|addr\(6));

-- Location: MLABCELL_X25_Y6_N48
\output|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \output|Add0~17_sumout\ = SUM(( \output|addr\(7) ) + ( GND ) + ( \output|Add0~22\ ))
-- \output|Add0~18\ = CARRY(( \output|addr\(7) ) + ( GND ) + ( \output|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \output|ALT_INV_addr\(7),
	cin => \output|Add0~22\,
	sumout => \output|Add0~17_sumout\,
	cout => \output|Add0~18\);

-- Location: FF_X25_Y6_N50
\output|addr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	d => \output|Add0~17_sumout\,
	clrn => \reset~input_o\,
	ena => \output|ast_sink_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|addr\(7));

-- Location: MLABCELL_X25_Y6_N51
\output|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \output|Add0~13_sumout\ = SUM(( \output|addr\(8) ) + ( GND ) + ( \output|Add0~18\ ))
-- \output|Add0~14\ = CARRY(( \output|addr\(8) ) + ( GND ) + ( \output|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \output|ALT_INV_addr\(8),
	cin => \output|Add0~18\,
	sumout => \output|Add0~13_sumout\,
	cout => \output|Add0~14\);

-- Location: FF_X25_Y6_N53
\output|addr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	d => \output|Add0~13_sumout\,
	clrn => \reset~input_o\,
	ena => \output|ast_sink_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|addr\(8));

-- Location: MLABCELL_X25_Y6_N54
\output|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \output|Add0~9_sumout\ = SUM(( \output|addr\(9) ) + ( GND ) + ( \output|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \output|ALT_INV_addr\(9),
	cin => \output|Add0~14\,
	sumout => \output|Add0~9_sumout\);

-- Location: FF_X25_Y6_N56
\output|addr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	d => \output|Add0~9_sumout\,
	clrn => \reset~input_o\,
	ena => \output|ast_sink_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|addr\(9));

-- Location: IOIBUF_X64_Y0_N18
\din[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(1),
	o => \din[1]~input_o\);

-- Location: LABCELL_X27_Y6_N9
\entry|data_a[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \entry|data_a[1]~feeder_combout\ = ( \din[1]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_din[1]~input_o\,
	combout => \entry|data_a[1]~feeder_combout\);

-- Location: FF_X27_Y6_N11
\entry|data_a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	d => \entry|data_a[1]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|data_a\(1));

-- Location: M10K_X26_Y6_N0
\ram|altsyncram_component|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "in_sram:ram|altsyncram:altsyncram_component|altsyncram_du24:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "clear0",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 10,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 40,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 10,
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "clear1",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 10,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 1023,
	port_b_logical_ram_depth => 1024,
	port_b_logical_ram_width => 40,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	port_b_write_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \entry|s_wren~q\,
	portare => GND,
	portbwe => GND,
	portbre => \output|s_rden~q\,
	clk0 => \clk_a~inputCLKENA0_outclk\,
	clk1 => \clk_b~inputCLKENA0_outclk\,
	clr0 => GND,
	clr1 => GND,
	portadatain => \ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portbdatain => \ram|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\,
	portaaddr => \ram|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \ram|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ram|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\,
	portbdataout => \ram|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: MLABCELL_X25_Y6_N6
\output|out_ready~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \output|out_ready~1_combout\ = ( \ram|altsyncram_component|auto_generated|q_b\(34) & ( \ram|altsyncram_component|auto_generated|q_b\(32) & ( (\output|addr\(0) & (\output|addr\(2) & (!\ram|altsyncram_component|auto_generated|q_b\(33) $ 
-- (\output|addr\(1))))) ) ) ) # ( !\ram|altsyncram_component|auto_generated|q_b\(34) & ( \ram|altsyncram_component|auto_generated|q_b\(32) & ( (\output|addr\(0) & (!\output|addr\(2) & (!\ram|altsyncram_component|auto_generated|q_b\(33) $ 
-- (\output|addr\(1))))) ) ) ) # ( \ram|altsyncram_component|auto_generated|q_b\(34) & ( !\ram|altsyncram_component|auto_generated|q_b\(32) & ( (!\output|addr\(0) & (\output|addr\(2) & (!\ram|altsyncram_component|auto_generated|q_b\(33) $ 
-- (\output|addr\(1))))) ) ) ) # ( !\ram|altsyncram_component|auto_generated|q_b\(34) & ( !\ram|altsyncram_component|auto_generated|q_b\(32) & ( (!\output|addr\(0) & (!\output|addr\(2) & (!\ram|altsyncram_component|auto_generated|q_b\(33) $ 
-- (\output|addr\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000001000001000000000001001000000000001000001000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \output|ALT_INV_addr\(0),
	datab => \output|ALT_INV_addr\(2),
	datac => \ram|altsyncram_component|auto_generated|ALT_INV_q_b\(33),
	datad => \output|ALT_INV_addr\(1),
	datae => \ram|altsyncram_component|auto_generated|ALT_INV_q_b\(34),
	dataf => \ram|altsyncram_component|auto_generated|ALT_INV_q_b\(32),
	combout => \output|out_ready~1_combout\);

-- Location: MLABCELL_X25_Y6_N0
\output|out_ready~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \output|out_ready~2_combout\ = ( \ram|altsyncram_component|auto_generated|q_b\(36) & ( \ram|altsyncram_component|auto_generated|q_b\(37) & ( (\output|addr\(4) & (\output|addr\(5) & (!\output|addr\(3) $ 
-- (\ram|altsyncram_component|auto_generated|q_b\(35))))) ) ) ) # ( !\ram|altsyncram_component|auto_generated|q_b\(36) & ( \ram|altsyncram_component|auto_generated|q_b\(37) & ( (!\output|addr\(4) & (\output|addr\(5) & (!\output|addr\(3) $ 
-- (\ram|altsyncram_component|auto_generated|q_b\(35))))) ) ) ) # ( \ram|altsyncram_component|auto_generated|q_b\(36) & ( !\ram|altsyncram_component|auto_generated|q_b\(37) & ( (\output|addr\(4) & (!\output|addr\(5) & (!\output|addr\(3) $ 
-- (\ram|altsyncram_component|auto_generated|q_b\(35))))) ) ) ) # ( !\ram|altsyncram_component|auto_generated|q_b\(36) & ( !\ram|altsyncram_component|auto_generated|q_b\(37) & ( (!\output|addr\(4) & (!\output|addr\(5) & (!\output|addr\(3) $ 
-- (\ram|altsyncram_component|auto_generated|q_b\(35))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010000000000001000010000000000000000100001000000000000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \output|ALT_INV_addr\(3),
	datab => \output|ALT_INV_addr\(4),
	datac => \ram|altsyncram_component|auto_generated|ALT_INV_q_b\(35),
	datad => \output|ALT_INV_addr\(5),
	datae => \ram|altsyncram_component|auto_generated|ALT_INV_q_b\(36),
	dataf => \ram|altsyncram_component|auto_generated|ALT_INV_q_b\(37),
	combout => \output|out_ready~2_combout\);

-- Location: MLABCELL_X25_Y6_N15
\output|out_ready~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \output|out_ready~0_combout\ = ( \ram|altsyncram_component|auto_generated|q_b\(39) & ( (\output|addr\(7) & (!\output|addr\(6) $ (\ram|altsyncram_component|auto_generated|q_b\(38)))) ) ) # ( !\ram|altsyncram_component|auto_generated|q_b\(39) & ( 
-- (!\output|addr\(7) & (!\output|addr\(6) $ (\ram|altsyncram_component|auto_generated|q_b\(38)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000001010101000000000101001010000000001010101000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \output|ALT_INV_addr\(7),
	datac => \output|ALT_INV_addr\(6),
	datad => \ram|altsyncram_component|auto_generated|ALT_INV_q_b\(38),
	dataf => \ram|altsyncram_component|auto_generated|ALT_INV_q_b\(39),
	combout => \output|out_ready~0_combout\);

-- Location: MLABCELL_X25_Y5_N42
\output|state~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \output|state~0_combout\ = ( \output|state~q\ & ( \output|s_rden~q\ & ( (!\output|out_ready~1_combout\) # ((!\ast_source_ready~input_o\) # ((!\output|out_ready~2_combout\) # (!\output|out_ready~0_combout\))) ) ) ) # ( !\output|state~q\ & ( 
-- \output|s_rden~q\ & ( \ast_source_ready~input_o\ ) ) ) # ( \output|state~q\ & ( !\output|s_rden~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100110011001100111111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \output|ALT_INV_out_ready~1_combout\,
	datab => \ALT_INV_ast_source_ready~input_o\,
	datac => \output|ALT_INV_out_ready~2_combout\,
	datad => \output|ALT_INV_out_ready~0_combout\,
	datae => \output|ALT_INV_state~q\,
	dataf => \output|ALT_INV_s_rden~q\,
	combout => \output|state~0_combout\);

-- Location: FF_X25_Y5_N44
\output|state\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	d => \output|state~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|state~q\);

-- Location: MLABCELL_X25_Y5_N33
\output|ast_sink_data[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \output|ast_sink_data[0]~0_combout\ = ( \output|s_rden~q\ & ( !\output|state~q\ & ( \ast_source_ready~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ast_source_ready~input_o\,
	datae => \output|ALT_INV_s_rden~q\,
	dataf => \output|ALT_INV_state~q\,
	combout => \output|ast_sink_data[0]~0_combout\);

-- Location: FF_X25_Y6_N20
\output|addr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	d => \output|addr[0]~0_combout\,
	clrn => \reset~input_o\,
	ena => \output|ast_sink_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|addr\(0));

-- Location: MLABCELL_X25_Y6_N33
\output|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \output|Add0~29_sumout\ = SUM(( \output|addr\(2) ) + ( GND ) + ( \output|Add0~34\ ))
-- \output|Add0~30\ = CARRY(( \output|addr\(2) ) + ( GND ) + ( \output|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \output|ALT_INV_addr\(2),
	cin => \output|Add0~34\,
	sumout => \output|Add0~29_sumout\,
	cout => \output|Add0~30\);

-- Location: FF_X25_Y6_N35
\output|addr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	d => \output|Add0~29_sumout\,
	clrn => \reset~input_o\,
	ena => \output|ast_sink_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|addr\(2));

-- Location: MLABCELL_X25_Y6_N36
\output|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \output|Add0~25_sumout\ = SUM(( \output|addr\(3) ) + ( GND ) + ( \output|Add0~30\ ))
-- \output|Add0~26\ = CARRY(( \output|addr\(3) ) + ( GND ) + ( \output|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \output|ALT_INV_addr\(3),
	cin => \output|Add0~30\,
	sumout => \output|Add0~25_sumout\,
	cout => \output|Add0~26\);

-- Location: FF_X25_Y6_N38
\output|addr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	d => \output|Add0~25_sumout\,
	clrn => \reset~input_o\,
	ena => \output|ast_sink_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|addr\(3));

-- Location: FF_X25_Y6_N41
\output|addr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	d => \output|Add0~5_sumout\,
	clrn => \reset~input_o\,
	ena => \output|ast_sink_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|addr\(4));

-- Location: MLABCELL_X25_Y5_N12
\output|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \output|Equal0~0_combout\ = ( \output|addr\(6) & ( \output|addr\(7) & ( (\output|addr\(9) & \output|addr\(8)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \output|ALT_INV_addr\(9),
	datac => \output|ALT_INV_addr\(8),
	datae => \output|ALT_INV_addr\(6),
	dataf => \output|ALT_INV_addr\(7),
	combout => \output|Equal0~0_combout\);

-- Location: MLABCELL_X25_Y5_N51
\output|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \output|Equal0~1_combout\ = ( \output|addr\(3) & ( \output|addr\(2) & ( (\output|addr\(1) & \output|addr\(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \output|ALT_INV_addr\(1),
	datac => \output|ALT_INV_addr\(0),
	datae => \output|ALT_INV_addr\(3),
	dataf => \output|ALT_INV_addr\(2),
	combout => \output|Equal0~1_combout\);

-- Location: MLABCELL_X25_Y5_N54
\output|u_ast_valid~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \output|u_ast_valid~0_combout\ = ( \output|addr\(5) & ( \output|Equal0~1_combout\ & ( (\enb~input_o\ & ((!\output|addr\(4)) # (!\output|Equal0~0_combout\))) ) ) ) # ( !\output|addr\(5) & ( \output|Equal0~1_combout\ & ( \enb~input_o\ ) ) ) # ( 
-- \output|addr\(5) & ( !\output|Equal0~1_combout\ & ( \enb~input_o\ ) ) ) # ( !\output|addr\(5) & ( !\output|Equal0~1_combout\ & ( \enb~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_enb~input_o\,
	datac => \output|ALT_INV_addr\(4),
	datad => \output|ALT_INV_Equal0~0_combout\,
	datae => \output|ALT_INV_addr\(5),
	dataf => \output|ALT_INV_Equal0~1_combout\,
	combout => \output|u_ast_valid~0_combout\);

-- Location: FF_X25_Y5_N56
\output|s_rden\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	d => \output|u_ast_valid~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|s_rden~q\);

-- Location: MLABCELL_X25_Y5_N6
\output|s_sop~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \output|s_sop~0_combout\ = ( \output|s_sop~q\ & ( !\output|state~q\ ) ) # ( !\output|s_sop~q\ & ( (\ast_source_ready~input_o\ & (\output|s_rden~q\ & !\output|state~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000111111110000000000000101000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ast_source_ready~input_o\,
	datac => \output|ALT_INV_s_rden~q\,
	datad => \output|ALT_INV_state~q\,
	datae => \output|ALT_INV_s_sop~q\,
	combout => \output|s_sop~0_combout\);

-- Location: FF_X25_Y5_N7
\output|s_sop\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	d => \output|s_sop~0_combout\,
	clrn => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|s_sop~q\);

-- Location: MLABCELL_X25_Y6_N24
\output|out_ready~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \output|out_ready~3_combout\ = ( \output|out_ready~2_combout\ & ( \output|out_ready~0_combout\ & ( (!\output|state~q\) # ((\ast_source_ready~input_o\ & (\output|s_rden~q\ & \output|out_ready~1_combout\))) ) ) ) # ( !\output|out_ready~2_combout\ & ( 
-- \output|out_ready~0_combout\ & ( !\output|state~q\ ) ) ) # ( \output|out_ready~2_combout\ & ( !\output|out_ready~0_combout\ & ( !\output|state~q\ ) ) ) # ( !\output|out_ready~2_combout\ & ( !\output|out_ready~0_combout\ & ( !\output|state~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \output|ALT_INV_state~q\,
	datab => \ALT_INV_ast_source_ready~input_o\,
	datac => \output|ALT_INV_s_rden~q\,
	datad => \output|ALT_INV_out_ready~1_combout\,
	datae => \output|ALT_INV_out_ready~2_combout\,
	dataf => \output|ALT_INV_out_ready~0_combout\,
	combout => \output|out_ready~3_combout\);

-- Location: FF_X25_Y6_N25
\output|s_eop\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	asdata => \output|state~q\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \output|out_ready~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|s_eop~q\);

-- Location: MLABCELL_X25_Y6_N12
\output|out_ready~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \output|out_ready~4_combout\ = !\output|ast_sink_data[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \output|ALT_INV_ast_sink_data[0]~0_combout\,
	combout => \output|out_ready~4_combout\);

-- Location: FF_X25_Y6_N13
\output|out_ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	d => \output|out_ready~4_combout\,
	clrn => \reset~input_o\,
	ena => \output|out_ready~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|out_ready~q\);

-- Location: MLABCELL_X25_Y5_N3
\output|ast_sink_data[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \output|ast_sink_data[0]~1_combout\ = ( \output|s_rden~q\ & ( !\output|state~q\ & ( (\ast_source_ready~input_o\ & \reset~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_ast_source_ready~input_o\,
	datac => \ALT_INV_reset~input_o\,
	datae => \output|ALT_INV_s_rden~q\,
	dataf => \output|ALT_INV_state~q\,
	combout => \output|ast_sink_data[0]~1_combout\);

-- Location: FF_X25_Y4_N25
\output|ast_sink_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	asdata => \ram|altsyncram_component|auto_generated|q_b\(0),
	sload => VCC,
	ena => \output|ast_sink_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|ast_sink_data\(0));

-- Location: MLABCELL_X25_Y4_N54
\output|ast_sink_data[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \output|ast_sink_data[1]~feeder_combout\ = ( \ram|altsyncram_component|auto_generated|q_b\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ram|altsyncram_component|auto_generated|ALT_INV_q_b\(1),
	combout => \output|ast_sink_data[1]~feeder_combout\);

-- Location: FF_X25_Y4_N55
\output|ast_sink_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	d => \output|ast_sink_data[1]~feeder_combout\,
	ena => \output|ast_sink_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|ast_sink_data\(1));

-- Location: IOIBUF_X50_Y0_N41
\din[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(2),
	o => \din[2]~input_o\);

-- Location: FF_X27_Y4_N41
\entry|data_a[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	asdata => \din[2]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|data_a\(2));

-- Location: IOIBUF_X56_Y0_N35
\din[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(3),
	o => \din[3]~input_o\);

-- Location: LABCELL_X27_Y4_N33
\entry|data_a[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \entry|data_a[3]~feeder_combout\ = ( \din[3]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_din[3]~input_o\,
	combout => \entry|data_a[3]~feeder_combout\);

-- Location: FF_X27_Y4_N35
\entry|data_a[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	d => \entry|data_a[3]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|data_a\(3));

-- Location: IOIBUF_X50_Y0_N92
\din[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(4),
	o => \din[4]~input_o\);

-- Location: LABCELL_X27_Y4_N48
\entry|data_a[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \entry|data_a[4]~feeder_combout\ = ( \din[4]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_din[4]~input_o\,
	combout => \entry|data_a[4]~feeder_combout\);

-- Location: FF_X27_Y4_N50
\entry|data_a[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	d => \entry|data_a[4]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|data_a\(4));

-- Location: IOIBUF_X32_Y0_N1
\din[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(5),
	o => \din[5]~input_o\);

-- Location: FF_X27_Y4_N32
\entry|data_a[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	asdata => \din[5]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|data_a\(5));

-- Location: IOIBUF_X60_Y0_N52
\din[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(6),
	o => \din[6]~input_o\);

-- Location: LABCELL_X27_Y4_N18
\entry|data_a[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \entry|data_a[6]~feeder_combout\ = ( \din[6]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_din[6]~input_o\,
	combout => \entry|data_a[6]~feeder_combout\);

-- Location: FF_X27_Y4_N19
\entry|data_a[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	d => \entry|data_a[6]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|data_a\(6));

-- Location: IOIBUF_X32_Y0_N18
\din[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(7),
	o => \din[7]~input_o\);

-- Location: LABCELL_X27_Y4_N21
\entry|data_a[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \entry|data_a[7]~feeder_combout\ = ( \din[7]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_din[7]~input_o\,
	combout => \entry|data_a[7]~feeder_combout\);

-- Location: FF_X27_Y4_N23
\entry|data_a[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	d => \entry|data_a[7]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|data_a\(7));

-- Location: IOIBUF_X60_Y0_N18
\din[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(8),
	o => \din[8]~input_o\);

-- Location: LABCELL_X27_Y4_N24
\entry|data_a[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \entry|data_a[8]~feeder_combout\ = ( \din[8]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_din[8]~input_o\,
	combout => \entry|data_a[8]~feeder_combout\);

-- Location: FF_X27_Y4_N26
\entry|data_a[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	d => \entry|data_a[8]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|data_a\(8));

-- Location: IOIBUF_X38_Y0_N52
\din[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(9),
	o => \din[9]~input_o\);

-- Location: LABCELL_X27_Y4_N42
\entry|data_a[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \entry|data_a[9]~feeder_combout\ = ( \din[9]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_din[9]~input_o\,
	combout => \entry|data_a[9]~feeder_combout\);

-- Location: FF_X27_Y4_N44
\entry|data_a[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	d => \entry|data_a[9]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|data_a\(9));

-- Location: IOIBUF_X38_Y0_N18
\din[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(10),
	o => \din[10]~input_o\);

-- Location: LABCELL_X27_Y4_N45
\entry|data_a[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \entry|data_a[10]~feeder_combout\ = ( \din[10]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_din[10]~input_o\,
	combout => \entry|data_a[10]~feeder_combout\);

-- Location: FF_X27_Y4_N47
\entry|data_a[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	d => \entry|data_a[10]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|data_a\(10));

-- Location: IOIBUF_X58_Y0_N92
\din[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(11),
	o => \din[11]~input_o\);

-- Location: FF_X27_Y4_N2
\entry|data_a[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	asdata => \din[11]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|data_a\(11));

-- Location: M10K_X26_Y4_N0
\ram|altsyncram_component|auto_generated|ram_block1a2\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "in_sram:ram|altsyncram:altsyncram_component|altsyncram_du24:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "clear0",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 10,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 40,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 10,
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "clear1",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 10,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 1023,
	port_b_logical_ram_depth => 1024,
	port_b_logical_ram_width => 40,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	port_b_write_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \entry|s_wren~q\,
	portare => GND,
	portbwe => GND,
	portbre => \output|s_rden~q\,
	clk0 => \clk_a~inputCLKENA0_outclk\,
	clk1 => \clk_b~inputCLKENA0_outclk\,
	clr0 => GND,
	clr1 => GND,
	portadatain => \ram|altsyncram_component|auto_generated|ram_block1a2_PORTADATAIN_bus\,
	portbdatain => \ram|altsyncram_component|auto_generated|ram_block1a2_PORTBDATAIN_bus\,
	portaaddr => \ram|altsyncram_component|auto_generated|ram_block1a2_PORTAADDR_bus\,
	portbaddr => \ram|altsyncram_component|auto_generated|ram_block1a2_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ram|altsyncram_component|auto_generated|ram_block1a2_PORTADATAOUT_bus\,
	portbdataout => \ram|altsyncram_component|auto_generated|ram_block1a2_PORTBDATAOUT_bus\);

-- Location: MLABCELL_X25_Y4_N15
\output|ast_sink_data[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \output|ast_sink_data[2]~feeder_combout\ = ( \ram|altsyncram_component|auto_generated|q_b\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ram|altsyncram_component|auto_generated|ALT_INV_q_b\(2),
	combout => \output|ast_sink_data[2]~feeder_combout\);

-- Location: FF_X25_Y4_N16
\output|ast_sink_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	d => \output|ast_sink_data[2]~feeder_combout\,
	ena => \output|ast_sink_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|ast_sink_data\(2));

-- Location: MLABCELL_X25_Y4_N21
\output|ast_sink_data[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \output|ast_sink_data[3]~feeder_combout\ = ( \ram|altsyncram_component|auto_generated|q_b\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ram|altsyncram_component|auto_generated|ALT_INV_q_b\(3),
	combout => \output|ast_sink_data[3]~feeder_combout\);

-- Location: FF_X25_Y4_N22
\output|ast_sink_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	d => \output|ast_sink_data[3]~feeder_combout\,
	ena => \output|ast_sink_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|ast_sink_data\(3));

-- Location: FF_X25_Y4_N52
\output|ast_sink_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	asdata => \ram|altsyncram_component|auto_generated|q_b\(4),
	sload => VCC,
	ena => \output|ast_sink_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|ast_sink_data\(4));

-- Location: FF_X25_Y4_N10
\output|ast_sink_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	asdata => \ram|altsyncram_component|auto_generated|q_b\(5),
	sload => VCC,
	ena => \output|ast_sink_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|ast_sink_data\(5));

-- Location: MLABCELL_X25_Y4_N3
\output|ast_sink_data[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \output|ast_sink_data[6]~feeder_combout\ = ( \ram|altsyncram_component|auto_generated|q_b\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ram|altsyncram_component|auto_generated|ALT_INV_q_b\(6),
	combout => \output|ast_sink_data[6]~feeder_combout\);

-- Location: FF_X25_Y4_N4
\output|ast_sink_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	d => \output|ast_sink_data[6]~feeder_combout\,
	ena => \output|ast_sink_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|ast_sink_data\(6));

-- Location: MLABCELL_X25_Y4_N42
\output|ast_sink_data[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \output|ast_sink_data[7]~feeder_combout\ = ( \ram|altsyncram_component|auto_generated|q_b\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ram|altsyncram_component|auto_generated|ALT_INV_q_b\(7),
	combout => \output|ast_sink_data[7]~feeder_combout\);

-- Location: FF_X25_Y4_N43
\output|ast_sink_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	d => \output|ast_sink_data[7]~feeder_combout\,
	ena => \output|ast_sink_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|ast_sink_data\(7));

-- Location: FF_X25_Y4_N37
\output|ast_sink_data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	asdata => \ram|altsyncram_component|auto_generated|q_b\(8),
	sload => VCC,
	ena => \output|ast_sink_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|ast_sink_data\(8));

-- Location: FF_X25_Y4_N7
\output|ast_sink_data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	asdata => \ram|altsyncram_component|auto_generated|q_b\(9),
	sload => VCC,
	ena => \output|ast_sink_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|ast_sink_data\(9));

-- Location: MLABCELL_X25_Y4_N33
\output|ast_sink_data[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \output|ast_sink_data[10]~feeder_combout\ = ( \ram|altsyncram_component|auto_generated|q_b\(10) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ram|altsyncram_component|auto_generated|ALT_INV_q_b\(10),
	combout => \output|ast_sink_data[10]~feeder_combout\);

-- Location: FF_X25_Y4_N34
\output|ast_sink_data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	d => \output|ast_sink_data[10]~feeder_combout\,
	ena => \output|ast_sink_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|ast_sink_data\(10));

-- Location: MLABCELL_X25_Y4_N48
\output|ast_sink_data[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \output|ast_sink_data[11]~feeder_combout\ = ( \ram|altsyncram_component|auto_generated|q_b\(11) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ram|altsyncram_component|auto_generated|ALT_INV_q_b\(11),
	combout => \output|ast_sink_data[11]~feeder_combout\);

-- Location: FF_X25_Y4_N49
\output|ast_sink_data[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	d => \output|ast_sink_data[11]~feeder_combout\,
	ena => \output|ast_sink_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|ast_sink_data\(11));

-- Location: IOIBUF_X58_Y0_N75
\din[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(12),
	o => \din[12]~input_o\);

-- Location: LABCELL_X27_Y3_N0
\entry|data_a[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \entry|data_a[12]~feeder_combout\ = ( \din[12]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_din[12]~input_o\,
	combout => \entry|data_a[12]~feeder_combout\);

-- Location: FF_X27_Y3_N2
\entry|data_a[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	d => \entry|data_a[12]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|data_a\(12));

-- Location: IOIBUF_X52_Y0_N35
\din[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(13),
	o => \din[13]~input_o\);

-- Location: FF_X27_Y4_N38
\entry|data_a[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	asdata => \din[13]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|data_a\(13));

-- Location: IOIBUF_X32_Y0_N52
\din[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(14),
	o => \din[14]~input_o\);

-- Location: FF_X27_Y3_N47
\entry|data_a[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	asdata => \din[14]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|data_a\(14));

-- Location: IOIBUF_X52_Y0_N52
\din[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(15),
	o => \din[15]~input_o\);

-- Location: LABCELL_X27_Y3_N24
\entry|data_a[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \entry|data_a[15]~feeder_combout\ = ( \din[15]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_din[15]~input_o\,
	combout => \entry|data_a[15]~feeder_combout\);

-- Location: FF_X27_Y3_N26
\entry|data_a[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	d => \entry|data_a[15]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|data_a\(15));

-- Location: IOIBUF_X32_Y0_N35
\din[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(16),
	o => \din[16]~input_o\);

-- Location: LABCELL_X27_Y3_N30
\entry|data_a[16]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \entry|data_a[16]~feeder_combout\ = ( \din[16]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_din[16]~input_o\,
	combout => \entry|data_a[16]~feeder_combout\);

-- Location: FF_X27_Y3_N32
\entry|data_a[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	d => \entry|data_a[16]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|data_a\(16));

-- Location: IOIBUF_X36_Y0_N18
\din[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(17),
	o => \din[17]~input_o\);

-- Location: FF_X27_Y3_N50
\entry|data_a[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	asdata => \din[17]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|data_a\(17));

-- Location: IOIBUF_X34_Y0_N92
\din[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(18),
	o => \din[18]~input_o\);

-- Location: LABCELL_X27_Y3_N57
\entry|data_a[18]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \entry|data_a[18]~feeder_combout\ = ( \din[18]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_din[18]~input_o\,
	combout => \entry|data_a[18]~feeder_combout\);

-- Location: FF_X27_Y3_N59
\entry|data_a[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	d => \entry|data_a[18]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|data_a\(18));

-- Location: IOIBUF_X34_Y0_N58
\din[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(19),
	o => \din[19]~input_o\);

-- Location: LABCELL_X27_Y3_N54
\entry|data_a[19]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \entry|data_a[19]~feeder_combout\ = ( \din[19]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_din[19]~input_o\,
	combout => \entry|data_a[19]~feeder_combout\);

-- Location: FF_X27_Y3_N55
\entry|data_a[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	d => \entry|data_a[19]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|data_a\(19));

-- Location: IOIBUF_X36_Y0_N52
\din[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(20),
	o => \din[20]~input_o\);

-- Location: LABCELL_X27_Y3_N42
\entry|data_a[20]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \entry|data_a[20]~feeder_combout\ = ( \din[20]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_din[20]~input_o\,
	combout => \entry|data_a[20]~feeder_combout\);

-- Location: FF_X27_Y3_N44
\entry|data_a[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	d => \entry|data_a[20]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|data_a\(20));

-- Location: IOIBUF_X34_Y0_N41
\din[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(21),
	o => \din[21]~input_o\);

-- Location: FF_X27_Y3_N1
\entry|data_a[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	asdata => \din[21]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|data_a\(21));

-- Location: M10K_X26_Y3_N0
\ram|altsyncram_component|auto_generated|ram_block1a12\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "in_sram:ram|altsyncram:altsyncram_component|altsyncram_du24:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "clear0",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 10,
	port_a_first_address => 0,
	port_a_first_bit_number => 12,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 40,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 10,
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "clear1",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 10,
	port_b_first_address => 0,
	port_b_first_bit_number => 12,
	port_b_last_address => 1023,
	port_b_logical_ram_depth => 1024,
	port_b_logical_ram_width => 40,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	port_b_write_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \entry|s_wren~q\,
	portare => GND,
	portbwe => GND,
	portbre => \output|s_rden~q\,
	clk0 => \clk_a~inputCLKENA0_outclk\,
	clk1 => \clk_b~inputCLKENA0_outclk\,
	clr0 => GND,
	clr1 => GND,
	portadatain => \ram|altsyncram_component|auto_generated|ram_block1a12_PORTADATAIN_bus\,
	portbdatain => \ram|altsyncram_component|auto_generated|ram_block1a12_PORTBDATAIN_bus\,
	portaaddr => \ram|altsyncram_component|auto_generated|ram_block1a12_PORTAADDR_bus\,
	portbaddr => \ram|altsyncram_component|auto_generated|ram_block1a12_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ram|altsyncram_component|auto_generated|ram_block1a12_PORTADATAOUT_bus\,
	portbdataout => \ram|altsyncram_component|auto_generated|ram_block1a12_PORTBDATAOUT_bus\);

-- Location: FF_X25_Y3_N4
\output|ast_sink_data[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	asdata => \ram|altsyncram_component|auto_generated|q_b\(12),
	sload => VCC,
	ena => \output|ast_sink_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|ast_sink_data\(12));

-- Location: MLABCELL_X25_Y3_N54
\output|ast_sink_data[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \output|ast_sink_data[13]~feeder_combout\ = ( \ram|altsyncram_component|auto_generated|q_b\(13) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ram|altsyncram_component|auto_generated|ALT_INV_q_b\(13),
	combout => \output|ast_sink_data[13]~feeder_combout\);

-- Location: FF_X25_Y3_N55
\output|ast_sink_data[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	d => \output|ast_sink_data[13]~feeder_combout\,
	ena => \output|ast_sink_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|ast_sink_data\(13));

-- Location: FF_X25_Y3_N13
\output|ast_sink_data[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	asdata => \ram|altsyncram_component|auto_generated|q_b\(14),
	sload => VCC,
	ena => \output|ast_sink_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|ast_sink_data\(14));

-- Location: FF_X25_Y3_N1
\output|ast_sink_data[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	asdata => \ram|altsyncram_component|auto_generated|q_b\(15),
	sload => VCC,
	ena => \output|ast_sink_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|ast_sink_data\(15));

-- Location: MLABCELL_X25_Y3_N33
\output|ast_sink_data[16]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \output|ast_sink_data[16]~feeder_combout\ = ( \ram|altsyncram_component|auto_generated|q_b\(16) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ram|altsyncram_component|auto_generated|ALT_INV_q_b\(16),
	combout => \output|ast_sink_data[16]~feeder_combout\);

-- Location: FF_X25_Y3_N34
\output|ast_sink_data[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	d => \output|ast_sink_data[16]~feeder_combout\,
	ena => \output|ast_sink_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|ast_sink_data\(16));

-- Location: FF_X25_Y3_N25
\output|ast_sink_data[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	asdata => \ram|altsyncram_component|auto_generated|q_b\(17),
	sload => VCC,
	ena => \output|ast_sink_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|ast_sink_data\(17));

-- Location: MLABCELL_X25_Y3_N42
\output|ast_sink_data[18]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \output|ast_sink_data[18]~feeder_combout\ = ( \ram|altsyncram_component|auto_generated|q_b\(18) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ram|altsyncram_component|auto_generated|ALT_INV_q_b\(18),
	combout => \output|ast_sink_data[18]~feeder_combout\);

-- Location: FF_X25_Y3_N44
\output|ast_sink_data[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	d => \output|ast_sink_data[18]~feeder_combout\,
	ena => \output|ast_sink_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|ast_sink_data\(18));

-- Location: MLABCELL_X25_Y3_N45
\output|ast_sink_data[19]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \output|ast_sink_data[19]~feeder_combout\ = ( \ram|altsyncram_component|auto_generated|q_b\(19) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ram|altsyncram_component|auto_generated|ALT_INV_q_b\(19),
	combout => \output|ast_sink_data[19]~feeder_combout\);

-- Location: FF_X25_Y3_N46
\output|ast_sink_data[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	d => \output|ast_sink_data[19]~feeder_combout\,
	ena => \output|ast_sink_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|ast_sink_data\(19));

-- Location: MLABCELL_X25_Y3_N48
\output|ast_sink_data[20]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \output|ast_sink_data[20]~feeder_combout\ = ( \ram|altsyncram_component|auto_generated|q_b\(20) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ram|altsyncram_component|auto_generated|ALT_INV_q_b\(20),
	combout => \output|ast_sink_data[20]~feeder_combout\);

-- Location: FF_X25_Y3_N49
\output|ast_sink_data[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	d => \output|ast_sink_data[20]~feeder_combout\,
	ena => \output|ast_sink_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|ast_sink_data\(20));

-- Location: MLABCELL_X25_Y3_N18
\output|ast_sink_data[21]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \output|ast_sink_data[21]~feeder_combout\ = ( \ram|altsyncram_component|auto_generated|q_b\(21) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ram|altsyncram_component|auto_generated|ALT_INV_q_b\(21),
	combout => \output|ast_sink_data[21]~feeder_combout\);

-- Location: FF_X25_Y3_N19
\output|ast_sink_data[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	d => \output|ast_sink_data[21]~feeder_combout\,
	ena => \output|ast_sink_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|ast_sink_data\(21));

-- Location: IOIBUF_X50_Y0_N75
\din[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(22),
	o => \din[22]~input_o\);

-- Location: FF_X27_Y4_N59
\entry|data_a[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	asdata => \din[22]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|data_a\(22));

-- Location: IOIBUF_X58_Y0_N41
\din[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(23),
	o => \din[23]~input_o\);

-- Location: LABCELL_X27_Y4_N15
\entry|data_a[23]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \entry|data_a[23]~feeder_combout\ = ( \din[23]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_din[23]~input_o\,
	combout => \entry|data_a[23]~feeder_combout\);

-- Location: FF_X27_Y4_N17
\entry|data_a[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	d => \entry|data_a[23]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|data_a\(23));

-- Location: IOIBUF_X62_Y0_N18
\din[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(24),
	o => \din[24]~input_o\);

-- Location: FF_X27_Y5_N31
\entry|data_a[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	asdata => \din[24]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|data_a\(24));

-- Location: IOIBUF_X38_Y0_N1
\din[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(25),
	o => \din[25]~input_o\);

-- Location: FF_X27_Y4_N8
\entry|data_a[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	asdata => \din[25]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|data_a\(25));

-- Location: IOIBUF_X50_Y0_N58
\din[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(26),
	o => \din[26]~input_o\);

-- Location: LABCELL_X27_Y4_N27
\entry|data_a[26]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \entry|data_a[26]~feeder_combout\ = ( \din[26]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_din[26]~input_o\,
	combout => \entry|data_a[26]~feeder_combout\);

-- Location: FF_X27_Y4_N29
\entry|data_a[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	d => \entry|data_a[26]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|data_a\(26));

-- Location: IOIBUF_X4_Y0_N18
\din[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(27),
	o => \din[27]~input_o\);

-- Location: FF_X25_Y5_N2
\entry|data_a[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	asdata => \din[27]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|data_a\(27));

-- Location: IOIBUF_X52_Y0_N18
\din[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(28),
	o => \din[28]~input_o\);

-- Location: MLABCELL_X25_Y5_N18
\entry|data_a[28]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \entry|data_a[28]~feeder_combout\ = ( \din[28]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_din[28]~input_o\,
	combout => \entry|data_a[28]~feeder_combout\);

-- Location: FF_X25_Y5_N20
\entry|data_a[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	d => \entry|data_a[28]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|data_a\(28));

-- Location: IOIBUF_X38_Y0_N35
\din[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(29),
	o => \din[29]~input_o\);

-- Location: FF_X27_Y4_N53
\entry|data_a[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	asdata => \din[29]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|data_a\(29));

-- Location: IOIBUF_X66_Y0_N75
\din[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(30),
	o => \din[30]~input_o\);

-- Location: FF_X27_Y5_N2
\entry|data_a[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	asdata => \din[30]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|data_a\(30));

-- Location: IOIBUF_X60_Y0_N35
\din[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din(31),
	o => \din[31]~input_o\);

-- Location: FF_X27_Y5_N37
\entry|data_a[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_a~inputCLKENA0_outclk\,
	asdata => \din[31]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \entry|u_data_addr~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \entry|data_a\(31));

-- Location: M10K_X26_Y5_N0
\ram|altsyncram_component|auto_generated|ram_block1a22\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "in_sram:ram|altsyncram:altsyncram_component|altsyncram_du24:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 10,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "clear0",
	port_a_data_out_clock => "clock0",
	port_a_data_width => 10,
	port_a_first_address => 0,
	port_a_first_bit_number => 22,
	port_a_last_address => 1023,
	port_a_logical_ram_depth => 1024,
	port_a_logical_ram_width => 40,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 10,
	port_b_data_in_clock => "clock1",
	port_b_data_out_clear => "clear1",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 10,
	port_b_first_address => 0,
	port_b_first_bit_number => 22,
	port_b_last_address => 1023,
	port_b_logical_ram_depth => 1024,
	port_b_logical_ram_width => 40,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	port_b_write_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \entry|s_wren~q\,
	portare => GND,
	portbwe => GND,
	portbre => \output|s_rden~q\,
	clk0 => \clk_a~inputCLKENA0_outclk\,
	clk1 => \clk_b~inputCLKENA0_outclk\,
	clr0 => GND,
	clr1 => GND,
	portadatain => \ram|altsyncram_component|auto_generated|ram_block1a22_PORTADATAIN_bus\,
	portbdatain => \ram|altsyncram_component|auto_generated|ram_block1a22_PORTBDATAIN_bus\,
	portaaddr => \ram|altsyncram_component|auto_generated|ram_block1a22_PORTAADDR_bus\,
	portbaddr => \ram|altsyncram_component|auto_generated|ram_block1a22_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \ram|altsyncram_component|auto_generated|ram_block1a22_PORTADATAOUT_bus\,
	portbdataout => \ram|altsyncram_component|auto_generated|ram_block1a22_PORTBDATAOUT_bus\);

-- Location: LABCELL_X29_Y5_N48
\output|ast_sink_data[22]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \output|ast_sink_data[22]~feeder_combout\ = ( \ram|altsyncram_component|auto_generated|q_b\(22) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ram|altsyncram_component|auto_generated|ALT_INV_q_b\(22),
	combout => \output|ast_sink_data[22]~feeder_combout\);

-- Location: FF_X29_Y5_N49
\output|ast_sink_data[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	d => \output|ast_sink_data[22]~feeder_combout\,
	ena => \output|ast_sink_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|ast_sink_data\(22));

-- Location: FF_X25_Y5_N31
\output|ast_sink_data[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	asdata => \ram|altsyncram_component|auto_generated|q_b\(23),
	sload => VCC,
	ena => \output|ast_sink_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|ast_sink_data\(23));

-- Location: LABCELL_X29_Y5_N54
\output|ast_sink_data[24]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \output|ast_sink_data[24]~feeder_combout\ = ( \ram|altsyncram_component|auto_generated|q_b\(24) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ram|altsyncram_component|auto_generated|ALT_INV_q_b\(24),
	combout => \output|ast_sink_data[24]~feeder_combout\);

-- Location: FF_X29_Y5_N55
\output|ast_sink_data[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	d => \output|ast_sink_data[24]~feeder_combout\,
	ena => \output|ast_sink_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|ast_sink_data\(24));

-- Location: FF_X25_Y5_N52
\output|ast_sink_data[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	asdata => \ram|altsyncram_component|auto_generated|q_b\(25),
	sload => VCC,
	ena => \output|ast_sink_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|ast_sink_data\(25));

-- Location: FF_X25_Y5_N13
\output|ast_sink_data[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	asdata => \ram|altsyncram_component|auto_generated|q_b\(26),
	sload => VCC,
	ena => \output|ast_sink_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|ast_sink_data\(26));

-- Location: FF_X25_Y5_N16
\output|ast_sink_data[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	asdata => \ram|altsyncram_component|auto_generated|q_b\(27),
	sload => VCC,
	ena => \output|ast_sink_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|ast_sink_data\(27));

-- Location: FF_X25_Y5_N34
\output|ast_sink_data[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	asdata => \ram|altsyncram_component|auto_generated|q_b\(28),
	sload => VCC,
	ena => \output|ast_sink_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|ast_sink_data\(28));

-- Location: FF_X25_Y5_N49
\output|ast_sink_data[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	asdata => \ram|altsyncram_component|auto_generated|q_b\(29),
	sload => VCC,
	ena => \output|ast_sink_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|ast_sink_data\(29));

-- Location: LABCELL_X29_Y5_N15
\output|ast_sink_data[30]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \output|ast_sink_data[30]~feeder_combout\ = ( \ram|altsyncram_component|auto_generated|q_b\(30) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ram|altsyncram_component|auto_generated|ALT_INV_q_b\(30),
	combout => \output|ast_sink_data[30]~feeder_combout\);

-- Location: FF_X29_Y5_N16
\output|ast_sink_data[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	d => \output|ast_sink_data[30]~feeder_combout\,
	ena => \output|ast_sink_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|ast_sink_data\(30));

-- Location: LABCELL_X24_Y5_N39
\output|ast_sink_data[31]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \output|ast_sink_data[31]~feeder_combout\ = ( \ram|altsyncram_component|auto_generated|q_b\(31) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ram|altsyncram_component|auto_generated|ALT_INV_q_b\(31),
	combout => \output|ast_sink_data[31]~feeder_combout\);

-- Location: FF_X24_Y5_N41
\output|ast_sink_data[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	d => \output|ast_sink_data[31]~feeder_combout\,
	ena => \output|ast_sink_data[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|ast_sink_data\(31));

-- Location: IOIBUF_X26_Y0_N58
\ast_source_channel[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ast_source_channel(0),
	o => \ast_source_channel[0]~input_o\);

-- Location: FF_X25_Y2_N16
\output|s_channel[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	asdata => \ast_source_channel[0]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \output|ast_sink_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|s_channel\(0));

-- Location: IOIBUF_X2_Y0_N41
\ast_source_channel[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ast_source_channel(1),
	o => \ast_source_channel[1]~input_o\);

-- Location: FF_X24_Y2_N13
\output|s_channel[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	asdata => \ast_source_channel[1]~input_o\,
	clrn => \reset~input_o\,
	sload => VCC,
	ena => \output|ast_sink_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|s_channel\(1));

-- Location: IOIBUF_X4_Y0_N52
\ast_source_channel[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ast_source_channel(2),
	o => \ast_source_channel[2]~input_o\);

-- Location: LABCELL_X24_Y2_N30
\output|s_channel[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \output|s_channel[2]~feeder_combout\ = ( \ast_source_channel[2]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_ast_source_channel[2]~input_o\,
	combout => \output|s_channel[2]~feeder_combout\);

-- Location: FF_X24_Y2_N31
\output|s_channel[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	d => \output|s_channel[2]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \output|ast_sink_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|s_channel\(2));

-- Location: IOIBUF_X2_Y0_N92
\ast_source_channel[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ast_source_channel(3),
	o => \ast_source_channel[3]~input_o\);

-- Location: LABCELL_X24_Y2_N27
\output|s_channel[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \output|s_channel[3]~feeder_combout\ = ( \ast_source_channel[3]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_ast_source_channel[3]~input_o\,
	combout => \output|s_channel[3]~feeder_combout\);

-- Location: FF_X24_Y2_N28
\output|s_channel[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	d => \output|s_channel[3]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \output|ast_sink_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|s_channel\(3));

-- Location: IOIBUF_X28_Y0_N35
\ast_source_channel[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ast_source_channel(4),
	o => \ast_source_channel[4]~input_o\);

-- Location: MLABCELL_X25_Y2_N6
\output|s_channel[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \output|s_channel[4]~feeder_combout\ = ( \ast_source_channel[4]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_ast_source_channel[4]~input_o\,
	combout => \output|s_channel[4]~feeder_combout\);

-- Location: FF_X25_Y2_N7
\output|s_channel[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	d => \output|s_channel[4]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \output|ast_sink_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|s_channel\(4));

-- Location: IOIBUF_X26_Y0_N75
\ast_source_channel[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ast_source_channel(5),
	o => \ast_source_channel[5]~input_o\);

-- Location: MLABCELL_X25_Y2_N3
\output|s_channel[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \output|s_channel[5]~feeder_combout\ = ( \ast_source_channel[5]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_ast_source_channel[5]~input_o\,
	combout => \output|s_channel[5]~feeder_combout\);

-- Location: FF_X25_Y2_N4
\output|s_channel[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_b~inputCLKENA0_outclk\,
	d => \output|s_channel[5]~feeder_combout\,
	clrn => \reset~input_o\,
	ena => \output|ast_sink_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \output|s_channel\(5));
END structure;


