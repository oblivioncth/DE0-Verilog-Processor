module mux_4to1_8bit(S, i1, i2, i3, i4, Q);

input[7:0] i1, i2, i3, i4;
input[1:0] S;
output[7:0] Q;

	Mux_4_to_1 mux0(S, i1[0], i2[0], i3[0], i4[0], Q[0]);
	Mux_4_to_1 mux1(S, i1[1], i2[1], i3[1], i4[1], Q[1]);
	Mux_4_to_1 mux2(S, i1[2], i2[2], i3[2], i4[2], Q[2]);
	Mux_4_to_1 mux3(S, i1[3], i2[3], i3[3], i4[3], Q[3]);
	Mux_4_to_1 mux4(S, i1[4], i2[4], i3[4], i4[4], Q[4]);
	Mux_4_to_1 mux5(S, i1[5], i2[5], i3[5], i4[5], Q[5]);
	Mux_4_to_1 mux6(S, i1[6], i2[6], i3[6], i4[6], Q[6]);
	Mux_4_to_1 mux7(S, i1[7], i2[7], i3[7], i4[7], Q[7]);

endmodule