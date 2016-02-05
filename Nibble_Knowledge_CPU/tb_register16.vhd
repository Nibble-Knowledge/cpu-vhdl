--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:40:19 10/22/2015
-- Design Name:   
-- Module Name:   C:/Users/Colton/Nibble_Knowledge_CPU/tb_register16.vhd
-- Project Name:  Nibble_Knowledge_CPU
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: register16
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
 
ENTITY tb_register16 IS
END tb_register16;
 
ARCHITECTURE behavior OF tb_register16 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT register16
    PORT(
         d : IN  std_logic_vector(3 downto 0);
         q : OUT  std_logic_vector(15 downto 0);
         clk : IN  std_logic;
         reset : IN  std_logic;
         load : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal d : std_logic_vector(3 downto 0) := (others => '0');
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal load : std_logic := '0';

 	--Outputs
   signal q : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: register16 PORT MAP (
          d => d,
          q => q,
          clk => clk,
          reset => reset,
          load => load
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

      wait for clk_period*10;

      -- insert stimulus here
		
		-- Load nibble3
		load <= '1';
		d <= "0011";
		
		-- Load nibble2
		wait for clk_period;
		d <= "0010";
		
		-- Load nibble1
		wait for clk_period;
		d <= "0001";
		
		-- Load nibble0
		wait for clk_period;
		d <= "1010";
		
		wait for clk_period;
		load <= '0';
		
		-- Simulate Junk
		-- execute stage
		d <= "1101";
		wait for clk_period;
		-- op code stage
		d <= "1001";
		wait for clk_period;
		
		-- new address
		
		-- Load nibble3
		load <= '1';
		d <= "1100";
		
		-- Load nibble2
		wait for clk_period;
		d <= "0100";
		
		-- Load nibble1
		wait for clk_period;
		d <= "1000";
		
		-- Load nibble0
		wait for clk_period;
		d <= "0101";
		
		wait for clk_period;
		load <= '0';
		
		-- Simulate Junk
		-- execute stage
		d <= "1111";
		wait for clk_period;
		-- op code stage
		d <= "1101";

      wait;
   end process;

END;
