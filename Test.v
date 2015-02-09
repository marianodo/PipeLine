`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:04:46 02/06/2015
// Design Name:   pipeline
// Module Name:   C:/Users/Nano/Desktop/PipeLine/Test.v
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
	reg clk;
	reg btn;
	reg rx;

	// Outputs
	wire tx;
	wire [7:0] led;

	// Instantiate the Unit Under Test (UUT)
	pipeline uut (
		.clk(clk), 
		.btn(btn), 
		.rx(rx), 
		.tx(tx), 
		.led(led)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rx = 1;
		btn = 1;
		// Wait 100 ns for global reset to finish
		#10000;
		// Bit de start  ---- ENVIO UNA C
//		rx = 0;
		
		#104640;
		btn = 0;
//		rx = 1;
		#104640;
		btn = 1;
//		rx = 1;
//		#104640;
//		rx = 0;
//		#104640;
//		rx = 0;
//		#104640;
//		rx = 0;
//		#104640;
//		rx = 0;
//		#104640;
//		rx = 1;
//		#104640;
//		rx = 0;
//		
//		// Bit stop
//		#104640;
//		rx = 1;
		
	

	
   end
	always
		#5 clk = ~clk;
	
      
endmodule

