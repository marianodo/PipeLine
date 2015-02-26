`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:11:42 02/24/2015 
// Design Name: 
// Module Name:    bufferMEM 
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
module bufferMEM(
input [31:0] inMemAddress, inMemWriteData,
input MemWrite,clk,
output reg [31:0] memoria0,memoria1,memoria2,memoria3,memoria4
    );
	 
reg [31:0] buffer[0:4];
reg [31:0] tmpAddress =0;
integer i;

initial
	begin
		buffer[0] = 32'b00000_00000_00000_00000_00000_00000_10; //Word
		buffer[1] = 32'b00111_00100_01000_00100_00110_00011_10; // Byte
		buffer[2] = 32'b01110_01110_00010_00100_00010_00110_00; //Half
		buffer[3] = 32'b01110_01110_00010_00100_00010_00110_00; //Half
		buffer[4] = 32'b01110_01110_00010_00100_00010_00110_00; //Half
	//	for (i = 5; i < 1024; i=i+1)
	//			buffer[i] = 32'b00000_00000_00000_00000_00000_00000_00;
	end

always @(negedge clk)
begin
	if(MemWrite == 1)
		begin
			case(inMemAddress)
					32'b00000000000000000000000000000000:
						tmpAddress = 0;
					
					32'b00000000000000000000000000000100:
						tmpAddress = 1;
						
					32'b00000000000000000000000000001000:
						tmpAddress = 2;
					
					32'b00000000000000000000000000001100:
						tmpAddress = 3;
						
					32'b00000000000000000000000000010000:
						tmpAddress = 4;
						
					default: 
						tmpAddress = 0;
			endcase
				
			buffer[tmpAddress] = inMemWriteData;
		end
		memoria0 = buffer[0];
		memoria1 = buffer[1];
		memoria2 = buffer[2];
		memoria3 = buffer[3];
		memoria4 = buffer[4];

end
endmodule
