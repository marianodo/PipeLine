`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:41:42 01/27/2015 
// Design Name: 
// Module Name:    WordDividerMEM 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: Este modulo sirve para detectar los distintos tipos de Load que existe,
// ya sea un LB (Load Byte), LH (Load HalfWord), etc
//////////////////////////////////////////////////////////////////////////////////
module LoadWordDividerMEM( 
	 input [2:0] flagLoadWordDividerMEM,
    input [31:0] inLoadWordDividerMEM, 
	 output [31:0] outLoadWordDividerMEM
	 );
reg [31:0] tmpLoadWordDividerMEM;
//flagLoadWordDividerMEM
// 0: Full Word Signed
// 1: Full Word Unsigned
// 2: Signed Byte. (8 right bit)
// 3: Unsigned Byte.
// 4: Signed Half Word. (16 right bit)
// 5: Unsigned Half Word.
//
initial
begin
	//outLoadWordDividerMEM = 0;
	//tmpLoadWordDividerMEM = 0;
end

always @(*)
begin
	case(flagLoadWordDividerMEM) 
	0: //No existe el if (inLoadWordDividerMEM[31] == 0) ya que es toda la palabra
		begin
			tmpLoadWordDividerMEM = inLoadWordDividerMEM;
		end
	1: //No existe el if (inLoadWordDividerMEM[31] == 0) ya que es toda la palabra
		begin
			tmpLoadWordDividerMEM = inLoadWordDividerMEM;
		end
		
	2:
		begin
			if(inLoadWordDividerMEM[7] == 0)
				begin
					tmpLoadWordDividerMEM = inLoadWordDividerMEM & 32'b00000000_00000000_00000000_11111111;
				end
			else
				begin
					tmpLoadWordDividerMEM = inLoadWordDividerMEM | 32'b11111111_11111111_11111111_00000000;
				end
		end
	
	3:
		begin
			tmpLoadWordDividerMEM = inLoadWordDividerMEM & 32'b00000000_00000000_00000000_11111111;
		end
		
	4:
		begin
			if(inLoadWordDividerMEM[15] == 0)
				begin
					tmpLoadWordDividerMEM = inLoadWordDividerMEM & 32'b00000000_00000000_11111111_11111111;
				end
			else
				begin
					tmpLoadWordDividerMEM = inLoadWordDividerMEM | 32'b11111111_11111111_00000000_00000000;
				end
		end
	5:
		begin
			tmpLoadWordDividerMEM = inLoadWordDividerMEM & 32'b00000000_00000000_11111111_11111111;
		end
		
	default:
		begin
			tmpLoadWordDividerMEM = inLoadWordDividerMEM;
		end
	endcase


end

assign outLoadWordDividerMEM = tmpLoadWordDividerMEM;
endmodule
