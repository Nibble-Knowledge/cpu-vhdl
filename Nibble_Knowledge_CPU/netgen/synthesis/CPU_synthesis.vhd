--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: CPU_synthesis.vhd
-- /___/   /\     Timestamp: Sat Oct 31 19:35:20 2015
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm CPU -w -dir netgen/synthesis -ofmt vhdl -sim CPU.ngc CPU_synthesis.vhd 
-- Device	: xc3s250e-5-vq100
-- Input file	: CPU.ngc
-- Output file	: C:\Users\Colton\Desktop\Nibble_Knowledge_CPU\netgen\synthesis\CPU_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: CPU
-- Xilinx	: C:\Xilinx\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity CPU is
  port (
    clk : in STD_LOGIC := 'X'; 
    clk_out : out STD_LOGIC; 
    ram_write_enable : out STD_LOGIC; 
    reset : in STD_LOGIC := 'X'; 
    ram_data : inout STD_LOGIC_VECTOR ( 3 downto 0 ); 
    a_data : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    ram_address : out STD_LOGIC_VECTOR ( 15 downto 0 ) 
  );
end CPU;

architecture Structure of CPU is
  signal Intern_clock_hundredHzClock_Mcount_current_count : STD_LOGIC; 
  signal Intern_clock_hundredHzClock_Mcount_current_count1 : STD_LOGIC; 
  signal Intern_clock_hundredHzClock_Mcount_current_count2 : STD_LOGIC; 
  signal Intern_clock_hundredHzClock_Mcount_current_count3 : STD_LOGIC; 
  signal Intern_clock_hundredHzClock_i_zero_8 : STD_LOGIC; 
  signal Intern_clock_hundredHzClock_i_zero_or0000_9 : STD_LOGIC; 
  signal Intern_clock_kiloHzClock_Mcount_current_count_cy_0_rt_11 : STD_LOGIC; 
  signal Intern_clock_kiloHzClock_Mcount_current_count_eqn_0 : STD_LOGIC; 
  signal Intern_clock_kiloHzClock_Mcount_current_count_eqn_1 : STD_LOGIC; 
  signal Intern_clock_kiloHzClock_Mcount_current_count_eqn_10 : STD_LOGIC; 
  signal Intern_clock_kiloHzClock_Mcount_current_count_eqn_11 : STD_LOGIC; 
  signal Intern_clock_kiloHzClock_Mcount_current_count_eqn_12 : STD_LOGIC; 
  signal Intern_clock_kiloHzClock_Mcount_current_count_eqn_13 : STD_LOGIC; 
  signal Intern_clock_kiloHzClock_Mcount_current_count_eqn_14 : STD_LOGIC; 
  signal Intern_clock_kiloHzClock_Mcount_current_count_eqn_2 : STD_LOGIC; 
  signal Intern_clock_kiloHzClock_Mcount_current_count_eqn_3 : STD_LOGIC; 
  signal Intern_clock_kiloHzClock_Mcount_current_count_eqn_4 : STD_LOGIC; 
  signal Intern_clock_kiloHzClock_Mcount_current_count_eqn_5 : STD_LOGIC; 
  signal Intern_clock_kiloHzClock_Mcount_current_count_eqn_6 : STD_LOGIC; 
  signal Intern_clock_kiloHzClock_Mcount_current_count_eqn_7 : STD_LOGIC; 
  signal Intern_clock_kiloHzClock_Mcount_current_count_eqn_8 : STD_LOGIC; 
  signal Intern_clock_kiloHzClock_Mcount_current_count_eqn_9 : STD_LOGIC; 
  signal Intern_clock_kiloHzClock_current_count_cmp_eq0000 : STD_LOGIC; 
  signal Intern_clock_kiloHzClock_current_count_cmp_eq000012_70 : STD_LOGIC; 
  signal Intern_clock_kiloHzClock_current_count_cmp_eq000025_71 : STD_LOGIC; 
  signal Intern_clock_kiloHzClock_current_count_cmp_eq000049_72 : STD_LOGIC; 
  signal Intern_clock_kiloHzClock_current_count_cmp_eq000058_73 : STD_LOGIC; 
  signal Intern_clock_kiloHzClock_i_zero_74 : STD_LOGIC; 
  signal Intern_clock_kiloHzClock_i_zero_or0000 : STD_LOGIC; 
  signal Intern_clock_oneHZClock_Mcount_current_count : STD_LOGIC; 
  signal Intern_clock_oneHZClock_Mcount_current_count1 : STD_LOGIC; 
  signal Intern_clock_oneHZClock_Mcount_current_count2 : STD_LOGIC; 
  signal Intern_clock_oneHZClock_Mcount_current_count3 : STD_LOGIC; 
  signal Intern_clock_oneHZClock_i_zero_84 : STD_LOGIC; 
  signal Intern_clock_oneHZClock_i_zero1 : STD_LOGIC; 
  signal Intern_clock_oneHZClock_i_zero_or0000_86 : STD_LOGIC; 
  signal Intern_clock_tenHzClock_Mcount_current_count : STD_LOGIC; 
  signal Intern_clock_tenHzClock_Mcount_current_count1 : STD_LOGIC; 
  signal Intern_clock_tenHzClock_Mcount_current_count2 : STD_LOGIC; 
  signal Intern_clock_tenHzClock_Mcount_current_count3 : STD_LOGIC; 
  signal Intern_clock_tenHzClock_i_zero_95 : STD_LOGIC; 
  signal Intern_clock_tenHzClock_i_zero_or0000_96 : STD_LOGIC; 
  signal MEM_Mcount_i_nibbleCount : STD_LOGIC; 
  signal MEM_Mcount_i_nibbleCount1 : STD_LOGIC; 
  signal MEM_q_0_not0001 : STD_LOGIC; 
  signal MEM_q_10_not0001 : STD_LOGIC; 
  signal MEM_q_12_not0001 : STD_LOGIC; 
  signal MEM_q_4_not0001 : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal N102 : STD_LOGIC; 
  signal N104 : STD_LOGIC; 
  signal N106 : STD_LOGIC; 
  signal N107 : STD_LOGIC; 
  signal N108 : STD_LOGIC; 
  signal N109 : STD_LOGIC; 
  signal N11 : STD_LOGIC; 
  signal N110 : STD_LOGIC; 
  signal N111 : STD_LOGIC; 
  signal N114 : STD_LOGIC; 
  signal N120 : STD_LOGIC; 
  signal N122 : STD_LOGIC; 
  signal N123 : STD_LOGIC; 
  signal N124 : STD_LOGIC; 
  signal N125 : STD_LOGIC; 
  signal N126 : STD_LOGIC; 
  signal N127 : STD_LOGIC; 
  signal N128 : STD_LOGIC; 
  signal N129 : STD_LOGIC; 
  signal N13 : STD_LOGIC; 
  signal N130 : STD_LOGIC; 
  signal N131 : STD_LOGIC; 
  signal N132 : STD_LOGIC; 
  signal N133 : STD_LOGIC; 
  signal N134 : STD_LOGIC; 
  signal N135 : STD_LOGIC; 
  signal N32 : STD_LOGIC; 
  signal N33 : STD_LOGIC; 
  signal N38 : STD_LOGIC; 
  signal N39 : STD_LOGIC; 
  signal N41 : STD_LOGIC; 
  signal N42 : STD_LOGIC; 
  signal N44 : STD_LOGIC; 
  signal N45 : STD_LOGIC; 
  signal N47 : STD_LOGIC; 
  signal N49 : STD_LOGIC; 
  signal N50 : STD_LOGIC; 
  signal N56 : STD_LOGIC; 
  signal N57 : STD_LOGIC; 
  signal N58 : STD_LOGIC; 
  signal N59 : STD_LOGIC; 
  signal N64 : STD_LOGIC; 
  signal N65 : STD_LOGIC; 
  signal N67 : STD_LOGIC; 
  signal N69 : STD_LOGIC; 
  signal N70 : STD_LOGIC; 
  signal N72 : STD_LOGIC; 
  signal N73 : STD_LOGIC; 
  signal N75 : STD_LOGIC; 
  signal N76 : STD_LOGIC; 
  signal N78 : STD_LOGIC; 
  signal N79 : STD_LOGIC; 
  signal N81 : STD_LOGIC; 
  signal N82 : STD_LOGIC; 
  signal N84 : STD_LOGIC; 
  signal N85 : STD_LOGIC; 
  signal N87 : STD_LOGIC; 
  signal N88 : STD_LOGIC; 
  signal N9 : STD_LOGIC; 
  signal N90 : STD_LOGIC; 
  signal N91 : STD_LOGIC; 
  signal N93 : STD_LOGIC; 
  signal N95 : STD_LOGIC; 
  signal N96 : STD_LOGIC; 
  signal N98 : STD_LOGIC; 
  signal N99 : STD_LOGIC; 
  signal adder_16bit_N11 : STD_LOGIC; 
  signal adder_16bit_N3 : STD_LOGIC; 
  signal adder_16bit_N4 : STD_LOGIC; 
  signal adder_16bit_N5 : STD_LOGIC; 
  signal adder_16bit_bit11_cout_and0001 : STD_LOGIC; 
  signal adder_16bit_bit6_cout_and0001 : STD_LOGIC; 
  signal clk_BUFGP_231 : STD_LOGIC; 
  signal cpu_alu_DECODER_N11 : STD_LOGIC; 
  signal cpu_alu_N0 : STD_LOGIC; 
  signal cpu_alu_N18 : STD_LOGIC; 
  signal cpu_alu_STAT_data_out_0_Q : STD_LOGIC; 
  signal cpu_alu_STAT_data_out_1_Q : STD_LOGIC; 
  signal cpu_alu_STAT_data_out_3_Q : STD_LOGIC; 
  signal cpu_alu_i_A_EN : STD_LOGIC; 
  signal cpu_alu_i_A_in_1_97 : STD_LOGIC; 
  signal cpu_alu_i_A_in_3_1 : STD_LOGIC; 
  signal cpu_alu_i_MSB_cin : STD_LOGIC; 
  signal cpu_alu_i_STAT_EN : STD_LOGIC; 
  signal cpu_alu_i_XORb_in_256 : STD_LOGIC; 
  signal cpu_alu_i_arith_S : STD_LOGIC; 
  signal cpu_alu_i_carry_in_258 : STD_LOGIC; 
  signal cpu_alu_i_stat_S : STD_LOGIC; 
  signal cycle_control_unit_Mcount_cycle_counter : STD_LOGIC; 
  signal cycle_control_unit_Mcount_cycle_counter1 : STD_LOGIC; 
  signal cycle_control_unit_Mcount_cycle_counter2 : STD_LOGIC; 
  signal cycle_control_unit_Mcount_cycle_counter_val : STD_LOGIC; 
  signal cycle_control_unit_cycle_counter_or0000 : STD_LOGIC; 
  signal cycle_control_unit_exe_268 : STD_LOGIC; 
  signal cycle_control_unit_exe_mux0000 : STD_LOGIC; 
  signal cycle_control_unit_mem_en_270 : STD_LOGIC; 
  signal cycle_control_unit_mem_en_mux0000 : STD_LOGIC; 
  signal cycle_control_unit_op_en_272 : STD_LOGIC; 
  signal cycle_control_unit_op_en_mux0000 : STD_LOGIC; 
  signal cycle_control_unit_pc_en_274 : STD_LOGIC; 
  signal cycle_control_unit_pc_en_mux0000 : STD_LOGIC; 
  signal cycle_control_unit_received_hlt_276 : STD_LOGIC; 
  signal cycle_control_unit_received_hlt_0_not0000 : STD_LOGIC; 
  signal i_hlt : STD_LOGIC; 
  signal i_jmp : STD_LOGIC; 
  signal i_pc_en_after_or : STD_LOGIC; 
  signal i_pc_prime_10_19_287 : STD_LOGIC; 
  signal i_pc_prime_10_69 : STD_LOGIC; 
  signal i_pc_prime_10_691_289 : STD_LOGIC; 
  signal i_pc_prime_10_8_290 : STD_LOGIC; 
  signal i_pc_prime_14_9_295 : STD_LOGIC; 
  signal i_pc_prime_4_17_301 : STD_LOGIC; 
  signal i_pc_prime_5_30_303 : STD_LOGIC; 
  signal i_pc_prime_5_4_304 : STD_LOGIC; 
  signal i_pc_prime_7_1_307 : STD_LOGIC; 
  signal i_pc_prime_7_2_308 : STD_LOGIC; 
  signal i_pc_prime_8_1_310 : STD_LOGIC; 
  signal i_pc_prime_9_35 : STD_LOGIC; 
  signal i_pc_prime_9_9_313 : STD_LOGIC; 
  signal i_received_hlt_314 : STD_LOGIC; 
  signal ram_address_0_OBUF_331 : STD_LOGIC; 
  signal ram_address_10_OBUF_332 : STD_LOGIC; 
  signal ram_address_11_OBUF_333 : STD_LOGIC; 
  signal ram_address_12_OBUF_334 : STD_LOGIC; 
  signal ram_address_13_OBUF_335 : STD_LOGIC; 
  signal ram_address_14_OBUF_336 : STD_LOGIC; 
  signal ram_address_15_OBUF_337 : STD_LOGIC; 
  signal ram_address_1_OBUF_338 : STD_LOGIC; 
  signal ram_address_2_OBUF_339 : STD_LOGIC; 
  signal ram_address_3_OBUF_340 : STD_LOGIC; 
  signal ram_address_4_OBUF_341 : STD_LOGIC; 
  signal ram_address_5_OBUF_342 : STD_LOGIC; 
  signal ram_address_6_OBUF_343 : STD_LOGIC; 
  signal ram_address_7_OBUF_344 : STD_LOGIC; 
  signal ram_address_8_OBUF_345 : STD_LOGIC; 
  signal ram_address_9_OBUF_346 : STD_LOGIC; 
  signal ram_data_i_data_to_ram_not0000_inv : STD_LOGIC; 
  signal reset_IBUF_354 : STD_LOGIC; 
  signal reset_IBUF1 : STD_LOGIC; 
  signal Intern_clock_hundredHzClock_current_count : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal Intern_clock_kiloHzClock_Mcount_current_count_cy : STD_LOGIC_VECTOR ( 13 downto 0 ); 
  signal Intern_clock_kiloHzClock_Mcount_current_count_lut : STD_LOGIC_VECTOR ( 14 downto 1 ); 
  signal Intern_clock_kiloHzClock_current_count : STD_LOGIC_VECTOR ( 14 downto 0 ); 
  signal Intern_clock_oneHZClock_current_count : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal Intern_clock_tenHzClock_current_count : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal MEM_i_nibbleCount : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal MEM_q : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal PCreg_q : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal Result : STD_LOGIC_VECTOR ( 14 downto 0 ); 
  signal cpu_alu_A_data_out : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal cpu_alu_DECODER_stored_OP_Code : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal cpu_alu_i_A_in : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal cycle_control_unit_cycle_counter : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal i_data_frm_ram : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal i_pc_prime : STD_LOGIC_VECTOR ( 15 downto 0 ); 
begin
  XST_GND : GND
    port map (
      G => N0
    );
  XST_VCC : VCC
    port map (
      P => N1
    );
  i_received_hlt : LDP
    port map (
      D => N0,
      G => reset_IBUF_354,
      PRE => i_hlt,
      Q => i_received_hlt_314
    );
  Intern_clock_hundredHzClock_i_zero : FDR
    port map (
      C => clk_BUFGP_231,
      D => N1,
      R => Intern_clock_hundredHzClock_i_zero_or0000_9,
      Q => Intern_clock_hundredHzClock_i_zero_8
    );
  Intern_clock_tenHzClock_i_zero : FDR
    port map (
      C => clk_BUFGP_231,
      D => N1,
      R => Intern_clock_tenHzClock_i_zero_or0000_96,
      Q => Intern_clock_tenHzClock_i_zero_95
    );
  Intern_clock_oneHZClock_i_zero : FDR
    port map (
      C => clk_BUFGP_231,
      D => N1,
      R => Intern_clock_oneHZClock_i_zero_or0000_86,
      Q => Intern_clock_oneHZClock_i_zero1
    );
  Intern_clock_kiloHzClock_i_zero : FDR
    port map (
      C => clk_BUFGP_231,
      D => N1,
      R => Intern_clock_kiloHzClock_i_zero_or0000,
      Q => Intern_clock_kiloHzClock_i_zero_74
    );
  Intern_clock_hundredHzClock_current_count_0 : FDSE
    port map (
      C => clk_BUFGP_231,
      CE => Intern_clock_kiloHzClock_i_zero_74,
      D => Intern_clock_hundredHzClock_Mcount_current_count,
      S => reset_IBUF1,
      Q => Intern_clock_hundredHzClock_current_count(0)
    );
  Intern_clock_hundredHzClock_current_count_1 : FDRE
    port map (
      C => clk_BUFGP_231,
      CE => Intern_clock_kiloHzClock_i_zero_74,
      D => Intern_clock_hundredHzClock_Mcount_current_count1,
      R => reset_IBUF1,
      Q => Intern_clock_hundredHzClock_current_count(1)
    );
  Intern_clock_hundredHzClock_current_count_2 : FDRE
    port map (
      C => clk_BUFGP_231,
      CE => Intern_clock_kiloHzClock_i_zero_74,
      D => Intern_clock_hundredHzClock_Mcount_current_count2,
      R => reset_IBUF1,
      Q => Intern_clock_hundredHzClock_current_count(2)
    );
  Intern_clock_hundredHzClock_current_count_3 : FDSE
    port map (
      C => clk_BUFGP_231,
      CE => Intern_clock_kiloHzClock_i_zero_74,
      D => Intern_clock_hundredHzClock_Mcount_current_count3,
      S => reset_IBUF1,
      Q => Intern_clock_hundredHzClock_current_count(3)
    );
  Intern_clock_tenHzClock_current_count_0 : FDSE
    port map (
      C => clk_BUFGP_231,
      CE => Intern_clock_hundredHzClock_i_zero_8,
      D => Intern_clock_tenHzClock_Mcount_current_count,
      S => reset_IBUF1,
      Q => Intern_clock_tenHzClock_current_count(0)
    );
  Intern_clock_tenHzClock_current_count_1 : FDRE
    port map (
      C => clk_BUFGP_231,
      CE => Intern_clock_hundredHzClock_i_zero_8,
      D => Intern_clock_tenHzClock_Mcount_current_count1,
      R => reset_IBUF1,
      Q => Intern_clock_tenHzClock_current_count(1)
    );
  Intern_clock_tenHzClock_current_count_2 : FDRE
    port map (
      C => clk_BUFGP_231,
      CE => Intern_clock_hundredHzClock_i_zero_8,
      D => Intern_clock_tenHzClock_Mcount_current_count2,
      R => reset_IBUF1,
      Q => Intern_clock_tenHzClock_current_count(2)
    );
  Intern_clock_tenHzClock_current_count_3 : FDSE
    port map (
      C => clk_BUFGP_231,
      CE => Intern_clock_hundredHzClock_i_zero_8,
      D => Intern_clock_tenHzClock_Mcount_current_count3,
      S => reset_IBUF1,
      Q => Intern_clock_tenHzClock_current_count(3)
    );
  Intern_clock_oneHZClock_current_count_0 : FDSE
    port map (
      C => clk_BUFGP_231,
      CE => Intern_clock_tenHzClock_i_zero_95,
      D => Intern_clock_oneHZClock_Mcount_current_count,
      S => reset_IBUF1,
      Q => Intern_clock_oneHZClock_current_count(0)
    );
  Intern_clock_oneHZClock_current_count_1 : FDRE
    port map (
      C => clk_BUFGP_231,
      CE => Intern_clock_tenHzClock_i_zero_95,
      D => Intern_clock_oneHZClock_Mcount_current_count1,
      R => reset_IBUF1,
      Q => Intern_clock_oneHZClock_current_count(1)
    );
  Intern_clock_oneHZClock_current_count_2 : FDRE
    port map (
      C => clk_BUFGP_231,
      CE => Intern_clock_tenHzClock_i_zero_95,
      D => Intern_clock_oneHZClock_Mcount_current_count2,
      R => reset_IBUF1,
      Q => Intern_clock_oneHZClock_current_count(2)
    );
  Intern_clock_oneHZClock_current_count_3 : FDSE
    port map (
      C => clk_BUFGP_231,
      CE => Intern_clock_tenHzClock_i_zero_95,
      D => Intern_clock_oneHZClock_Mcount_current_count3,
      S => reset_IBUF1,
      Q => Intern_clock_oneHZClock_current_count(3)
    );
  Intern_clock_kiloHzClock_current_count_0 : FDS
    port map (
      C => clk_BUFGP_231,
      D => Intern_clock_kiloHzClock_Mcount_current_count_eqn_0,
      S => reset_IBUF1,
      Q => Intern_clock_kiloHzClock_current_count(0)
    );
  Intern_clock_kiloHzClock_current_count_1 : FDS
    port map (
      C => clk_BUFGP_231,
      D => Intern_clock_kiloHzClock_Mcount_current_count_eqn_1,
      S => reset_IBUF1,
      Q => Intern_clock_kiloHzClock_current_count(1)
    );
  Intern_clock_kiloHzClock_current_count_2 : FDR
    port map (
      C => clk_BUFGP_231,
      D => Intern_clock_kiloHzClock_Mcount_current_count_eqn_2,
      R => reset_IBUF1,
      Q => Intern_clock_kiloHzClock_current_count(2)
    );
  Intern_clock_kiloHzClock_current_count_3 : FDS
    port map (
      C => clk_BUFGP_231,
      D => Intern_clock_kiloHzClock_Mcount_current_count_eqn_3,
      S => reset_IBUF1,
      Q => Intern_clock_kiloHzClock_current_count(3)
    );
  Intern_clock_kiloHzClock_current_count_4 : FDS
    port map (
      C => clk_BUFGP_231,
      D => Intern_clock_kiloHzClock_Mcount_current_count_eqn_4,
      S => reset_IBUF1,
      Q => Intern_clock_kiloHzClock_current_count(4)
    );
  Intern_clock_kiloHzClock_current_count_5 : FDS
    port map (
      C => clk_BUFGP_231,
      D => Intern_clock_kiloHzClock_Mcount_current_count_eqn_5,
      S => reset_IBUF1,
      Q => Intern_clock_kiloHzClock_current_count(5)
    );
  Intern_clock_kiloHzClock_current_count_6 : FDR
    port map (
      C => clk_BUFGP_231,
      D => Intern_clock_kiloHzClock_Mcount_current_count_eqn_6,
      R => reset_IBUF1,
      Q => Intern_clock_kiloHzClock_current_count(6)
    );
  Intern_clock_kiloHzClock_current_count_7 : FDR
    port map (
      C => clk_BUFGP_231,
      D => Intern_clock_kiloHzClock_Mcount_current_count_eqn_7,
      R => reset_IBUF1,
      Q => Intern_clock_kiloHzClock_current_count(7)
    );
  Intern_clock_kiloHzClock_current_count_8 : FDS
    port map (
      C => clk_BUFGP_231,
      D => Intern_clock_kiloHzClock_Mcount_current_count_eqn_8,
      S => reset_IBUF1,
      Q => Intern_clock_kiloHzClock_current_count(8)
    );
  Intern_clock_kiloHzClock_current_count_9 : FDS
    port map (
      C => clk_BUFGP_231,
      D => Intern_clock_kiloHzClock_Mcount_current_count_eqn_9,
      S => reset_IBUF1,
      Q => Intern_clock_kiloHzClock_current_count(9)
    );
  Intern_clock_kiloHzClock_current_count_10 : FDS
    port map (
      C => clk_BUFGP_231,
      D => Intern_clock_kiloHzClock_Mcount_current_count_eqn_10,
      S => reset_IBUF1,
      Q => Intern_clock_kiloHzClock_current_count(10)
    );
  Intern_clock_kiloHzClock_current_count_11 : FDS
    port map (
      C => clk_BUFGP_231,
      D => Intern_clock_kiloHzClock_Mcount_current_count_eqn_11,
      S => reset_IBUF1,
      Q => Intern_clock_kiloHzClock_current_count(11)
    );
  Intern_clock_kiloHzClock_current_count_12 : FDR
    port map (
      C => clk_BUFGP_231,
      D => Intern_clock_kiloHzClock_Mcount_current_count_eqn_12,
      R => reset_IBUF1,
      Q => Intern_clock_kiloHzClock_current_count(12)
    );
  Intern_clock_kiloHzClock_current_count_13 : FDR
    port map (
      C => clk_BUFGP_231,
      D => Intern_clock_kiloHzClock_Mcount_current_count_eqn_13,
      R => reset_IBUF1,
      Q => Intern_clock_kiloHzClock_current_count(13)
    );
  Intern_clock_kiloHzClock_current_count_14 : FDR
    port map (
      C => clk_BUFGP_231,
      D => Intern_clock_kiloHzClock_Mcount_current_count_eqn_14,
      R => reset_IBUF1,
      Q => Intern_clock_kiloHzClock_current_count(14)
    );
  Intern_clock_kiloHzClock_Mcount_current_count_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Intern_clock_kiloHzClock_Mcount_current_count_cy_0_rt_11,
      O => Intern_clock_kiloHzClock_Mcount_current_count_cy(0)
    );
  Intern_clock_kiloHzClock_Mcount_current_count_xor_0_Q : XORCY
    port map (
      CI => N1,
      LI => Intern_clock_kiloHzClock_Mcount_current_count_cy_0_rt_11,
      O => Result(0)
    );
  Intern_clock_kiloHzClock_Mcount_current_count_cy_1_Q : MUXCY
    port map (
      CI => Intern_clock_kiloHzClock_Mcount_current_count_cy(0),
      DI => N1,
      S => Intern_clock_kiloHzClock_Mcount_current_count_lut(1),
      O => Intern_clock_kiloHzClock_Mcount_current_count_cy(1)
    );
  Intern_clock_kiloHzClock_Mcount_current_count_xor_1_Q : XORCY
    port map (
      CI => Intern_clock_kiloHzClock_Mcount_current_count_cy(0),
      LI => Intern_clock_kiloHzClock_Mcount_current_count_lut(1),
      O => Result(1)
    );
  Intern_clock_kiloHzClock_Mcount_current_count_cy_2_Q : MUXCY
    port map (
      CI => Intern_clock_kiloHzClock_Mcount_current_count_cy(1),
      DI => N1,
      S => Intern_clock_kiloHzClock_Mcount_current_count_lut(2),
      O => Intern_clock_kiloHzClock_Mcount_current_count_cy(2)
    );
  Intern_clock_kiloHzClock_Mcount_current_count_xor_2_Q : XORCY
    port map (
      CI => Intern_clock_kiloHzClock_Mcount_current_count_cy(1),
      LI => Intern_clock_kiloHzClock_Mcount_current_count_lut(2),
      O => Result(2)
    );
  Intern_clock_kiloHzClock_Mcount_current_count_cy_3_Q : MUXCY
    port map (
      CI => Intern_clock_kiloHzClock_Mcount_current_count_cy(2),
      DI => N1,
      S => Intern_clock_kiloHzClock_Mcount_current_count_lut(3),
      O => Intern_clock_kiloHzClock_Mcount_current_count_cy(3)
    );
  Intern_clock_kiloHzClock_Mcount_current_count_xor_3_Q : XORCY
    port map (
      CI => Intern_clock_kiloHzClock_Mcount_current_count_cy(2),
      LI => Intern_clock_kiloHzClock_Mcount_current_count_lut(3),
      O => Result(3)
    );
  Intern_clock_kiloHzClock_Mcount_current_count_cy_4_Q : MUXCY
    port map (
      CI => Intern_clock_kiloHzClock_Mcount_current_count_cy(3),
      DI => N1,
      S => Intern_clock_kiloHzClock_Mcount_current_count_lut(4),
      O => Intern_clock_kiloHzClock_Mcount_current_count_cy(4)
    );
  Intern_clock_kiloHzClock_Mcount_current_count_xor_4_Q : XORCY
    port map (
      CI => Intern_clock_kiloHzClock_Mcount_current_count_cy(3),
      LI => Intern_clock_kiloHzClock_Mcount_current_count_lut(4),
      O => Result(4)
    );
  Intern_clock_kiloHzClock_Mcount_current_count_cy_5_Q : MUXCY
    port map (
      CI => Intern_clock_kiloHzClock_Mcount_current_count_cy(4),
      DI => N1,
      S => Intern_clock_kiloHzClock_Mcount_current_count_lut(5),
      O => Intern_clock_kiloHzClock_Mcount_current_count_cy(5)
    );
  Intern_clock_kiloHzClock_Mcount_current_count_xor_5_Q : XORCY
    port map (
      CI => Intern_clock_kiloHzClock_Mcount_current_count_cy(4),
      LI => Intern_clock_kiloHzClock_Mcount_current_count_lut(5),
      O => Result(5)
    );
  Intern_clock_kiloHzClock_Mcount_current_count_cy_6_Q : MUXCY
    port map (
      CI => Intern_clock_kiloHzClock_Mcount_current_count_cy(5),
      DI => N1,
      S => Intern_clock_kiloHzClock_Mcount_current_count_lut(6),
      O => Intern_clock_kiloHzClock_Mcount_current_count_cy(6)
    );
  Intern_clock_kiloHzClock_Mcount_current_count_xor_6_Q : XORCY
    port map (
      CI => Intern_clock_kiloHzClock_Mcount_current_count_cy(5),
      LI => Intern_clock_kiloHzClock_Mcount_current_count_lut(6),
      O => Result(6)
    );
  Intern_clock_kiloHzClock_Mcount_current_count_cy_7_Q : MUXCY
    port map (
      CI => Intern_clock_kiloHzClock_Mcount_current_count_cy(6),
      DI => N1,
      S => Intern_clock_kiloHzClock_Mcount_current_count_lut(7),
      O => Intern_clock_kiloHzClock_Mcount_current_count_cy(7)
    );
  Intern_clock_kiloHzClock_Mcount_current_count_xor_7_Q : XORCY
    port map (
      CI => Intern_clock_kiloHzClock_Mcount_current_count_cy(6),
      LI => Intern_clock_kiloHzClock_Mcount_current_count_lut(7),
      O => Result(7)
    );
  Intern_clock_kiloHzClock_Mcount_current_count_cy_8_Q : MUXCY
    port map (
      CI => Intern_clock_kiloHzClock_Mcount_current_count_cy(7),
      DI => N1,
      S => Intern_clock_kiloHzClock_Mcount_current_count_lut(8),
      O => Intern_clock_kiloHzClock_Mcount_current_count_cy(8)
    );
  Intern_clock_kiloHzClock_Mcount_current_count_xor_8_Q : XORCY
    port map (
      CI => Intern_clock_kiloHzClock_Mcount_current_count_cy(7),
      LI => Intern_clock_kiloHzClock_Mcount_current_count_lut(8),
      O => Result(8)
    );
  Intern_clock_kiloHzClock_Mcount_current_count_cy_9_Q : MUXCY
    port map (
      CI => Intern_clock_kiloHzClock_Mcount_current_count_cy(8),
      DI => N1,
      S => Intern_clock_kiloHzClock_Mcount_current_count_lut(9),
      O => Intern_clock_kiloHzClock_Mcount_current_count_cy(9)
    );
  Intern_clock_kiloHzClock_Mcount_current_count_xor_9_Q : XORCY
    port map (
      CI => Intern_clock_kiloHzClock_Mcount_current_count_cy(8),
      LI => Intern_clock_kiloHzClock_Mcount_current_count_lut(9),
      O => Result(9)
    );
  Intern_clock_kiloHzClock_Mcount_current_count_cy_10_Q : MUXCY
    port map (
      CI => Intern_clock_kiloHzClock_Mcount_current_count_cy(9),
      DI => N1,
      S => Intern_clock_kiloHzClock_Mcount_current_count_lut(10),
      O => Intern_clock_kiloHzClock_Mcount_current_count_cy(10)
    );
  Intern_clock_kiloHzClock_Mcount_current_count_xor_10_Q : XORCY
    port map (
      CI => Intern_clock_kiloHzClock_Mcount_current_count_cy(9),
      LI => Intern_clock_kiloHzClock_Mcount_current_count_lut(10),
      O => Result(10)
    );
  Intern_clock_kiloHzClock_Mcount_current_count_cy_11_Q : MUXCY
    port map (
      CI => Intern_clock_kiloHzClock_Mcount_current_count_cy(10),
      DI => N1,
      S => Intern_clock_kiloHzClock_Mcount_current_count_lut(11),
      O => Intern_clock_kiloHzClock_Mcount_current_count_cy(11)
    );
  Intern_clock_kiloHzClock_Mcount_current_count_xor_11_Q : XORCY
    port map (
      CI => Intern_clock_kiloHzClock_Mcount_current_count_cy(10),
      LI => Intern_clock_kiloHzClock_Mcount_current_count_lut(11),
      O => Result(11)
    );
  Intern_clock_kiloHzClock_Mcount_current_count_cy_12_Q : MUXCY
    port map (
      CI => Intern_clock_kiloHzClock_Mcount_current_count_cy(11),
      DI => N1,
      S => Intern_clock_kiloHzClock_Mcount_current_count_lut(12),
      O => Intern_clock_kiloHzClock_Mcount_current_count_cy(12)
    );
  Intern_clock_kiloHzClock_Mcount_current_count_xor_12_Q : XORCY
    port map (
      CI => Intern_clock_kiloHzClock_Mcount_current_count_cy(11),
      LI => Intern_clock_kiloHzClock_Mcount_current_count_lut(12),
      O => Result(12)
    );
  Intern_clock_kiloHzClock_Mcount_current_count_cy_13_Q : MUXCY
    port map (
      CI => Intern_clock_kiloHzClock_Mcount_current_count_cy(12),
      DI => N1,
      S => Intern_clock_kiloHzClock_Mcount_current_count_lut(13),
      O => Intern_clock_kiloHzClock_Mcount_current_count_cy(13)
    );
  Intern_clock_kiloHzClock_Mcount_current_count_xor_13_Q : XORCY
    port map (
      CI => Intern_clock_kiloHzClock_Mcount_current_count_cy(12),
      LI => Intern_clock_kiloHzClock_Mcount_current_count_lut(13),
      O => Result(13)
    );
  Intern_clock_kiloHzClock_Mcount_current_count_xor_14_Q : XORCY
    port map (
      CI => Intern_clock_kiloHzClock_Mcount_current_count_cy(13),
      LI => Intern_clock_kiloHzClock_Mcount_current_count_lut(14),
      O => Result(14)
    );
  PCreg_q_15 : FDCE
    port map (
      C => Intern_clock_oneHZClock_i_zero_84,
      CE => i_pc_en_after_or,
      CLR => reset_IBUF1,
      D => i_pc_prime(15),
      Q => PCreg_q(15)
    );
  PCreg_q_14 : FDCE
    port map (
      C => Intern_clock_oneHZClock_i_zero_84,
      CE => i_pc_en_after_or,
      CLR => reset_IBUF1,
      D => i_pc_prime(14),
      Q => PCreg_q(14)
    );
  PCreg_q_13 : FDCE
    port map (
      C => Intern_clock_oneHZClock_i_zero_84,
      CE => i_pc_en_after_or,
      CLR => reset_IBUF1,
      D => i_pc_prime(13),
      Q => PCreg_q(13)
    );
  PCreg_q_12 : FDCE
    port map (
      C => Intern_clock_oneHZClock_i_zero_84,
      CE => i_pc_en_after_or,
      CLR => reset_IBUF1,
      D => i_pc_prime(12),
      Q => PCreg_q(12)
    );
  PCreg_q_11 : FDCE
    port map (
      C => Intern_clock_oneHZClock_i_zero_84,
      CE => i_pc_en_after_or,
      CLR => reset_IBUF1,
      D => i_pc_prime(11),
      Q => PCreg_q(11)
    );
  PCreg_q_10 : FDCE
    port map (
      C => Intern_clock_oneHZClock_i_zero_84,
      CE => i_pc_en_after_or,
      CLR => reset_IBUF1,
      D => i_pc_prime(10),
      Q => PCreg_q(10)
    );
  PCreg_q_9 : FDCE
    port map (
      C => Intern_clock_oneHZClock_i_zero_84,
      CE => i_pc_en_after_or,
      CLR => reset_IBUF1,
      D => i_pc_prime(9),
      Q => PCreg_q(9)
    );
  PCreg_q_8 : FDCE
    port map (
      C => Intern_clock_oneHZClock_i_zero_84,
      CE => i_pc_en_after_or,
      CLR => reset_IBUF1,
      D => i_pc_prime(8),
      Q => PCreg_q(8)
    );
  PCreg_q_7 : FDCE
    port map (
      C => Intern_clock_oneHZClock_i_zero_84,
      CE => i_pc_en_after_or,
      CLR => reset_IBUF1,
      D => i_pc_prime(7),
      Q => PCreg_q(7)
    );
  PCreg_q_6 : FDCE
    port map (
      C => Intern_clock_oneHZClock_i_zero_84,
      CE => i_pc_en_after_or,
      CLR => reset_IBUF1,
      D => i_pc_prime(6),
      Q => PCreg_q(6)
    );
  PCreg_q_5 : FDCE
    port map (
      C => Intern_clock_oneHZClock_i_zero_84,
      CE => i_pc_en_after_or,
      CLR => reset_IBUF1,
      D => i_pc_prime(5),
      Q => PCreg_q(5)
    );
  PCreg_q_4 : FDPE
    port map (
      C => Intern_clock_oneHZClock_i_zero_84,
      CE => i_pc_en_after_or,
      D => i_pc_prime(4),
      PRE => reset_IBUF1,
      Q => PCreg_q(4)
    );
  PCreg_q_3 : FDCE
    port map (
      C => Intern_clock_oneHZClock_i_zero_84,
      CE => i_pc_en_after_or,
      CLR => reset_IBUF1,
      D => i_pc_prime(3),
      Q => PCreg_q(3)
    );
  PCreg_q_2 : FDCE
    port map (
      C => Intern_clock_oneHZClock_i_zero_84,
      CE => i_pc_en_after_or,
      CLR => reset_IBUF1,
      D => i_pc_prime(2),
      Q => PCreg_q(2)
    );
  PCreg_q_1 : FDPE
    port map (
      C => Intern_clock_oneHZClock_i_zero_84,
      CE => i_pc_en_after_or,
      D => i_pc_prime(1),
      PRE => reset_IBUF1,
      Q => PCreg_q(1)
    );
  PCreg_q_0 : FDPE
    port map (
      C => Intern_clock_oneHZClock_i_zero_84,
      CE => i_pc_en_after_or,
      D => i_pc_prime(0),
      PRE => reset_IBUF1,
      Q => PCreg_q(0)
    );
  MEM_i_nibbleCount_1 : FDPE
    port map (
      C => Intern_clock_oneHZClock_i_zero_84,
      CE => cycle_control_unit_mem_en_270,
      D => MEM_Mcount_i_nibbleCount1,
      PRE => reset_IBUF1,
      Q => MEM_i_nibbleCount(1)
    );
  MEM_i_nibbleCount_0 : FDPE
    port map (
      C => Intern_clock_oneHZClock_i_zero_84,
      CE => cycle_control_unit_mem_en_270,
      D => MEM_Mcount_i_nibbleCount,
      PRE => reset_IBUF1,
      Q => MEM_i_nibbleCount(0)
    );
  MEM_q_15 : FDCE
    port map (
      C => Intern_clock_oneHZClock_i_zero_84,
      CE => MEM_q_12_not0001,
      CLR => reset_IBUF1,
      D => i_data_frm_ram(3),
      Q => MEM_q(15)
    );
  MEM_q_14 : FDCE
    port map (
      C => Intern_clock_oneHZClock_i_zero_84,
      CE => MEM_q_12_not0001,
      CLR => reset_IBUF1,
      D => i_data_frm_ram(2),
      Q => MEM_q(14)
    );
  MEM_q_13 : FDCE
    port map (
      C => Intern_clock_oneHZClock_i_zero_84,
      CE => MEM_q_12_not0001,
      CLR => reset_IBUF1,
      D => i_data_frm_ram(1),
      Q => MEM_q(13)
    );
  MEM_q_9 : FDCE
    port map (
      C => Intern_clock_oneHZClock_i_zero_84,
      CE => MEM_q_10_not0001,
      CLR => reset_IBUF1,
      D => i_data_frm_ram(1),
      Q => MEM_q(9)
    );
  MEM_q_12 : FDCE
    port map (
      C => Intern_clock_oneHZClock_i_zero_84,
      CE => MEM_q_12_not0001,
      CLR => reset_IBUF1,
      D => i_data_frm_ram(0),
      Q => MEM_q(12)
    );
  MEM_q_8 : FDCE
    port map (
      C => Intern_clock_oneHZClock_i_zero_84,
      CE => MEM_q_10_not0001,
      CLR => reset_IBUF1,
      D => i_data_frm_ram(0),
      Q => MEM_q(8)
    );
  MEM_q_11 : FDCE
    port map (
      C => Intern_clock_oneHZClock_i_zero_84,
      CE => MEM_q_10_not0001,
      CLR => reset_IBUF1,
      D => i_data_frm_ram(3),
      Q => MEM_q(11)
    );
  MEM_q_7 : FDCE
    port map (
      C => Intern_clock_oneHZClock_i_zero_84,
      CE => MEM_q_4_not0001,
      CLR => reset_IBUF1,
      D => i_data_frm_ram(3),
      Q => MEM_q(7)
    );
  MEM_q_10 : FDCE
    port map (
      C => Intern_clock_oneHZClock_i_zero_84,
      CE => MEM_q_10_not0001,
      CLR => reset_IBUF1,
      D => i_data_frm_ram(2),
      Q => MEM_q(10)
    );
  MEM_q_6 : FDCE
    port map (
      C => Intern_clock_oneHZClock_i_zero_84,
      CE => MEM_q_4_not0001,
      CLR => reset_IBUF1,
      D => i_data_frm_ram(2),
      Q => MEM_q(6)
    );
  MEM_q_5 : FDCE
    port map (
      C => Intern_clock_oneHZClock_i_zero_84,
      CE => MEM_q_4_not0001,
      CLR => reset_IBUF1,
      D => i_data_frm_ram(1),
      Q => MEM_q(5)
    );
  MEM_q_4 : FDCE
    port map (
      C => Intern_clock_oneHZClock_i_zero_84,
      CE => MEM_q_4_not0001,
      CLR => reset_IBUF1,
      D => i_data_frm_ram(0),
      Q => MEM_q(4)
    );
  MEM_q_3 : FDCE
    port map (
      C => Intern_clock_oneHZClock_i_zero_84,
      CE => MEM_q_0_not0001,
      CLR => reset_IBUF1,
      D => i_data_frm_ram(3),
      Q => MEM_q(3)
    );
  MEM_q_1 : FDCE
    port map (
      C => Intern_clock_oneHZClock_i_zero_84,
      CE => MEM_q_0_not0001,
      CLR => reset_IBUF1,
      D => i_data_frm_ram(1),
      Q => MEM_q(1)
    );
  MEM_q_0 : FDCE
    port map (
      C => Intern_clock_oneHZClock_i_zero_84,
      CE => MEM_q_0_not0001,
      CLR => reset_IBUF1,
      D => i_data_frm_ram(0),
      Q => MEM_q(0)
    );
  MEM_q_2 : FDCE
    port map (
      C => Intern_clock_oneHZClock_i_zero_84,
      CE => MEM_q_0_not0001,
      CLR => reset_IBUF1,
      D => i_data_frm_ram(2),
      Q => MEM_q(2)
    );
  cycle_control_unit_cycle_counter_1 : FDC
    port map (
      C => Intern_clock_oneHZClock_i_zero_84,
      CLR => cycle_control_unit_Mcount_cycle_counter_val,
      D => cycle_control_unit_Mcount_cycle_counter1,
      Q => cycle_control_unit_cycle_counter(1)
    );
  cycle_control_unit_cycle_counter_0 : FDCP
    port map (
      C => Intern_clock_oneHZClock_i_zero_84,
      CLR => cycle_control_unit_cycle_counter_or0000,
      D => cycle_control_unit_Mcount_cycle_counter,
      PRE => reset_IBUF1,
      Q => cycle_control_unit_cycle_counter(0)
    );
  cycle_control_unit_cycle_counter_2 : FDC
    port map (
      C => Intern_clock_oneHZClock_i_zero_84,
      CLR => cycle_control_unit_Mcount_cycle_counter_val,
      D => cycle_control_unit_Mcount_cycle_counter2,
      Q => cycle_control_unit_cycle_counter(2)
    );
  cycle_control_unit_received_hlt : LDCE
    port map (
      CLR => reset_IBUF1,
      D => N1,
      G => i_hlt,
      GE => cycle_control_unit_received_hlt_0_not0000,
      Q => cycle_control_unit_received_hlt_276
    );
  cycle_control_unit_op_en : FDCP
    port map (
      C => Intern_clock_oneHZClock_i_zero_84,
      CLR => cycle_control_unit_cycle_counter_or0000,
      D => cycle_control_unit_op_en_mux0000,
      PRE => reset_IBUF1,
      Q => cycle_control_unit_op_en_272
    );
  cycle_control_unit_exe : FDC
    port map (
      C => Intern_clock_oneHZClock_i_zero_84,
      CLR => cycle_control_unit_Mcount_cycle_counter_val,
      D => cycle_control_unit_exe_mux0000,
      Q => cycle_control_unit_exe_268
    );
  cycle_control_unit_mem_en : FDC
    port map (
      C => Intern_clock_oneHZClock_i_zero_84,
      CLR => cycle_control_unit_Mcount_cycle_counter_val,
      D => cycle_control_unit_mem_en_mux0000,
      Q => cycle_control_unit_mem_en_270
    );
  cycle_control_unit_pc_en : FDCP
    port map (
      C => Intern_clock_oneHZClock_i_zero_84,
      CLR => cycle_control_unit_cycle_counter_or0000,
      D => cycle_control_unit_pc_en_mux0000,
      PRE => reset_IBUF1,
      Q => cycle_control_unit_pc_en_274
    );
  cpu_alu_DECODER_stored_OP_Code_0 : FDE
    port map (
      C => Intern_clock_oneHZClock_i_zero_84,
      CE => cycle_control_unit_op_en_272,
      D => i_data_frm_ram(0),
      Q => cpu_alu_DECODER_stored_OP_Code(0)
    );
  cpu_alu_DECODER_stored_OP_Code_1 : FDE
    port map (
      C => Intern_clock_oneHZClock_i_zero_84,
      CE => cycle_control_unit_op_en_272,
      D => i_data_frm_ram(1),
      Q => cpu_alu_DECODER_stored_OP_Code(1)
    );
  cpu_alu_DECODER_stored_OP_Code_2 : FDE
    port map (
      C => Intern_clock_oneHZClock_i_zero_84,
      CE => cycle_control_unit_op_en_272,
      D => i_data_frm_ram(2),
      Q => cpu_alu_DECODER_stored_OP_Code(2)
    );
  cpu_alu_DECODER_stored_OP_Code_3 : FDE
    port map (
      C => Intern_clock_oneHZClock_i_zero_84,
      CE => cycle_control_unit_op_en_272,
      D => i_data_frm_ram(3),
      Q => cpu_alu_DECODER_stored_OP_Code(3)
    );
  cpu_alu_STAT_data_out_0 : FDRE
    port map (
      C => Intern_clock_oneHZClock_i_zero_84,
      CE => cpu_alu_i_STAT_EN,
      D => cpu_alu_i_carry_in_258,
      R => reset_IBUF1,
      Q => cpu_alu_STAT_data_out_0_Q
    );
  cpu_alu_STAT_data_out_1 : FDRE
    port map (
      C => Intern_clock_oneHZClock_i_zero_84,
      CE => cpu_alu_i_STAT_EN,
      D => i_hlt,
      R => reset_IBUF1,
      Q => cpu_alu_STAT_data_out_1_Q
    );
  cpu_alu_STAT_data_out_3 : FDRE
    port map (
      C => Intern_clock_oneHZClock_i_zero_84,
      CE => cpu_alu_i_STAT_EN,
      D => cpu_alu_i_XORb_in_256,
      R => reset_IBUF1,
      Q => cpu_alu_STAT_data_out_3_Q
    );
  cycle_control_unit_cycle_counter_or00001 : LUT3
    generic map(
      INIT => X"32"
    )
    port map (
      I0 => i_hlt,
      I1 => reset_IBUF1,
      I2 => cycle_control_unit_received_hlt_276,
      O => cycle_control_unit_cycle_counter_or0000
    );
  cycle_control_unit_Mcount_cycle_counter_val1 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => reset_IBUF1,
      I1 => i_hlt,
      I2 => cycle_control_unit_received_hlt_276,
      O => cycle_control_unit_Mcount_cycle_counter_val
    );
  i_ram_address_9_1 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => cycle_control_unit_exe_268,
      I1 => MEM_q(9),
      I2 => PCreg_q(9),
      O => ram_address_9_OBUF_346
    );
  i_ram_address_8_1 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => cycle_control_unit_exe_268,
      I1 => MEM_q(8),
      I2 => PCreg_q(8),
      O => ram_address_8_OBUF_345
    );
  i_ram_address_7_1 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => cycle_control_unit_exe_268,
      I1 => MEM_q(7),
      I2 => PCreg_q(7),
      O => ram_address_7_OBUF_344
    );
  i_ram_address_6_1 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => cycle_control_unit_exe_268,
      I1 => MEM_q(6),
      I2 => PCreg_q(6),
      O => ram_address_6_OBUF_343
    );
  i_ram_address_5_1 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => cycle_control_unit_exe_268,
      I1 => MEM_q(5),
      I2 => PCreg_q(5),
      O => ram_address_5_OBUF_342
    );
  i_ram_address_4_1 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => cycle_control_unit_exe_268,
      I1 => MEM_q(4),
      I2 => PCreg_q(4),
      O => ram_address_4_OBUF_341
    );
  i_ram_address_3_1 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => cycle_control_unit_exe_268,
      I1 => MEM_q(3),
      I2 => PCreg_q(3),
      O => ram_address_3_OBUF_340
    );
  i_ram_address_2_1 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => cycle_control_unit_exe_268,
      I1 => MEM_q(2),
      I2 => PCreg_q(2),
      O => ram_address_2_OBUF_339
    );
  i_ram_address_1_1 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => cycle_control_unit_exe_268,
      I1 => MEM_q(1),
      I2 => PCreg_q(1),
      O => ram_address_1_OBUF_338
    );
  i_ram_address_15_1 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => cycle_control_unit_exe_268,
      I1 => MEM_q(15),
      I2 => PCreg_q(15),
      O => ram_address_15_OBUF_337
    );
  i_ram_address_14_1 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => cycle_control_unit_exe_268,
      I1 => MEM_q(14),
      I2 => PCreg_q(14),
      O => ram_address_14_OBUF_336
    );
  i_ram_address_13_1 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => cycle_control_unit_exe_268,
      I1 => MEM_q(13),
      I2 => PCreg_q(13),
      O => ram_address_13_OBUF_335
    );
  i_ram_address_12_1 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => cycle_control_unit_exe_268,
      I1 => MEM_q(12),
      I2 => PCreg_q(12),
      O => ram_address_12_OBUF_334
    );
  i_ram_address_11_1 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => cycle_control_unit_exe_268,
      I1 => MEM_q(11),
      I2 => PCreg_q(11),
      O => ram_address_11_OBUF_333
    );
  i_ram_address_10_1 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => cycle_control_unit_exe_268,
      I1 => MEM_q(10),
      I2 => PCreg_q(10),
      O => ram_address_10_OBUF_332
    );
  i_ram_address_0_1 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => cycle_control_unit_exe_268,
      I1 => MEM_q(0),
      I2 => PCreg_q(0),
      O => ram_address_0_OBUF_331
    );
  MEM_Mcount_i_nibbleCount_xor_1_11 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => MEM_i_nibbleCount(0),
      I1 => MEM_i_nibbleCount(1),
      O => MEM_Mcount_i_nibbleCount1
    );
  cycle_control_unit_Mcount_cycle_counter_xor_2_11 : LUT3
    generic map(
      INIT => X"62"
    )
    port map (
      I0 => cycle_control_unit_cycle_counter(2),
      I1 => cycle_control_unit_cycle_counter(0),
      I2 => cycle_control_unit_cycle_counter(1),
      O => cycle_control_unit_Mcount_cycle_counter2
    );
  cycle_control_unit_Mcount_cycle_counter_xor_1_11 : LUT3
    generic map(
      INIT => X"26"
    )
    port map (
      I0 => cycle_control_unit_cycle_counter(1),
      I1 => cycle_control_unit_cycle_counter(0),
      I2 => cycle_control_unit_cycle_counter(2),
      O => cycle_control_unit_Mcount_cycle_counter1
    );
  cycle_control_unit_pc_en_mux00001 : LUT4
    generic map(
      INIT => X"BF1F"
    )
    port map (
      I0 => cycle_control_unit_cycle_counter(1),
      I1 => cycle_control_unit_cycle_counter(0),
      I2 => cycle_control_unit_cycle_counter(2),
      I3 => cycle_control_unit_pc_en_274,
      O => cycle_control_unit_pc_en_mux0000
    );
  cycle_control_unit_exe_mux00001 : LUT4
    generic map(
      INIT => X"A280"
    )
    port map (
      I0 => cycle_control_unit_cycle_counter(2),
      I1 => cycle_control_unit_cycle_counter(1),
      I2 => cycle_control_unit_exe_268,
      I3 => cycle_control_unit_cycle_counter(0),
      O => cycle_control_unit_exe_mux0000
    );
  cycle_control_unit_op_en_mux00001 : LUT4
    generic map(
      INIT => X"8091"
    )
    port map (
      I0 => cycle_control_unit_cycle_counter(1),
      I1 => cycle_control_unit_cycle_counter(2),
      I2 => cycle_control_unit_op_en_272,
      I3 => cycle_control_unit_cycle_counter(0),
      O => cycle_control_unit_op_en_mux0000
    );
  Intern_clock_tenHzClock_Mcount_current_count_xor_1_11 : LUT4
    generic map(
      INIT => X"9998"
    )
    port map (
      I0 => Intern_clock_tenHzClock_current_count(0),
      I1 => Intern_clock_tenHzClock_current_count(1),
      I2 => Intern_clock_tenHzClock_current_count(2),
      I3 => Intern_clock_tenHzClock_current_count(3),
      O => Intern_clock_tenHzClock_Mcount_current_count1
    );
  Intern_clock_oneHZClock_Mcount_current_count_xor_1_11 : LUT4
    generic map(
      INIT => X"9998"
    )
    port map (
      I0 => Intern_clock_oneHZClock_current_count(0),
      I1 => Intern_clock_oneHZClock_current_count(1),
      I2 => Intern_clock_oneHZClock_current_count(2),
      I3 => Intern_clock_oneHZClock_current_count(3),
      O => Intern_clock_oneHZClock_Mcount_current_count1
    );
  Intern_clock_hundredHzClock_Mcount_current_count_xor_1_11 : LUT4
    generic map(
      INIT => X"9998"
    )
    port map (
      I0 => Intern_clock_hundredHzClock_current_count(0),
      I1 => Intern_clock_hundredHzClock_current_count(1),
      I2 => Intern_clock_hundredHzClock_current_count(2),
      I3 => Intern_clock_hundredHzClock_current_count(3),
      O => Intern_clock_hundredHzClock_Mcount_current_count1
    );
  Intern_clock_tenHzClock_Mcount_current_count_xor_2_11 : LUT4
    generic map(
      INIT => X"C9C8"
    )
    port map (
      I0 => Intern_clock_tenHzClock_current_count(1),
      I1 => Intern_clock_tenHzClock_current_count(2),
      I2 => Intern_clock_tenHzClock_current_count(0),
      I3 => Intern_clock_tenHzClock_current_count(3),
      O => Intern_clock_tenHzClock_Mcount_current_count2
    );
  Intern_clock_oneHZClock_Mcount_current_count_xor_2_11 : LUT4
    generic map(
      INIT => X"C9C8"
    )
    port map (
      I0 => Intern_clock_oneHZClock_current_count(1),
      I1 => Intern_clock_oneHZClock_current_count(2),
      I2 => Intern_clock_oneHZClock_current_count(0),
      I3 => Intern_clock_oneHZClock_current_count(3),
      O => Intern_clock_oneHZClock_Mcount_current_count2
    );
  Intern_clock_hundredHzClock_Mcount_current_count_xor_2_11 : LUT4
    generic map(
      INIT => X"C9C8"
    )
    port map (
      I0 => Intern_clock_hundredHzClock_current_count(1),
      I1 => Intern_clock_hundredHzClock_current_count(2),
      I2 => Intern_clock_hundredHzClock_current_count(0),
      I3 => Intern_clock_hundredHzClock_current_count(3),
      O => Intern_clock_hundredHzClock_Mcount_current_count2
    );
  cycle_control_unit_mem_en_mux00001 : LUT4
    generic map(
      INIT => X"BE36"
    )
    port map (
      I0 => cycle_control_unit_cycle_counter(1),
      I1 => cycle_control_unit_cycle_counter(2),
      I2 => cycle_control_unit_cycle_counter(0),
      I3 => cycle_control_unit_mem_en_270,
      O => cycle_control_unit_mem_en_mux0000
    );
  Intern_clock_tenHzClock_Mcount_current_count_xor_3_11 : LUT4
    generic map(
      INIT => X"AAA9"
    )
    port map (
      I0 => Intern_clock_tenHzClock_current_count(3),
      I1 => Intern_clock_tenHzClock_current_count(1),
      I2 => Intern_clock_tenHzClock_current_count(0),
      I3 => Intern_clock_tenHzClock_current_count(2),
      O => Intern_clock_tenHzClock_Mcount_current_count3
    );
  Intern_clock_oneHZClock_Mcount_current_count_xor_3_11 : LUT4
    generic map(
      INIT => X"AAA9"
    )
    port map (
      I0 => Intern_clock_oneHZClock_current_count(3),
      I1 => Intern_clock_oneHZClock_current_count(1),
      I2 => Intern_clock_oneHZClock_current_count(0),
      I3 => Intern_clock_oneHZClock_current_count(2),
      O => Intern_clock_oneHZClock_Mcount_current_count3
    );
  Intern_clock_hundredHzClock_Mcount_current_count_xor_3_11 : LUT4
    generic map(
      INIT => X"AAA9"
    )
    port map (
      I0 => Intern_clock_hundredHzClock_current_count(3),
      I1 => Intern_clock_hundredHzClock_current_count(1),
      I2 => Intern_clock_hundredHzClock_current_count(0),
      I3 => Intern_clock_hundredHzClock_current_count(2),
      O => Intern_clock_hundredHzClock_Mcount_current_count3
    );
  MEM_q_4_not00011 : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => MEM_i_nibbleCount(0),
      I1 => MEM_i_nibbleCount(1),
      I2 => cycle_control_unit_mem_en_270,
      O => MEM_q_4_not0001
    );
  MEM_q_12_not00011 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => MEM_i_nibbleCount(1),
      I1 => MEM_i_nibbleCount(0),
      I2 => cycle_control_unit_mem_en_270,
      O => MEM_q_12_not0001
    );
  MEM_q_10_not00011 : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => MEM_i_nibbleCount(1),
      I1 => MEM_i_nibbleCount(0),
      I2 => cycle_control_unit_mem_en_270,
      O => MEM_q_10_not0001
    );
  MEM_q_0_not00011 : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => MEM_i_nibbleCount(1),
      I1 => cycle_control_unit_mem_en_270,
      I2 => MEM_i_nibbleCount(0),
      O => MEM_q_0_not0001
    );
  Intern_clock_tenHzClock_i_zero_or0000_SW0 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => Intern_clock_tenHzClock_current_count(3),
      I1 => Intern_clock_tenHzClock_current_count(2),
      I2 => reset_IBUF1,
      O => N9
    );
  Intern_clock_tenHzClock_i_zero_or0000 : LUT4
    generic map(
      INIT => X"FFFB"
    )
    port map (
      I0 => Intern_clock_tenHzClock_current_count(0),
      I1 => Intern_clock_hundredHzClock_i_zero_8,
      I2 => Intern_clock_tenHzClock_current_count(1),
      I3 => N9,
      O => Intern_clock_tenHzClock_i_zero_or0000_96
    );
  Intern_clock_oneHZClock_i_zero_or0000_SW0 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => Intern_clock_oneHZClock_current_count(3),
      I1 => Intern_clock_oneHZClock_current_count(2),
      I2 => reset_IBUF1,
      O => N11
    );
  Intern_clock_oneHZClock_i_zero_or0000 : LUT4
    generic map(
      INIT => X"FFFB"
    )
    port map (
      I0 => Intern_clock_oneHZClock_current_count(1),
      I1 => Intern_clock_tenHzClock_i_zero_95,
      I2 => Intern_clock_oneHZClock_current_count(0),
      I3 => N11,
      O => Intern_clock_oneHZClock_i_zero_or0000_86
    );
  Intern_clock_hundredHzClock_i_zero_or0000_SW0 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => Intern_clock_hundredHzClock_current_count(3),
      I1 => Intern_clock_hundredHzClock_current_count(2),
      I2 => reset_IBUF1,
      O => N13
    );
  Intern_clock_hundredHzClock_i_zero_or0000 : LUT4
    generic map(
      INIT => X"FFFB"
    )
    port map (
      I0 => Intern_clock_hundredHzClock_current_count(1),
      I1 => Intern_clock_kiloHzClock_i_zero_74,
      I2 => Intern_clock_hundredHzClock_current_count(0),
      I3 => N13,
      O => Intern_clock_hundredHzClock_i_zero_or0000_9
    );
  cpu_alu_DECODER_STAT_EN_and00001 : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => cpu_alu_i_A_EN,
      I1 => cpu_alu_DECODER_stored_OP_Code(2),
      I2 => cpu_alu_DECODER_stored_OP_Code(1),
      O => cpu_alu_i_STAT_EN
    );
  Intern_clock_kiloHzClock_Mcount_current_count_eqn_15 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => Result(1),
      I1 => Intern_clock_kiloHzClock_current_count_cmp_eq0000,
      O => Intern_clock_kiloHzClock_Mcount_current_count_eqn_1
    );
  Intern_clock_kiloHzClock_Mcount_current_count_eqn_01 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => Result(0),
      I1 => Intern_clock_kiloHzClock_current_count_cmp_eq0000,
      O => Intern_clock_kiloHzClock_Mcount_current_count_eqn_0
    );
  cpu_alu_DECODER_HLT_and00002 : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => cpu_alu_DECODER_stored_OP_Code(2),
      I1 => N128,
      I2 => cpu_alu_DECODER_stored_OP_Code(1),
      O => i_hlt
    );
  i_pc_en_after_or1 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => cycle_control_unit_pc_en_274,
      I1 => i_jmp,
      O => i_pc_en_after_or
    );
  Intern_clock_kiloHzClock_Mcount_current_count_eqn_21 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(2),
      I1 => Intern_clock_kiloHzClock_current_count_cmp_eq0000,
      O => Intern_clock_kiloHzClock_Mcount_current_count_eqn_2
    );
  Intern_clock_kiloHzClock_Mcount_current_count_eqn_31 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => Result(3),
      I1 => Intern_clock_kiloHzClock_current_count_cmp_eq0000,
      O => Intern_clock_kiloHzClock_Mcount_current_count_eqn_3
    );
  Intern_clock_kiloHzClock_Mcount_current_count_eqn_41 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => Result(4),
      I1 => Intern_clock_kiloHzClock_current_count_cmp_eq0000,
      O => Intern_clock_kiloHzClock_Mcount_current_count_eqn_4
    );
  Intern_clock_kiloHzClock_Mcount_current_count_eqn_51 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => Result(5),
      I1 => Intern_clock_kiloHzClock_current_count_cmp_eq0000,
      O => Intern_clock_kiloHzClock_Mcount_current_count_eqn_5
    );
  Intern_clock_kiloHzClock_i_zero_or00001 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => Intern_clock_kiloHzClock_current_count_cmp_eq0000,
      I1 => reset_IBUF1,
      O => Intern_clock_kiloHzClock_i_zero_or0000
    );
  Intern_clock_kiloHzClock_current_count_cmp_eq000012 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => Intern_clock_kiloHzClock_current_count(1),
      I1 => Intern_clock_kiloHzClock_current_count(14),
      I2 => Intern_clock_kiloHzClock_current_count(2),
      I3 => Intern_clock_kiloHzClock_current_count(3),
      O => Intern_clock_kiloHzClock_current_count_cmp_eq000012_70
    );
  Intern_clock_kiloHzClock_current_count_cmp_eq000025 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => Intern_clock_kiloHzClock_current_count(4),
      I1 => Intern_clock_kiloHzClock_current_count(5),
      I2 => Intern_clock_kiloHzClock_current_count(6),
      I3 => Intern_clock_kiloHzClock_current_count(7),
      O => Intern_clock_kiloHzClock_current_count_cmp_eq000025_71
    );
  Intern_clock_kiloHzClock_current_count_cmp_eq000049 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => Intern_clock_kiloHzClock_current_count(8),
      I1 => Intern_clock_kiloHzClock_current_count(9),
      I2 => Intern_clock_kiloHzClock_current_count(10),
      I3 => Intern_clock_kiloHzClock_current_count(11),
      O => Intern_clock_kiloHzClock_current_count_cmp_eq000049_72
    );
  Intern_clock_kiloHzClock_current_count_cmp_eq000058 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => Intern_clock_kiloHzClock_current_count(12),
      I1 => Intern_clock_kiloHzClock_current_count(13),
      I2 => Intern_clock_kiloHzClock_current_count(0),
      O => Intern_clock_kiloHzClock_current_count_cmp_eq000058_73
    );
  Intern_clock_kiloHzClock_current_count_cmp_eq000071 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => Intern_clock_kiloHzClock_current_count_cmp_eq000012_70,
      I1 => Intern_clock_kiloHzClock_current_count_cmp_eq000025_71,
      I2 => Intern_clock_kiloHzClock_current_count_cmp_eq000049_72,
      I3 => Intern_clock_kiloHzClock_current_count_cmp_eq000058_73,
      O => Intern_clock_kiloHzClock_current_count_cmp_eq0000
    );
  Intern_clock_kiloHzClock_Mcount_current_count_eqn_61 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(6),
      I1 => Intern_clock_kiloHzClock_current_count_cmp_eq0000,
      O => Intern_clock_kiloHzClock_Mcount_current_count_eqn_6
    );
  Intern_clock_kiloHzClock_Mcount_current_count_eqn_71 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(7),
      I1 => Intern_clock_kiloHzClock_current_count_cmp_eq0000,
      O => Intern_clock_kiloHzClock_Mcount_current_count_eqn_7
    );
  Intern_clock_kiloHzClock_Mcount_current_count_eqn_81 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => Result(8),
      I1 => Intern_clock_kiloHzClock_current_count_cmp_eq0000,
      O => Intern_clock_kiloHzClock_Mcount_current_count_eqn_8
    );
  Intern_clock_kiloHzClock_Mcount_current_count_eqn_91 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => Result(9),
      I1 => Intern_clock_kiloHzClock_current_count_cmp_eq0000,
      O => Intern_clock_kiloHzClock_Mcount_current_count_eqn_9
    );
  Intern_clock_kiloHzClock_Mcount_current_count_eqn_101 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => Result(10),
      I1 => Intern_clock_kiloHzClock_current_count_cmp_eq0000,
      O => Intern_clock_kiloHzClock_Mcount_current_count_eqn_10
    );
  cpu_alu_DECODER_Stat_S_and00001 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => cpu_alu_DECODER_stored_OP_Code(1),
      I1 => cpu_alu_DECODER_stored_OP_Code(2),
      I2 => cpu_alu_i_A_EN,
      O => cpu_alu_i_stat_S
    );
  i_pc_prime_6_1 : LUT4
    generic map(
      INIT => X"BE14"
    )
    port map (
      I0 => i_jmp,
      I1 => adder_16bit_bit6_cout_and0001,
      I2 => PCreg_q(6),
      I3 => MEM_q(6),
      O => i_pc_prime(6)
    );
  Intern_clock_kiloHzClock_Mcount_current_count_eqn_111 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => Result(11),
      I1 => Intern_clock_kiloHzClock_current_count_cmp_eq0000,
      O => Intern_clock_kiloHzClock_Mcount_current_count_eqn_11
    );
  Intern_clock_kiloHzClock_Mcount_current_count_eqn_121 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(12),
      I1 => Intern_clock_kiloHzClock_current_count_cmp_eq0000,
      O => Intern_clock_kiloHzClock_Mcount_current_count_eqn_12
    );
  Intern_clock_kiloHzClock_Mcount_current_count_eqn_131 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(13),
      I1 => Intern_clock_kiloHzClock_current_count_cmp_eq0000,
      O => Intern_clock_kiloHzClock_Mcount_current_count_eqn_13
    );
  Intern_clock_kiloHzClock_Mcount_current_count_eqn_141 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Result(14),
      I1 => Intern_clock_kiloHzClock_current_count_cmp_eq0000,
      O => Intern_clock_kiloHzClock_Mcount_current_count_eqn_14
    );
  i_data_frm_ram_3_LogicTrst1 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => ram_data_i_data_to_ram_not0000_inv,
      I1 => N56,
      O => i_data_frm_ram(3)
    );
  cpu_alu_DECODER_Arith_S_and000011 : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => cycle_control_unit_exe_268,
      I1 => cpu_alu_DECODER_stored_OP_Code(3),
      I2 => cpu_alu_DECODER_stored_OP_Code(0),
      O => cpu_alu_i_A_EN
    );
  cpu_alu_DECODER_Arith_S_and00001 : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => cpu_alu_DECODER_stored_OP_Code(2),
      I1 => cpu_alu_DECODER_stored_OP_Code(1),
      I2 => cpu_alu_i_A_EN,
      O => cpu_alu_i_arith_S
    );
  i_pc_prime_11_1 : LUT4
    generic map(
      INIT => X"A3AC"
    )
    port map (
      I0 => MEM_q(11),
      I1 => PCreg_q(11),
      I2 => i_jmp,
      I3 => adder_16bit_bit11_cout_and0001,
      O => i_pc_prime(11)
    );
  i_pc_prime_9_9 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => PCreg_q(6),
      I1 => PCreg_q(7),
      I2 => PCreg_q(8),
      I3 => PCreg_q(9),
      O => i_pc_prime_9_9_313
    );
  i_pc_prime_10_8 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => PCreg_q(8),
      I1 => PCreg_q(9),
      O => i_pc_prime_10_8_290
    );
  i_pc_prime_10_19 : LUT4
    generic map(
      INIT => X"DFFF"
    )
    port map (
      I0 => PCreg_q(6),
      I1 => i_pc_prime_10_8_290,
      I2 => PCreg_q(7),
      I3 => N130,
      O => i_pc_prime_10_19_287
    );
  i_data_frm_ram_2_LogicTrst1 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => ram_data_i_data_to_ram_not0000_inv,
      I1 => N57,
      O => i_data_frm_ram(2)
    );
  i_pc_prime_12_SW0 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => i_jmp,
      I1 => MEM_q(12),
      I2 => PCreg_q(12),
      O => N32
    );
  i_pc_prime_12_Q : LUT4
    generic map(
      INIT => X"D8F0"
    )
    port map (
      I0 => PCreg_q(11),
      I1 => N33,
      I2 => N32,
      I3 => adder_16bit_bit11_cout_and0001,
      O => i_pc_prime(12)
    );
  i_pc_prime_13_SW0 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => i_jmp,
      I1 => MEM_q(13),
      I2 => PCreg_q(13),
      O => N38
    );
  i_pc_prime_13_Q : LUT4
    generic map(
      INIT => X"D8F0"
    )
    port map (
      I0 => PCreg_q(12),
      I1 => N39,
      I2 => N38,
      I3 => adder_16bit_bit11_cout_and0001,
      O => i_pc_prime(13)
    );
  i_data_frm_ram_1_LogicTrst1 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => ram_data_i_data_to_ram_not0000_inv,
      I1 => N58,
      O => i_data_frm_ram(1)
    );
  i_pc_prime_14_9 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => PCreg_q(11),
      I1 => PCreg_q(12),
      I2 => PCreg_q(13),
      I3 => PCreg_q(14),
      O => i_pc_prime_14_9_295
    );
  i_pc_prime_15_SW0 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => i_jmp,
      I1 => MEM_q(15),
      I2 => PCreg_q(15),
      O => N41
    );
  i_pc_prime_15_SW1 : LUT3
    generic map(
      INIT => X"B1"
    )
    port map (
      I0 => i_jmp,
      I1 => PCreg_q(15),
      I2 => MEM_q(15),
      O => N42
    );
  i_pc_prime_15_Q : LUT4
    generic map(
      INIT => X"CCE4"
    )
    port map (
      I0 => PCreg_q(14),
      I1 => N41,
      I2 => N42,
      I3 => N132,
      O => i_pc_prime(15)
    );
  i_pc_prime_0_SW1 : LUT4
    generic map(
      INIT => X"EB41"
    )
    port map (
      I0 => i_jmp,
      I1 => PCreg_q(14),
      I2 => PCreg_q(0),
      I3 => MEM_q(0),
      O => N45
    );
  i_pc_prime_0_Q : LUT4
    generic map(
      INIT => X"CCE4"
    )
    port map (
      I0 => PCreg_q(15),
      I1 => N44,
      I2 => N45,
      I3 => adder_16bit_N5,
      O => i_pc_prime(0)
    );
  i_data_frm_ram_0_LogicTrst1 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => ram_data_i_data_to_ram_not0000_inv,
      I1 => N59,
      O => i_data_frm_ram(0)
    );
  cpu_alu_DECODER_WE : LUT4
    generic map(
      INIT => X"FFFB"
    )
    port map (
      I0 => cpu_alu_DECODER_stored_OP_Code(0),
      I1 => cycle_control_unit_exe_268,
      I2 => cpu_alu_DECODER_stored_OP_Code(2),
      I3 => N47,
      O => ram_data_i_data_to_ram_not0000_inv
    );
  i_pc_prime_1_SW1 : LUT4
    generic map(
      INIT => X"F3E2"
    )
    port map (
      I0 => adder_16bit_N11,
      I1 => i_jmp,
      I2 => MEM_q(1),
      I3 => PCreg_q(1),
      O => N50
    );
  adder_16bit_bit6_Mxor_s_xo_0_31 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => PCreg_q(1),
      I1 => N131,
      I2 => PCreg_q(2),
      O => adder_16bit_N4
    );
  adder_16bit_bit11_cout_and00011 : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => PCreg_q(9),
      I1 => N133,
      I2 => PCreg_q(10),
      O => adder_16bit_bit11_cout_and0001
    );
  i_pc_prime_5_4 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => PCreg_q(3),
      I1 => PCreg_q(4),
      O => i_pc_prime_5_4_304
    );
  i_pc_prime_5_30 : LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => PCreg_q(5),
      I1 => PCreg_q(4),
      I2 => PCreg_q(3),
      I3 => adder_16bit_N4,
      O => i_pc_prime_5_30_303
    );
  reset_IBUF : IBUF
    port map (
      I => reset,
      O => reset_IBUF1
    );
  clk_out_OBUF : OBUF
    port map (
      I => i_received_hlt_314,
      O => clk_out
    );
  ram_write_enable_OBUF : OBUF
    port map (
      I => ram_data_i_data_to_ram_not0000_inv,
      O => ram_write_enable
    );
  a_data_3_OBUF : OBUF
    port map (
      I => cpu_alu_A_data_out(3),
      O => a_data(3)
    );
  a_data_2_OBUF : OBUF
    port map (
      I => cpu_alu_A_data_out(2),
      O => a_data(2)
    );
  a_data_1_OBUF : OBUF
    port map (
      I => cpu_alu_A_data_out(1),
      O => a_data(1)
    );
  a_data_0_OBUF : OBUF
    port map (
      I => cpu_alu_A_data_out(0),
      O => a_data(0)
    );
  ram_address_15_OBUF : OBUF
    port map (
      I => ram_address_15_OBUF_337,
      O => ram_address(15)
    );
  ram_address_14_OBUF : OBUF
    port map (
      I => ram_address_14_OBUF_336,
      O => ram_address(14)
    );
  ram_address_13_OBUF : OBUF
    port map (
      I => ram_address_13_OBUF_335,
      O => ram_address(13)
    );
  ram_address_12_OBUF : OBUF
    port map (
      I => ram_address_12_OBUF_334,
      O => ram_address(12)
    );
  ram_address_11_OBUF : OBUF
    port map (
      I => ram_address_11_OBUF_333,
      O => ram_address(11)
    );
  ram_address_10_OBUF : OBUF
    port map (
      I => ram_address_10_OBUF_332,
      O => ram_address(10)
    );
  ram_address_9_OBUF : OBUF
    port map (
      I => ram_address_9_OBUF_346,
      O => ram_address(9)
    );
  ram_address_8_OBUF : OBUF
    port map (
      I => ram_address_8_OBUF_345,
      O => ram_address(8)
    );
  ram_address_7_OBUF : OBUF
    port map (
      I => ram_address_7_OBUF_344,
      O => ram_address(7)
    );
  ram_address_6_OBUF : OBUF
    port map (
      I => ram_address_6_OBUF_343,
      O => ram_address(6)
    );
  ram_address_5_OBUF : OBUF
    port map (
      I => ram_address_5_OBUF_342,
      O => ram_address(5)
    );
  ram_address_4_OBUF : OBUF
    port map (
      I => ram_address_4_OBUF_341,
      O => ram_address(4)
    );
  ram_address_3_OBUF : OBUF
    port map (
      I => ram_address_3_OBUF_340,
      O => ram_address(3)
    );
  ram_address_2_OBUF : OBUF
    port map (
      I => ram_address_2_OBUF_339,
      O => ram_address(2)
    );
  ram_address_1_OBUF : OBUF
    port map (
      I => ram_address_1_OBUF_338,
      O => ram_address(1)
    );
  ram_address_0_OBUF : OBUF
    port map (
      I => ram_address_0_OBUF_331,
      O => ram_address(0)
    );
  Intern_clock_kiloHzClock_Mcount_current_count_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Intern_clock_kiloHzClock_current_count(0),
      O => Intern_clock_kiloHzClock_Mcount_current_count_cy_0_rt_11
    );
  i_pc_prime_3_SW0_SW0 : LUT4
    generic map(
      INIT => X"F3E2"
    )
    port map (
      I0 => adder_16bit_N4,
      I1 => i_jmp,
      I2 => MEM_q(3),
      I3 => PCreg_q(3),
      O => N64
    );
  i_pc_prime_3_SW0_SW1 : LUT4
    generic map(
      INIT => X"AE04"
    )
    port map (
      I0 => i_jmp,
      I1 => adder_16bit_N4,
      I2 => PCreg_q(3),
      I3 => MEM_q(3),
      O => N65
    );
  adder_16bit_bit1_Mxor_s_xo_0_11_SW0 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => PCreg_q(15),
      I1 => PCreg_q(14),
      O => N67
    );
  i_pc_prime_5_18_SW1 : LUT4
    generic map(
      INIT => X"AFAC"
    )
    port map (
      I0 => MEM_q(5),
      I1 => PCreg_q(5),
      I2 => i_jmp,
      I3 => i_pc_prime_5_30_303,
      O => N70
    );
  i_pc_prime_4_11_SW0 : LUT4
    generic map(
      INIT => X"AFAC"
    )
    port map (
      I0 => MEM_q(4),
      I1 => PCreg_q(4),
      I2 => i_jmp,
      I3 => i_pc_prime_4_17_301,
      O => N72
    );
  cpu_alu_i_A_in_2_11 : LUT4
    generic map(
      INIT => X"8CEF"
    )
    port map (
      I0 => N58,
      I1 => cpu_alu_A_data_out(1),
      I2 => ram_data_i_data_to_ram_not0000_inv,
      I3 => N134,
      O => cpu_alu_N0
    );
  adder_16bit_bit1_Mxor_s_xo_0_11_SW2 : LUT4
    generic map(
      INIT => X"ABA8"
    )
    port map (
      I0 => N129,
      I1 => PCreg_q(14),
      I2 => PCreg_q(0),
      I3 => N50,
      O => N79
    );
  i_pc_prime_1_Q : LUT4
    generic map(
      INIT => X"CCE4"
    )
    port map (
      I0 => PCreg_q(15),
      I1 => N78,
      I2 => N79,
      I3 => adder_16bit_N5,
      O => i_pc_prime(1)
    );
  adder_16bit_bit1_Mxor_s_xo_0_11_SW4 : LUT4
    generic map(
      INIT => X"ABA8"
    )
    port map (
      I0 => N135,
      I1 => PCreg_q(14),
      I2 => PCreg_q(0),
      I3 => N76,
      O => N82
    );
  i_pc_prime_2_23 : LUT4
    generic map(
      INIT => X"CCE4"
    )
    port map (
      I0 => PCreg_q(15),
      I1 => N81,
      I2 => N82,
      I3 => adder_16bit_N5,
      O => i_pc_prime(2)
    );
  i_pc_prime_3_Q : LUT4
    generic map(
      INIT => X"F0D8"
    )
    port map (
      I0 => N67,
      I1 => N85,
      I2 => N84,
      I3 => adder_16bit_N5,
      O => i_pc_prime(3)
    );
  i_pc_prime_5_59 : LUT4
    generic map(
      INIT => X"F0D8"
    )
    port map (
      I0 => N67,
      I1 => N88,
      I2 => N87,
      I3 => adder_16bit_N5,
      O => i_pc_prime(5)
    );
  i_pc_prime_4_40 : LUT4
    generic map(
      INIT => X"F0D8"
    )
    port map (
      I0 => N67,
      I1 => N91,
      I2 => N90,
      I3 => adder_16bit_N5,
      O => i_pc_prime(4)
    );
  cpu_alu_JMP_SW0_SW0 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => cpu_alu_A_data_out(3),
      I1 => cpu_alu_A_data_out(2),
      I2 => cpu_alu_A_data_out(1),
      I3 => cpu_alu_A_data_out(0),
      O => N93
    );
  cpu_alu_JMP : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => cpu_alu_DECODER_N11,
      I1 => cpu_alu_DECODER_stored_OP_Code(1),
      I2 => cpu_alu_DECODER_stored_OP_Code(2),
      I3 => N93,
      O => i_jmp
    );
  i_pc_prime_14_35_SW1 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => i_jmp,
      I1 => MEM_q(14),
      O => N96
    );
  i_pc_prime_14_35 : LUT4
    generic map(
      INIT => X"D8F0"
    )
    port map (
      I0 => PCreg_q(14),
      I1 => N96,
      I2 => N95,
      I3 => adder_16bit_N5,
      O => i_pc_prime(14)
    );
  i_pc_prime_5_18_SW0 : MUXF5
    port map (
      I0 => N98,
      I1 => N99,
      S => i_pc_prime_5_30_303,
      O => N69
    );
  i_pc_prime_5_18_SW0_F : LUT4
    generic map(
      INIT => X"AE04"
    )
    port map (
      I0 => i_jmp,
      I1 => PCreg_q(5),
      I2 => PCreg_q(2),
      I3 => MEM_q(5),
      O => N98
    );
  i_pc_prime_5_18_SW0_G : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => i_jmp,
      I1 => MEM_q(5),
      O => N99
    );
  i_pc_prime_2_12_SW0_F : LUT3
    generic map(
      INIT => X"62"
    )
    port map (
      I0 => PCreg_q(2),
      I1 => PCreg_q(1),
      I2 => adder_16bit_N11,
      O => N102
    );
  adder_16bit_bit3_Mxor_s_xo_0_11_SW0 : MUXF5
    port map (
      I0 => N106,
      I1 => N107,
      S => N65,
      O => N84
    );
  adder_16bit_bit3_Mxor_s_xo_0_11_SW0_F : LUT4
    generic map(
      INIT => X"2AAA"
    )
    port map (
      I0 => N64,
      I1 => PCreg_q(0),
      I2 => PCreg_q(2),
      I3 => PCreg_q(1),
      O => N106
    );
  adder_16bit_bit3_Mxor_s_xo_0_11_SW0_G : LUT4
    generic map(
      INIT => X"FF80"
    )
    port map (
      I0 => PCreg_q(0),
      I1 => PCreg_q(2),
      I2 => PCreg_q(1),
      I3 => N64,
      O => N107
    );
  adder_16bit_bit3_Mxor_s_xo_0_11_SW2 : MUXF5
    port map (
      I0 => N108,
      I1 => N109,
      S => N69,
      O => N87
    );
  adder_16bit_bit3_Mxor_s_xo_0_11_SW2_F : LUT4
    generic map(
      INIT => X"F700"
    )
    port map (
      I0 => PCreg_q(0),
      I1 => PCreg_q(1),
      I2 => i_pc_prime_5_4_304,
      I3 => N70,
      O => N108
    );
  adder_16bit_bit3_Mxor_s_xo_0_11_SW2_G : LUT4
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => PCreg_q(0),
      I1 => PCreg_q(1),
      I2 => i_pc_prime_5_4_304,
      I3 => N70,
      O => N109
    );
  adder_16bit_bit3_Mxor_s_xo_0_11_SW4 : MUXF5
    port map (
      I0 => N110,
      I1 => N111,
      S => N73,
      O => N90
    );
  adder_16bit_bit3_Mxor_s_xo_0_11_SW4_F : LUT4
    generic map(
      INIT => X"7F00"
    )
    port map (
      I0 => PCreg_q(2),
      I1 => PCreg_q(0),
      I2 => PCreg_q(1),
      I3 => N72,
      O => N110
    );
  adder_16bit_bit3_Mxor_s_xo_0_11_SW4_G : LUT4
    generic map(
      INIT => X"FF80"
    )
    port map (
      I0 => PCreg_q(0),
      I1 => PCreg_q(2),
      I2 => PCreg_q(1),
      I3 => N72,
      O => N111
    );
  cpu_alu_i_A_in_0_SW2 : LUT4
    generic map(
      INIT => X"7363"
    )
    port map (
      I0 => N59,
      I1 => cpu_alu_A_data_out(0),
      I2 => ram_data_i_data_to_ram_not0000_inv,
      I3 => cpu_alu_i_arith_S,
      O => N114
    );
  cpu_alu_i_A_in_0_Q : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => cpu_alu_i_stat_S,
      I1 => cpu_alu_STAT_data_out_0_Q,
      I2 => N114,
      O => cpu_alu_i_A_in(0)
    );
  cpu_alu_ADDER_cell_3_cout1 : LUT4
    generic map(
      INIT => X"EF8C"
    )
    port map (
      I0 => N57,
      I1 => cpu_alu_A_data_out(2),
      I2 => ram_data_i_data_to_ram_not0000_inv,
      I3 => cpu_alu_N0,
      O => cpu_alu_i_MSB_cin
    );
  cpu_alu_i_A_in_2_Q : LUT4
    generic map(
      INIT => X"1333"
    )
    port map (
      I0 => cpu_alu_DECODER_stored_OP_Code(2),
      I1 => N120,
      I2 => cpu_alu_i_A_EN,
      I3 => cpu_alu_DECODER_stored_OP_Code(1),
      O => cpu_alu_i_A_in(2)
    );
  i_pc_prime_2_12_SW11 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => i_jmp,
      I1 => MEM_q(2),
      I2 => N104,
      O => N76
    );
  i_pc_prime_4_11_SW1 : MUXF5
    port map (
      I0 => N122,
      I1 => N123,
      S => adder_16bit_N4,
      O => N73
    );
  i_pc_prime_4_11_SW1_F : LUT4
    generic map(
      INIT => X"AE04"
    )
    port map (
      I0 => i_jmp,
      I1 => PCreg_q(4),
      I2 => PCreg_q(3),
      I3 => MEM_q(4),
      O => N122
    );
  i_pc_prime_4_11_SW1_G : LUT4
    generic map(
      INIT => X"BE14"
    )
    port map (
      I0 => i_jmp,
      I1 => PCreg_q(4),
      I2 => PCreg_q(3),
      I3 => MEM_q(4),
      O => N123
    );
  cpu_alu_i_carry_in : MUXF5
    port map (
      I0 => N124,
      I1 => N125,
      S => cpu_alu_i_MSB_cin,
      O => cpu_alu_i_carry_in_258
    );
  cpu_alu_i_carry_in_F : LUT4
    generic map(
      INIT => X"EC20"
    )
    port map (
      I0 => i_data_frm_ram(3),
      I1 => i_hlt,
      I2 => cpu_alu_A_data_out(3),
      I3 => cpu_alu_STAT_data_out_0_Q,
      O => N124
    );
  cpu_alu_i_carry_in_G : LUT4
    generic map(
      INIT => X"F3E2"
    )
    port map (
      I0 => cpu_alu_A_data_out(3),
      I1 => i_hlt,
      I2 => cpu_alu_STAT_data_out_0_Q,
      I3 => i_data_frm_ram(3),
      O => N125
    );
  cpu_alu_i_XORb_in : MUXF5
    port map (
      I0 => N126,
      I1 => N127,
      S => cpu_alu_i_MSB_cin,
      O => cpu_alu_i_XORb_in_256
    );
  cpu_alu_i_XORb_in_F : LUT4
    generic map(
      INIT => X"F3E2"
    )
    port map (
      I0 => cpu_alu_A_data_out(3),
      I1 => i_hlt,
      I2 => cpu_alu_STAT_data_out_3_Q,
      I3 => i_data_frm_ram(3),
      O => N126
    );
  cpu_alu_i_XORb_in_G : LUT4
    generic map(
      INIT => X"EC20"
    )
    port map (
      I0 => i_data_frm_ram(3),
      I1 => i_hlt,
      I2 => cpu_alu_A_data_out(3),
      I3 => cpu_alu_STAT_data_out_3_Q,
      O => N127
    );
  Intern_clock_oneHZClock_i_zero_BUFG : BUFG
    port map (
      I => Intern_clock_oneHZClock_i_zero1,
      O => Intern_clock_oneHZClock_i_zero_84
    );
  clk_BUFGP : BUFGP
    port map (
      I => clk,
      O => clk_BUFGP_231
    );
  reset_IBUF_BUFG : BUFG
    port map (
      I => reset_IBUF1,
      O => reset_IBUF_354
    );
  Intern_clock_kiloHzClock_Mcount_current_count_lut_1_INV_0 : INV
    port map (
      I => Intern_clock_kiloHzClock_current_count(1),
      O => Intern_clock_kiloHzClock_Mcount_current_count_lut(1)
    );
  Intern_clock_kiloHzClock_Mcount_current_count_lut_2_INV_0 : INV
    port map (
      I => Intern_clock_kiloHzClock_current_count(2),
      O => Intern_clock_kiloHzClock_Mcount_current_count_lut(2)
    );
  Intern_clock_kiloHzClock_Mcount_current_count_lut_3_INV_0 : INV
    port map (
      I => Intern_clock_kiloHzClock_current_count(3),
      O => Intern_clock_kiloHzClock_Mcount_current_count_lut(3)
    );
  Intern_clock_kiloHzClock_Mcount_current_count_lut_4_INV_0 : INV
    port map (
      I => Intern_clock_kiloHzClock_current_count(4),
      O => Intern_clock_kiloHzClock_Mcount_current_count_lut(4)
    );
  Intern_clock_kiloHzClock_Mcount_current_count_lut_5_INV_0 : INV
    port map (
      I => Intern_clock_kiloHzClock_current_count(5),
      O => Intern_clock_kiloHzClock_Mcount_current_count_lut(5)
    );
  Intern_clock_kiloHzClock_Mcount_current_count_lut_6_INV_0 : INV
    port map (
      I => Intern_clock_kiloHzClock_current_count(6),
      O => Intern_clock_kiloHzClock_Mcount_current_count_lut(6)
    );
  Intern_clock_kiloHzClock_Mcount_current_count_lut_7_INV_0 : INV
    port map (
      I => Intern_clock_kiloHzClock_current_count(7),
      O => Intern_clock_kiloHzClock_Mcount_current_count_lut(7)
    );
  Intern_clock_kiloHzClock_Mcount_current_count_lut_8_INV_0 : INV
    port map (
      I => Intern_clock_kiloHzClock_current_count(8),
      O => Intern_clock_kiloHzClock_Mcount_current_count_lut(8)
    );
  Intern_clock_kiloHzClock_Mcount_current_count_lut_9_INV_0 : INV
    port map (
      I => Intern_clock_kiloHzClock_current_count(9),
      O => Intern_clock_kiloHzClock_Mcount_current_count_lut(9)
    );
  Intern_clock_kiloHzClock_Mcount_current_count_lut_10_INV_0 : INV
    port map (
      I => Intern_clock_kiloHzClock_current_count(10),
      O => Intern_clock_kiloHzClock_Mcount_current_count_lut(10)
    );
  Intern_clock_kiloHzClock_Mcount_current_count_lut_11_INV_0 : INV
    port map (
      I => Intern_clock_kiloHzClock_current_count(11),
      O => Intern_clock_kiloHzClock_Mcount_current_count_lut(11)
    );
  Intern_clock_kiloHzClock_Mcount_current_count_lut_12_INV_0 : INV
    port map (
      I => Intern_clock_kiloHzClock_current_count(12),
      O => Intern_clock_kiloHzClock_Mcount_current_count_lut(12)
    );
  Intern_clock_kiloHzClock_Mcount_current_count_lut_13_INV_0 : INV
    port map (
      I => Intern_clock_kiloHzClock_current_count(13),
      O => Intern_clock_kiloHzClock_Mcount_current_count_lut(13)
    );
  Intern_clock_kiloHzClock_Mcount_current_count_lut_14_INV_0 : INV
    port map (
      I => Intern_clock_kiloHzClock_current_count(14),
      O => Intern_clock_kiloHzClock_Mcount_current_count_lut(14)
    );
  cycle_control_unit_Mcount_cycle_counter_xor_0_11_INV_0 : INV
    port map (
      I => cycle_control_unit_cycle_counter(0),
      O => cycle_control_unit_Mcount_cycle_counter
    );
  MEM_Mcount_i_nibbleCount_xor_0_11_INV_0 : INV
    port map (
      I => MEM_i_nibbleCount(0),
      O => MEM_Mcount_i_nibbleCount
    );
  Intern_clock_tenHzClock_Mcount_current_count_xor_0_11_INV_0 : INV
    port map (
      I => Intern_clock_tenHzClock_current_count(0),
      O => Intern_clock_tenHzClock_Mcount_current_count
    );
  Intern_clock_oneHZClock_Mcount_current_count_xor_0_11_INV_0 : INV
    port map (
      I => Intern_clock_oneHZClock_current_count(0),
      O => Intern_clock_oneHZClock_Mcount_current_count
    );
  Intern_clock_hundredHzClock_Mcount_current_count_xor_0_11_INV_0 : INV
    port map (
      I => Intern_clock_hundredHzClock_current_count(0),
      O => Intern_clock_hundredHzClock_Mcount_current_count
    );
  cycle_control_unit_received_hlt_0_not00001_INV_0 : INV
    port map (
      I => cycle_control_unit_received_hlt_276,
      O => cycle_control_unit_received_hlt_0_not0000
    );
  ram_data_3_IOBUF : IOBUF
    port map (
      I => cpu_alu_A_data_out(3),
      T => ram_data_i_data_to_ram_not0000_inv,
      O => N56,
      IO => ram_data(3)
    );
  cpu_alu_A_data_out_3 : FDRE
    port map (
      C => Intern_clock_oneHZClock_i_zero_84,
      CE => cpu_alu_i_A_EN,
      D => cpu_alu_i_A_in(3),
      R => reset_IBUF1,
      Q => cpu_alu_A_data_out(3)
    );
  ram_data_2_IOBUF : IOBUF
    port map (
      I => cpu_alu_A_data_out(2),
      T => ram_data_i_data_to_ram_not0000_inv,
      O => N57,
      IO => ram_data(2)
    );
  cpu_alu_A_data_out_2 : FDRE
    port map (
      C => Intern_clock_oneHZClock_i_zero_84,
      CE => cpu_alu_i_A_EN,
      D => cpu_alu_i_A_in(2),
      R => reset_IBUF1,
      Q => cpu_alu_A_data_out(2)
    );
  ram_data_1_IOBUF : IOBUF
    port map (
      I => cpu_alu_A_data_out(1),
      T => ram_data_i_data_to_ram_not0000_inv,
      O => N58,
      IO => ram_data(1)
    );
  cpu_alu_A_data_out_1 : FDRE
    port map (
      C => Intern_clock_oneHZClock_i_zero_84,
      CE => cpu_alu_i_A_EN,
      D => cpu_alu_i_A_in(1),
      R => reset_IBUF1,
      Q => cpu_alu_A_data_out(1)
    );
  ram_data_0_IOBUF : IOBUF
    port map (
      I => cpu_alu_A_data_out(0),
      T => ram_data_i_data_to_ram_not0000_inv,
      O => N59,
      IO => ram_data(0)
    );
  cpu_alu_A_data_out_0 : FDRE
    port map (
      C => Intern_clock_oneHZClock_i_zero_84,
      CE => cpu_alu_i_A_EN,
      D => cpu_alu_i_A_in(0),
      R => reset_IBUF1,
      Q => cpu_alu_A_data_out(0)
    );
  i_pc_prime_9_351 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => adder_16bit_bit6_cout_and0001,
      I1 => i_pc_prime_9_9_313,
      I2 => adder_16bit_N3,
      I3 => PCreg_q(9),
      O => i_pc_prime_9_35
    );
  i_pc_prime_9_35_f5 : MUXF5
    port map (
      I0 => i_pc_prime_9_35,
      I1 => MEM_q(9),
      S => i_jmp,
      O => i_pc_prime(9)
    );
  i_pc_prime_10_691 : LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => i_jmp,
      I1 => MEM_q(10),
      I2 => i_pc_prime_10_19_287,
      O => i_pc_prime_10_69
    );
  i_pc_prime_10_692 : LUT4
    generic map(
      INIT => X"AE04"
    )
    port map (
      I0 => i_jmp,
      I1 => PCreg_q(9),
      I2 => adder_16bit_N3,
      I3 => MEM_q(10),
      O => i_pc_prime_10_691_289
    );
  i_pc_prime_10_69_f5 : MUXF5
    port map (
      I0 => i_pc_prime_10_691_289,
      I1 => i_pc_prime_10_69,
      S => PCreg_q(10),
      O => i_pc_prime(10)
    );
  cpu_alu_i_A_in_1_971 : LUT4
    generic map(
      INIT => X"5F69"
    )
    port map (
      I0 => i_data_frm_ram(1),
      I1 => cpu_alu_N18,
      I2 => cpu_alu_A_data_out(1),
      I3 => cpu_alu_i_arith_S,
      O => cpu_alu_i_A_in_1_97
    );
  cpu_alu_i_A_in_1_97_f5 : MUXF5
    port map (
      I0 => cpu_alu_i_A_in_1_97,
      I1 => cpu_alu_STAT_data_out_1_Q,
      S => cpu_alu_i_stat_S,
      O => cpu_alu_i_A_in(1)
    );
  i_pc_prime_7_1 : LUT4
    generic map(
      INIT => X"BF15"
    )
    port map (
      I0 => i_jmp,
      I1 => PCreg_q(6),
      I2 => adder_16bit_bit6_cout_and0001,
      I3 => MEM_q(7),
      O => i_pc_prime_7_1_307
    );
  i_pc_prime_7_2 : LUT4
    generic map(
      INIT => X"EC20"
    )
    port map (
      I0 => adder_16bit_bit6_cout_and0001,
      I1 => i_jmp,
      I2 => PCreg_q(6),
      I3 => MEM_q(7),
      O => i_pc_prime_7_2_308
    );
  i_pc_prime_7_f5 : MUXF5
    port map (
      I0 => i_pc_prime_7_2_308,
      I1 => i_pc_prime_7_1_307,
      S => PCreg_q(7),
      O => i_pc_prime(7)
    );
  i_pc_prime_8_1 : LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => PCreg_q(8),
      I1 => PCreg_q(6),
      I2 => PCreg_q(7),
      I3 => adder_16bit_bit6_cout_and0001,
      O => i_pc_prime_8_1_310
    );
  i_pc_prime_8_f5 : MUXF5
    port map (
      I0 => i_pc_prime_8_1_310,
      I1 => MEM_q(8),
      S => i_jmp,
      O => i_pc_prime(8)
    );
  cpu_alu_i_A_in_3_11 : LUT4
    generic map(
      INIT => X"7796"
    )
    port map (
      I0 => cpu_alu_A_data_out(3),
      I1 => i_data_frm_ram(3),
      I2 => cpu_alu_i_MSB_cin,
      I3 => cpu_alu_i_arith_S,
      O => cpu_alu_i_A_in_3_1
    );
  cpu_alu_i_A_in_3_1_f5 : MUXF5
    port map (
      I0 => cpu_alu_i_A_in_3_1,
      I1 => cpu_alu_STAT_data_out_3_Q,
      S => cpu_alu_i_stat_S,
      O => cpu_alu_i_A_in(3)
    );
  cpu_alu_DECODER_HLT_and000011 : LUT3_D
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => cpu_alu_DECODER_stored_OP_Code(0),
      I1 => cycle_control_unit_exe_268,
      I2 => cpu_alu_DECODER_stored_OP_Code(3),
      LO => N128,
      O => cpu_alu_DECODER_N11
    );
  i_pc_prime_12_SW1 : LUT3_L
    generic map(
      INIT => X"B1"
    )
    port map (
      I0 => i_jmp,
      I1 => PCreg_q(12),
      I2 => MEM_q(12),
      LO => N33
    );
  i_pc_prime_13_SW1 : LUT4_L
    generic map(
      INIT => X"BE14"
    )
    port map (
      I0 => i_jmp,
      I1 => PCreg_q(13),
      I2 => PCreg_q(11),
      I3 => MEM_q(13),
      LO => N39
    );
  i_pc_prime_0_SW0 : LUT3_L
    generic map(
      INIT => X"B1"
    )
    port map (
      I0 => i_jmp,
      I1 => PCreg_q(0),
      I2 => MEM_q(0),
      LO => N44
    );
  cpu_alu_DECODER_WE_SW0 : LUT2_L
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => cpu_alu_DECODER_stored_OP_Code(3),
      I1 => cpu_alu_DECODER_stored_OP_Code(1),
      LO => N47
    );
  i_pc_prime_1_SW0 : LUT4_D
    generic map(
      INIT => X"AE04"
    )
    port map (
      I0 => i_jmp,
      I1 => adder_16bit_N11,
      I2 => PCreg_q(1),
      I3 => MEM_q(1),
      LO => N129,
      O => N49
    );
  adder_16bit_bit6_cout_and00011 : LUT4_D
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => PCreg_q(5),
      I1 => PCreg_q(3),
      I2 => PCreg_q(4),
      I3 => adder_16bit_N4,
      LO => N130,
      O => adder_16bit_bit6_cout_and0001
    );
  adder_16bit_bit6_Mxor_s_xo_0_21 : LUT4_D
    generic map(
      INIT => X"AEAA"
    )
    port map (
      I0 => PCreg_q(0),
      I1 => PCreg_q(15),
      I2 => adder_16bit_N5,
      I3 => PCreg_q(14),
      LO => N131,
      O => adder_16bit_N11
    );
  adder_16bit_bit15_Mxor_s_xo_0_11 : LUT4_D
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => adder_16bit_bit11_cout_and0001,
      I1 => PCreg_q(11),
      I2 => PCreg_q(12),
      I3 => PCreg_q(13),
      LO => N132,
      O => adder_16bit_N5
    );
  adder_16bit_bit11_Mxor_s_xo_0_11 : LUT4_D
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => adder_16bit_bit6_cout_and0001,
      I1 => PCreg_q(6),
      I2 => PCreg_q(7),
      I3 => PCreg_q(8),
      LO => N133,
      O => adder_16bit_N3
    );
  i_pc_prime_4_17 : LUT3_L
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => PCreg_q(3),
      I1 => PCreg_q(4),
      I2 => adder_16bit_N4,
      LO => i_pc_prime_4_17_301
    );
  cpu_alu_i_A_in_1_231 : LUT3_D
    generic map(
      INIT => X"73"
    )
    port map (
      I0 => N59,
      I1 => cpu_alu_A_data_out(0),
      I2 => ram_data_i_data_to_ram_not0000_inv,
      LO => N134,
      O => cpu_alu_N18
    );
  adder_16bit_bit1_Mxor_s_xo_0_11_SW1 : LUT3_L
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => PCreg_q(0),
      I1 => N49,
      I2 => N50,
      LO => N78
    );
  adder_16bit_bit1_Mxor_s_xo_0_11_SW3 : LUT3_L
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => PCreg_q(0),
      I1 => N75,
      I2 => N76,
      LO => N81
    );
  adder_16bit_bit3_Mxor_s_xo_0_11_SW1 : LUT4_L
    generic map(
      INIT => X"EC4C"
    )
    port map (
      I0 => PCreg_q(2),
      I1 => N64,
      I2 => PCreg_q(1),
      I3 => N65,
      LO => N85
    );
  adder_16bit_bit3_Mxor_s_xo_0_11_SW3 : LUT4_L
    generic map(
      INIT => X"FB40"
    )
    port map (
      I0 => i_pc_prime_5_4_304,
      I1 => PCreg_q(1),
      I2 => N69,
      I3 => N70,
      LO => N88
    );
  adder_16bit_bit3_Mxor_s_xo_0_11_SW5 : LUT4_L
    generic map(
      INIT => X"F780"
    )
    port map (
      I0 => PCreg_q(2),
      I1 => PCreg_q(1),
      I2 => N73,
      I3 => N72,
      LO => N91
    );
  i_pc_prime_14_35_SW0 : LUT4_L
    generic map(
      INIT => X"ACA0"
    )
    port map (
      I0 => MEM_q(14),
      I1 => i_pc_prime_14_9_295,
      I2 => i_jmp,
      I3 => adder_16bit_bit11_cout_and0001,
      LO => N95
    );
  i_pc_prime_2_12_SW1_F : LUT3_L
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => adder_16bit_N11,
      I1 => PCreg_q(1),
      I2 => PCreg_q(2),
      LO => N104
    );
  cpu_alu_i_A_in_2_SW0 : LUT4_L
    generic map(
      INIT => X"8689"
    )
    port map (
      I0 => cpu_alu_A_data_out(2),
      I1 => i_data_frm_ram(2),
      I2 => cpu_alu_i_arith_S,
      I3 => cpu_alu_N0,
      LO => N120
    );
  i_pc_prime_2_12_SW01 : LUT3_D
    generic map(
      INIT => X"D8"
    )
    port map (
      I0 => i_jmp,
      I1 => MEM_q(2),
      I2 => N102,
      LO => N135,
      O => N75
    );

end Structure;

