module ER_CDE_Handler(ER_CDE, clk, HEX0, HEX1, HEX2, HEX3, HEX1DP);

input[7:0] ER_CDE;
input clk;
output reg[6:0] HEX0, HEX1, HEX2, HEX3;
output reg HEX1DP;

always @(posedge clk) begin

case (ER_CDE[7:0])

8'b00000000: begin //No Error

HEX0 = 7'b0000000;
HEX1 = 7'b0000000;
HEX2 = 7'b0000000;
HEX3 = 7'b0000000;
HEX1DP = 1'b0; end

8'b00000001: begin //Tried to load in stack range

HEX0 = 7'b1111001;
HEX1 = 7'b1010000; 
HEX2 = 7'b0111111;
HEX3 = 7'b0000110;
HEX1DP = 1'b1; end

8'b00000010: begin //Tried to store in stack range 

HEX0 = 7'b1111001;
HEX1 = 7'b1010000; 
HEX2 = 7'b0111111;
HEX3 = 7'b1011011; 
HEX1DP = 1'b1; end

8'b00000011: begin //Tried to PUSH full stack (overflow)

HEX0 = 7'b1111001;
HEX1 = 7'b1010000; 
HEX2 = 7'b0111111;
HEX3 = 7'b1001111; 
HEX1DP = 1'b1; end

8'b00000100: begin //Tried to POP empty stack

HEX0 = 7'b1111001;
HEX1 = 7'b1010000; 
HEX2 = 7'b0111111;
HEX3 = 7'b1100110;
HEX1DP = 1'b1; end

8'b00000101: begin //Tried to Return PC with empty stack

HEX0 = 7'b1111001;
HEX1 = 7'b1010000; 
HEX2 = 7'b0111111;
HEX3 = 7'b1101101;
HEX1DP = 1'b1; end

8'b00000110: begin //Tried to Call with full stack

HEX0 = 7'b1111001;
HEX1 = 7'b1010000; 
HEX2 = 7'b0111111;
HEX3 = 7'b1111101;
HEX1DP = 1'b1; end

endcase
end

endmodule