`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:31:37 02/09/2015
// Design Name:   pipeline
// Module Name:   C:/Users/Leo/Desktop/PipeLine/Test.v
// Project Name:  PipeLine
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: pipeline
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Test;

	// Inputs
	reg clk100;
	reg btn;
	reg rx;

	// Outputs
	wire tx;
	wire [7:0] led;
	wire [3:0] an;
	wire sseg;

	// Instantiate the Unit Under Test (UUT)
	pipeline uut (
		.clk100(clk100), 
		.btn(btn), 
		.rx(rx), 
		.tx(tx), 
		.led(led), 
		.an(an), 
		.sseg(sseg)
	);

	
	
	initial begin
		// Initialize Inputs
		clk100 = 0;
		btn = 0;
		rx = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
		// Initialize Inputs
		

	end
   always #5 clk100 = ~clk100;   
endmodule

