module Instruction_Mem(Instruction_out, PCAdress);
  output reg [15:0] Instruction_out;
  input  [15:0] PCAdress;
  
  always @(PCAdress)
  begin
    case (PCAdress)
 
		8'h0:  Instruction_out = 16'hc000; // LDI R0,0
		8'h1:  Instruction_out = 16'ha802; // STM R0,2 #set direction as input CHECK ADDRESS
		8'h2:  Instruction_out = 16'hc66b; // LDI R0,1643 #11 bit -405
		8'h3:  Instruction_out = 16'hec00; // LDI R5,1024 #11 bit -1024
		8'h4:  Instruction_out = 16'hd119; // LDI R2,281
		8'h5:  Instruction_out = 16'h6895; // ADD R2,R2,R5
		8'h6:  Instruction_out = 16'h6805; // ADD R0,R0,R5
		8'h7:  Instruction_out = 16'h696d; // ADD R5,R5,R5
		8'h8:  Instruction_out = 16'h68aa; // ADD R2,R5,R2
		8'h9:  Instruction_out = 16'h7168; // SHL R5,R5
		8'ha:  Instruction_out = 16'h6805; // ADD R0,R0,R5
		8'hb:  Instruction_out = 16'h7168; // SHL R5,R5
		8'hc:  Instruction_out = 16'h6895; // ADD R2,R2,R5
		8'hd:  Instruction_out = 16'h6368; // NEG R5,R5
		8'he:  Instruction_out = 16'h6802; // ADD R0,R0,R2
		8'hf:  Instruction_out = 16'h6802; // ADD R0,R0,R2
		8'h10:  Instruction_out = 16'ha818; // STM R0,24 #store special values
		8'h11:  Instruction_out = 16'haa19; // STM R2,25
		8'h12:  Instruction_out = 16'had1a; // STM R5,26
		8'h13:  Instruction_out = 16'hf014; // LDI R6,20 #load R6 with jump address, main loop
		8'h14:  Instruction_out = 16'ha003; // LDM R0,3 #load input to R0 CHECK ADDRESS
		8'h15:  Instruction_out = 16'h4640; // NOT R1,R0
		8'h16:  Instruction_out = 16'h1901; // ANDI R1,1 #mask bit 1 of input
		8'h17:  Instruction_out = 16'hb108; // BRZ R1,8 #if bit1 of input was on then all off
		8'h18:  Instruction_out = 16'h4640; // NOT R1,R0
		8'h19:  Instruction_out = 16'h1902; // ANDI R1,2 #mask bit 2 of input
		8'h1a:  Instruction_out = 16'hb110; // BRZ R1,16 #if bit2 of input was on then all on
		8'h1b:  Instruction_out = 16'h4640; // NOT R1,R0
		8'h1c:  Instruction_out = 16'h1904; // ANDI R1,4 #mask bit 3 of input
		8'h1d:  Instruction_out = 16'hb119; // BRZ R1,25 #if bit3 of input was on then display
		8'h1e:  Instruction_out = 16'h9b80; // JMPR R6 #end main loop
		8'h1f:  Instruction_out = 16'hc000; // LDI R0,0 #start all off
		8'h20:  Instruction_out = 16'h5840; // MOVA R1,R0
		8'h21:  Instruction_out = 16'h5888; // MOVA R2,R1
		8'h22:  Instruction_out = 16'h58d0; // MOVA R3,R2
		8'h23:  Instruction_out = 16'h5918; // MOVA R4,R3
		8'h24:  Instruction_out = 16'h5960; // MOVA R5,R4 #end all off
		8'h25:  Instruction_out = 16'ha703; // LDM R7,3 #load input to R7 CHECK ADDRESS
		8'h26:  Instruction_out = 16'h47f8; // NOT R7,R7
		8'h27:  Instruction_out = 16'h1f01; // ANDI R7,1
		8'h28:  Instruction_out = 16'hb7fd; // BRZ R7,-3 #while input bit 1 is on
		8'h29:  Instruction_out = 16'h9b80; // JMPR R6 #jump back to main loop
		8'h2a:  Instruction_out = 16'hc000; // LDI R0,0 #start all on
		8'h2b:  Instruction_out = 16'h6400; // DEC R0,R0
		8'h2c:  Instruction_out = 16'h5840; // MOVA R1,R0
		8'h2d:  Instruction_out = 16'h5888; // MOVA R2,R1
		8'h2e:  Instruction_out = 16'h58d0; // MOVA R3,R2
		8'h2f:  Instruction_out = 16'h5918; // MOVA R4,R3
		8'h30:  Instruction_out = 16'h5960; // MOVA R5,R4 #end all on
		8'h31:  Instruction_out = 16'ha703; // LDM R7,3 #load input to R7 CHECK ADDRESS
		8'h32:  Instruction_out = 16'h47f8; // NOT R7,R7
		8'h33:  Instruction_out = 16'h1f02; // ANDI R7,2
		8'h34:  Instruction_out = 16'hb7fd; // BRZ R7,-3 #while input bit 2 is on
		8'h35:  Instruction_out = 16'h9b80; // JMPR R6 #jump back to main loop
		8'h36:  Instruction_out = 16'ha018; // LDM R0,24 #start display
		8'h37:  Instruction_out = 16'ha219; // LDM R2,25
		8'h38:  Instruction_out = 16'ha51a; // LDM R5,26
		8'h39:  Instruction_out = 16'h5850; // MOVA R1,R2
		8'h3a:  Instruction_out = 16'h2940; // ORI R1,64
		8'h3b:  Instruction_out = 16'hf808; // LDI R7,8
		8'h3c:  Instruction_out = 16'h6c4f; // SUB R1,R1,R7
		8'h3d:  Instruction_out = 16'hf801; // LDI R7,1
		8'h3e:  Instruction_out = 16'h4ccf; // XOR R3,R1,R7
		8'h3f:  Instruction_out = 16'h6cdd; // SUB R3,R3,R5
		8'h40:  Instruction_out = 16'h5900; // MOVA R4,R0 
		8'h41:  Instruction_out = 16'he800; // LDI R5,0 #end display
		8'h42:  Instruction_out = 16'ha703; // LDM R7,3 #load input to R7 CHECK ADDRESS
		8'h43:  Instruction_out = 16'h47f8; // NOT R7,R7
		8'h44:  Instruction_out = 16'h1f04; // ANDI R7,4
		8'h45:  Instruction_out = 16'hb7fd; // BRZ R7,-3 #while input bit 3 is on
		8'h46:  Instruction_out = 16'h9b80; // JMPR R6 #jump back to main loop

/*	 
		//Demo No GPIO
		8'h0:  Instruction_out = 16'hc000; // LDI R0,0
		8'h1:  Instruction_out = 16'h0000; // NOP //DIR R0 #STM R0,DIR #set direction as input
		8'h2:  Instruction_out = 16'hc66b; // LDI R0,1643 #11 bit -405
		8'h3:  Instruction_out = 16'hec00; // LDI R5,1024 #11 bit -1024
		8'h4:  Instruction_out = 16'hd119; // LDI R2,281
		8'h5:  Instruction_out = 16'h6895; // ADD R2,R2,R5
		8'h6:  Instruction_out = 16'h6805; // ADD R0,R0,R5
		8'h7:  Instruction_out = 16'h696d; // ADD R5,R5,R5
		8'h8:  Instruction_out = 16'h68aa; // ADD R2,R5,R2
		8'h9:  Instruction_out = 16'h7168; // SHL R5,R5
		8'ha:  Instruction_out = 16'h6805; // ADD R0,R0,R5
		8'hb:  Instruction_out = 16'h7168; // SHL R5,R5
		8'hc:  Instruction_out = 16'h6895; // ADD R2,R2,R5
		8'hd:  Instruction_out = 16'h6368; // NEG R5,R5
		8'he:  Instruction_out = 16'h6802; // ADD R0,R0,R2
		8'hf:  Instruction_out = 16'h6802; // ADD R0,R0,R2
		8'h10:  Instruction_out = 16'ha818; // STM R0,24 #store special values
		8'h11:  Instruction_out = 16'haa19; // STM R2,25
		8'h12:  Instruction_out = 16'had1a; // STM R5,26
		8'h13:  Instruction_out = 16'hf014; // LDI R6,20 #load R6 with jump address, main loop
		8'h14:  Instruction_out = 16'hc004; // LDI R0,4 //IN R0 #LDM R0, IN
		8'h15:  Instruction_out = 16'h4640; // NOT R1,R0
		8'h16:  Instruction_out = 16'h1901; // ANDI R1,1 #mask bit 1 of input
		8'h17:  Instruction_out = 16'hb108; // BRZ R1,8 #if bit1 of input was on then all off
		8'h18:  Instruction_out = 16'h4640; // NOT R1,R0
		8'h19:  Instruction_out = 16'h1902; // ANDI R1,2 #mask bit 2 of input
		8'h1a:  Instruction_out = 16'hb110; // BRZ R1,16 #if bit2 of input was on then all on
		8'h1b:  Instruction_out = 16'h4640; // NOT R1,R0
		8'h1c:  Instruction_out = 16'h1904; // ANDI R1,4 #mask bit 3 of input
		8'h1d:  Instruction_out = 16'hb119; // BRZ R1,25 #if bit3 of input was on then display
		8'h1e:  Instruction_out = 16'h9b80; // JMPR R6 #end main loop
		8'h1f:  Instruction_out = 16'hc000; // LDI R0,0 #start all off
		8'h20:  Instruction_out = 16'h5840; // MOVA R1,R0
		8'h21:  Instruction_out = 16'h5888; // MOVA R2,R1
		8'h22:  Instruction_out = 16'h58d0; // MOVA R3,R2
		8'h23:  Instruction_out = 16'h5918; // MOVA R4,R3
		8'h24:  Instruction_out = 16'h5960; // MOVA R5,R4 #end all off
		8'h25:  Instruction_out = 16'hf804; // LDI R7,4 // IN R7 #LDM R7, IN
		8'h26:  Instruction_out = 16'h47f8; // NOT R7,R7
		8'h27:  Instruction_out = 16'h1f01; // ANDI R7,1
		8'h28:  Instruction_out = 16'hb7fd; // BRZ R7,-3 #while input bit 1 is on
		8'h29:  Instruction_out = 16'h9b80; // JMPR R6 #jump back to main loop
		8'h2a:  Instruction_out = 16'hc000; // LDI R0,0 #start all on
		8'h2b:  Instruction_out = 16'h6400; // DEC R0,R0
		8'h2c:  Instruction_out = 16'h5840; // MOVA R1,R0
		8'h2d:  Instruction_out = 16'h5888; // MOVA R2,R1
		8'h2e:  Instruction_out = 16'h58d0; // MOVA R3,R2
		8'h2f:  Instruction_out = 16'h5918; // MOVA R4,R3
		8'h30:  Instruction_out = 16'h5960; // MOVA R5,R4 #end all on
		8'h31:  Instruction_out = 16'hf804; // LDI R7,4 // IN R7 #LDM R7, IN
		8'h32:  Instruction_out = 16'h47f8; // NOT R7,R7
		8'h33:  Instruction_out = 16'h1f02; // ANDI R7,2
		8'h34:  Instruction_out = 16'hb7fd; // BRZ R7,-3 #while input bit 2 is on
		8'h35:  Instruction_out = 16'h9b80; // JMPR R6 #jump back to main loop
		8'h36:  Instruction_out = 16'ha018; // LDM R0,24 #start display
		8'h37:  Instruction_out = 16'ha219; // LDM R2,25
		8'h38:  Instruction_out = 16'ha51a; // LDM R5,26
		8'h39:  Instruction_out = 16'h5850; // MOVA R1,R2
		8'h3a:  Instruction_out = 16'h2940; // ORI R1,64
		8'h3b:  Instruction_out = 16'hf808; // LDI R7,8
		8'h3c:  Instruction_out = 16'h6c4f; // SUB R1,R1,R7
		8'h3d:  Instruction_out = 16'hf801; // LDI R7,1
		8'h3e:  Instruction_out = 16'h4ccf; // XOR R3,R1,R7
		8'h3f:  Instruction_out = 16'h6cdd; // SUB R3,R3,R5
		8'h40:  Instruction_out = 16'h5900; // MOVA R4,R0 
		8'h41:  Instruction_out = 16'he800; // LDI R5,0 #end display
		8'h42:  Instruction_out = 16'hf804; // LDI R7,4 // IN R7 #LDM R7, IN
		8'h43:  Instruction_out = 16'h47f8; // NOT R7,R7
		8'h44:  Instruction_out = 16'h1f04; // ANDI R7,4
		8'h45:  Instruction_out = 16'hb7fd; // BRZ R7,-3 #while input bit 3 is on
		8'h46:  Instruction_out = 16'h9b80; // JMPR R6 #jump back to main loop
*/

/*
		//Regular Non-PC Functions
	   16'd00000:  Instruction_out = 16'b0000000000000000; //Do Nothing 
		16'd00001:  Instruction_out = 16'b1100100000000001; //Load Reg 1 with (1)
		16'd00002:  Instruction_out = 16'b1101000000000010; //Load Reg 2 with (2)
		16'd00003:  Instruction_out = 16'b1101100000000011; //Load Reg 3 with (3)
		16'd00004:  Instruction_out = 16'b1110000000000100; //Load Reg 4 with (4)
		16'd00005:  Instruction_out = 16'b1110100000000101; //Load Reg 5 with (5)
		16'd00006:  Instruction_out = 16'b1111000000000110; //Load Reg 6 with (6)
		16'd00007:  Instruction_out = 16'b1111100000000111; //Load Reg 7 with (7)
		16'd00008:  Instruction_out = 16'b0110000000000000; //Increment Reg 0
		16'd00009:  Instruction_out = 16'b0110100101010100; //Add Reg 2 with Reg 4, put in reg 5
		16'd00010:  Instruction_out = 16'b0110110010111001; //Sub Reg 1 from Reg 7, put in reg 2
		16'd00011:  Instruction_out = 16'b0110010101101000; //Decrement Reg 5
		16'd00012:  Instruction_out = 16'b0110001110110000; //Negative Reg 6
		16'd00013:  Instruction_out = 16'b0101100011111000; //Move (A) Reg 7 to Reg 3
		16'd00014:  Instruction_out = 16'b0101010010000001; //Move (B) Reg 1 to Reg 2
		16'd00015:  Instruction_out = 16'b0111001011011000; //Shift 3 right
		16'd00016:  Instruction_out = 16'b0111000100100000; //Shift 4 left
		16'd00017:  Instruction_out = 16'b0100000011000000; //Clear Reg 3
		16'd00018:  Instruction_out = 16'b0101111011000000; //Set Reg 3
		16'd00019:  Instruction_out = 16'b0100011101000000; //NOT Reg 0, put in Reg 5
		16'd00020:  Instruction_out = 16'b0101000011111010; //AND R7 and R2, put in R3
		16'd00021:  Instruction_out = 16'b0101110101000111; //OR R0 and R7, put in R5
		16'd00022:  Instruction_out = 16'b0100110010010101; //XOR R2 and R5, put in R2
		16'd00023:  Instruction_out = 16'b0000100000001100; //Add Immediate (12) to R0
		16'd00024:  Instruction_out = 16'b0001010000000011; //Sub Immediate (3) from R4
		16'd00025:  Instruction_out = 16'b0001110100000011; //AND Immediate (3) to R5
		16'd00026:  Instruction_out = 16'b0010100100000100; //OR Immediate (4) to R1
		16'd00027:  Instruction_out = 16'b0011011100000100; //XOR Immediate (4) to R7
		16'd00028:  Instruction_out = 16'b1010100000010100; //Store Reg 0 in mem [20]
		16'd00029:  Instruction_out = 16'b1010001100010100; //Load mem [20] to Reg 3
		
		//Extra Non-PC Functions
		
		16'd00030:  Instruction_out = 16'b0110111111001010; //Multiply Reg 2 and 1, place in Reg 7
		16'd00031:  Instruction_out = 16'b0110101000001010; //Add Reg 1 and 2, with carry, place in reg 0
		16'd00032:  Instruction_out = 16'b0111011110110000; //Arithmetic Shift Reg 6 right
		16'd00033:  Instruction_out = 16'b1001000100001000; //Clear Bit 2 of Reg 4
		16'd00034:  Instruction_out = 16'b1001001011000100; //Set Bit 1 of Reg 3
	*/
	/*	
		//Regular PC Function Test
		16'd00000:  Instruction_out = 16'b0000000000000000; //Do Nothing 
		16'd00001:  Instruction_out = 16'b1100100000000001; //Load Reg 1 with (1)
		16'd00002:  Instruction_out = 16'b1101000000000010; //Load Reg 2 with (2)
		16'd00003:  Instruction_out = 16'b1101100000000011; //Load Reg 3 with (3)
		16'd00004:  Instruction_out = 16'b1110000000000100; //Load Reg 4 with (4)
		16'd00005:  Instruction_out = 16'b1110100000000101; //Load Reg 5 with (5)
		16'd00006:  Instruction_out = 16'b1111000000000110; //Load Reg 6 with (6)
		16'd00007:  Instruction_out = 16'b1111100000000111; //Load Reg 7 with (7)
		16'd00008:  Instruction_out = 16'b0110001111111000; //Negative Reg 7
	//	16'd00009:  Instructio
	n_out = 16'b1011111100000101; //Branch If Negative
	//	16'd00009:  Instruction_out = 16'b1011000000000101; //Branch If Zero
	//	16'd00009:  Instruction_out = 16'b1001101111000000; //Jump to R[7]
		16'd00010:  Instruction_out = 16'b0110000001001000; //Increment Reg 1
		16'd00011:  Instruction_out = 16'b0110000001001000; //Increment Reg 1
		16'd00012:  Instruction_out = 16'b0110000001001000; //Increment Reg 1
		16'd00013:  Instruction_out = 16'b0110000001001000; //Increment Reg 1
		16'd00014:  Instruction_out = 16'b0110000010010000; //Increment Reg 2
	*/	
	
/*
		//Extra PC Function Test
		16'd00000:  Instruction_out = 16'b0000000000000000; //Do Nothing 
		16'd00001:  Instruction_out = 16'b1100100000000001; //Load Reg 1 with (1)
		16'd00002:  Instruction_out = 16'b1101000000000010; //Load Reg 2 with (2)
		16'd00003:  Instruction_out = 16'b1101100000000011; //Load Reg 3 with (3)
		16'd00004:  Instruction_out = 16'b1110000000000100; //Load Reg 4 with (4)
		16'd00005:  Instruction_out = 16'b1110100000000101; //Load Reg 5 with (5)
		16'd00006:  Instruction_out = 16'b1111000000000110; //Load Reg 6 with (6)
		16'd00007:  Instruction_out = 16'b1111100000000111; //Load Reg 7 with (7)
		16'd00008:  Instruction_out = 16'b0110001111111000; //Negative Reg 7
		16'd00009:  Instruction_out = 16'b1001010110000100; //Skip if Bit 1 of Reg 6 is Set
	// 16'd00009:  Instruction_out = 16'b1001011110000100; //Skip if Bit 1 of Reg 6 is Cleared
		16'd00010:  Instruction_out = 16'b0110000001001000; //Increment Reg 1
		16'd00011:  Instruction_out = 16'b0110000010010000; //Increment Reg 2
		16'd00012:  Instruction_out = 16'b0110000011011000; //Increment Reg 3
		16'd00013:  Instruction_out = 16'b0110000001001000; //Increment Reg 1
		16'd00014:  Instruction_out = 16'b0110000010010000; //Increment Reg 2
	
	*/
/*
		//Stack Test
		16'd00000:  Instruction_out = 16'b0000000000000000; //Do Nothing 
		16'd00001:  Instruction_out = 16'b1100100000000001; //Load Reg 1 with (1)
		16'd00002:  Instruction_out = 16'b1101000000000010; //Load Reg 2 with (2)
		16'd00003:  Instruction_out = 16'b1101100000000011; //Load Reg 3 with (3)
		16'd00004:  Instruction_out = 16'b1110000000000100; //Load Reg 4 with (4)
		16'd00005:  Instruction_out = 16'b1110100000000101; //Load Reg 5 with (5)
		16'd00006:  Instruction_out = 16'b1111000000000110; //Load Reg 6 with (6)
		16'd00007:  Instruction_out = 16'b1111100000000111; //Load Reg 7 with (7)
		16'd00008:  Instruction_out = 16'b1000000001000000; //PUSH Reg 1
		16'd00009:  Instruction_out = 16'b1000000010000000; //PUSH Reg 2
		16'd00010:  Instruction_out = 16'b1000000011000000; //PUSH Reg 3
		16'd00011:  Instruction_out = 16'b1000000100000000; //PUSH Reg 4
		16'd00012:  Instruction_out = 16'b1000000101000000; //PUSH Reg 5
		16'd00013:  Instruction_out = 16'b1000000110000000; //PUSH Reg 6
		16'd00014:  Instruction_out = 16'b1000000111000000; //PUSH Reg 7
		16'd00015:  Instruction_out = 16'b1000001000000000; //POP to Reg 0
		16'd00016:  Instruction_out = 16'b1000001000000000; //POP to Reg 0
		16'd00017:  Instruction_out = 16'b1000001000000000; //POP to Reg 0
		16'd00018:  Instruction_out = 16'b1000000111000000; //PUSH Reg 7
		16'd00019:  Instruction_out = 16'b1000001000000000; //POP to Reg 0
		16'd00020:  Instruction_out = 16'b1000001000000000; //POP to Reg 0
		16'd00021:  Instruction_out = 16'b1000001000000000; //POP to Reg 0
		16'd00022:  Instruction_out = 16'b1000001000000000; //POP to Reg 0
		16'd00023:  Instruction_out = 16'b1000001000000000; //POP to Reg 0
		16'd00024:  Instruction_out = 16'b1000001000000000; //POP to Reg 0
		16'd00025:  Instruction_out = 16'b1000001000000000; //POP to Reg 0
		16'd00026:  Instruction_out = 16'b1000000010000000; //PUSH Reg 2
		16'd00027:  Instruction_out = 16'b1000001000000000; //POP to Reg 0


*/

/*
		//PC Stack Test
		16'd00000:  Instruction_out = 16'b0000000000000000; //Do Nothing 
		16'd00001:  Instruction_out = 16'b1100100000000001; //Load Reg 1 with (1)
		16'd00002:  Instruction_out = 16'b1101000000000010; //Load Reg 2 with (2)
		16'd00003:  Instruction_out = 16'b0110000000000000; //Increment Reg 0
		16'd00004:  Instruction_out = 16'b1000000001000000; //PUSH Reg 1
		16'd00005:  Instruction_out = 16'b1000000010000000; //PUSH Reg 2
		16'd00006:  Instruction_out = 16'b1001110000001101; //Call
		16'd00007:  Instruction_out = 16'b1000001000000000; //POP to Reg 0
		16'd00008:  Instruction_out = 16'b1000001000000000; //POP to Reg 0
		16'd00009:  Instruction_out = 16'b1000001000000000; //POP to Reg 0
		16'd00010:  Instruction_out = 16'b1000001000000000; //POP to Reg 0
		16'd00011:  Instruction_out = 16'b1000001000000000; //POP to Reg 0
		16'd00012:  Instruction_out = 16'b1000001000000000; //POP to Reg 0
		16'd00013:  Instruction_out = 16'b0110000000000000; //Increment Reg 0
		16'd00014:  Instruction_out = 16'b0110000000000000; //Increment Reg 0
		16'd00015:  Instruction_out = 16'b0110000000000000; //Increment Reg 0
		16'd00016:  Instruction_out = 16'b1001111000000000; //Return PC
*/

/*
	//Error Code Test
		16'd00000:  Instruction_out = 16'b0000000000000000; //Do Nothing 
		16'd00001:  Instruction_out = 16'b1100100000000001; //Load Reg 1 with (1)
		16'd00002:  Instruction_out = 16'b1101000000000010; //Load Reg 2 with (2)
		16'd00003:  Instruction_out = 16'b1101100000000011; //Load Reg 3 with (3)
		16'd00004:  Instruction_out = 16'b1110000000000100; //Load Reg 4 with (4)
		16'd00005:  Instruction_out = 16'b1110100000000101; //Load Reg 5 with (5)
		16'd00006:  Instruction_out = 16'b1111000000000110; //Load Reg 6 with (6)
		16'd00007:  Instruction_out = 16'b1111100000000111; //Load Reg 7 with (7)
		16'd00008:  Instruction_out = 16'b1000000001000000; //PUSH Reg 1
		16'd00009:  Instruction_out = 16'b1000000010000000; //PUSH Reg 2
		16'd00010:  Instruction_out = 16'b1000000011000000; //PUSH Reg 3
		16'd00011:  Instruction_out = 16'b1000000100000000; //PUSH Reg 4
		16'd00012:  Instruction_out = 16'b1000000101000000; //PUSH Reg 5
		16'd00013:  Instruction_out = 16'b1000000110000000; //PUSH Reg 6
		16'd00014:  Instruction_out = 16'b1000000111000000; //PUSH Reg 7
		16'd00015:  Instruction_out = 16'b0110000000000000; //Increment Reg 0
	   16'd00016:  Instruction_out = 16'b1000000010000000; //PUSH Reg 2
		16'd00017:  Instruction_out = 16'b1000001000000000; //POP to Reg 0
		16'd00018:  Instruction_out = 16'b1000001000000000; //POP to Reg 0
		16'd00019:  Instruction_out = 16'b1000001000000000; //POP to Reg 0
		16'd00020:  Instruction_out = 16'b1000001000000000; //POP to Reg 0
		16'd00021:  Instruction_out = 16'b1000001000000000; //POP to Reg 0
		16'd00022:  Instruction_out = 16'b1000001000000000; //POP to Reg 0
		16'd00023:  Instruction_out = 16'b1000001000000000; //POP to Reg 0
		16'd00024:  Instruction_out = 16'b1000001000000000; //POP to Reg 0
		16'd00025:  Instruction_out = 16'b1000000111000000; //PUSH Reg 7
		16'd00026:  Instruction_out = 16'b1000001000000000; //POP to Reg 0
		16'd00027:  Instruction_out = 16'b0110000000000000; //Increment Reg 0
		16'd00028:  Instruction_out = 16'b0110000000000000; //Increment Reg 0
		16'd00029:  Instruction_out = 16'b0110000000000000; //Increment Reg 0
*/

      default: Instruction_out = 16'b0000000000000000;
    endcase
  end
endmodule 
