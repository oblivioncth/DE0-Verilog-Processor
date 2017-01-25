module Mux_2_to_1(S, I1, I2, OUT);

	input S; //Select
	input I1, I2;
	output OUT;
	
	
	/*
		Required Logic 
		OUT = ((~S & I1) | (S & I2));
	*/
	
	wire Sn_and_I1, S_and_I2;
	wire not_S;
	
	not not1(not_S, S);
	
	and and1(Sn_and_I1, not_S, I1);
	and and2(S_and_I2, S, I2);
	
	or or1(OUT, Sn_and_I1, S_and_I2);
	
endmodule	