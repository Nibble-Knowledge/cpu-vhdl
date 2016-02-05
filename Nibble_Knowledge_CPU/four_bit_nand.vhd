----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:50:16 10/22/2015 
-- Design Name: 
-- Module Name:    four_bit_nand - Behavioral 
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

entity four_bit_nand is
    Port ( x : in  STD_LOGIC_VECTOR (3 downto 0);
           y : in  STD_LOGIC_VECTOR (3 downto 0);
           nnd : out  STD_LOGIC_VECTOR (3 downto 0));
end four_bit_nand;

architecture Behavioral of four_bit_nand is


begin

	nnd(0) <= not (x(0) and y(0));
	nnd(1) <= not (x(1) and y(1));
	nnd(2) <= not (x(2) and y(2));
	nnd(3) <= not (x(3) and y(3));


end Behavioral;

