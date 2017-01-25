module ID_11_Handler (ISin, CWout, literal);
input [13:0] ISin;
output reg [15:0] literal;
output reg [18:0] CWout;
  
  
always @(ISin) begin

CWout = {6'b010101,ISin[13:11],10'b0000000100}; //Load Immediate
literal = {ISin[10],ISin[10],ISin[10],ISin[10],ISin[10],ISin[10:0]};

end


endmodule