----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:22:26 10/22/2015 
-- Design Name: 
-- Module Name:    alu_complete - Behavioral 
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

entity alu_complete is
    Port ( exe : in  STD_LOGIC;
           OP_EN : in  STD_LOGIC;
           data_in : in  STD_LOGIC_VECTOR (3 downto 0);
           WE : out  STD_LOGIC;
           JMP : out  STD_LOGIC;
			  STR : out STD_LOGIC;
			  HLT : out	 STD_LOGIC;
           data_out : out  STD_LOGIC_VECTOR (3 downto 0);
			  clk : in STD_LOGIC;
			  clk_fast : in std_logic;
			  rst : in STD_LOGIC);
end alu_complete;

architecture Behavioral of alu_complete is


--COMPONENTS

component four_bit_full_adder is
    Port ( x : in  STD_LOGIC_VECTOR (3 downto 0);
           y : in  STD_LOGIC_VECTOR (3 downto 0);
           cin : in  STD_LOGIC;
			  msb_cin: out	 STD_LOGIC;
           sum : out  STD_LOGIC_VECTOR (3 downto 0);
           cout : out  STD_LOGIC);
end component;

component four_bit_nand is
    Port ( x : in  STD_LOGIC_VECTOR (3 downto 0);
           y : in  STD_LOGIC_VECTOR (3 downto 0);
           nnd : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

component Reg is
    Port ( data_in : in  STD_LOGIC_VECTOR (3 downto 0);
           data_out : out  STD_LOGIC_VECTOR (3 downto 0);
           enable : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           rst : in  STD_LOGIC);
end component;

component alu_decode is
    Port ( exe : in  STD_LOGIC;
           OP_EN : in  STD_LOGIC;
           clk : in  STD_LOGIC;
			  clk_fast : in std_logic;
           rst : in  STD_LOGIC;
			  OP_Code : in  STD_LOGIC_VECTOR(3 downto 0);
           WE : out  STD_LOGIC;
           A_EN : out  STD_LOGIC;
           STAT_EN : out  STD_LOGIC;
           HLT : out  STD_LOGIC;
           JMP : out  STD_LOGIC;
           Arith_S : out  STD_LOGIC;
           Stat_S : out  STD_LOGIC;
           LOD_S : out  STD_LOGIC;
			  STR : out STD_LOGIC);
end component;

--Decode
signal i_A_EN : STD_LOGIC;
signal i_STAT_EN : STD_LOGIC;
signal i_HLT : STD_LOGIC;
signal i_JMP : STD_LOGIC;
signal i_LOD_S : STD_LOGIC;
signal i_stat_S : STD_LOGIC;
signal i_arith_S : STD_LOGIC;

--STAT
signal i_XORb_in : STD_LOGIC;
signal i_XORb_new : STD_LOGIC;
signal i_XORb_old : STD_LOGIC;

signal i_carry_in : STD_LOGIC;
signal i_carry_new : STD_LOGIC;
signal i_carry_old : STD_LOGIC;

signal i_stat : STD_LOGIC_VECTOR(3 downto 0);
signal i_stat_in : STD_LOGIC_VECTOR(3 downto 0);

--Arithmetic
signal i_data_in : STD_LOGIC_VECTOR(3 downto 0);
signal i_arith_result : STD_LOGIC_VECTOR(3 downto 0);
signal i_data_out : STD_LOGIC_VECTOR(3 downto 0);
signal i_NAND_result : STD_LOGIC_VECTOR(3 downto 0);
signal i_add_result : STD_LOGIC_VECTOR(3 downto 0);
signal i_arith_stat : STD_LOGIC_VECTOR(3 downto 0);
signal i_A_in : STD_LOGIC_VECTOR(3 downto 0);
signal i_MSB_cin : STD_LOGIC;

begin

ADDER: four_bit_full_adder
port map(  x => i_data_out,
           y => i_data_in,
           cin => '0',
			  msb_cin => i_MSB_cin,
           sum => i_add_result,
           cout => i_carry_new
			  );

NANDER: four_bit_nand
port map( x => i_data_out,
          y => i_data_in,
          nnd => i_NAND_result
			 );
			 
STAT: Reg
port map(  data_in => i_stat_in,
           data_out => i_stat,
           enable => i_STAT_EN,
           clk => clk,
           rst => rst
			  );
			  
A: Reg
port map(  data_in => i_A_in,
           data_out => i_data_out,
           enable => i_A_EN,
           clk => clk,
           rst => rst
			  );

DECODER: alu_decode
port map(  exe  => exe,
           OP_EN  => OP_EN,
           clk  => clk,
			  clk_fast => clk_fast,
           rst  => rst,
			  OP_Code  => i_data_in,
           WE  => WE,
           A_EN  => i_A_EN,
           STAT_EN => i_STAT_EN,
           HLT  => i_HLT,
           JMP  => i_JMP,
           Arith_S  => i_arith_S,
           Stat_S => i_stat_S,
           LOD_S => i_LOD_S,
			  STR => STR
			  );


i_stat_in <= i_XORb_in & '0' & i_HLT & i_carry_in;
i_data_in <= data_in;
data_out <= i_data_out;
JMP <= i_JMP and (not (i_data_out(0) or i_data_out(1) or i_data_out(2) or i_data_out(3)));

i_XORb_new <= (i_carry_new XOR i_MSB_cin) XOR i_add_result(3);
i_XORb_old <= i_stat(3);

i_carry_old <= i_stat(0);

--Input to A (A_M0)

i_A_in <= i_data_in when (i_LOD_S = '1') else i_arith_stat;

--A_M1
i_arith_stat <= i_stat when (i_stat_S = '1') else i_arith_result;

--A_M4
i_arith_result <= i_NAND_result when (i_arith_S = '1') else i_add_result;

--A_M2 and A_M3
i_XORb_in <= i_XORb_old when (i_HLT = '1') else i_XORb_new;
i_carry_in <= i_carry_old when (i_HLT = '1') else i_carry_new;

--HALT
HLT <= i_HLT;

end Behavioral;

