----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:46:43 11/01/2015 
-- Design Name: 
-- Module Name:    control_unit_V2 - Behavioral 
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

entity control_unit_V2 is
    Port ( clk 	: in  STD_LOGIC;
           reset 	: in  STD_LOGIC;
           hlt 	: in  STD_LOGIC;
           op_en 	: out  STD_LOGIC;
           mem_en : out  STD_LOGIC;
           pc_en 	: out  STD_LOGIC;
           exe 	: out  STD_LOGIC);
end control_unit_V2;

architecture Behavioral of control_unit_V2 is

-- Intermediate Signals --
signal cycle_counter : std_logic_vector( 2 downto 0 );
signal received_hlt	: std_logic;

begin

-- Counter
process(clk, reset)
begin

	if rising_edge(clk) then
		--if reset = '1' then
			--cycle_counter <= "000";
		if cycle_counter = "101" then
			cycle_counter <= "000";
		else
			cycle_counter <= cycle_counter + '1';
		end if;
	end if;

	if reset = '1' then
		cycle_counter <= "000";
	end if;
	

	
end process;

-- HLT Detection
process(reset, hlt)
begin
	if reset = '1' then
		received_hlt <= '0';
	else
		if hlt = '1' then
			received_hlt <= '1';
		else
			received_hlt <= received_hlt;
		end if;
	end if;
end process;


op_en  <= '1' when (cycle_counter = "000" and received_hlt = '0') else '0';

mem_en <= '0' when ((cycle_counter = "000" or cycle_counter = "101") or received_hlt = '1') else '1';

pc_en  <= '0' when (cycle_counter = "101" or received_hlt = '1') else '1';

exe    <= '1' when (cycle_counter = "101" and received_hlt = '0') else '0';


end Behavioral;

