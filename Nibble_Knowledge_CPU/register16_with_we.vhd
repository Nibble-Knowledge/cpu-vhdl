----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:45:34 10/22/2015 
-- Design Name: 
-- Module Name:    register16_with_we - Behavioral 
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

entity register16_with_we is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           d : in  STD_LOGIC_VECTOR (15 downto 0);
           q : out  STD_LOGIC_VECTOR (15 downto 0);
           we : in  STD_LOGIC);
end register16_with_we;

architecture Behavioral of register16_with_we is
-- Intermediate Signals -- 

begin

process (clk, reset)
	begin
		if reset = '1' then
			q <= "0000000000010011";
		elsif rising_edge(clk) and we = '1' then
			q <= d;
		end if;
end process;

end Behavioral;

