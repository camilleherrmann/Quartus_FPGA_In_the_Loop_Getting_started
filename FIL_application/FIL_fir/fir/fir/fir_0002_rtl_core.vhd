-- ------------------------------------------------------------------------- 
-- High Level Design Compiler for Intel(R) FPGAs Version 18.1 (Release Build #625)
-- Quartus Prime development tool and MATLAB/Simulink Interface
-- 
-- Legal Notice: Copyright 2018 Intel Corporation.  All rights reserved.
-- Your use of  Intel Corporation's design tools,  logic functions and other
-- software and  tools, and its AMPP partner logic functions, and any output
-- files any  of the foregoing (including  device programming  or simulation
-- files), and  any associated  documentation  or information  are expressly
-- subject  to the terms and  conditions of the  Intel FPGA Software License
-- Agreement, Intel MegaCore Function License Agreement, or other applicable
-- license agreement,  including,  without limitation,  that your use is for
-- the  sole  purpose of  programming  logic devices  manufactured by  Intel
-- and  sold by Intel  or its authorized  distributors. Please refer  to the
-- applicable agreement for further details.
-- ---------------------------------------------------------------------------

-- VHDL created from fir_0002_rtl_core
-- VHDL created on Fri Jan 06 14:24:21 2023


library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;
use IEEE.MATH_REAL.all;
use std.TextIO.all;
use work.dspba_library_package.all;

LIBRARY altera_mf;
USE altera_mf.altera_mf_components.all;
LIBRARY altera_lnsim;
USE altera_lnsim.altera_lnsim_components.altera_syncram;
LIBRARY lpm;
USE lpm.lpm_components.all;

entity fir_0002_rtl_core is
    port (
        xIn_v : in std_logic_vector(0 downto 0);  -- sfix1
        xIn_c : in std_logic_vector(7 downto 0);  -- sfix8
        xIn_0 : in std_logic_vector(31 downto 0);  -- sfix32
        enable_i : in std_logic_vector(0 downto 0);  -- sfix1
        xOut_v : out std_logic_vector(0 downto 0);  -- ufix1
        xOut_c : out std_logic_vector(7 downto 0);  -- ufix8
        xOut_0 : out std_logic_vector(49 downto 0);  -- sfix50
        clk : in std_logic;
        areset : in std_logic
    );
end fir_0002_rtl_core;

architecture normal of fir_0002_rtl_core is

    attribute altera_attribute : string;
    attribute altera_attribute of normal : architecture is "-name AUTO_SHIFT_REGISTER_RECOGNITION OFF; -name PHYSICAL_SYNTHESIS_REGISTER_DUPLICATION ON; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 10037; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 15400; -name MESSAGE_DISABLE 14130; -name MESSAGE_DISABLE 10036; -name MESSAGE_DISABLE 12020; -name MESSAGE_DISABLE 12030; -name MESSAGE_DISABLE 12010; -name MESSAGE_DISABLE 12110; -name MESSAGE_DISABLE 14320; -name MESSAGE_DISABLE 13410; -name MESSAGE_DISABLE 113007";
    
    signal GND_q : STD_LOGIC_VECTOR (0 downto 0);
    signal VCC_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_in0_m0_wi0_wo0_assign_id1_q_13_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_run_count : STD_LOGIC_VECTOR (1 downto 0);
    signal u0_m0_wo0_run_preEnaQ : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_run_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_run_out : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_run_enableQ : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_run_ctrl : STD_LOGIC_VECTOR (2 downto 0);
    signal u0_m0_wo0_memread_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_compute_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_u0_m0_wo0_compute_q_15_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_u0_m0_wo0_compute_q_16_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_ra0_count0_inner_q : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_wi0_r0_ra0_count0_inner_i : SIGNED (6 downto 0);
    attribute preserve : boolean;
    attribute preserve of u0_m0_wo0_wi0_r0_ra0_count0_inner_i : signal is true;
    signal u0_m0_wo0_wi0_r0_ra0_count0_q : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_wi0_r0_ra0_count0_i : UNSIGNED (5 downto 0);
    attribute preserve of u0_m0_wo0_wi0_r0_ra0_count0_i : signal is true;
    signal u0_m0_wo0_wi0_r0_ra0_count1_lutreg_q : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_wi0_r0_ra0_count1_q : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi0_r0_ra0_count1_i : UNSIGNED (5 downto 0);
    attribute preserve of u0_m0_wo0_wi0_r0_ra0_count1_i : signal is true;
    signal u0_m0_wo0_wi0_r0_ra0_count1_eq : std_logic;
    attribute preserve of u0_m0_wo0_wi0_r0_ra0_count1_eq : signal is true;
    signal u0_m0_wo0_wi0_r0_ra0_add_0_0_a : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_ra0_add_0_0_b : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_ra0_add_0_0_o : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_ra0_add_0_0_q : STD_LOGIC_VECTOR (7 downto 0);
    signal u0_m0_wo0_wi0_r0_wa0_q : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi0_r0_wa0_i : UNSIGNED (5 downto 0);
    attribute preserve of u0_m0_wo0_wi0_r0_wa0_i : signal is true;
    signal u0_m0_wo0_wi0_r0_memr0_reset0 : std_logic;
    signal u0_m0_wo0_wi0_r0_memr0_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_wi0_r0_memr0_aa : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi0_r0_memr0_ab : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi0_r0_memr0_iq : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_wi0_r0_memr0_q : STD_LOGIC_VECTOR (31 downto 0);
    signal u0_m0_wo0_ca0_q : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_ca0_i : UNSIGNED (5 downto 0);
    attribute preserve of u0_m0_wo0_ca0_i : signal is true;
    signal u0_m0_wo0_ca0_eq : std_logic;
    attribute preserve of u0_m0_wo0_ca0_eq : signal is true;
    signal u0_m0_wo0_cm0_q : STD_LOGIC_VECTOR (11 downto 0);
    signal u0_m0_wo0_aseq_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_aseq_eq : std_logic;
    signal u0_m0_wo0_accum_a : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_accum_b : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_accum_i : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_accum_o : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_accum_q : STD_LOGIC_VECTOR (49 downto 0);
    signal u0_m0_wo0_oseq_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_oseq_eq : std_logic;
    signal u0_m0_wo0_oseq_gated_reg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_result_add_0_0_a : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_result_add_0_0_b : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_result_add_0_0_o : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_result_add_0_0_q : STD_LOGIC_VECTOR (44 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_im0_cma_reset : std_logic;
    type u0_m0_wo0_mtree_mult1_0_im0_cma_a0type is array(NATURAL range <>) of UNSIGNED(17 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_im0_cma_a0 : u0_m0_wo0_mtree_mult1_0_im0_cma_a0type(0 to 0);
    attribute preserve of u0_m0_wo0_mtree_mult1_0_im0_cma_a0 : signal is true;
    type u0_m0_wo0_mtree_mult1_0_im0_cma_c0type is array(NATURAL range <>) of SIGNED(11 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_im0_cma_c0 : u0_m0_wo0_mtree_mult1_0_im0_cma_c0type(0 to 0);
    attribute preserve of u0_m0_wo0_mtree_mult1_0_im0_cma_c0 : signal is true;
    type u0_m0_wo0_mtree_mult1_0_im0_cma_ltype is array(NATURAL range <>) of SIGNED(18 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_im0_cma_l : u0_m0_wo0_mtree_mult1_0_im0_cma_ltype(0 to 0);
    type u0_m0_wo0_mtree_mult1_0_im0_cma_ptype is array(NATURAL range <>) of SIGNED(30 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_im0_cma_p : u0_m0_wo0_mtree_mult1_0_im0_cma_ptype(0 to 0);
    signal u0_m0_wo0_mtree_mult1_0_im0_cma_u : u0_m0_wo0_mtree_mult1_0_im0_cma_ptype(0 to 0);
    signal u0_m0_wo0_mtree_mult1_0_im0_cma_w : u0_m0_wo0_mtree_mult1_0_im0_cma_ptype(0 to 0);
    signal u0_m0_wo0_mtree_mult1_0_im0_cma_x : u0_m0_wo0_mtree_mult1_0_im0_cma_ptype(0 to 0);
    signal u0_m0_wo0_mtree_mult1_0_im0_cma_y : u0_m0_wo0_mtree_mult1_0_im0_cma_ptype(0 to 0);
    signal u0_m0_wo0_mtree_mult1_0_im0_cma_s : u0_m0_wo0_mtree_mult1_0_im0_cma_ptype(0 to 0);
    signal u0_m0_wo0_mtree_mult1_0_im0_cma_qq : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_im0_cma_q : STD_LOGIC_VECTOR (29 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_im0_cma_ena0 : std_logic;
    signal u0_m0_wo0_mtree_mult1_0_im0_cma_ena1 : std_logic;
    signal u0_m0_wo0_mtree_mult1_0_im3_cma_reset : std_logic;
    type u0_m0_wo0_mtree_mult1_0_im3_cma_a0type is array(NATURAL range <>) of SIGNED(13 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_im3_cma_a0 : u0_m0_wo0_mtree_mult1_0_im3_cma_a0type(0 to 0);
    attribute preserve of u0_m0_wo0_mtree_mult1_0_im3_cma_a0 : signal is true;
    signal u0_m0_wo0_mtree_mult1_0_im3_cma_c0 : u0_m0_wo0_mtree_mult1_0_im0_cma_c0type(0 to 0);
    attribute preserve of u0_m0_wo0_mtree_mult1_0_im3_cma_c0 : signal is true;
    type u0_m0_wo0_mtree_mult1_0_im3_cma_ptype is array(NATURAL range <>) of SIGNED(25 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_im3_cma_p : u0_m0_wo0_mtree_mult1_0_im3_cma_ptype(0 to 0);
    signal u0_m0_wo0_mtree_mult1_0_im3_cma_u : u0_m0_wo0_mtree_mult1_0_im3_cma_ptype(0 to 0);
    signal u0_m0_wo0_mtree_mult1_0_im3_cma_w : u0_m0_wo0_mtree_mult1_0_im3_cma_ptype(0 to 0);
    signal u0_m0_wo0_mtree_mult1_0_im3_cma_x : u0_m0_wo0_mtree_mult1_0_im3_cma_ptype(0 to 0);
    signal u0_m0_wo0_mtree_mult1_0_im3_cma_y : u0_m0_wo0_mtree_mult1_0_im3_cma_ptype(0 to 0);
    signal u0_m0_wo0_mtree_mult1_0_im3_cma_s : u0_m0_wo0_mtree_mult1_0_im3_cma_ptype(0 to 0);
    signal u0_m0_wo0_mtree_mult1_0_im3_cma_qq : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_im3_cma_q : STD_LOGIC_VECTOR (25 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_im3_cma_ena0 : std_logic;
    signal u0_m0_wo0_mtree_mult1_0_im3_cma_ena1 : std_logic;
    signal d_xIn_0_13_mem_reset0 : std_logic;
    signal d_xIn_0_13_mem_ia : STD_LOGIC_VECTOR (31 downto 0);
    signal d_xIn_0_13_mem_aa : STD_LOGIC_VECTOR (0 downto 0);
    signal d_xIn_0_13_mem_ab : STD_LOGIC_VECTOR (0 downto 0);
    signal d_xIn_0_13_mem_iq : STD_LOGIC_VECTOR (31 downto 0);
    signal d_xIn_0_13_mem_q : STD_LOGIC_VECTOR (31 downto 0);
    signal d_xIn_0_13_rdcnt_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_xIn_0_13_rdcnt_i : UNSIGNED (0 downto 0);
    attribute preserve of d_xIn_0_13_rdcnt_i : signal is true;
    signal d_xIn_0_13_wraddr_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_xIn_0_13_cmpReg_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_xIn_0_13_sticky_ena_q : STD_LOGIC_VECTOR (0 downto 0);
    attribute dont_merge : boolean;
    attribute dont_merge of d_xIn_0_13_sticky_ena_q : signal is true;
    signal input_valid_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_ra0_count0_run_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_oseq_gated_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_xIn_0_13_notEnable_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_xIn_0_13_nor_q : STD_LOGIC_VECTOR (0 downto 0);
    signal d_xIn_0_13_enaAnd_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_wi0_r0_ra0_count1_lut_q : STD_LOGIC_VECTOR (6 downto 0);
    signal u0_m0_wo0_wi0_r0_ra0_resize_in : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_wi0_r0_ra0_resize_b : STD_LOGIC_VECTOR (5 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_bs2_merged_bit_select_b : STD_LOGIC_VECTOR (17 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_bs2_merged_bit_select_c : STD_LOGIC_VECTOR (13 downto 0);
    signal out0_m0_wo0_lineup_select_delay_0_q : STD_LOGIC_VECTOR (0 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_align_7_q : STD_LOGIC_VECTOR (43 downto 0);
    signal u0_m0_wo0_mtree_mult1_0_align_7_qint : STD_LOGIC_VECTOR (43 downto 0);
    signal out0_m0_wo0_assign_id3_q : STD_LOGIC_VECTOR (0 downto 0);

begin


    -- VCC(CONSTANT,1)@0
    VCC_q <= "1";

    -- input_valid(LOGICAL,3)@10
    input_valid_q <= xIn_v and enable_i;

    -- u0_m0_wo0_run(ENABLEGENERATOR,14)@10 + 2
    u0_m0_wo0_run_ctrl <= u0_m0_wo0_run_out & input_valid_q & u0_m0_wo0_run_enableQ;
    u0_m0_wo0_run_clkproc: PROCESS (clk, areset)
        variable u0_m0_wo0_run_enable_c : SIGNED(6 downto 0);
        variable u0_m0_wo0_run_inc : SIGNED(1 downto 0);
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_run_q <= "0";
            u0_m0_wo0_run_enable_c := TO_SIGNED(35, 7);
            u0_m0_wo0_run_enableQ <= "0";
            u0_m0_wo0_run_count <= "00";
            u0_m0_wo0_run_inc := (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_run_out = "1") THEN
                IF (u0_m0_wo0_run_enable_c(6) = '1') THEN
                    u0_m0_wo0_run_enable_c := u0_m0_wo0_run_enable_c - (-36);
                ELSE
                    u0_m0_wo0_run_enable_c := u0_m0_wo0_run_enable_c + (-1);
                END IF;
                u0_m0_wo0_run_enableQ <= STD_LOGIC_VECTOR(u0_m0_wo0_run_enable_c(6 downto 6));
            ELSE
                u0_m0_wo0_run_enableQ <= "0";
            END IF;
            CASE (u0_m0_wo0_run_ctrl) IS
                WHEN "000" | "001" => u0_m0_wo0_run_inc := "00";
                WHEN "010" | "011" => u0_m0_wo0_run_inc := "11";
                WHEN "100" => u0_m0_wo0_run_inc := "00";
                WHEN "101" => u0_m0_wo0_run_inc := "01";
                WHEN "110" => u0_m0_wo0_run_inc := "11";
                WHEN "111" => u0_m0_wo0_run_inc := "00";
                WHEN OTHERS => 
            END CASE;
            u0_m0_wo0_run_count <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_run_count) + SIGNED(u0_m0_wo0_run_inc));
            u0_m0_wo0_run_q <= u0_m0_wo0_run_out;
        END IF;
    END PROCESS;
    u0_m0_wo0_run_preEnaQ <= u0_m0_wo0_run_count(1 downto 1);
    u0_m0_wo0_run_out <= u0_m0_wo0_run_preEnaQ and VCC_q;

    -- u0_m0_wo0_memread(DELAY,15)@12
    u0_m0_wo0_memread : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_run_q, xout => u0_m0_wo0_memread_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_compute(DELAY,17)@12
    u0_m0_wo0_compute : dspba_delay
    GENERIC MAP ( width => 1, depth => 2, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_memread_q, xout => u0_m0_wo0_compute_q, clk => clk, aclr => areset );

    -- d_u0_m0_wo0_compute_q_15(DELAY,62)@12 + 3
    d_u0_m0_wo0_compute_q_15 : dspba_delay
    GENERIC MAP ( width => 1, depth => 3, reset_kind => "ASYNC" )
    PORT MAP ( xin => u0_m0_wo0_compute_q, xout => d_u0_m0_wo0_compute_q_15_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_aseq(SEQUENCE,36)@15 + 1
    u0_m0_wo0_aseq_clkproc: PROCESS (clk, areset)
        variable u0_m0_wo0_aseq_c : SIGNED(7 downto 0);
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_aseq_c := "00000000";
            u0_m0_wo0_aseq_q <= "0";
            u0_m0_wo0_aseq_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_u0_m0_wo0_compute_q_15_q = "1") THEN
                IF (u0_m0_wo0_aseq_c = "00000000") THEN
                    u0_m0_wo0_aseq_eq <= '1';
                ELSE
                    u0_m0_wo0_aseq_eq <= '0';
                END IF;
                IF (u0_m0_wo0_aseq_eq = '1') THEN
                    u0_m0_wo0_aseq_c := u0_m0_wo0_aseq_c + 36;
                ELSE
                    u0_m0_wo0_aseq_c := u0_m0_wo0_aseq_c - 1;
                END IF;
                u0_m0_wo0_aseq_q <= STD_LOGIC_VECTOR(u0_m0_wo0_aseq_c(7 downto 7));
            END IF;
        END IF;
    END PROCESS;

    -- d_u0_m0_wo0_compute_q_16(DELAY,63)@15 + 1
    d_u0_m0_wo0_compute_q_16 : dspba_delay
    GENERIC MAP ( width => 1, depth => 1, reset_kind => "ASYNC" )
    PORT MAP ( xin => d_u0_m0_wo0_compute_q_15_q, xout => d_u0_m0_wo0_compute_q_16_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_ca0(COUNTER,30)@12
    -- low=0, high=36, step=1, init=0
    u0_m0_wo0_ca0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_ca0_i <= TO_UNSIGNED(0, 6);
            u0_m0_wo0_ca0_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_compute_q = "1") THEN
                IF (u0_m0_wo0_ca0_i = TO_UNSIGNED(35, 6)) THEN
                    u0_m0_wo0_ca0_eq <= '1';
                ELSE
                    u0_m0_wo0_ca0_eq <= '0';
                END IF;
                IF (u0_m0_wo0_ca0_eq = '1') THEN
                    u0_m0_wo0_ca0_i <= u0_m0_wo0_ca0_i + 28;
                ELSE
                    u0_m0_wo0_ca0_i <= u0_m0_wo0_ca0_i + 1;
                END IF;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_ca0_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_ca0_i, 6)));

    -- u0_m0_wo0_cm0(LOOKUP,34)@12 + 1
    u0_m0_wo0_cm0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_cm0_q <= "000010010000";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE (u0_m0_wo0_ca0_q) IS
                WHEN "000000" => u0_m0_wo0_cm0_q <= "000010010000";
                WHEN "000001" => u0_m0_wo0_cm0_q <= "000001101100";
                WHEN "000010" => u0_m0_wo0_cm0_q <= "000000000000";
                WHEN "000011" => u0_m0_wo0_cm0_q <= "111110000110";
                WHEN "000100" => u0_m0_wo0_cm0_q <= "111101000110";
                WHEN "000101" => u0_m0_wo0_cm0_q <= "111101110011";
                WHEN "000110" => u0_m0_wo0_cm0_q <= "000000000000";
                WHEN "000111" => u0_m0_wo0_cm0_q <= "000010100111";
                WHEN "001000" => u0_m0_wo0_cm0_q <= "000100000100";
                WHEN "001001" => u0_m0_wo0_cm0_q <= "000011001100";
                WHEN "001010" => u0_m0_wo0_cm0_q <= "000000000000";
                WHEN "001011" => u0_m0_wo0_cm0_q <= "111011111001";
                WHEN "001100" => u0_m0_wo0_cm0_q <= "111001001110";
                WHEN "001101" => u0_m0_wo0_cm0_q <= "111010010000";
                WHEN "001110" => u0_m0_wo0_cm0_q <= "000000000000";
                WHEN "001111" => u0_m0_wo0_cm0_q <= "001001100110";
                WHEN "010000" => u0_m0_wo0_cm0_q <= "010100010111";
                WHEN "010001" => u0_m0_wo0_cm0_q <= "011100110010";
                WHEN "010010" => u0_m0_wo0_cm0_q <= "011111111111";
                WHEN "010011" => u0_m0_wo0_cm0_q <= "011100110010";
                WHEN "010100" => u0_m0_wo0_cm0_q <= "010100010111";
                WHEN "010101" => u0_m0_wo0_cm0_q <= "001001100110";
                WHEN "010110" => u0_m0_wo0_cm0_q <= "000000000000";
                WHEN "010111" => u0_m0_wo0_cm0_q <= "111010010000";
                WHEN "011000" => u0_m0_wo0_cm0_q <= "111001001110";
                WHEN "011001" => u0_m0_wo0_cm0_q <= "111011111001";
                WHEN "011010" => u0_m0_wo0_cm0_q <= "000000000000";
                WHEN "011011" => u0_m0_wo0_cm0_q <= "000011001100";
                WHEN "011100" => u0_m0_wo0_cm0_q <= "000100000100";
                WHEN "011101" => u0_m0_wo0_cm0_q <= "000010100111";
                WHEN "011110" => u0_m0_wo0_cm0_q <= "000000000000";
                WHEN "011111" => u0_m0_wo0_cm0_q <= "111101110011";
                WHEN "100000" => u0_m0_wo0_cm0_q <= "111101000110";
                WHEN "100001" => u0_m0_wo0_cm0_q <= "111110000110";
                WHEN "100010" => u0_m0_wo0_cm0_q <= "000000000000";
                WHEN "100011" => u0_m0_wo0_cm0_q <= "000001101100";
                WHEN "100100" => u0_m0_wo0_cm0_q <= "000010010000";
                WHEN OTHERS => -- unreachable
                               u0_m0_wo0_cm0_q <= (others => '-');
            END CASE;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi0_r0_ra0_count1(COUNTER,25)@12
    -- low=0, high=36, step=1, init=1
    u0_m0_wo0_wi0_r0_ra0_count1_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_r0_ra0_count1_i <= TO_UNSIGNED(1, 6);
            u0_m0_wo0_wi0_r0_ra0_count1_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_memread_q = "1") THEN
                IF (u0_m0_wo0_wi0_r0_ra0_count1_i = TO_UNSIGNED(35, 6)) THEN
                    u0_m0_wo0_wi0_r0_ra0_count1_eq <= '1';
                ELSE
                    u0_m0_wo0_wi0_r0_ra0_count1_eq <= '0';
                END IF;
                IF (u0_m0_wo0_wi0_r0_ra0_count1_eq = '1') THEN
                    u0_m0_wo0_wi0_r0_ra0_count1_i <= u0_m0_wo0_wi0_r0_ra0_count1_i + 28;
                ELSE
                    u0_m0_wo0_wi0_r0_ra0_count1_i <= u0_m0_wo0_wi0_r0_ra0_count1_i + 1;
                END IF;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_wi0_r0_ra0_count1_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_wi0_r0_ra0_count1_i, 6)));

    -- u0_m0_wo0_wi0_r0_ra0_count1_lut(LOOKUP,23)@12
    u0_m0_wo0_wi0_r0_ra0_count1_lut_combproc: PROCESS (u0_m0_wo0_wi0_r0_ra0_count1_q)
    BEGIN
        -- Begin reserved scope level
        CASE (u0_m0_wo0_wi0_r0_ra0_count1_q) IS
            WHEN "000000" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "0100101";
            WHEN "000001" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "0100110";
            WHEN "000010" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "0100111";
            WHEN "000011" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "0101000";
            WHEN "000100" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "0101001";
            WHEN "000101" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "0101010";
            WHEN "000110" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "0101011";
            WHEN "000111" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "0101100";
            WHEN "001000" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "0101101";
            WHEN "001001" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "0101110";
            WHEN "001010" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "0101111";
            WHEN "001011" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "0110000";
            WHEN "001100" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "0110001";
            WHEN "001101" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "0110010";
            WHEN "001110" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "0110011";
            WHEN "001111" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "0110100";
            WHEN "010000" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "0110101";
            WHEN "010001" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "0110110";
            WHEN "010010" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "0110111";
            WHEN "010011" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "0111000";
            WHEN "010100" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "0111001";
            WHEN "010101" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "0111010";
            WHEN "010110" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "0111011";
            WHEN "010111" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "0111100";
            WHEN "011000" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "0111101";
            WHEN "011001" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "0111110";
            WHEN "011010" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "0111111";
            WHEN "011011" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "0000000";
            WHEN "011100" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "0000001";
            WHEN "011101" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "0000010";
            WHEN "011110" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "0000011";
            WHEN "011111" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "0000100";
            WHEN "100000" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "0000101";
            WHEN "100001" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "0000110";
            WHEN "100010" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "0000111";
            WHEN "100011" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "0001000";
            WHEN "100100" => u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= "0001001";
            WHEN OTHERS => -- unreachable
                           u0_m0_wo0_wi0_r0_ra0_count1_lut_q <= (others => '-');
        END CASE;
        -- End reserved scope level
    END PROCESS;

    -- u0_m0_wo0_wi0_r0_ra0_count1_lutreg(REG,24)@12
    u0_m0_wo0_wi0_r0_ra0_count1_lutreg_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_r0_ra0_count1_lutreg_q <= "0100101";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_memread_q = "1") THEN
                u0_m0_wo0_wi0_r0_ra0_count1_lutreg_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_ra0_count1_lut_q);
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_wi0_r0_ra0_count0_inner(COUNTER,20)@12
    -- low=-1, high=35, step=-1, init=35
    u0_m0_wo0_wi0_r0_ra0_count0_inner_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_r0_ra0_count0_inner_i <= TO_SIGNED(35, 7);
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_memread_q = "1") THEN
                IF (u0_m0_wo0_wi0_r0_ra0_count0_inner_i(6 downto 6) = "1") THEN
                    u0_m0_wo0_wi0_r0_ra0_count0_inner_i <= u0_m0_wo0_wi0_r0_ra0_count0_inner_i - 92;
                ELSE
                    u0_m0_wo0_wi0_r0_ra0_count0_inner_i <= u0_m0_wo0_wi0_r0_ra0_count0_inner_i - 1;
                END IF;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_wi0_r0_ra0_count0_inner_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_wi0_r0_ra0_count0_inner_i, 7)));

    -- u0_m0_wo0_wi0_r0_ra0_count0_run(LOGICAL,21)@12
    u0_m0_wo0_wi0_r0_ra0_count0_run_q <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_ra0_count0_inner_q(6 downto 6));

    -- u0_m0_wo0_wi0_r0_ra0_count0(COUNTER,22)@12
    -- low=0, high=63, step=1, init=0
    u0_m0_wo0_wi0_r0_ra0_count0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_r0_ra0_count0_i <= TO_UNSIGNED(0, 6);
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_memread_q = "1" and u0_m0_wo0_wi0_r0_ra0_count0_run_q = "1") THEN
                u0_m0_wo0_wi0_r0_ra0_count0_i <= u0_m0_wo0_wi0_r0_ra0_count0_i + 1;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_wi0_r0_ra0_count0_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_wi0_r0_ra0_count0_i, 7)));

    -- u0_m0_wo0_wi0_r0_ra0_add_0_0(ADD,26)@12 + 1
    u0_m0_wo0_wi0_r0_ra0_add_0_0_a <= STD_LOGIC_VECTOR("0" & u0_m0_wo0_wi0_r0_ra0_count0_q);
    u0_m0_wo0_wi0_r0_ra0_add_0_0_b <= STD_LOGIC_VECTOR("0" & u0_m0_wo0_wi0_r0_ra0_count1_lutreg_q);
    u0_m0_wo0_wi0_r0_ra0_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_r0_ra0_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_wi0_r0_ra0_add_0_0_o <= STD_LOGIC_VECTOR(UNSIGNED(u0_m0_wo0_wi0_r0_ra0_add_0_0_a) + UNSIGNED(u0_m0_wo0_wi0_r0_ra0_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_wi0_r0_ra0_add_0_0_q <= u0_m0_wo0_wi0_r0_ra0_add_0_0_o(7 downto 0);

    -- u0_m0_wo0_wi0_r0_ra0_resize(BITSELECT,27)@13
    u0_m0_wo0_wi0_r0_ra0_resize_in <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_ra0_add_0_0_q(5 downto 0));
    u0_m0_wo0_wi0_r0_ra0_resize_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_ra0_resize_in(5 downto 0));

    -- d_xIn_0_13_notEnable(LOGICAL,68)@10
    d_xIn_0_13_notEnable_q <= STD_LOGIC_VECTOR(not (VCC_q));

    -- d_xIn_0_13_nor(LOGICAL,69)@10
    d_xIn_0_13_nor_q <= not (d_xIn_0_13_notEnable_q or d_xIn_0_13_sticky_ena_q);

    -- d_xIn_0_13_cmpReg(REG,67)@10 + 1
    d_xIn_0_13_cmpReg_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            d_xIn_0_13_cmpReg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            d_xIn_0_13_cmpReg_q <= STD_LOGIC_VECTOR(VCC_q);
        END IF;
    END PROCESS;

    -- d_xIn_0_13_sticky_ena(REG,70)@10 + 1
    d_xIn_0_13_sticky_ena_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            d_xIn_0_13_sticky_ena_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_xIn_0_13_nor_q = "1") THEN
                d_xIn_0_13_sticky_ena_q <= STD_LOGIC_VECTOR(d_xIn_0_13_cmpReg_q);
            END IF;
        END IF;
    END PROCESS;

    -- d_xIn_0_13_enaAnd(LOGICAL,71)@10
    d_xIn_0_13_enaAnd_q <= d_xIn_0_13_sticky_ena_q and VCC_q;

    -- d_xIn_0_13_rdcnt(COUNTER,65)@10 + 1
    -- low=0, high=1, step=1, init=0
    d_xIn_0_13_rdcnt_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            d_xIn_0_13_rdcnt_i <= TO_UNSIGNED(0, 1);
        ELSIF (clk'EVENT AND clk = '1') THEN
            d_xIn_0_13_rdcnt_i <= d_xIn_0_13_rdcnt_i + 1;
        END IF;
    END PROCESS;
    d_xIn_0_13_rdcnt_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(d_xIn_0_13_rdcnt_i, 1)));

    -- d_xIn_0_13_wraddr(REG,66)@10 + 1
    d_xIn_0_13_wraddr_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            d_xIn_0_13_wraddr_q <= "1";
        ELSIF (clk'EVENT AND clk = '1') THEN
            d_xIn_0_13_wraddr_q <= STD_LOGIC_VECTOR(d_xIn_0_13_rdcnt_q);
        END IF;
    END PROCESS;

    -- d_xIn_0_13_mem(DUALMEM,64)@10 + 2
    d_xIn_0_13_mem_ia <= STD_LOGIC_VECTOR(xIn_0);
    d_xIn_0_13_mem_aa <= d_xIn_0_13_wraddr_q;
    d_xIn_0_13_mem_ab <= d_xIn_0_13_rdcnt_q;
    d_xIn_0_13_mem_reset0 <= areset;
    d_xIn_0_13_mem_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "MLAB",
        operation_mode => "DUAL_PORT",
        width_a => 32,
        widthad_a => 1,
        numwords_a => 2,
        width_b => 32,
        widthad_b => 1,
        numwords_b => 2,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "CLOCK1",
        outdata_aclr_b => "CLEAR1",
        clock_enable_input_a => "NORMAL",
        clock_enable_input_b => "NORMAL",
        clock_enable_output_b => "NORMAL",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "TRUE",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken1 => d_xIn_0_13_enaAnd_q(0),
        clocken0 => VCC_q(0),
        clock0 => clk,
        aclr1 => d_xIn_0_13_mem_reset0,
        clock1 => clk,
        address_a => d_xIn_0_13_mem_aa,
        data_a => d_xIn_0_13_mem_ia,
        wren_a => VCC_q(0),
        address_b => d_xIn_0_13_mem_ab,
        q_b => d_xIn_0_13_mem_iq
    );
    d_xIn_0_13_mem_q <= d_xIn_0_13_mem_iq(31 downto 0);

    -- d_in0_m0_wi0_wo0_assign_id1_q_13(DELAY,61)@10 + 3
    d_in0_m0_wi0_wo0_assign_id1_q_13 : dspba_delay
    GENERIC MAP ( width => 1, depth => 3, reset_kind => "ASYNC" )
    PORT MAP ( xin => input_valid_q, xout => d_in0_m0_wi0_wo0_assign_id1_q_13_q, clk => clk, aclr => areset );

    -- u0_m0_wo0_wi0_r0_wa0(COUNTER,28)@13
    -- low=0, high=63, step=1, init=9
    u0_m0_wo0_wi0_r0_wa0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_wi0_r0_wa0_i <= TO_UNSIGNED(9, 6);
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_in0_m0_wi0_wo0_assign_id1_q_13_q = "1") THEN
                u0_m0_wo0_wi0_r0_wa0_i <= u0_m0_wo0_wi0_r0_wa0_i + 1;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_wi0_r0_wa0_q <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR(RESIZE(u0_m0_wo0_wi0_r0_wa0_i, 6)));

    -- u0_m0_wo0_wi0_r0_memr0(DUALMEM,29)@13
    u0_m0_wo0_wi0_r0_memr0_ia <= STD_LOGIC_VECTOR(d_xIn_0_13_mem_q);
    u0_m0_wo0_wi0_r0_memr0_aa <= u0_m0_wo0_wi0_r0_wa0_q;
    u0_m0_wo0_wi0_r0_memr0_ab <= u0_m0_wo0_wi0_r0_ra0_resize_b;
    u0_m0_wo0_wi0_r0_memr0_dmem : altera_syncram
    GENERIC MAP (
        ram_block_type => "M10K",
        operation_mode => "DUAL_PORT",
        width_a => 32,
        widthad_a => 6,
        numwords_a => 64,
        width_b => 32,
        widthad_b => 6,
        numwords_b => 64,
        lpm_type => "altera_syncram",
        width_byteena_a => 1,
        address_reg_b => "CLOCK0",
        indata_reg_b => "CLOCK0",
        rdcontrol_reg_b => "CLOCK0",
        byteena_reg_b => "CLOCK0",
        outdata_reg_b => "CLOCK0",
        outdata_aclr_b => "NONE",
        clock_enable_input_a => "NORMAL",
        clock_enable_input_b => "NORMAL",
        clock_enable_output_b => "NORMAL",
        read_during_write_mode_mixed_ports => "DONT_CARE",
        power_up_uninitialized => "FALSE",
        init_file => "UNUSED",
        intended_device_family => "Cyclone V"
    )
    PORT MAP (
        clocken0 => '1',
        clock0 => clk,
        address_a => u0_m0_wo0_wi0_r0_memr0_aa,
        data_a => u0_m0_wo0_wi0_r0_memr0_ia,
        wren_a => d_in0_m0_wi0_wo0_assign_id1_q_13_q(0),
        address_b => u0_m0_wo0_wi0_r0_memr0_ab,
        q_b => u0_m0_wo0_wi0_r0_memr0_iq
    );
    u0_m0_wo0_wi0_r0_memr0_q <= u0_m0_wo0_wi0_r0_memr0_iq(31 downto 0);

    -- u0_m0_wo0_mtree_mult1_0_bs2_merged_bit_select(BITSELECT,58)@13
    u0_m0_wo0_mtree_mult1_0_bs2_merged_bit_select_b <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr0_q(17 downto 0));
    u0_m0_wo0_mtree_mult1_0_bs2_merged_bit_select_c <= STD_LOGIC_VECTOR(u0_m0_wo0_wi0_r0_memr0_q(31 downto 18));

    -- u0_m0_wo0_mtree_mult1_0_im3_cma(CHAINMULTADD,57)@13 + 2
    u0_m0_wo0_mtree_mult1_0_im3_cma_reset <= areset;
    u0_m0_wo0_mtree_mult1_0_im3_cma_ena0 <= '1';
    u0_m0_wo0_mtree_mult1_0_im3_cma_ena1 <= u0_m0_wo0_mtree_mult1_0_im3_cma_ena0;
    u0_m0_wo0_mtree_mult1_0_im3_cma_p(0) <= u0_m0_wo0_mtree_mult1_0_im3_cma_a0(0) * u0_m0_wo0_mtree_mult1_0_im3_cma_c0(0);
    u0_m0_wo0_mtree_mult1_0_im3_cma_u(0) <= RESIZE(u0_m0_wo0_mtree_mult1_0_im3_cma_p(0),26);
    u0_m0_wo0_mtree_mult1_0_im3_cma_w(0) <= u0_m0_wo0_mtree_mult1_0_im3_cma_u(0);
    u0_m0_wo0_mtree_mult1_0_im3_cma_x(0) <= u0_m0_wo0_mtree_mult1_0_im3_cma_w(0);
    u0_m0_wo0_mtree_mult1_0_im3_cma_y(0) <= u0_m0_wo0_mtree_mult1_0_im3_cma_x(0);
    u0_m0_wo0_mtree_mult1_0_im3_cma_chainmultadd_input: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_0_im3_cma_a0 <= (others => (others => '0'));
            u0_m0_wo0_mtree_mult1_0_im3_cma_c0 <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_mtree_mult1_0_im3_cma_ena0 = '1') THEN
                u0_m0_wo0_mtree_mult1_0_im3_cma_a0(0) <= RESIZE(SIGNED(u0_m0_wo0_mtree_mult1_0_bs2_merged_bit_select_c),14);
                u0_m0_wo0_mtree_mult1_0_im3_cma_c0(0) <= RESIZE(SIGNED(u0_m0_wo0_cm0_q),12);
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_0_im3_cma_chainmultadd_output: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_0_im3_cma_s <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_mtree_mult1_0_im3_cma_ena1 = '1') THEN
                u0_m0_wo0_mtree_mult1_0_im3_cma_s(0) <= u0_m0_wo0_mtree_mult1_0_im3_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_0_im3_cma_delay : dspba_delay
    GENERIC MAP ( width => 26, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_0_im3_cma_s(0)(25 downto 0)), xout => u0_m0_wo0_mtree_mult1_0_im3_cma_qq, clk => clk, aclr => areset );
    u0_m0_wo0_mtree_mult1_0_im3_cma_q <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_0_im3_cma_qq(25 downto 0));

    -- u0_m0_wo0_mtree_mult1_0_align_7(BITSHIFT,53)@15
    u0_m0_wo0_mtree_mult1_0_align_7_qint <= u0_m0_wo0_mtree_mult1_0_im3_cma_q & "000000000000000000";
    u0_m0_wo0_mtree_mult1_0_align_7_q <= u0_m0_wo0_mtree_mult1_0_align_7_qint(43 downto 0);

    -- u0_m0_wo0_mtree_mult1_0_im0_cma(CHAINMULTADD,56)@13 + 2
    u0_m0_wo0_mtree_mult1_0_im0_cma_reset <= areset;
    u0_m0_wo0_mtree_mult1_0_im0_cma_ena0 <= '1';
    u0_m0_wo0_mtree_mult1_0_im0_cma_ena1 <= u0_m0_wo0_mtree_mult1_0_im0_cma_ena0;
    u0_m0_wo0_mtree_mult1_0_im0_cma_l(0) <= SIGNED(RESIZE(u0_m0_wo0_mtree_mult1_0_im0_cma_a0(0),19));
    u0_m0_wo0_mtree_mult1_0_im0_cma_p(0) <= u0_m0_wo0_mtree_mult1_0_im0_cma_l(0) * u0_m0_wo0_mtree_mult1_0_im0_cma_c0(0);
    u0_m0_wo0_mtree_mult1_0_im0_cma_u(0) <= RESIZE(u0_m0_wo0_mtree_mult1_0_im0_cma_p(0),31);
    u0_m0_wo0_mtree_mult1_0_im0_cma_w(0) <= u0_m0_wo0_mtree_mult1_0_im0_cma_u(0);
    u0_m0_wo0_mtree_mult1_0_im0_cma_x(0) <= u0_m0_wo0_mtree_mult1_0_im0_cma_w(0);
    u0_m0_wo0_mtree_mult1_0_im0_cma_y(0) <= u0_m0_wo0_mtree_mult1_0_im0_cma_x(0);
    u0_m0_wo0_mtree_mult1_0_im0_cma_chainmultadd_input: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_0_im0_cma_a0 <= (others => (others => '0'));
            u0_m0_wo0_mtree_mult1_0_im0_cma_c0 <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_mtree_mult1_0_im0_cma_ena0 = '1') THEN
                u0_m0_wo0_mtree_mult1_0_im0_cma_a0(0) <= RESIZE(UNSIGNED(u0_m0_wo0_mtree_mult1_0_bs2_merged_bit_select_b),18);
                u0_m0_wo0_mtree_mult1_0_im0_cma_c0(0) <= RESIZE(SIGNED(u0_m0_wo0_cm0_q),12);
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_0_im0_cma_chainmultadd_output: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_0_im0_cma_s <= (others => (others => '0'));
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (u0_m0_wo0_mtree_mult1_0_im0_cma_ena1 = '1') THEN
                u0_m0_wo0_mtree_mult1_0_im0_cma_s(0) <= u0_m0_wo0_mtree_mult1_0_im0_cma_y(0);
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_0_im0_cma_delay : dspba_delay
    GENERIC MAP ( width => 30, depth => 0, reset_kind => "ASYNC" )
    PORT MAP ( xin => STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_0_im0_cma_s(0)(29 downto 0)), xout => u0_m0_wo0_mtree_mult1_0_im0_cma_qq, clk => clk, aclr => areset );
    u0_m0_wo0_mtree_mult1_0_im0_cma_q <= STD_LOGIC_VECTOR(u0_m0_wo0_mtree_mult1_0_im0_cma_qq(29 downto 0));

    -- u0_m0_wo0_mtree_mult1_0_result_add_0_0(ADD,55)@15 + 1
    u0_m0_wo0_mtree_mult1_0_result_add_0_0_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((44 downto 30 => u0_m0_wo0_mtree_mult1_0_im0_cma_q(29)) & u0_m0_wo0_mtree_mult1_0_im0_cma_q));
    u0_m0_wo0_mtree_mult1_0_result_add_0_0_b <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((44 downto 44 => u0_m0_wo0_mtree_mult1_0_align_7_q(43)) & u0_m0_wo0_mtree_mult1_0_align_7_q));
    u0_m0_wo0_mtree_mult1_0_result_add_0_0_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_mtree_mult1_0_result_add_0_0_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_mtree_mult1_0_result_add_0_0_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_mtree_mult1_0_result_add_0_0_a) + SIGNED(u0_m0_wo0_mtree_mult1_0_result_add_0_0_b));
        END IF;
    END PROCESS;
    u0_m0_wo0_mtree_mult1_0_result_add_0_0_q <= u0_m0_wo0_mtree_mult1_0_result_add_0_0_o(44 downto 0);

    -- u0_m0_wo0_accum(ADD,37)@16 + 1
    u0_m0_wo0_accum_a <= STD_LOGIC_VECTOR(STD_LOGIC_VECTOR((49 downto 45 => u0_m0_wo0_mtree_mult1_0_result_add_0_0_q(44)) & u0_m0_wo0_mtree_mult1_0_result_add_0_0_q));
    u0_m0_wo0_accum_b <= STD_LOGIC_VECTOR(u0_m0_wo0_accum_q);
    u0_m0_wo0_accum_i <= u0_m0_wo0_accum_a;
    u0_m0_wo0_accum_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_accum_o <= (others => '0');
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_u0_m0_wo0_compute_q_16_q = "1") THEN
                IF (u0_m0_wo0_aseq_q = "1") THEN
                    u0_m0_wo0_accum_o <= u0_m0_wo0_accum_i;
                ELSE
                    u0_m0_wo0_accum_o <= STD_LOGIC_VECTOR(SIGNED(u0_m0_wo0_accum_a) + SIGNED(u0_m0_wo0_accum_b));
                END IF;
            END IF;
        END IF;
    END PROCESS;
    u0_m0_wo0_accum_q <= u0_m0_wo0_accum_o(49 downto 0);

    -- GND(CONSTANT,0)@0
    GND_q <= "0";

    -- u0_m0_wo0_oseq(SEQUENCE,38)@15 + 1
    u0_m0_wo0_oseq_clkproc: PROCESS (clk, areset)
        variable u0_m0_wo0_oseq_c : SIGNED(7 downto 0);
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_oseq_c := "00100100";
            u0_m0_wo0_oseq_q <= "0";
            u0_m0_wo0_oseq_eq <= '0';
        ELSIF (clk'EVENT AND clk = '1') THEN
            IF (d_u0_m0_wo0_compute_q_15_q = "1") THEN
                IF (u0_m0_wo0_oseq_c = "00000000") THEN
                    u0_m0_wo0_oseq_eq <= '1';
                ELSE
                    u0_m0_wo0_oseq_eq <= '0';
                END IF;
                IF (u0_m0_wo0_oseq_eq = '1') THEN
                    u0_m0_wo0_oseq_c := u0_m0_wo0_oseq_c + 36;
                ELSE
                    u0_m0_wo0_oseq_c := u0_m0_wo0_oseq_c - 1;
                END IF;
                u0_m0_wo0_oseq_q <= STD_LOGIC_VECTOR(u0_m0_wo0_oseq_c(7 downto 7));
            END IF;
        END IF;
    END PROCESS;

    -- u0_m0_wo0_oseq_gated(LOGICAL,39)@16
    u0_m0_wo0_oseq_gated_q <= u0_m0_wo0_oseq_q and d_u0_m0_wo0_compute_q_16_q;

    -- u0_m0_wo0_oseq_gated_reg(REG,40)@16 + 1
    u0_m0_wo0_oseq_gated_reg_clkproc: PROCESS (clk, areset)
    BEGIN
        IF (areset = '1') THEN
            u0_m0_wo0_oseq_gated_reg_q <= "0";
        ELSIF (clk'EVENT AND clk = '1') THEN
            u0_m0_wo0_oseq_gated_reg_q <= STD_LOGIC_VECTOR(u0_m0_wo0_oseq_gated_q);
        END IF;
    END PROCESS;

    -- out0_m0_wo0_lineup_select_delay_0(DELAY,42)@17
    out0_m0_wo0_lineup_select_delay_0_q <= STD_LOGIC_VECTOR(u0_m0_wo0_oseq_gated_reg_q);

    -- out0_m0_wo0_assign_id3(DELAY,44)@17
    out0_m0_wo0_assign_id3_q <= STD_LOGIC_VECTOR(out0_m0_wo0_lineup_select_delay_0_q);

    -- xOut(PORTOUT,45)@17 + 1
    xOut_v <= out0_m0_wo0_assign_id3_q;
    xOut_c <= STD_LOGIC_VECTOR("0000000" & GND_q);
    xOut_0 <= u0_m0_wo0_accum_q;

END normal;
