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
input wire btnWRselect,
input wire btnMuxEx,
input wire [3:0] jmpAddr,
output zeroAlu,
output [31:0] outAlu 
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
wire [31:0] signExt;
//wire wdSelect;
wire [31:0] dataRs, dataRt;
reg select = 0; 
reg [31:0] pcJmp;


// i n s t a n t i a t i o n s

	StageIF callStageIF(
	.inBtn(btn), //Entrada
	.rd(rd), //Salidas
	.rs(rs),
	.rt(rt),
	.sa(sa),
	.instReg(instReg)

	);

	StageID callStageID(
	.rd(rd), //Entradas
	.rs(rs),
	.rt(rt),
	.writeData(writeData),
	.btnWRselect(btnWRselect),
	.dataRs(dataRs), //Salidas
	.dataRt(dataRt)
	);
	
	StageEX callStageEX(
	.readRs(dataRs), //Entradas
	.readRt(dataRt),
	.signExt(signExt),
	.sa(sa),
	.instReg(instReg),
	.btnMuxEx(btnMuxEx), 
	.outAlu(outAlu), //Salidas
	.zeroAlu(zeroAlu)
	);
	
	
	

	
	


endmodule
