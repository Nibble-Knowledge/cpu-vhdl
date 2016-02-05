--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:01:55 11/20/2015
-- Design Name:   
-- Module Name:   C:/Users/Bailey/Desktop/Nibble_Knowledge_CPU(1)/tb_io_mapping.vhd
-- Project Name:  Nibble_Knowledge_CPU
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: io_mapping
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
 
ENTITY tb_io_mapping IS
END tb_io_mapping;
 
ARCHITECTURE behavior OF tb_io_mapping IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT io_mapping
    PORT(
         address : IN  std_logic_vector(15 downto 0);
         data_in : IN  std_logic_vector(3 downto 0);
         data_out : OUT  std_logic_vector(3 downto 0);
         ram_data : INOUT  std_logic_vector(3 downto 0);
         bus_chip_select : OUT  std_logic_vector(3 downto 0);
         store : IN  std_logic;
         bus_data : INOUT  std_logic_vector(3 downto 0);
         bus_ready : IN  std_logic;
         oe : OUT  std_logic;
         bus_parity : IN  std_logic;
         clk : IN  std_logic;
         rst : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal address : std_logic_vector(15 downto 0) := (others => '0');
   signal data_in : std_logic_vector(3 downto 0) := (others => '0');
   signal store : std_logic := '0';
   signal bus_ready : std_logic := '0';
   signal bus_parity : std_logic := '0';
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';

	--BiDirs
   signal ram_data : std_logic_vector(3 downto 0);
   signal bus_data : std_logic_vector(3 downto 0);

 	--Outputs
   signal data_out : std_logic_vector(3 downto 0);
   signal bus_chip_select : std_logic_vector(3 downto 0);
   signal oe : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: io_mapping PORT MAP (
          address => address,
          data_in => data_in,
          data_out => data_out,
          ram_data => ram_data,
          bus_chip_select => bus_chip_select,
          store => store,
          bus_data => bus_data,
          bus_ready => bus_ready,
          oe => oe,
          bus_parity => bus_parity,
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
      wait for 100 ns;	
		rst <= '1';
      wait for clk_period*10;
		rst <= '0';

      -- Test that a store to status only write the lower 2 bits
		wait for clk_period*5;
		address <= "0000000000000001";
		store <= '1';
		data_in <=  "1101";
		
		
		-- Test that a read from data reads corretly
		wait for clk_period*5;
		store <= '0';
		address <= "0000000000000010";
		data_in <= "0010";


		
		-- Test that a write to the data reg works while CPU is doing other things
		wait for clk_period*5;
		address <= "0000000100100011";
		ram_data <= "0110";
		bus_data <= "1011";
		wait for clk_period*5;
		bus_data <= "0101";
		wait for clk_period*5;
		bus_data <= "ZZZZ";
		wait for clk_period*5;
		
		
		address <= "0000000000000001";
		store <= '1';
		data_in <=  "0000";
		
		wait for clk_period*5;
		store <= '0';
		
      wait;
   end process;

END;
