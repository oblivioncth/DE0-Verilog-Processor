module PC_Skip(AddOut, CC);

input[15:0] CC;
output[15:0] AddOut;

assign AddOut = CC + 2;

endmodule