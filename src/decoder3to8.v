module decoder3to8(S, m0, m1, m2, m3, m4, m5, m6, m7);
	input [2:0]S; // Select
	output m0, m1, m2, m3, m4, m5, m6, m7;
	
	wire not_S0, not_S1, not_S2;
	wire b0, b1, b2, b3;			
	//notS1 and notS0, notS1 and S0, S1 and notS0, S1 and S0
	
	not not0(not_S0, S[0]);
	not not1(not_S1, S[1]);
	not not2(not_S2, S[2]);
	
	and and0(b0, not_S1, not_S0);
	and and1(b1, not_S1, S[0]);
	and and2(b2, S[1], not_S0);
	and and3(b3, S[1], S[0]);
	
	and and4(m0, not_S2, b0);
	and and5(m1, not_S2, b1);
	and and6(m2, not_S2, b2);
	and and7(m3, not_S2, b3);
	and and8(m4, S[2], b0);
	and and9(m5, S[2], b1);
	and and10(m6, S[2], b2);
	and and11(m7, S[2], b3);
	
endmodule
