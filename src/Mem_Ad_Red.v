module Mem_Ad_Red(AddOut, Literal);

input[15:0] Literal;
output[7:0] AddOut;

assign AddOut = Literal [7:0];

endmodule