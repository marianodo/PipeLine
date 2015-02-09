`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:51:56 02/05/2015 
// Design Name: 
// Module Name:    DebugUnit 
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
module DebugUnit
   #( // Default setting:
      // 19,200 baud, 8 data bits, 1 stop bit, 2^2 FIFO
      parameter DBIT = 8,     // # data bits
                SB_TICK = 16, // # ticks for stop bits, 16/24/32
                              // for 1/1.5/2 stop bits
                DVSR = 163,   // baud rate divisor
                              // DVSR = 50M/(16*baud rate)
                DVSR_BIT = 8, // # bits of DVSR
                FIFO_W = 2    // # addr bits of FIFO
                              // # words in FIFO=2^FIFO_W
   )
   (
    input wire clk,
	 input btn,rx,
	 
	 input [31:0] inRegistro0,inPc,
	 output [7:0] rx_data_out_debug,
    output  tx
   );

   // signal declaration
   wire tick, tx_done_tick;
	wire [7:0] arrayTx,RxData ,fifo_data_rd,rx_data_out; //Array de 8 bits que manda la Uart hacia la Pc
	wire WEUart; //Write Enable del Tx
	wire WEA,tx_fifo_not_empty;
	wire rx_done_tick;
	wire rx_empty;
	
	wire [7:0] dato;
	reg [7:0] tmp = 0;
	reg reset = 0;
	reg env = 1;
	reg [7:0] tx_fifo_out = 8'b01000001;
   //body
	
	assign dato = inRegistro0[31:24];
   BaudGenerator #(
	.M(DVSR), 
	.N(DVSR_BIT)) callBaudGenerator(
		.clk(clk), 
		.reset(reset), 
		.q(), 
		.max_tick(tick));
		
		
	UartRx #(
	.DBIT(DBIT),
	.SB_TICK(SB_TICK)
  )
	callUartRx(
	.clk(clk),
	.rx(rx),
	.s_tick(tick),
	
	.rx_done_tick(rx_done_tick),
	.dout(rx_data_out)
	);
		

	Fifo #(
	 .B(DBIT)
	)
	callFifo (
    .clk(clk), 
    .rd(tx_done_tick), 
    .wr(rx_done_tick), 
    .full(), 
    .empty(rx_empty), 
    .r_data(fifo_data_rd),
	 
	 //Debug signals for IF
	 .current_pc(current_pc),
	 //Debugging signals for ID
	 
	 .register_0_id_out(inRegistro0)
    
   );

   UartTx #(.DBIT(DBIT), .SB_TICK(SB_TICK)) callUartTx
      (.clk(clk),  
		.tx_start(btn), //tiene que ser uno
      .s_tick(tick), // se lo da el baud rate
		.data_in(dato), //dato de entrada
		
      .tx_done_tick(tx_done_tick), 
		.tx(tx));

  
assign tx_fifo_not_empty = ~rx_empty;
	
	assign rx_data_out_debug = rx_data_out;
endmodule



