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
module addPc # (parameter tam=5)(
	input [31:0] inAddPc,
	output [31:0] outAddPc
    );
	 
	 reg [31:0] tmp = 0;

always @(*)
begin

			tmp = inAddPc + 1;
end
assign outAddPc = tmp;
endmodule
