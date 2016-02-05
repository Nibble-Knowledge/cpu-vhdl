--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:17:07 10/23/2015
-- Design Name:   
-- Module Name:   C:/Users/Colton/Nibble_Knowledge_CPU/tb_CPU_top_level.vhd
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
 
ENTITY tb_CPU_top_level IS
END tb_CPU_top_level;
 
ARCHITECTURE behavior OF tb_CPU_top_level IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT CPU
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
			clk_out : out std_logic;
			a_data : OUT  std_logic_vector(3 downto 0);
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
	signal clk_out : std_logic;
	signal a_data :std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 25 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: CPU PORT MAP (
          clk => clk,
          reset => reset,
			clk_out => clk_out,
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
      wait for 1 ms;
		
		
		reset <= '0';
		
		ram_data <= "0001";
		wait until rising_edge(clk_out);
		ram_data <= "0000";
		wait until rising_edge(clk_out);
		ram_data <= "0000";
		wait until rising_edge(clk_out);
		ram_data <= "0000";
		wait until rising_edge(clk_out);
		ram_data <= "0011";
		wait until rising_edge(clk_out);
		ram_data <= "0110";
		wait until rising_edge(clk_out);
		
		L1 : loop
		-- ADD 2 instruction 
      -- ADD 0x9
		-- 0011 0000 0000 0000 1001
		
		--OP cycle
		
		ram_data <= "0001";	
		
		-- address cycles
		wait until rising_edge(clk_out);
		ram_data <= "0000";
		wait until rising_edge(clk_out);
		ram_data <= "0000";
		wait until rising_edge(clk_out);
		ram_data <= "0000";
		wait until rising_edge(clk_out);
		ram_data <= "1001";
		wait until rising_edge(clk_out);
		
		-- exe cycle 
		-- "0001" should be at mem location 0x0009
		ram_data <= "0101";
		wait until rising_edge(clk_out);
		
		--OP Cycle
		--STR 12
		ram_data <= "0010";	
		
		-- address cycles
		wait until rising_edge(clk_out);
		ram_data <= "0000";
		wait until rising_edge(clk_out);
		ram_data <= "0000";
		wait until rising_edge(clk_out);
		ram_data <= "0000";
		wait until rising_edge(clk_out);
		ram_data <= "1100";
		wait until rising_edge(clk_out);
		
		-- exe cycle
		ram_data <= "ZZZZ";
		wait until rising_edge(clk_out);
		
		
		
		--OP CYCLE
		--JMP 1111
		ram_data <= "0110";	
		
		-- address cycles
		wait until rising_edge(clk_out);
		ram_data <= "0000";
		wait until rising_edge(clk_out);
		ram_data <= "0000";
		wait until rising_edge(clk_out);
		ram_data <= "0000";
		wait until rising_edge(clk_out);
		ram_data <= "1111";
		wait until rising_edge(clk_out);
		
		--should store
		wait until rising_edge(clk_out);
	
		end loop;
		
		
--		L1 : loop
--		-- ADD 2 instruction 
--      -- ADD 0x9
--		-- 0011 0000 0000 0000 1001
--		
--		--OP cycle
--		
--		ram_data <= "0011";	
--		
--		-- address cycles
--		wait for clk_period;
--		ram_data <= "0000";
--		wait for clk_period;
--		ram_data <= "0000";
--		wait for clk_period;
--		ram_data <= "0000";
--		wait for clk_period;
--		ram_data <= "1001";
--		wait for clk_period;
--		
--		-- exe cycle 
--		-- "0001" should be at mem location 0x0009
--		ram_data <= "0010";
--		wait for clk_period;
--	
--		end loop;
		

      wait;
   end process;

END;
