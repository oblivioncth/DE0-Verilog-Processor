module mux_8to1_16bit(Q, S, i1, i2, i3, i4, i5, i6, i7, i8);

input [0:15] i1, i2, i3, i4, i5, i6, i7, i8;
input [0:2] S;
output [0:15] Q;

		mux8to1 mux0(Q[0], S, i1[0], i2[0], i3[0], i4[0], i5[0], i6[0], i7[0], i8[0]);
		mux8to1 mux1(Q[1], S, i1[1], i2[1], i3[1], i4[1], i5[1], i6[1], i7[1], i8[1]);
		mux8to1 mux2(Q[2], S, i1[2], i2[2], i3[2], i4[2], i5[2], i6[2], i7[2], i8[2]);
		mux8to1 mux3(Q[3], S, i1[3], i2[3], i3[3], i4[3], i5[3], i6[3], i7[3], i8[3]);
		mux8to1 mux4(Q[4], S, i1[4], i2[4], i3[4], i4[4], i5[4], i6[4], i7[4], i8[4]);
		mux8to1 mux5(Q[5], S, i1[5], i2[5], i3[5], i4[5], i5[5], i6[5], i7[5], i8[5]);
		mux8to1 mux6(Q[6], S, i1[6], i2[6], i3[6], i4[6], i5[6], i6[6], i7[6], i8[6]);
		mux8to1 mux7(Q[7], S, i1[7], i2[7], i3[7], i4[7], i5[7], i6[7], i7[7], i8[7]);
		mux8to1 mux8(Q[8], S, i1[8], i2[8], i3[8], i4[8], i5[8], i6[8], i7[8], i8[8]);
		mux8to1 mux9(Q[9], S, i1[9], i2[9], i3[9], i4[9], i5[9], i6[9], i7[9], i8[9]);
		mux8to1 mux10(Q[10], S, i1[10], i2[10], i3[10], i4[10], i5[10], i6[10], i7[10], i8[10]);
		mux8to1 mux11(Q[11], S, i1[11], i2[11], i3[11], i4[11], i5[11], i6[11], i7[11], i8[11]);
		mux8to1 mux12(Q[12], S, i1[12], i2[12], i3[12], i4[12], i5[12], i6[12], i7[12], i8[12]);
		mux8to1 mux13(Q[13], S, i1[13], i2[13], i3[13], i4[13], i5[13], i6[13], i7[13], i8[13]);
		mux8to1 mux14(Q[14], S, i1[14], i2[14], i3[14], i4[14], i5[14], i6[14], i7[14], i8[14]);
		mux8to1 mux15(Q[15], S, i1[15], i2[15], i3[15], i4[15], i5[15], i6[15], i7[15], i8[15]);
		
endmodule 
		