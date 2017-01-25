module ALU_bit_tb;
	reg [8:0]test_vector;
	// all input signals will be mapped to the test_vector reg
	// thus the DUT input signals themselves will just be wires
	wire [4:0]FS;
	wire A, B, C_in, A_from_next_bit;
	wire not_A, not_B;
	// not_A and not_B required for arithmetic functions because behavioral Verilog
	// can promote the bit width of an operator before using it thus (~A) could be
	// promoted to two bits and become 11 (if A is 0) instead of 01
	// However, not_A in the case above would be 1 so when it is promoted it becomes 01.
	// This all happens because Verilog promotes the bit width of all operators to match
	// the destination (an for the arithmetic cases the destination is two bits in this testbench)
	assign not_A = ~A;
	assign not_B = ~B;
	
	// define DUT outputs as wires
	wire F;
	wire C_out;
	
	// Since the test vector is 9 bits we have 512 possible input scenarios to test
	// manually checking all 512 scenarios will be tedious so instead we will
	// create a better test bench which can check each scenario automatically
	// and just notify us of the scenarios which produce "unexpected" results
	
	// define expected value registers
	reg F_exp, C_out_exp;
	
	// map the 9 test_vector bits to the 9 input bits
	assign {FS, A, B, C_in, A_from_next_bit} = test_vector;
	// reminder: {a, b, c} is the syntax for concatinating signals together
	
	// create an instance of the Design Under Test
	//ALU_bit (S, A, B, F, C_in, A_from_next_bit, C_out)
	ALU_Cell_1bit dut (
		.FS	(FS),
		.A (A),
		.B	(B),
		.F	(F),
		.C_out	(C_out),
		.C_in	(C_in),
		.A_from_next_bit (A_from_next_bit)
	);
	
	// If a DUT error is detected it is important to analize whether the expected value
	// or the actual value is wrong as it is possible that your test bench is incorrect
	initial
	begin
		// initialize the test_vector to 0
		test_vector = 9'b0;
		forever
		begin
			// increment the test_vector
			#1 test_vector = test_vector + 9'b1;
			// do nothing for one tic
			#1 test_vector <= test_vector; // the purpose of this is so we end up checking the expected vs. actual in the middle of the 4 tic period
			// check if the ALU expected output matches the actual output
			if(F_exp != F) begin
				$display("DUT error at time %d", $time);
				$display("Expected F = %b, actual = %b, inputs FS=%b,A=%b,B=%b,C_in=%b,A_from_next_bit=%b",
							F_exp, F, FS, A, B, C_in, A_from_next_bit);
			end
			// if the Function Select is arithmetic/shift then check if the actual C_out matches the expected value
			if(FS[4]) begin
				if(C_out_exp != C_out) begin
					$display("DUT error at time %d", $time);
					$display("Expected C_out = %b, actual = %b, inputs FS=%b,A=%b,B=%b,C_in=%b,A_from_next_bit=%b",
							C_out_exp, C_out, FS, A, B, C_in, A_from_next_bit);
				end
			end
			// do nothing for two more tics before going to the next test case
			#2 test_vector <= test_vector;
		end
	end
	
	// use behavioral Verilog to calculate the expected values for F and C_out
	always @(test_vector) begin
		// casex treats x as don't care instead of looking for the input to the case to have an actual x value
		casex(FS)
			5'b00000: F_exp <= 4'b0;
			5'b00001: F_exp <= (~A)&(~B);
			5'b00010: F_exp <= ~A & B;
			5'b00011: F_exp <= ~A;
			5'b00100: F_exp <= A & ~B; 
			5'b00101: F_exp <= ~B;
			5'b00110: F_exp <= A^B;
			5'b00111: F_exp <= ~(A & B);
			5'b01000: F_exp <= A&B;
			5'b01001: F_exp <= ~(A^B);
			5'b01010: F_exp <= B;
			5'b01011: F_exp <= ~A | B;
			5'b01100: F_exp <= A;
			5'b01101: F_exp <= A | ~B;
			5'b01110: F_exp <= A|B;
			5'b01111: F_exp <= 4'b1;
			// for the arithmetic operations the result will be two bits so map it to {C_out_exp, F_exp}
			5'b10000: {C_out_exp, F_exp} <= {A & C_in, A+C_in};
			5'b10001: {C_out_exp, F_exp} <= {not_A & C_in, not_A+C_in}; // not_A must be used instead of ~A because A gets promoted to 2 bits so if A=0 then ~A is 11 instead of 01 as desired
			5'b10010: {C_out_exp, F_exp} <= {A |C_in, A + C_in + 4'b1};//LAB fill in the behavioral arithmetic equations for the expected F value			
			5'b10011: {C_out_exp, F_exp} <= {~A | C_in, not_A + C_in + 4'b1}; 
			5'b10100: {C_out_exp, F_exp} <= {A&(C_in | B) | B&C_in, A + B + C_in};
			5'b10101: {C_out_exp, F_exp} <= {not_A&(C_in | B) | B&C_in, not_A + B + C_in};
			5'b10110: {C_out_exp, F_exp} <= {A&(not_B|C_in) | not_B&C_in, A + not_B + C_in};
			5'b10111: {C_out_exp, F_exp} <= {not_A&(not_B|C_in) | not_B&C_in, not_A + not_B + C_in}; // USELESS
			5'b11xx0: {C_out_exp, F_exp} <= {A, C_in};
			5'b11xx1: {C_out_exp, F_exp} <= {A, A_from_next_bit};//LAB use a concatination as above to implement
		endcase
	end
	
	// after (period)*(num test cases) every input scenario will have been tested
	initial
		#2048 $finish;
endmodule
