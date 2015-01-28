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

input clk,
input [31:0] inPc,inInstruction,
output [31:0] outPc, outInstruction
    );
reg [31:0] tmpPc,tmpInstruction;
 
always @(negedge clk)
begin
	tmpPc=inPc;
	tmpInstruction=inInstruction;
end

assign outPc = tmpPc;
assign outInstruction = tmpInstruction;
endmodule
