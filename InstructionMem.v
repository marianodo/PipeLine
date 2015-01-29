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
input [31:0] inInstructionMem, // Es el PC
output [31:0] outInstruction
    );

reg [tam-1:0] memory[0:31];
reg [31:0] tmp = 0;

initial
begin
//----------------opcode---rs----rt----rd----sa----Func--
//-------------------------------5------4---------------
	memory[0] = 32'b000000_00000_00000_00000_00000_000000;
	memory[1] = 32'b000000_00001_00010_00011_00000_100001; // registro 0 + registro 1 = registro 2
	//-----------------------------15----3--------------
//	memory[1] = 32'b000000_00000_00000_00000_00000_000000; //Registro 0 + numero 2 = registro 3
//	memory[2] = 32'b000000_00000_00000_00000_00000_000000; // Los ultimos 16 bit aparecen en los primeros 16 del reg 4
//	memory[3] = 32'b000000_00000_00000_00000_00000_000000; // Store del registro 3 lo guarda en mem 1
//	memory[4] = 32'b000000_00000_00000_00000_00000_000000; // Load de la mem 1 en reg 5
//	memory[5] = 32'b101011_00101_00011_00000_00000_000000;
//	memory[6] <= 32'b001001_00000_00011_00000_00000_000010; 
//	memory[7] <= 15;
//	memory[8] <= 4294967293;
//	memory[9] <= 5;
//	memory[10] <= 15;
//	memory[11] <= 4294967293;
//	memory[12] <= 5;
//	memory[13] <= 15;
//	memory[14] <= 4294967293;
//	memory[15] <= 15;
	
	
	
end

always @(*)
begin

	tmp = memory[inInstructionMem];
end
assign outInstruction = tmp;
endmodule
