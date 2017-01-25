module ID_01_Handler (ISin, CWout, literal);
input [13:0] ISin;
output reg [15:0] literal;
output reg [18:0] CWout;
always @(ISin) begin
case (ISin[13:9])

5'b10000: begin  CWout = {6'b100001,ISin[8:6],ISin[5:3],7'b0000100}; //Increment
 literal = 16'b1111111111111111; end

5'b10100: begin  CWout = {6'b101001,ISin[8:6],ISin[5:3],ISin[2:0],4'b1100}; //Add
 literal = 16'b1111111111111111; end

5'b10110: begin  CWout = {6'b101101,ISin[8:6],ISin[5:3],ISin[2:0],4'b1100}; //Subtract
 literal = 16'b1111111111111111; end

5'b10010: begin  CWout = {6'b100101,ISin[8:6],ISin[5:3],7'b0000100}; //Decrement
 literal = 16'b1111111111111111; end

5'b10001: begin  CWout = {6'b100011,ISin[8:6],ISin[5:3],7'b0000100}; //Negative
 literal = 16'b1111111111111111; end

5'b01100: begin  CWout = {6'b011001,ISin[8:6],ISin[5:3],7'b0000100}; //Move A
 literal = 16'b1111111111111111; end

5'b01010: begin  CWout = {6'b010101,ISin[8:6],3'b000,ISin[2:0],4'b1100}; //Move B
 literal = 16'b1111111111111111; end

5'b11001: begin  CWout = {6'b110011,ISin[8:6],ISin[5:3],7'b0000100}; //Shift Right
 literal = 16'b1111111111111111; end

5'b11000: begin  CWout = {6'b110001,ISin[8:6],ISin[5:3],7'b0000100}; //Shift Left
 literal = 16'b1111111111111111; end
 
5'b00000: begin  CWout = {6'b000001,ISin[8:6],ISin[8:6],ISin[8:6],4'b0100}; //Clear
 literal = 16'b1111111111111111; end
 
5'b01111: begin  CWout = {6'b011111,ISin[8:6],ISin[8:6],ISin[8:6],4'b0100}; //Set
 literal = 16'b1111111111111111; end
 
5'b00011: begin  CWout = {6'b000111,ISin[8:6],ISin[5:3],7'b0000100}; //NOT
 literal = 16'b1111111111111111; end
 
5'b01000: begin  CWout = {6'b010001,ISin[8:6],ISin[5:3],ISin[2:0],4'b1100}; //AND
 literal = 16'b1111111111111111; end
 
5'b01110: begin  CWout = {6'b011101,ISin[8:6],ISin[5:3],ISin[2:0],4'b1100}; //OR
 literal = 16'b1111111111111111; end
 
5'b00110: begin  CWout = {6'b001101,ISin[8:6],ISin[5:3],ISin[2:0],4'b1100}; //XOR
 literal = 16'b1111111111111111; end

5'b10111: begin  CWout = {6'b110101,ISin[8:6],ISin[5:3],ISin[2:0],4'b1100}; //Multiply
 literal = 16'b1111111111111111; end
 
5'b10101: begin  CWout = {6'b110111,ISin[8:6],ISin[5:3],ISin[2:0],4'b1100}; //Add with Carry
 literal = 16'b1111111111111111; end
 
5'b11011: begin  CWout = {6'b111001,ISin[8:6],ISin[5:3],7'b0000100}; //Arithmetic Shift Right
 literal = 16'b1111111111111111; end


endcase

end


endmodule