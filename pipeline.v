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
input wire btnWRselect,
input wire [3:0] jmpAddr,
output [31:0] dataRd,
output [31:0] dataRt 
  );
parameter tam = 8;

// s i g n a l s
wire [3:0] PostPc;
wire [3:0] Pc;
wire [3:0] PcMux;
wire [4:0] rs;
wire [4:0] rd;
wire [4:0] rt;
wire [4:0] sa;
wire [5:0] instReg;
wire [31:0] writeData;
//wire wdSelect;
//wire [31:0] dataRd, dataRt;
reg select = 0; 
reg [31:0] pcJmp;


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

	addPc callAddPc (
	.btn(btn),
	.inAddPc(Pc),
	.outAddPc(PostPc)
	);
	
	InstructionMem callInstruccionMem (
	.inInstructionMem(Pc),
	.rsReg(rs),
	.rtReg(rt),
	.rdReg(rd),
	.saReg(sa),
	.instRreg(instReg)
	);
	
	
	InstDecode callInstDecode (
	.inInstDecodeRsReg(rs),
	.inInstDecodeRtReg(rt),
	.inInstDecodeRdReg(rd),
	.inInstDecodeWriteData(writeData),
	.WRInstDecode(btnWRselect),
	.outInstDecodeRtReg(dataRt),
	.outInstDecodeRdReg(dataRd)
	);
	
	
	

	
	


endmodule
