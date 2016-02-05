--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:44:15 10/23/2015
-- Design Name:   
-- Module Name:   C:/Users/Colton/Nibble_Knowledge_CPU/tb_cpu_ram.vhd
-- Project Name:  Nibble_Knowledge_CPU
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: CPU_RAM
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
 
ENTITY tb_cpu_ram IS
END tb_cpu_ram;
 
ARCHITECTURE behavior OF tb_cpu_ram IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT CPU_RAM
    PORT(
         data : INOUT  std_logic_vector(3 downto 0);
         address : IN  std_logic_vector(15 downto 0);
         write_enable : IN  std_logic;
         clk : IN  std_logic;
         chip_select : OUT  std_logic_vector(3 downto 0);
         data_buss : OUT  std_logic_vector(3 downto 0);
         parity_chk : IN  std_logic;
         io_read : OUT  std_logic;
         io_write : OUT  std_logic;
         io_ready : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal address : std_logic_vector(15 downto 0) := (others => '0');
   signal write_enable : std_logic := '0';
   signal clk : std_logic := '0';
   signal parity_chk : std_logic := '0';
   signal io_ready : std_logic := '0';

	--BiDirs
   signal data : std_logic_vector(3 downto 0);

 	--Outputs
   signal chip_select : std_logic_vector(3 downto 0);
   signal data_buss : std_logic_vector(3 downto 0);
   signal io_read : std_logic;
   signal io_write : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: CPU_RAM PORT MAP (
          data => data,
          address => address,
          write_enable => write_enable,
          clk => clk,
          chip_select => chip_select,
          data_buss => data_buss,
          parity_chk => parity_chk,
          io_read => io_read,
          io_write => io_write,
          io_ready => io_ready
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

      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
