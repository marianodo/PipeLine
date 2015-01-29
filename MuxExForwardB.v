`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:53:36 01/29/2015 
// Design Name: 
// Module Name:    MuxExForwardB 
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
module MuxExForwardB(
	input [31:0] inDataRt, inMuxWb,inOutAlu,inSignExt,
	input [1:0] inForwardB,
	output [31:0] outMuxForwardB
    );
reg [31:0] tmp = 0;

always @(*)
begin
	case(inForwardB)
		2'b00:
			tmp = inDataRt;
		2'b10:
			tmp = inOutAlu;
		2'b01:
			tmp = inMuxWb;
		2'b11:
			tmp = inSignExt;
	endcase		
end
assign outMuxForwardB = tmp;

endmodule
