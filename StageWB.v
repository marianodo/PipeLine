`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:47:33 01/20/2015 
// Design Name: 
// Module Name:    StageWB 
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
module StageWB(
	input [1:0] MemtoReg,
	input [31:0] readDataMem, outAlu, currentPC,
	output [31:0] outMuxWb
    );
	 
	MuxWB callMuxWB(
	.MemtoReg(MemtoReg),
	.readDataMem(readDataMem),
	.currentPC(currentPC), //este es el PC que se guarda en el registro (ra) para instruccion JAL
	.outAlu(outAlu),
	.outMuxWb(outMuxWb)
	);

endmodule
