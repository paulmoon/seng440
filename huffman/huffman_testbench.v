`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:21:38 07/31/2014
// Design Name:   huffman_decoder
// Module Name:   C:/Documents and Settings/paulmoon/Desktop/SENG440/huffman/huffman_testbench.v
// Project Name:  huffman
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: huffman_decoder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module huffman_testbench;

	// Inputs
	reg clock;
	reg [42:0] encoded_string;
	reg [1:6] encoding;

	// Outputs
	wire [1:32] output_string;

	// Instantiate the Unit Under Test (UUT)
	huffman_decoder uut (
		.clock(clock), 
		.encoded_string(encoded_string), 
		.encoding(encoding), 
		.output_string(output_string)
	);

	initial begin
		// Initialize Inputs
		clock = 0;
		encoded_string = "0101101110111100111111101110110100111011110";
		encoding = "dbecfa";

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		clock <= '0',
					'1' after 50 ns,
					'0' after 100 ns,
					'1' after 150 ns,
					'0' after 200 ns;
	
	end
      
endmodule

