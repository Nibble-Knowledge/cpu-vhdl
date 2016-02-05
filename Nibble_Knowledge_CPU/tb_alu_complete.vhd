--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:10:20 10/22/2015
-- Design Name:   
-- Module Name:   C:/Users/Bailey/OneDrive/Documents/Engineering/Courses/4th Year/ENEL 500/CPU_ALU/tb_alu_complete.vhd
-- Project Name:  CPU_ALU
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: alu_complete
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
 
ENTITY tb_alu_complete IS
END tb_alu_complete;
 
ARCHITECTURE behavior OF tb_alu_complete IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT alu_complete
    PORT(
         exe : IN  std_logic;
         OP_EN : IN  std_logic;
         data_in : IN  std_logic_vector(3 downto 0);
         WE : OUT  std_logic;
         JMP : OUT  std_logic;
			STR: OUT std_logic;
         data_out : OUT  std_logic_vector(3 downto 0);
         clk : IN  std_logic;
         rst : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal exe : std_logic := '0';
   signal OP_EN : std_logic := '0';
   signal data_in : std_logic_vector(3 downto 0) := (others => '0');
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';

 	--Outputs
   signal WE : std_logic;
   signal JMP : std_logic;
   signal data_out : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: alu_complete PORT MAP (
          exe => exe,
          OP_EN => OP_EN,
          data_in => data_in,
          WE => WE,
          JMP => JMP,
          data_out => data_out,
          clk => clk,
          rst => rst
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
		rst <= '1';
      wait for 100 ns;	
		rst <= '0';
      wait for clk_period*10;

      --Test LOD:
		OP_EN <= '1';
		data_in <= "0001";
		wait for clk_period;
		OP_EN <= '0';
		data_in <= "1011";
		wait for clk_period*4;
		exe <= '1';
		wait for clk_period;
		exe <= '0';
		
		--Test STR:
		OP_EN <= '1';
		data_in <= "0010";
		wait for clk_period;
		OP_EN <= '0';
		data_in <= "1111";
		wait for clk_period*4;
		exe <= '1';
		wait for clk_period;
		exe <= '0';


		--Test ADD:
		OP_EN <= '1';
		data_in <= "0011";
		wait for clk_period;
		OP_EN <= '0';
		data_in <= "1111";
		wait for clk_period*4;
		exe <= '1';
		wait for clk_period;
		exe <= '0';
		
		--Test NND:
		OP_EN <= '1';
		data_in <= "0101";
		wait for clk_period;
		OP_EN <= '0';
		data_in <= "1111";
		wait for clk_period*4;
		exe <= '1';
		wait for clk_period;
		exe <= '0';
		
		--Test JMP, first LOD 0
		OP_EN <= '1';
		data_in <= "0001";
		wait for clk_period;
		OP_EN <= '0';
		data_in <= "0000";
		wait for clk_period*4;
		exe <= '1';
		wait for clk_period;
		exe <= '0';
		
		--Then JMP
		OP_EN <= '1';
		data_in <= "0111";
		wait for clk_period;
		OP_EN <= '0';
		data_in <= "0000";
		wait for clk_period*4;
		exe <= '1';
		wait for clk_period;
		exe <= '0';
		
		--HLT
		OP_EN <= '1';
		data_in <= "0000";
		wait for clk_period;
		OP_EN <= '0';
		data_in <= "0000";
		wait for clk_period*4;
		exe <= '1';
		wait for clk_period;
		exe <= '0';
		
		--CXA
		OP_EN <= '1';
		data_in <= "0110";
		wait for clk_period;
		OP_EN <= '0';
		data_in <= "0000";
		wait for clk_period*4;
		exe <= '1';
		wait for clk_period;
		exe <= '0';		
		

      wait;
   end process;

END;
