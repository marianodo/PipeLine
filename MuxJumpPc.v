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
output [31:0] outMuxJumpPc

    );
reg [31:0] tmp = 0;

always @(*)
begin
	if(Jump)
		begin
			tmp = inMuxJumpPc;
		end
	
	else
		begin
			tmp = inMuxPc;
		end
end
assign outMuxJumpPc = tmp;
endmodule
