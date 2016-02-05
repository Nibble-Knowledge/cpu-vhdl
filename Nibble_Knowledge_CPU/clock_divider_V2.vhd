----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:39:36 11/01/2015 
-- Design Name: 
-- Module Name:    clock_divider_V2 - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity clock_divider_V2 is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           clk_out : out  STD_LOGIC);
end clock_divider_V2;

architecture Behavioral of clock_divider_V2 is

-- Components --
component downcounter is
	Generic ( period: integer:= 4;
				 WIDTH: integer:= 3);
		Port ( clk : in  STD_LOGIC;
				 reset : in  STD_LOGIC;
				 enable : in  STD_LOGIC;
				 zero : out  STD_LOGIC;
				 value: out STD_LOGIC_VECTOR(WIDTH-1 downto 0));
end component;

-- Internal Signals --
signal 	kilohertz: STD_LOGIC;
signal 	hundredhertz: STD_LOGIC;
signal	tenhertz: STD_LOGIC;
signal  onehertz: STD_LOGIC;

signal	counter_value : STD_LOGIC_VECTOR( 3 downto 0 );
signal   i_clk_out  : std_logic;

begin

kiloHzClock: downcounter
generic map(
				period => (39-1), 
				WIDTH => 15
			)
port map (
				clk => clk,
				reset => reset,
				enable => '1',
				zero => kilohertz,
				value => open		
);

hundredHzClock: downcounter
generic map(
				period => (10-1),	
				WIDTH => 4
			)
port map (
				clk => clk,
				reset => reset,
				enable => kilohertz,
				zero => hundredhertz,
				value => counter_value		
);

tenHzClock: downcounter
generic map(
				period => (10-1),	
				WIDTH => 4
			)
port map (
				clk => clk,
				reset => reset,
				enable => hundredhertz,
				zero => tenhertz,
				value => open			
);

oneHZClock: downcounter
generic map(
				period => (10-1),
				WIDTH => 4
			)
port map (
				clk => clk,
				reset => reset,
				enable => tenhertz,
				zero => onehertz,
				value => open
);

process (clk)
begin  
   
	if clk'event and clk = '1' then
	  
	  if reset = '1' then                 
			i_clk_out  <= '1';
	  elsif (counter_value = "1000") then    -- switch polarity every half period
       i_clk_out  <= '0';
     else
       i_clk_out  <= '1';
     end if;
   
	end if;
 end process;

 clk_out <= i_clk_out;

end Behavioral;

