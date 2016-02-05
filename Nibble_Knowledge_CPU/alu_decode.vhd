----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:20:45 10/21/2015 
-- Design Name: 
-- Module Name:    alu_decode - Behavioral 
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

entity alu_decode is
    Port ( exe : in  STD_LOGIC;
           OP_EN : in  STD_LOGIC;
           clk : in  STD_LOGIC;
			  clk_fast: in std_logic;
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
end alu_decode;

architecture Behavioral of alu_decode is

signal stored_OP_Code : STD_LOGIC_VECTOR(3 downto 0);
signal i_WE : std_logic;

begin

process(clk)

--ADD A RESET THAT SETS OPCODE TO NOP
begin
	if clk' event and clk = '1' then
		--Write op_code into temp storage
		if OP_EN = '1' then
			stored_OP_Code <= OP_Code;
		end if;
	end if;
end process;

--process(clk)
--begin
--	--Execute instruction
--	
--	if rst = '1' then
--		i_WE <= '1';
--		HLT <= '0';
--		A_EN <= '0';
--		STAT_EN <= '0';
--		JMP <= '0';
--		
--	elsif exe = '1' then
--		--HLT
--		if stored_OP_Code = "0000" then
--			i_WE <= '1';
--			HLT <= '1';
--			A_EN <= '0';
--			STAT_EN <= '0';
--			JMP <= '0';
--		
--		--LOD
--		elsif stored_OP_Code = "0001" then
--			i_WE <= '1';
--			HLT <= '0';
--			A_EN <= '1';
--			STAT_EN <= '0';
--			JMP <= '0';
--			LOD_S <= '1';
--		
--		--STR
--		elsif stored_OP_Code = "0010" then
--			
--			
--			--if i_WE = '1' then
--			--	i_WE <= '0';
--			--else
--			--	i_WE <= '1';
--			--end if;
--			
--			i_WE <= '0';
--			HLT <= '0';
--			A_EN <= '0';
--			STAT_EN <= '0';
--			JMP <= '0';
--			
--		--ADD
--		elsif stored_OP_Code = "0011" then
--			i_WE <= '1';
--			HLT <= '0';
--			A_EN <= '1';
--			STAT_EN <= '1';
--			JMP <= '0';
--			Arith_S <= '0';
--			Stat_S <= '0';
--			LOD_S <= '0';
--		
--		--NOP
--		elsif stored_OP_Code = "0100" then
--			i_WE <= '1';
--			HLT <= '0';
--			A_EN <= '0';
--			STAT_EN <= '0';
--			JMP <= '0';
--		
--		--NND
--		elsif stored_OP_Code = "0101" then
--			i_WE <= '1';
--			HLT <= '0';
--			A_EN <= '1';
--			STAT_EN <= '0';
--			JMP <= '0';
--			Arith_S <= '1';
--			Stat_S <= '0';
--			LOD_S <= '0';
--		
--		--CXA
--		elsif stored_OP_Code = "0111" then
--			i_WE <= '1';
--			HLT <= '0';
--			A_EN <= '1';
--			STAT_EN <= '0';
--			JMP <= '0';
--			Stat_S <= '1';
--			LOD_S <= '0';
--		
--		--JMP
--		elsif stored_OP_Code = "0110" then
--			i_WE <= '1';
--			HLT <= '0';
--			A_EN <= '0';
--			STAT_EN <= '0';
--			JMP <= '1';
--		
--		--Unknown - halt the CPU
--		else
--			i_WE <= '1';
--			HLT <= '1';
--			A_EN <= '0';
--			STAT_EN <= '0';
--			JMP <= '0';	
--		end if;
--		
--			
--		
--	else
--		HLT <= '0';
--		i_WE <= '1';
--		A_EN <= '0';
--		STAT_EN <= '0';
--		JMP <= '0';
--	end if;
--			
--end process;	

-- Decoder Combinational Logic --

-- Active Low WE
WE <= '0' when ( stored_OP_code = "0010" and exe = '1' and clk = '1') else '1';
STR <= '1' when (stored_OP_code = "0010" and exe = '1') else '0';

-- HLT
HLT <= '1' when( stored_OP_code = "0000" and exe = '1') else '0';

-- A_EN
A_EN <= '1' when( (stored_OP_code = "0001" or stored_OP_code = "0011" or stored_OP_code = "0101" or stored_OP_code = "0111") and exe = '1' ) else '0';

-- STAT_EN
STAT_EN <= '1' when( stored_OP_code = "0011" and exe = '1') else '0';

-- JMP
JMP <= '1' when( stored_OP_code = "0110" and exe = '1') else '0';

-- Arith_S
Arith_S <= '1' when( stored_OP_code = "0101" and exe = '1') else '0';

-- Stat_S
Stat_S <= '1' when( stored_OP_code = "0111" and exe = '1') else '0';

-- LOD_S
LOD_S <= '1' when( stored_OP_code = "0001" and exe = '1') else '0';		


end Behavioral;

