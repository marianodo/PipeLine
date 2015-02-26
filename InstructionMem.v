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

reg [tam-1:0] memory[0:2047];
reg [31:0] tmp;
integer i;
initial
begin
for (i = 0; i < 2048; i=i+1)
	begin
		memory[i] = 32'b00000000_00000000_00000000_00000000;
	end
//----------------opcode---rs----rt----rd----sa----Func--
//--------------------SET DE INSTRUCCIONES-----------------------
	memory[0] = 32'b000100_11000_11001_00000_00000_001000; //Branch EQ comparando reg24 y reg25 y salto 8
	memory[1] = 32'b000000_00111_01110_11010_00000_100001; //suma de reg7 + reg14 y guardamos en reg26
	memory[2] = 32'b000000_00011_00110_01010_00000_100001; //suma de reg3 + reg6 y guardamos en reg10
	memory[3] = 32'b000000_01001_00110_01111_00000_100001; //suma del registro 9 + 6 = 15
	memory[4] = 32'b000000_01001_01010_01100_00000_100100; //and de reg9 y reg10 guardamos en reg12
	memory[5] = 32'b000000_00011_00010_11011_00000_100100; //and de reg3 + reg2 y guardamos en reg27
	memory[6] = 32'b000000_00001_11010_00111_00000_100101; //or del registro 1 + 26 = 7
	memory[7] = 32'b100011_00000_11100_00000_00000_001100; //Load de pos mem3 y guardamos en reg28
	memory[8] = 32'b000000_11100_00011_11010_00000_100100; //and de reg3 + reg28 y guardamos en reg26
	memory[9] = 32'b000000_01001_01101_11101_00000_100001; //suma de reg9 + reg13 y guardamos en reg29
	memory[10] = 32'b000000_00011_11101_01010_00000_100011; //resta de reg3 + reg29 y guardamos en reg10
	memory[11] = 32'b000000_00000_01010_00100_00010_000000; //shift left 2 posiciones del reg10 y guardamos en el reg4
	memory[12] = 32'b000000_00001_00010_00101_00000_100001; //suma del registro 1 + 2 = 5
	memory[13] = 32'b000000_00001_00010_00101_00000_100001; //suma del registro 1 + 2 = 5
	memory[14] = 32'b000000_01011_00010_11111_00000_100001; //suma de reg11 + reg2 y guardamos en reg31
	memory[15] = 32'b111111_11111_11111_11111_11111_111111; //HAAAAAAAAAAAAAALT
	
	
		//memory[3] = 32'b000100_11000_11001_00000_00000_001000; //Branch EQ comparando reg24 y reg25 y salto 4
end

always @(*)
begin

	tmp = memory[inInstructionMem];
end
assign outInstruction = tmp;
endmodule
