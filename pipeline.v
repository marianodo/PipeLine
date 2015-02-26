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
input clk100,
input rx,
output tx,
output [7:0] led
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
wire Jump,Branch, zeroAluLatch,RegWrite,MemRead,MemWrite,PCSrc,PCWrite,IF_IDWrite,IF_Flush,EX_Flush,Stall, ForwardAD,ForwardBD,BranchId,outStep,RegWriteMem;
wire [31:0] instruction,outMuxWb,outAddId,PostPc,outAluLatch,dataRsId,dataRtId,outDataRt,dataRtEx,outAluLatchEx,outAluLatchMem;
wire [5:0] Function,FunctionId;
wire [4:0] outMuxRtRd,WriteReg,outRegRt,outRegRd,outRegRs,regRtEX,regRtMEM;
wire [1:0] RegDstId,RegDstEx,MemtoRegId,MemtoRegEx,MemtoRegMem, ALUOpId,flagStoreWordDividerMEMId,flagStoreWordDividerMEMEx,forwardA,forwardB;
wire [2:0] flagLoadWordDividerMEMId, flagLoadWordDividerMEMEx;
wire clk, enable,enablePc;
//Registros hacia el Debug Unit/////
wire [31:0]  Registro0;
wire [31:0]  Registro1;
wire [31:0]  Registro2;
wire [31:0]  Registro3;
wire [31:0]  Registro4;
wire [31:0]  Registro5;
wire [31:0]  Registro6;
wire [31:0]  Registro7;
wire [31:0]  Registro8;
wire [31:0]  Registro9;
wire [31:0]  Registro10;
wire [31:0]  Registro11;
wire [31:0]  Registro12;
wire [31:0]  Registro13;
wire [31:0]  Registro14;
wire [31:0]  Registro15;
wire [31:0]  Registro16;
wire [31:0]  Registro17;
wire [31:0]  Registro18;
wire [31:0]  Registro19;
wire [31:0]  Registro20;
wire [31:0]  Registro21;
wire [31:0]  Registro22;
wire [31:0]  Registro23;
wire [31:0]  Registro24;
wire [31:0]  Registro25;
wire [31:0]  Registro26;
wire [31:0]  Registro27;
wire [31:0]  Registro28;
wire [31:0]  Registro29;
wire [31:0]  Registro30;
wire [31:0]  Registro31;

//registros de memoria hacia el Debug Unit/////
wire [31:0]  memoria0;
wire [31:0]  memoria1;
wire [31:0]  memoria2;
wire [31:0]  memoria3;
wire [31:0]  memoria4;

// i n s t a n t i a t i o n s

	Clock10Mhz callClock10Mhz
   (// Clock in ports
    .CLK_IN1(clk100),      // IN
    // Clock out ports
    .CLK_OUT1(clk));    // OUT

	StageIF callStageIF(
	.Jump(Jump),
	.clk(clk), //Entrada
	.outAddId(outAddId), //Entrada que es salida del ID, es la suma del PC con el branch eq o ne
	.PCSrc(PCSrc), //Viene del latch EX_MEM
	.inPCWrite(PCWrite), //entrada que viene del hazard detection
	.inIF_IDWrite(IF_IDWrite),// entrada que viene del hazard detection
	.inIF_Flush(IF_Flush), // entrada que viene del hazard detection
	.enablePc(enablePc),
	
	.outInstructionLatch(instruction),
	.outPostPc(PostPc) //PostPc es la salida del latch IF/ID
	);
	

	StageID callStageID(
	.clk(clk), //ENTRADAS
	.inPc(PostPc),
	.instruction(instruction),
	.inFunction(instruction[5:0]), 
	.opCode(instruction[31:26]),
	.rs(instruction[25:21]), 
	.rt(instruction[20:16]),
	.rd(instruction[15:11]), //Entrada al mux id, el mux identifica si es tipo I o R
	.immediate(instruction[15:0]),
	.sa(instruction[10:6]), //Es el shift
	.writeData(outMuxWb), //Dato a escribir en posicion rd
	.writeReg(WriteReg), //VIENE DEL LATCH MEM/WB. PONERLE EL PARAMETRO
	.inRegWrite(RegWriteMem), //VIENE DEL ULTIMO LATCH. PONERLE NOMBRE AL PARAMETRO
	.inStall(Stall), //entrada que viene del hazard
	.AluOut_EX_MEM(outAluLatchEx), //Entrada que es salida de la alu
	.ForwardAD(ForwardAD), // Entrada que es salida del forward unit, elige si usar entre un dato o la ALU
	.ForwardBD(ForwardBD),
	.enable(enable),
	
	.outAddBranch(outAddId),
	.outPcLatch(outPcLatch),
	.outDataRs(dataRsId), //Salidas 
	.outDataRt(dataRtId), //Datos de los registros
	.outImmediateLatch(outImmediate), //Valor imediato de la instruccion, sale del sign extend
	.RegDst(RegDstId), // Valor del control en donde si es 1 es tipo R y si es 0 es tipo I
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
	.Jump(Jump), 
	.outRegRt(outRegRt),
	.outRegRd(outRegRd),
	.outRegRs(outRegRs),
	.outSa(sa),
	.PCSrc(PCSrc),
	////////////Salida de los Registros hacia la UART
	.Registro0(Registro0),
	.Registro1(Registro1), 
	.Registro2(Registro2), 
	.Registro3(Registro3), 
	.Registro4(Registro4), 
	.Registro5(Registro5), 
	.Registro6(Registro6), 
	.Registro7(Registro7), 
	.Registro8(Registro8), 
	.Registro9(Registro9), 
	.Registro10(Registro10), 
	.Registro11(Registro11), 
	.Registro12(Registro12), 
	.Registro13(Registro13), 
	.Registro14(Registro14), 
	.Registro15(Registro15), 
	.Registro16(Registro16), 
	.Registro17(Registro17), 
	.Registro18(Registro18), 
	.Registro19(Registro19), 
	.Registro20(Registro20), 
	.Registro21(Registro21), 
	.Registro22(Registro22), 
	.Registro23(Registro23), 
	.Registro24(Registro24), 
	.Registro25(Registro25), 
	.Registro26(Registro26), 
	.Registro27(Registro27), 
	.Registro28(Registro28), 
	.Registro29(Registro29), 
	.Registro30(Registro30), 
	.Registro31(Registro31)
	);
	
	StageEX callStageEX(
	.clk(clk),
	.RegDst(RegDstId), //salidas referentes al control unit
	.MemRead(MemReadId),
	.MemtoReg(MemtoRegId),
	.ALUOp(ALUOpId),
	.MemWrite(MemWriteId),
	.ALUSrc(ALUSrcId),
	.RegWrite(RegWriteId),
	.inflagLoadWordDividerMEM(flagLoadWordDividerMEMId),
	.inflagStoreWordDividerMEM(flagStoreWordDividerMEMId),
	.inPc(outPcLatch),
	.dataRs(dataRsId), //Entradas
	.dataRt(dataRtId), //Lee los datos de los registros
	.signExt(outImmediate), // Entrada del inmediato extendido en el mux
	.sa(sa), //Shift 
	.inRegRt(outRegRt),
	.inRegRd(outRegRd),
	.instReg(FunctionId), //Tipo de Instruccion, lo usa la alu
	.inForwardA(forwardA),//Entrada a los nuevos mux que elige entre el corto circuito o el instdecodes
	.inForwardB(forwardB),//Entrada a los nuevos mux que elige entre el corto circuito o el instdecode
	.inOutMuxWb(outMuxWb), //Entrada a los nuevos mux que es salida del muxwb del writeback
	.inEX_Flush(EX_Flush), 
	.enable(enable),
	
	.outAlu(outAluLatchEx), //Salida resultado
	.outDataRt(dataRtEx),
	.outMuxRtRd(outMuxRtRd),//Salida del Latch EX/MEM que es mux entre Rt y Rd para saber en que reg guardar.
	.outRegRt(regRtEX),
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
	.inRegRtMEM(regRtEX),
	.enable(enable),
	
	.outLoadWordDividerMEM(readDataMem), //Salida del data mem, que va a ser entrada del MUX
	.outAluLatch(outAluLatchMem), //Sale del alu para entrar al ultimo MUX del stage WB
	.outMemtoReg(MemtoRegMem),
	.outRegWrite(RegWriteMem),
	.outWriteReg(WriteReg), //Sale del latch de MEM/WB y entra al InstDecode
	.outRegRtMEM(regRtMEM),
	////////////////////////////////////////
	// Salidas a la UART del bufferMEM
	.memoria0(memoria0),
	.memoria1(memoria1),
	.memoria2(memoria2),
	.memoria3(memoria3),
	.memoria4(memoria4)
	);
	
	StageWB callStageWB(
	.outAlu(outAluLatchMem), //Entrada que es salida la ALU
	.readDataMem(readDataMem), // Entrada que es salida de Data memory. Con el de arriba, van a MUX
	.currentPC(outPcLatch), // entrada del MUX del write Back
	.MemtoReg(MemtoRegMem), //Flag
	
	.outMuxWb(outMuxWb) //Salida del mux
	);

	ForwardingUnit callForwardingUnit(
	.inRs(outRegRs),
	.inRt(outRegRt),
	.inRdEX_MEM(outMuxRtRd), //Reg salida del mux (rt y rd) que sale del latch EX/MEM
	.inRdMEM_WB(WriteReg),//Reg salida del mux (rt y rd) que sale del latch MEM/WB
	.inRegWriteEX_MEM(RegWriteEx), //Flag de escritura del latch EX_MEM
	.inRegWriteMEM_WB(RegWriteMem),
	.inBranch(BranchId),
	.inRegRtMEM_WB(regRtMEM),
	.inRegRtEX_MEM(regRtEX),
	
	.outForwardA(forwardA),
	.outForwardB(forwardB),
	.outForwardAD(ForwardAD),
	.outForwardBD(ForwardBD)
	);
	
	HazardDetectionUnit callHazardDetectionUnit(
	.inMemRead(MemReadId), //entrada que es salida del latch ID/EX
	.inPCSrc(PCSrc),
	.inID_EXRt(outRegRt), //entrada que es salida del latch ID/EX
	.inIF_IDRs(instruction[25:21]), //entradas que son salidas del latch IF/ID
	.inIF_IDRt(instruction[20:16]),
	
	.outPCWrite(PCWrite), //decide si actualizar el PC o no
	.outIF_IDWrite(IF_IDWrite), //frena el latch IF/ID
	.outIF_Flush(IF_Flush), //descarta instrucciones
	.outEX_Flush(EX_Flush), 
	.outStall(Stall) //Poner CEROS en todas las señales de control
    );
	 
	reg reset = 0;
	reg [7:0] dato;
	wire [7:0] led1;
	
	 DebugUnit callDebugUnit (
   .clk(clk), 
   .rx(rx), 
     
   .tx(tx), 
   .rx_data_out(led),
	.enable(enable),
	.enablePc(enablePc),
	
//Entrada de los registros hacia el debug	
	.Registro0(Registro0), 
	.Registro1(Registro1), 
	.Registro2(Registro2), 
	.Registro3(Registro3), 
	.Registro4(Registro4), 
	.Registro5(Registro5), 
	.Registro6(Registro6), 
	.Registro7(Registro7), 
	.Registro8(Registro8), 
	.Registro9(Registro9), 
	.Registro10(Registro10), 
	.Registro11(Registro11), 
	.Registro12(Registro12), 
	.Registro13(Registro13), 
	.Registro14(Registro14), 
	.Registro15(Registro15), 
	.Registro16(Registro16), 
	.Registro17(Registro17), 
	.Registro18(Registro18), 
	.Registro19(Registro19), 
	.Registro20(Registro20), 
	.Registro21(Registro21), 
	.Registro22(Registro22), 
	.Registro23(Registro23), 
	.Registro24(Registro24), 
	.Registro25(Registro25), 
	.Registro26(Registro26), 
	.Registro27(Registro27), 
	.Registro28(Registro28), 
	.Registro29(Registro29), 
	.Registro30(Registro30), 
	.Registro31(Registro31),
	
	// Entrada de los registros de control al debug. Viene del Stage ID
	.RegDstId(RegDstId), // Valor del control en donde si es 1 es tipo R y si es 0 es tipo I
	.BranchId(BranchId),
	.MemReadId(MemReadId),
	.MemtoRegId(MemtoRegId),
	.ALUOpId(ALUOpId),
	.MemWriteId(MemWriteId),
	.ALUSrcId(ALUSrcId),
	.RegWriteId(RegWriteId),
	/////
	// Entrada de los registros del debug. Viene del Stage EX
	.MemReadEx(MemReadEx),
	.MemWriteEx(MemWriteEx),
	.MemtoRegEx(MemtoRegEx),
	.RegWriteEx(RegWriteEx),
	////////////////////////////////////
	// Entrada de los registros del debug. Viene del Stage MEM
	.MemtoRegMem(MemtoRegMem),
	.RegWriteMem(RegWriteMem),
	
	////////////////////////////////////////
	// Entradas que vienen del bufferMEM
	.memoria0(memoria0),
	.memoria1(memoria1),
	.memoria2(memoria2),
	.memoria3(memoria3),
	.memoria4(memoria4),
	//////////////////////////////////////
	.InstructionLatch(instruction),
	.PostPc(PostPc) //PostPc es la salida del latch IF/ID
    );





endmodule
