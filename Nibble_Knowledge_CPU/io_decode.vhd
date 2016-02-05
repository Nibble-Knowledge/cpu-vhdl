----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:43:05 11/16/2015 
-- Design Name: 
-- Module Name:    io_decode - Behavioral 
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

entity io_decode is
    Port ( select_line : in  STD_LOGIC_VECTOR (1 downto 0);
           en : in  STD_LOGIC;
           data : out  STD_LOGIC_VECTOR (3 downto 0));
end io_decode;

architecture Behavioral of io_decode is

signal i_select : STD_LOGIC_VECTOR(3 downto 0);

begin

	i_select <= "0001" when select_line = "00" else 
		"0010" when select_line = "01" else
		"0100" when select_line = "10" else "1111";

	data <= "0000" when en = '0' else i_select;

end Behavioral;

