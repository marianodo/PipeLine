module Fifo
  #(
    parameter B=8
  )
  (
	 input clk,rd,
	 input [31:0] register_0_id_out,
	 output flagTx,
	 output [B-1:0] r_data
	  
	  //Debugging signals for IF
	
	 
  );

  //Declaración de estados
localparam [1:0] idle = 2'b00,
					  start = 2'b01,
					  data = 2'b10,
					  stop = 2'b11;
						 
//Declaración de señales (las utilizare para el elemento de memoria por lo tanto son tipo REGISTRO)
reg[1:0] current_state, next_state;
reg flagTmp;
reg [7:0] tmp;						
						
//Registro de estado (Memoria)
always @(negedge clk)
	
		current_state <= next_state;
		

//Logica de salida
always @*
	begin
		case(current_state)
			idle:
					begin
						flagTmp = 0; //
						tmp = 0;//No hacer naranja
					end
			start:
					begin
						flagTmp = 0; //
						tmp = register_0_id_out[7:0];
					end
			data:
					begin
						flagTmp = 1; //
						tmp = register_0_id_out[7:0];
					end
			stop:
					begin
						flagTmp = 0; //
						tmp = 0;//No hacer naranja
					end
			default:
					begin
						flagTmp = 0; //
						tmp = 0;
					end
		endcase
	end//always de logica de salida
	

//Logica de cambio de estado
always @*
	begin
		case(current_state)
			idle:
				begin
					if(rd)
						next_state = start;
					else
						next_state = idle;
				end
			start:
				begin
				
						next_state = data;
					
				end
			data:
				begin
			
						next_state = stop;
					
				end
			stop:
				begin
					
						next_state = idle;
				
				end
			default:
					begin
						next_state = idle; //En caso de un estado invalido, el semaforo pasa a la secuencia de alternar luces
					end
		endcase
	end //always de logica cambio de estado
	
	assign r_data = tmp;
	assign flagTx = flagTmp;
endmodule //fin del modulo