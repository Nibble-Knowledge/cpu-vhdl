--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:47:33 10/24/2015
-- Design Name:   
-- Module Name:   C:/Users/Colton/Nibble_Knowledge_CPU/tb_CPU_top_level_test2.vhd
-- Project Name:  Nibble_Knowledge_CPU
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: CPU
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
 
ENTITY tb_CPU_top_level_test2 IS
END tb_CPU_top_level_test2;
 
ARCHITECTURE behavior OF tb_CPU_top_level_test2 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT CPU
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         ram_data : INOUT  std_logic_vector(3 downto 0);
         ram_address : OUT  std_logic_vector(15 downto 0);
         ram_write_enable : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';

	--BiDirs
   signal ram_data : std_logic_vector(3 downto 0);

 	--Outputs
   signal ram_address : std_logic_vector(15 downto 0);
   signal ram_write_enable : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: CPU PORT MAP (
          clk => clk,
          reset => reset,
          ram_data => ram_data,
          ram_address => ram_address,
          ram_write_enable => ram_write_enable
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
     reset <= '1';
      -- hold reset state for 100 ns.
      wait for 100 ns;
		
		
		reset <= '0';
		
		-- LOD 18 --
		-- Load 15 into A
		
		-- OP code --
		ram_data <= "0001";
		wait for clk_period;
		
		-- Address --
		ram_data <= "0000";
		wait for clk_period;
		ram_data <= "0000";
		wait for clk_period;
		ram_data <= "0001";
		wait for clk_period;
		ram_data <= "1001";
		wait for clk_period;
		
		-- Execute --
		-- Ram Data equals expcected value from memory
		ram_data <= "1111";
		-- Or Ram data goes high impedance for writing
		--ram_data <= "ZZZZ";
		wait for clk_period;
		
		-- END Instruction --
		
		-- NND 0x12 --
		
		-- OP code --
		ram_data <= "0101";
		wait for clk_period;
		
		-- Address --
		ram_data <= "0000";
		wait for clk_period;
		ram_data <= "0000";
		wait for clk_period;
		ram_data <= "0001";
		wait for clk_period;
		ram_data <= "0010";
		wait for clk_period;
		
		-- Execute --
		-- Ram Data equals expcected value from memory
		ram_data <= "1111";
		-- Or Ram data goes high impedance for writing
		--ram_data <= "ZZZZ";
		wait for clk_period;
		
		-- END Instruction --
		
      wait;
   end process;

END;
