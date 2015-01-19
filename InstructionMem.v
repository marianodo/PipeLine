`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:46:26 01/19/2015 
// Design Name: 
// Module Name:    InstructionMem 
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
module InstructionMem # (parameter tam=8)(
input [tam-1:0] inInstructionMem,
output reg [tam-1:0] outInstructionMem
    );

reg [tam-1:0] memory[0:5];
initial
begin
	memory[0] <= 3;
	memory[1] <= 9;
	memory[2] <= 6;
	memory[3] <= 5;
	memory[4] <= 15;
	memory[5] <= 10;
end

always @(inInstructionMem)
begin
	outInstructionMem <= memory[inInstructionMem];
end
endmodule
