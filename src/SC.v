module SC(clk, rst, SCN, SC);
    input clk, rst;
	 input [1:0] SCN;
    output reg [2:0] SC = 3'b000;
	
    always @(posedge clk or posedge rst)
	 
	 if( rst == 1'b1)
		SC = 3'b000;
	else begin
	 
	 case (SCN[1:0])
	 
	 2'b00: SC = SC;
	 2'b01: SC = SC + 3'b001;
    2'b10: SC = SC - 3'b001;
	 
	 endcase
	 end
endmodule