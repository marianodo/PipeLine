`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:44:20 01/28/2015 
// Design Name: 
// Module Name:    MEM_WB_Latch 
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
module MEM_WB_Latch(
	input [31:0] inLoadWordDividerMEM, inAluLatch,
	input [4:0] inMuxRtRd,
   input inRegWrite,clk,
	input [1:0]inMemtoReg,
	
	output reg [31:0] outLoadWordDividerMEM,outAluLatch,
	output reg [4:0] outMuxRtRd,
	output outRegWrite,
	output [1:0] outMemtoReg
	);
reg outRegWritetmp;
reg [1:0] outMemtoRegtmp;

always @(posedge clk)
begin
	outLoadWordDividerMEM =inLoadWordDividerMEM;
	outAluLatch = inAluLatch;
	outMuxRtRd = inMuxRtRd;
	outRegWritetmp = inRegWrite;
	outMemtoRegtmp = inMemtoReg;
end
assign outRegWrite = outRegWritetmp;
assign outMemtoReg = outMemtoRegtmp;
endmodule
