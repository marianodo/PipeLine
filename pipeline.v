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
input btn,
input wire btnSelect,
input btnWRselect,
input wire btnMuxEx,
input wire [3:0] jmpAddr,
output zeroAlu,
output [31:0] outMuxWb 
  );
parameter tam = 8;

// s i g n a l s
wire [3:0] PostPc;
wire [3:0] Pc;
wire [3:0] PcMux;
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


// i n s t a n t i a t i o n s

	StageIF callStageIF(
	.inBtn(btn), //Entrada
	.rd(rd), //Salidas
	.rs(rs),
	.rt(rt),
	.sa(sa),
	.instReg(instReg) //Salida de la instruccion

	);

	StageID callStageID(
	.rd(rd), //Entradas
	.rs(rs),
	.rt(rt),
	.writeData(outMuxWb), //Dato a escribir en posicion rd
	.btnWRselect(btnWRselect), //Selector de lectura escritura de registros
	.dataRs(dataRs), //Salidas 
	.dataRt(dataRt), //Datos de los registros
	.outImmediate(outImmediate) //Valor imediato de la instruccion
	);
	
	StageEX callStageEX(
	.readRs(dataRs), //Entradas
	.readRt(dataRt), //Lee los datos de los registros
	.signExt(outImmediate), // Entrada del inmediato extendido en el mux
	.sa(sa), //Shift
	.instReg(instReg), //Tipo de Instruccion, lo usa la alu
	.btnMuxEx(btnMuxEx), //Selector entre Inmediato o registro Rt
	.outAlu(outAlu), //Salida resultado
	.zeroAlu(zeroAlu) // Comparacion de valores
	);
	
	
	StageWB callStageWB(
	.outAlu(outAlu),
	.readDataMem(readDataMem),
	.btnMuxWb(btnMuxWb),
	.outMuxWb(outMuxWb)
	);

	
	


endmodule
