//pratise_coding_module

module block(a,b,c,d,e);

input a,b,c;  //port
output d,e;

wire x;   //(inner signal)

assign d = a|(b&~c);  //logic
assign e = (b&~c);

endmodule


//