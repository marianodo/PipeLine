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
input [31:0] inPc,
input clk,
output  [31:0] outPc
    );
reg [31:0] tmpPc = 0;


always @(negedge clk)
	begin
		tmpPc = inPc;
	end
	
assign outPc = tmpPc;
endmodule
