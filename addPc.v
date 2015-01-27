`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:57:50 01/19/2015 
// Design Name: 
// Module Name:    addPc 
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
module addPc # (parameter tam=5)(
	input [31:0] inAddPc,
	output reg [31:0] outAddPc
    );
	 
	 
initial
begin
	outAddPc = 0;
	
end


always @(*)
begin
	if(outAddPc == 15) //Esta para que siempre se maneje dentro de las primeras 15 direcciones 
		begin
			outAddPc = 0;
		end
	else
		begin
			outAddPc = inAddPc + 1;
		end
end

endmodule
