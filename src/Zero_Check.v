module Zero_Check (F, Z);
input [15:0] F;
output reg Z;

always @(F) begin
case (F)

16'b0000000000000000: Z = 1'b1;
default: Z = 1'b0;

endcase
end


endmodule