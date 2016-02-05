----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:23:52 10/22/2015 
-- Design Name: 
-- Module Name:    control_unit - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity control_unit is
    Port ( clk 	: in  STD_LOGIC;
           reset 	: in  STD_LOGIC;
           hlt 	: in  STD_LOGIC;
           exe 	: out  STD_LOGIC;
			  pc_en	: out STD_LOGIC;
           op_en 	: out  STD_LOGIC;
           mem_en : out  STD_LOGIC);
end control_unit;

architecture Behavioral of control_unit is
 
-- Intermediate Signals --
signal cycle_counter : std_logic_vector( 2 downto 0 );
signal received_hlt	: std_logic;

begin

process( clk )
	begin
			
		if reset = '1' then
					cycle_counter <= "001";
					exe		<= '0';
					op_en		<=	'1';
					mem_en	<= '0';
					pc_en	   <= '1';
					received_hlt <= '0';
		
		elsif received_hlt = '0' then
		
				
			if hlt = '1' then
				cycle_counter <= "000";
				exe 	  <= '0';
				op_en	  <= '0';
				mem_en  <= '0';
				pc_en	  <= '0';
				received_hlt <= '1';
			
			elsif rising_edge(clk) then
				
				
				-- Cycle 1 --
				-- OP code --
				if	cycle_counter = "000" then
					exe		<= '0';
					op_en		<=	'1';
					mem_en	<= '0';
					pc_en	   <= '1';
				
				-- Cycle 2, 3, 4 --
				-- Address Writing  --
				elsif cycle_counter = "001" or cycle_counter = "010" or cycle_counter = "011" then 
					exe		<= '0';
					op_en		<=	'0';
					mem_en	<= '1';
					pc_en	  <=  '1';
					
				-- Cycles 5 --
				-- Execute  --
				elsif cycle_counter = "100" then
					exe		<= '0';
					op_en		<=	'0';
					mem_en	<= '1';
					pc_en	   <= '1';	
					
				-- Cycles 6 --
				-- Execute  --
				elsif cycle_counter = "101" then
					exe		<= '1';
					op_en		<=	'0';
					mem_en	<= '0';
					pc_en	   <= '0';
				
				end if;
				
				if cycle_counter = "101" then
					cycle_counter <= "000";
				else
					cycle_counter <= cycle_counter + '1';
				end if;
			else
				
			end if;
			
		else
			cycle_counter <= "000";
				exe 	  	  <= '0';
				op_en	     <= '0';
				mem_en     <= '0';
				pc_en	     <= '0';	
		end if;		
end process;



end Behavioral;

