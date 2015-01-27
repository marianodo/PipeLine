`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:31:22 01/26/2015 
// Design Name: 
// Module Name:    DataMemoryMEM 
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
module DataMemoryMEM(

input [31:0] inMemAddress, inMemWriteData,
input MemWrite,MemRead, clk,
output [31:0] outMemReadData
    );
reg [31:0] dataMemory[0:31];
reg [31:0] tmpData =0;
integer i;
initial
begin
	dataMemory[0] = 32'b00000_00000_00000_00000_00000_00000_00; //Word
	dataMemory[1] = 32'b00111_00100_01000_00100_00110_00011_10; // Byte
	dataMemory[2] = 32'b01110_01110_00010_00100_00010_00110_00; //Half
	dataMemory[3] = 0;
	dataMemory[4] = 0;
//	for (i = 5; i < 1024; i=i+1)
//			dataMemory[i] = 32'b00000_00000_00000_00000_00000_00000_00;
end

always @(*)
begin
	if(MemRead == 1 && MemWrite == 0)
		begin
			tmpData = dataMemory[inMemAddress];
			
		end
	if(MemRead == 0 && MemWrite == 1)
		begin
			dataMemory[inMemAddress] = inMemWriteData;
		end
	

end

assign outMemReadData = tmpData;

endmodule
