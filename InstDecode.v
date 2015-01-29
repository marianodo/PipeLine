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
	output reg [31:0] outInstDecodeRsReg,outInstDecodeRtReg
    );

reg [31:0] register[0:15];
initial
begin
	register[0] <= 5;
	register[1] <= 5;
	register[2] <= 3;
	register[3] <= 2;
	register[4] <= 0;
	register[5] <= 0;
	register[6] <= 0;
	register[7] <= 15;
	register[8] <= 0;
	register[9] <= 15;
	register[10] <= 10;
	register[11] <= 15;
	register[12] <= 3;
	register[13] <= 32'b100000_00001_00011_00010_00000_100010;
	register[14] <= 1435224;
	register[15] <= 32'b111111_00001_00011_00010_00000_100010;
	
	outInstDecodeRsReg = 0;
	outInstDecodeRtReg = 0;
end
always @(*)
begin
	if(RegWrite == 0) //Modo Lectura
		begin
			outInstDecodeRsReg = register[inInstDecodeRsReg]; //Saca el valor del registro
			outInstDecodeRtReg = register[inInstDecodeRtReg];
		end
	if(RegWrite == 1)
		begin
			register[inInstDecodeWriteReg] = inInstDecodeWriteData;
			
		end
		
end


endmodule
