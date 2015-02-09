module Fifo
  #(
    parameter B=8
  )
  (
	 input wire clk,rd,wr,
	 output wire full, empty,
	 output wire [B-1:0] r_data,
	  
	  //Debugging signals for IF
	 input [7:0] current_pc,
	 input [31:0] register_0_id_out
	 
  );

  reg [B-1:0] array_reg [190:0];
  reg [7:0] w_ptr_reg, w_ptr_next, w_ptr_succ;
  reg [7:0] r_ptr_reg, r_ptr_next, r_ptr_succ;
  reg full_reg, empty_reg, full_next, empty_next;
  wire wr_en;
  
  
  //Banco de registros y memoria
  always @(posedge clk)
	  if(wr_en && r_ptr_next != 3) begin
		
			
			//******************* Instruction Decode ********************
			array_reg[0] = register_0_id_out[31:24]; 	//Registro 0 (bits 31:24)
			array_reg[1] = register_0_id_out[23:16]; 	//Registro 0 (bits 23:16)
			array_reg[2] = register_0_id_out[15:8]; 	//Registro 0 (bits 15:8)
			array_reg[3] = register_0_id_out[7:0]; 	//Registro 0 (bits 7:0)
			
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
	
	
	reg [8:0] aux;
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
