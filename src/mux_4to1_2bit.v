module mux_4to1_2bit(S, i1, i2, i3, i4, Q);

input[1:0] i1, i2, i3, i4;
input[1:0] S;
output[1:0] Q;

	Mux_4_to_1 mux0(S, i1[0], i2[0], i3[0], i4[0], Q[0]);
	Mux_4_to_1 mux1(S, i1[1], i2[1], i3[1], i4[1], Q[1]);


endmodule