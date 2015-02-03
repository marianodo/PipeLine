`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:47:18 01/20/2015 
// Design Name: 
// Module Name:    ControlUnit 
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
module ControlUnit(
	input [5:0] inOpcode, inFunction, //Opcode y Funcion
	input clk,inStall,
	output reg Branch,MemRead,MemWrite,RegWrite,ALUSrc,flagBranch,Jump,
	output reg [1:0] ALUOp, MemtoReg, RegDst,
	output reg [2:0] flagLoadWordDividerMEM,
	output reg [1:0] flagStoreWordDividerMEM,
	output reg [5:0] outFunction
    );
	 reg opCode;
	 
initial
begin
	RegDst = 1; // Mux para elegir Rd o Rt, en 1 elige Rd
	Branch = 0; // Es el and con el Zero de la alu
	MemtoReg = 0; //Mux que elige entre Alu o Memoria, 0 es ALU
	MemRead = 0; //Flag para leer en memoria, en 0 no pasa nada, en 1 Lee
	MemWrite = 0; //Flag para escribir en memoria, en 0 no pasa nada, en 1 Escribe
	ALUSrc = 0; //Mux que elige entre Inmediato o Rt, 1 es inmediato, 0 Rt
	RegWrite = 0; //Flag que lee o escribe en registros , 0 Lee 1 Escribe
	ALUOp = 2'b10; //R-type
	flagLoadWordDividerMEM = 0; //Salida de la memoria que divide si es byte,half o full word
	flagStoreWordDividerMEM = 0;//Entrada de la memoria que divide si es byte,half o full word
	flagBranch = 0; // 0 = BNE, 1 = BEQ
	Jump = 0;
end

always @(*)
begin
	if(inStall) //si esta en 1 es porque es normal, no hay problematicas
		begin
			if ( inOpcode == 0) //Write R-Type
				begin
					RegDst = 1;
					Branch = 0;
					MemtoReg = 0;
					MemRead = 0;
					MemWrite = 0;
					ALUSrc = 0;
					RegWrite = 1;
					ALUOp = 2'b10;
					flagLoadWordDividerMEM = 0;
					flagStoreWordDividerMEM = 0;
					outFunction = inFunction; //Si es tipo R la funcion es igual a la funcion
					flagBranch = 0; // 0 = BNE, 1 = BEQ
					Jump = 0;
				end
			else if (inOpcode == 35 ) //Write Load, LW
				begin
					RegDst = 0;
					Branch = 0;
					MemtoReg = 1; //esta al reves que en el grafico del patterson
					MemRead = 1;
					MemWrite = 0;
					ALUSrc = 1;
					RegWrite = 1;
					ALUOp = 2'b00;
					flagLoadWordDividerMEM = 0;
					flagStoreWordDividerMEM = 0;
					outFunction = inOpcode; // Si no es r-Type, la funcion es igual al opcode
					flagBranch = 0; // 0 = BNE, 1 = BEQ
					Jump = 0;
				end
			else if (inOpcode == 39 ) //Write Load, LWU
				begin
					RegDst = 0;
					Branch = 0;
					MemtoReg = 1;
					MemRead = 1;
					MemWrite = 0;
					ALUSrc = 1;
					RegWrite = 1;
					ALUOp = 2'b00;
					flagLoadWordDividerMEM = 1;
					flagStoreWordDividerMEM = 0;
					outFunction = inOpcode; // Si no es r-Type, la funcion es igual al opcode
					flagBranch = 0; // 0 = BNE, 1 = BEQ
					Jump = 0;
				end
			else if (inOpcode == 32 ) //Write Load, LB
				begin
					RegDst = 0;
					Branch = 0;
					MemtoReg = 1;
					MemRead = 1;
					MemWrite = 0;
					ALUSrc = 1;
					RegWrite = 1;
					ALUOp = 2'b00;
					flagLoadWordDividerMEM = 2;
					flagStoreWordDividerMEM = 0;
					outFunction = inOpcode; // Si no es r-Type, la funcion es igual al opcode
					flagBranch = 0; // 0 = BNE, 1 = BEQ
					Jump = 0;
				end
			else if (inOpcode == 36 ) //Write Load, LBU
				begin
					RegDst = 0;
					Branch = 0;
					MemtoReg = 1;
					MemRead = 1;
					MemWrite = 0;
					ALUSrc = 1;
					RegWrite = 1;
					ALUOp = 2'b00;
					flagLoadWordDividerMEM = 3;
					flagStoreWordDividerMEM = 0;
					outFunction = inOpcode; // Si no es r-Type, la funcion es igual al opcode
					flagBranch = 0; // 0 = BNE, 1 = BEQ
					Jump = 0;
				end
			else if (inOpcode == 33 ) //Write Load, LH
				begin
					RegDst = 0;
					Branch = 0;
					MemtoReg = 1;
					MemRead = 1;
					MemWrite = 0;
					ALUSrc = 1;
					RegWrite = 1;
					ALUOp = 2'b00;
					flagLoadWordDividerMEM = 4;
					flagStoreWordDividerMEM = 0;
					outFunction = inOpcode; // Si no es r-Type, la funcion es igual al opcode
					flagBranch = 0; // 0 = BNE, 1 = BEQ
					Jump = 0;
				end
			else if (inOpcode == 37 ) //Write Load, LHU
				begin
					RegDst = 0;
					Branch = 0;
					MemtoReg = 1;
					MemRead = 1;
					MemWrite = 0;
					ALUSrc = 1;
					RegWrite = 1;
					ALUOp = 2'b00;
					flagLoadWordDividerMEM = 5;
					flagStoreWordDividerMEM = 0;
					outFunction = inOpcode; // Si no es r-Type, la funcion es igual al opcode
					flagBranch = 0; // 0 = BNE, 1 = BEQ
					Jump = 0;
				end
			else if (inOpcode == 43 ) //Write Store, SW
				begin
					RegDst = 0;
					Branch = 0;
					MemtoReg = 0;
					MemRead = 0;
					MemWrite = 1;
					ALUSrc = 1;
					RegWrite = 0;
					ALUOp = 2'b00;
					flagLoadWordDividerMEM = 0;
					flagStoreWordDividerMEM = 0;
					outFunction = inOpcode; // Si no es r-Type, la funcion es igual al opcode
					flagBranch = 0; // 0 = BNE, 1 = BEQ
					Jump = 0;
				end
			else if (inOpcode == 40 ) //Write Store, SB
				begin
					RegDst = 0;
					Branch = 0;
					MemtoReg = 0;
					MemRead = 0;
					MemWrite = 1;
					ALUSrc = 1;
					RegWrite = 0;
					ALUOp = 2'b00;
					flagLoadWordDividerMEM = 0;
					flagStoreWordDividerMEM = 1;
					outFunction = inOpcode; // Si no es r-Type, la funcion es igual al opcode
					flagBranch = 0; // 0 = BNE, 1 = BEQ
					Jump = 0;
				end
			else if (inOpcode == 41 ) //Write Store, SH
				begin
					RegDst = 0;
					Branch = 0;
					MemtoReg = 0;
					MemRead = 0;
					MemWrite = 1;
					ALUSrc = 1;
					RegWrite = 0;
					ALUOp = 2'b00;
					flagLoadWordDividerMEM = 0;
					flagStoreWordDividerMEM = 2;
					outFunction = inOpcode; // Si no es r-Type, la funcion es igual al opcode
					flagBranch = 0; // 0 = BNE, 1 = BEQ
					Jump = 0;
				end
			else if (inOpcode == 4 ) //Write Branch, BEQ
				begin
					RegDst = 0;
					Branch = 1;
					MemtoReg = 0;
					MemRead = 0;
					MemWrite = 0;
					ALUSrc = 0;
					RegWrite = 0;
					ALUOp = 2'b01;
					flagLoadWordDividerMEM = 0;
					flagStoreWordDividerMEM = 0;
					outFunction = inOpcode; // Si no es r-Type, la funcion es igual al opcode
					flagBranch = 1; // 0 = BNE, 1 = BEQ
					Jump = 0;
				end
			else if (inOpcode == 5 ) //Write Branch, BNE
				begin
					RegDst = 0;
					Branch = 1;
					MemtoReg = 0;
					MemRead = 0;
					MemWrite = 0;
					ALUSrc = 0;
					RegWrite = 0;
					ALUOp = 2'b01;
					flagLoadWordDividerMEM = 0;
					flagStoreWordDividerMEM = 0;
					outFunction = inOpcode; // Si no es r-Type, la funcion es igual al opcode
					flagBranch = 0; // 0 = BNE, 1 = BEQ
					Jump = 0;
				end
			else if (inOpcode == 2 ) //Write Jump, J
				begin
					RegDst = 0;
					Branch = 0;
					MemtoReg = 0;
					MemRead = 0;
					MemWrite = 0;
					ALUSrc = 0;
					RegWrite = 0;
					ALUOp = 2'b00;
					flagLoadWordDividerMEM = 0;
					flagStoreWordDividerMEM = 0;
					outFunction = inOpcode; // Si no es r-Type, la funcion es igual al opcode
					flagBranch = 0; // 0 = BNE, 1 = BEQ
					Jump = 1;
				end
			else if (inOpcode == 3 ) //Write Jump, JAL
				begin
					RegDst = 2;
					Branch = 0;
					MemtoReg = 2;
					MemRead = 0;
					MemWrite = 0;
					ALUSrc = 0;
					RegWrite = 0;
					ALUOp = 2'b00;
					flagLoadWordDividerMEM = 0;
					flagStoreWordDividerMEM = 0;
					outFunction = inOpcode; // Si no es r-Type, la funcion es igual al opcode
					flagBranch = 0; // 0 = BNE, 1 = BEQ
					Jump = 1;
				end
			else //El resto son inmediatas
				begin
					RegDst = 0;
					Branch = 0;
					MemtoReg = 0;
					MemRead = 0;
					MemWrite = 0;
					ALUSrc = 1;
					RegWrite = 1;
					ALUOp = 2'b11;
					flagLoadWordDividerMEM = 0;
					flagStoreWordDividerMEM = 0;
					outFunction = inOpcode; // Si no es r-Type, la funcion es igual al opcode
					flagBranch = 0; // 0 = BNE, 1 = BEQ
					Jump = 0;
				end
		end
	else
		begin
			RegDst = 0;
			Branch = 0;
			MemtoReg = 0;
			MemRead = 0;
			MemWrite = 0;
			ALUSrc = 0;
			RegWrite = 0;
			ALUOp = 2'b00;
			flagLoadWordDividerMEM = 0;
			flagStoreWordDividerMEM = 0;
			outFunction = inOpcode; // Si no es r-Type, la funcion es igual al opcode
			flagBranch = 0; // 0 = BNE, 1 = BEQ
			Jump = 0;
		end
end

endmodule

