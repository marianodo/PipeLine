`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:22:12 01/28/2015 
// Design Name: 
// Module Name:    EX_MEM_Latch 
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
module EX_MEM_Latch(
	input [31:0] inOutAlu,indataRt,
	input inRegWrite,inMemRead,inMemWrite,clk,inEX_Flush,enable,
	input [1:0] inMemtoReg,inflagStoreWordDividerMEM,
   input [4:0] inOutMuxRtRd,
	input [2:0] inflagLoadWordDividerMEM,
	
	output reg [31:0] outAlu, dataRt,
	output reg outMemRead,outMemWrite,outRegWrite,
	output reg [4:0] outMuxRtRd,
	output reg [1:0] outMemtoReg, outflagStoreWordDividerMEM,
	output reg [2:0] outflagLoadWordDividerMEM
		);

always @(posedge clk)
begin
if(enable)
	begin
		if(inEX_Flush) //no hicimos un mux, implementamos el flush con este IF directamente.
			begin
				outRegWrite = 0;
				outMemRead = 0;
				outMemWrite = 0;
				outMemtoReg = 0;
			end
		else
			begin
				outRegWrite = inRegWrite;
				outMemRead = inMemRead;
				outMemWrite = inMemWrite;
				outMemtoReg = inMemtoReg;
			end
		
		outAlu = inOutAlu;
		dataRt = indataRt;
		outMuxRtRd = inOutMuxRtRd;
		outflagLoadWordDividerMEM=inflagLoadWordDividerMEM;
		outflagStoreWordDividerMEM=inflagStoreWordDividerMEM;
		
	end
end

endmodule
