`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:22:12 01/28/2015 
// Design Name: 
// Module Name:    EX_MEM_Latch 
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
module EX_MEM_Latch(
	input [31:0] inOutAlu,indataRt,inOutAddEx,
	input inZeroAlu,inRegWrite,inMemRead,inMemWrite,inBranch,clk,
	input [1:0] inMemtoReg,inflagStoreWordDividerMEM,
   input [4:0] inOutMuxRtRd,
	input [2:0] inflagLoadWordDividerMEM,
	
	output reg [31:0] outAlu, dataRt, outAddEx,
	output reg zeroAlu,outRegWrite,outMemRead,outMemWrite,outBranch,
	output reg [4:0] outMuxRtRd,
	output reg [1:0] outMemtoReg, outflagStoreWordDividerMEM,
	output reg [2:0] outflagLoadWordDividerMEM
		);

always @(posedge clk)
begin
	outAlu = inOutAlu;
	dataRt = indataRt;
	outAddEx = inOutAddEx;
	zeroAlu = inZeroAlu;
	outRegWrite = inRegWrite;
	outMemRead = inMemRead;
	outMemWrite = inMemWrite;
	outBranch = inBranch;
	outMuxRtRd = inOutMuxRtRd;
	outMemtoReg = inMemtoReg;
	outflagLoadWordDividerMEM=inflagLoadWordDividerMEM;
	outflagStoreWordDividerMEM=inflagStoreWordDividerMEM;
	
end

endmodule
