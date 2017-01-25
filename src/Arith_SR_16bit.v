module Arith_SR_16bit(F, A);

input signed[15:0] A;
output reg signed[15:0] F;

always @(A)
begin
F = A >>> 1;
end

endmodule