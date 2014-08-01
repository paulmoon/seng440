--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:24:15 07/31/2014
-- Design Name:   
-- Module Name:   C:/Documents and Settings/paulmoon/Desktop/SENG440/huffman/huffman_testbench.vhd
-- Project Name:  huffman
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: huffman_decoder
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY huffman_testbench IS
END huffman_testbench;
 
ARCHITECTURE behavior OF huffman_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT huffman_decoder
    PORT(
         clock : IN  std_logic;
         encoded_string : IN  std_logic_vector(0 to 43);
         encoding : IN  string(1 to 6);
         output_string : OUT  string(32 downto 1)
        );
    END COMPONENT;
    

   --Inputs
   signal clock : std_logic := '0';
   signal encoded_string : std_logic_vector(0 to 43) := (others => '0');
   signal encoding : string(1 to 6) := (others => '0');

 	--Outputs
   signal output_string : string(32 downto 1);

   -- Clock period definitions
   constant clock_period : time := 1 ns;
 
BEGIN
 
 
	-- Instantiate the Unit Under Test (UUT)
   uut: huffman_decoder PORT MAP (
          clock => clock,
          encoded_string => encoded_string,
          encoding => encoding,
          output_string => output_string
        );

   -- Clock process definitions
   clock_process :process
   begin
		clock <= '0';
		wait for clock_period/2;
		clock <= '1';
		wait for clock_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		encoded_string <= "01011011101111001111101101110110100111011110";
		encoding <= "dbecfa";

      wait for 100 ns;	
      wait for clock_period*10;
		
		-- output_string <= "00000000000000000000000000000000";
		
      -- insert stimulus here 
      wait;
   end process;

END;
