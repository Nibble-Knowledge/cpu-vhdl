----------------------------------------------------------------------------------
-- Company: Nibble Knowledge
-- Engineer: Colton Schmidt
-- 
-- Create Date:    13:27:13 10/18/2015 
-- Design Name: 
-- Module Name:    CPU_RAM - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: A simulation of the CPU memory. Code is a modified version of code from: 
-- https://www.doulos.com/knowhow/vhdl_designers_guide/models/simple_ram_model/
--
-- Copyright of orignal code: 2008 Douglos
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity CPU_RAM is
    Port ( data 			: inout  STD_LOGIC_VECTOR (3 downto 0);
           address 		: in  STD_LOGIC_VECTOR (15 downto 0);
			  write_enable : in STD_LOGIC;
           clk 			: in  STD_LOGIC;
			  
			  chip_select	: out std_logic_vector(3 downto 0);
			  data_buss		: out	std_logic_vector(3 downto 0);
			  parity_chk	: in  std_logic;
			  io_read		: out std_logic;
			  io_write		: out std_logic;
			  io_ready		: in	std_logic);
end CPU_RAM;

architecture Behavioral of CPU_RAM is

type ram is array (0 to (2**16)-1) of STD_LOGIC_VECTOR (3 downto 0);

--Internal Signals --
--signal cpu_ram : ram( 0 to (2**16)-1, 0 to 3) := (others => ( others => ( others => '0')));
signal cpu_ram : ram;

 
begin

	process(clk) is
	begin
		if rising_edge(clk) then
			if write_enable = '1' then
				cpu_ram(to_integer(unsigned(address))) <= data;
			else
				data <= cpu_ram(to_integer(unsigned(address)));
			end if;
		end if;
	end process;
	
	-- IO Mapping
	
	-- OUT
	chip_select <= cpu_ram( 0 );
	data_buss	<= cpu_ram( 2 );
	io_read		<= cpu_ram( 1, 0);
	io_write		<= cpu_ram( 1, 1);
	
	-- IN
	cpu_ram( 1, 3)	<= parity_chk;
	cpu_ram( 1, 2)	<= io_ready;
	
	

end Behavioral;

