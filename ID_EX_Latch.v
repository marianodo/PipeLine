`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:41:18 01/28/2015 
// Design Name: 
// Module Name:    ID_EX_Latch 
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
module ID_EX_Latch(
input clk,inMemRead,inMemWrite,inALUSrc,inRegWrite,inoutBranch,inPCSrc,
input [31:0] inPc,dataRs,dataRt,inSignExtend,inoutAddBranch,
input [4:0] inRegRt,inRegRd,inRegRs,
input [1:0] inRegDst,inMemtoReg,inALUOp,inflagStoreWordDividerMEM,
input [2:0] inflagLoadWordDividerMEM,
input [5:0] inoutFunction,	

output reg [31:0] outPcLatch,outImmediateLatch,
output reg [4:0] outRegRt,outRegRd,outRegRs,
output reg [2:0] flagLoadWordDividerMEM,
output reg [1:0] RegDst,MemtoReg,ALUOp,flagStoreWordDividerMEM,
output reg MemRead,MemWrite,ALUSrc,RegWrite,Branch,outPCSrc,
output reg [5:0] outFunction,
output reg [31:0] outDataRs,outDataRt,outAddBranch
    );

wire [31:0] outDataRsTmp, outDataRtTmp; 
always @(posedge clk)
begin
	Branch = inoutBranch;
	MemRead = inMemRead;
	MemWrite = inMemWrite;
	ALUSrc = inALUSrc;
	RegWrite = inRegWrite;
	outPcLatch = inPc;
	outDataRs <= dataRs;
	outDataRt <= dataRt;
	outImmediateLatch = inSignExtend;
	outRegRt = inRegRt;
	outRegRd = inRegRd;
	outRegRs = inRegRs;
	RegDst = inRegDst;
	MemtoReg = inMemtoReg;
	ALUOp = inALUOp;
	flagLoadWordDividerMEM = inflagLoadWordDividerMEM;
	flagStoreWordDividerMEM = inflagStoreWordDividerMEM;
	outFunction = inoutFunction;
	outAddBranch = inoutAddBranch;
	outPCSrc = inPCSrc;
end

endmodule
