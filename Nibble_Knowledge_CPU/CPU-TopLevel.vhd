----------------------------------------------------------------------------------
-- Company: Nibble Knowledge
-- Engineer: Colton Schmidt
-- 
-- Create Date:    10:41:09 10/15/2015 
-- Design Name: 
-- Module Name:    CPU-TopLevel - Behavioral 
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

entity CPU is
    Port ( clk				: in STD_LOGIC;
			  reset			: in STD_Logic;
			  hlt_out		: out STD_LOGIC;
				
			  clk_out		: out std_logic;
			  --for testing A value
			  a_data 				: out  STD_LOGIC_VECTOR (3 downto 0);
			  ram_data 				: inout  STD_LOGIC_VECTOR (3 downto 0);
           ram_address 			: out  STD_LOGIC_VECTOR (15 downto 0);
			  ram_write_enable 	: out STD_LOGIC;
			  bus_ready				: in STD_LOGIC;
			  oe						: out STD_LOGIC;
			  bus_parity			: in STD_LOGIC;
			  bus_status_out 		: out STD_LOGIC_VECTOR(1 downto 0);
			  bus_data				: inout STD_LOGIC_VECTOR(3 downto 0);
			  bus_chip_select		: out STD_LOGIC_VECTOR(3 downto 0);
			  read_mode				: in STD_LOGIC);
end CPU;

architecture Behavioral of CPU is



component io_mapping is
    Port ( address : in  STD_LOGIC_VECTOR (15 downto 0);
           data_in : in  STD_LOGIC_VECTOR (3 downto 0);
			  data_out : out STD_LOGIC_VECTOR (3 downto 0);
			  ram_data : inout STD_LOGIC_VECTOR (3 downto 0);
           bus_chip_select : out  STD_LOGIC_VECTOR (3 downto 0);	-- The chip select lines from the bus
           store : in  STD_LOGIC;
           bus_data : inout  STD_LOGIC_VECTOR (3 downto 0);	-- The data lines from the bus
			  bus_ready : in STD_LOGIC;	--Ready from the bus
			  bus_status_out : out STD_LOGIC_VECTOR(1 downto 0);
			  oe : out STD_LOGIC;
			  bus_parity : in STD_LOGIC;	--Parity from the bus
			  clk : in STD_LOGIC;
			  rst : in STD_LOGIC;
			  read_mode : in STD_LOGIC
			  );
end component;  

component register16 is 
	Port (  d 		: in  STD_LOGIC_VECTOR (3 downto 0);
           q 		: out  STD_LOGIC_VECTOR (15 downto 0);
           clk 	: in  STD_LOGIC;
           reset 	: in  STD_LOGIC;
           load 	: in  STD_LOGIC);
end component;

component bitadder_16 is
	Port (  x  : in  std_logic_vector(15 downto 0);
           y  : in  std_logic_vector(15 downto 0);
           s0 : out std_logic_vector(15 downto 0));
end component;

component alu_complete is
	Port (  exe 		: in  STD_LOGIC;
           OP_EN 		: in  STD_LOGIC;
           data_in 	: in  STD_LOGIC_VECTOR (3 downto 0);
           WE 			: out  STD_LOGIC;
           JMP 		: out  STD_LOGIC;
			  HLT			: out	 STD_LOGIC;
			  STR			: out  STD_LOGIC;
           data_out 	: out  STD_LOGIC_VECTOR (3 downto 0);
			  clk 		: in STD_LOGIC;
			  clk_fast	: in std_logic;
			  rst 		: in STD_LOGIC);

end component;

component control_unit_V2 is
	Port (  clk 	: in  STD_LOGIC;
           reset 	: in  STD_LOGIC;
           hlt 	: in  STD_LOGIC;
           exe 	: out  STD_LOGIC;
           op_en 	: out  STD_LOGIC;
           mem_en : out  STD_LOGIC;
			  pc_en	: out	 STD_LOGIC);
end component;

component register16_with_we is
    Port ( clk 	: in  STD_LOGIC;
           reset 	: in  STD_LOGIC;
           d 		: in  STD_LOGIC_VECTOR (15 downto 0);
           q 		: out  STD_LOGIC_VECTOR (15 downto 0);
           we 		: in  STD_LOGIC);
end component;

component clock_divider_V2 is
	Port (  clk 	: in  STD_LOGIC;
           reset 	: in  STD_LOGIC;
			  clk_out: out STD_LOGIC
			  );
end component;

-- Internal Signals --

-- Clock Divider Signals --
signal i_clk : std_logic;

-- Control Unit Signals
signal i_op_en	: std_logic;
signal i_exe	: std_logic;
signal i_mem_en: std_logic;
signal i_pc_en	: std_logic;

-- RAM signals

signal i_data_frm_ram: std_logic_vector(3 downto 0);
signal i_data_to_ram	: std_logic_vector(3 downto 0);

signal i_ram_address	: std_logic_vector(15 downto 0);

signal i_ram_we		: std_logic;

-- PC reg signals
signal i_pc_prime	: std_logic_vector(15 downto 0);
signal i_pc			: std_logic_vector(15 downto 0);
signal i_incmtd_pc: std_logic_vector(15 downto 0);


-- MEM reg signals
signal i_mem_addr	: std_logic_vector(15 downto 0);

-- ALU Signals
signal i_hlt			: std_logic;
signal i_jmp			: std_logic;
signal i_pc_en_after_or :std_logic;
signal i_str : std_logic;

-- other signals
signal i_received_hlt : std_logic;

begin


IOMAP: io_mapping
	Port map(	address => i_ram_address,
				data_in => i_data_to_ram,
				data_out => i_data_frm_ram,
				ram_data => ram_data,
				bus_chip_select => bus_chip_select,
				store => i_str,
				bus_data => bus_data,	-- The data lines from the bus
				bus_ready => bus_ready,	--Ready from the bus
				oe => oe,
				bus_status_out => bus_status_out,
				bus_parity => bus_parity,
				clk => i_clk,
				rst => reset,
				read_mode => read_mode
			  );

MEM:	register16
	Port map(	clk	=> i_clk,
					reset	=> reset,
					d		=> i_data_frm_ram,
					q 		=> i_mem_addr,
					load	=>	i_mem_en);

adder_16bit:	bitadder_16
	Port map(	x 	=> i_pc,
					y 	=> "0000000000000001",
					s0	=> i_incmtd_pc);
					
cpu_alu:	alu_complete
	Port map(	clk			=>	i_clk,
					clk_fast    => clk,
					rst			=>	reset,
					OP_EN			=>	i_op_en,
					exe			=> i_exe,
					data_in		=> i_data_frm_ram,
					data_out		=> i_data_to_ram,
					JMP			=> i_jmp,
					HLT			=> i_hlt,
					WE				=> i_ram_we,
					STR			=> i_str);
					
cycle_control_unit: control_unit_V2
	Port map(	clk 		=> i_clk,
					reset		=> reset,
					hlt		=> i_hlt,
					exe		=> i_exe,
					op_en		=> i_op_en,
					mem_en	=> i_mem_en,
					pc_en		=> i_pc_en);

PCreg: register16_with_we
	Port map(	clk		=> i_clk,
					reset		=> reset,
					d			=> i_pc_prime,
					q			=> i_pc,
					we			=> i_pc_en_after_or);

Intern_clock: clock_divider_V2
	Port map(	clk		=> clk,
					reset 	=> reset,
					clk_out  => i_clk);

-- Jump Mux
i_pc_prime <= i_mem_addr when (i_jmp = '1') else i_incmtd_pc;

-- Ram Access Mux
i_ram_address <= i_mem_addr when (i_exe = '1') else i_pc;

--Enable for PC
i_pc_en_after_or <= i_pc_en OR i_jmp;

-- RAM signals

ram_address 			<= i_ram_address;
ram_write_enable 		<= i_ram_we;
hlt_out					<= i_received_hlt;
a_data 					<= i_data_to_ram;
clk_out 					<= i_clk;

process( clk )
begin
	if( i_hlt = '1' )then
		i_received_hlt <= '1';
	elsif ( reset = '1' ) then
		i_received_hlt <= '0';
	
	end if;
end process;
	

end Behavioral;

