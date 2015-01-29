`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:49:34 01/20/2015 
// Design Name: 
// Module Name:    StageID 
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
module StageID(
input clk, inRegWrite,
input [4:0] rs,rt,rd,writeReg,
input [5:0] opCode, inFunction,
input [31:0] writeData, inPc,
input [15:0] immediate,

output  Branch,MemRead,MemWrite,ALUSrc,RegWrite,flagBranch,Jump,
output  [1:0] ALUOp, MemtoReg, RegDst,
output  [2:0] flagLoadWordDividerMEM,
output  [1:0] flagStoreWordDividerMEM, 
output  [31:0] outPcLatch, outDataRs,outDataRt,outImmediateLatch,
output  [4:0] outRegRt,outRegRd,outRegRs,
output  [5:0] Function
    );
	 

wire [31:0] dataRs,dataRt, outImmediate;
wire outBranch,outMemRead,outMemWrite,outALUSrc,outRegWrite,outflagBranch,outJump;
wire [1:0] outALUOp, outMemtoReg, outRegDst;
wire [2:0] outflagLoadWordDividerMEM;
wire [1:0] outflagStoreWordDividerMEM;
wire [5:0] outFunction;

	ControlUnit callControlUnit(
	.clk(clk),
	.inOpcode(opCode), //Entrada de Opcode
	.inFunction(inFunction),
	
	.RegDst(outRegDst), //Salidas
	.Branch(outBranch),
	.MemRead(outMemRead),
	.MemtoReg(outMemtoReg),
	.ALUOp(outALUOp),
	.MemWrite(outMemWrite),
	.ALUSrc(outALUSrc),
	.RegWrite(outRegWrite),
	.flagLoadWordDividerMEM(outflagLoadWordDividerMEM),
	.flagStoreWordDividerMEM(outflagStoreWordDividerMEM),
	.outFunction(outFunction),
	.flagBranch(outflagBranch),
	.Jump(outJump)
	);
	
//	MuxID callMuxID(
//	.rt(rt),
//	.rd(rd),
//	.RegDst(RegDst),
//	.outMuxID(outMuxID)
//	);
	
	InstDecode callInstDecode (
		.inInstDecodeRsReg(rs), //Entradas
		.inInstDecodeRtReg(rt),
		.inInstDecodeWriteReg(writeReg), //entrada que viene del ultimo latch
		.inInstDecodeWriteData(writeData),
		.RegWrite(inRegWrite),
		
		.outInstDecodeRsReg(dataRs), //Salidas
		.outInstDecodeRtReg(dataRt)
		);
		
	SignExtend callSignExtend(
	.immediate(immediate),
	
	.outImmediate(outImmediate) //Salida Extendida
	);
	
	ID_EX_Latch callID_EX_Latch(
	.clk(clk),
	.inPc(inPc),
	.dataRs(dataRs),
	.dataRt(dataRt),
	.inSignExtend(outImmediate),
	.inRegRt(rt),
	.inRegRd(rd),
	.inRegRs(rs),
	.inRegDst(outRegDst), //entradas que vienen del control unit
	.inBranch(outBranch),
	.inMemRead(outMemRead),
	.inMemtoReg(outMemtoReg),
	.inALUOp(outALUOp),
	.inMemWrite(outMemWrite),
	.inALUSrc(outALUSrc),
	.inRegWrite(outRegWrite),
	.inflagLoadWordDividerMEM(outflagLoadWordDividerMEM),
	.inflagStoreWordDividerMEM(outflagStoreWordDividerMEM),
	.inoutFunction(outFunction),
	.inflagBranch(outflagBranch),
	.inJump(outJump),
	

	.outPcLatch(outPcLatch),
	.outDataRs(outDataRs),
	.outDataRt(outDataRt),
	.outImmediateLatch(outImmediateLatch),
	.outRegRt(outRegRt),
	.outRegRd(outRegRd),
	.outRegRs(outRegRs),
	.RegDst(RegDst), //salidas referentes al control unit
	.Branch(Branch),
	.MemRead(MemRead),
	.MemtoReg(MemtoReg),
	.ALUOp(ALUOp),
	.MemWrite(MemWrite),
	.ALUSrc(ALUSrc),
	.RegWrite(RegWrite),
	.flagLoadWordDividerMEM(flagLoadWordDividerMEM),
	.flagStoreWordDividerMEM(flagStoreWordDividerMEM),
	.outFunction(Function),
	.flagBranch(flagBranch),
	.Jump(Jump)
	);
		
endmodule
