`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:19:31 02/09/2015 
// Design Name: 
// Module Name:    StepModule 
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
module StepModule(
input clk,
input [7:0] inDato,
input [31:0] InstructionLatch,
output outStep,outEnable,outEnablePc
    );
reg tmpOutStep = 0;
reg tmpEnable = 0;
reg tmpEnablePc = 0;
reg flagPaso = 1; //flag para detectar que es paso a paso
reg flagCont = 0; //flag para detectar que es continuo y no desactive el enable
reg [1:0] flagStop = 2;
reg [1:0] flagStopPp = 3;
reg flagFinish = 1;
reg flagHalt = 0;

always @(negedge clk)
  begin
		if(flagHalt)
			begin
				if (InstructionLatch == 32'b111111_11111_11111_11111_11111_111111)
					begin
					tmpEnablePc = 0;
						if(flagStop > 0)
							begin
								tmpEnable = 1;
								tmpOutStep = 0;
								flagStop = flagStop -1;
							end
						else
							begin
								if(flagFinish) //Una vez finalizado todas las instrucciones habilita por un solo clock el uartTx
									begin
										tmpOutStep=1;
										tmpEnable = 0;
										flagFinish = 0;
									end
								else
									begin
										tmpOutStep = 0;
									end
							end
					end
			end
		
		else if (inDato == 8'b01110011) //si se recibe una S entramos al modo paso a paso
			begin
				if(flagPaso & flagStopPp > 0)
					begin						
						if (InstructionLatch == 32'b111111_11111_11111_11111_11111_111111)
							begin
								flagStopPp = flagStopPp - 1;
								tmpOutStep = 1;
								tmpEnable = 1;
								tmpEnablePc = 0;
								flagPaso = 0;	
							end
						else
							begin
								tmpOutStep = 1;
								tmpEnable = 1;
								tmpEnablePc = 1;
								flagPaso = 0;	
							end						
					end
				else
					begin
						tmpOutStep = 0;
						tmpEnable = 0;
						tmpEnablePc = 0;
					end
			end
		else if(inDato == 8'b01100011)
			begin
				tmpEnable = 1;
				tmpEnablePc = 1;
				tmpOutStep = 0;
				flagCont = 1;
				flagHalt = 1;
			end
		else
			begin
				if(flagCont == 0)
					begin
						tmpOutStep = 0;
						tmpEnable = 0;
						tmpEnablePc = 0;
						flagPaso = 1;
					end
			end
  end
  
  assign outEnablePc = tmpEnablePc;
  assign outStep = tmpOutStep;
  assign outEnable = tmpEnable;
endmodule