`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:30:35 01/20/2015 
// Design Name: 
// Module Name:    SignExtend 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module SignExtend(
input [15:0] immediate,
output reg [31:0] outImmediate
    );
initial
	begin
		outImmediate = 0;
	end

	always @(*)
	begin
		if(immediate[15] == 1'b0)
			outImmediate = immediate & 32'b00000000_00000000_11111111_11111111;
		else
			outImmediate = immediate | 32'b11111111_11111111_00000000_00000000;
	end

endmodule
