`timescale 1ns / 1ns

module treg_8bit;

reg CLK, Load, not_reset;
reg [7:0]D;

wire [7:0]Q;

reg_8bit dut(CLK, Load, not_reset, D, Q);

initial

begin
CLK = 0;
forever
#5 CLK = ~CLK;
end

initial 

begin 
not_reset = 1;
Load = 0;
D[0] = 1;
D[1] = 0;
D[2] = 1;
D[3] = 0;
D[4] = 0;
D[5] = 0;
D[6] = 1;
D[7] = 0;
#15 Load = 1;
D[0] = 0;
D[1] = 1;
D[2] = 0;
D[3] = 1;
D[4] = 1;
D[5] = 0;
D[6] = 0;
D[7] = 0;
#15 Load = 1;
D[0] = 0;
D[1] = 1;
D[2] = 0;
D[3] = 1;
D[4] = 1;
D[5] = 1;
D[6] = 0;
D[7] = 0;
#15 Load = 1;
D[0] = 0;
D[1] = 1;
D[2] = 0;
D[3] = 1;
D[4] = 0;
D[5] = 0;
D[6] = 1;
D[7] = 1;
#15 Load = 1;
D[0] = 0;
D[1] = 0;
D[2] = 0;
D[3] = 1;
D[4] = 1;
D[5] = 1;
D[6] = 1;
D[7] = 0;
#15 Load = 1;

end

initial
$monitor($stime,, not_reset,, CLK,, D,, Load,, Q);
endmodule
