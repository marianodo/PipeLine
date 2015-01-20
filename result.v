`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:14:08 01/19/2015 
// Design Name: 
// Module Name:    result 
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
module result # (parameter tam=8)(
input [tam-1:0] inResult,
output [tam-1:0] outResult
    );
always @(inResult)
begin
outResult = inResult;
end

endmodule
