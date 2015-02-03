`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:12:29 02/03/2015
// Design Name:   pipeline
// Module Name:   C:/Users/Nano/Google Drive/PipeLine/Test.v
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

	// Outputs
	wire [31:0] outMuxWb;

	// Instantiate the Unit Under Test (UUT)
	pipeline uut (
		.clk(clk), 
		.outMuxWb(outMuxWb)
	);

	initial begin
		// clock 1
clk = 0;
#100;      
clk = 1;
#100;
        
// clock 2
clk = 0;
#100;      
clk = 1;
#100;

// clock 3
clk = 0;
#100;      
clk = 1;
#100;

// clock 4
clk = 0;
#100;      
clk = 1;
#100;

// clock 5
clk = 0;
#100;      
clk = 1;
#100;

// clock 6
clk = 0;
#100;      
clk = 1;
#100;

// clock 7
clk = 0;
#100;      
clk = 1;
#100;

// clock 8
clk = 0;
#100;      
clk = 1;
#100;

	end
      
endmodule

