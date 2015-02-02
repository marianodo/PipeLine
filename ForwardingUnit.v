`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:10:54 01/29/2015 
// Design Name: 
// Module Name:    ForwardingUnit 
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
module ForwardingUnit(
	input [4:0] inRs, inRt,inRdEX_MEM,inRdMEM_WB,
	input inRegWriteEX_MEM, inRegWriteMEM_WB,
   output  [1:0] outForwardA, outForwardB
		);
	reg [1:0] tmpA, tmpB = 0;
	//Hazard del EX //Si Rd = Rs, se toma el primer mux, si Rd= Rt se toma el segundo
always @(*)
begin
	if(inRegWriteEX_MEM & (inRdEX_MEM!=0) & (inRdEX_MEM == inRs))
		begin
			tmpA = 2'b10;	//top ALU
		end
	else
		begin
			tmpA = 2'b00;
		end
	if(inRegWriteEX_MEM & (inRdEX_MEM != 0) & (inRdEX_MEM == inRt))
		begin
			tmpB = 2'b10; //bottom ALU
		end
	else
		begin
			tmpB = 2'b00;
		end	

	//Hazard del MEM //Si Rd = Rs, se toma el primer mux, si Rd= Rt se toma el segundo
	if(inRegWriteMEM_WB & (inRdMEM_WB!=0) & (inRdEX_MEM != inRs) & (inRdMEM_WB == inRs))
		begin
			tmpA = 2'b01; //top ALU
		end
	else
		begin
			tmpA = 2'b00;
		end

	if(inRegWriteMEM_WB & (inRdMEM_WB!=0) & (inRdEX_MEM != inRt) & (inRdMEM_WB == inRt))
		begin
			tmpB = 2'b01; //bottom ALU
		end
	else
		begin
			tmpB = 2'b00;
		end

end
assign outForwardA = tmpA;
assign outForwardB = tmpB;
endmodule
