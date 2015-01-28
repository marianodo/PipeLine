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
input [4:0] rs,rt,rd,
input [31:0] writeData,
input [15:0] immediate,
input RegWrite,
input [1:0] RegDst,
output [31:0] dataRs,dataRt, outImmediate
    );
wire [4:0] outMuxID;

	MuxID callMuxID(
	.rt(rt),
	.rd(rd),
	.RegDst(RegDst),
	.outMuxID(outMuxID)
	);
	
	InstDecode callInstDecode (
		.inInstDecodeRsReg(rs), //Entradas
		.inInstDecodeRtReg(rt),
		.inInstDecodeRdReg(outMuxID),
		.inInstDecodeWriteData(writeData),
		.WRInstDecode(RegWrite),
		.outInstDecodeRsReg(dataRs), //Salidas
		.outInstDecodeRtReg(dataRt)
		);
		
	SignExtend callSignExtend(
	.immediate(immediate),
	.outImmediate(outImmediate) //Salida Extendida
	);
		
endmodule
