----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:19:13 10/19/2015 
-- Design Name: 
-- Module Name:    data_flow_controller - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity data_flow_controller is
    Port ( clk 			: in  STD_LOGIC;
           reset 			: in  STD_LOGIC;
           mem_reg_we 	: out  STD_LOGIC;
           alu_op_en 	: out  STD_LOGIC;
           execute 		: out  STD_LOGIC);
end data_flow_controller;

architecture Behavioral of data_flow_controller is

-- Intermediate Signals --
signal cycle_counter : STD_LOGIC_VECTOR(2 downto 0);

begin

	process( clk, reset )
	begin
			if reset = '1' then
				cycle_counter <= "110";
				alu_op_en 	  <= '1';
				mem_reg_we	  <= '0';
				execute		  <= '0';
			
			elsif falling_edge(clk) then
				
				-- Cycle 1 --
				if cycle_counter = "110" then
					
				
				-- Cycle 2 --
				elsif cycle_counter = "101" then 
					
				
				
				end if;
				
				if cycle_counter = "000" then
					cycle_counter <= "110";
				else
					cycle_counter <= cycle_counter - 1;
				end if;
			end if;
	end process;

end Behavioral;

