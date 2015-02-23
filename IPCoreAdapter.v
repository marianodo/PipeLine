`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:22:43 02/04/2015 
// Design Name: 
// Module Name:    IPCoreAdapter 
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
module IPCoreAdapter(
input MemWrite, MemRead,clk,
output [3:0] outReadWriteMEM,
output outClkNeg
    );

reg [3:0] tmp = 0;
reg clkNegTmp;

always @(*)
begin
	clkNegTmp = ~clk;
	if(MemRead) //convierto la señal a 0000 (Los 4 bloques de memoria para lectura)
	begin
		tmp = 0;
	end
	else if(MemWrite) //convierto la señal a 1111 (Los 4 bloques de memoria para escritura)
	begin
		tmp = 4'b1111;
	end
	else
	begin
		tmp = 0;
	end
end

assign outReadWriteMEM = tmp;
assign outClkNeg = clkNegTmp;
endmodule
