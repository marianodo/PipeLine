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
	input clk,Branch,zeroAlu,
	input [31:0] outAddEx,
	output [31:0] outInstruction,
	output [3:0] PostPc
    );

wire [3:0] PcMux, Pc;
wire outAnd;

	Pc callPc (
	.inPc(PcMux),
	.outPc(Pc)
	);

	addPc callAddPc (
	.clk(clk),
	.inAddPc(Pc),
	.outAddPc(PostPc)
	);
	
	InstructionMem callInstruccionMem (
	.inInstructionMem(Pc), //Entrada
	.outInstruction(outInstruction)
	);
	
	AndIF callAndIF( //And entre el branch del control y el Zero de la Alu
	.Branch(Branch),
	.zeroAlu(zeroAlu),
	.outAnd(outAnd)
	);
	
	muxPc callMuxPc (
	.inMuxAddPc(PostPc),
	.inMuxAddJmp(outAddEx), //Entrada al mux de la salida del add Ex
	.select(outAnd),
	.outMuxPc(PcMux)
	);


endmodule
