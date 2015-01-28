`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:42:38 01/27/2015 
// Design Name: 
// Module Name:    MuxJumpPc 
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
module MuxJumpPc(
input [31:0] inMuxPc,inMuxJumpPc,
input Jump,
output reg [31:0] outMuxJumpPc

    );

initial
begin
	outMuxJumpPc = 0;
end
always @(*)
begin
	if(Jump)
		begin
			outMuxJumpPc = inMuxJumpPc;
		end
	
	else
		begin
			outMuxJumpPc = inMuxPc;
		end
end

endmodule
