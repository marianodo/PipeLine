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
	input [3:0] inPostPc,
	output [25:0] outShiftIF
    );

tmp = inInstruction * 1;
tmp2 = tmp + inPostPc;
outshiftif = tmp2[0:3];
endmodule
