`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:06:28 02/09/2015
// Design Name:   DebugUnit
// Module Name:   C:/Users/Leo/Desktop/PipeLine/testDebug.v
// Project Name:  PipeLine
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: DebugUnit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testDebug;

	// Inputs
	reg clk;
	reg btn;
	reg rx;
	reg [31:0] inRegistro0;
	reg [31:0] inPc;

	// Outputs
	wire [7:0] rx_data_out_debug;
	wire tx;
	wire outStep;

	// Instantiate the Unit Under Test (UUT)
	DebugUnit uut (
		.clk(clk), 
		.btn(btn), 
		.rx(rx), 
		.inRegistro0(inRegistro0), 
		.inPc(inPc), 
		.rx_data_out_debug(rx_data_out_debug), 
		.tx(tx), 
		.outStep(outStep)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		btn = 0;
		rx = 0;
		inRegistro0 = 32'b0101111010111101011110101111;
		inPc = 0;

		// Wait 100 ns for global reset to finish
		#1000;
		// Add stimulus here
		// Initialize Inputs
		rx = 8'b01110011;

		// Wait 100 ns for global reset to finish
		#2000;
		rx = 0;
        
		// Add stimulus here

	end
      always #100 clk = ~clk;
      
endmodule

