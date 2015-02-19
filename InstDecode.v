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
	input RegWrite,clk,
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


reg [31:0] register[31:0];
integer i;

initial
begin
	for(i = 0; i < 32; i = i+1)
		begin
			register[i] = 0;
		end
	register[0] =  32'b00000000000000000000000000000000;
	register[1] =  32'b00000000000000000000000000000000;
	register[2] =  32'b11000000000000000000011000000010;
	register[3] =  32'b00000000000000000000000000000011;
	register[4] =  32'b00000000000000000000000000000100;
	register[5] =  32'b00000000000000000000000000000101;
	register[6] =  32'b00000000000000000000000000000110;
	register[7] =  32'b00000000000000000000000000000111;
	register[8] =  32'b00000000000000000000000000001000;
	register[9] =  32'b00000000000000000000000000001001;
	register[10] = 32'b00000000000000000000000000001010;
	register[11] = 32'b00000000000000000000000000001011;
	register[12] = 32'b00000000000000000000000000001100;
	register[13] = 32'b00000000000000000000000000001101;
	register[14] = 32'b00000000000000000000000000001110;
	register[15] = 32'b00000000000000000000000000001111;
	register[16] = 32'b00000000000000000000000000010000;
	register[17] = 32'b00000100000111000100010010011111;
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

always @(negedge clk)
begin
	
	if(RegWrite)
		begin
			register[inInstDecodeWriteReg] = inInstDecodeWriteData;
			
		end
	else
		begin
			for(i = 0; i < 32; i = i+1)
		begin
			register[i] = register[i]; // Lo hcaemos para que no haya latch
		end
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
