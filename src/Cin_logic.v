module Cin_logic(FS0, FS1, FS2, FS3, C0);

	input FS0, FS1, FS2, FS3;
	output C0;
	
	wire notFS1_and_FS0, notFS3_and_notFS2_and_notFS1, notFS2_and_FS0, notFS3_and_FS2_and_FS1_and_notFS0;
	wire notFS0, notFS1, notFS2, notFS3;
	
	not not1(notFS0, FS0);
	not not2(notFS1, FS1);
	not not3(notFS2, FS2);
	not not4(notFS3, FS3);
	
	and and1(notFS1_and_FS0, notFS1, FS0);
   and and2(notFS3_and_notFS2_and_notFS1, notFS3, notFS2, notFS1);
	and and3(notFS2_and_FS0, notFS2, FS0);
	and and4(notFS3_and_FS2_and_FS1_and_notFS0, FS2, FS1, notFS0);
	
	or or1(C0, notFS1_and_FS0, notFS2_and_FS0, notFS3_and_notFS2_and_notFS1, notFS3_and_FS2_and_FS1_and_notFS0);
	
endmodule
