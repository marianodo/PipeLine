`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:38:13 01/26/2015 
// Design Name: 
// Module Name:    StageMEM 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: Agregamos dos módulos, uno StoreWordDividerMEM y otro LoadWordDividerMEM. El StoreWordDividerMEM
// esta antes de la entrada de MemWriteData y lo que hace es divir la palabra segun corresponda(SB, SH, SW)
// El LoadWordDividerMEM esta en la salida de la memoria y divide la palabra segnu (LH, LB, LW)
//////////////////////////////////////////////////////////////////////////////////
module StageMEM(
input [31:0] inMemAddress, inStoreWordDividerMEM,
input MemWrite,MemRead, clk,inRegWrite,enable,
input [1:0] flagStoreWordDividerMEM,inMemtoReg,
input [2:0] flagLoadWordDividerMEM,
input [4:0] inMuxRtRd,inRegRtMEM,
	
output [31:0] outLoadWordDividerMEM,outAluLatch,
output [1:0] outMemtoReg,
output outRegWrite,
output [4:0] outWriteReg,outRegRtMEM,

output  [31:0] memoria0,//salidas a la UART
output  [31:0] memoria1,
output  [31:0] memoria2,
output  [31:0] memoria3,
output  [31:0] memoria4
);

wire [31:0] outMemReadData, inMemWriteData,LoadWordDividerMEM;
wire [3:0] ReadWriteMEM;
wire clkNeg;

	StoreWordDividerMEM callStoreWordDividerMEM(
	.flagStoreWordDividerMEM(flagStoreWordDividerMEM),
	.inStoreWordDividerMEM(inStoreWordDividerMEM),
	
	.outStoreWordDividerMEM(inMemWriteData)
	);
	
	IPCoreAdapter callIPCoreAdapter( //Adaptador para pasar de cables de 1 bit a 4 bits...
	.MemWrite(MemWrite), //esto es porque salen 2 cables del control unit que entran a la memoria...
	.MemRead(MemRead), //pero el IPCore necesita 4
	.clk(clk),
	//.flagLoadWordDividerMEM(flagLoadWordDividerMEM),
	//.flagStoreWordDividerMEM(flagStoreWordDividerMEM),
	
	.outReadWriteMEM(ReadWriteMEM),
	.outClkNeg(clkNeg)
	);
	
	DataMemory callDataMemory( //IPCore de la memoria de datos
	.addra(inMemAddress),
	.dina(inMemWriteData),
	.wea(ReadWriteMEM),
	.clka(clkNeg),
	
	.douta(outMemReadData)
	);
	
	bufferMEM callbufferMEM (
   .inMemAddress(inMemAddress),
	.inMemWriteData(inMemWriteData),
	.clk(clk),
	.MemWrite(MemWrite),
	
	.memoria0(memoria0),//salidas a la UART
	.memoria1(memoria1),
	.memoria2(memoria2),
	.memoria3(memoria3),
	.memoria4(memoria4)
   );
	
	LoadWordDividerMEM callLoadWordDividerMEM(
	.flagLoadWordDividerMEM(flagLoadWordDividerMEM), //Flag para identificar si es LB, LH, LW, etc
	.inLoadWordDividerMEM(outMemReadData),
	
	.outLoadWordDividerMEM(LoadWordDividerMEM)
	);
	
	MEM_WB_Latch callMEM_WB_Latch(
	.inLoadWordDividerMEM(LoadWordDividerMEM),
	.inAluLatch(inMemAddress),
	.inMuxRtRd(inMuxRtRd),
	.inRegRtMEM(inRegRtMEM),
	.inMemtoReg(inMemtoReg),
	.inRegWrite(inRegWrite),
	.clk(clk),
	.enable(enable),
	
	.outLoadWordDividerMEM(outLoadWordDividerMEM),
	.outAluLatch(outAluLatch),
	.outMuxRtRd(outWriteReg),
	.outRegRtMEM(outRegRtMEM),
	.outMemtoReg(outMemtoReg),
	.outRegWrite(outRegWrite)
	);
endmodule
