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
reg flag = 1;
reg [2:0] count = 0;
always @(posedge clk)
  begin
      if (inDato == 8'b01110011)
			begin
				if(flag)
					begin						
						tmp = 1;
						flag = 0;
					end
				else
					begin
						tmp = 0;
					end
			end
		else
			begin
				tmp = 0;
				flag = 1;
			end
  end
  
  assign outStep = tmp;
endmodule