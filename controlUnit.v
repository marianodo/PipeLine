`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:47:18 01/20/2015 
// Design Name: 
// Module Name:    ControlUnit 
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
module ControlUnit(
	input [5:0] inInstruction,
	input clk,
	output reg RegDst,Branch,MemRead,MemtoReg,MemWrite,ALUSrc,RegWrite,
	output reg [1:0] ALUOp
	
    );
	 reg tmp;
initial
begin
	RegDst = 1;
	Branch = 0;
	MemRead = 0;
	MemtoReg = 0;
	MemWrite = 0;
	ALUSrc = 0;
	RegWrite = 0;
	tmp = 1;
end

always @(posedge clk)
begin
	if(tmp)
		begin
			RegWrite = 1;
			tmp = 0;
		end
	else
		begin
			tmp = 1;
		end
end
endmodule
