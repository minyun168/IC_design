//
`timescale 1ns/1ns
`include "adder_2_structure.v"

module tb_adder_2_structure;
  
  reg cin;
  reg [1:0]a;
  reg [1:0]b;
  wire [1:0]sum;
  wire out;
  
  //wire 
  integer i,j,k;
  
  initial 
  begin
    a=2'b00;
    b=2'b00;
    cin=0;
    
    repeat(5)
    
    for (i=0;i<=3;i=i+1)
      

  begin
    for (j=0;j<=3;j=j+1)
    begin
      for (k=0;k<=1;k=k+1)
      begin
        #10 cin=~cin;
      end
       b=b+1;
    end
     a=a+1;
    
    end
    
   #1000 $stop;
   
   
  end
  
  adder_2_structure m(.a(a),.b(b),.cin(cin),.out(out),.sum(sum));
endmodule