--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:21:23 11/01/2015
-- Design Name:   
-- Module Name:   C:/Users/Colton/Desktop/Nibble_Knowledge_CPU/tb_control_unit_V2.vhd
-- Project Name:  Nibble_Knowledge_CPU
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: control_unit_V2
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_control_unit_V2 IS
END tb_control_unit_V2;
 
ARCHITECTURE behavior OF tb_control_unit_V2 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT control_unit_V2
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         hlt : IN  std_logic;
         op_en : OUT  std_logic;
         mem_en : OUT  std_logic;
         pc_en : OUT  std_logic;
         exe : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal hlt : std_logic := '0';

 	--Outputs
   signal op_en : std_logic;
   signal mem_en : std_logic;
   signal pc_en : std_logic;
   signal exe : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: control_unit_V2 PORT MAP (
          clk => clk,
          reset => reset,
          hlt => hlt,
          op_en => op_en,
          mem_en => mem_en,
          pc_en => pc_en,
          exe => exe
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		
		reset <= '1';
      wait for 100 ns;	
		reset <= '0';
      wait for clk_period*50;

      -- insert stimulus here 
		hlt <= '1';
		wait for clk_period;
		hlt <= '0';
		wait for clk_period;

      wait;
   end process;

END;
