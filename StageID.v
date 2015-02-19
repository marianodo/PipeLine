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
input clk, inRegWrite, inStall,ForwardAD,ForwardBD,enable,
input [4:0] rs,rt,rd,writeReg,sa,
input [5:0] opCode, inFunction,
input [31:0] writeData, inPc,AluOut_EX_MEM,
input [15:0] immediate,

output  Branch,MemRead,MemWrite,ALUSrc,RegWrite,Jump,PCSrc,
output  [1:0] ALUOp, MemtoReg, RegDst,
output  [2:0] flagLoadWordDividerMEM,
output  [1:0] flagStoreWordDividerMEM, 
output  [31:0] outPcLatch, outDataRs,outDataRt,outImmediateLatch,outAddBranch,
output  [4:0] outRegRt,outRegRd,outRegRs,outSa,
output  [5:0] Function,

//Salida de los Registros hacia la Uart
output  [31:0] Registro0,
output  [31:0] Registro1,
output  [31:0] Registro2,
output  [31:0] Registro3,
output  [31:0] Registro4,
output  [31:0] Registro5,
output  [31:0] Registro6,
output  [31:0] Registro7,
output  [31:0] Registro8,
output  [31:0] Registro9,
output  [31:0] Registro10,
output  [31:0] Registro11,
output  [31:0] Registro12,
output  [31:0] Registro13,
output  [31:0] Registro14,
output  [31:0] Registro15,
output  [31:0] Registro16,
output  [31:0] Registro17,
output  [31:0] Registro18,
output  [31:0] Registro19,
output  [31:0] Registro20,
output  [31:0] Registro21,
output  [31:0] Registro22,
output  [31:0] Registro23,
output  [31:0] Registro24,
output  [31:0] Registro25,
output  [31:0] Registro26,
output  [31:0] Registro27,
output  [31:0] Registro28,
output  [31:0] Registro29,
output  [31:0] Registro30,
output  [31:0] Registro31
    );
	 

wire [31:0] dataRs,dataRt, outImmediate,DataAEq,DataBEq,outShift, outAddBranchtmp;
wire outBranch,outMemRead,outMemWrite,outALUSrc,outRegWrite,outflagBranch;
wire [1:0] outALUOp, outMemtoReg, outRegDst;
wire [2:0] outflagLoadWordDividerMEM;
wire [1:0] outflagStoreWordDividerMEM;
wire [5:0] outFunction;

	ControlUnit callControlUnit(
	.clk(clk),
	.inOpcode(opCode), //Entrada de Opcode
	.inFunction(inFunction),
	.inStall(inStall),
	
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
	.Jump(Jump)
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
		.outInstDecodeRtReg(dataRt),
		.Registro0(Registro0),
		.Registro1(Registro1), 
		.Registro2(Registro2), 
		.Registro3(Registro3), 
		.Registro4(Registro4), 
		.Registro5(Registro5), 
		.Registro6(Registro6), 
		.Registro7(Registro7), 
		.Registro8(Registro8), 
		.Registro9(Registro9), 
		.Registro10(Registro10), 
		.Registro11(Registro11), 
		.Registro12(Registro12), 
		.Registro13(Registro13), 
		.Registro14(Registro14), 
		.Registro15(Registro15), 
		.Registro16(Registro16), 
		.Registro17(Registro17), 
		.Registro18(Registro18), 
		.Registro19(Registro19), 
		.Registro20(Registro20), 
		.Registro21(Registro21), 
		.Registro22(Registro22), 
		.Registro23(Registro23), 
		.Registro24(Registro24), 
		.Registro25(Registro25), 
		.Registro26(Registro26), 
		.Registro27(Registro27), 
		.Registro28(Registro28), 
		.Registro29(Registro29), 
		.Registro30(Registro30), 
		.Registro31(Registro31)
		);
		
	MuxDataA_ALU callMuxDataA_ALU( //Mux entre la salida del dato A y la salida de la ALU
	.inDataRs(dataRs),
	.inAluOut_EX_MEM(AluOut_EX_MEM),
	.inForwardAD(ForwardAD),
	
	.outDataAEq(DataAEq) // Dato de la salida del mux entre dato A y la ALU
	);
	
	MuxDataB_ALU callMuxDataB_ALU( //Mux entre la salida del dato A y la salida de la ALU
	.inDataRt(dataRt),
	.inAluOut_EX_MEM(AluOut_EX_MEM),
	.inForwardBD(ForwardBD),
	
	.outDataBEq(DataBEq) // Dato de la salida del mux entre dato A y la ALU
	);
	
	EqualBranch callEqualBranch(
	.inBranch(outBranch), //Para saber si hace el branch
	.inflagBranch(outflagBranch), // Para saber que tipo de Branch...BEQ o BNE
	.inDataAEq(DataAEq), //Datos elegido entre Dato Rs o Alu EX_MEM
	.inDataBEq(DataBEq),
	
	.outPCSrc(PCSrc)
	
	);
	
	SignExtend callSignExtend(
	.immediate(immediate),
	
	.outImmediate(outImmediate) //Salida Extendida
	);
	
	ShiftID callShiftID(
	.signExt(outImmediate), //Enrtada
	
	.outShift(outShift)
	);
	
	AddID callAddID(
	.PostPc(inPc), //Entrada
	.outShift(outShift), //Entrada
	
	.outAddId(outAddBranch) //Salida que va a ser entrada del mux en el PC, para saber si es brunch o no
	);
	ID_EX_Latch callID_EX_Latch(
	.inoutBranch(outBranch),
	.clk(clk),
	.inPc(inPc),
	.dataRs(dataRs),
	.dataRt(dataRt),
	.inSignExtend(outImmediate),
	.inRegRt(rt),
	.inRegRd(rd),
	.inRegRs(rs),
	.inSa(sa),
	.inRegDst(outRegDst), //entradas que vienen del control unit
	.inMemRead(outMemRead),
	.inMemtoReg(outMemtoReg),
	.inALUOp(outALUOp),
	.inMemWrite(outMemWrite),
	.inALUSrc(outALUSrc),
	.inRegWrite(outRegWrite),
	.inflagLoadWordDividerMEM(outflagLoadWordDividerMEM),
	.inflagStoreWordDividerMEM(outflagStoreWordDividerMEM),
	.inoutFunction(outFunction),
	.enable(enable),
	
	.outPcLatch(outPcLatch),
	.outDataRs(outDataRs),
	.outDataRt(outDataRt),
	.outImmediateLatch(outImmediateLatch),
	.outRegRt(outRegRt),
	.outRegRd(outRegRd),
	.outRegRs(outRegRs),
	.outSa(outSa), //Salida del shift
	.RegDst(RegDst), //salidas referentes al control unit
	.MemRead(MemRead),
	.MemtoReg(MemtoReg),
	.ALUOp(ALUOp),
	.MemWrite(MemWrite),
	.ALUSrc(ALUSrc),
	.RegWrite(RegWrite),
	.flagLoadWordDividerMEM(flagLoadWordDividerMEM),
	.flagStoreWordDividerMEM(flagStoreWordDividerMEM),
	.outFunction(Function),
	.Branch(Branch)
	
	
	);
		
endmodule
