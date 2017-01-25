module Mux_4_to_1(S, I1, I2, I3, I4, OUT);

	input [1:0] S; //Select
	input I1, I2, I3, I4;
	output OUT;
	
	
	/*
		Required Logic 
		F = ((~S1 & ~S0) & i1) | ((~S1 & S0) & i2) | ((S1 & ~S0) & i3) | ((S1 & S0) & i4);
	*/
	
	wire sel1, sel2, sel3, sel4;
	wire sel1_and_i1, sel2_and_i2, sel3_and_i3, sel4_and_i4;
	
	Decoder_2_to_4 decoder1(S, sel1, sel2, sel3, sel4);
	
	and and1(sel1_and_i1, sel1, I1);
	and and2(sel2_and_i2, sel2, I2);
	and and3(sel3_and_i3, sel3, I3);
	and and4(sel4_and_i4, sel4, I4);
	
	or or1(OUT,sel1_and_i1, sel2_and_i2, sel3_and_i3, sel4_and_i4);
	
endmodule	