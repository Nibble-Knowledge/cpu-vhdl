-- 16 Bit Adder --
--
-- A Full 16 bit adder
-- Requires: bitadder_1.VHDL
--
-- Author: Colton Schmidt
-- Last Edited: 18/10/2015			 

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
 
--  Uncomment the following lines to use the declarations that are
--  provided for instantiating Xilinx primitive components.
--	library UNISIM;
--	use UNISIM.VComponents.all;
 
entity bitadder_16 is
    Port ( x  : in  std_logic_vector(15 downto 0);
           y  : in  std_logic_vector(15 downto 0);
           s0 : out std_logic_vector(15 downto 0));
end bitadder_16;
 
architecture Behavioral of bitadder_16 is

-- Internal Signals --
signal c : std_logic_vector (15 downto 0):= "0000000000000000";

component bitadder_1 
	port(	a,b,cin:in std_logic; 
			s,cout:out std_logic);
end component;
 
begin
 
bit1:  bitadder_1 port map (a=>x(0), b=>y(0), s=>s0(0), cin=>c(0), cout=>c(1));
bit2:  bitadder_1 port map (a=>x(1), b=>y(1), s=>s0(1), cin=>c(1), cout=>c(2));
bit3:  bitadder_1 port map (a=>x(2), b=>y(2), s=>s0(2), cin=>c(2), cout=>c(3));
bit4:  bitadder_1 port map (a=>x(3), b=>y(3), s=>s0(3), cin=>c(3), cout=>c(4));
bit5:  bitadder_1 port map (a=>x(4), b=>y(4), s=>s0(4), cin=>c(4), cout=>c(5));
bit6:  bitadder_1 port map (a=>x(5), b=>y(5), s=>s0(5), cin=>c(5), cout=>c(6));
bit7:  bitadder_1 port map (a=>x(6), b=>y(6), s=>s0(6), cin=>c(6), cout=>c(7));
bit8:  bitadder_1 port map (a=>x(7), b=>y(7), s=>s0(7), cin=>c(7), cout=>c(8));
bit9:  bitadder_1 port map (a=>x(8), b=>y(8), s=>s0(8), cin=>c(8), cout=>c(9));
bit10: bitadder_1 port map (a=>x(9), b=>y(9), s=>s0(9), cin=>c(9), cout=>c(10));
bit11: bitadder_1 port map (a=>x(10), b=>y(10), s=>s0(10), cin=>c(10), cout=>c(11));
bit12: bitadder_1 port map (a=>x(11), b=>y(11), s=>s0(11), cin=>c(11), cout=>c(12));
bit13: bitadder_1 port map (a=>x(12), b=>y(12), s=>s0(12), cin=>c(12), cout=>c(13));
bit14: bitadder_1 port map (a=>x(13), b=>y(13), s=>s0(13), cin=>c(13), cout=>c(14));
bit15: bitadder_1 port map (a=>x(14), b=>y(14), s=>s0(14), cin=>c(14), cout=>c(15));
bit16: bitadder_1 port map (a=>x(15), b=>y(15), s=>s0(15), cin=>c(15), cout=>c(0));
end Behavioral;