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
	input clk,
	input [3:0] inAddPc,
	output reg [3:0] outAddPc
    );
	 
	 reg tmp;
initial
begin
	outAddPc = 0;
	tmp = 0;
end


always @(posedge clk)
begin
	if(outAddPc == 15)
		begin
			outAddPc = 0;
		end
	else
		begin
		if(tmp)
			begin
				tmp = 0;
				outAddPc = inAddPc + 1;
			end
		else
			begin
				tmp = 1 ;
			end
		end
end

endmodule
