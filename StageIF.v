`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:32:44 01/20/2015 
// Design Name: 
// Module Name:    StageIF 
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
module StageIF(
	input clk,Branch,zeroAlu,Jump,
	input [31:0] outAddEx,
	output [31:0] outInstructionLatch,outPostPc
    );

wire [31:0] PcMux, Pc, PcMuxJump, PostPc,outInstruction; 
wire outAnd;
wire [31:0] outShiftIF;
	Pc callPc (
	.inPc(PcMuxJump),
	.clk(clk),
	.outPc(Pc)
	);

	addPc callAddPc (
	.inAddPc(Pc),
	.outAddPc(PostPc)
	);
	
	InstructionMem callInstruccionMem (
	.inInstructionMem(Pc), //Entrada
	.outInstruction(outInstruction)
	);
	
	ShiftIF callShiftIF( //Shift y concatena. Es para el Jump
	.inInstruction(outInstruction[25:0]),
	.inPostPc(PostPc),
	.outShiftIF(outShiftIF)
	);
	
	AndIF callAndIF( //And entre el branch del control y el Zero de la Alu
	.Branch(Branch),
	.zeroAlu(zeroAlu),
	.outAnd(outAnd)
	);
	
	muxPc callMuxPc (
	.inMuxAddPc(PostPc),
	.inMuxAddJmp(outAddEx), //Entrada al mux de la salida del add Ex
	.outAnd(outAnd),
	
	.outMuxPc(PcMux)
	);

	MuxJumpPc callMuxJumpPc(
	.inMuxJumpPc(outShiftIF), //Salida del shift del jump que tiene concatenado los 4 upper bit del PC
	.inMuxPc(PcMux), //Salida del Mux Pc
	.Jump(Jump),//-------------------------------------------------------------------PcMux----------
	.outMuxJumpPc(PcMuxJump) //PcMuxJump me define si es salida del Jump o de (algo normal o branch)
	);
	
	IF_ID_Latch callIF_ID_Latch(
	.clk(clk),
	.inInstruction(outInstruction),
	.inPc(PostPc),
	.outInstruction(outInstructionLatch),
	.outPc(outPostPc)
	);
endmodule
