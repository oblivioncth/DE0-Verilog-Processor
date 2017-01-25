module PC(clk, load, reset, D, count);
    input clk, load, reset;
	 input [15:0] D;
    output reg [15:0] count;

    always @(posedge clk or negedge reset)
			if (~reset)
				count <= 16'b0;
			else if (load) 
            count <= D;  
         else
				count <= count + 1'b1;
endmodule