`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:19:13 01/20/2015 
// Design Name: 
// Module Name:    AluEX 
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
module AluEX(
input [31:0] readRs, outMuxEx,
input [5:0] instReg,
input [4:0] sa,
input [1:0] ALUOp,
output reg zeroAlu,
output reg [31:0] outAlu
    );

initial
	begin
		outAlu = 0;
		zeroAlu = 0;
	end
	
	always @(*)
	begin
		if(ALUOp == 2'b10) //R-Type
			begin
				case (instReg)
					//############ R-Type Instruction ############################

								//SLL
								6'b000000:
									outAlu <= outMuxEx * 2**sa;
													
								//SRL
								6'b000010:
									outAlu <= outMuxEx / 2**sa;
										
								//SRA
								6'b000011:
									outAlu <= $signed(outMuxEx) >>> sa;
							
								//SRLV
								6'b000110:
									outAlu <= outMuxEx >> readRs;

								//SRAV
								6'b000111:
									outAlu <= $signed(outMuxEx) >>> readRs;

								//ADDU
								6'b100001:
									outAlu <= readRs + outMuxEx;
									
								//SUBU
								6'b100011:
									outAlu <= readRs - outMuxEx;
									
								//AND
								6'b100100:
									outAlu <= readRs & outMuxEx;
											
								//OR
								6'b100101:
									outAlu <= readRs | outMuxEx;
									
								//XOR
								6'b100110:
									outAlu <= readRs ^ outMuxEx;
									
								//SLT
								6'b101010:
									outAlu <= ($signed(readRs) < $signed(outMuxEx)) ? 1 : 0;
									default:
				outAlu <= {32{1'b1}};
		endcase
			end
			
		else if(ALUOp == 2'b00) //Load/Store (LW/SW)
			begin
				outAlu <= readRs + outMuxEx;
			end
		else if(ALUOp == 2'b01) //Branch EQ
			begin
				outAlu <= readRs - outMuxEx; 
			end
end		
	

	always @(*)
	begin
		if(outAlu == 0) 
			zeroAlu = 1;
		else 
			zeroAlu = 0;
	end
endmodule
