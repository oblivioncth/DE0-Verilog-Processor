module PS_tb;
	reg clk;
	wire [15:0] R0, R1, R2, R3, R4, R5, R6, R7, DEV_D_IN_REG, DEV_INST_IN, DEV_LIT_INTO_DATAPATH, DEV_A_IN, DEV_B_IN, DEV_F_FROM_SFU;
	wire [18:0] DEV_CNTRLWORD_OUT;
	wire [3:0] DEV_BS_IN_SFU;
	wire [4:0] DEV_FS_IN_ALUSFU;
	
   Processor dut(clk,DEV_A_IN,DEV_B_IN,DEV_BS_IN_SFU,DEV_CNTRLWORD_OUT,DEV_D_IN_REG,DEV_F_FROM_SFU,DEV_FS_IN_ALUSFU,DEV_INST_IN,DEV_LIT_INTO_DATAPATH,R0,R1,R2,R3,R4,R5,R6,R7);

	initial
	begin
		clk <= 1'b0;
		forever
		#100 clk = ~clk;
	end

	initial
		#10000 $finish;

endmodule