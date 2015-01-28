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
input clk,inBranch,inMemRead,inMemWrite,inALUSrc,inRegWrite,inflagBranch,inJump,
input [31:0] inPc,dataRs,dataRt,inSignExtend,
input [4:0] inRegRt,inRegRd,
input [1:0] inRegDst,inMemtoReg,inALUOp,inflagStoreWordDividerMEM,
input [2:0] inflagLoadWordDividerMEM,
input [5:0] inoutFunction,	

output reg [31:0] outPcLatch,outDataRs,outDataRt,outImmediateLatch,
output reg [4:0] outRegRt,outRegRd,
output reg [2:0] flagLoadWordDividerMEM,
output reg [1:0] RegDst,MemtoReg,ALUOp,flagStoreWordDividerMEM,
output reg Branch,MemRead,MemWrite,ALUSrc,RegWrite,flagBranch,Jump,
output reg [5:0] outFunction
    );


always @(negedge clk)
begin
	Branch=inBranch;
	MemRead=inMemRead;
	MemWrite=inMemWrite;
	ALUSrc=inALUSrc;
	RegWrite=inRegWrite;
	flagBranch=inflagBranch;
	Jump=inJump;
	outPcLatch=inPc;
	outDataRs=dataRs;
	outDataRt=dataRt;
	outImmediateLatch=inSignExtend;
	outRegRt=inRegRt;
	outRegRd=inRegRd;
	RegDst=inRegDst;
	MemtoReg=inMemtoReg;
	ALUOp=inALUOp;
	flagLoadWordDividerMEM=inflagLoadWordDividerMEM;
	flagStoreWordDividerMEM=inflagStoreWordDividerMEM;
	outFunction=inoutFunction;
end

endmodule
