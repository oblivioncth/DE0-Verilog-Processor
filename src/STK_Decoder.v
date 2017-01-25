module STK_Decoder(SC, HEX4, HEX5, HEX6, HEX5DP);

input[2:0] SC;
output reg[6:0] HEX4, HEX5, HEX6;
output reg HEX5DP;

always @(SC[2:0]) begin

HEX4 = 7'b1101101;
HEX5 = 7'b1111000;
HEX5DP = 1'b1;

case (SC[2:0])

3'b000: begin //Empty

HEX6 = 7'b1111001; end

3'b001: begin //Empty

HEX6 = 7'b0000110; end

3'b010: begin //Empty

HEX6 = 7'b1011011; end

3'b011: begin //Empty

HEX6 = 7'b1001111; end

3'b100: begin //Empty

HEX6 = 7'b1100110; end

3'b101: begin //Empty

HEX6 = 7'b1101101; end

3'b110: begin //Empty

HEX6 = 7'b1111101; end

3'b111: begin //Empty

HEX6 = 7'b0000111; end

endcase
end

endmodule