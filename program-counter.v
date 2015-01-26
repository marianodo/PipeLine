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
module Pc # (parameter tam=8)(
input [3:0] inPc,
input clk,
output  [3:0] outPc
    );
reg [3:0] tmpPc;
initial
	begin
		tmpPc <= 0;
	end
always @(negedge clk)
	begin
		tmpPc = inPc;
	end
	
assign outPc = tmpPc;
endmodule
