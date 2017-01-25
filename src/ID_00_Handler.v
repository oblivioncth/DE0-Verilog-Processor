module ID_00_Handler (ISin, CWout, literal);
input [13:0] ISin;
output reg [15:0] literal;
output reg [18:0] CWout;
always @(ISin) begin
casex (ISin[13:9])

5'b00000: begin  CWout = 19'b0000000000000000000; //No Operation
 literal= 16'b1111111111111111; end

5'b001xx: begin  CWout = {6'b101001,ISin[10:8],ISin[10:8],7'b0000100}; //Add Immediate
 literal = {8'b00000000,ISin[7:0]}; end

5'b010xx: begin  CWout = {6'b101101,ISin[10:8],ISin[10:8],7'b0000100}; //Subtract Immediate
 literal = {8'b00000000,ISin[7:0]}; end

5'b011xx: begin  CWout = {6'b010001,ISin[10:8],ISin[10:8],7'b0000100}; //AND Immediate
 literal = {8'b00000000,ISin[7:0]}; end

5'b101xx: begin  CWout = {6'b011101,ISin[10:8],ISin[10:8],7'b0000100}; //OR Immediate
 literal = {8'b00000000,ISin[7:0]}; end

5'b110xx: begin  CWout = {6'b001101,ISin[10:8],ISin[10:8],7'b0000100}; //XOR Immediate
 literal = {8'b00000000,ISin[7:0]}; end

endcase

end


endmodule