module Param_Set(Set, S, SFU_sel, FS);

input[4:0] FS;
output reg Set, SFU_sel;
output reg[1:0] S;

always @(FS) begin
case (FS[4:0])

5'b11010: begin  Set = 1'b0; //Multiply
S = 2'b00;
SFU_sel = 1'b1;
end

5'b11011: begin  Set = 1'b0; //Add with Carry
S = 2'b01;
SFU_sel = 1'b1;
end

5'b11100: begin  Set = 1'b0; //Arithmetic Shift Right
S = 2'b10;
SFU_sel = 1'b1;
end

5'b11101: begin  Set = 1'b0; //Bitwise Clear
S = 2'b11;
SFU_sel = 1'b1;
end

5'b11110: begin  Set = 1'b1; //Bitwise Set
S = 2'b11;
SFU_sel = 1'b1;
end

5'b11111: begin  Set = 1'b0; //Bitwise Test
S = 2'b11;
SFU_sel = 1'b1;
end

default: begin  Set = 1'b0; //Non SFU Function
S = 2'b00;
SFU_sel = 1'b0;
end


endcase

end

endmodule

