`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:33:09 01/20/2015 
// Design Name: 
// Module Name:    MuxWB 
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
module MuxWB(
	input MemtoReg,
	input [31:0] readDataMem, outAlu,
	output reg [31:0] outMuxWb
    );

initial
begin
	outMuxWb = 0;
end
always @(*)
begin
	if(MemtoReg)
		begin
			outMuxWb = readDataMem;
		end
	
	else
		begin
			outMuxWb = outAlu;
		end
end
endmodule
