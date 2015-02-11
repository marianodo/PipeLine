`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:19:31 02/09/2015 
// Design Name: 
// Module Name:    StepModule 
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
module StepModule(
input clk,
input [7:0] inDato,
output outStep
    );
reg tmp = 0;

always @(negedge clk)
  begin
      if (inDato == 8'b01110011)
			begin
				tmp = 1;
			end
		else
			begin
				tmp = 0;
			end
  end
  
  assign outStep = tmp;
endmodule
