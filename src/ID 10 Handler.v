module one0_handler (oh1,control,literal);
input [13:0] oh1;
output reg [15:0] literal;
output reg [25:0] control;
always begin
case (oh1[13:9])
5'b110xx: begin assign control = {8'b01100000,oh1[10:8],14'b000101};
assign literal={oh1[7],oh1[7],oh1[7],oh1[7],oh1[7],oh1[7],oh1[7],oh1[7],oh1[7:0]}; end //brz
5'b111xx: begin assign control = {8'b01100000,oh1[10:8],14'b000101};
assign literal={oh1[7],oh1[7],oh1[7],oh1[7],oh1[7],oh1[7],oh1[7],oh1[7],oh1[7:0]}; end //brn
5'b100xx: begin assign control = {5'b00000,oh1[10:8],17'b00000000101000010};
assign literal={4'b0000,oh1[7:0]}; end
5'b101xx: begin assign control = {8'b01100000,oh1[10:8],14'b00010110100000};
assign literal={4'b0000,oh1[7:0]}; end
5'b01100: begin assign control = {8'b01100000,oh1[10:8],14'b00010010000001};
assign literal={3'b000,oh1[8:0]}; end
5'b01101: begin assign control = {11'b01100000000,oh1[10:8],11'b11010000001};
assign literal={3'b000,oh1[8:0]}; end
5'b00010: begin assign control = {5'b00000,oh1[10:8],14'b00000000000110};
assign literal={3'b000,oh1[8:0]}; end
endcase

end


endmodule