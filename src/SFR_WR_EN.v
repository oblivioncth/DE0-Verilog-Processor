module SFR_WR_EN(IN, OUT, DIR, RAM_EN, Address, MW);

input [7:0] Address;
input MW;
output reg IN, OUT, DIR, RAM_EN;

always @(Address)
begin

case (Address [7:0])

8'b00000001: begin //OUT
IN = 0;
OUT = MW;
DIR = 0;
RAM_EN = 0;
end

8'b00000010: begin //DIR
IN = 0;
OUT = 0;
DIR = MW;
RAM_EN = 0;
end

8'b00000011: begin //IN
IN = MW;
OUT = 0;
DIR = 0;
RAM_EN = 0;
end

default: begin 
IN = 0;
OUT = 0;
DIR = 0;
RAM_EN = 1;
end

endcase

end

endmodule
