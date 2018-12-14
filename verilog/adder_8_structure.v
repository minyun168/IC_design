`include "adder_2_structure.v"
module adder_8_structure(a,b,cin,sum,out);
  
  input [7:0]a,b;
  input cin;
  output [7:0]sum;
  output out;
  wire temp1,temp2,temp3,temp4;
  
  
  adder_2_structure m1(.a(a[1:0]),.b(b[1:0]),.cin(cin),.sum(sum[1:0]),.out(temp1));
  adder_2_structure m2(.a(a[3:2]),.b(b[3:2]),.cin(temp1),.sum(sum[3:2]),.out(temp2));
  //(a,b,cin,sum,out);
  adder_2_structure m3(.a(a[5:4]),.b(b[5:4]),.cin(temp2),.sum(sum[5:4]),.out(temp3));
  adder_2_structure m4(.a(a[7:6]),.b(b[7:6]),.cin(temp3),.sum(sum[7:6]),.out(out));
  
 endmodule

