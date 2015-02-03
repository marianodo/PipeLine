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
	input inRegWriteEX_MEM, inRegWriteMEM_WB,inBranch,
   output  [1:0] outForwardA, outForwardB,
	output outForwardAD,outForwardBD
		);
	reg [1:0] tmpA,tmpB = 0;
	reg tmpAD,tmpBD = 0;
	//Hazard del EX //Si Rd = Rs, se toma el primer mux, si Rd= Rt se toma el segundo
always @(*)

begin
	//EX hazard
	if(inRegWriteEX_MEM
	& (inRdEX_MEM != 0)
	& (inRdEX_MEM == inRs))
		tmpA = 2'b10;
	
	//MEM hazard
	else if(inRegWriteMEM_WB
	& (inRdMEM_WB != 0)
	& (inRdEX_MEM != inRs)
	& (inRdMEM_WB == inRs))
		tmpA = 2'b01;
		
	else
		tmpA = 2'b00;
	
	//EX hazard
	if(inRegWriteEX_MEM
	& (inRdEX_MEM != 0)
	& (inRdEX_MEM == inRt))
		tmpB = 2'b10;
	
	//MEM hazard	
	else if(inRegWriteMEM_WB
	& (inRdMEM_WB != 0)
	& (inRdEX_MEM != inRt)
	& (inRdMEM_WB == inRt))
		tmpB = 2'b01;

	else
		tmpB = 2'b00;
		
	//Chequea se el branch esta en uno y si la instruccion siguiente depende de este branch
	if(inBranch
	& (inRs != 0)
	& (inRs == inRdEX_MEM ))
		tmpAD = 1;
	else
		tmpAD = 0;
		
		
	if(inBranch
	& (inRt != 0)
	& (inRt == inRdEX_MEM ))
		tmpBD = 1;
	else
		tmpBD = 0;
	
end

assign outForwardA = tmpA;
assign outForwardB = tmpB;
assign outForwardAD = tmpAD;
assign outForwardBD = tmpBD;
endmodule
