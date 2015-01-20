`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:36:42 01/19/2015
// Design Name:   pipeline
// Module Name:   D:/Facu/Arquitectura de Computadoras/pipeline/TestInstDecode.v
// Project Name:  pipeline
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

module TestInstDecode;

	// Inputs
	reg btn;
	reg btnSelect;
	reg btnWRselect;
	reg [31:0] jmpAddr;

	// Outputs
	wire [31:0] dataRs;
	wire [31:0] dataRt;

	// Instantiate the Unit Under Test (UUT)
	pipeline uut (
		.btn(btn), 
		.btnSelect(btnSelect), 
		.btnWRselect(btnWRselect), 
		.jmpAddr(jmpAddr), 
		.dataRs(dataRs), 
		.dataRt(dataRt)
	);

	initial begin
		// Initialize Inputs
		btn = 0;
		btnSelect = 0;
		btnWRselect = 0;
		jmpAddr = 0;

		// Wait 100 ns for global reset to finish
		#100;
      btn = 1;
		#100;
      btn = 0;
		
		#100;
      btn = 1;
		
		#100;
      btn = 0;
		
		#100;
      btn = 1;
		// Add stimulus here

	end
      
endmodule

