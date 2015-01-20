`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:47:33 01/20/2015 
// Design Name: 
// Module Name:    StageWB 
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
module StageWB(
	input btnMuxWb,
	input [31:0] readDataMem, outAlu,
	output reg [31:0] outMuxWb
    );
	 
initial
begin
	outMuxWb = 0;
end
always @(*)
begin
	if(btnMuxWb)
		begin
			outMuxWb = readDataMem;
		end
	
	else
		begin
			outMuxWb = outAlu;
		end
end

endmodule
