module clk_divider (clkIN, clkOUT);
	input clkIN;
	output reg clkOUT;
    reg [25:0]cnt;
    always @(posedge clkIN)
    begin
        cnt=cnt+1;
        if(cnt==1250000) begin
            clkOUT=~clkOUT;
				cnt = 0; end
    end
endmodule