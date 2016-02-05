-- 1 Bit Adder --
--
-- A Full 1 bit adder
-- 
--

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
 
--  Uncomment the following lines to use the declarations that are
--  provided for instantiating Xilinx primitive components.
--	library UNISIM;
--	use UNISIM.VComponents.all;
 
entity bitadder_1 is
    Port ( a : in std_logic;
           b : in std_logic;
           cin : in std_logic;
           s : out std_logic;
           cout : out std_logic);
end bitadder_1;
 
architecture Behavioral of bitadder_1 is
 
begin
s  <= (a xor (b xor cin)); 
cout <= (b and cin) or (a and cin) or (a and b);
 
end Behavioral;