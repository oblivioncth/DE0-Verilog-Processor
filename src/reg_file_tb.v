module reg_file_tb;

parameter bit_width = 8;
// signals to simulate
reg clock, not_reset, write;
reg [2:0] DA, AA, BA;
reg [bit_width-1:0] D;
// signals to watch
wire [bit_width-1:0] A, B, R0, R1, R2, R3, R4, R5, R6, R7;

reg_8x8_bit dut(
	.clock (clock),
	.reset (not_reset),
	.WR (write),
	.DA (DA),
	.AA (AA),
	.BA (BA),
	.D (D),
	.A (A),
	.B (B),
	.R0 (R0),
	.R1 (R1),
	.R2 (R2),
	.R3 (R3),
	.R4 (R4),
	.R5 (R5),
	.R6 (R6),
	.R7 (R7)
);

// generate a clock signal
initial
begin
	clock <= 1'b0;
	forever
	#10 clock = ~clock;
end

// stimulus
initial
begin
	// pulse reset
	#2 not_reset = 1'b0;
	#5 not_reset = 1'b1;
	// start destination address at 0
	DA = 3'b0;
	forever
	begin
		// every 20 steps update the inputs
		#20 D = $random; // generate random data to load
		DA = DA + 3'b1; // sequence through the destination addresses
		AA = $random; // generate random addresses for the A and B bus outputs
		BA = $random;
		write = $random; // generate a random value for write enable
	end
end

// monitor signals on output
initial
$monitor("t:%d\tclk:%b\tWR:%b\tDA:%d\tD:%h\tAA:%d\tA:%h\tBA:%d\tB:%h\tR0-7:%h %h %h %h %h %h %h %h",
			$time, clock, write, DA, D, AA, A, BA, B, R0, R1, R2, R3, R4, R5, R6, R7);

// stop the simulation after 1000 steps
initial
#1000 $finish;

endmodule

