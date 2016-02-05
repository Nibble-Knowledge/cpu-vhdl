----------------------------------------------------------------------------------
-- Company: Nibble Knowledge
-- Engineer: Colton Schmidt
-- 
-- Create Date:    10:22:00 10/18/2015 
-- Design Name: 
-- Module Name:    register16 - Behavioral 
-- Project Name: 
-- Target Devices: CPU
-- Tool versions: 
-- Description: Loads 16 bit register 1 nibble at a time every clock edge
-- 				 while the load signal is high. The the most significant nibble must be
-- 				 sent first and the least significant nibble las as shown below:
--
-- 								MSB								       LSB
-- 16 bits to be stored:	   1111 		1111 		1111 		1111
--	Sending Order:				   Nibble3  Nibble2  Nibble1	Nibble0
-- Dependencies: 
--
-- Revision: 0.1
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

entity register16 is
    Port ( d 		: in  STD_LOGIC_VECTOR (3 downto 0);
           q 		: out  STD_LOGIC_VECTOR (15 downto 0);
           clk 	: in  STD_LOGIC;
           reset 	: in  STD_LOGIC;
           load 	: in  STD_LOGIC);
end register16;

architecture Behavioral of register16 is

-- Intermediate Signals --
signal i_nibbleCount : STD_LOGIC_VECTOR (1 downto 0);

begin

	process( clk, reset )
	begin
			if reset = '1' then
				i_nibbleCount <= "11";
				q <= (others => '0');
			
			elsif rising_edge(clk) then
				if load = '1' then
					
					-- Load Nibble 3 --
					if i_nibbleCount = "11" then
						q(15) <= d(3);
						q(14) <= d(2);
						q(13) <= d(1);
						q(12) <= d(0);
					
					-- Load Nibble 2 --
					elsif i_nibbleCount = "10" then
						q(11) <= d(3);
						q(10) <= d(2);
						q(9)  <= d(1);
						q(8)  <= d(0);
						
					-- Load Nibble 1 --
					elsif i_nibbleCount = "01" then
						q(7)  <= d(3);
						q(6)  <= d(2);
						q(5)  <= d(1);
						q(4)  <= d(0);
					
					-- Load Nibble 0 --
					elsif i_nibbleCount = "00" then
						q(3)  <= d(3);
						q(2)  <= d(2);
						q(1)  <= d(1);
						q(0)  <= d(0);
						
					end if;
				
					if i_nibbleCount = "00" then
						i_nibbleCount <= "11";
					else
						i_nibbleCount <= i_nibbleCount - '1';
					end if;
				end if;
			
			end if;
	end process;
					
					
				

end Behavioral;

