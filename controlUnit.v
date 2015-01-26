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
	input [5:0] inInstruction, //Opcode
	input clk,
	output reg RegDst,Branch,MemRead,MemtoReg,MemWrite,ALUSrc,RegWrite,
	output reg [1:0] ALUOp
	
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
	opCode = inInstruction; //Selecciona tipo de instruccion
	ALUOp = 2'b10;
end

always @(*)
begin
	if(clk)
		begin
			if ( inInstruction == 0) //R-Type
				begin
					RegDst = 1;
					Branch = 0;
					MemtoReg = 0;
					MemRead = 0;
					MemWrite = 0;
					ALUSrc = 0;
					RegWrite = 1;
					ALUOp = 2'b10;
				end
			else if (inInstruction == 35 ) //Load
				begin
					RegDst = 0;
					Branch = 0;
					MemtoReg = 1;
					MemRead = 0;
					MemWrite = 0;
					ALUSrc = 1;
					RegWrite = 1;
					ALUOp = 2'b00;
				end
			else if (inInstruction == 43 ) //Store
				begin
					RegDst = 0;
					Branch = 0;
					MemtoReg = 0;
					MemRead = 0;
					MemWrite = 1;
					ALUSrc = 1;
					RegWrite = 0;
					ALUOp = 2'b00;
				end
			else if (inInstruction == 4 ) //Branch
				begin
					RegDst = 0;
					Branch = 1;
					MemtoReg = 0;
					MemRead = 0;
					MemWrite = 0;
					ALUSrc = 0;
					RegWrite = 0;
					ALUOp = 2'b01;
				end
		end
	else if(clk == 0)//Clock en 0
		begin
			if ( inInstruction == 0) //R-Type
				begin
					RegDst = 1;
					Branch = 0;
					MemtoReg = 0;
					MemRead = 0;
					MemWrite = 0;
					ALUSrc = 0;
					RegWrite = 0;
					ALUOp = 2'b10;
				end
			else if (inInstruction == 35 ) //Load
				begin
					RegDst = 0;
					Branch = 0;
					MemtoReg = 1;
					MemRead = 1;
					MemWrite = 0;
					ALUSrc = 1;
					RegWrite = 0;
					ALUOp = 2'b00;
				end
			else if (inInstruction == 43 ) //Load
				begin
					RegDst = 1;
					Branch = 0;
					MemtoReg = 0;
					MemRead = 0;
					MemWrite = 0;
					ALUSrc = 1;
					RegWrite = 0;
					ALUOp = 2'b00;
				end
			else if (inInstruction == 4 ) //Load
				begin
					RegDst = 0;
					Branch = 1;
					MemtoReg = 0;
					MemRead = 0;
					MemWrite = 0;
					ALUSrc = 0;
					RegWrite = 0;
					ALUOp = 2'b01;
				end
		
		end
	
end

endmodule

