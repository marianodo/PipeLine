`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:04:31 01/20/2015 
// Design Name: 
// Module Name:    StageEX 
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
module StageEX(
	input clk,
	input MemRead,MemWrite,ALUSrc,RegWrite,inEX_Flush,enable,
	input [1:0] RegDst,MemtoReg,ALUOp,inflagStoreWordDividerMEM,inForwardA,inForwardB,
	input [2:0] inflagLoadWordDividerMEM,
	input [5:0] instReg,
	input [31:0] inPc,dataRs,dataRt,signExt,inOutMuxWb,
	input [4:0] inRegRt,inRegRd,sa,
	
	output outMemRead,outMemWrite,outRegWrite,
	output [31:0] outAlu,outDataRt,
	output [4:0] outMuxRtRd,
   output [1:0] outMemtoReg, outflagStoreWordDividerMEM,
	output [2:0] outflagLoadWordDividerMEM
	
 );

wire [31:0] outMuxEx,outAddExTmp,outAluTmp,outMuxForwardA,outMuxForwardB;

wire [4:0] outMuxRtRdTmp;
	
	
	
	MuxExForwardA callMuxExForwardA(
	.inDataRs(dataRs),
	.inMuxWb(inOutMuxWb),
	.inOutAlu(outAlu), //Entrada de la Salida del latch EX/MEM (corto circuito)
	.inForwardA(inForwardA),
	
	.outMuxForwardA(outMuxForwardA) //Salida que es entrada de la Alu (antes era el dataRs)
	);
	
	MuxExForwardB callMuxExForwardB(
	.inDataRt(dataRt),
	.inSignExt(signExt),
	.inMuxWb(inOutMuxWb),
	.inOutAlu(outAlu), //Entrada de la Salida del latch EX/MEM (corto circuito)
	.inForwardB(inForwardB),
	.ALUSrc(ALUSrc),
	
	.outMuxForwardB(outMuxForwardB) //Salida que es entrada de la Alu (antes era el dataRs)
	);

	

	MuxRtRd callMuxRtRd( //Mux para decidir entre Rt o Rd en el WriteReg del instDecode
	.RegDst(RegDst),
	.rt(inRegRt),
	.rd(inRegRd),
	
	.outMuxRtRd(outMuxRtRdTmp)
	);
	
	AluEX callAluEx(
	.ALUOp(ALUOp),
	.inOutMuxForwardA(outMuxForwardA),
	.inOutMuxForwardB(outMuxForwardB),
	.instReg(instReg),
	.sa(sa),
	
	.outAlu(outAluTmp)
	
	);
	
	EX_MEM_Latch callEX_MEM_Latch(
	.clk(clk),
	.inOutAlu(outAluTmp),
	.indataRt(dataRt),
	.inOutMuxRtRd(outMuxRtRdTmp),
	.inMemtoReg(MemtoReg),
	.inRegWrite(RegWrite),
	.inMemRead(MemRead),
	.inMemWrite(MemWrite),
	.inflagLoadWordDividerMEM(inflagLoadWordDividerMEM),
	.inflagStoreWordDividerMEM(inflagStoreWordDividerMEM),
	.inEX_Flush(inEX_Flush),
	.enable(enable),
	
	.outAlu(outAlu),
	.dataRt(outDataRt),
	.outMuxRtRd(outMuxRtRd),
	.outMemtoReg(outMemtoReg),
	.outRegWrite(outRegWrite),
	.outMemRead(outMemRead),
	.outMemWrite(outMemWrite),
	.outflagLoadWordDividerMEM(outflagLoadWordDividerMEM),
	.outflagStoreWordDividerMEM(outflagStoreWordDividerMEM)
	);
endmodule
