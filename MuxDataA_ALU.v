`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:23:49 02/03/2015 
// Design Name: 
// Module Name:    MuxDataA_ALU 
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
module MuxDataA_ALU(
	input [31:0] inDataRs,inAluOut_EX_MEM,
	input inForwardAD,
	output [31:0] outDataAEq
    );
	 
 reg [31:0] tmp = 0;

always @(*)
begin
	if(inForwardAD)
		begin
			tmp = inAluOut_EX_MEM;
		end
	
	else
		begin
			tmp = inDataRs;
		end
end
assign outDataAEq = tmp;

endmodule
