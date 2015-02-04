`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:34:13 02/03/2015 
// Design Name: 
// Module Name:    EqualBranch 
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
module EqualBranch(
	input inBranch, inflagBranch,
	input [31:0] inDataAEq, inDataBEq,
	output  outPCSrc
    );
reg tmp = 0;
always @(*)
begin
	if(inBranch)
		begin
			if(inflagBranch // Si es Branch y si es BEQ
			&( inDataAEq == inDataBEq))
				begin
					tmp = 1; //Si los datos son iguales
				end
			else if((inflagBranch == 0) //Si es Branch y si es BNE
				&( inDataAEq != inDataBEq))
				begin
					tmp = 1;
				end
			else
				begin
					tmp = 0;
				end
		end
	else
		begin
			tmp = 0;
		end
		
end
assign outPCSrc = tmp;
endmodule
