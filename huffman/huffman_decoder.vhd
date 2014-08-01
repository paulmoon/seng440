----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:54:51 07/31/2014 
-- Design Name: 
-- Module Name:    huffman_decoder - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;
use std.textio.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity huffman_decoder is
    Port ( clock : in  STD_LOGIC;
           encoded_string : in STD_LOGIC_VECTOR(0 to 43);
           encoding : in string(1 to 6);
           output_string : out string(32 downto 1));

end huffman_decoder;

architecture Behavioral of huffman_decoder is
		constant code_length : integer := 43;
	begin
	
	compute : process (clock, encoded_string, encoding)
			variable i : integer := 1;
			variable numOutcomes : integer := 1;
			variable variableFrequency : integer := 1;
		begin
		
		if rising_edge(clock) then
			if i <= code_length + 1 then
				report "i: " & integer'image(i);
				if (encoded_string(i-1) = '0') then
					report "Outcomes " & encoding(variableFrequency);
					output_string(32 - numOutComes + 1) <= encoding(variableFrequency);
					numOutcomes := numOutcomes + 1;
					variableFrequency := 1;
				else	
					variableFrequency := variableFrequency + 1;
				end if;
				i := i + 1;
			end if;
		end if;
	
	end process;

end Behavioral;

