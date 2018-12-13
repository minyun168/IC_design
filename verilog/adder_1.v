//adder_1 shujuliu
module adder_1(a,b,cin,sum,out);

input a,b,cin;
output sum,out;

assign sum = a^b^cin;
assign out = a&b+a&cin+b&cin;

endmodule

