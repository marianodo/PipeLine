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
	input [31:0] readRt, signExt, readRs,PostPc,
	input [4:0] sa,
	input [5:0] instReg, 
	input ALUSrc, flagBranch,
	input [1:0] ALUOp,
	output [31:0] outAlu,
	output zeroAlu,
	output [31:0] outAddEx
    );

wire [31:0] outMuxEx, outShift;


	ShiftEX callShiftEX(
	.signExt(signExt), //Enrtada
	.outShift(outShift)
	);
	
	AddEX callAddEX(
	.PostPc(PostPc), //Entrada
	.outShift(outShift), //Entrada
	.outAddEx(outAddEx) //Salida
	);

	MuxEX callMuxEX(
	.ALUSrc(ALUSrc),
	.readRt(readRt),
	.signExt(signExt),
	.outMuxEx(outMuxEx)
	);

	AluEX callAluEx(
	.flagBranch(flagBranch),
	.ALUOp(ALUOp),
	.readRs(readRs),
	.outMuxEx(outMuxEx), //Entrada de la alu, conectada a la salida del mux
	.instReg(instReg),
	.sa(sa),
	.outAlu(outAlu),
	.zeroAlu(zeroAlu)
	);
endmodule
