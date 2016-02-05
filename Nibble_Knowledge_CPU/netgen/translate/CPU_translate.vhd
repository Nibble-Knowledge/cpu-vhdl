--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: CPU_translate.vhd
-- /___/   /\     Timestamp: Sat Oct 31 19:36:39 2015
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -rpw 100 -tpw 0 -ar Structure -tm CPU -w -dir netgen/translate -ofmt vhdl -sim CPU.ngd CPU_translate.vhd 
-- Device	: 3s250evq100-5
-- Input file	: CPU.ngd
-- Output file	: C:\Users\Colton\Desktop\Nibble_Knowledge_CPU\netgen\translate\CPU_translate.vhd
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
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

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
  signal Intern_clock_hundredHzClock_i_zero_27 : STD_LOGIC; 
  signal Intern_clock_hundredHzClock_i_zero_or0000_28 : STD_LOGIC; 
  signal Intern_clock_kiloHzClock_Mcount_current_count_cy_0_rt_30 : STD_LOGIC; 
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
  signal Intern_clock_kiloHzClock_current_count_cmp_eq000012_89 : STD_LOGIC; 
  signal Intern_clock_kiloHzClock_current_count_cmp_eq000025_90 : STD_LOGIC; 
  signal Intern_clock_kiloHzClock_current_count_cmp_eq000049_91 : STD_LOGIC; 
  signal Intern_clock_kiloHzClock_current_count_cmp_eq000058_92 : STD_LOGIC; 
  signal Intern_clock_kiloHzClock_i_zero_93 : STD_LOGIC; 
  signal Intern_clock_kiloHzClock_i_zero_or0000 : STD_LOGIC; 
  signal Intern_clock_oneHZClock_Mcount_current_count : STD_LOGIC; 
  signal Intern_clock_oneHZClock_Mcount_current_count1 : STD_LOGIC; 
  signal Intern_clock_oneHZClock_Mcount_current_count2 : STD_LOGIC; 
  signal Intern_clock_oneHZClock_Mcount_current_count3 : STD_LOGIC; 
  signal Intern_clock_oneHZClock_i_zero_103 : STD_LOGIC; 
  signal Intern_clock_oneHZClock_i_zero1 : STD_LOGIC; 
  signal Intern_clock_oneHZClock_i_zero_or0000_105 : STD_LOGIC; 
  signal Intern_clock_tenHzClock_Mcount_current_count : STD_LOGIC; 
  signal Intern_clock_tenHzClock_Mcount_current_count1 : STD_LOGIC; 
  signal Intern_clock_tenHzClock_Mcount_current_count2 : STD_LOGIC; 
  signal Intern_clock_tenHzClock_Mcount_current_count3 : STD_LOGIC; 
  signal Intern_clock_tenHzClock_i_zero_114 : STD_LOGIC; 
  signal Intern_clock_tenHzClock_i_zero_or0000_115 : STD_LOGIC; 
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
  signal clk_BUFGP : STD_LOGIC; 
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
  signal cpu_alu_i_XORb_in_275 : STD_LOGIC; 
  signal cpu_alu_i_arith_S : STD_LOGIC; 
  signal cpu_alu_i_carry_in_277 : STD_LOGIC; 
  signal cpu_alu_i_stat_S : STD_LOGIC; 
  signal cycle_control_unit_Mcount_cycle_counter : STD_LOGIC; 
  signal cycle_control_unit_Mcount_cycle_counter1 : STD_LOGIC; 
  signal cycle_control_unit_Mcount_cycle_counter2 : STD_LOGIC; 
  signal cycle_control_unit_Mcount_cycle_counter_val : STD_LOGIC; 
  signal cycle_control_unit_cycle_counter_or0000 : STD_LOGIC; 
  signal cycle_control_unit_exe_287 : STD_LOGIC; 
  signal cycle_control_unit_exe_mux0000 : STD_LOGIC; 
  signal cycle_control_unit_mem_en_289 : STD_LOGIC; 
  signal cycle_control_unit_mem_en_mux0000 : STD_LOGIC; 
  signal cycle_control_unit_op_en_291 : STD_LOGIC; 
  signal cycle_control_unit_op_en_mux0000 : STD_LOGIC; 
  signal cycle_control_unit_pc_en_293 : STD_LOGIC; 
  signal cycle_control_unit_pc_en_mux0000 : STD_LOGIC; 
  signal cycle_control_unit_received_hlt_295 : STD_LOGIC; 
  signal cycle_control_unit_received_hlt_0_not0000 : STD_LOGIC; 
  signal i_hlt : STD_LOGIC; 
  signal i_jmp : STD_LOGIC; 
  signal i_pc_en_after_or : STD_LOGIC; 
  signal i_pc_prime_10_19_306 : STD_LOGIC; 
  signal i_pc_prime_10_69 : STD_LOGIC; 
  signal i_pc_prime_10_691_308 : STD_LOGIC; 
  signal i_pc_prime_10_8_309 : STD_LOGIC; 
  signal i_pc_prime_14_9_314 : STD_LOGIC; 
  signal i_pc_prime_4_17_320 : STD_LOGIC; 
  signal i_pc_prime_5_30_322 : STD_LOGIC; 
  signal i_pc_prime_5_4_323 : STD_LOGIC; 
  signal i_pc_prime_7_1_326 : STD_LOGIC; 
  signal i_pc_prime_7_2_327 : STD_LOGIC; 
  signal i_pc_prime_8_1_329 : STD_LOGIC; 
  signal i_pc_prime_9_35 : STD_LOGIC; 
  signal i_pc_prime_9_9_332 : STD_LOGIC; 
  signal i_received_hlt_333 : STD_LOGIC; 
  signal ram_address_0_OBUF_350 : STD_LOGIC; 
  signal ram_address_10_OBUF_351 : STD_LOGIC; 
  signal ram_address_11_OBUF_352 : STD_LOGIC; 
  signal ram_address_12_OBUF_353 : STD_LOGIC; 
  signal ram_address_13_OBUF_354 : STD_LOGIC; 
  signal ram_address_14_OBUF_355 : STD_LOGIC; 
  signal ram_address_15_OBUF_356 : STD_LOGIC; 
  signal ram_address_1_OBUF_357 : STD_LOGIC; 
  signal ram_address_2_OBUF_358 : STD_LOGIC; 
  signal ram_address_3_OBUF_359 : STD_LOGIC; 
  signal ram_address_4_OBUF_360 : STD_LOGIC; 
  signal ram_address_5_OBUF_361 : STD_LOGIC; 
  signal ram_address_6_OBUF_362 : STD_LOGIC; 
  signal ram_address_7_OBUF_363 : STD_LOGIC; 
  signal ram_address_8_OBUF_364 : STD_LOGIC; 
  signal ram_address_9_OBUF_365 : STD_LOGIC; 
  signal ram_data_i_data_to_ram_not0000_inv : STD_LOGIC; 
  signal reset_IBUF_373 : STD_LOGIC; 
  signal reset_IBUF1 : STD_LOGIC; 
  signal i_pc_prime_12_SW1_O : STD_LOGIC; 
  signal i_pc_prime_13_SW1_O : STD_LOGIC; 
  signal i_pc_prime_0_SW0_O : STD_LOGIC; 
  signal cpu_alu_DECODER_WE_SW0_O : STD_LOGIC; 
  signal i_pc_prime_4_17_O : STD_LOGIC; 
  signal adder_16bit_bit1_Mxor_s_xo_0_11_SW1_O : STD_LOGIC; 
  signal adder_16bit_bit1_Mxor_s_xo_0_11_SW3_O : STD_LOGIC; 
  signal adder_16bit_bit3_Mxor_s_xo_0_11_SW1_O : STD_LOGIC; 
  signal adder_16bit_bit3_Mxor_s_xo_0_11_SW3_O : STD_LOGIC; 
  signal adder_16bit_bit3_Mxor_s_xo_0_11_SW5_O : STD_LOGIC; 
  signal i_pc_prime_14_35_SW0_O : STD_LOGIC; 
  signal i_pc_prime_2_12_SW1_F_O : STD_LOGIC; 
  signal cpu_alu_i_A_in_2_SW0_O : STD_LOGIC; 
  signal clk_BUFGP_IBUFG_2 : STD_LOGIC; 
  signal VCC : STD_LOGIC; 
  signal GND : STD_LOGIC; 
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
  XST_GND : X_ZERO
    port map (
      O => N0
    );
  XST_VCC : X_ONE
    port map (
      O => N1
    );
  i_received_hlt : X_LATCHE
    generic map(
      INIT => '1'
    )
    port map (
      I => N0,
      CLK => reset_IBUF_373,
      SET => i_hlt,
      O => i_received_hlt_333,
      GE => VCC,
      RST => GND
    );
  Intern_clock_hundredHzClock_i_zero : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      I => N1,
      SRST => Intern_clock_hundredHzClock_i_zero_or0000_28,
      O => Intern_clock_hundredHzClock_i_zero_27,
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Intern_clock_tenHzClock_i_zero : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      I => N1,
      SRST => Intern_clock_tenHzClock_i_zero_or0000_115,
      O => Intern_clock_tenHzClock_i_zero_114,
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Intern_clock_oneHZClock_i_zero : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      I => N1,
      SRST => Intern_clock_oneHZClock_i_zero_or0000_105,
      O => Intern_clock_oneHZClock_i_zero1,
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Intern_clock_kiloHzClock_i_zero : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      I => N1,
      SRST => Intern_clock_kiloHzClock_i_zero_or0000,
      O => Intern_clock_kiloHzClock_i_zero_93,
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Intern_clock_hundredHzClock_current_count_0 : X_SFF
    generic map(
      INIT => '1'
    )
    port map (
      CLK => clk_BUFGP,
      CE => Intern_clock_kiloHzClock_i_zero_93,
      I => Intern_clock_hundredHzClock_Mcount_current_count,
      SSET => reset_IBUF1,
      O => Intern_clock_hundredHzClock_current_count(0),
      SET => GND,
      RST => GND,
      SRST => GND
    );
  Intern_clock_hundredHzClock_current_count_1 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => Intern_clock_kiloHzClock_i_zero_93,
      I => Intern_clock_hundredHzClock_Mcount_current_count1,
      SRST => reset_IBUF1,
      O => Intern_clock_hundredHzClock_current_count(1),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Intern_clock_hundredHzClock_current_count_2 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => Intern_clock_kiloHzClock_i_zero_93,
      I => Intern_clock_hundredHzClock_Mcount_current_count2,
      SRST => reset_IBUF1,
      O => Intern_clock_hundredHzClock_current_count(2),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Intern_clock_hundredHzClock_current_count_3 : X_SFF
    generic map(
      INIT => '1'
    )
    port map (
      CLK => clk_BUFGP,
      CE => Intern_clock_kiloHzClock_i_zero_93,
      I => Intern_clock_hundredHzClock_Mcount_current_count3,
      SSET => reset_IBUF1,
      O => Intern_clock_hundredHzClock_current_count(3),
      SET => GND,
      RST => GND,
      SRST => GND
    );
  Intern_clock_tenHzClock_current_count_0 : X_SFF
    generic map(
      INIT => '1'
    )
    port map (
      CLK => clk_BUFGP,
      CE => Intern_clock_hundredHzClock_i_zero_27,
      I => Intern_clock_tenHzClock_Mcount_current_count,
      SSET => reset_IBUF1,
      O => Intern_clock_tenHzClock_current_count(0),
      SET => GND,
      RST => GND,
      SRST => GND
    );
  Intern_clock_tenHzClock_current_count_1 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => Intern_clock_hundredHzClock_i_zero_27,
      I => Intern_clock_tenHzClock_Mcount_current_count1,
      SRST => reset_IBUF1,
      O => Intern_clock_tenHzClock_current_count(1),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Intern_clock_tenHzClock_current_count_2 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => Intern_clock_hundredHzClock_i_zero_27,
      I => Intern_clock_tenHzClock_Mcount_current_count2,
      SRST => reset_IBUF1,
      O => Intern_clock_tenHzClock_current_count(2),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Intern_clock_tenHzClock_current_count_3 : X_SFF
    generic map(
      INIT => '1'
    )
    port map (
      CLK => clk_BUFGP,
      CE => Intern_clock_hundredHzClock_i_zero_27,
      I => Intern_clock_tenHzClock_Mcount_current_count3,
      SSET => reset_IBUF1,
      O => Intern_clock_tenHzClock_current_count(3),
      SET => GND,
      RST => GND,
      SRST => GND
    );
  Intern_clock_oneHZClock_current_count_0 : X_SFF
    generic map(
      INIT => '1'
    )
    port map (
      CLK => clk_BUFGP,
      CE => Intern_clock_tenHzClock_i_zero_114,
      I => Intern_clock_oneHZClock_Mcount_current_count,
      SSET => reset_IBUF1,
      O => Intern_clock_oneHZClock_current_count(0),
      SET => GND,
      RST => GND,
      SRST => GND
    );
  Intern_clock_oneHZClock_current_count_1 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => Intern_clock_tenHzClock_i_zero_114,
      I => Intern_clock_oneHZClock_Mcount_current_count1,
      SRST => reset_IBUF1,
      O => Intern_clock_oneHZClock_current_count(1),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Intern_clock_oneHZClock_current_count_2 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => Intern_clock_tenHzClock_i_zero_114,
      I => Intern_clock_oneHZClock_Mcount_current_count2,
      SRST => reset_IBUF1,
      O => Intern_clock_oneHZClock_current_count(2),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Intern_clock_oneHZClock_current_count_3 : X_SFF
    generic map(
      INIT => '1'
    )
    port map (
      CLK => clk_BUFGP,
      CE => Intern_clock_tenHzClock_i_zero_114,
      I => Intern_clock_oneHZClock_Mcount_current_count3,
      SSET => reset_IBUF1,
      O => Intern_clock_oneHZClock_current_count(3),
      SET => GND,
      RST => GND,
      SRST => GND
    );
  Intern_clock_kiloHzClock_current_count_0 : X_SFF
    generic map(
      INIT => '1'
    )
    port map (
      CLK => clk_BUFGP,
      I => Intern_clock_kiloHzClock_Mcount_current_count_eqn_0,
      SSET => reset_IBUF1,
      O => Intern_clock_kiloHzClock_current_count(0),
      CE => VCC,
      SET => GND,
      RST => GND,
      SRST => GND
    );
  Intern_clock_kiloHzClock_current_count_1 : X_SFF
    generic map(
      INIT => '1'
    )
    port map (
      CLK => clk_BUFGP,
      I => Intern_clock_kiloHzClock_Mcount_current_count_eqn_1,
      SSET => reset_IBUF1,
      O => Intern_clock_kiloHzClock_current_count(1),
      CE => VCC,
      SET => GND,
      RST => GND,
      SRST => GND
    );
  Intern_clock_kiloHzClock_current_count_2 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      I => Intern_clock_kiloHzClock_Mcount_current_count_eqn_2,
      SRST => reset_IBUF1,
      O => Intern_clock_kiloHzClock_current_count(2),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Intern_clock_kiloHzClock_current_count_3 : X_SFF
    generic map(
      INIT => '1'
    )
    port map (
      CLK => clk_BUFGP,
      I => Intern_clock_kiloHzClock_Mcount_current_count_eqn_3,
      SSET => reset_IBUF1,
      O => Intern_clock_kiloHzClock_current_count(3),
      CE => VCC,
      SET => GND,
      RST => GND,
      SRST => GND
    );
  Intern_clock_kiloHzClock_current_count_4 : X_SFF
    generic map(
      INIT => '1'
    )
    port map (
      CLK => clk_BUFGP,
      I => Intern_clock_kiloHzClock_Mcount_current_count_eqn_4,
      SSET => reset_IBUF1,
      O => Intern_clock_kiloHzClock_current_count(4),
      CE => VCC,
      SET => GND,
      RST => GND,
      SRST => GND
    );
  Intern_clock_kiloHzClock_current_count_5 : X_SFF
    generic map(
      INIT => '1'
    )
    port map (
      CLK => clk_BUFGP,
      I => Intern_clock_kiloHzClock_Mcount_current_count_eqn_5,
      SSET => reset_IBUF1,
      O => Intern_clock_kiloHzClock_current_count(5),
      CE => VCC,
      SET => GND,
      RST => GND,
      SRST => GND
    );
  Intern_clock_kiloHzClock_current_count_6 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      I => Intern_clock_kiloHzClock_Mcount_current_count_eqn_6,
      SRST => reset_IBUF1,
      O => Intern_clock_kiloHzClock_current_count(6),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Intern_clock_kiloHzClock_current_count_7 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      I => Intern_clock_kiloHzClock_Mcount_current_count_eqn_7,
      SRST => reset_IBUF1,
      O => Intern_clock_kiloHzClock_current_count(7),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Intern_clock_kiloHzClock_current_count_8 : X_SFF
    generic map(
      INIT => '1'
    )
    port map (
      CLK => clk_BUFGP,
      I => Intern_clock_kiloHzClock_Mcount_current_count_eqn_8,
      SSET => reset_IBUF1,
      O => Intern_clock_kiloHzClock_current_count(8),
      CE => VCC,
      SET => GND,
      RST => GND,
      SRST => GND
    );
  Intern_clock_kiloHzClock_current_count_9 : X_SFF
    generic map(
      INIT => '1'
    )
    port map (
      CLK => clk_BUFGP,
      I => Intern_clock_kiloHzClock_Mcount_current_count_eqn_9,
      SSET => reset_IBUF1,
      O => Intern_clock_kiloHzClock_current_count(9),
      CE => VCC,
      SET => GND,
      RST => GND,
      SRST => GND
    );
  Intern_clock_kiloHzClock_current_count_10 : X_SFF
    generic map(
      INIT => '1'
    )
    port map (
      CLK => clk_BUFGP,
      I => Intern_clock_kiloHzClock_Mcount_current_count_eqn_10,
      SSET => reset_IBUF1,
      O => Intern_clock_kiloHzClock_current_count(10),
      CE => VCC,
      SET => GND,
      RST => GND,
      SRST => GND
    );
  Intern_clock_kiloHzClock_current_count_11 : X_SFF
    generic map(
      INIT => '1'
    )
    port map (
      CLK => clk_BUFGP,
      I => Intern_clock_kiloHzClock_Mcount_current_count_eqn_11,
      SSET => reset_IBUF1,
      O => Intern_clock_kiloHzClock_current_count(11),
      CE => VCC,
      SET => GND,
      RST => GND,
      SRST => GND
    );
  Intern_clock_kiloHzClock_current_count_12 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      I => Intern_clock_kiloHzClock_Mcount_current_count_eqn_12,
      SRST => reset_IBUF1,
      O => Intern_clock_kiloHzClock_current_count(12),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Intern_clock_kiloHzClock_current_count_13 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      I => Intern_clock_kiloHzClock_Mcount_current_count_eqn_13,
      SRST => reset_IBUF1,
      O => Intern_clock_kiloHzClock_current_count(13),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Intern_clock_kiloHzClock_current_count_14 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      I => Intern_clock_kiloHzClock_Mcount_current_count_eqn_14,
      SRST => reset_IBUF1,
      O => Intern_clock_kiloHzClock_current_count(14),
      CE => VCC,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  Intern_clock_kiloHzClock_Mcount_current_count_cy_0_Q : X_MUX2
    port map (
      IB => N1,
      IA => N0,
      SEL => Intern_clock_kiloHzClock_Mcount_current_count_cy_0_rt_30,
      O => Intern_clock_kiloHzClock_Mcount_current_count_cy(0)
    );
  Intern_clock_kiloHzClock_Mcount_current_count_xor_0_Q : X_XOR2
    port map (
      I0 => N1,
      I1 => Intern_clock_kiloHzClock_Mcount_current_count_cy_0_rt_30,
      O => Result(0)
    );
  Intern_clock_kiloHzClock_Mcount_current_count_cy_1_Q : X_MUX2
    port map (
      IB => Intern_clock_kiloHzClock_Mcount_current_count_cy(0),
      IA => N1,
      SEL => Intern_clock_kiloHzClock_Mcount_current_count_lut(1),
      O => Intern_clock_kiloHzClock_Mcount_current_count_cy(1)
    );
  Intern_clock_kiloHzClock_Mcount_current_count_xor_1_Q : X_XOR2
    port map (
      I0 => Intern_clock_kiloHzClock_Mcount_current_count_cy(0),
      I1 => Intern_clock_kiloHzClock_Mcount_current_count_lut(1),
      O => Result(1)
    );
  Intern_clock_kiloHzClock_Mcount_current_count_cy_2_Q : X_MUX2
    port map (
      IB => Intern_clock_kiloHzClock_Mcount_current_count_cy(1),
      IA => N1,
      SEL => Intern_clock_kiloHzClock_Mcount_current_count_lut(2),
      O => Intern_clock_kiloHzClock_Mcount_current_count_cy(2)
    );
  Intern_clock_kiloHzClock_Mcount_current_count_xor_2_Q : X_XOR2
    port map (
      I0 => Intern_clock_kiloHzClock_Mcount_current_count_cy(1),
      I1 => Intern_clock_kiloHzClock_Mcount_current_count_lut(2),
      O => Result(2)
    );
  Intern_clock_kiloHzClock_Mcount_current_count_cy_3_Q : X_MUX2
    port map (
      IB => Intern_clock_kiloHzClock_Mcount_current_count_cy(2),
      IA => N1,
      SEL => Intern_clock_kiloHzClock_Mcount_current_count_lut(3),
      O => Intern_clock_kiloHzClock_Mcount_current_count_cy(3)
    );
  Intern_clock_kiloHzClock_Mcount_current_count_xor_3_Q : X_XOR2
    port map (
      I0 => Intern_clock_kiloHzClock_Mcount_current_count_cy(2),
      I1 => Intern_clock_kiloHzClock_Mcount_current_count_lut(3),
      O => Result(3)
    );
  Intern_clock_kiloHzClock_Mcount_current_count_cy_4_Q : X_MUX2
    port map (
      IB => Intern_clock_kiloHzClock_Mcount_current_count_cy(3),
      IA => N1,
      SEL => Intern_clock_kiloHzClock_Mcount_current_count_lut(4),
      O => Intern_clock_kiloHzClock_Mcount_current_count_cy(4)
    );
  Intern_clock_kiloHzClock_Mcount_current_count_xor_4_Q : X_XOR2
    port map (
      I0 => Intern_clock_kiloHzClock_Mcount_current_count_cy(3),
      I1 => Intern_clock_kiloHzClock_Mcount_current_count_lut(4),
      O => Result(4)
    );
  Intern_clock_kiloHzClock_Mcount_current_count_cy_5_Q : X_MUX2
    port map (
      IB => Intern_clock_kiloHzClock_Mcount_current_count_cy(4),
      IA => N1,
      SEL => Intern_clock_kiloHzClock_Mcount_current_count_lut(5),
      O => Intern_clock_kiloHzClock_Mcount_current_count_cy(5)
    );
  Intern_clock_kiloHzClock_Mcount_current_count_xor_5_Q : X_XOR2
    port map (
      I0 => Intern_clock_kiloHzClock_Mcount_current_count_cy(4),
      I1 => Intern_clock_kiloHzClock_Mcount_current_count_lut(5),
      O => Result(5)
    );
  Intern_clock_kiloHzClock_Mcount_current_count_cy_6_Q : X_MUX2
    port map (
      IB => Intern_clock_kiloHzClock_Mcount_current_count_cy(5),
      IA => N1,
      SEL => Intern_clock_kiloHzClock_Mcount_current_count_lut(6),
      O => Intern_clock_kiloHzClock_Mcount_current_count_cy(6)
    );
  Intern_clock_kiloHzClock_Mcount_current_count_xor_6_Q : X_XOR2
    port map (
      I0 => Intern_clock_kiloHzClock_Mcount_current_count_cy(5),
      I1 => Intern_clock_kiloHzClock_Mcount_current_count_lut(6),
      O => Result(6)
    );
  Intern_clock_kiloHzClock_Mcount_current_count_cy_7_Q : X_MUX2
    port map (
      IB => Intern_clock_kiloHzClock_Mcount_current_count_cy(6),
      IA => N1,
      SEL => Intern_clock_kiloHzClock_Mcount_current_count_lut(7),
      O => Intern_clock_kiloHzClock_Mcount_current_count_cy(7)
    );
  Intern_clock_kiloHzClock_Mcount_current_count_xor_7_Q : X_XOR2
    port map (
      I0 => Intern_clock_kiloHzClock_Mcount_current_count_cy(6),
      I1 => Intern_clock_kiloHzClock_Mcount_current_count_lut(7),
      O => Result(7)
    );
  Intern_clock_kiloHzClock_Mcount_current_count_cy_8_Q : X_MUX2
    port map (
      IB => Intern_clock_kiloHzClock_Mcount_current_count_cy(7),
      IA => N1,
      SEL => Intern_clock_kiloHzClock_Mcount_current_count_lut(8),
      O => Intern_clock_kiloHzClock_Mcount_current_count_cy(8)
    );
  Intern_clock_kiloHzClock_Mcount_current_count_xor_8_Q : X_XOR2
    port map (
      I0 => Intern_clock_kiloHzClock_Mcount_current_count_cy(7),
      I1 => Intern_clock_kiloHzClock_Mcount_current_count_lut(8),
      O => Result(8)
    );
  Intern_clock_kiloHzClock_Mcount_current_count_cy_9_Q : X_MUX2
    port map (
      IB => Intern_clock_kiloHzClock_Mcount_current_count_cy(8),
      IA => N1,
      SEL => Intern_clock_kiloHzClock_Mcount_current_count_lut(9),
      O => Intern_clock_kiloHzClock_Mcount_current_count_cy(9)
    );
  Intern_clock_kiloHzClock_Mcount_current_count_xor_9_Q : X_XOR2
    port map (
      I0 => Intern_clock_kiloHzClock_Mcount_current_count_cy(8),
      I1 => Intern_clock_kiloHzClock_Mcount_current_count_lut(9),
      O => Result(9)
    );
  Intern_clock_kiloHzClock_Mcount_current_count_cy_10_Q : X_MUX2
    port map (
      IB => Intern_clock_kiloHzClock_Mcount_current_count_cy(9),
      IA => N1,
      SEL => Intern_clock_kiloHzClock_Mcount_current_count_lut(10),
      O => Intern_clock_kiloHzClock_Mcount_current_count_cy(10)
    );
  Intern_clock_kiloHzClock_Mcount_current_count_xor_10_Q : X_XOR2
    port map (
      I0 => Intern_clock_kiloHzClock_Mcount_current_count_cy(9),
      I1 => Intern_clock_kiloHzClock_Mcount_current_count_lut(10),
      O => Result(10)
    );
  Intern_clock_kiloHzClock_Mcount_current_count_cy_11_Q : X_MUX2
    port map (
      IB => Intern_clock_kiloHzClock_Mcount_current_count_cy(10),
      IA => N1,
      SEL => Intern_clock_kiloHzClock_Mcount_current_count_lut(11),
      O => Intern_clock_kiloHzClock_Mcount_current_count_cy(11)
    );
  Intern_clock_kiloHzClock_Mcount_current_count_xor_11_Q : X_XOR2
    port map (
      I0 => Intern_clock_kiloHzClock_Mcount_current_count_cy(10),
      I1 => Intern_clock_kiloHzClock_Mcount_current_count_lut(11),
      O => Result(11)
    );
  Intern_clock_kiloHzClock_Mcount_current_count_cy_12_Q : X_MUX2
    port map (
      IB => Intern_clock_kiloHzClock_Mcount_current_count_cy(11),
      IA => N1,
      SEL => Intern_clock_kiloHzClock_Mcount_current_count_lut(12),
      O => Intern_clock_kiloHzClock_Mcount_current_count_cy(12)
    );
  Intern_clock_kiloHzClock_Mcount_current_count_xor_12_Q : X_XOR2
    port map (
      I0 => Intern_clock_kiloHzClock_Mcount_current_count_cy(11),
      I1 => Intern_clock_kiloHzClock_Mcount_current_count_lut(12),
      O => Result(12)
    );
  Intern_clock_kiloHzClock_Mcount_current_count_cy_13_Q : X_MUX2
    port map (
      IB => Intern_clock_kiloHzClock_Mcount_current_count_cy(12),
      IA => N1,
      SEL => Intern_clock_kiloHzClock_Mcount_current_count_lut(13),
      O => Intern_clock_kiloHzClock_Mcount_current_count_cy(13)
    );
  Intern_clock_kiloHzClock_Mcount_current_count_xor_13_Q : X_XOR2
    port map (
      I0 => Intern_clock_kiloHzClock_Mcount_current_count_cy(12),
      I1 => Intern_clock_kiloHzClock_Mcount_current_count_lut(13),
      O => Result(13)
    );
  Intern_clock_kiloHzClock_Mcount_current_count_xor_14_Q : X_XOR2
    port map (
      I0 => Intern_clock_kiloHzClock_Mcount_current_count_cy(13),
      I1 => Intern_clock_kiloHzClock_Mcount_current_count_lut(14),
      O => Result(14)
    );
  PCreg_q_15 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Intern_clock_oneHZClock_i_zero_103,
      CE => i_pc_en_after_or,
      RST => reset_IBUF1,
      I => i_pc_prime(15),
      O => PCreg_q(15),
      SET => GND
    );
  PCreg_q_14 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Intern_clock_oneHZClock_i_zero_103,
      CE => i_pc_en_after_or,
      RST => reset_IBUF1,
      I => i_pc_prime(14),
      O => PCreg_q(14),
      SET => GND
    );
  PCreg_q_13 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Intern_clock_oneHZClock_i_zero_103,
      CE => i_pc_en_after_or,
      RST => reset_IBUF1,
      I => i_pc_prime(13),
      O => PCreg_q(13),
      SET => GND
    );
  PCreg_q_12 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Intern_clock_oneHZClock_i_zero_103,
      CE => i_pc_en_after_or,
      RST => reset_IBUF1,
      I => i_pc_prime(12),
      O => PCreg_q(12),
      SET => GND
    );
  PCreg_q_11 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Intern_clock_oneHZClock_i_zero_103,
      CE => i_pc_en_after_or,
      RST => reset_IBUF1,
      I => i_pc_prime(11),
      O => PCreg_q(11),
      SET => GND
    );
  PCreg_q_10 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Intern_clock_oneHZClock_i_zero_103,
      CE => i_pc_en_after_or,
      RST => reset_IBUF1,
      I => i_pc_prime(10),
      O => PCreg_q(10),
      SET => GND
    );
  PCreg_q_9 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Intern_clock_oneHZClock_i_zero_103,
      CE => i_pc_en_after_or,
      RST => reset_IBUF1,
      I => i_pc_prime(9),
      O => PCreg_q(9),
      SET => GND
    );
  PCreg_q_8 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Intern_clock_oneHZClock_i_zero_103,
      CE => i_pc_en_after_or,
      RST => reset_IBUF1,
      I => i_pc_prime(8),
      O => PCreg_q(8),
      SET => GND
    );
  PCreg_q_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Intern_clock_oneHZClock_i_zero_103,
      CE => i_pc_en_after_or,
      RST => reset_IBUF1,
      I => i_pc_prime(7),
      O => PCreg_q(7),
      SET => GND
    );
  PCreg_q_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Intern_clock_oneHZClock_i_zero_103,
      CE => i_pc_en_after_or,
      RST => reset_IBUF1,
      I => i_pc_prime(6),
      O => PCreg_q(6),
      SET => GND
    );
  PCreg_q_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Intern_clock_oneHZClock_i_zero_103,
      CE => i_pc_en_after_or,
      RST => reset_IBUF1,
      I => i_pc_prime(5),
      O => PCreg_q(5),
      SET => GND
    );
  PCreg_q_4 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      CLK => Intern_clock_oneHZClock_i_zero_103,
      CE => i_pc_en_after_or,
      I => i_pc_prime(4),
      SET => reset_IBUF1,
      O => PCreg_q(4),
      RST => GND
    );
  PCreg_q_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Intern_clock_oneHZClock_i_zero_103,
      CE => i_pc_en_after_or,
      RST => reset_IBUF1,
      I => i_pc_prime(3),
      O => PCreg_q(3),
      SET => GND
    );
  PCreg_q_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Intern_clock_oneHZClock_i_zero_103,
      CE => i_pc_en_after_or,
      RST => reset_IBUF1,
      I => i_pc_prime(2),
      O => PCreg_q(2),
      SET => GND
    );
  PCreg_q_1 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      CLK => Intern_clock_oneHZClock_i_zero_103,
      CE => i_pc_en_after_or,
      I => i_pc_prime(1),
      SET => reset_IBUF1,
      O => PCreg_q(1),
      RST => GND
    );
  PCreg_q_0 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      CLK => Intern_clock_oneHZClock_i_zero_103,
      CE => i_pc_en_after_or,
      I => i_pc_prime(0),
      SET => reset_IBUF1,
      O => PCreg_q(0),
      RST => GND
    );
  MEM_i_nibbleCount_1 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      CLK => Intern_clock_oneHZClock_i_zero_103,
      CE => cycle_control_unit_mem_en_289,
      I => MEM_Mcount_i_nibbleCount1,
      SET => reset_IBUF1,
      O => MEM_i_nibbleCount(1),
      RST => GND
    );
  MEM_i_nibbleCount_0 : X_FF
    generic map(
      INIT => '1'
    )
    port map (
      CLK => Intern_clock_oneHZClock_i_zero_103,
      CE => cycle_control_unit_mem_en_289,
      I => MEM_Mcount_i_nibbleCount,
      SET => reset_IBUF1,
      O => MEM_i_nibbleCount(0),
      RST => GND
    );
  MEM_q_15 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Intern_clock_oneHZClock_i_zero_103,
      CE => MEM_q_12_not0001,
      RST => reset_IBUF1,
      I => i_data_frm_ram(3),
      O => MEM_q(15),
      SET => GND
    );
  MEM_q_14 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Intern_clock_oneHZClock_i_zero_103,
      CE => MEM_q_12_not0001,
      RST => reset_IBUF1,
      I => i_data_frm_ram(2),
      O => MEM_q(14),
      SET => GND
    );
  MEM_q_13 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Intern_clock_oneHZClock_i_zero_103,
      CE => MEM_q_12_not0001,
      RST => reset_IBUF1,
      I => i_data_frm_ram(1),
      O => MEM_q(13),
      SET => GND
    );
  MEM_q_9 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Intern_clock_oneHZClock_i_zero_103,
      CE => MEM_q_10_not0001,
      RST => reset_IBUF1,
      I => i_data_frm_ram(1),
      O => MEM_q(9),
      SET => GND
    );
  MEM_q_12 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Intern_clock_oneHZClock_i_zero_103,
      CE => MEM_q_12_not0001,
      RST => reset_IBUF1,
      I => i_data_frm_ram(0),
      O => MEM_q(12),
      SET => GND
    );
  MEM_q_8 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Intern_clock_oneHZClock_i_zero_103,
      CE => MEM_q_10_not0001,
      RST => reset_IBUF1,
      I => i_data_frm_ram(0),
      O => MEM_q(8),
      SET => GND
    );
  MEM_q_11 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Intern_clock_oneHZClock_i_zero_103,
      CE => MEM_q_10_not0001,
      RST => reset_IBUF1,
      I => i_data_frm_ram(3),
      O => MEM_q(11),
      SET => GND
    );
  MEM_q_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Intern_clock_oneHZClock_i_zero_103,
      CE => MEM_q_4_not0001,
      RST => reset_IBUF1,
      I => i_data_frm_ram(3),
      O => MEM_q(7),
      SET => GND
    );
  MEM_q_10 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Intern_clock_oneHZClock_i_zero_103,
      CE => MEM_q_10_not0001,
      RST => reset_IBUF1,
      I => i_data_frm_ram(2),
      O => MEM_q(10),
      SET => GND
    );
  MEM_q_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Intern_clock_oneHZClock_i_zero_103,
      CE => MEM_q_4_not0001,
      RST => reset_IBUF1,
      I => i_data_frm_ram(2),
      O => MEM_q(6),
      SET => GND
    );
  MEM_q_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Intern_clock_oneHZClock_i_zero_103,
      CE => MEM_q_4_not0001,
      RST => reset_IBUF1,
      I => i_data_frm_ram(1),
      O => MEM_q(5),
      SET => GND
    );
  MEM_q_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Intern_clock_oneHZClock_i_zero_103,
      CE => MEM_q_4_not0001,
      RST => reset_IBUF1,
      I => i_data_frm_ram(0),
      O => MEM_q(4),
      SET => GND
    );
  MEM_q_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Intern_clock_oneHZClock_i_zero_103,
      CE => MEM_q_0_not0001,
      RST => reset_IBUF1,
      I => i_data_frm_ram(3),
      O => MEM_q(3),
      SET => GND
    );
  MEM_q_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Intern_clock_oneHZClock_i_zero_103,
      CE => MEM_q_0_not0001,
      RST => reset_IBUF1,
      I => i_data_frm_ram(1),
      O => MEM_q(1),
      SET => GND
    );
  MEM_q_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Intern_clock_oneHZClock_i_zero_103,
      CE => MEM_q_0_not0001,
      RST => reset_IBUF1,
      I => i_data_frm_ram(0),
      O => MEM_q(0),
      SET => GND
    );
  MEM_q_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Intern_clock_oneHZClock_i_zero_103,
      CE => MEM_q_0_not0001,
      RST => reset_IBUF1,
      I => i_data_frm_ram(2),
      O => MEM_q(2),
      SET => GND
    );
  cycle_control_unit_cycle_counter_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Intern_clock_oneHZClock_i_zero_103,
      RST => cycle_control_unit_Mcount_cycle_counter_val,
      I => cycle_control_unit_Mcount_cycle_counter1,
      O => cycle_control_unit_cycle_counter(1),
      CE => VCC,
      SET => GND
    );
  cycle_control_unit_cycle_counter_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Intern_clock_oneHZClock_i_zero_103,
      RST => cycle_control_unit_cycle_counter_or0000,
      I => cycle_control_unit_Mcount_cycle_counter,
      SET => reset_IBUF1,
      O => cycle_control_unit_cycle_counter(0),
      CE => VCC
    );
  cycle_control_unit_cycle_counter_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Intern_clock_oneHZClock_i_zero_103,
      RST => cycle_control_unit_Mcount_cycle_counter_val,
      I => cycle_control_unit_Mcount_cycle_counter2,
      O => cycle_control_unit_cycle_counter(2),
      CE => VCC,
      SET => GND
    );
  cycle_control_unit_received_hlt : X_LATCHE
    generic map(
      INIT => '0'
    )
    port map (
      RST => reset_IBUF1,
      I => N1,
      CLK => i_hlt,
      GE => cycle_control_unit_received_hlt_0_not0000,
      O => cycle_control_unit_received_hlt_295,
      SET => GND
    );
  cycle_control_unit_op_en : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Intern_clock_oneHZClock_i_zero_103,
      RST => cycle_control_unit_cycle_counter_or0000,
      I => cycle_control_unit_op_en_mux0000,
      SET => reset_IBUF1,
      O => cycle_control_unit_op_en_291,
      CE => VCC
    );
  cycle_control_unit_exe : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Intern_clock_oneHZClock_i_zero_103,
      RST => cycle_control_unit_Mcount_cycle_counter_val,
      I => cycle_control_unit_exe_mux0000,
      O => cycle_control_unit_exe_287,
      CE => VCC,
      SET => GND
    );
  cycle_control_unit_mem_en : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Intern_clock_oneHZClock_i_zero_103,
      RST => cycle_control_unit_Mcount_cycle_counter_val,
      I => cycle_control_unit_mem_en_mux0000,
      O => cycle_control_unit_mem_en_289,
      CE => VCC,
      SET => GND
    );
  cycle_control_unit_pc_en : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Intern_clock_oneHZClock_i_zero_103,
      RST => cycle_control_unit_cycle_counter_or0000,
      I => cycle_control_unit_pc_en_mux0000,
      SET => reset_IBUF1,
      O => cycle_control_unit_pc_en_293,
      CE => VCC
    );
  cpu_alu_DECODER_stored_OP_Code_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Intern_clock_oneHZClock_i_zero_103,
      CE => cycle_control_unit_op_en_291,
      I => i_data_frm_ram(0),
      O => cpu_alu_DECODER_stored_OP_Code(0),
      SET => GND,
      RST => GND
    );
  cpu_alu_DECODER_stored_OP_Code_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Intern_clock_oneHZClock_i_zero_103,
      CE => cycle_control_unit_op_en_291,
      I => i_data_frm_ram(1),
      O => cpu_alu_DECODER_stored_OP_Code(1),
      SET => GND,
      RST => GND
    );
  cpu_alu_DECODER_stored_OP_Code_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Intern_clock_oneHZClock_i_zero_103,
      CE => cycle_control_unit_op_en_291,
      I => i_data_frm_ram(2),
      O => cpu_alu_DECODER_stored_OP_Code(2),
      SET => GND,
      RST => GND
    );
  cpu_alu_DECODER_stored_OP_Code_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Intern_clock_oneHZClock_i_zero_103,
      CE => cycle_control_unit_op_en_291,
      I => i_data_frm_ram(3),
      O => cpu_alu_DECODER_stored_OP_Code(3),
      SET => GND,
      RST => GND
    );
  cpu_alu_STAT_data_out_0 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Intern_clock_oneHZClock_i_zero_103,
      CE => cpu_alu_i_STAT_EN,
      I => cpu_alu_i_carry_in_277,
      SRST => reset_IBUF1,
      O => cpu_alu_STAT_data_out_0_Q,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  cpu_alu_STAT_data_out_1 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Intern_clock_oneHZClock_i_zero_103,
      CE => cpu_alu_i_STAT_EN,
      I => i_hlt,
      SRST => reset_IBUF1,
      O => cpu_alu_STAT_data_out_1_Q,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  cpu_alu_STAT_data_out_3 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Intern_clock_oneHZClock_i_zero_103,
      CE => cpu_alu_i_STAT_EN,
      I => cpu_alu_i_XORb_in_275,
      SRST => reset_IBUF1,
      O => cpu_alu_STAT_data_out_3_Q,
      SET => GND,
      RST => GND,
      SSET => GND
    );
  cycle_control_unit_cycle_counter_or00001 : X_LUT3
    generic map(
      INIT => X"32"
    )
    port map (
      ADR0 => i_hlt,
      ADR1 => reset_IBUF1,
      ADR2 => cycle_control_unit_received_hlt_295,
      O => cycle_control_unit_cycle_counter_or0000
    );
  cycle_control_unit_Mcount_cycle_counter_val1 : X_LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      ADR0 => reset_IBUF1,
      ADR1 => i_hlt,
      ADR2 => cycle_control_unit_received_hlt_295,
      O => cycle_control_unit_Mcount_cycle_counter_val
    );
  i_ram_address_9_1 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => cycle_control_unit_exe_287,
      ADR1 => MEM_q(9),
      ADR2 => PCreg_q(9),
      O => ram_address_9_OBUF_365
    );
  i_ram_address_8_1 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => cycle_control_unit_exe_287,
      ADR1 => MEM_q(8),
      ADR2 => PCreg_q(8),
      O => ram_address_8_OBUF_364
    );
  i_ram_address_7_1 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => cycle_control_unit_exe_287,
      ADR1 => MEM_q(7),
      ADR2 => PCreg_q(7),
      O => ram_address_7_OBUF_363
    );
  i_ram_address_6_1 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => cycle_control_unit_exe_287,
      ADR1 => MEM_q(6),
      ADR2 => PCreg_q(6),
      O => ram_address_6_OBUF_362
    );
  i_ram_address_5_1 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => cycle_control_unit_exe_287,
      ADR1 => MEM_q(5),
      ADR2 => PCreg_q(5),
      O => ram_address_5_OBUF_361
    );
  i_ram_address_4_1 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => cycle_control_unit_exe_287,
      ADR1 => MEM_q(4),
      ADR2 => PCreg_q(4),
      O => ram_address_4_OBUF_360
    );
  i_ram_address_3_1 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => cycle_control_unit_exe_287,
      ADR1 => MEM_q(3),
      ADR2 => PCreg_q(3),
      O => ram_address_3_OBUF_359
    );
  i_ram_address_2_1 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => cycle_control_unit_exe_287,
      ADR1 => MEM_q(2),
      ADR2 => PCreg_q(2),
      O => ram_address_2_OBUF_358
    );
  i_ram_address_1_1 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => cycle_control_unit_exe_287,
      ADR1 => MEM_q(1),
      ADR2 => PCreg_q(1),
      O => ram_address_1_OBUF_357
    );
  i_ram_address_15_1 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => cycle_control_unit_exe_287,
      ADR1 => MEM_q(15),
      ADR2 => PCreg_q(15),
      O => ram_address_15_OBUF_356
    );
  i_ram_address_14_1 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => cycle_control_unit_exe_287,
      ADR1 => MEM_q(14),
      ADR2 => PCreg_q(14),
      O => ram_address_14_OBUF_355
    );
  i_ram_address_13_1 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => cycle_control_unit_exe_287,
      ADR1 => MEM_q(13),
      ADR2 => PCreg_q(13),
      O => ram_address_13_OBUF_354
    );
  i_ram_address_12_1 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => cycle_control_unit_exe_287,
      ADR1 => MEM_q(12),
      ADR2 => PCreg_q(12),
      O => ram_address_12_OBUF_353
    );
  i_ram_address_11_1 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => cycle_control_unit_exe_287,
      ADR1 => MEM_q(11),
      ADR2 => PCreg_q(11),
      O => ram_address_11_OBUF_352
    );
  i_ram_address_10_1 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => cycle_control_unit_exe_287,
      ADR1 => MEM_q(10),
      ADR2 => PCreg_q(10),
      O => ram_address_10_OBUF_351
    );
  i_ram_address_0_1 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => cycle_control_unit_exe_287,
      ADR1 => MEM_q(0),
      ADR2 => PCreg_q(0),
      O => ram_address_0_OBUF_350
    );
  MEM_Mcount_i_nibbleCount_xor_1_11 : X_LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      ADR0 => MEM_i_nibbleCount(0),
      ADR1 => MEM_i_nibbleCount(1),
      O => MEM_Mcount_i_nibbleCount1
    );
  cycle_control_unit_Mcount_cycle_counter_xor_2_11 : X_LUT3
    generic map(
      INIT => X"62"
    )
    port map (
      ADR0 => cycle_control_unit_cycle_counter(2),
      ADR1 => cycle_control_unit_cycle_counter(0),
      ADR2 => cycle_control_unit_cycle_counter(1),
      O => cycle_control_unit_Mcount_cycle_counter2
    );
  cycle_control_unit_Mcount_cycle_counter_xor_1_11 : X_LUT3
    generic map(
      INIT => X"26"
    )
    port map (
      ADR0 => cycle_control_unit_cycle_counter(1),
      ADR1 => cycle_control_unit_cycle_counter(0),
      ADR2 => cycle_control_unit_cycle_counter(2),
      O => cycle_control_unit_Mcount_cycle_counter1
    );
  cycle_control_unit_pc_en_mux00001 : X_LUT4
    generic map(
      INIT => X"BF1F"
    )
    port map (
      ADR0 => cycle_control_unit_cycle_counter(1),
      ADR1 => cycle_control_unit_cycle_counter(0),
      ADR2 => cycle_control_unit_cycle_counter(2),
      ADR3 => cycle_control_unit_pc_en_293,
      O => cycle_control_unit_pc_en_mux0000
    );
  cycle_control_unit_exe_mux00001 : X_LUT4
    generic map(
      INIT => X"A280"
    )
    port map (
      ADR0 => cycle_control_unit_cycle_counter(2),
      ADR1 => cycle_control_unit_cycle_counter(1),
      ADR2 => cycle_control_unit_exe_287,
      ADR3 => cycle_control_unit_cycle_counter(0),
      O => cycle_control_unit_exe_mux0000
    );
  cycle_control_unit_op_en_mux00001 : X_LUT4
    generic map(
      INIT => X"8091"
    )
    port map (
      ADR0 => cycle_control_unit_cycle_counter(1),
      ADR1 => cycle_control_unit_cycle_counter(2),
      ADR2 => cycle_control_unit_op_en_291,
      ADR3 => cycle_control_unit_cycle_counter(0),
      O => cycle_control_unit_op_en_mux0000
    );
  Intern_clock_tenHzClock_Mcount_current_count_xor_1_11 : X_LUT4
    generic map(
      INIT => X"9998"
    )
    port map (
      ADR0 => Intern_clock_tenHzClock_current_count(0),
      ADR1 => Intern_clock_tenHzClock_current_count(1),
      ADR2 => Intern_clock_tenHzClock_current_count(2),
      ADR3 => Intern_clock_tenHzClock_current_count(3),
      O => Intern_clock_tenHzClock_Mcount_current_count1
    );
  Intern_clock_oneHZClock_Mcount_current_count_xor_1_11 : X_LUT4
    generic map(
      INIT => X"9998"
    )
    port map (
      ADR0 => Intern_clock_oneHZClock_current_count(0),
      ADR1 => Intern_clock_oneHZClock_current_count(1),
      ADR2 => Intern_clock_oneHZClock_current_count(2),
      ADR3 => Intern_clock_oneHZClock_current_count(3),
      O => Intern_clock_oneHZClock_Mcount_current_count1
    );
  Intern_clock_hundredHzClock_Mcount_current_count_xor_1_11 : X_LUT4
    generic map(
      INIT => X"9998"
    )
    port map (
      ADR0 => Intern_clock_hundredHzClock_current_count(0),
      ADR1 => Intern_clock_hundredHzClock_current_count(1),
      ADR2 => Intern_clock_hundredHzClock_current_count(2),
      ADR3 => Intern_clock_hundredHzClock_current_count(3),
      O => Intern_clock_hundredHzClock_Mcount_current_count1
    );
  Intern_clock_tenHzClock_Mcount_current_count_xor_2_11 : X_LUT4
    generic map(
      INIT => X"C9C8"
    )
    port map (
      ADR0 => Intern_clock_tenHzClock_current_count(1),
      ADR1 => Intern_clock_tenHzClock_current_count(2),
      ADR2 => Intern_clock_tenHzClock_current_count(0),
      ADR3 => Intern_clock_tenHzClock_current_count(3),
      O => Intern_clock_tenHzClock_Mcount_current_count2
    );
  Intern_clock_oneHZClock_Mcount_current_count_xor_2_11 : X_LUT4
    generic map(
      INIT => X"C9C8"
    )
    port map (
      ADR0 => Intern_clock_oneHZClock_current_count(1),
      ADR1 => Intern_clock_oneHZClock_current_count(2),
      ADR2 => Intern_clock_oneHZClock_current_count(0),
      ADR3 => Intern_clock_oneHZClock_current_count(3),
      O => Intern_clock_oneHZClock_Mcount_current_count2
    );
  Intern_clock_hundredHzClock_Mcount_current_count_xor_2_11 : X_LUT4
    generic map(
      INIT => X"C9C8"
    )
    port map (
      ADR0 => Intern_clock_hundredHzClock_current_count(1),
      ADR1 => Intern_clock_hundredHzClock_current_count(2),
      ADR2 => Intern_clock_hundredHzClock_current_count(0),
      ADR3 => Intern_clock_hundredHzClock_current_count(3),
      O => Intern_clock_hundredHzClock_Mcount_current_count2
    );
  cycle_control_unit_mem_en_mux00001 : X_LUT4
    generic map(
      INIT => X"BE36"
    )
    port map (
      ADR0 => cycle_control_unit_cycle_counter(1),
      ADR1 => cycle_control_unit_cycle_counter(2),
      ADR2 => cycle_control_unit_cycle_counter(0),
      ADR3 => cycle_control_unit_mem_en_289,
      O => cycle_control_unit_mem_en_mux0000
    );
  Intern_clock_tenHzClock_Mcount_current_count_xor_3_11 : X_LUT4
    generic map(
      INIT => X"AAA9"
    )
    port map (
      ADR0 => Intern_clock_tenHzClock_current_count(3),
      ADR1 => Intern_clock_tenHzClock_current_count(1),
      ADR2 => Intern_clock_tenHzClock_current_count(0),
      ADR3 => Intern_clock_tenHzClock_current_count(2),
      O => Intern_clock_tenHzClock_Mcount_current_count3
    );
  Intern_clock_oneHZClock_Mcount_current_count_xor_3_11 : X_LUT4
    generic map(
      INIT => X"AAA9"
    )
    port map (
      ADR0 => Intern_clock_oneHZClock_current_count(3),
      ADR1 => Intern_clock_oneHZClock_current_count(1),
      ADR2 => Intern_clock_oneHZClock_current_count(0),
      ADR3 => Intern_clock_oneHZClock_current_count(2),
      O => Intern_clock_oneHZClock_Mcount_current_count3
    );
  Intern_clock_hundredHzClock_Mcount_current_count_xor_3_11 : X_LUT4
    generic map(
      INIT => X"AAA9"
    )
    port map (
      ADR0 => Intern_clock_hundredHzClock_current_count(3),
      ADR1 => Intern_clock_hundredHzClock_current_count(1),
      ADR2 => Intern_clock_hundredHzClock_current_count(0),
      ADR3 => Intern_clock_hundredHzClock_current_count(2),
      O => Intern_clock_hundredHzClock_Mcount_current_count3
    );
  MEM_q_4_not00011 : X_LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      ADR0 => MEM_i_nibbleCount(0),
      ADR1 => MEM_i_nibbleCount(1),
      ADR2 => cycle_control_unit_mem_en_289,
      O => MEM_q_4_not0001
    );
  MEM_q_12_not00011 : X_LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      ADR0 => MEM_i_nibbleCount(1),
      ADR1 => MEM_i_nibbleCount(0),
      ADR2 => cycle_control_unit_mem_en_289,
      O => MEM_q_12_not0001
    );
  MEM_q_10_not00011 : X_LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      ADR0 => MEM_i_nibbleCount(1),
      ADR1 => MEM_i_nibbleCount(0),
      ADR2 => cycle_control_unit_mem_en_289,
      O => MEM_q_10_not0001
    );
  MEM_q_0_not00011 : X_LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      ADR0 => MEM_i_nibbleCount(1),
      ADR1 => cycle_control_unit_mem_en_289,
      ADR2 => MEM_i_nibbleCount(0),
      O => MEM_q_0_not0001
    );
  Intern_clock_tenHzClock_i_zero_or0000_SW0 : X_LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      ADR0 => Intern_clock_tenHzClock_current_count(3),
      ADR1 => Intern_clock_tenHzClock_current_count(2),
      ADR2 => reset_IBUF1,
      O => N9
    );
  Intern_clock_tenHzClock_i_zero_or0000 : X_LUT4
    generic map(
      INIT => X"FFFB"
    )
    port map (
      ADR0 => Intern_clock_tenHzClock_current_count(0),
      ADR1 => Intern_clock_hundredHzClock_i_zero_27,
      ADR2 => Intern_clock_tenHzClock_current_count(1),
      ADR3 => N9,
      O => Intern_clock_tenHzClock_i_zero_or0000_115
    );
  Intern_clock_oneHZClock_i_zero_or0000_SW0 : X_LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      ADR0 => Intern_clock_oneHZClock_current_count(3),
      ADR1 => Intern_clock_oneHZClock_current_count(2),
      ADR2 => reset_IBUF1,
      O => N11
    );
  Intern_clock_oneHZClock_i_zero_or0000 : X_LUT4
    generic map(
      INIT => X"FFFB"
    )
    port map (
      ADR0 => Intern_clock_oneHZClock_current_count(1),
      ADR1 => Intern_clock_tenHzClock_i_zero_114,
      ADR2 => Intern_clock_oneHZClock_current_count(0),
      ADR3 => N11,
      O => Intern_clock_oneHZClock_i_zero_or0000_105
    );
  Intern_clock_hundredHzClock_i_zero_or0000_SW0 : X_LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      ADR0 => Intern_clock_hundredHzClock_current_count(3),
      ADR1 => Intern_clock_hundredHzClock_current_count(2),
      ADR2 => reset_IBUF1,
      O => N13
    );
  Intern_clock_hundredHzClock_i_zero_or0000 : X_LUT4
    generic map(
      INIT => X"FFFB"
    )
    port map (
      ADR0 => Intern_clock_hundredHzClock_current_count(1),
      ADR1 => Intern_clock_kiloHzClock_i_zero_93,
      ADR2 => Intern_clock_hundredHzClock_current_count(0),
      ADR3 => N13,
      O => Intern_clock_hundredHzClock_i_zero_or0000_28
    );
  cpu_alu_DECODER_STAT_EN_and00001 : X_LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      ADR0 => cpu_alu_i_A_EN,
      ADR1 => cpu_alu_DECODER_stored_OP_Code(2),
      ADR2 => cpu_alu_DECODER_stored_OP_Code(1),
      O => cpu_alu_i_STAT_EN
    );
  Intern_clock_kiloHzClock_Mcount_current_count_eqn_15 : X_LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      ADR0 => Result(1),
      ADR1 => Intern_clock_kiloHzClock_current_count_cmp_eq0000,
      O => Intern_clock_kiloHzClock_Mcount_current_count_eqn_1
    );
  Intern_clock_kiloHzClock_Mcount_current_count_eqn_01 : X_LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      ADR0 => Result(0),
      ADR1 => Intern_clock_kiloHzClock_current_count_cmp_eq0000,
      O => Intern_clock_kiloHzClock_Mcount_current_count_eqn_0
    );
  cpu_alu_DECODER_HLT_and00002 : X_LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      ADR0 => cpu_alu_DECODER_stored_OP_Code(2),
      ADR1 => N128,
      ADR2 => cpu_alu_DECODER_stored_OP_Code(1),
      O => i_hlt
    );
  i_pc_en_after_or1 : X_LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      ADR0 => cycle_control_unit_pc_en_293,
      ADR1 => i_jmp,
      O => i_pc_en_after_or
    );
  Intern_clock_kiloHzClock_Mcount_current_count_eqn_21 : X_LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      ADR0 => Result(2),
      ADR1 => Intern_clock_kiloHzClock_current_count_cmp_eq0000,
      O => Intern_clock_kiloHzClock_Mcount_current_count_eqn_2
    );
  Intern_clock_kiloHzClock_Mcount_current_count_eqn_31 : X_LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      ADR0 => Result(3),
      ADR1 => Intern_clock_kiloHzClock_current_count_cmp_eq0000,
      O => Intern_clock_kiloHzClock_Mcount_current_count_eqn_3
    );
  Intern_clock_kiloHzClock_Mcount_current_count_eqn_41 : X_LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      ADR0 => Result(4),
      ADR1 => Intern_clock_kiloHzClock_current_count_cmp_eq0000,
      O => Intern_clock_kiloHzClock_Mcount_current_count_eqn_4
    );
  Intern_clock_kiloHzClock_Mcount_current_count_eqn_51 : X_LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      ADR0 => Result(5),
      ADR1 => Intern_clock_kiloHzClock_current_count_cmp_eq0000,
      O => Intern_clock_kiloHzClock_Mcount_current_count_eqn_5
    );
  Intern_clock_kiloHzClock_i_zero_or00001 : X_LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      ADR0 => Intern_clock_kiloHzClock_current_count_cmp_eq0000,
      ADR1 => reset_IBUF1,
      O => Intern_clock_kiloHzClock_i_zero_or0000
    );
  Intern_clock_kiloHzClock_current_count_cmp_eq000012 : X_LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      ADR0 => Intern_clock_kiloHzClock_current_count(1),
      ADR1 => Intern_clock_kiloHzClock_current_count(14),
      ADR2 => Intern_clock_kiloHzClock_current_count(2),
      ADR3 => Intern_clock_kiloHzClock_current_count(3),
      O => Intern_clock_kiloHzClock_current_count_cmp_eq000012_89
    );
  Intern_clock_kiloHzClock_current_count_cmp_eq000025 : X_LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      ADR0 => Intern_clock_kiloHzClock_current_count(4),
      ADR1 => Intern_clock_kiloHzClock_current_count(5),
      ADR2 => Intern_clock_kiloHzClock_current_count(6),
      ADR3 => Intern_clock_kiloHzClock_current_count(7),
      O => Intern_clock_kiloHzClock_current_count_cmp_eq000025_90
    );
  Intern_clock_kiloHzClock_current_count_cmp_eq000049 : X_LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      ADR0 => Intern_clock_kiloHzClock_current_count(8),
      ADR1 => Intern_clock_kiloHzClock_current_count(9),
      ADR2 => Intern_clock_kiloHzClock_current_count(10),
      ADR3 => Intern_clock_kiloHzClock_current_count(11),
      O => Intern_clock_kiloHzClock_current_count_cmp_eq000049_91
    );
  Intern_clock_kiloHzClock_current_count_cmp_eq000058 : X_LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      ADR0 => Intern_clock_kiloHzClock_current_count(12),
      ADR1 => Intern_clock_kiloHzClock_current_count(13),
      ADR2 => Intern_clock_kiloHzClock_current_count(0),
      O => Intern_clock_kiloHzClock_current_count_cmp_eq000058_92
    );
  Intern_clock_kiloHzClock_current_count_cmp_eq000071 : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => Intern_clock_kiloHzClock_current_count_cmp_eq000012_89,
      ADR1 => Intern_clock_kiloHzClock_current_count_cmp_eq000025_90,
      ADR2 => Intern_clock_kiloHzClock_current_count_cmp_eq000049_91,
      ADR3 => Intern_clock_kiloHzClock_current_count_cmp_eq000058_92,
      O => Intern_clock_kiloHzClock_current_count_cmp_eq0000
    );
  Intern_clock_kiloHzClock_Mcount_current_count_eqn_61 : X_LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      ADR0 => Result(6),
      ADR1 => Intern_clock_kiloHzClock_current_count_cmp_eq0000,
      O => Intern_clock_kiloHzClock_Mcount_current_count_eqn_6
    );
  Intern_clock_kiloHzClock_Mcount_current_count_eqn_71 : X_LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      ADR0 => Result(7),
      ADR1 => Intern_clock_kiloHzClock_current_count_cmp_eq0000,
      O => Intern_clock_kiloHzClock_Mcount_current_count_eqn_7
    );
  Intern_clock_kiloHzClock_Mcount_current_count_eqn_81 : X_LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      ADR0 => Result(8),
      ADR1 => Intern_clock_kiloHzClock_current_count_cmp_eq0000,
      O => Intern_clock_kiloHzClock_Mcount_current_count_eqn_8
    );
  Intern_clock_kiloHzClock_Mcount_current_count_eqn_91 : X_LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      ADR0 => Result(9),
      ADR1 => Intern_clock_kiloHzClock_current_count_cmp_eq0000,
      O => Intern_clock_kiloHzClock_Mcount_current_count_eqn_9
    );
  Intern_clock_kiloHzClock_Mcount_current_count_eqn_101 : X_LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      ADR0 => Result(10),
      ADR1 => Intern_clock_kiloHzClock_current_count_cmp_eq0000,
      O => Intern_clock_kiloHzClock_Mcount_current_count_eqn_10
    );
  cpu_alu_DECODER_Stat_S_and00001 : X_LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      ADR0 => cpu_alu_DECODER_stored_OP_Code(1),
      ADR1 => cpu_alu_DECODER_stored_OP_Code(2),
      ADR2 => cpu_alu_i_A_EN,
      O => cpu_alu_i_stat_S
    );
  i_pc_prime_6_1 : X_LUT4
    generic map(
      INIT => X"BE14"
    )
    port map (
      ADR0 => i_jmp,
      ADR1 => adder_16bit_bit6_cout_and0001,
      ADR2 => PCreg_q(6),
      ADR3 => MEM_q(6),
      O => i_pc_prime(6)
    );
  Intern_clock_kiloHzClock_Mcount_current_count_eqn_111 : X_LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      ADR0 => Result(11),
      ADR1 => Intern_clock_kiloHzClock_current_count_cmp_eq0000,
      O => Intern_clock_kiloHzClock_Mcount_current_count_eqn_11
    );
  Intern_clock_kiloHzClock_Mcount_current_count_eqn_121 : X_LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      ADR0 => Result(12),
      ADR1 => Intern_clock_kiloHzClock_current_count_cmp_eq0000,
      O => Intern_clock_kiloHzClock_Mcount_current_count_eqn_12
    );
  Intern_clock_kiloHzClock_Mcount_current_count_eqn_131 : X_LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      ADR0 => Result(13),
      ADR1 => Intern_clock_kiloHzClock_current_count_cmp_eq0000,
      O => Intern_clock_kiloHzClock_Mcount_current_count_eqn_13
    );
  Intern_clock_kiloHzClock_Mcount_current_count_eqn_141 : X_LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      ADR0 => Result(14),
      ADR1 => Intern_clock_kiloHzClock_current_count_cmp_eq0000,
      O => Intern_clock_kiloHzClock_Mcount_current_count_eqn_14
    );
  i_data_frm_ram_3_LogicTrst1 : X_LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      ADR0 => ram_data_i_data_to_ram_not0000_inv,
      ADR1 => N56,
      O => i_data_frm_ram(3)
    );
  cpu_alu_DECODER_Arith_S_and000011 : X_LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      ADR0 => cycle_control_unit_exe_287,
      ADR1 => cpu_alu_DECODER_stored_OP_Code(3),
      ADR2 => cpu_alu_DECODER_stored_OP_Code(0),
      O => cpu_alu_i_A_EN
    );
  cpu_alu_DECODER_Arith_S_and00001 : X_LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      ADR0 => cpu_alu_DECODER_stored_OP_Code(2),
      ADR1 => cpu_alu_DECODER_stored_OP_Code(1),
      ADR2 => cpu_alu_i_A_EN,
      O => cpu_alu_i_arith_S
    );
  i_pc_prime_11_1 : X_LUT4
    generic map(
      INIT => X"A3AC"
    )
    port map (
      ADR0 => MEM_q(11),
      ADR1 => PCreg_q(11),
      ADR2 => i_jmp,
      ADR3 => adder_16bit_bit11_cout_and0001,
      O => i_pc_prime(11)
    );
  i_pc_prime_9_9 : X_LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      ADR0 => PCreg_q(6),
      ADR1 => PCreg_q(7),
      ADR2 => PCreg_q(8),
      ADR3 => PCreg_q(9),
      O => i_pc_prime_9_9_332
    );
  i_pc_prime_10_8 : X_LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      ADR0 => PCreg_q(8),
      ADR1 => PCreg_q(9),
      O => i_pc_prime_10_8_309
    );
  i_pc_prime_10_19 : X_LUT4
    generic map(
      INIT => X"DFFF"
    )
    port map (
      ADR0 => PCreg_q(6),
      ADR1 => i_pc_prime_10_8_309,
      ADR2 => PCreg_q(7),
      ADR3 => N130,
      O => i_pc_prime_10_19_306
    );
  i_data_frm_ram_2_LogicTrst1 : X_LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      ADR0 => ram_data_i_data_to_ram_not0000_inv,
      ADR1 => N57,
      O => i_data_frm_ram(2)
    );
  i_pc_prime_12_SW0 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_jmp,
      ADR1 => MEM_q(12),
      ADR2 => PCreg_q(12),
      O => N32
    );
  i_pc_prime_12_Q : X_LUT4
    generic map(
      INIT => X"D8F0"
    )
    port map (
      ADR0 => PCreg_q(11),
      ADR1 => N33,
      ADR2 => N32,
      ADR3 => adder_16bit_bit11_cout_and0001,
      O => i_pc_prime(12)
    );
  i_pc_prime_13_SW0 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_jmp,
      ADR1 => MEM_q(13),
      ADR2 => PCreg_q(13),
      O => N38
    );
  i_pc_prime_13_Q : X_LUT4
    generic map(
      INIT => X"D8F0"
    )
    port map (
      ADR0 => PCreg_q(12),
      ADR1 => N39,
      ADR2 => N38,
      ADR3 => adder_16bit_bit11_cout_and0001,
      O => i_pc_prime(13)
    );
  i_data_frm_ram_1_LogicTrst1 : X_LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      ADR0 => ram_data_i_data_to_ram_not0000_inv,
      ADR1 => N58,
      O => i_data_frm_ram(1)
    );
  i_pc_prime_14_9 : X_LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      ADR0 => PCreg_q(11),
      ADR1 => PCreg_q(12),
      ADR2 => PCreg_q(13),
      ADR3 => PCreg_q(14),
      O => i_pc_prime_14_9_314
    );
  i_pc_prime_15_SW0 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_jmp,
      ADR1 => MEM_q(15),
      ADR2 => PCreg_q(15),
      O => N41
    );
  i_pc_prime_15_SW1 : X_LUT3
    generic map(
      INIT => X"B1"
    )
    port map (
      ADR0 => i_jmp,
      ADR1 => PCreg_q(15),
      ADR2 => MEM_q(15),
      O => N42
    );
  i_pc_prime_15_Q : X_LUT4
    generic map(
      INIT => X"CCE4"
    )
    port map (
      ADR0 => PCreg_q(14),
      ADR1 => N41,
      ADR2 => N42,
      ADR3 => N132,
      O => i_pc_prime(15)
    );
  i_pc_prime_0_SW1 : X_LUT4
    generic map(
      INIT => X"EB41"
    )
    port map (
      ADR0 => i_jmp,
      ADR1 => PCreg_q(14),
      ADR2 => PCreg_q(0),
      ADR3 => MEM_q(0),
      O => N45
    );
  i_pc_prime_0_Q : X_LUT4
    generic map(
      INIT => X"CCE4"
    )
    port map (
      ADR0 => PCreg_q(15),
      ADR1 => N44,
      ADR2 => N45,
      ADR3 => adder_16bit_N5,
      O => i_pc_prime(0)
    );
  i_data_frm_ram_0_LogicTrst1 : X_LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      ADR0 => ram_data_i_data_to_ram_not0000_inv,
      ADR1 => N59,
      O => i_data_frm_ram(0)
    );
  cpu_alu_DECODER_WE : X_LUT4
    generic map(
      INIT => X"FFFB"
    )
    port map (
      ADR0 => cpu_alu_DECODER_stored_OP_Code(0),
      ADR1 => cycle_control_unit_exe_287,
      ADR2 => cpu_alu_DECODER_stored_OP_Code(2),
      ADR3 => N47,
      O => ram_data_i_data_to_ram_not0000_inv
    );
  i_pc_prime_1_SW1 : X_LUT4
    generic map(
      INIT => X"F3E2"
    )
    port map (
      ADR0 => adder_16bit_N11,
      ADR1 => i_jmp,
      ADR2 => MEM_q(1),
      ADR3 => PCreg_q(1),
      O => N50
    );
  adder_16bit_bit6_Mxor_s_xo_0_31 : X_LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      ADR0 => PCreg_q(1),
      ADR1 => N131,
      ADR2 => PCreg_q(2),
      O => adder_16bit_N4
    );
  adder_16bit_bit11_cout_and00011 : X_LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      ADR0 => PCreg_q(9),
      ADR1 => N133,
      ADR2 => PCreg_q(10),
      O => adder_16bit_bit11_cout_and0001
    );
  i_pc_prime_5_4 : X_LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      ADR0 => PCreg_q(3),
      ADR1 => PCreg_q(4),
      O => i_pc_prime_5_4_323
    );
  i_pc_prime_5_30 : X_LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      ADR0 => PCreg_q(5),
      ADR1 => PCreg_q(4),
      ADR2 => PCreg_q(3),
      ADR3 => adder_16bit_N4,
      O => i_pc_prime_5_30_322
    );
  reset_IBUF : X_BUF
    port map (
      I => reset,
      O => reset_IBUF1
    );
  Intern_clock_kiloHzClock_Mcount_current_count_cy_0_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => Intern_clock_kiloHzClock_current_count(0),
      O => Intern_clock_kiloHzClock_Mcount_current_count_cy_0_rt_30,
      ADR1 => GND
    );
  i_pc_prime_3_SW0_SW0 : X_LUT4
    generic map(
      INIT => X"F3E2"
    )
    port map (
      ADR0 => adder_16bit_N4,
      ADR1 => i_jmp,
      ADR2 => MEM_q(3),
      ADR3 => PCreg_q(3),
      O => N64
    );
  i_pc_prime_3_SW0_SW1 : X_LUT4
    generic map(
      INIT => X"AE04"
    )
    port map (
      ADR0 => i_jmp,
      ADR1 => adder_16bit_N4,
      ADR2 => PCreg_q(3),
      ADR3 => MEM_q(3),
      O => N65
    );
  adder_16bit_bit1_Mxor_s_xo_0_11_SW0 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => PCreg_q(15),
      ADR1 => PCreg_q(14),
      O => N67
    );
  i_pc_prime_5_18_SW1 : X_LUT4
    generic map(
      INIT => X"AFAC"
    )
    port map (
      ADR0 => MEM_q(5),
      ADR1 => PCreg_q(5),
      ADR2 => i_jmp,
      ADR3 => i_pc_prime_5_30_322,
      O => N70
    );
  i_pc_prime_4_11_SW0 : X_LUT4
    generic map(
      INIT => X"AFAC"
    )
    port map (
      ADR0 => MEM_q(4),
      ADR1 => PCreg_q(4),
      ADR2 => i_jmp,
      ADR3 => i_pc_prime_4_17_320,
      O => N72
    );
  cpu_alu_i_A_in_2_11 : X_LUT4
    generic map(
      INIT => X"8CEF"
    )
    port map (
      ADR0 => N58,
      ADR1 => cpu_alu_A_data_out(1),
      ADR2 => ram_data_i_data_to_ram_not0000_inv,
      ADR3 => N134,
      O => cpu_alu_N0
    );
  adder_16bit_bit1_Mxor_s_xo_0_11_SW2 : X_LUT4
    generic map(
      INIT => X"ABA8"
    )
    port map (
      ADR0 => N129,
      ADR1 => PCreg_q(14),
      ADR2 => PCreg_q(0),
      ADR3 => N50,
      O => N79
    );
  i_pc_prime_1_Q : X_LUT4
    generic map(
      INIT => X"CCE4"
    )
    port map (
      ADR0 => PCreg_q(15),
      ADR1 => N78,
      ADR2 => N79,
      ADR3 => adder_16bit_N5,
      O => i_pc_prime(1)
    );
  adder_16bit_bit1_Mxor_s_xo_0_11_SW4 : X_LUT4
    generic map(
      INIT => X"ABA8"
    )
    port map (
      ADR0 => N135,
      ADR1 => PCreg_q(14),
      ADR2 => PCreg_q(0),
      ADR3 => N76,
      O => N82
    );
  i_pc_prime_2_23 : X_LUT4
    generic map(
      INIT => X"CCE4"
    )
    port map (
      ADR0 => PCreg_q(15),
      ADR1 => N81,
      ADR2 => N82,
      ADR3 => adder_16bit_N5,
      O => i_pc_prime(2)
    );
  i_pc_prime_3_Q : X_LUT4
    generic map(
      INIT => X"F0D8"
    )
    port map (
      ADR0 => N67,
      ADR1 => N85,
      ADR2 => N84,
      ADR3 => adder_16bit_N5,
      O => i_pc_prime(3)
    );
  i_pc_prime_5_59 : X_LUT4
    generic map(
      INIT => X"F0D8"
    )
    port map (
      ADR0 => N67,
      ADR1 => N88,
      ADR2 => N87,
      ADR3 => adder_16bit_N5,
      O => i_pc_prime(5)
    );
  i_pc_prime_4_40 : X_LUT4
    generic map(
      INIT => X"F0D8"
    )
    port map (
      ADR0 => N67,
      ADR1 => N91,
      ADR2 => N90,
      ADR3 => adder_16bit_N5,
      O => i_pc_prime(4)
    );
  cpu_alu_JMP_SW0_SW0 : X_LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      ADR0 => cpu_alu_A_data_out(3),
      ADR1 => cpu_alu_A_data_out(2),
      ADR2 => cpu_alu_A_data_out(1),
      ADR3 => cpu_alu_A_data_out(0),
      O => N93
    );
  cpu_alu_JMP : X_LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      ADR0 => cpu_alu_DECODER_N11,
      ADR1 => cpu_alu_DECODER_stored_OP_Code(1),
      ADR2 => cpu_alu_DECODER_stored_OP_Code(2),
      ADR3 => N93,
      O => i_jmp
    );
  i_pc_prime_14_35_SW1 : X_LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      ADR0 => i_jmp,
      ADR1 => MEM_q(14),
      O => N96
    );
  i_pc_prime_14_35 : X_LUT4
    generic map(
      INIT => X"D8F0"
    )
    port map (
      ADR0 => PCreg_q(14),
      ADR1 => N96,
      ADR2 => N95,
      ADR3 => adder_16bit_N5,
      O => i_pc_prime(14)
    );
  i_pc_prime_5_18_SW0 : X_MUX2
    port map (
      IA => N98,
      IB => N99,
      SEL => i_pc_prime_5_30_322,
      O => N69
    );
  i_pc_prime_5_18_SW0_F : X_LUT4
    generic map(
      INIT => X"AE04"
    )
    port map (
      ADR0 => i_jmp,
      ADR1 => PCreg_q(5),
      ADR2 => PCreg_q(2),
      ADR3 => MEM_q(5),
      O => N98
    );
  i_pc_prime_5_18_SW0_G : X_LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      ADR0 => i_jmp,
      ADR1 => MEM_q(5),
      O => N99
    );
  i_pc_prime_2_12_SW0_F : X_LUT3
    generic map(
      INIT => X"62"
    )
    port map (
      ADR0 => PCreg_q(2),
      ADR1 => PCreg_q(1),
      ADR2 => adder_16bit_N11,
      O => N102
    );
  adder_16bit_bit3_Mxor_s_xo_0_11_SW0 : X_MUX2
    port map (
      IA => N106,
      IB => N107,
      SEL => N65,
      O => N84
    );
  adder_16bit_bit3_Mxor_s_xo_0_11_SW0_F : X_LUT4
    generic map(
      INIT => X"2AAA"
    )
    port map (
      ADR0 => N64,
      ADR1 => PCreg_q(0),
      ADR2 => PCreg_q(2),
      ADR3 => PCreg_q(1),
      O => N106
    );
  adder_16bit_bit3_Mxor_s_xo_0_11_SW0_G : X_LUT4
    generic map(
      INIT => X"FF80"
    )
    port map (
      ADR0 => PCreg_q(0),
      ADR1 => PCreg_q(2),
      ADR2 => PCreg_q(1),
      ADR3 => N64,
      O => N107
    );
  adder_16bit_bit3_Mxor_s_xo_0_11_SW2 : X_MUX2
    port map (
      IA => N108,
      IB => N109,
      SEL => N69,
      O => N87
    );
  adder_16bit_bit3_Mxor_s_xo_0_11_SW2_F : X_LUT4
    generic map(
      INIT => X"F700"
    )
    port map (
      ADR0 => PCreg_q(0),
      ADR1 => PCreg_q(1),
      ADR2 => i_pc_prime_5_4_323,
      ADR3 => N70,
      O => N108
    );
  adder_16bit_bit3_Mxor_s_xo_0_11_SW2_G : X_LUT4
    generic map(
      INIT => X"FF08"
    )
    port map (
      ADR0 => PCreg_q(0),
      ADR1 => PCreg_q(1),
      ADR2 => i_pc_prime_5_4_323,
      ADR3 => N70,
      O => N109
    );
  adder_16bit_bit3_Mxor_s_xo_0_11_SW4 : X_MUX2
    port map (
      IA => N110,
      IB => N111,
      SEL => N73,
      O => N90
    );
  adder_16bit_bit3_Mxor_s_xo_0_11_SW4_F : X_LUT4
    generic map(
      INIT => X"7F00"
    )
    port map (
      ADR0 => PCreg_q(2),
      ADR1 => PCreg_q(0),
      ADR2 => PCreg_q(1),
      ADR3 => N72,
      O => N110
    );
  adder_16bit_bit3_Mxor_s_xo_0_11_SW4_G : X_LUT4
    generic map(
      INIT => X"FF80"
    )
    port map (
      ADR0 => PCreg_q(0),
      ADR1 => PCreg_q(2),
      ADR2 => PCreg_q(1),
      ADR3 => N72,
      O => N111
    );
  cpu_alu_i_A_in_0_SW2 : X_LUT4
    generic map(
      INIT => X"7363"
    )
    port map (
      ADR0 => N59,
      ADR1 => cpu_alu_A_data_out(0),
      ADR2 => ram_data_i_data_to_ram_not0000_inv,
      ADR3 => cpu_alu_i_arith_S,
      O => N114
    );
  cpu_alu_i_A_in_0_Q : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => cpu_alu_i_stat_S,
      ADR1 => cpu_alu_STAT_data_out_0_Q,
      ADR2 => N114,
      O => cpu_alu_i_A_in(0)
    );
  cpu_alu_ADDER_cell_3_cout1 : X_LUT4
    generic map(
      INIT => X"EF8C"
    )
    port map (
      ADR0 => N57,
      ADR1 => cpu_alu_A_data_out(2),
      ADR2 => ram_data_i_data_to_ram_not0000_inv,
      ADR3 => cpu_alu_N0,
      O => cpu_alu_i_MSB_cin
    );
  cpu_alu_i_A_in_2_Q : X_LUT4
    generic map(
      INIT => X"1333"
    )
    port map (
      ADR0 => cpu_alu_DECODER_stored_OP_Code(2),
      ADR1 => N120,
      ADR2 => cpu_alu_i_A_EN,
      ADR3 => cpu_alu_DECODER_stored_OP_Code(1),
      O => cpu_alu_i_A_in(2)
    );
  i_pc_prime_2_12_SW11 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_jmp,
      ADR1 => MEM_q(2),
      ADR2 => N104,
      O => N76
    );
  i_pc_prime_4_11_SW1 : X_MUX2
    port map (
      IA => N122,
      IB => N123,
      SEL => adder_16bit_N4,
      O => N73
    );
  i_pc_prime_4_11_SW1_F : X_LUT4
    generic map(
      INIT => X"AE04"
    )
    port map (
      ADR0 => i_jmp,
      ADR1 => PCreg_q(4),
      ADR2 => PCreg_q(3),
      ADR3 => MEM_q(4),
      O => N122
    );
  i_pc_prime_4_11_SW1_G : X_LUT4
    generic map(
      INIT => X"BE14"
    )
    port map (
      ADR0 => i_jmp,
      ADR1 => PCreg_q(4),
      ADR2 => PCreg_q(3),
      ADR3 => MEM_q(4),
      O => N123
    );
  cpu_alu_i_carry_in : X_MUX2
    port map (
      IA => N124,
      IB => N125,
      SEL => cpu_alu_i_MSB_cin,
      O => cpu_alu_i_carry_in_277
    );
  cpu_alu_i_carry_in_F : X_LUT4
    generic map(
      INIT => X"EC20"
    )
    port map (
      ADR0 => i_data_frm_ram(3),
      ADR1 => i_hlt,
      ADR2 => cpu_alu_A_data_out(3),
      ADR3 => cpu_alu_STAT_data_out_0_Q,
      O => N124
    );
  cpu_alu_i_carry_in_G : X_LUT4
    generic map(
      INIT => X"F3E2"
    )
    port map (
      ADR0 => cpu_alu_A_data_out(3),
      ADR1 => i_hlt,
      ADR2 => cpu_alu_STAT_data_out_0_Q,
      ADR3 => i_data_frm_ram(3),
      O => N125
    );
  cpu_alu_i_XORb_in : X_MUX2
    port map (
      IA => N126,
      IB => N127,
      SEL => cpu_alu_i_MSB_cin,
      O => cpu_alu_i_XORb_in_275
    );
  cpu_alu_i_XORb_in_F : X_LUT4
    generic map(
      INIT => X"F3E2"
    )
    port map (
      ADR0 => cpu_alu_A_data_out(3),
      ADR1 => i_hlt,
      ADR2 => cpu_alu_STAT_data_out_3_Q,
      ADR3 => i_data_frm_ram(3),
      O => N126
    );
  cpu_alu_i_XORb_in_G : X_LUT4
    generic map(
      INIT => X"EC20"
    )
    port map (
      ADR0 => i_data_frm_ram(3),
      ADR1 => i_hlt,
      ADR2 => cpu_alu_A_data_out(3),
      ADR3 => cpu_alu_STAT_data_out_3_Q,
      O => N127
    );
  Intern_clock_oneHZClock_i_zero_BUFG : X_CKBUF
    port map (
      I => Intern_clock_oneHZClock_i_zero1,
      O => Intern_clock_oneHZClock_i_zero_103
    );
  reset_IBUF_BUFG : X_CKBUF
    port map (
      I => reset_IBUF1,
      O => reset_IBUF_373
    );
  Intern_clock_kiloHzClock_Mcount_current_count_lut_1_INV_0 : X_INV
    port map (
      I => Intern_clock_kiloHzClock_current_count(1),
      O => Intern_clock_kiloHzClock_Mcount_current_count_lut(1)
    );
  Intern_clock_kiloHzClock_Mcount_current_count_lut_2_INV_0 : X_INV
    port map (
      I => Intern_clock_kiloHzClock_current_count(2),
      O => Intern_clock_kiloHzClock_Mcount_current_count_lut(2)
    );
  Intern_clock_kiloHzClock_Mcount_current_count_lut_3_INV_0 : X_INV
    port map (
      I => Intern_clock_kiloHzClock_current_count(3),
      O => Intern_clock_kiloHzClock_Mcount_current_count_lut(3)
    );
  Intern_clock_kiloHzClock_Mcount_current_count_lut_4_INV_0 : X_INV
    port map (
      I => Intern_clock_kiloHzClock_current_count(4),
      O => Intern_clock_kiloHzClock_Mcount_current_count_lut(4)
    );
  Intern_clock_kiloHzClock_Mcount_current_count_lut_5_INV_0 : X_INV
    port map (
      I => Intern_clock_kiloHzClock_current_count(5),
      O => Intern_clock_kiloHzClock_Mcount_current_count_lut(5)
    );
  Intern_clock_kiloHzClock_Mcount_current_count_lut_6_INV_0 : X_INV
    port map (
      I => Intern_clock_kiloHzClock_current_count(6),
      O => Intern_clock_kiloHzClock_Mcount_current_count_lut(6)
    );
  Intern_clock_kiloHzClock_Mcount_current_count_lut_7_INV_0 : X_INV
    port map (
      I => Intern_clock_kiloHzClock_current_count(7),
      O => Intern_clock_kiloHzClock_Mcount_current_count_lut(7)
    );
  Intern_clock_kiloHzClock_Mcount_current_count_lut_8_INV_0 : X_INV
    port map (
      I => Intern_clock_kiloHzClock_current_count(8),
      O => Intern_clock_kiloHzClock_Mcount_current_count_lut(8)
    );
  Intern_clock_kiloHzClock_Mcount_current_count_lut_9_INV_0 : X_INV
    port map (
      I => Intern_clock_kiloHzClock_current_count(9),
      O => Intern_clock_kiloHzClock_Mcount_current_count_lut(9)
    );
  Intern_clock_kiloHzClock_Mcount_current_count_lut_10_INV_0 : X_INV
    port map (
      I => Intern_clock_kiloHzClock_current_count(10),
      O => Intern_clock_kiloHzClock_Mcount_current_count_lut(10)
    );
  Intern_clock_kiloHzClock_Mcount_current_count_lut_11_INV_0 : X_INV
    port map (
      I => Intern_clock_kiloHzClock_current_count(11),
      O => Intern_clock_kiloHzClock_Mcount_current_count_lut(11)
    );
  Intern_clock_kiloHzClock_Mcount_current_count_lut_12_INV_0 : X_INV
    port map (
      I => Intern_clock_kiloHzClock_current_count(12),
      O => Intern_clock_kiloHzClock_Mcount_current_count_lut(12)
    );
  Intern_clock_kiloHzClock_Mcount_current_count_lut_13_INV_0 : X_INV
    port map (
      I => Intern_clock_kiloHzClock_current_count(13),
      O => Intern_clock_kiloHzClock_Mcount_current_count_lut(13)
    );
  Intern_clock_kiloHzClock_Mcount_current_count_lut_14_INV_0 : X_INV
    port map (
      I => Intern_clock_kiloHzClock_current_count(14),
      O => Intern_clock_kiloHzClock_Mcount_current_count_lut(14)
    );
  cycle_control_unit_Mcount_cycle_counter_xor_0_11_INV_0 : X_INV
    port map (
      I => cycle_control_unit_cycle_counter(0),
      O => cycle_control_unit_Mcount_cycle_counter
    );
  MEM_Mcount_i_nibbleCount_xor_0_11_INV_0 : X_INV
    port map (
      I => MEM_i_nibbleCount(0),
      O => MEM_Mcount_i_nibbleCount
    );
  Intern_clock_tenHzClock_Mcount_current_count_xor_0_11_INV_0 : X_INV
    port map (
      I => Intern_clock_tenHzClock_current_count(0),
      O => Intern_clock_tenHzClock_Mcount_current_count
    );
  Intern_clock_oneHZClock_Mcount_current_count_xor_0_11_INV_0 : X_INV
    port map (
      I => Intern_clock_oneHZClock_current_count(0),
      O => Intern_clock_oneHZClock_Mcount_current_count
    );
  Intern_clock_hundredHzClock_Mcount_current_count_xor_0_11_INV_0 : X_INV
    port map (
      I => Intern_clock_hundredHzClock_current_count(0),
      O => Intern_clock_hundredHzClock_Mcount_current_count
    );
  cycle_control_unit_received_hlt_0_not00001_INV_0 : X_INV
    port map (
      I => cycle_control_unit_received_hlt_295,
      O => cycle_control_unit_received_hlt_0_not0000
    );
  cpu_alu_A_data_out_3 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Intern_clock_oneHZClock_i_zero_103,
      CE => cpu_alu_i_A_EN,
      I => cpu_alu_i_A_in(3),
      SRST => reset_IBUF1,
      O => cpu_alu_A_data_out(3),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  cpu_alu_A_data_out_2 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Intern_clock_oneHZClock_i_zero_103,
      CE => cpu_alu_i_A_EN,
      I => cpu_alu_i_A_in(2),
      SRST => reset_IBUF1,
      O => cpu_alu_A_data_out(2),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  cpu_alu_A_data_out_1 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Intern_clock_oneHZClock_i_zero_103,
      CE => cpu_alu_i_A_EN,
      I => cpu_alu_i_A_in(1),
      SRST => reset_IBUF1,
      O => cpu_alu_A_data_out(1),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  cpu_alu_A_data_out_0 : X_SFF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => Intern_clock_oneHZClock_i_zero_103,
      CE => cpu_alu_i_A_EN,
      I => cpu_alu_i_A_in(0),
      SRST => reset_IBUF1,
      O => cpu_alu_A_data_out(0),
      SET => GND,
      RST => GND,
      SSET => GND
    );
  i_pc_prime_9_351 : X_LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      ADR0 => adder_16bit_bit6_cout_and0001,
      ADR1 => i_pc_prime_9_9_332,
      ADR2 => adder_16bit_N3,
      ADR3 => PCreg_q(9),
      O => i_pc_prime_9_35
    );
  i_pc_prime_9_35_f5 : X_MUX2
    port map (
      IA => i_pc_prime_9_35,
      IB => MEM_q(9),
      SEL => i_jmp,
      O => i_pc_prime(9)
    );
  i_pc_prime_10_691 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_jmp,
      ADR1 => MEM_q(10),
      ADR2 => i_pc_prime_10_19_306,
      O => i_pc_prime_10_69
    );
  i_pc_prime_10_692 : X_LUT4
    generic map(
      INIT => X"AE04"
    )
    port map (
      ADR0 => i_jmp,
      ADR1 => PCreg_q(9),
      ADR2 => adder_16bit_N3,
      ADR3 => MEM_q(10),
      O => i_pc_prime_10_691_308
    );
  i_pc_prime_10_69_f5 : X_MUX2
    port map (
      IA => i_pc_prime_10_691_308,
      IB => i_pc_prime_10_69,
      SEL => PCreg_q(10),
      O => i_pc_prime(10)
    );
  cpu_alu_i_A_in_1_971 : X_LUT4
    generic map(
      INIT => X"5F69"
    )
    port map (
      ADR0 => i_data_frm_ram(1),
      ADR1 => cpu_alu_N18,
      ADR2 => cpu_alu_A_data_out(1),
      ADR3 => cpu_alu_i_arith_S,
      O => cpu_alu_i_A_in_1_97
    );
  cpu_alu_i_A_in_1_97_f5 : X_MUX2
    port map (
      IA => cpu_alu_i_A_in_1_97,
      IB => cpu_alu_STAT_data_out_1_Q,
      SEL => cpu_alu_i_stat_S,
      O => cpu_alu_i_A_in(1)
    );
  i_pc_prime_7_1 : X_LUT4
    generic map(
      INIT => X"BF15"
    )
    port map (
      ADR0 => i_jmp,
      ADR1 => PCreg_q(6),
      ADR2 => adder_16bit_bit6_cout_and0001,
      ADR3 => MEM_q(7),
      O => i_pc_prime_7_1_326
    );
  i_pc_prime_7_2 : X_LUT4
    generic map(
      INIT => X"EC20"
    )
    port map (
      ADR0 => adder_16bit_bit6_cout_and0001,
      ADR1 => i_jmp,
      ADR2 => PCreg_q(6),
      ADR3 => MEM_q(7),
      O => i_pc_prime_7_2_327
    );
  i_pc_prime_7_f5 : X_MUX2
    port map (
      IA => i_pc_prime_7_2_327,
      IB => i_pc_prime_7_1_326,
      SEL => PCreg_q(7),
      O => i_pc_prime(7)
    );
  i_pc_prime_8_1 : X_LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      ADR0 => PCreg_q(8),
      ADR1 => PCreg_q(6),
      ADR2 => PCreg_q(7),
      ADR3 => adder_16bit_bit6_cout_and0001,
      O => i_pc_prime_8_1_329
    );
  i_pc_prime_8_f5 : X_MUX2
    port map (
      IA => i_pc_prime_8_1_329,
      IB => MEM_q(8),
      SEL => i_jmp,
      O => i_pc_prime(8)
    );
  cpu_alu_i_A_in_3_11 : X_LUT4
    generic map(
      INIT => X"7796"
    )
    port map (
      ADR0 => cpu_alu_A_data_out(3),
      ADR1 => i_data_frm_ram(3),
      ADR2 => cpu_alu_i_MSB_cin,
      ADR3 => cpu_alu_i_arith_S,
      O => cpu_alu_i_A_in_3_1
    );
  cpu_alu_i_A_in_3_1_f5 : X_MUX2
    port map (
      IA => cpu_alu_i_A_in_3_1,
      IB => cpu_alu_STAT_data_out_3_Q,
      SEL => cpu_alu_i_stat_S,
      O => cpu_alu_i_A_in(3)
    );
  cpu_alu_DECODER_HLT_and000011_LUT3_D_BUF : X_BUF
    port map (
      I => cpu_alu_DECODER_N11,
      O => N128
    );
  cpu_alu_DECODER_HLT_and000011 : X_LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      ADR0 => cpu_alu_DECODER_stored_OP_Code(0),
      ADR1 => cycle_control_unit_exe_287,
      ADR2 => cpu_alu_DECODER_stored_OP_Code(3),
      O => cpu_alu_DECODER_N11
    );
  i_pc_prime_12_SW1_LUT3_L_BUF : X_BUF
    port map (
      I => i_pc_prime_12_SW1_O,
      O => N33
    );
  i_pc_prime_12_SW1 : X_LUT3
    generic map(
      INIT => X"B1"
    )
    port map (
      ADR0 => i_jmp,
      ADR1 => PCreg_q(12),
      ADR2 => MEM_q(12),
      O => i_pc_prime_12_SW1_O
    );
  i_pc_prime_13_SW1_LUT4_L_BUF : X_BUF
    port map (
      I => i_pc_prime_13_SW1_O,
      O => N39
    );
  i_pc_prime_13_SW1 : X_LUT4
    generic map(
      INIT => X"BE14"
    )
    port map (
      ADR0 => i_jmp,
      ADR1 => PCreg_q(13),
      ADR2 => PCreg_q(11),
      ADR3 => MEM_q(13),
      O => i_pc_prime_13_SW1_O
    );
  i_pc_prime_0_SW0_LUT3_L_BUF : X_BUF
    port map (
      I => i_pc_prime_0_SW0_O,
      O => N44
    );
  i_pc_prime_0_SW0 : X_LUT3
    generic map(
      INIT => X"B1"
    )
    port map (
      ADR0 => i_jmp,
      ADR1 => PCreg_q(0),
      ADR2 => MEM_q(0),
      O => i_pc_prime_0_SW0_O
    );
  cpu_alu_DECODER_WE_SW0_LUT2_L_BUF : X_BUF
    port map (
      I => cpu_alu_DECODER_WE_SW0_O,
      O => N47
    );
  cpu_alu_DECODER_WE_SW0 : X_LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      ADR0 => cpu_alu_DECODER_stored_OP_Code(3),
      ADR1 => cpu_alu_DECODER_stored_OP_Code(1),
      O => cpu_alu_DECODER_WE_SW0_O
    );
  i_pc_prime_1_SW0_LUT4_D_BUF : X_BUF
    port map (
      I => N49,
      O => N129
    );
  i_pc_prime_1_SW0 : X_LUT4
    generic map(
      INIT => X"AE04"
    )
    port map (
      ADR0 => i_jmp,
      ADR1 => adder_16bit_N11,
      ADR2 => PCreg_q(1),
      ADR3 => MEM_q(1),
      O => N49
    );
  adder_16bit_bit6_cout_and00011_LUT4_D_BUF : X_BUF
    port map (
      I => adder_16bit_bit6_cout_and0001,
      O => N130
    );
  adder_16bit_bit6_cout_and00011 : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => PCreg_q(5),
      ADR1 => PCreg_q(3),
      ADR2 => PCreg_q(4),
      ADR3 => adder_16bit_N4,
      O => adder_16bit_bit6_cout_and0001
    );
  adder_16bit_bit6_Mxor_s_xo_0_21_LUT4_D_BUF : X_BUF
    port map (
      I => adder_16bit_N11,
      O => N131
    );
  adder_16bit_bit6_Mxor_s_xo_0_21 : X_LUT4
    generic map(
      INIT => X"AEAA"
    )
    port map (
      ADR0 => PCreg_q(0),
      ADR1 => PCreg_q(15),
      ADR2 => adder_16bit_N5,
      ADR3 => PCreg_q(14),
      O => adder_16bit_N11
    );
  adder_16bit_bit15_Mxor_s_xo_0_11_LUT4_D_BUF : X_BUF
    port map (
      I => adder_16bit_N5,
      O => N132
    );
  adder_16bit_bit15_Mxor_s_xo_0_11 : X_LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      ADR0 => adder_16bit_bit11_cout_and0001,
      ADR1 => PCreg_q(11),
      ADR2 => PCreg_q(12),
      ADR3 => PCreg_q(13),
      O => adder_16bit_N5
    );
  adder_16bit_bit11_Mxor_s_xo_0_11_LUT4_D_BUF : X_BUF
    port map (
      I => adder_16bit_N3,
      O => N133
    );
  adder_16bit_bit11_Mxor_s_xo_0_11 : X_LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      ADR0 => adder_16bit_bit6_cout_and0001,
      ADR1 => PCreg_q(6),
      ADR2 => PCreg_q(7),
      ADR3 => PCreg_q(8),
      O => adder_16bit_N3
    );
  i_pc_prime_4_17_LUT3_L_BUF : X_BUF
    port map (
      I => i_pc_prime_4_17_O,
      O => i_pc_prime_4_17_320
    );
  i_pc_prime_4_17 : X_LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      ADR0 => PCreg_q(3),
      ADR1 => PCreg_q(4),
      ADR2 => adder_16bit_N4,
      O => i_pc_prime_4_17_O
    );
  cpu_alu_i_A_in_1_231_LUT3_D_BUF : X_BUF
    port map (
      I => cpu_alu_N18,
      O => N134
    );
  cpu_alu_i_A_in_1_231 : X_LUT3
    generic map(
      INIT => X"73"
    )
    port map (
      ADR0 => N59,
      ADR1 => cpu_alu_A_data_out(0),
      ADR2 => ram_data_i_data_to_ram_not0000_inv,
      O => cpu_alu_N18
    );
  adder_16bit_bit1_Mxor_s_xo_0_11_SW1_LUT3_L_BUF : X_BUF
    port map (
      I => adder_16bit_bit1_Mxor_s_xo_0_11_SW1_O,
      O => N78
    );
  adder_16bit_bit1_Mxor_s_xo_0_11_SW1 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => PCreg_q(0),
      ADR1 => N49,
      ADR2 => N50,
      O => adder_16bit_bit1_Mxor_s_xo_0_11_SW1_O
    );
  adder_16bit_bit1_Mxor_s_xo_0_11_SW3_LUT3_L_BUF : X_BUF
    port map (
      I => adder_16bit_bit1_Mxor_s_xo_0_11_SW3_O,
      O => N81
    );
  adder_16bit_bit1_Mxor_s_xo_0_11_SW3 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => PCreg_q(0),
      ADR1 => N75,
      ADR2 => N76,
      O => adder_16bit_bit1_Mxor_s_xo_0_11_SW3_O
    );
  adder_16bit_bit3_Mxor_s_xo_0_11_SW1_LUT4_L_BUF : X_BUF
    port map (
      I => adder_16bit_bit3_Mxor_s_xo_0_11_SW1_O,
      O => N85
    );
  adder_16bit_bit3_Mxor_s_xo_0_11_SW1 : X_LUT4
    generic map(
      INIT => X"EC4C"
    )
    port map (
      ADR0 => PCreg_q(2),
      ADR1 => N64,
      ADR2 => PCreg_q(1),
      ADR3 => N65,
      O => adder_16bit_bit3_Mxor_s_xo_0_11_SW1_O
    );
  adder_16bit_bit3_Mxor_s_xo_0_11_SW3_LUT4_L_BUF : X_BUF
    port map (
      I => adder_16bit_bit3_Mxor_s_xo_0_11_SW3_O,
      O => N88
    );
  adder_16bit_bit3_Mxor_s_xo_0_11_SW3 : X_LUT4
    generic map(
      INIT => X"FB40"
    )
    port map (
      ADR0 => i_pc_prime_5_4_323,
      ADR1 => PCreg_q(1),
      ADR2 => N69,
      ADR3 => N70,
      O => adder_16bit_bit3_Mxor_s_xo_0_11_SW3_O
    );
  adder_16bit_bit3_Mxor_s_xo_0_11_SW5_LUT4_L_BUF : X_BUF
    port map (
      I => adder_16bit_bit3_Mxor_s_xo_0_11_SW5_O,
      O => N91
    );
  adder_16bit_bit3_Mxor_s_xo_0_11_SW5 : X_LUT4
    generic map(
      INIT => X"F780"
    )
    port map (
      ADR0 => PCreg_q(2),
      ADR1 => PCreg_q(1),
      ADR2 => N73,
      ADR3 => N72,
      O => adder_16bit_bit3_Mxor_s_xo_0_11_SW5_O
    );
  i_pc_prime_14_35_SW0_LUT4_L_BUF : X_BUF
    port map (
      I => i_pc_prime_14_35_SW0_O,
      O => N95
    );
  i_pc_prime_14_35_SW0 : X_LUT4
    generic map(
      INIT => X"ACA0"
    )
    port map (
      ADR0 => MEM_q(14),
      ADR1 => i_pc_prime_14_9_314,
      ADR2 => i_jmp,
      ADR3 => adder_16bit_bit11_cout_and0001,
      O => i_pc_prime_14_35_SW0_O
    );
  i_pc_prime_2_12_SW1_F_LUT3_L_BUF : X_BUF
    port map (
      I => i_pc_prime_2_12_SW1_F_O,
      O => N104
    );
  i_pc_prime_2_12_SW1_F : X_LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      ADR0 => adder_16bit_N11,
      ADR1 => PCreg_q(1),
      ADR2 => PCreg_q(2),
      O => i_pc_prime_2_12_SW1_F_O
    );
  cpu_alu_i_A_in_2_SW0_LUT4_L_BUF : X_BUF
    port map (
      I => cpu_alu_i_A_in_2_SW0_O,
      O => N120
    );
  cpu_alu_i_A_in_2_SW0 : X_LUT4
    generic map(
      INIT => X"8689"
    )
    port map (
      ADR0 => cpu_alu_A_data_out(2),
      ADR1 => i_data_frm_ram(2),
      ADR2 => cpu_alu_i_arith_S,
      ADR3 => cpu_alu_N0,
      O => cpu_alu_i_A_in_2_SW0_O
    );
  i_pc_prime_2_12_SW01_LUT3_D_BUF : X_BUF
    port map (
      I => N75,
      O => N135
    );
  i_pc_prime_2_12_SW01 : X_LUT3
    generic map(
      INIT => X"D8"
    )
    port map (
      ADR0 => i_jmp,
      ADR1 => MEM_q(2),
      ADR2 => N102,
      O => N75
    );
  clk_BUFGP_BUFG : X_CKBUF
    port map (
      I => clk_BUFGP_IBUFG_2,
      O => clk_BUFGP
    );
  clk_BUFGP_IBUFG : X_CKBUF
    port map (
      I => clk,
      O => clk_BUFGP_IBUFG_2
    );
  ram_data_3_IOBUF_IBUF : X_BUF
    port map (
      I => ram_data(3),
      O => N56
    );
  ram_data_2_IOBUF_IBUF : X_BUF
    port map (
      I => ram_data(2),
      O => N57
    );
  ram_data_1_IOBUF_IBUF : X_BUF
    port map (
      I => ram_data(1),
      O => N58
    );
  ram_data_0_IOBUF_IBUF : X_BUF
    port map (
      I => ram_data(0),
      O => N59
    );
  a_data_0_OBUF : X_OBUF
    port map (
      I => cpu_alu_A_data_out(0),
      O => a_data(0)
    );
  a_data_1_OBUF : X_OBUF
    port map (
      I => cpu_alu_A_data_out(1),
      O => a_data(1)
    );
  a_data_2_OBUF : X_OBUF
    port map (
      I => cpu_alu_A_data_out(2),
      O => a_data(2)
    );
  a_data_3_OBUF : X_OBUF
    port map (
      I => cpu_alu_A_data_out(3),
      O => a_data(3)
    );
  clk_out_OBUF : X_OBUF
    port map (
      I => i_received_hlt_333,
      O => clk_out
    );
  ram_address_0_OBUF : X_OBUF
    port map (
      I => ram_address_0_OBUF_350,
      O => ram_address(0)
    );
  ram_address_10_OBUF : X_OBUF
    port map (
      I => ram_address_10_OBUF_351,
      O => ram_address(10)
    );
  ram_address_11_OBUF : X_OBUF
    port map (
      I => ram_address_11_OBUF_352,
      O => ram_address(11)
    );
  ram_address_12_OBUF : X_OBUF
    port map (
      I => ram_address_12_OBUF_353,
      O => ram_address(12)
    );
  ram_address_13_OBUF : X_OBUF
    port map (
      I => ram_address_13_OBUF_354,
      O => ram_address(13)
    );
  ram_address_14_OBUF : X_OBUF
    port map (
      I => ram_address_14_OBUF_355,
      O => ram_address(14)
    );
  ram_address_15_OBUF : X_OBUF
    port map (
      I => ram_address_15_OBUF_356,
      O => ram_address(15)
    );
  ram_address_1_OBUF : X_OBUF
    port map (
      I => ram_address_1_OBUF_357,
      O => ram_address(1)
    );
  ram_address_2_OBUF : X_OBUF
    port map (
      I => ram_address_2_OBUF_358,
      O => ram_address(2)
    );
  ram_address_3_OBUF : X_OBUF
    port map (
      I => ram_address_3_OBUF_359,
      O => ram_address(3)
    );
  ram_address_4_OBUF : X_OBUF
    port map (
      I => ram_address_4_OBUF_360,
      O => ram_address(4)
    );
  ram_address_5_OBUF : X_OBUF
    port map (
      I => ram_address_5_OBUF_361,
      O => ram_address(5)
    );
  ram_address_6_OBUF : X_OBUF
    port map (
      I => ram_address_6_OBUF_362,
      O => ram_address(6)
    );
  ram_address_7_OBUF : X_OBUF
    port map (
      I => ram_address_7_OBUF_363,
      O => ram_address(7)
    );
  ram_address_8_OBUF : X_OBUF
    port map (
      I => ram_address_8_OBUF_364,
      O => ram_address(8)
    );
  ram_address_9_OBUF : X_OBUF
    port map (
      I => ram_address_9_OBUF_365,
      O => ram_address(9)
    );
  ram_data_0_IOBUF_OBUFT : X_OBUFT
    port map (
      I => cpu_alu_A_data_out(0),
      CTL => ram_data_i_data_to_ram_not0000_inv,
      O => ram_data(0)
    );
  ram_data_1_IOBUF_OBUFT : X_OBUFT
    port map (
      I => cpu_alu_A_data_out(1),
      CTL => ram_data_i_data_to_ram_not0000_inv,
      O => ram_data(1)
    );
  ram_data_2_IOBUF_OBUFT : X_OBUFT
    port map (
      I => cpu_alu_A_data_out(2),
      CTL => ram_data_i_data_to_ram_not0000_inv,
      O => ram_data(2)
    );
  ram_data_3_IOBUF_OBUFT : X_OBUFT
    port map (
      I => cpu_alu_A_data_out(3),
      CTL => ram_data_i_data_to_ram_not0000_inv,
      O => ram_data(3)
    );
  ram_write_enable_OBUF : X_OBUF
    port map (
      I => ram_data_i_data_to_ram_not0000_inv,
      O => ram_write_enable
    );
  NlwBlock_CPU_VCC : X_ONE
    port map (
      O => VCC
    );
  NlwBlock_CPU_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

