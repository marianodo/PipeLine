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
output reg [31:0] outMuxPc
    );
initial
begin
	outMuxPc = 0;
end
always @(*)
begin
	if(outAnd)
		begin
			outMuxPc = inMuxAddJmp;
		end
	
	else
		begin
			outMuxPc = inMuxAddPc;
		end
end

endmodule
