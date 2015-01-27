`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:45:02 01/27/2015 
// Design Name: 
// Module Name:    ShiftIF 
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
module ShiftIF(
	input [25:0] inInstruction,
	input [31:0] inPostPc,
	output [31:0] outShiftIF
    );
reg [31:0] tmpOutShift = 0;
reg [25:0] tmpInInstruction = 0;
always @(*)
	begin
		tmpInInstruction = inInstruction * 1;
		tmpOutShift[31:28] = inPostPc[31:28];
		tmpOutShift[27:2] = tmpInInstruction;
		outShift = tmpOutShift;
	end
endmodule
