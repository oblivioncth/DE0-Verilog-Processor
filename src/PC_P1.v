module PC_P1(AddOut, CC);

input[15:0] CC;
output[15:0] AddOut;

assign AddOut = CC + 1;

endmodule