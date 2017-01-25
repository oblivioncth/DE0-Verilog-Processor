// Copyright (C) 1991-2013 Altera Corporation
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, Altera MegaCore Function License 
// Agreement, or other applicable license agreement, including, 
// without limitation, that your use is for the sole purpose of 
// programming logic devices manufactured by Altera and sold by 
// Altera or its authorized distributors.  Please refer to the 
// applicable agreement for further details.

// PROGRAM		"Quartus II 32-bit"
// VERSION		"Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"
// CREATED		"Tue Feb 10 13:06:33 2015"

module ALU_Cell_4bit(
	A_from_next_bit,
	C_in,
	A,
	B,
	FS,
	C_out,
	F
);


input wire	A_from_next_bit;
input wire	C_in;
input wire	[3:0] A;
input wire	[3:0] B;
input wire	[4:0] FS;
output wire	C_out;
output wire	[3:0] F;

wire	[3:0] F_ALTERA_SYNTHESIZED;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;





ALU_Cell_1bit	b2v_inst(
	.A(A[3]),
	.B(B[3]),
	.C_in(SYNTHESIZED_WIRE_0),
	.A_from_next_bit(A_from_next_bit),
	.FS(FS),
	.F(F_ALTERA_SYNTHESIZED[3]),
	.C_out(C_out));


ALU_Cell_1bit	b2v_inst1(
	.A(A[1]),
	.B(B[1]),
	.C_in(SYNTHESIZED_WIRE_1),
	.A_from_next_bit(A[2]),
	.FS(FS),
	.F(F_ALTERA_SYNTHESIZED[1]),
	.C_out(SYNTHESIZED_WIRE_2));


ALU_Cell_1bit	b2v_inst4(
	.A(A[2]),
	.B(B[2]),
	.C_in(SYNTHESIZED_WIRE_2),
	.A_from_next_bit(A[3]),
	.FS(FS),
	.F(F_ALTERA_SYNTHESIZED[2]),
	.C_out(SYNTHESIZED_WIRE_0));


ALU_Cell_1bit	b2v_inst5(
	.A(A[0]),
	.B(B[0]),
	.C_in(C_in),
	.A_from_next_bit(A[1]),
	.FS(FS),
	.F(F_ALTERA_SYNTHESIZED[0]),
	.C_out(SYNTHESIZED_WIRE_1));

assign	F = F_ALTERA_SYNTHESIZED;

endmodule
