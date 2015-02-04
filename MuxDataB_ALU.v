`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:27:07 02/03/2015 
// Design Name: 
// Module Name:    MuxDataB_ALU 
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
module MuxDataB_ALU(
	input [31:0] inDataRt,inAluOut_EX_MEM,
	input inForwardBD,
	output [31:0] outDataBEq
    );
	 
 reg [31:0] tmp = 0;

always @(*)
begin
	if(inForwardBD)
		begin
			tmp = inAluOut_EX_MEM;
		end
	
	else
		begin
			tmp = inDataRt;
		end
end
assign outDataBEq = tmp;


endmodule
