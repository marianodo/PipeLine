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
	input [1:0] MemtoReg,
	input [31:0] readDataMem, outAlu, currentPC,
	output reg [31:0] outMuxWb
    );

initial
begin
	outMuxWb = 0;
end
always @(*)
begin
	if(MemtoReg == 1)
		begin
			outMuxWb = readDataMem;
		end
	
	else if(MemtoReg == 0)
		begin
			outMuxWb = outAlu;
		end
	else if(MemtoReg == 2)
		begin
			outMuxWb = currentPC;
		end
	else
		begin
			outMuxWb = outAlu;
		end
end
endmodule
