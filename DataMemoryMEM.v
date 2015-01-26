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
	dataMemory[0] = 32'b00000_00000_00000_00000_00000_00000_01;
	dataMemory[1] = 32'b00000_00000_00000_00000_00000_00000_10;
	dataMemory[2] = 32'b00000_00000_00000_00000_00000_00000_00;
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
