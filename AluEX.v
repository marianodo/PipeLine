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
					
//###########################################################################
				
//			//SLTU
//			6'b101011:
//				outAlu <= (readRs < outMuxEx) ? 1 : 0;
//				   
//			//NOR
//			6'b100111:
//				outAlu <= ~(readRs | outMuxEx);
//
//
//
//			//ADD
//			6'b100000:
//				outAlu <= readRs + outMuxEx;
//						
//			//SLLV
//			6'b000100:
//				outAlu <= outMuxEx << readRs;
//						
//			//SUB
//			6'b100010:
//				outAlu <= readRs - outMuxEx;
//					
//			
//
//			//ADDI:
//			6'b001000:
//				outAlu <= readRs + outMuxEx;
//
//			//ADDIU: //JALR: //JAL:
//			6'b001001:
//				if(ALUOp == 2'b11)
//					outAlu <= current_pc - 1'b1;
//				else
//					outAlu <= readRs + outMuxEx;			
//			
//			//ANDI:
//			6'b001100:
//				outAlu <= readRs & (outMuxEx & 32'b00000000_00000000_11111111_11111111);
//
//			//ORI:
//			6'b001101:
//				outAlu <= readRs | (outMuxEx & 32'b00000000_00000000_11111111_11111111);
//
//			//XORI:
//			6'b001110:
//				outAlu <= readRs ^ (outMuxEx & 32'b00000000_00000000_11111111_11111111);
//
//			//LUI:
//			6'b001111:
//				outAlu <= outMuxEx << 16;
//
//			//SLTI:
//			6'b001010:
//				outAlu <= ($signed(readRs) < $signed(outMuxEx)) ? 1 : 0;
//
//			//SLTIU:
//			6'b001011:
//				outAlu <= ($unsigned(readRs) < $unsigned(outMuxEx)) ? 1 : 0;
//						
///*			//JALR 
//			6'b001001:
//				outAlu <= current_pc - 1'b1;*/
//				
			default:
				outAlu <= {32{1'b1}};
		endcase
	end

	always @*
	begin
		if(outAlu == 0) 
			zeroAlu = 1;
		else 
			zeroAlu = 0;
	end
endmodule
