`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Facultad Ciencias Exactas, Físicas y Naturaes
// Future Engineer: Juan, Leandro y Dominguz Mariano
// 
// Create Date:    14:39:20 01/16/2015 
// Design Name: 	Proyecto Final Arquitectura
// Module Name:    pipeline 
// Project Name:  Pipeline
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies:  De internet
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module pipeline(
input clk,

output [31:0] outMuxWb 
  );

// s i g n a l s
wire [31:0] PostPc, Pc, PcMux;
wire [4:0] rs;
wire [4:0] rd;
wire [4:0] rt;
wire [4:0] sa;
wire [5:0] instReg;
wire [31:0] writeData;
wire [31:0] outImmediate; //Salida del Sign Extend
wire [31:0] outAlu;
//wire wdSelect;
wire [31:0] dataRs, dataRt;
wire btnMuxWb;
wire [31:0] readDataMem;
reg select = 0; 
reg [31:0] pcJmp;


wire Branch,MemRead,MemWrite,ALUSrc,RegWrite,flagBranch, Jump;
wire [1:0] flagStoreWordDividerMEM,MemtoReg, RegDst;
wire [2:0] flagLoadWordDividerMEM;
wire [1:0] ALUOp;
wire [5:0] Function;
wire [31:0] instruction, outAddEx;

// i n s t a n t i a t i o n s

	StageIF callStageIF(
	.Jump(Jump),
	.clk(clk), //Entrada
	.outAddEx(outAddEx),
	.Branch(Branch),
	.zeroAlu(zeroAlu),
	.outInstruction(instruction),
	.PostPc(PostPc)
	);
	
	ControlUnit callControlUnit(
	.clk(clk),
	.inOpcode(instruction[31:26]), //Entrada de Opcode
	.inFunction(instruction[5:0]),
	.RegDst(RegDst), //Salidas
	.Branch(Branch),
	.MemRead(MemRead),
	.MemtoReg(MemtoReg),
	.ALUOp(ALUOp),
	.MemWrite(MemWrite),
	.ALUSrc(ALUSrc),
	.RegWrite(RegWrite),
	.flagLoadWordDividerMEM(flagLoadWordDividerMEM),
	.flagStoreWordDividerMEM(flagStoreWordDividerMEM),
	.outFunction(Function),
	.flagBranch(flagBranch),
	.Jump(Jump)
	);

	StageID callStageID(
	.rs(instruction[25:21]), //Entradas
	.rt(instruction[20:16]),
	.rd(instruction[15:11]), //Entrada al mux id, el mux identifica si es tipo I o R
	.immediate(instruction[15:0]),
	.RegDst(RegDst), // Valor del control en donde si es 1 es tipo R y si es 0 es tipo I
	.writeData(outMuxWb), //Dato a escribir en posicion rd
	.RegWrite(RegWrite), //Era el btnWRselect //Selector de lectura escritura de registros
	.dataRs(dataRs), //Salidas 
	.dataRt(dataRt), //Datos de los registros
	.outImmediate(outImmediate) //Valor imediato de la instruccion, sale del sign extend
	);
	
	StageEX callStageEX(
	.flagBranch(flagBranch),
	.PostPc(PostPc),
	.readRs(dataRs), //Entradas
	.readRt(dataRt), //Lee los datos de los registros
	.signExt(outImmediate), // Entrada del inmediato extendido en el mux
	.sa(sa), //Shift
	.instReg(Function), //Tipo de Instruccion, lo usa la alu
	.ALUSrc(ALUSrc), //Selector entre Inmediato o registro Rt
	.ALUOp(ALUOp), //Distingue tipos de instrucciones, si es jmp u otra cosa
	.outAlu(outAlu), //Salida resultado
	.zeroAlu(zeroAlu), // Comparacion de valores
	.outAddEx(outAddEx)
	);
	
	StageMEM callStageMEM(
	.clk(clk),
	.inMemAddress(outAlu), //Entrada que es salida de ALU
	.inStoreWordDividerMEM(dataRt), // Entrada que es el valor del registro Rt
	.MemRead(MemRead), //Flag de lectura, en 1 lee, en 0 nada
	.MemWrite(MemWrite), //Flag de escritura
	.flagStoreWordDividerMEM(flagStoreWordDividerMEM), //Flag que identifica si es SB, SW, SH
	.flagLoadWordDividerMEM(flagLoadWordDividerMEM), //Flag que identifica si es LB, LH,LHU etc
	.outLoadWordDividerMEM(readDataMem) //Salida del data mem, que va a ser entrada del MUX
	);
	
	StageWB callStageWB(
	.outAlu(outAlu), //Entrada que es salida la ALU
	.readDataMem(readDataMem), // Entrada que es salida de Data memory. Con el de arriba, van a MUX
	.currentPC(PostPc), // entrada del MUX del write Back
	.MemtoReg(MemtoReg), //Flag
	.outMuxWb(outMuxWb) //Salida del mux
	);


endmodule
