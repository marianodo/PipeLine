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
wire [31:0]  Pc, PcMux, outPcLatch;
wire [4:0] rs;
wire [4:0] rd;
wire [4:0] rt;
wire [4:0] sa;
wire [5:0] instReg;
wire [31:0] writeData;
wire [31:0] outImmediate; //Salida del Sign Extend

//wire wdSelect;
wire [31:0] dataRs, dataRt;
wire btnMuxWb;
wire [31:0] readDataMem;
reg select = 0; 
reg [31:0] pcJmp;



//Wire de control
wire ALUSrc,flagBranch;
wire [1:0] flagStoreWordDividerMEM,MemtoReg, RegDst;
wire [2:0] flagLoadWordDividerMEM;
wire [1:0] ALUOp;
//////////////////////

////
wire Jump,Branch, zeroAluLatch,RegWrite,MemRead,MemWrite;
wire [31:0] instruction, outAddExLatch,PostPc,outAluLatch,dataRsId,dataRtId;
wire [5:0] Function;
wire [4:0] outMuxRtRd;
wire [1:0] RegDstId;
// i n s t a n t i a t i o n s

	StageIF callStageIF(
	.Jump(Jump),
	.clk(clk), //Entrada
	.outAddEx(outAddExLatch),
	.Branch(Branch),
	.zeroAlu(zeroAluLatch), //Viene del latch EX_MEM
	
	.outInstructionLatch(instruction),
	.outPostPc(PostPc) //PostPc es la salida del latch IF/ID
	);
	

	StageID callStageID(
	.clk(clk), //ENTRADAS
	.inPc(PostPc),
	.inFunction(instruction[5:0]), 
	.opCode(instruction[31:26]),
	.rs(instruction[25:21]), 
	.rt(instruction[20:16]),
	.rd(instruction[15:11]), //Entrada al mux id, el mux identifica si es tipo I o R
	.immediate(instruction[15:0]),
	.writeData(outMuxWb), //Dato a escribir en posicion rd
	.WriteReg(WriteReg), //VIENE DEL LATCH MEM/WB. PONERLE EL PARAMETRO
	.inRegWrite(RegWrite), //VIENE DEL ULTIMO LATCH. PONERLE NOMBRE AL PARAMETRO
	
	.outPcLatch(outPcLatch),
	.RegDst(RegDstId), // Valor del control en donde si es 1 es tipo R y si es 0 es tipo I
	.outDataRs(dataRsId), //Salidas 
	.outDataRt(dataRtId), //Datos de los registros
	.outImmediateLatch(outImmediate), //Valor imediato de la instruccion, sale del sign extend
	.Branch(BranchId),
	.MemRead(MemReadId),
	.MemtoReg(MemtoRegId),
	.ALUOp(ALUOpId),
	.MemWrite(MemWriteId),
	.ALUSrc(ALUSrcId),
	.RegWrite(RegWriteId),
	.flagLoadWordDividerMEM(flagLoadWordDividerMEMId),
	.flagStoreWordDividerMEM(flagStoreWordDividerMEMId),
	.Function(FunctionId),
	.flagBranch(flagBranchId),
	.Jump(JumpId), //terminan las salidas referentes al control unit
	.outRegRt(outRegRt),
	.outRegRd(outRegRd)
	);
	
	StageEX callStageEX(
	.clk(clk),
	.RegDst(RegDstId), //salidas referentes al control unit
	.Branch(BranchId),
	.MemRead(MemReadId),
	.MemtoReg(MemtoRegId),
	.ALUOp(ALUOpId),
	.MemWrite(MemWriteId),
	.ALUSrc(ALUSrcId),
	.RegWrite(RegWriteId),
	.inflagLoadWordDividerMEM(flagLoadWordDividerMEMId),
	.inflagStoreWordDividerMEM(flagStoreWordDividerMEMId),
	.flagBranch(flagBranchId),
	.Jump(JumpId), //terminan las salidas referentes al control unit
	.inPc(outPcLatch),
	.dataRs(dataRsId), //Entradas
	.dataRt(dataRtId), //Lee los datos de los registros
	.signExt(outImmediate), // Entrada del inmediato extendido en el mux
	.sa(sa), //Shift CORREGIR
	.inRegRt(outRegRt),
	.inRegRd(outRegRd),
	.instReg(FunctionId), //Tipo de Instruccion, lo usa la alu
	
	.outAlu(outAluLatchEx), //Salida resultado
	.outZeroAlu(zeroAluLatch), // Comparacion de valores
	.outAddEx(outAddExLatch),
	.outDataRt(dataRtEx),
	.outMuxRtRd(outMuxRtRd),
	.outBranch(BranchEx),
	.outMemRead(MemReadEx),
	.outMemWrite(MemWriteEx),
	.outMemtoReg(MemtoRegEx),
	.outRegWrite(RegWriteEx),
	.outflagLoadWordDividerMEM(flagLoadWordDividerMEMEx),
	.outflagStoreWordDividerMEM(flagStoreWordDividerMEMEx)
	);
	
	StageMEM callStageMEM(
	.clk(clk),
	.inMemAddress(outAluLatchEx), //Entrada que es salida de ALU
	.inStoreWordDividerMEM(dataRtEx), // Entrada que es el valor del registro Rt
	.MemRead(MemReadEx), //Flag de lectura, en 1 lee, en 0 nada
	.MemWrite(MemWriteEx), //Flag de escritura
	.flagStoreWordDividerMEM(flagStoreWordDividerMEMEx), //Flag que identifica si es SB, SW, SH
	.flagLoadWordDividerMEM(flagLoadWordDividerMEMEx), //Flag que identifica si es LB, LH,LHU etc
	.inMemtoReg(MemtoRegEx),
	.inRegWrite(RegWriteEx),
	.inMuxRtRd(outMuxRtRd),
	
	.outLoadWordDividerMEM(readDataMem), //Salida del data mem, que va a ser entrada del MUX
	.outAluLatch(outAluLatchMem), //Sale del alu para entrar al ultimo MUX del stage WB
	.outMemtoReg(MemtoRegMem),
	.outRegWrite(RegWriteMem),
	.outWriteReg(WriteReg) //Sale del latch de MEM/WB y entra al InstDecode
	
	);
	
	StageWB callStageWB(
	.outAlu(outAluLatchMem), //Entrada que es salida la ALU
	.readDataMem(readDataMem), // Entrada que es salida de Data memory. Con el de arriba, van a MUX
	.currentPC(outPcLatch), // entrada del MUX del write Back
	.MemtoReg(MemtoRegMem), //Flag
	
	.outMuxWb(outMuxWb) //Salida del mux
	);


endmodule
