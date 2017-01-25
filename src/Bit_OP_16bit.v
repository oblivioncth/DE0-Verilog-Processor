module Bit_OP_16bit(F, A, BS, S);

input[15:0] A;
input[3:0] BS;
input S;
output reg[15:0] F;

always @(A) begin
case (BS[3:0])
4'b0000: begin  F = {A[15:1],S}; //Bit 0
end

4'b0001: begin  F = {A[15:2],S,A[0]}; //Bit 1
end

4'b0010: begin  F = {A[15:3],S,A[1:0]}; //Bit 2
end

4'b0011: begin  F = {A[15:4],S,A[2:0]}; //Bit 3
end

4'b0100: begin  F = {A[15:5],S,A[3:0]}; //Bit 4
end

4'b0101: begin  F = {A[15:6],S,A[4:0]}; //Bit 5
end

4'b0110: begin  F = {A[15:7],S,A[5:0]}; //Bit 6
end

4'b0111: begin  F = {A[15:8],S,A[6:0]}; //Bit 7
end

4'b1000: begin  F = {A[15:9],S,A[7:0]}; //Bit 8
end

4'b1001: begin  F = {A[15:10],S,A[8:0]}; //Bit 9
end

4'b1010: begin  F = {A[15:11],S,A[9:0]}; //Bit 10
end

4'b1011: begin  F = {A[15:12],S,A[10:0]}; //Bit 11
end

4'b1100: begin  F = {A[15:13],S,A[11:0]}; //Bit 12
end

4'b1101: begin  F = {A[15:14],S,A[12:0]}; //Bit 13
end

4'b1110: begin  F = {A[15],S,A[13:0]}; //Bit 14
end

4'b1111: begin  F = {S,A[14:0]}; //Bit 15
end

endcase

end

endmodule

