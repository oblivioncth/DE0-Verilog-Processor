module ID_10_Handler (ISin, Z, N, S, CWout, literal, PCL, PCDS, Br, Bit, SC, SCN, Call_Ad, ER_CDE);
input [13:0] ISin;
input Z, N, S;
input [2:0] SC;
output reg [15:0] literal;
output reg [18:0] CWout;
output reg PCL;
output reg [1:0] PCDS;
output reg Br;
output reg Bit;
output reg [1:0] SCN;
output reg [15:0] Call_Ad;
output reg [7:0] ER_CDE;

always @(ISin) begin
casex (ISin[13:9])

5'b100xx: //Load Mem

if(ISin[7:0] >= 249) begin 
 
 CWout = {19'b0000000000000000000};
 literal = 16'b1111111111111111;

 PCL = 1'b0;
 PCDS = 2'b00;
 Br = 1'b0;
 Bit = 1'b0;
 SCN = 2'b00;
 Call_Ad = 16'b1111111111111111;
 ER_CDE = 8'b00000001; end
 
 else begin
 CWout = {6'b000001,ISin[10:8],10'b0000000000}; 
 literal = {8'b00000000,ISin[7:0]}; 
 PCL = 1'b0;
 PCDS = 2'b00;
 Br = 1'b0;
 Bit = 1'b0;
 SCN = 2'b00;
 Call_Ad = 16'b1111111111111111;
 ER_CDE = 8'b00000000; end
 

5'b101xx: //Store Mem

if(ISin[7:0] >= 249) begin 
 
 CWout = {19'b0000000000000000000};
 literal = 16'b1111111111111111;

 PCL = 1'b0;
 PCDS = 2'b00;
 Br = 1'b0;
 Bit = 1'b0;
 SCN = 2'b00;
 Call_Ad = 16'b1111111111111111;
 ER_CDE = 8'b00000010; end


 else begin
 CWout = {12'b000000000000,ISin[10:8],4'b1001}; 
 literal = {8'b00000000,ISin[7:0]};
 PCL = 1'b0;
 PCDS = 2'b00;
 Br = 1'b0;
 Bit = 1'b0;
 SCN = 2'b00;
 Call_Ad = 16'b1111111111111111;
 ER_CDE = 8'b00000000; end
 
5'b110xx: begin  CWout = {6'b011001,ISin[10:8],ISin[10:8],7'b0000100}; //Branch if Zero
 literal = {ISin[7],ISin[7],ISin[7],ISin[7],ISin[7],ISin[7],ISin[7],ISin[7],ISin[7:0]};

 case(Z)
 
 1'b0: begin 
 PCL = 1'b0;
 PCDS = 2'b00;
 Br = 1'b1;
 Bit = 1'b0;
 SCN = 2'b00;
 Call_Ad = 16'b1111111111111111;
 ER_CDE = 8'b00000000; end

 1'b1: begin
 PCL = 1'b1;
 PCDS = 2'b00;
 Br = 1'b1;
 Bit = 1'b0;
 SCN = 2'b00;
 Call_Ad = 16'b1111111111111111;
 ER_CDE = 8'b00000000; end
 
 endcase
 end
 
5'b111xx: begin  CWout = {6'b011001,ISin[10:8],ISin[10:8],7'b0000100}; //Branch if Negative
 literal = {ISin[7],ISin[7],ISin[7],ISin[7],ISin[7],ISin[7],ISin[7],ISin[7],ISin[7:0]};
 
 case(N)
 
 1'b0: begin 
 PCL = 1'b0;
 PCDS = 2'b00;
 Br = 1'b1;
 Bit = 1'b0;
 SCN = 2'b00;
 Call_Ad = 16'b1111111111111111;
 ER_CDE = 8'b00000000; end

 1'b1: begin
 PCL = 1'b1;
 PCDS = 2'b00;
 Br = 1'b1;
 Bit = 1'b0;
 SCN = 2'b00;
 Call_Ad = 16'b1111111111111111;
 ER_CDE = 8'b00000000; end
 
 endcase
 end
 
5'b01101: begin  CWout = {9'b000000000,ISin[8:6],7'b0000000}; //Jump Register
 literal = 16'b1111111111111111;
 PCL = 1'b1;
 PCDS = 2'b01;
 Br = 1'b0;
 Bit = 1'b0;
 SCN = 2'b00;
 Call_Ad = 16'b1111111111111111;
 ER_CDE = 8'b00000000; end
 
5'b01100: begin  CWout = {16'b0}; //Jump Immediate
 literal = {7'b0000000,ISin[8:0]};
 PCL = 1'b1;
 PCDS = 2'b00;
 Br = 1'b0;
 Bit = 1'b0;
 SCN = 2'b00;
 Call_Ad = 16'b1111111111111111;
 ER_CDE = 8'b00000000; end

5'b01000: begin  CWout = {6'b111011,ISin[8:6],ISin[8:6],ISin[8:6],4'b0100}; //Bitwise Clear
 literal = {12'b111111111111,ISin[5:2]};
 PCL = 1'b0;
 PCDS = 2'b00;
 Br = 1'b0;
 Bit = 1'b1;
 SCN = 2'b00;
 Call_Ad = 16'b1111111111111111;
 ER_CDE = 8'b00000000; end
 
5'b01001: begin  CWout = {6'b111101,ISin[8:6],ISin[8:6],ISin[8:6],4'b0100}; //Bitwise Set
 literal = {12'b111111111111,ISin[5:2]};
 PCL = 1'b0;
 PCDS = 2'b00;
 Br = 1'b0;
 Bit = 1'b1;
 SCN = 2'b00;
 Call_Ad = 16'b1111111111111111;
 ER_CDE = 8'b00000000; end
 
5'b01011: begin  CWout = {6'b111110,ISin[8:6],ISin[8:6],7'b0000100}; //Bitwise Test Skip if Clear
 literal = {12'b111111111111,ISin[5:2]};
 
case(S)
 
 1'b0: begin 
 PCL = 1'b1;
 PCDS = 2'b01;
 Br = 1'b0;
 Bit = 1'b1;
 SCN = 2'b00;
 Call_Ad = 16'b1111111111111111;
 ER_CDE = 8'b00000000; end

 1'b1: begin
 PCL = 1'b0;
 PCDS = 2'b01;
 Br = 1'b0;
 Bit = 1'b1;
 SCN = 2'b00;
 Call_Ad = 16'b1111111111111111;
 ER_CDE = 8'b00000000; end
 
 endcase
 end
 
 5'b01010: begin  CWout = {6'b111110,ISin[8:6],ISin[8:6],7'b0000100}; //Bitwise Test Skip if Set
 literal = {12'b111111111111,ISin[5:2]};
 
case(S)
 
 1'b0: begin 
 PCL = 1'b0;
 PCDS = 2'b01;
 Br = 1'b0;
 Bit = 1'b1;
 SCN = 2'b00;
 Call_Ad = 16'b1111111111111111;
 ER_CDE = 8'b00000000; end

 1'b1: begin
 PCL = 1'b1;
 PCDS = 2'b01;
 Br = 1'b0;
 Bit = 1'b1;
 SCN = 2'b00;
 Call_Ad = 16'b1111111111111111;
 ER_CDE = 8'b00000000; end
 
 endcase
 end
 
5'b00000: //PUSH 

if(SC == 3'b111) begin 
 
 CWout = {19'b0000000000000000000};
 literal = 16'b1111111111111111;

 PCL = 1'b0;
 PCDS = 2'b00;
 Br = 1'b0;
 Bit = 1'b0;
 SCN = 2'b00;
 Call_Ad = 16'b1111111111111111;
 ER_CDE = 8'b00000011; end
 
 else begin
 CWout = {12'b000000000000,ISin[8:6],4'b1001};
 literal = 16'b0000000011111111 - {13'b0000000000000,SC[2:0]};

 PCL = 1'b0;
 PCDS = 2'b00;
 Br = 1'b0;
 Bit = 1'b0;
 SCN = 2'b01;
 Call_Ad = 16'b1111111111111111;
 ER_CDE = 8'b00000000; end
 
 
5'b00001: //POP 

if(SC == 3'b000) begin 
 
 CWout = {19'b0000000000000000000};
 literal = 16'b1111111111111111;

 PCL = 1'b0;
 PCDS = 2'b00;
 Br = 1'b0;
 Bit = 1'b0;
 SCN = 2'b00;
 Call_Ad = 16'b1111111111111111;
 ER_CDE = 8'b00000100; end
 
 else begin
 CWout = {6'b000001,ISin[8:6],10'b0000000000};
 literal = 16'b0000000100000000 - {13'b0000000000000,SC[2:0]};

 PCL = 1'b0;
 PCDS = 2'b00;
 Br = 1'b0;
 Bit = 1'b0;
 SCN = 2'b10;
 Call_Ad = 16'b1111111111111111;
 ER_CDE = 8'b00000000; end

5'b01111: //Return PC

if(SC == 3'b000) begin 
 
 CWout = {19'b0000000000000000000};
 literal = 16'b1111111111111111;

 PCL = 1'b0;
 PCDS = 2'b00;
 Br = 1'b0;
 Bit = 1'b0;
 SCN = 2'b00;
 Call_Ad = 16'b1111111111111111;
 ER_CDE = 8'b00000101; end
 
 else begin
 CWout = {19'b0000000000000000000};
 literal = 16'b0000000100000000 - {13'b0000000000000,SC[2:0]};

 PCL = 1'b1;
 PCDS = 2'b10;
 Br = 1'b0;
 Bit = 1'b0;
 SCN = 2'b10;
 Call_Ad = 16'b1111111111111111;
 ER_CDE = 8'b00000000; end
 
5'b01110: //Call

if(SC == 3'b111) begin 
 
 CWout = {19'b0000000000000000000};
 literal = 16'b1111111111111111;

 PCL = 1'b0;
 PCDS = 2'b00;
 Br = 1'b0;
 Bit = 1'b0;
 SCN = 2'b00;
 Call_Ad = 16'b1111111111111111;
 ER_CDE = 8'b00000110; end
 
 else begin
 CWout = {15'b000000000000000,4'b0011};
 literal = 16'b0000000011111111 - {13'b0000000000000,SC[2:0]};

 PCL = 1'b1;
 PCDS = 2'b11;
 Br = 1'b0;
 Bit = 1'b0;
 SCN = 2'b01;
 Call_Ad = {ISin[8],ISin[8],ISin[8],ISin[8],ISin[8],ISin[8],ISin[8],ISin[8:0]};
 ER_CDE = 8'b00000000; end
 

 
endcase
end



endmodule