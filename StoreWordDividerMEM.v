`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:02:08 01/27/2015 
// Design Name: 
// Module Name:    StoreWordDividerMEM 
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
module StoreWordDividerMEM(
	input [1:0] flagStoreWordDividerMEM,
	input [31:0] inStoreWordDividerMEM,
	output [31:0] outStoreWordDividerMEM
    );
reg [31:0] tmpStoreWordDividerMEM;
// 0: Full Word Signed
// 1: Byte Signed. (8 right bits)
// 2: Half Word Signed ( 16 right bits)
always @ (*)
begin
case(flagStoreWordDividerMEM) 
	0: 
		begin
			tmpStoreWordDividerMEM = inStoreWordDividerMEM;
		end
	1: 
		begin
			if(inStoreWordDividerMEM[7] == 0)
				begin
					tmpStoreWordDividerMEM = inStoreWordDividerMEM & 32'b00000000_00000000_00000000_11111111;
				end
			else
				begin
					tmpStoreWordDividerMEM = inStoreWordDividerMEM | 32'b11111111_11111111_11111111_00000000;
				end

		end
		
	2:
		begin
			if(inStoreWordDividerMEM[15] == 0)
				begin
					tmpStoreWordDividerMEM = inStoreWordDividerMEM & 32'b00000000_00000000_11111111_11111111;
				end
			else
				begin
					tmpStoreWordDividerMEM = inStoreWordDividerMEM | 32'b11111111_11111111_00000000_00000000;
				end
		end
	default:
		begin
			tmpStoreWordDividerMEM = inStoreWordDividerMEM;
		end
	endcase
end
assign outStoreWordDividerMEM = tmpStoreWordDividerMEM;
endmodule
