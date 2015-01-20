`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:54:01 01/20/2015 
// Design Name: 
// Module Name:    AndIF 
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
module AndIF(
	input Branch, zeroAlu,
	output reg outAnd
    );
initial
begin
	outAnd = 0;
end

always @(*)
begin
	outAnd = Branch & zeroAlu;
end

endmodule
