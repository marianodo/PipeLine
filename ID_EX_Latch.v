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
input [1:0] inRegDst,inMemtoReg,inALUOp,inflagLoadWordDividerMEM,inflagStoreWordDividerMEM,
input [5:0] inoutFunction,	

output reg [31:0] outPcLatch,outDataRs,outDataRt,outImmediateLatch,
output reg [4:0] outRegRt,outRegRd,
output reg [1:0] RegDst,MemtoReg,ALUOp,flagLoadWordDividerMEM,flagStoreWordDividerMEM,
output reg Branch,MemRead,MemWrite,ALUSrc,RegWrite,flagBranch,Jump,
output reg [5:0] outFunction
    );


always @(negedge clk)
begin
	inBranch=Branch;
	inMemRead=MemRead;
	inMemWrite=MemWrite;
	inALUSrc=ALUSrc;
	inRegWrite=RegWrite;
	inflagBranch=flagBranch;
	inJump=Jump;
	inPc=outPcLatch;
	dataRs=outDataRs;
	dataRt=outDataRt;
	inSignExtend=outImmediateLatch;
	inRegRt=outRegRt;
	inRegRd=outRegRd;
	inRegDst=RegDst;
	inMemtoReg=MemtoReg;
	inALUOp=ALUOp;
	inflagLoadWordDividerMEM=flagLoadWordDividerMEM;
	inflagStoreWordDividerMEM=flagStoreWordDividerMEM;
	inoutFunction=outFunction;
end

endmodule
