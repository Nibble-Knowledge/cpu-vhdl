--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:33:29 11/23/2015
-- Design Name:   
-- Module Name:   C:/Users/Bailey/Desktop/Nibble_Knowledge_CPU(1)/tb_cpu_with_io.vhd
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
 
ENTITY tb_cpu_with_io IS
END tb_cpu_with_io;
 
ARCHITECTURE behavior OF tb_cpu_with_io IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT CPU
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         clk_out : OUT  std_logic;
         a_data : OUT  std_logic_vector(3 downto 0);
         ram_data : INOUT  std_logic_vector(3 downto 0);
         ram_address : OUT  std_logic_vector(15 downto 0);
         ram_write_enable : OUT  std_logic;
         bus_ready : IN  std_logic;
         oe : OUT  std_logic;
         bus_parity : IN  std_logic;
         bus_status_out : OUT  std_logic_vector(1 downto 0);
         bus_data : INOUT  std_logic_vector(3 downto 0);
         bus_chip_select : OUT  std_logic_vector(3 downto 0);
			read_mode : IN STD_LOGIC_VECTOR
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal bus_ready : std_logic := '0';
   signal bus_parity : std_logic := '0';

	--BiDirs
   signal ram_data : std_logic_vector(3 downto 0);
   signal bus_data : std_logic_vector(3 downto 0);

 	--Outputs
   signal clk_out : std_logic;
   signal a_data : std_logic_vector(3 downto 0);
   signal ram_address : std_logic_vector(15 downto 0);
   signal ram_write_enable : std_logic;
   signal oe : std_logic;
   signal bus_status_out : std_logic_vector(1 downto 0);
   signal bus_chip_select : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: CPU PORT MAP (
          clk => clk,
          reset => reset,
          clk_out => clk_out,
          a_data => a_data,
          ram_data => ram_data,
          ram_address => ram_address,
          ram_write_enable => ram_write_enable,
          bus_ready => bus_ready,
          oe => oe,
          bus_parity => bus_parity,
          bus_status_out => bus_status_out,
          bus_data => bus_data,
          bus_chip_select => bus_chip_select,
			 read_mode => read_mode
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
      wait for 100 ns;	
		reset <= '1';
      wait for 1 ms;
		reset <= '0';
      -- insert stimulus here 

		ram_data <= "0001";
		wait until rising_edge(clk_out);
		ram_data <= "0000";
		wait until rising_edge(clk_out);
		ram_data <= "0000";
		wait until rising_edge(clk_out);
		ram_data <= "0000";
		wait until rising_edge(clk_out);
		ram_data <= "0010";
		wait until rising_edge(clk_out);
		ram_data <= "0110";
		wait until rising_edge(clk_out);
		
		--OP Cycle
		--STR 0
		ram_data <= "0010";	
		
		-- address cycles
		wait until rising_edge(clk_out);
		ram_data <= "0000";
		wait until rising_edge(clk_out);
		ram_data <= "0000";
		wait until rising_edge(clk_out);
		ram_data <= "0000";
		wait until rising_edge(clk_out);
		ram_data <= "0000";
		wait until rising_edge(clk_out);
		
		-- exe cycle
		ram_data <= "ZZZZ";
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



      wait;
   end process;

END;
