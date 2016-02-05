----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:13:34 11/16/2015 
-- Design Name: 
-- Module Name:    io_mapping - Behavioral 
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

entity io_mapping is
    Port ( address : in  STD_LOGIC_VECTOR (15 downto 0);
           data_in : in  STD_LOGIC_VECTOR (3 downto 0);
			  data_out : out STD_LOGIC_VECTOR (3 downto 0);
			  ram_data : inout STD_LOGIC_VECTOR (3 downto 0);
           bus_chip_select : out  STD_LOGIC_VECTOR (3 downto 0);	-- The chip select lines from the bus
           store : in  STD_LOGIC;
           bus_data : inout  STD_LOGIC_VECTOR (3 downto 0);	-- The data lines from the bus
			  bus_ready : in STD_LOGIC;	--Ready from the bus
			  oe : out STD_LOGIC;
			  bus_status_out : out STD_LOGIC_VECTOR(1 downto 0);
			  bus_parity : in STD_LOGIC;	--Parity from the bus
			  clk : in STD_LOGIC;
			  rst : in STD_LOGIC;
			  read_mode : in STD_LOGIC
			  );
end io_mapping;

architecture Behavioral of io_mapping is

component Reg is
    Port ( data_in : in  STD_LOGIC_VECTOR (3 downto 0);
           data_out : out  STD_LOGIC_VECTOR (3 downto 0);
           enable : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           rst : in  STD_LOGIC);
end component;


component io_decode is
    Port ( select_line : in  STD_LOGIC_VECTOR (1 downto 0);
           en : in  STD_LOGIC;
           data : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

signal i_data_in : STD_LOGIC_VECTOR(3 downto 0);
signal i_NOR_result : STD_LOGIC;

signal i_reg_data_in : STD_LOGIC_VECTOR(3 downto 0);
signal i_reg_data_out : STD_LOGIC_VECTOR(3 downto 0);
signal i_reg_data_en : STD_LOGIC;
signal i_data_bus : STD_LOGIC_VECTOR(3 downto 0); 

signal i_reg_status_in : STD_LOGIC_VECTOR(3 downto 0);
signal i_reg_status_out : STD_LOGIC_VECTOR(3 downto 0);
--signal i_reg_status_en : STD_LOGIC_VECTOR;

signal i_reg_cs_in : STD_LOGIC_VECTOR(3 downto 0);
signal i_reg_cs_out : STD_LOGIC_VECTOR(3 downto 0);
--signal i_reg_cs_en : STD_LOGIC_VECTOR;

signal i_select : STD_LOGIC_VECTOR(1 downto 0);
signal i_decode_en : STD_LOGIC;
signal i_reg_enables : STD_LOGIC_VECTOR(3 downto 0);

signal i_rst_or : STD_LOGIC;

begin

DECODE: io_decode
port map(  select_line => i_select,
           en => i_decode_en,
           data => i_reg_enables);

REG_DATA: Reg
port map(  data_in => i_reg_data_in,
           data_out => i_reg_data_out,
           enable => i_reg_data_en,
           clk => clk,
           rst => rst
			  );

REG_STATUS: Reg
port map(  data_in => i_reg_status_in,
           data_out => i_reg_status_out,
           enable => i_reg_enables(1),
           clk => clk,
           rst => rst
			  );

REG_CHIP_SELECT: Reg
port map(  data_in => i_reg_cs_in,
           data_out => i_reg_cs_out,
           enable => i_reg_enables(0),
           clk => clk,
           rst => rst
			  );
			  
i_NOR_result <= NOT(address(15) OR address(14) OR address(13) OR address(12)
						OR address(11) OR address(10) OR address(9) OR address(8)
						OR address(7) OR address(6) OR address(5) OR address(4)
						OR address(3) OR address(2));
						
i_rst_or <= (NOT rst) AND i_NOR_result;
			  
i_decode_en <= ((i_NOR_result AND store) AND (address(0) NAND address(1))) when rst = '0' else '1';
oe <= store;
i_select <= address(1 downto 0) when i_rst_or = '1' else "11"; 

--Register enable signals
i_reg_data_en <= read_mode OR i_reg_enables(2);
i_reg_status_out(1) <= bus_ready;
i_reg_status_out(0) <= bus_parity;

bus_status_out <= i_reg_status_out(3 downto 2);


--Register inputs and outputs
i_reg_data_in <= data_in when i_decode_en = '1' else i_data_bus;
i_reg_status_in <= data_in(3) & data_in(2) & bus_ready & bus_parity; 
i_reg_cs_in <= data_in;


--Data selects
data_out <= ram_data when i_select = "11" else
					i_reg_data_out when  i_select = "10" else
					i_reg_status_out(3 downto 2) & bus_ready & bus_parity when i_select = "01" else
					i_reg_cs_out when i_select = "00";

--Tristates
i_data_bus <= "ZZZZ" when read_mode = '0' else bus_data;
bus_data <= "ZZZZ" when read_mode = '1' else i_reg_data_out; 
bus_chip_select <= i_reg_cs_out;

ram_data <= data_in when store = '1' else "ZZZZ";

			  
end Behavioral;

