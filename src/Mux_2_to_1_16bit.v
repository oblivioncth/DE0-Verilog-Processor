//multiplexer out output Q, select S, and outputs I1 through i8

module Mux_2_to_1_16bit(S, I1, I2, Q); 

input S;
input [15:0] I1, I2;
output [15:0] Q;

		Mux_2_to_1 mux0(S, I1[0], I2[0], Q[0]);
		Mux_2_to_1 mux1(S, I1[1], I2[1], Q[1]);
		Mux_2_to_1 mux2(S, I1[2], I2[2], Q[2]);
		Mux_2_to_1 mux3(S, I1[3], I2[3], Q[3]);
		Mux_2_to_1 mux4(S, I1[4], I2[4], Q[4]);
		Mux_2_to_1 mux5(S, I1[5], I2[5], Q[5]);
		Mux_2_to_1 mux6(S, I1[6], I2[6], Q[6]);
		Mux_2_to_1 mux7(S, I1[7], I2[7], Q[7]);
		Mux_2_to_1 mux8(S, I1[8], I2[8], Q[8]);
		Mux_2_to_1 mux9(S, I1[9], I2[9], Q[9]);
		Mux_2_to_1 mux10(S, I1[10], I2[10], Q[10]);
		Mux_2_to_1 mux11(S, I1[11], I2[11], Q[11]);
		Mux_2_to_1 mux12(S, I1[12], I2[12], Q[12]);
		Mux_2_to_1 mux13(S, I1[13], I2[13], Q[13]);
		Mux_2_to_1 mux14(S, I1[14], I2[14], Q[14]);
		Mux_2_to_1 mux15(S, I1[15], I2[15], Q[15]);
		
endmodule
