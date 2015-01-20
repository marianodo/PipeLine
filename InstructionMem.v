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
module InstructionMem # (parameter tam=32)(
input [3:0] inInstructionMem,
output reg [4:0] rsReg, rtReg, rdReg, saReg,
output reg [5:0] instRreg
    );

reg [tam-1:0] memory[0:15];
reg [5:0] opCode;

initial
begin
//----------------opcode---rd----rs----rt----sa----Func--
	memory[0] = 32'b000000_00001_00011_00010_00000_100001;
	memory[1] = 32'b000000_00010_00101_01100_00000_100001;
	memory[2] <= 6;
	memory[3] <= 5;
	memory[4] <= 15;
	memory[5] <= 4294967293;
	memory[6] <= 5;
	memory[7] <= 15;
	memory[8] <= 4294967293;
	memory[9] <= 5;
	memory[10] <= 15;
	memory[11] <= 4294967293;
	memory[12] <= 5;
	memory[13] <= 15;
	memory[14] <= 4294967293;
	memory[9] <= 5;
	memory[15] <= 15;
	
	
	rsReg = 0;
	rtReg = 0;
	rdReg = 0;
	saReg = 0;
	instRreg = 0;
end

always @(*)
begin

opCode <= memory[inInstructionMem][31:26];
	if(opCode == 0)
		begin
			rdReg <= memory[inInstructionMem][25:21];
			rsReg <= memory[inInstructionMem][20:16];
			rtReg <= memory[inInstructionMem][15:11];
			saReg <= memory[inInstructionMem][10:6];
			instRreg <= memory[inInstructionMem][5:0];
		end
	else
		rdReg <= memory[inInstructionMem][25:21];
		rsReg <= memory[inInstructionMem][20:16];
		rtReg <= memory[inInstructionMem][15:11];
		saReg <= memory[inInstructionMem][10:6];
		instRreg <= memory[inInstructionMem][5:0];
	
	
end
endmodule
