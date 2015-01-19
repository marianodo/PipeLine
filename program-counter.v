`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:42:18 01/16/2015 
// Design Name: 
// Module Name:    program-counter 
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
module program # (parameter tam=8)(
input [tam-1:0] inPc,
output reg [tam-1:0] outPc
    );
initial
	begin
		outPc <= 0;

	end
always @(inPc)
	begin
		outPc = inPc;
	end
endmodule
