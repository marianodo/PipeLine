`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:42:35 02/02/2015 
// Design Name: 
// Module Name:    HazardDetectionUnit 
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
module HazardDetectionUnit(
input inMemRead,inPCSrc,
input [4:0] inID_EXRt,inIF_IDRs,inIF_IDRt,inRegRtMEM,
output reg outPCWrite,outIF_IDWrite,outIF_Flush,outEX_Flush,outStall
    );



always@ (*)
begin			
			if(inPCSrc) //si se cumple que se realiza un branch...
				begin
					outPCWrite = 1; //actualizo el PC
					outIF_IDWrite = 1; //Permito el paso al latch
					outStall=0; //Ponemos las señales de control en 0
					outIF_Flush = 1; //descartamos las futuras instrucciones
					outEX_Flush = 0; //descartamos instrucciones del stage EX
				end
			
			else if(inMemRead
			& ((inID_EXRt == inIF_IDRs)
				| (inID_EXRt == inIF_IDRt))) //existe una instruccion LOAD en la que hay problemas con los registros
				begin
					outPCWrite = 0;
					outIF_IDWrite = 0;
					outStall = 0;
					outIF_Flush  = 0;
					outEX_Flush = 0;
				end
			
			else //situacion normal sin problematicas
				begin
					outPCWrite = 1;
					outIF_IDWrite = 1;
					outStall = 1;
					outIF_Flush = 0;
					outEX_Flush = 0;
				end	
end

endmodule
