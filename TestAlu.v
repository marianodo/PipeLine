`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:49:52 01/20/2015
// Design Name:   pipeline
// Module Name:   C:/Users/Nano/Desktop/PipeLine/TestAlu.v
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

module TestAlu;

	// Inputs
	reg btn;
	reg btnSelect;
	reg btnWRselect;
	reg btnMuxEx;
	reg [3:0] jmpAddr;

	// Outputs
	wire zeroAlu;
	wire [31:0] outAlu;

	// Instantiate the Unit Under Test (UUT)
	pipeline uut (
		.btn(btn), 
		.btnSelect(btnSelect), 
		.btnWRselect(btnWRselect), 
		.btnMuxEx(btnMuxEx), 
		.jmpAddr(jmpAddr), 
		.zeroAlu(zeroAlu), 
		.outAlu(outAlu)
	);

	initial begin
		// Initialize Inputs
		btn = 0;
		btnSelect = 0;
		btnWRselect = 0;
		btnMuxEx = 0;
		jmpAddr = 0;

		// Wait 100 ns for global reset to finish
		#100;
      btn = 1;
		
		#100;
      btn = 0;
		
		#100;
      btn = 1;
		
		// Add stimulus here

	end
      
endmodule

