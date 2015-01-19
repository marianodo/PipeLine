`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:57:50 01/19/2015 
// Design Name: 
// Module Name:    addPc 
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
module addPc # (parameter tam=8)(
	input btn,
	input [tam-1:0] inAddPc,
	output reg [tam-1:0] outAddPc
    );
always @(posedge btn)
begin
	outAddPc = inAddPc + 1;
end

endmodule
