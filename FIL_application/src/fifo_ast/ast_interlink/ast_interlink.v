// ast_interlink.v

// Generated using ACDS version 18.1 625

`timescale 1 ps / 1 ps
module ast_interlink (
		clk_clk,                     //           clk.clk
		reset_reset_n,               //         reset.reset_n
		sc_fifo_0_in_data,           //  sc_fifo_0_in.data
		sc_fifo_0_in_valid,          //              .valid
		sc_fifo_0_in_ready,          //              .ready
		sc_fifo_0_in_startofpacket,  //              .startofpacket
		sc_fifo_0_in_endofpacket,    //              .endofpacket
		sc_fifo_0_in_channel,        //              .channel
		sc_fifo_0_out_data,          // sc_fifo_0_out.data
		sc_fifo_0_out_valid,         //              .valid
		sc_fifo_0_out_ready,         //              .ready
		sc_fifo_0_out_startofpacket, //              .startofpacket
		sc_fifo_0_out_endofpacket,   //              .endofpacket
		sc_fifo_0_out_channel        //              .channel
	);
	
	parameter  BUS_WIDTH    	= 32;
	parameter  CHANNEL_WIDTH    = 6;
	parameter  FIFO_DEPTH		= 64;
	
	input         				clk_clk;
	input         				reset_reset_n;
	input  [BUS_WIDTH-1:0] 		sc_fifo_0_in_data;
	input         				sc_fifo_0_in_valid;
	output        				sc_fifo_0_in_ready;
	input         				sc_fifo_0_in_startofpacket;
	input         				sc_fifo_0_in_endofpacket;
	input  [CHANNEL_WIDTH-1:0]  sc_fifo_0_in_channel;
	output [BUS_WIDTH-1:0] 		sc_fifo_0_out_data;
	output        				sc_fifo_0_out_valid;
	input         				sc_fifo_0_out_ready;
	output        				sc_fifo_0_out_startofpacket;
	output        				sc_fifo_0_out_endofpacket;
	output [CHANNEL_WIDTH-1:0]  sc_fifo_0_out_channel;
	
	wire    rst_controller_reset_out_reset; // rst_controller:reset_out -> sc_fifo_0:reset

	altera_avalon_sc_fifo #(
		.SYMBOLS_PER_BEAT    (1),
		.BITS_PER_SYMBOL     (BUS_WIDTH),
		.FIFO_DEPTH          (FIFO_DEPTH),
		.CHANNEL_WIDTH       (CHANNEL_WIDTH),
		.ERROR_WIDTH         (0),
		.USE_PACKETS         (1),
		.USE_FILL_LEVEL      (1),
		.EMPTY_LATENCY       (3),
		.USE_MEMORY_BLOCKS   (1),
		.USE_STORE_FORWARD   (1),
		.USE_ALMOST_FULL_IF  (0),
		.USE_ALMOST_EMPTY_IF (0)
	) sc_fifo_0 (
		.clk               (clk_clk),                        //       clk.clk
		.reset             (rst_controller_reset_out_reset), // clk_reset.reset
		.csr_address       (),                               //       csr.address
		.csr_read          (),                               //          .read
		.csr_write         (),                               //          .write
		.csr_readdata      (),                               //          .readdata
		.csr_writedata     (),                               //          .writedata
		.in_data           (sc_fifo_0_in_data),              //        in.data
		.in_valid          (sc_fifo_0_in_valid),             //          .valid
		.in_ready          (sc_fifo_0_in_ready),             //          .ready
		.in_startofpacket  (sc_fifo_0_in_startofpacket),     //          .startofpacket
		.in_endofpacket    (sc_fifo_0_in_endofpacket),       //          .endofpacket
		.in_channel        (sc_fifo_0_in_channel),           //          .channel
		.out_data          (sc_fifo_0_out_data),             //       out.data
		.out_valid         (sc_fifo_0_out_valid),            //          .valid
		.out_ready         (sc_fifo_0_out_ready),            //          .ready
		.out_startofpacket (sc_fifo_0_out_startofpacket),    //          .startofpacket
		.out_endofpacket   (sc_fifo_0_out_endofpacket),      //          .endofpacket
		.out_channel       (sc_fifo_0_out_channel),          //          .channel
		.almost_full_data  (),                               // (terminated)
		.almost_empty_data (),                               // (terminated)
		.in_empty          (1'b0),                           // (terminated)
		.out_empty         (),                               // (terminated)
		.in_error          (1'b0),                           // (terminated)
		.out_error         ()                                // (terminated)
	);

	altera_reset_controller #(
		.NUM_RESET_INPUTS          (1),
		.OUTPUT_RESET_SYNC_EDGES   ("deassert"),
		.SYNC_DEPTH                (2),
		.RESET_REQUEST_PRESENT     (0),
		.RESET_REQ_WAIT_TIME       (1),
		.MIN_RST_ASSERTION_TIME    (3),
		.RESET_REQ_EARLY_DSRT_TIME (1),
		.USE_RESET_REQUEST_IN0     (0),
		.USE_RESET_REQUEST_IN1     (0),
		.USE_RESET_REQUEST_IN2     (0),
		.USE_RESET_REQUEST_IN3     (0),
		.USE_RESET_REQUEST_IN4     (0),
		.USE_RESET_REQUEST_IN5     (0),
		.USE_RESET_REQUEST_IN6     (0),
		.USE_RESET_REQUEST_IN7     (0),
		.USE_RESET_REQUEST_IN8     (0),
		.USE_RESET_REQUEST_IN9     (0),
		.USE_RESET_REQUEST_IN10    (0),
		.USE_RESET_REQUEST_IN11    (0),
		.USE_RESET_REQUEST_IN12    (0),
		.USE_RESET_REQUEST_IN13    (0),
		.USE_RESET_REQUEST_IN14    (0),
		.USE_RESET_REQUEST_IN15    (0),
		.ADAPT_RESET_REQUEST       (0)
	) rst_controller (
		.reset_in0      (~reset_reset_n),                 // reset_in0.reset
		.clk            (clk_clk),                        //       clk.clk
		.reset_out      (rst_controller_reset_out_reset), // reset_out.reset
		.reset_req      (),                               // (terminated)
		.reset_req_in0  (1'b0),                           // (terminated)
		.reset_in1      (1'b0),                           // (terminated)
		.reset_req_in1  (1'b0),                           // (terminated)
		.reset_in2      (1'b0),                           // (terminated)
		.reset_req_in2  (1'b0),                           // (terminated)
		.reset_in3      (1'b0),                           // (terminated)
		.reset_req_in3  (1'b0),                           // (terminated)
		.reset_in4      (1'b0),                           // (terminated)
		.reset_req_in4  (1'b0),                           // (terminated)
		.reset_in5      (1'b0),                           // (terminated)
		.reset_req_in5  (1'b0),                           // (terminated)
		.reset_in6      (1'b0),                           // (terminated)
		.reset_req_in6  (1'b0),                           // (terminated)
		.reset_in7      (1'b0),                           // (terminated)
		.reset_req_in7  (1'b0),                           // (terminated)
		.reset_in8      (1'b0),                           // (terminated)
		.reset_req_in8  (1'b0),                           // (terminated)
		.reset_in9      (1'b0),                           // (terminated)
		.reset_req_in9  (1'b0),                           // (terminated)
		.reset_in10     (1'b0),                           // (terminated)
		.reset_req_in10 (1'b0),                           // (terminated)
		.reset_in11     (1'b0),                           // (terminated)
		.reset_req_in11 (1'b0),                           // (terminated)
		.reset_in12     (1'b0),                           // (terminated)
		.reset_req_in12 (1'b0),                           // (terminated)
		.reset_in13     (1'b0),                           // (terminated)
		.reset_req_in13 (1'b0),                           // (terminated)
		.reset_in14     (1'b0),                           // (terminated)
		.reset_req_in14 (1'b0),                           // (terminated)
		.reset_in15     (1'b0),                           // (terminated)
		.reset_req_in15 (1'b0)                            // (terminated)
	);

endmodule
