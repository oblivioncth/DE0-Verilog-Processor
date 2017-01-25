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
// CREATED		"Tue Apr 28 00:06:41 2015"

module reg_8x16bit(
	clock,
	WR,
	reset,
	AA,
	BA,
	D,
	DA,
	A,
	B,
	R0,
	R1,
	R2,
	R3,
	R4,
	R5,
	R6,
	R7
);


input wire	clock;
input wire	WR;
input wire	reset;
input wire	[2:0] AA;
input wire	[2:0] BA;
input wire	[15:0] D;
input wire	[2:0] DA;
output wire	[15:0] A;
output wire	[15:0] B;
output wire	[15:0] R0;
output wire	[15:0] R1;
output wire	[15:0] R2;
output wire	[15:0] R3;
output wire	[15:0] R4;
output wire	[15:0] R5;
output wire	[15:0] R6;
output wire	[15:0] R7;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
wire	[15:0] SYNTHESIZED_WIRE_32;
wire	[15:0] SYNTHESIZED_WIRE_33;
wire	[15:0] SYNTHESIZED_WIRE_34;
wire	[15:0] SYNTHESIZED_WIRE_35;
wire	[15:0] SYNTHESIZED_WIRE_36;
wire	[15:0] SYNTHESIZED_WIRE_37;
wire	[15:0] SYNTHESIZED_WIRE_38;
wire	[15:0] SYNTHESIZED_WIRE_39;
wire	SYNTHESIZED_WIRE_15;
wire	SYNTHESIZED_WIRE_24;
wire	SYNTHESIZED_WIRE_25;
wire	SYNTHESIZED_WIRE_26;
wire	SYNTHESIZED_WIRE_27;
wire	SYNTHESIZED_WIRE_28;
wire	SYNTHESIZED_WIRE_29;
wire	SYNTHESIZED_WIRE_30;
wire	SYNTHESIZED_WIRE_31;

assign	R0 = SYNTHESIZED_WIRE_32;
assign	R1 = SYNTHESIZED_WIRE_33;
assign	R2 = SYNTHESIZED_WIRE_34;
assign	R3 = SYNTHESIZED_WIRE_35;
assign	R4 = SYNTHESIZED_WIRE_36;
assign	R5 = SYNTHESIZED_WIRE_37;
assign	R6 = SYNTHESIZED_WIRE_38;
assign	R7 = SYNTHESIZED_WIRE_39;




reg_16bit	b2v_inst(
	.clk(clock),
	.Load(SYNTHESIZED_WIRE_0),
	.not_reset(reset),
	.D(D),
	.Q(SYNTHESIZED_WIRE_32));

assign	SYNTHESIZED_WIRE_24 = WR & SYNTHESIZED_WIRE_1;


reg_16bit	b2v_inst10(
	.clk(clock),
	.Load(SYNTHESIZED_WIRE_2),
	.not_reset(reset),
	.D(D),
	.Q(SYNTHESIZED_WIRE_35));


reg_16bit	b2v_inst11(
	.clk(clock),
	.Load(SYNTHESIZED_WIRE_3),
	.not_reset(reset),
	.D(D),
	.Q(SYNTHESIZED_WIRE_36));


reg_16bit	b2v_inst12(
	.clk(clock),
	.Load(SYNTHESIZED_WIRE_4),
	.not_reset(reset),
	.D(D),
	.Q(SYNTHESIZED_WIRE_37));


reg_16bit	b2v_inst13(
	.clk(clock),
	.Load(SYNTHESIZED_WIRE_5),
	.not_reset(reset),
	.D(D),
	.Q(SYNTHESIZED_WIRE_38));


reg_16bit	b2v_inst14(
	.clk(clock),
	.Load(SYNTHESIZED_WIRE_6),
	.not_reset(reset),
	.D(D),
	.Q(SYNTHESIZED_WIRE_39));


mux_8to1_16bit	b2v_inst15(
	.i1(SYNTHESIZED_WIRE_32),
	.i2(SYNTHESIZED_WIRE_33),
	.i3(SYNTHESIZED_WIRE_34),
	.i4(SYNTHESIZED_WIRE_35),
	.i5(SYNTHESIZED_WIRE_36),
	.i6(SYNTHESIZED_WIRE_37),
	.i7(SYNTHESIZED_WIRE_38),
	.i8(SYNTHESIZED_WIRE_39),
	.S(AA),
	.Q(A));


decoder3to8	b2v_inst16(
	.S(DA),
	.m0(SYNTHESIZED_WIRE_15),
	.m1(SYNTHESIZED_WIRE_1),
	.m2(SYNTHESIZED_WIRE_25),
	.m3(SYNTHESIZED_WIRE_26),
	.m4(SYNTHESIZED_WIRE_27),
	.m5(SYNTHESIZED_WIRE_28),
	.m6(SYNTHESIZED_WIRE_30),
	.m7(SYNTHESIZED_WIRE_31));

assign	SYNTHESIZED_WIRE_0 = WR & SYNTHESIZED_WIRE_15;


mux_8to1_16bit	b2v_inst18(
	.i1(SYNTHESIZED_WIRE_32),
	.i2(SYNTHESIZED_WIRE_33),
	.i3(SYNTHESIZED_WIRE_34),
	.i4(SYNTHESIZED_WIRE_35),
	.i5(SYNTHESIZED_WIRE_36),
	.i6(SYNTHESIZED_WIRE_37),
	.i7(SYNTHESIZED_WIRE_38),
	.i8(SYNTHESIZED_WIRE_39),
	.S(BA),
	.Q(B));


reg_16bit	b2v_inst2(
	.clk(clock),
	.Load(SYNTHESIZED_WIRE_24),
	.not_reset(reset),
	.D(D),
	.Q(SYNTHESIZED_WIRE_33));

assign	SYNTHESIZED_WIRE_29 = WR & SYNTHESIZED_WIRE_25;

assign	SYNTHESIZED_WIRE_2 = WR & SYNTHESIZED_WIRE_26;

assign	SYNTHESIZED_WIRE_3 = WR & SYNTHESIZED_WIRE_27;

assign	SYNTHESIZED_WIRE_4 = WR & SYNTHESIZED_WIRE_28;


reg_16bit	b2v_inst7(
	.clk(clock),
	.Load(SYNTHESIZED_WIRE_29),
	.not_reset(reset),
	.D(D),
	.Q(SYNTHESIZED_WIRE_34));

assign	SYNTHESIZED_WIRE_5 = WR & SYNTHESIZED_WIRE_30;

assign	SYNTHESIZED_WIRE_6 = WR & SYNTHESIZED_WIRE_31;


endmodule
