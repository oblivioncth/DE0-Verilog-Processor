module Branch_Adder(AddOut, AddIn, CC);

input[15:0] AddIn, CC;
output[15:0] AddOut;

assign AddOut = CC + AddIn;

endmodule