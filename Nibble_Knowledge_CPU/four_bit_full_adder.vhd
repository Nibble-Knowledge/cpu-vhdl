----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:42:09 10/21/2015 
-- Design Name: 
-- Module Name:    four_bit_full_adder - Behavioral 
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

entity four_bit_full_adder is
    Port ( x : in  STD_LOGIC_VECTOR (3 downto 0);
           y : in  STD_LOGIC_VECTOR (3 downto 0);
           cin : in  STD_LOGIC;
			  msb_cin: out	 STD_LOGIC;
           sum : out  STD_LOGIC_VECTOR (3 downto 0);
           cout : out  STD_LOGIC);
end four_bit_full_adder;

architecture Behavioral of four_bit_full_adder is

--Use the one bit adder
component one_bit_full_adder
    Port( x : in  STD_LOGIC;
           y : in  STD_LOGIC;
           cin : in  STD_LOGIC;
           sum : out  STD_LOGIC;
			  cout : out  STD_LOGIC);
end component;

--Internal Signals
signal i_carry: STD_LOGIC_VECTOR(2 downto 0);

begin

cell_1: one_bit_full_adder
	port map(x(0), y(0), cin, sum(0), i_carry(0));

cell_2: one_bit_full_adder
	port map(x(1), y(1), i_carry(0), sum(1), i_carry(1));
	
cell_3: one_bit_full_adder
	port map(x(2), y(2), i_carry(1), sum(2), i_carry(2));
	
cell_4: one_bit_full_adder
	port map(x(3), y(3), i_carry(2), sum(3), cout);
	
--Used for XORb	
msb_cin <= i_carry(2);

end Behavioral;

