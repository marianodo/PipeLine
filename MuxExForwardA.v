`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:38:29 01/29/2015 
// Design Name: 
// Module Name:    MuxExForwardA 
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
module MuxExForwardA(
	input [31:0] inDataRs, inMuxWb,inOutAlu,
	input [1:0] inForwardA,
	output  [31:0] outMuxForwardA
    );
reg [31:0] tmp = 0;

always @(*)
begin
	case(inForwardA)
		2'b00:
			tmp = inDataRs;
		2'b10:
			tmp = inOutAlu;
		2'b01:
			tmp = inMuxWb;
		default:
			tmp = 0;
	endcase		
end
assign outMuxForwardA = tmp;
endmodule
