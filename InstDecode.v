`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:01:08 01/19/2015 
// Design Name: 
// Module Name:    InstDecode 
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
module InstDecode(
	input [4:0] inInstDecodeRsReg,inInstDecodeRtReg,inInstDecodeWriteReg,
	input RegWrite,
	input [31:0] inInstDecodeWriteData,
	output reg [31:0] outInstDecodeRsReg,outInstDecodeRtReg,
	
	output reg [31:0] Registro0,
	output reg [31:0] Registro1,
	output reg [31:0] Registro2,
	output reg [31:0] Registro3,
	output reg [31:0] Registro4,
	output reg [31:0] Registro5,
	output reg [31:0] Registro6,
	output reg [31:0] Registro7,
	output reg [31:0] Registro8,
	output reg [31:0] Registro9,
	output reg [31:0] Registro10,
	output reg [31:0] Registro11,
	output reg [31:0] Registro12,
	output reg [31:0] Registro13,
	output reg [31:0] Registro14,
	output reg [31:0] Registro15,
	output reg [31:0] Registro16,
	output reg [31:0] Registro17,
	output reg [31:0] Registro18,
	output reg [31:0] Registro19,
	output reg [31:0] Registro20,
	output reg [31:0] Registro21,
	output reg [31:0] Registro22,
	output reg [31:0] Registro23,
	output reg [31:0] Registro24,
	output reg [31:0] Registro25,
	output reg [31:0] Registro26,
	output reg [31:0] Registro27,
	output reg [31:0] Registro28,
	output reg [31:0] Registro29,
	output reg [31:0] Registro30,
	output reg [31:0] Registro31
    );


reg [31:0] register[0:31];


initial
begin
	register[0] = 32'b01000100000111000100010010011111;
	register[1] = 32'b11011000100111000100000010011011;
	register[2] = 32'b11010100100111000100010010011111;
	register[3] = 32'b01010100000011000100110110001011;
	register[4] = 32'b01000100000111000100010010011111;
	register[5] = 32'b01100100000111000100010010011111;
	register[6] = 32'b01001100100111000100010010011111;
	register[7] = 32'b01000100100111000101110010110011;
	register[8] = 32'b01000100000111000100010010011111;
	register[9] = 32'b01000100000111000100010010011111;
	register[10] = 32'b01000100000111000100010010010010;
	register[11] = 32'b01000100000111000100010010011111;
	register[12] = 32'b01000100000111000100010010000011;
	register[13] = 32'b01000100000111000100010010010011;
	register[14] = 32'b01000100000111000100010010011111;
	register[15] = 32'b01000100000111000100010010011111;
	register[16] = 32'b01000100000111000100010010011111;
	register[17] = 32'b01000100000111000100010010011111;
	register[18] = 32'b01000100000111000100010010011111;
	register[19] = 32'b01000100000111000100010010011111;
	register[20] = 32'b01000100000111000100010010011111;
	register[21] = 32'b01000100000111000100010010011111;
	register[22] = 32'b01000100000111000100010010011111;
	register[23] = 32'b01000100000111000100010010011111;
	register[24] = 32'b01000100000111000100010010011111;
	register[25] = 32'b01000100000111000100010010011111;
	register[26] = 32'b01000100000111000100010010011111;
	register[27] = 32'b01000100000111000100010010011111;
	register[28] = 32'b01000100000111000100010010011111;
	register[29] = 32'b01000100000111000100010010011111;
	register[30] = 32'b01000100000111000100010010011111;
	register[31] = 32'b01000100000111000100010010011111;
	
	outInstDecodeRsReg = 0;
	outInstDecodeRtReg = 0;
end

always @(*)
begin
	
	if(RegWrite == 1)
		begin
			register[inInstDecodeWriteReg] = inInstDecodeWriteData;
			
		end
		outInstDecodeRsReg = register[inInstDecodeRsReg]; //Saca el valor del registro
		outInstDecodeRtReg = register[inInstDecodeRtReg];
		
		Registro0 = register[0];
		Registro1 = register[1];
		Registro2 = register[2];
		Registro3 = register[3];
		Registro4 = register[4];
		Registro5 = register[5];
		Registro6 = register[6];
		Registro7 = register[7];
		Registro8 = register[8];
		Registro9 = register[9];
		Registro10 = register[10];
		Registro11 = register[11];
		Registro12 = register[12];
		Registro13 = register[13];
		Registro14 = register[14];
		Registro15 = register[15];
		Registro16 = register[16];
		Registro17 = register[17];
		Registro18 = register[18];
		Registro19 = register[19];
		Registro20 = register[20];
		Registro21 = register[21];
		Registro22 = register[22];
		Registro23 = register[23];
		Registro24 = register[24];
		Registro25 = register[25];
		Registro26 = register[26];
		Registro27 = register[27];
		Registro28 = register[28];
		Registro29 = register[29];
		Registro30 = register[30];
		Registro31 = register[31];		
end

endmodule
