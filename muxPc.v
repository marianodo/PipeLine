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
input [tam-1:0] inMuxAddPc,
input [tam-1:0] inMuxAddJmp,
input select,
output reg [tam-1:0] outMuxPc
    );

always @(*)
begin
	if(select)
		begin
			outMuxPc = inMuxAddJmp;
		end
	
	else
		begin
			outMuxPc = inMuxAddPc;
		end
end

endmodule
