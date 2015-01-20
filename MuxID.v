`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:14:59 01/20/2015 
// Design Name: 
// Module Name:    MuxID 
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
module MuxID(
	input [4:0] rt,rd,
	input RegDst,
	output reg [4:0] outMuxID
    );

initial
begin
	outMuxID = 0;
end
always @(*)
begin
	if(RegDst)
		begin
			outMuxID = rd; //Selecciona tipo R
		end
	
	else
		begin
			outMuxID = rt; //Selecciona tipo I
		end
end
endmodule
