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
input [31:0] dataRs, outMuxEx,
input [5:0] instReg,
input [4:0] sa,
input [1:0] ALUOp,
input flagBranch, //Flag que identifica de BEQ y BNE
output reg zeroAlu,
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
						outAlu <= outMuxEx >> dataRs;

					//SRAV
					6'b000111:
						outAlu <= $signed(outMuxEx) >>> dataRs;

					//ADDU
					6'b100001:
						outAlu <= dataRs + outMuxEx;
						
					//SUBU
					6'b100011:
						outAlu <= dataRs - outMuxEx;
						
					//AND
					6'b100100:
						outAlu <= dataRs & outMuxEx;
								
					//OR
					6'b100101:
						outAlu <= dataRs | outMuxEx;
						
					//XOR
					6'b100110:
						outAlu <= dataRs ^ outMuxEx;
						
					//SLT
					6'b101010:
						outAlu <= ($signed(dataRs) < $signed(outMuxEx)) ? 1 : 0;
//#############################################################################
//#######################IMMEDIATE##############################3
					//ADDI:
					6'b001000:
						outAlu <= dataRs + outMuxEx;

					//ADDIU
					6'b001001:
						outAlu <= dataRs + outMuxEx;			
					
					//ANDI:
					6'b001100:
						outAlu <= dataRs & (outMuxEx & 32'b00000000_00000000_11111111_11111111);

					//ORI:
					6'b001101:
						outAlu <= dataRs | (outMuxEx & 32'b00000000_00000000_11111111_11111111);

					//XORI:
					6'b001110:
						outAlu <= dataRs ^ (outMuxEx & 32'b00000000_00000000_11111111_11111111);

					//LUI:
					6'b001111:
						outAlu <= outMuxEx << 16;

					//SLTI:
					6'b001010:
						outAlu <= ($signed(dataRs) < $signed(outMuxEx)) ? 1 : 0;

					//SLTIU:
					6'b001011:
						outAlu <= ($unsigned(dataRs) < $unsigned(outMuxEx)) ? 1 : 0;
					
					default:
						outAlu <= {32{1'b1}};
					endcase
			
			end
			
		else if(ALUOp == 2'b00) //Load/Store (LW/SW)
			begin
				outAlu <= dataRs + outMuxEx;
			end
		else if(ALUOp == 2'b01) //Branch EQ
			begin
				if (flagBranch) //flagBranch 1 = BEQ, flagBranch 0 = BNE
					begin
						if(dataRs == outMuxEx)
							begin
								zeroAlu = 1;
							end
						else
							begin
								zeroAlu = 0;
							end
					end
				else
					begin
						if(dataRs != outMuxEx)
							begin
								zeroAlu = 1;
							end
						else
							begin
								zeroAlu = 0;
							end
					end
			
			end
		
end		
	

endmodule
