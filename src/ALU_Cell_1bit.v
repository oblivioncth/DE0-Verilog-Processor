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
// CREATED		"Tue Feb 03 17:24:18 2015"

module ALU_Cell_1bit(
	A,
	B,
	A_from_next_bit,
	C_in,
	FS,
	F,
	C_out
);


input wire	A;
input wire	B;
input wire	A_from_next_bit;
input wire	C_in;
input wire	[4:0] FS;
output wire	F;
output wire	C_out;

wire	[1:0] logic_S;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_10;

assign	SYNTHESIZED_WIRE_6 = 0;
assign	SYNTHESIZED_WIRE_7 = 1;




Mux_4_to_1	b2v_inst(
	.I1(FS[0]),
	.I2(FS[1]),
	.I3(FS[2]),
	.I4(FS[3]),
	.S(logic_S),
	.OUT(SYNTHESIZED_WIRE_2));


Mux_2_to_1	b2v_inst11(
	.S(FS[3]),
	.I1(SYNTHESIZED_WIRE_0),
	.I2(SYNTHESIZED_WIRE_1),
	.OUT(SYNTHESIZED_WIRE_3));


Mux_2_to_1	b2v_inst13(
	.S(FS[4]),
	.I1(SYNTHESIZED_WIRE_2),
	.I2(SYNTHESIZED_WIRE_3),
	.OUT(F));


Mux_2_to_1	b2v_inst14(
	.S(FS[3]),
	.I1(SYNTHESIZED_WIRE_4),
	.I2(logic_S[1]),
	.OUT(C_out));


Mux_2_to_1	b2v_inst2(
	.S(FS[0]),
	.I1(logic_S[1]),
	.I2(SYNTHESIZED_WIRE_5),
	.OUT(SYNTHESIZED_WIRE_9));

assign	SYNTHESIZED_WIRE_5 =  ~logic_S[1];


Mux_4_to_1	b2v_inst4(
	.I1(SYNTHESIZED_WIRE_6),
	.I2(SYNTHESIZED_WIRE_7),
	.I3(logic_S[0]),
	.I4(SYNTHESIZED_WIRE_8),
	.S(FS[2:1]),
	.OUT(SYNTHESIZED_WIRE_10));

assign	SYNTHESIZED_WIRE_8 =  ~logic_S[0];




Mux_2_to_1	b2v_inst8(
	.S(FS[0]),
	.I1(C_in),
	.I2(A_from_next_bit),
	.OUT(SYNTHESIZED_WIRE_1));


Full_adder	b2v_inst9(
	.B(SYNTHESIZED_WIRE_9),
	.A(SYNTHESIZED_WIRE_10),
	.C_in(C_in),
	.S(SYNTHESIZED_WIRE_0),
	.C_out(SYNTHESIZED_WIRE_4));

assign	logic_S[0] = B;
assign	logic_S[1] = A;

endmodule
