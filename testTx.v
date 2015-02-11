`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:13:32 02/09/2015
// Design Name:   UartTx
// Module Name:   C:/Users/Leo/Desktop/PipeLine/testTx.v
// Project Name:  PipeLine
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: UartTx
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testTx;

	// Inputs
	reg clk;
	reg tx_start;
	reg s_tick;
	reg [7:0] data_in;

	// Outputs
	wire tx_done_tick;
	wire tx;

	// Instantiate the Unit Under Test (UUT)
	UartTx uut (
		.clk(clk), 
		.tx_start(tx_start), 
		.s_tick(s_tick), 
		.data_in(data_in), 
		.tx_done_tick(tx_done_tick), 
		.tx(tx)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		tx_start = 0;
		s_tick = 0;
		data_in = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
		always #100 clk = ~clk;
endmodule

