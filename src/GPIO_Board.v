// This module will display the input values on the DE0 GPIO BOARD
// It requires the DE0 CLOCK_50 signal to be connected to it's clock input
// all other inputs can just use whatever data should be displayed.
// The one output, GPIO_0, should be connected to GPIO0_D (all 32 bits are used)
// This module works by selecting 1 of eight rows/7-seg displays at a time
// and multiplexing through the desired output signals.
module GPIO_Board(
	clock_50,
	R0, R1, R2, R3, R4, R5, R6, R7, 
	HEX0, HEX0_DP, HEX1, HEX1_DP, 
	HEX2, HEX2_DP, HEX3, HEX3_DP, 
	HEX4, HEX4_DP, HEX5, HEX5_DP, 
	HEX6, HEX6_DP, HEX7, HEX7_DP, GPIO_0);
	
	input [15:0] R0, R1, R2, R3, R4, R5, R6, R7;
	input [6:0] HEX0, HEX1, HEX2, HEX3, HEX4, HEX5, HEX6, HEX7;
	input HEX0_DP, HEX1_DP, HEX2_DP, HEX3_DP, HEX4_DP, HEX5_DP, HEX6_DP, HEX7_DP;
	input clock_50;
	output [31:0]GPIO_0;
	
	// create a 17 bit counter to manage the timing of displaying the information
	// bits 16:14 will be used at the 3 bit row counter / signal multiplexer select
	// bits 13:11 will be used to disable the row output right before and right after
	// the counter changes. This is to avoid ghosting on the display caused by hardware
	// switching delay
	reg [16:0]count;
	wire [2:0]count3bit;
	// 17 bit counter
	initial
		count <= 17'b0;
		
	always @(posedge clock_50)
		count <= count + 1'b1;
	
	// create a logic circuit which will output a 0 when count[13:11] are 000 or 111
	// this signal will be ANDed with the row output in order to disable the row output
	// when the count3bit is close to changing.
	wire row_gate;
	// comment out this line and uncomment the next line to see what ghosting looks like
	assign row_gate = (count[13:11] == 3'b0 || count[13:11] == 3'b111) ? 1'b0 : 1'b1;
	//assign row_gate = 1'b1;
	
	assign count3bit = count[16:14];
	
	// use a 16 bit 8:1 MUX to select between the row input signals (R0 to R7)
	wire [15:0] matrix_columns2, matrix_columns;
	// output the mux to matrix_columns2 and then flip the order of the bits to display the
	// binary value with the LSb on the right
	mux_8to1_16bit matrix_mux(matrix_columns2, count3bit, R0, R1, R2, R3, R4, R5, R6, R7);
	// flip the bits
	assign matrix_columns = {matrix_columns2[0], matrix_columns2[1], matrix_columns2[2], matrix_columns2[3]
								  , matrix_columns2[4], matrix_columns2[5], matrix_columns2[6], matrix_columns2[7]
								  , matrix_columns2[8], matrix_columns2[9], matrix_columns2[10], matrix_columns2[11]
								  , matrix_columns2[12], matrix_columns2[13], matrix_columns2[14], matrix_columns2[15]};
	
	// use a 8-bit 8:1 MUX to select between hex input signals (HEX0 to HEX7)
	// concatenate the decimal point input with the 7-segment signal to make a 8-bit signal
	wire [7:0] hex_segments;
	mux8to1_8bit hex_mux(hex_segments, count3bit, 
		{HEX0_DP, HEX0}, {HEX1_DP, HEX1}, 
		{HEX2_DP, HEX2}, {HEX3_DP, HEX3}, 
		{HEX4_DP, HEX4}, {HEX5_DP, HEX5}, 
		{HEX6_DP, HEX6}, {HEX7_DP, HEX7}, 
		);
	
	// use a 3-to-8 decoder to select which row to power based on the count3bit value
	wire [7:0]rowa;
	decoder3to8 row_dec(count3bit, rowa[0], rowa[1], rowa[2], rowa[3], rowa[4], rowa[5], rowa[6], rowa[7]);
	// AND the row output of the decoder with the row_gate signal to disable the row output when close
	// to switching
	wire [7:0]row;
	assign row = row_gate ? rowa : 8'b0;
	
	// connect the signals to the GPIO0 output
	assign GPIO_0 = {hex_segments, matrix_columns, row};
	
endmodule
