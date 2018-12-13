//
`include "adder_1_structure.v"
module adder_2_structure(a,b,cin,sum,out);
  
  input [1:0]a,b;
  input cin;
  output [1:0]sum;
  output out;
  wire w;
  
  adder_1_structure m1(.a(a[0]),.b(b[0]),.cin(cin),.sum(sum[0]),.out(w));
  adder_1_structure m2(.a(a[1]),.b(b[1]),.cin(w),.sum(sum[1]),.out(out));
  //(a,b,cin,sum,out);
  
 endmodule
