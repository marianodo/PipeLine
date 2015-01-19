`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:52:20 01/19/2015 
// Design Name: 
// Module Name:    controlUnit 
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
module controlUnit(
input btn,
input [7:0] inControlUnitAddPc,
output [7:0] outControlUnitAddPc
    );
always @(posedge btn)
begin
	outControlUnitAddPc = inControlUnitAddPc;
end

endmodule
