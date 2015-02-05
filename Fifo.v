`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:48:37 02/05/2015 
// Design Name: 
// Module Name:    Fifo 
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
module Fifo(
	input [31:0] inRegistro0,inPc,
	
	
   output wire [7:0] outArray,
	output wire outWE
	 );
	reg [7:0] tmpArray;
	reg tmpWE;
	reg [2:0] count;
	initial
	begin
		count = 0;
		tmpWE = 0;
	end
	
	always @(inPc)
	begin
		if (count < 4)
			begin
				tmpWE = 1;
				
				case(count)
						0:
							tmpArray = inRegistro0[31:24];
						1:
							tmpArray = inRegistro0[23:16];
						2:
							tmpArray = inRegistro0[15:8];
						3:
							tmpArray = inRegistro0[7:0];
					endcase
					count = count + 1;
			end
		else
			begin
				tmpArray = 0;
				tmpWE = 0;
				count = 0;
			end
	
	end
	
assign outArray = tmpArray;
assign outWE = tmpWE;
endmodule
