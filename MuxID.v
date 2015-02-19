`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:14:59 01/20/2015 
// Design Name: 
// Module Name:    MuxID 
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
module MuxRtRd(
	input [4:0] rt,rd,
	input [1:0] RegDst,
	output reg [4:0] outMuxRtRd
    );


initial
begin
	
	outMuxRtRd = 0;
end
always @(*)
begin
	if(RegDst == 1)
		begin
			outMuxRtRd = rd; //Selecciona tipo R
		end
	
	else if(RegDst == 0)
		begin
			outMuxRtRd = rt; //Selecciona tipo I
		end
	else if(RegDst == 2)
		begin
			outMuxRtRd = rd; //Selecciona direccion de retorno constante
		end
	else
		begin
			outMuxRtRd = rd;
		end
end
endmodule
