//multiplexer out output Q, select S, and outputs i1 through i8


module mux8to1_8bit(Q, S, i1, i2, i3, i4, i5, i6, i7, i8); 

input [7:0] i1, i2, i3, i4, i5, i6, i7, i8;
input [2:0] S;
output [7:0] Q;

		mux8to1 mux0(Q[0], S, i1[0], i2[0], i3[0], i4[0], i5[0], i6[0], i7[0], i8[0]);
		mux8to1 mux1(Q[1], S, i1[1], i2[1], i3[1], i4[1], i5[1], i6[1], i7[1], i8[1]);
		mux8to1 mux2(Q[2], S, i1[2], i2[2], i3[2], i4[2], i5[2], i6[2], i7[2], i8[2]);
		mux8to1 mux3(Q[3], S, i1[3], i2[3], i3[3], i4[3], i5[3], i6[3], i7[3], i8[3]);
		mux8to1 mux4(Q[4], S, i1[4], i2[4], i3[4], i4[4], i5[4], i6[4], i7[4], i8[4]);
		mux8to1 mux5(Q[5], S, i1[5], i2[5], i3[5], i4[5], i5[5], i6[5], i7[5], i8[5]);
		mux8to1 mux6(Q[6], S, i1[6], i2[6], i3[6], i4[6], i5[6], i6[6], i7[6], i8[6]);
		mux8to1 mux7(Q[7], S, i1[7], i2[7], i3[7], i4[7], i5[7], i6[7], i7[7], i8[7]);
		
		

endmodule
