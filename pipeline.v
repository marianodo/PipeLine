`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Facultad Ciencias Exactas, Físicas y Naturaes
// Future Engineer: Juan, Leandro y Dominguz Mariano
// 
// Create Date:    14:39:20 01/16/2015 
// Design Name: 	Proyecto Final Arquitectura
// Module Name:    pipeline 
// Project Name:  Pipeline
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies:  De internet
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module pipeline(
input btn,
input wire btnSelect,
input wire [7:0] jmpAddr,
output [7:0] led 
  );
parameter tam = 8;

// s i g n a l s
wire [tam-1:0] PostPc;
wire [7:0] Pc;
wire [tam-1:0] PcMux;
reg select = 0; 
reg [7:0] pcJmp;


// i n s t a n t i a t i o n s
	muxPc callMuxPc (
	.inMuxAddPc(PostPc),
	.inMuxAddJmp(jmpAddr),
	.select(btnSelect),
	.outMuxPc(PcMux)
	);

	program callPc (
	.inPc(PcMux),
	.outPc(Pc)
	);

	InstructionMem callInstruccionMem (
	.inInstructionMem(Pc),
	.outInstructionMem(led)
	);
	
	addPc callAddPc (
	.btn(btn),
	.inAddPc(Pc),
	.outAddPc(PostPc)
	);



endmodule
