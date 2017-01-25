module Multiply_16bit(F, A, B);

input signed[15:0] A, B;
output signed[15:0] F;

assign F = A*B;

endmodule