`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:33:02 01/19/2015 
// Design Name: 
// Module Name:    muxPc 
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
module muxPc # (parameter tam=8)( 
input [31:0] inMuxAddPc,inMuxAddJmp,
input outAnd,
output [31:0] outMuxPc
    );
	 reg [31:0] tmp = 0;

always @(*)
begin
	if(outAnd)
		begin
			tmp = inMuxAddJmp;
		end
	
	else
		begin
			tmp = inMuxAddPc;
		end
end
assign outMuxPc = tmp;
endmodule
