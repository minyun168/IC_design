`timescale 1ns/1ns
`include "half_adder"

module tb_half_adder;

//reg s,c;
reg a,b;

initial
begin
a = 0;
b = 0;
#100 a = 0, b=1;
#100 a = 1, b=0;
#100 a = 1, b=1;
#1000 $stop;
end

adder m(.a(a),.b(b));

endmodule