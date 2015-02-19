module Fifo
  #(
    parameter B=8
  )
  (
		input wire clk,rd,wr,
		//Entrada de los registros del Instdecode
		input wire  [31:0] Registro0,
		input wire  [31:0] Registro1,
		input wire  [31:0] Registro2,
		input wire  [31:0] Registro3,
		input wire  [31:0] Registro4,
		input wire  [31:0] Registro5,
		input wire  [31:0] Registro6,
		input wire  [31:0] Registro7,
		input wire  [31:0] Registro8,
		input wire  [31:0] Registro9,
		input wire  [31:0] Registro10,
		input wire  [31:0] Registro11,
		input wire  [31:0] Registro12,
		input wire  [31:0] Registro13,
		input wire  [31:0] Registro14,
		input wire  [31:0] Registro15,
		input wire  [31:0] Registro16,
		input wire  [31:0] Registro17,
		input wire  [31:0] Registro18,
		input wire  [31:0] Registro19,
		input wire  [31:0] Registro20,
		input wire  [31:0] Registro21,
		input wire  [31:0] Registro22,
		input wire  [31:0] Registro23,
		input wire  [31:0] Registro24,
		input wire  [31:0] Registro25,
		input wire  [31:0] Registro26,
		input wire  [31:0] Registro27,
		input wire  [31:0] Registro28,
		input wire  [31:0] Registro29,
		input wire  [31:0] Registro30,
		input wire  [31:0] Registro31,
		
	/////////////////////////////
	//Entrada de los registros de control del Control Unit
		input wire BranchId, MemReadId,MemWriteId,ALUSrcId, RegWriteId,
		input wire [1:0] RegDstId, MemtoRegId,ALUOpId,
	//////////////////////////////
	 //Registros del Stage EX
		input wire  MemReadEx,MemWriteEx, RegWriteEx,
		input wire [1:0]  MemtoRegEx,
		/////////////
		//Registros del Stage MEM
		input wire   RegWriteMem,
		input wire [1:0]  MemtoRegMem,
		/////////////
	 output wire full, empty,
	 output wire [B-1:0] r_data
	  
	
  );

  reg [B-1:0] array_reg [0:135];
  reg [7:0] w_ptr_next, w_ptr_succ;
  reg [7:0] w_ptr_reg = 0;
  reg [7:0] r_ptr_reg, r_ptr_next, r_ptr_succ;
  reg full_reg, empty_reg, full_next, empty_next;
  wire wr_en;
  integer i;

  //Banco de registros y memoria
  always @(posedge clk)
	  if(wr_en && r_ptr_next != 3) begin
	  
			//****************** Instruction Fetch ********************
			array_reg[0] = 0;
			array_reg[1] = 0;
			array_reg[2] = 0;
			array_reg[3] = 0;
			
			array_reg[4] = Registro0[31:24]; 	//Valor del PC que se ejecutará en la próxima instruccion
			array_reg[5] = Registro0[23:16];//Valor del PC que se utilizará para calcular la dirección de destino
			array_reg[6] = Registro0[15:8];//Instrucción que se ejecutará (bits 31:24)
			array_reg[7] = Registro0[7:0]; //Instrucción que se ejecutará (bits 23:16)
			
			array_reg[8] = Registro1[31:24]; 	//Valor del PC que se ejecutará en la próxima instruccion
			array_reg[9] = Registro1[23:16];//Valor del PC que se utilizará para calcular la dirección de destino
			array_reg[10] = Registro1[15:8];//Instrucción que se ejecutará (bits 31:24)
			array_reg[11] = Registro1[7:0]; //Instrucción que se ejecutará (bits 23:16)
			
			array_reg[12] = Registro2[31:24]; 	//Valor del PC que se ejecutará en la próxima instruccion
			array_reg[13] = Registro2[23:16];//Valor del PC que se utilizará para calcular la dirección de destino
			array_reg[14] = Registro2[15:8];//Instrucción que se ejecutará (bits 31:24)
			array_reg[15] = Registro2[7:0]; //Instrucción que se ejecutará (bits 23:16)
			
			array_reg[16] = Registro3[31:24]; 	//Valor del PC que se ejecutará en la próxima instruccion
			array_reg[17] = Registro3[23:16];//Valor del PC que se utilizará para calcular la dirección de destino
			array_reg[18] = Registro3[15:8];//Instrucción que se ejecutará (bits 31:24)
			array_reg[19] = Registro3[7:0]; //Instrucción que se ejecutará (bits 23:16)
			
			array_reg[20] = Registro4[31:24]; 	//Valor del PC que se ejecutará en la próxima instruccion
			array_reg[21] = Registro4[23:16];//Valor del PC que se utilizará para calcular la dirección de destino
			array_reg[22] = Registro4[15:8];//Instrucción que se ejecutará (bits 31:24)
			array_reg[23] = Registro4[7:0]; //Instrucción que se ejecutará (bits 23:16)
			
			array_reg[24] = Registro5[31:24]; 	//Valor del PC que se ejecutará en la próxima instruccion
			array_reg[25] = Registro5[23:16];//Valor del PC que se utilizará para calcular la dirección de destino
			array_reg[26] = Registro5[15:8];//Instrucción que se ejecutará (bits 31:24)
			array_reg[27] = Registro5[7:0]; //Instrucción que se ejecutará (bits 23:16)
			
			array_reg[28] = Registro6[31:24]; 	//Valor del PC que se ejecutará en la próxima instruccion
			array_reg[29] = Registro6[23:16];//Valor del PC que se utilizará para calcular la dirección de destino
			array_reg[30] = Registro6[15:8];//Instrucción que se ejecutará (bits 31:24)
			array_reg[31] = Registro6[7:0]; //Instrucción que se ejecutará (bits 23:16)
			
			array_reg[32] = Registro7[31:24]; 	//Valor del PC que se ejecutará en la próxima instruccion
			array_reg[33] = Registro7[23:16];//Valor del PC que se utilizará para calcular la dirección de destino
			array_reg[34] = Registro7[15:8];//Instrucción que se ejecutará (bits 31:24)
			array_reg[35] = Registro7[7:0]; //Instrucción que se ejecutará (bits 23:16)
			
			array_reg[36] = Registro8[31:24]; 	//Valor del PC que se ejecutará en la próxima instruccion
			array_reg[37] = Registro8[23:16];//Valor del PC que se utilizará para calcular la dirección de destino
			array_reg[38] = Registro8[15:8];//Instrucción que se ejecutará (bits 31:24)
			array_reg[39] = Registro8[7:0]; //Instrucción que se ejecutará (bits 23:16)
			
			array_reg[40] = Registro9[31:24]; 	//Valor del PC que se ejecutará en la próxima instruccion
			array_reg[41] = Registro9[23:16];//Valor del PC que se utilizará para calcular la dirección de destino
			array_reg[42] = Registro9[15:8];//Instrucción que se ejecutará (bits 31:24)
			array_reg[43] = Registro9[7:0]; //Instrucción que se ejecutará (bits 23:16)
			
			array_reg[44] = Registro10[31:24]; 	//Valor del PC que se ejecutará en la próxima instruccion
			array_reg[45] = Registro10[23:16];//Valor del PC que se utilizará para calcular la dirección de destino
			array_reg[46] = Registro10[15:8];//Instrucción que se ejecutará (bits 31:24)
			array_reg[47] = Registro10[7:0]; //Instrucción que se ejecutará (bits 23:16)
			
			array_reg[48] = Registro11[31:24]; 	//Valor del PC que se ejecutará en la próxima instruccion
			array_reg[49] = Registro11[23:16];//Valor del PC que se utilizará para calcular la dirección de destino
			array_reg[50] = Registro11[15:8];//Instrucción que se ejecutará (bits 31:24)
			array_reg[51] = Registro11[7:0]; //Instrucción que se ejecutará (bits 23:16)
			
			array_reg[52] = Registro12[31:24]; 	//Valor del PC que se ejecutará en la próxima instruccion
			array_reg[53] = Registro12[23:16];//Valor del PC que se utilizará para calcular la dirección de destino
			array_reg[54] = Registro12[15:8];//Instrucción que se ejecutará (bits 31:24)
			array_reg[55] = Registro12[7:0]; //Instrucción que se ejecutará (bits 23:16)
			
			array_reg[56] = Registro13[31:24]; 	//Valor del PC que se ejecutará en la próxima instruccion
			array_reg[57] = Registro13[23:16];//Valor del PC que se utilizará para calcular la dirección de destino
			array_reg[58] = Registro13[15:8];//Instrucción que se ejecutará (bits 31:24)
			array_reg[59] = Registro13[7:0]; //Instrucción que se ejecutará (bits 23:16)
			
			array_reg[60] = Registro14[31:24]; 	//Valor del PC que se ejecutará en la próxima instruccion
			array_reg[61] = Registro14[23:16];//Valor del PC que se utilizará para calcular la dirección de destino
			array_reg[62] = Registro14[15:8];//Instrucción que se ejecutará (bits 31:24)
			array_reg[63] = Registro14[7:0]; //Instrucción que se ejecutará (bits 23:16)
			
			array_reg[64] = Registro15[31:24]; 	//Valor del PC que se ejecutará en la próxima instruccion
			array_reg[65] = Registro15[23:16];//Valor del PC que se utilizará para calcular la dirección de destino
			array_reg[66] = Registro15[15:8];//Instrucción que se ejecutará (bits 31:24)
			array_reg[67] = Registro15[7:0]; //Instrucción que se ejecutará (bits 23:16)
			
			array_reg[68] = Registro16[31:24]; 	//Valor del PC que se ejecutará en la próxima instruccion
			array_reg[69] = Registro16[23:16];//Valor del PC que se utilizará para calcular la dirección de destino
			array_reg[70] = Registro16[15:8];//Instrucción que se ejecutará (bits 31:24)
			array_reg[71] = Registro16[7:0]; //Instrucción que se ejecutará (bits 23:16)
			
			array_reg[72] = Registro17[31:24]; 	//Valor del PC que se ejecutará en la próxima instruccion
			array_reg[73] = Registro17[23:16];//Valor del PC que se utilizará para calcular la dirección de destino
			array_reg[74] = Registro17[15:8];//Instrucción que se ejecutará (bits 31:24)
			array_reg[75] = Registro17[7:0]; //Instrucción que se ejecutará (bits 23:16)
			
			array_reg[76] = Registro18[31:24]; 	//Valor del PC que se ejecutará en la próxima instruccion
			array_reg[77] = Registro18[23:16];//Valor del PC que se utilizará para calcular la dirección de destino
			array_reg[78] = Registro18[15:8];//Instrucción que se ejecutará (bits 31:24)
			array_reg[79] = Registro18[7:0]; //Instrucción que se ejecutará (bits 23:16)
			
			array_reg[80] = Registro19[31:24]; 	//Valor del PC que se ejecutará en la próxima instruccion
			array_reg[81] = Registro19[23:16];//Valor del PC que se utilizará para calcular la dirección de destino
			array_reg[82] = Registro19[15:8];//Instrucción que se ejecutará (bits 31:24)
			array_reg[83] = Registro19[7:0]; //Instrucción que se ejecutará (bits 23:16)
			
			array_reg[84] = Registro20[31:24]; 	//Valor del PC que se ejecutará en la próxima instruccion
			array_reg[85] = Registro20[23:16];//Valor del PC que se utilizará para calcular la dirección de destino
			array_reg[86] = Registro20[15:8];//Instrucción que se ejecutará (bits 31:24)
			array_reg[87] = Registro20[7:0]; //Instrucción que se ejecutará (bits 23:16)
			
			array_reg[88] = Registro21[31:24]; 	//Valor del PC que se ejecutará en la próxima instruccion
			array_reg[89] = Registro21[23:16];//Valor del PC que se utilizará para calcular la dirección de destino
			array_reg[90] = Registro21[15:8];//Instrucción que se ejecutará (bits 31:24)
			array_reg[91] = Registro21[7:0]; //Instrucción que se ejecutará (bits 23:16)
			
			array_reg[92] = Registro22[31:24]; 	//Valor del PC que se ejecutará en la próxima instruccion
			array_reg[93] = Registro22[23:16];//Valor del PC que se utilizará para calcular la dirección de destino
			array_reg[94] = Registro22[15:8];//Instrucción que se ejecutará (bits 31:24)
			array_reg[95] = Registro22[7:0]; //Instrucción que se ejecutará (bits 23:16)
			
			array_reg[96] = Registro23[31:24]; 	//Valor del PC que se ejecutará en la próxima instruccion
			array_reg[97] = Registro23[23:16];//Valor del PC que se utilizará para calcular la dirección de destino
			array_reg[98] = Registro23[15:8];//Instrucción que se ejecutará (bits 31:24)
			array_reg[99] = Registro23[7:0]; //Instrucción que se ejecutará (bits 23:16)
			
			array_reg[100] = Registro24[31:24]; 	//Valor del PC que se ejecutará en la próxima instruccion
			array_reg[101] = Registro24[23:16];//Valor del PC que se utilizará para calcular la dirección de destino
			array_reg[102] = Registro24[15:8];//Instrucción que se ejecutará (bits 31:24)
			array_reg[103] = Registro24[7:0]; //Instrucción que se ejecutará (bits 23:16)
			
			array_reg[104] = Registro25[31:24]; 	//Valor del PC que se ejecutará en la próxima instruccion
			array_reg[105] = Registro25[23:16];//Valor del PC que se utilizará para calcular la dirección de destino
			array_reg[106] = Registro25[15:8];//Instrucción que se ejecutará (bits 31:24)
			array_reg[107] = Registro25[7:0]; //Instrucción que se ejecutará (bits 23:16)
			
			array_reg[108] = Registro26[31:24]; 	//Valor del PC que se ejecutará en la próxima instruccion
			array_reg[109] = Registro26[23:16];//Valor del PC que se utilizará para calcular la dirección de destino
			array_reg[110] = Registro26[15:8];//Instrucción que se ejecutará (bits 31:24)
			array_reg[111] = Registro26[7:0]; //Instrucción que se ejecutará (bits 23:16)
			
			array_reg[112] = Registro27[31:24]; 	//Valor del PC que se ejecutará en la próxima instruccion
			array_reg[113] = Registro27[23:16];//Valor del PC que se utilizará para calcular la dirección de destino
			array_reg[114] = Registro27[15:8];//Instrucción que se ejecutará (bits 31:24)
			array_reg[115] = Registro27[7:0]; //Instrucción que se ejecutará (bits 23:16)
			
			array_reg[116] = Registro28[31:24]; 	//Valor del PC que se ejecutará en la próxima instruccion
			array_reg[117] = Registro28[23:16];//Valor del PC que se utilizará para calcular la dirección de destino
			array_reg[118] = Registro28[15:8];//Instrucción que se ejecutará (bits 31:24)
			array_reg[119] = Registro28[7:0]; //Instrucción que se ejecutará (bits 23:16)
			
			array_reg[120] = Registro29[31:24]; 	//Valor del PC que se ejecutará en la próxima instruccion
			array_reg[121] = Registro29[23:16];//Valor del PC que se utilizará para calcular la dirección de destino
			array_reg[122] = Registro29[15:8];//Instrucción que se ejecutará (bits 31:24)
			array_reg[123] = Registro29[7:0]; //Instrucción que se ejecutará (bits 23:16)
			
			array_reg[124] = Registro30[31:24]; 	//Valor del PC que se ejecutará en la próxima instruccion
			array_reg[125] = Registro30[23:16];//Valor del PC que se utilizará para calcular la dirección de destino
			array_reg[126] = Registro30[15:8];//Instrucción que se ejecutará (bits 31:24)
			array_reg[127] = Registro30[7:0]; //Instrucción que se ejecutará (bits 23:16)
			
			array_reg[128] = Registro31[31:24]; 	
			array_reg[129] = Registro31[23:16]; 	
			array_reg[130] = Registro31[15:8]; 	
			array_reg[131] = Registro31[7:0]; 	
			
			array_reg[132] = {2'b00,RegDstId, MemtoRegId,ALUOpId}; //Señales de control de 2 bits en latch ID/EX
			array_reg[133] = {3'b101,BranchId, MemReadId,MemWriteId,ALUSrcId, RegWriteId}; //Señales de control de 1 bit en latch ID/EX
			array_reg[134] = {3'b010,MemReadEx,MemWriteEx,RegWriteEx,MemtoRegEx}; // Señales de control del Stage Ex
			array_reg[135] = {5'b00110,RegWriteMem,MemtoRegMem};
			
	  end	

  assign r_data = array_reg[r_ptr_reg];
  assign wr_en = wr & ~full_reg;

  always @(posedge clk)
	begin
		w_ptr_reg <= w_ptr_next;
		r_ptr_reg <= r_ptr_next;
		full_reg <= full_next;
		empty_reg <= empty_next;
	end
	
	
	reg [7:0] aux;
  //Logica del proximo estado
  always @*
  begin
	  w_ptr_succ = w_ptr_reg;
	  aux = r_ptr_reg + 1;
	  r_ptr_succ = aux [7:0];
	  full_next = full_reg;
	  empty_next = empty_reg;
	  w_ptr_next = w_ptr_reg;
	  r_ptr_next = r_ptr_reg;

	  case({wr,rd})
    //2'b00: No hay que hacer nada
		  2'b01:
			  //Hay que sacar el primer elemento de la cola
			  if(~empty_reg)
				begin
				  r_ptr_next = r_ptr_succ;
				  full_next = 1'b0;
				  if(r_ptr_succ == w_ptr_reg)
					  empty_next = 1'b1;
				end
				
		  2'b10:
			  //Hay que escribir un nuevo elemento en la cola
			  if(~full_reg)
				begin
				  w_ptr_next = w_ptr_succ;
				  empty_next = 1'b0;
				  if(w_ptr_succ == r_ptr_reg)
					  full_next = 1'b1;
				end
		  
		  2'b11:
			begin
			  w_ptr_next = w_ptr_succ;
			  r_ptr_next = r_ptr_succ;
			end

	  endcase
  end
  
  //Logica de salida
  assign full = full_reg;
  assign empty = empty_reg;

endmodule
