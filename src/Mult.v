module Mult(F, A, B);
    input[15:0] A, B;
	 output [15:0] F;

	assign F = A*B;
endmodule