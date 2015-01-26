`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:38:13 01/26/2015 
// Design Name: 
// Module Name:    StageMEM 
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
module StageMEM(
input [31:0] inMemAddress, inMemWriteData,
input MemWrite,MemRead, clk,
output [31:0] outMemReadData
);

wire [31:0] tmp;
	DataMemoryMEM callDataMemoryMEM(
	.inMemAddress(inMemAddress),
	.inMemWriteData(inMemWriteData),
	.MemWrite(MemWrite),
	.MemRead(MemRead),
	.clk(clk),
	.outMemReadData(outMemReadData)
	);
endmodule
