module Decoder_2_to_4( S, m1, m2, m3, m4);
	input [1:0]S; //Select
	output m1, m2, m3, m4; //Min Terms
	
	/*
		Required Logic
		m1 = (~S1 & ~S0)
		m2 = (~S1 & S0)
		m3 = (S1 & ~S0)e
		m4 = (S1 & S0)
	*/
	
	wire not_S1, not_S0;
	
	not not0(not_S0, S[0]);
	not not1(not_S1, S[1]);
	
	and and1(m1, not_S1, not_S0);
	and and2(m2, not_S1, S[0]);
	and and3(m3, S[1], not_S0);
	and and4(m4, S[1], S[0]);
	
endmodule
