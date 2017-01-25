module mux_4to1_19bit(S, i1, i2, i3, i4, Q);

input[18:0] i1, i2, i3, i4;
input[1:0] S;
output[18:0] Q;

	Mux_4_to_1 mux0(S, i1[0], i2[0], i3[0], i4[0], Q[0]);
	Mux_4_to_1 mux1(S, i1[1], i2[1], i3[1], i4[1], Q[1]);
	Mux_4_to_1 mux2(S, i1[2], i2[2], i3[2], i4[2], Q[2]);
	Mux_4_to_1 mux3(S, i1[3], i2[3], i3[3], i4[3], Q[3]);
	Mux_4_to_1 mux4(S, i1[4], i2[4], i3[4], i4[4], Q[4]);
	Mux_4_to_1 mux5(S, i1[5], i2[5], i3[5], i4[5], Q[5]);
	Mux_4_to_1 mux6(S, i1[6], i2[6], i3[6], i4[6], Q[6]);
	Mux_4_to_1 mux7(S, i1[7], i2[7], i3[7], i4[7], Q[7]);
	Mux_4_to_1 mux8(S, i1[8], i2[8], i3[8], i4[8], Q[8]);
	Mux_4_to_1 mux9(S, i1[9], i2[9], i3[9], i4[9], Q[9]);
	Mux_4_to_1 mux10(S, i1[10], i2[10], i3[10], i4[10], Q[10]);
	Mux_4_to_1 mux11(S, i1[11], i2[11], i3[11], i4[11], Q[11]);
	Mux_4_to_1 mux12(S, i1[12], i2[12], i3[12], i4[12], Q[12]);
	Mux_4_to_1 mux13(S, i1[13], i2[13], i3[13], i4[13], Q[13]);
	Mux_4_to_1 mux14(S, i1[14], i2[14], i3[14], i4[14], Q[14]);
	Mux_4_to_1 mux15(S, i1[15], i2[15], i3[15], i4[15], Q[15]);
	Mux_4_to_1 mux16(S, i1[16], i2[16], i3[16], i4[16], Q[16]);
	Mux_4_to_1 mux17(S, i1[17], i2[17], i3[17], i4[17], Q[17]);
	Mux_4_to_1 mux18(S, i1[18], i2[18], i3[18], i4[18], Q[18]);

endmodule