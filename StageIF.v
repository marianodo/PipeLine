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
	input inBtn,
	output [4:0] rd,rs,rt,sa,
	output [5:0] instReg
    );

wire [3:0] PcMux, Pc, PostPc;

	Pc callPc (
	.inPc(PcMux),
	.outPc(Pc)
	);

	addPc callAddPc (
	.btn(inBtn),
	.inAddPc(Pc),
	.outAddPc(PostPc)
	);
	
	InstructionMem callInstruccionMem (
	.inInstructionMem(Pc), //Entrada
	.rsReg(rs), //Salidas
	.rtReg(rt),
	.rdReg(rd),
	.saReg(sa),
	.instRreg(instReg)
	);
	muxPc callMuxPc (
	.inMuxAddPc(PostPc),
	.inMuxAddJmp(jmpAddr),
	.select(btnSelect),
	.outMuxPc(PcMux)
	);


endmodule
