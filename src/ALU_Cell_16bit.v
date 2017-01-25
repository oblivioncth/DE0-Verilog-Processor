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

// PROGRAM		"Quartus II 64-Bit"
// VERSION		"Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"
// CREATED		"Tue Apr 21 20:32:54 2015"

module ALU_Cell_16bit(
	A,
	B,
	FS,
	Z,
	C,
	N,
	V,
	F
);


input wire	[15:0] A;
input wire	[15:0] B;
input wire	[4:0] FS;
output wire	Z;
output wire	C;
output wire	N;
output wire	V;
output wire	[15:0] F;

wire	[15:0] F_ALTERA_SYNTHESIZED;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;

assign	V = 0;
assign	SYNTHESIZED_WIRE_4 = 0;




ALU_Cell_4bit	b2v_inst(
	.C_in(SYNTHESIZED_WIRE_0),
	.A_from_next_bit(A[4]),
	.A(A[3:0]),
	.B(B[3:0]),
	.FS(FS),
	.C_out(SYNTHESIZED_WIRE_1),
	.F(F_ALTERA_SYNTHESIZED[3:0]));


ALU_Cell_4bit	b2v_inst1(
	.C_in(SYNTHESIZED_WIRE_1),
	.A_from_next_bit(A[8]),
	.A(A[7:4]),
	.B(B[7:4]),
	.FS(FS),
	.C_out(SYNTHESIZED_WIRE_2),
	.F(F_ALTERA_SYNTHESIZED[7:4]));


ALU_Cell_4bit	b2v_inst2(
	.C_in(SYNTHESIZED_WIRE_2),
	.A_from_next_bit(A[12]),
	.A(A[11:8]),
	.B(B[11:8]),
	.FS(FS),
	.C_out(SYNTHESIZED_WIRE_3),
	.F(F_ALTERA_SYNTHESIZED[11:8]));


ALU_Cell_4bit	b2v_inst3(
	.C_in(SYNTHESIZED_WIRE_3),
	.A_from_next_bit(SYNTHESIZED_WIRE_4),
	.A(A[15:12]),
	.B(B[15:12]),
	.FS(FS),
	.C_out(C),
	.F(F_ALTERA_SYNTHESIZED[15:12]));



Zero_Check	b2v_inst5(
	.F(F_ALTERA_SYNTHESIZED),
	.Z(Z));


Cin_logic	b2v_inst6(
	.FS0(FS[0]),
	.FS1(FS[1]),
	.FS2(FS[2]),
	.FS3(FS[3]),
	.C0(SYNTHESIZED_WIRE_0));


assign	N = F_ALTERA_SYNTHESIZED[15];
assign	F = F_ALTERA_SYNTHESIZED;

endmodule
