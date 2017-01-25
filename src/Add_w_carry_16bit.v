module Add_w_carry_16bit(F, A, B, C);

input signed[15:0] A, B;
input C;
output reg signed[15:0] F;

always @(A) begin
	if (C)
		F = (A+B)+1;
	else
		F = A+B;
end
endmodule