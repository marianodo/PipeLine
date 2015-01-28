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
input clk, RegWrite,
input [4:0] rs,rt,rd,
input [5:0] opCode, inFunction,
input [31:0] writeData,writeReg, inPc,
input [15:0] immediate,

output reg Branch,MemRead,MemWrite,ALUSrc,RegWrite,flagBranch,Jump,
output reg [1:0] ALUOp, MemtoReg, RegDst,
output reg [2:0] flagLoadWordDividerMEM,
output reg [1:0] flagStoreWordDividerMEM, 
output reg [31:0] outPcLatch, outDataRs,outDataRt,outImmediateLatch,
output reg [4:0] outRegRt,outRegRd
    );
	 
wire [4:0] outMuxID;
wire [31:0] dataRs,dataRt, outImmediate;
wire Branch,MemRead,MemWrite,ALUSrc,RegWrite,flagBranch,Jump;
wire [1:0] ALUOp, MemtoReg, RegDst;
wire [2:0] flagLoadWordDividerMEM;
wire [1:0] flagStoreWordDividerMEM;
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
		.inInstDecodeWriteReg(), //entrada que viene del ultimo latch
		.inInstDecodeWriteData(writeData),
		.WRInstDecode(RegWrite),
		
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
