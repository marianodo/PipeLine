//Listing 8.4
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
      input wire  rx,
		
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
			
	   output wire  tx,
    
	   output [7:0] rx_data_out,
	   output enable
   );
	reg enableLatch = 0;
	reg reset = 0;
   // signal declaration
   wire tick, rx_done_tick, tx_done_tick,tx_full;
   wire tx_empty, tx_fifo_not_empty, rx_empty;
   wire [7:0] tx_fifo_out;
	wire [7:0] r_data;
	wire btn_tick;
	wire db_tick;
   //body
   BaudGenerator #(.M(DVSR), .N(DVSR_BIT)) callBaudGenerator
      (.clk(clk), .reset(reset), .q(), .max_tick(tick));

   UartRx #(.DBIT(DBIT), .SB_TICK(SB_TICK)) callUartRx
      (.clk(clk), .reset(reset), .rx(rx), .s_tick(tick),
       .rx_done_tick(rx_done_tick), .dout(rx_data_out));

	StepModule callStepModule(
	.clk(clk),
	.inDato(rx_data_out), //tecla apretada
	.outStep(outStep)
	);
	
	
	
   Fifo #(
	 .B(DBIT)
	)
	callFifo (
   .clk(clk), 
   .rd(tx_done_tick), 
   .wr(outStep),
	.Registro0(Registro0),
	.Registro1(Registro1), 
	.Registro2(Registro2), 
	.Registro3(Registro3), 
	.Registro4(Registro4), 
	.Registro5(Registro5), 
	.Registro6(Registro6), 
	.Registro7(Registro7), 
	.Registro8(Registro8), 
	.Registro9(Registro9), 
	.Registro10(Registro10), 
	.Registro11(Registro11), 
	.Registro12(Registro12), 
	.Registro13(Registro13), 
	.Registro14(Registro14), 
	.Registro15(Registro15), 
	.Registro16(Registro16), 
	.Registro17(Registro17), 
	.Registro18(Registro18), 
	.Registro19(Registro19), 
	.Registro20(Registro20), 
	.Registro21(Registro21), 
	.Registro22(Registro22), 
	.Registro23(Registro23), 
	.Registro24(Registro24), 
	.Registro25(Registro25), 
	.Registro26(Registro26), 
	.Registro27(Registro27), 
	.Registro28(Registro28), 
	.Registro29(Registro29), 
	.Registro30(Registro30), 
	.Registro31(Registro31),
   .full(), 
   .empty(rx_empty), 
   .r_data(tx_fifo_out)
	 );

   UartTx #(.DBIT(DBIT), .SB_TICK(SB_TICK)) callUartTx
      (
		.clk(clk), 
		.reset(reset), 
		.tx_start(tx_fifo_not_empty || tx_done_tick),
      .s_tick(tick), 
		.din(tx_fifo_out),
		
      .tx_done_tick(tx_done_tick), 
		.tx(tx));

   assign tx_fifo_not_empty = ~rx_empty;
	assign rx_data_out_debug = rx_data_out;
	assign enable = enableLatch;
endmodule