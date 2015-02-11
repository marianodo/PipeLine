`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:00:37 02/09/2015
// Design Name:   Fifo
// Module Name:   C:/Users/Leo/Desktop/PipeLine/testFSM.v
// Project Name:  PipeLine
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Fifo
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testFSM;

	// Inputs
	reg clk;
	reg rd;
	reg [31:0] register_0_id_out;

	// Outputs
	wire flagTx;
	wire [7:0] r_data;

	// Instantiate the Unit Under Test (UUT)
	Fifo uut (
		.clk(clk), 
		.rd(rd), 
		.register_0_id_out(register_0_id_out), 
		.flagTx(flagTx), 
		.r_data(r_data)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		rd = 0;
		register_0_id_out = 32'b0101111010111101011110101111;

		// Wait 100 ns for global reset to finish
		#100;
		rd = 1;
        
		// Add stimulus here

	end
      always #100 clk = ~clk;
endmodule

