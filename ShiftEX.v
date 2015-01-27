`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:04:01 01/20/2015 
// Design Name: 
// Module Name:    ShiftEX 
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
module ShiftEX(
	input [31:0] signExt,
	output reg [31:0] outShift
    );
initial
begin
	outShift = 0;
end
always @(*)
begin
	outShift = signExt * 1; //OJO, Deberia ser signExt << 2, pero sumamos de a una instruccion en vez de 4
end
	 
	 


endmodule
