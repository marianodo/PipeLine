`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:44:20 01/28/2015 
// Design Name: 
// Module Name:    MEM_WB_Latch 
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
module MEM_WB_Latch(
	input [31:0] inLoadWordDividerMEM, inAluLatch,
	input [4:0] inMuxRtRd,inRegRtMEM,
   input inRegWrite,clk,enable,
	input [1:0]inMemtoReg,
	
	output reg [31:0] outLoadWordDividerMEM,outAluLatch,
	output reg [4:0] outMuxRtRd,outRegRtMEM,
	output reg outRegWrite,
	output reg [1:0] outMemtoReg
	);

always @(posedge clk)
begin
	if(enable)
		begin
			outLoadWordDividerMEM =inLoadWordDividerMEM;
			outAluLatch = inAluLatch;
			outMuxRtRd = inMuxRtRd;
			outRegWrite = inRegWrite;
			outMemtoReg = inMemtoReg;
			outRegRtMEM = inRegRtMEM;
		end
	
end

endmodule
