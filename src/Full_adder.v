module Full_adder(
	B,
	A,
	C_in,
	S,
	C_out
);


input wire	B;
input wire	A;
input wire	C_in;
output wire	S;
output wire	C_out;

wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;




assign	SYNTHESIZED_WIRE_3 = A & B;

assign	SYNTHESIZED_WIRE_2 = C_in & SYNTHESIZED_WIRE_4;

assign	S = SYNTHESIZED_WIRE_4 ^ C_in;

assign	SYNTHESIZED_WIRE_4 = A ^ B;

assign	C_out = SYNTHESIZED_WIRE_2 | SYNTHESIZED_WIRE_3;


endmodule
