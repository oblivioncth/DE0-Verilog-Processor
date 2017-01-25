module mux8to1(Q, S, i1, i2, i3, i4, i5, i6, i7, i8);

input i1, i2, i3, i4, i5, i6, i7, i8;
input [2:0]S;
output Q;

wire sel1, sel2, sel3, sel4, sel5, sel6, sel7, sel8;

decoder3to8 decoder1(S, sel1, sel2, sel3, sel4, sel5, sel6, sel7, sel8);

wire sel1_and_i1, sel2_and_i2, sel3_and_i3, sel4_and_i4, sel5_and_i5, sel6_and_i6, sel7_and_i7, sel8_and_i8;

and and1(sel1_and_i1, i1, sel1);
and and2(sel2_and_i2, i2, sel2);
and and3(sel3_and_i3, i3, sel3);
and and4(sel4_and_i4, i4, sel4);
and and5(sel5_and_i5, i5, sel5);
and and6(sel6_and_i6, i6, sel6);
and and7(sel7_and_i7, i7, sel7);
and and8(sel8_and_i8, i8, sel8);

or or1(Q, sel1_and_i1, sel2_and_i2, sel3_and_i3, sel4_and_i4, sel5_and_i5, sel6_and_i6, sel7_and_i7, sel8_and_i8);

endmodule
