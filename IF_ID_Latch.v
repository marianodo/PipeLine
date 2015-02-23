`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:21:37 01/28/2015 
// Design Name: 
// Module Name:    IF_ID_Latch 
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
module IF_ID_Latch(

input clk,inIF_IDWrite,inIF_Flush,enablePc,
input [31:0] inPc,inInstruction,
output reg [31:0] outPc, outInstruction
    );
initial
begin
	outPc =0;
end
 
always @(posedge clk)
begin
if(enablePc)
begin
	if (inIF_IDWrite == 0)
		begin
			outPc=outPc;
			outInstruction=outInstruction;
		end
	else
		begin
			outPc=inPc;
			outInstruction=inInstruction;
		end
	if (inIF_Flush)
		begin
			outPc=inPc;
			outInstruction= 32'b000000_000000_000000_000000;
		end
	end
end
endmodule
