//Logic_exercise

module (a,b,c,d,f);

input a,b,c,d;
output f;

wire m,n; //not reg

assign m = a&b;
assign n = c&d;
assign f = m&n;

endmodule