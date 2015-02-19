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
input [31:0] inOutMuxForwardA, inOutMuxForwardB,
input [5:0] instReg,
input [4:0] sa,
input [1:0] ALUOp,

output reg [31:0] outAlu
    );
//ALUOp 
// 00: Load y/o Store
// 01: Branch EQ
// 10: R-Type
// 11: Immediate
initial
	begin
		outAlu = 0;
		
	end
	
	always @(*)
	begin
		if(ALUOp == 2'b10) //R-Type
			begin
				case (instReg)
					//############ R-Type Instruction ############################

					//SLL
					6'b000000:
						outAlu <= inOutMuxForwardB * 2**sa;
										
					//SRL
					6'b000010:
						outAlu <= inOutMuxForwardB / 2**sa;
							
					//SRA
					6'b000011:
						outAlu <= $signed(inOutMuxForwardB) >>> sa;
				
					//SRLV
					6'b000110:
						outAlu <= inOutMuxForwardB >> inOutMuxForwardA;

					//SRAV
					6'b000111:
						outAlu <= $signed(inOutMuxForwardB) >>> inOutMuxForwardA;

					//ADDU
					6'b100001:
						outAlu <= inOutMuxForwardA + inOutMuxForwardB;
						
					//SUBU
					6'b100011:
						outAlu <= inOutMuxForwardA - inOutMuxForwardB;
						
					//AND
					6'b100100:
						outAlu <= inOutMuxForwardA & inOutMuxForwardB;
								
					//OR
					6'b100101:
						outAlu <= inOutMuxForwardA | inOutMuxForwardB;
						
					//XOR
					6'b100110:
						outAlu <= inOutMuxForwardA ^ inOutMuxForwardB;
						
					//SLT
					6'b101010:
						outAlu <= ($signed(inOutMuxForwardA) < $signed(inOutMuxForwardB)) ? 1 : 0;
//#############################################################################
//#######################IMMEDIATE##############################3
					//ADDI:
					6'b001000:
						outAlu <= inOutMuxForwardA + inOutMuxForwardB;

					//ADDIU
					6'b001001:
						outAlu <= inOutMuxForwardA + inOutMuxForwardB;			
					
					//ANDI:
					6'b001100:
						outAlu <= inOutMuxForwardA & (inOutMuxForwardB & 32'b00000000_00000000_11111111_11111111);

					//ORI:
					6'b001101:
						outAlu <= inOutMuxForwardA | (inOutMuxForwardB & 32'b00000000_00000000_11111111_11111111);

					//XORI:
					6'b001110:
						outAlu <= inOutMuxForwardA ^ (inOutMuxForwardB & 32'b00000000_00000000_11111111_11111111);

					//LUI:
					6'b001111:
						outAlu <= inOutMuxForwardB << 16;

					//SLTI:
					6'b001010:
						outAlu <= ($signed(inOutMuxForwardA) < $signed(inOutMuxForwardB)) ? 1 : 0;

					//SLTIU:
					6'b001011:
						outAlu <= ($unsigned(inOutMuxForwardA) < $unsigned(inOutMuxForwardB)) ? 1 : 0;
					
					default:
						outAlu <= {32{1'b1}};
					endcase
			
			end
			
		else if(ALUOp == 2'b00) //Load/Store (LW/SW)
			begin
				outAlu <= inOutMuxForwardA + inOutMuxForwardB;
			end
		else
			begin
				outAlu <= 0;
			end
		
end		
	

endmodule
