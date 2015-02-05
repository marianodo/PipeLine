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
	 
	 
	 input [31:0] inRegistro0,inPc,
	 
    output wire tx
   );

   // signal declaration
   wire tick, tx_done_tick;
	wire [7:0] arrayTx; //Array de 8 bits que manda la Uart hacia la Pc
	wire WEUart; //Write Enable del Tx
	
	reg reset = 0;
	reg tx_fifo_not_empty = 1;
	reg [7:0] tx_fifo_out = 8'b01000001;
   //body
   BaudGenerator #(.M(DVSR), .N(DVSR_BIT)) callBaudGenerator(
		.clk(clk), 
		.reset(reset), 
		.q(), 
		.max_tick(tick));

	Fifo callFifo(
	.inRegistro0(inRegistro0),
	.inPc(inPc),
	
	.outArray(arrayTx),
	.outWE(WEUart)
	);
	

   UartTx #(.DBIT(DBIT), .SB_TICK(SB_TICK)) callUartTx
      (.clk(clk), 
		.reset(reset), 
		.tx_start(WEUart), //tiene que ser uno
      .s_tick(tick), // se lo da el baud rate
		.din(arrayTx), //dato de entrada
		 
      .tx_done_tick(tx_done_tick), 
		.tx(tx));

  

endmodule



