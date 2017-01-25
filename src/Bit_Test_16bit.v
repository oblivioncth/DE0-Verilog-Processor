module Bit_Test_16bit(F, A, BS);

input[15:0] A;
input[3:0] BS;
output reg F;

always @(A) begin
case (BS[3:0])
4'b0000: begin  F = A[0]; //Bit 0
end

4'b0001: begin  F = A[1]; //Bit 1
end

4'b0010: begin  F = A[2]; //Bit 2
end

4'b0011: begin  F = A[3]; //Bit 3
end

4'b0100: begin  F = A[4]; //Bit 4
end

4'b0101: begin  F = A[5]; //Bit 5
end

4'b0110: begin  F = A[6]; //Bit 6
end

4'b0111: begin  F = A[7]; //Bit 7
end

4'b1000: begin  F = A[8]; //Bit 8
end

4'b1001: begin  F = A[9]; //Bit 9
end

4'b1010: begin  F = A[10]; //Bit 10
end

4'b1011: begin  F = A[11]; //Bit 11
end

4'b1100: begin  F = A[12]; //Bit 12
end

4'b1101: begin  F = A[13]; //Bit 13
end

4'b1110: begin  F = A[14]; //Bit 14
end

4'b1111: begin  F = A[15]; //Bit 15
end

endcase

end

endmodule

